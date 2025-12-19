unit uRecalcularStock;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwcheckbox, wwdbdatetimepicker, Buttons, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwdblook, Db, Variants, Grids, Wwdbigrd, Wwdbgrid,
  ExtCtrls, RzButton, RzEdit, RzPanel, RzCmboBx, ComCtrls, RzDTP, RzRadChk,
  MDOTable, MDOCustomDataSet, MDOQuery, MDOStoredProc;

type
  TfrmRecalcularStock = class(TForm)
    qClear: TMDOQuery;
    qRecalculo: TMDOStoredProc;
    lblSucursal: TLabel;
    lblFechaD: TLabel;
    lblFechaH: TLabel;
    btnStkArt: TRzBitBtn;
    cbSucursal: TRzComboBox;
    btnSalir: TRzBitBtn;
    mRecal: TMemo;
    edtDesde: TRzDateTimeEdit;
    edtHasta: TRzDateTimeEdit;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnStkArtClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbSucursalChange(Sender: TObject);
  private
    NomDep: String;
    Id_Branch: Integer;
    { Private declarations }
    procedure Add_L(S: String);
    procedure Calcular_Stocks(Suc_A_Proc: Integer; Desde, Hasta: TDate);
  public
    { Public declarations }
  end;

var
  frmRecalcularStock: TfrmRecalcularStock;

implementation

uses udmSaveFile, uTools, udmGestion, DateUtils;

{$R *.DFM}

procedure TfrmRecalcularStock.Add_L(S: String);
begin
  try
    if Trim(S) = Vacio then
    begin
      mRecal.Lines.Clear;
      mRecal.Lines.Add(DateTimeToStr(Now));
    end
    else
      mRecal.Lines.Add(DateTimeToStr(Now)+' -> ' + S);
  finally
    mRecal.Refresh;
    Application.ProcessMessages;
  end;
end;

procedure TfrmRecalcularStock.Calcular_Stocks(Suc_A_Proc: Integer; Desde, Hasta: TDate);
Const
  ClrStkD = 'Update StockArt '+
            'Set Egresos = 0, Ingresos = 0, Actual = 0, DifInv = 0 '+
            'Where IdStock =:Stk ';

  ClrSizeD ='Update StockArtTalles '+
            'Set Egresos = 0, Ingresos = 0, Actual = 0, DifInv = 0 '+
            'Where IdStock =:Stk ';
var
  Deposito, IdProducto,
  Can_Trans, Tot_Trans, Max_Prod,
  DesdeSuc, HastaSuc: Integer;
  FechaD, FechaH: TDate;
  q: TMDOQuery;
begin
  Can_Trans := 1;
  Tot_Trans := 0;
  Max_Prod := 0;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.dbGestion;
    q.Transaction := dmGestion.trGestion;
    q.SQL.Add('Select Max(IdArticulo) as Ultimo ');
    q.SQL.Add('From Articulos ');
    q.Open;
    Max_Prod := q.FieldByName('Ultimo').AsInteger;
    q.Close;
  finally
    q.Free;
  end;

  if Suc_A_Proc > 0 then
  begin
    DesdeSuc := Suc_A_Proc;
    HastaSuc := Suc_A_Proc;
  end
  else begin
    DesdeSuc := 1;
    HastaSuc := Max_Suc;
  end;

  For Deposito := DesdeSuc to HastaSuc do
  begin
    if dmGestion.Sucursales.Locate(dmGestion.SucursalesIdSucursal.FieldName, Deposito, []) then
    begin
      NomDep := dmGestion.SucursalesNombreSuc.AsString;
      Add_L('Borrando Stk.');
      try
        if not dmGestion.trProc.InTransaction then
          dmGestion.trProc.StartTransaction;
        qClear.Close;
        qClear.Sql.Text := ClrStkD;
        qClear.ParamByName('Stk').AsInteger := Deposito;
        qClear.ExecSQL;
        if Control_Talles then
        begin
          Add_L('Borrando Stk Talles.');
          qClear.Close;
          qClear.Sql.Text := ClrSizeD;
          qClear.ParamByName('Stk').AsInteger := Deposito;
          qClear.ExecSQL;
        end;
        Add_L('Listo Borrado Stk.');
        dmGestion.trProc.Commit;
      except
        on E:Exception do
        begin
          dmGestion.trProc.Rollback;
          Add_L('Error Clear: '+NomDep+' '+E.Message);
        end;
      end;

      if Desde <= Ano_2000 then
        FechaD := dmGestion.SucursalesFechaTInv.AsDateTime
      else
        FechaD := Desde;
      if Hasta <= Ano_2000 then
        FechaH := Date
      else
        FechaH := Hasta;

      if (FechaD <= FechaH) And
         (Deposito > 0) then
      begin
        Add_L('Inicio Recalculo: '+NomDep);
        For IdProducto := 1 to Max_Prod do
        begin
          if Can_Trans = 1 then
          begin
            if not qRecalculo.Transaction.InTransaction then
              qRecalculo.Transaction.StartTransaction;
          end;

          try
            qRecalculo.Close;
            qRecalculo.ParamByName('IdArt').AsInteger := IdProducto;
            qRecalculo.ParamByName('IdStk').AsInteger := Deposito;
            qRecalculo.ParamByName('Desde').AsDate := FechaD;
            qRecalculo.ParamByName('Hasta').AsDate := FechaH;
            qRecalculo.Prepare;
            qRecalculo.ExecProc;
          finally
            Inc(Can_Trans);
          end;

          if Can_Trans = 20 then
          begin
            Tot_Trans := Tot_Trans + Can_Trans;
            Add_L('Procesados '+NomDep+': '+IntToStr(Tot_Trans));
            Can_Trans := 1;
            try
              qRecalculo.Transaction.Commit;
            except
              on E:Exception do
              begin
                qRecalculo.Transaction.Rollback;
                Add_L('Error: '+NomDep+' '+E.Message);
              end;
            end;
          end;
        end;
        Add_L('Finalizado '+NomDep);
      end;
    end;
  end;
end;

procedure TfrmRecalcularStock.FormCreate(Sender: TObject);
begin
  Add_L(Vacio);
end;

procedure TfrmRecalcularStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmRecalcularStock.btnStkArtClick(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    Application.ProcessMessages;
    Calcular_Stocks(Id_Branch, edtDesde.Date, edtHasta.Date);
  finally
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
  end;
end;

procedure TfrmRecalcularStock.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRecalcularStock.FormShow(Sender: TObject);
begin
  Id_Branch := NoEncontrado;
  cbSucursal.ClearItems;
  cbSucursal.Items.AddObject('<TODAS> 01/01/2001', TObject(0));
  with dmGestion do
  begin
    Sucursales.Open;
    Sucursales.First;
    while not Sucursales.Eof do
    begin
      if SucursalesACTIVA.AsInteger = Verdadero then
        cbSucursal.Items.AddObject(SucursalesNombreSuc.AsString+' '+DateToStr(SucursalesFechaTInv.AsDateTime), TObject(SucursalesIdSucursal.AsInteger));
      Sucursales.Next;
    end;
  end;
end;

procedure TfrmRecalcularStock.cbSucursalChange(Sender: TObject);
begin
  try
    Id_Branch := Integer(cbSucursal.Items.Objects[cbSucursal.ItemIndex]);
    if Id_Branch > 0 then
    begin
      if dmGestion.Sucursales.Locate(dmGestion.SucursalesIdSucursal.FieldName, Id_Branch, []) then
      begin
        edtDesde.Date := dmGestion.SucursalesFechaTInv.AsDateTime;
        edtHasta.Date := Date;
      end;
    end
    else begin
      edtDesde.Date := Ano_2000;
      edtHasta.Date := Date;
    end;
  except
    Id_Branch := NoEncontrado;
    cbSucursal.SetFocus;
    raise EUsuario.Create('Deposito mal elegido');
  end;
end;

end.
