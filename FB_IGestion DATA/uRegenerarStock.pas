unit uRegenerarStock;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwcheckbox, wwdbdatetimepicker, Buttons, Mask, wwdbedit, DateUtils,
  Wwdotdot, Wwdbcomb, wwdblook, Db, Variants, Grids, Wwdbigrd, Wwdbgrid,
  ExtCtrls, RzButton, RzEdit, RzPanel, RzCmboBx, ComCtrls, RzDTP,
  RzRadChk, DBClient, RzTabs, MDOCustomDataSet, MDOQuery, MDOTable;

type
  TfrmRegenerarStock = class(TForm)
    qStock: TMDOQuery;
    qClear: TMDOQuery;
    qRecal: TMDOQuery;
    Stock: TMDOTable;
    StockIdArticulo: TIntegerField;
    StockIdGrupo: TIntegerField;
    StockIdSubGrupo: TIntegerField;
    StockIdStock: TIntegerField;
    StockActual: TFloatField;
    StockIngresos: TFloatField;
    StockEgresos: TFloatField;
    StockFechaControl: TDateField;
    StkTalles: TMDOTable;
    StkTallesIdArticulo: TIntegerField;
    StkTallesIdStock: TIntegerField;
    StkTallesTalle: TIntegerField;
    StkTallesIdGrupo: TIntegerField;
    StkTallesIdSubGrupo: TIntegerField;
    StkTallesActual: TFloatField;
    StkTallesIngresos: TFloatField;
    StkTallesEgresos: TFloatField;
    StkTallesFechaControl: TDateField;
    StockStkAInv: TFloatField;
    StockFechaInv: TDateField;
    StockDifInv: TFloatField;
    StkTallesStkAInv: TFloatField;
    StkTallesFechaInv: TDateField;
    StkTallesDifInv: TFloatField;
    pnlRecBot: TRzPanel;
    btnSalir: TRzBitBtn;
    RecStk: TClientDataSet;
    RecStkIdArticulo: TIntegerField;
    RecStkIngresos: TIntegerField;
    RecStkEgresos: TIntegerField;
    RecStkActual: TIntegerField;
    RecStkPrecio: TCurrencyField;
    RecStkNeto: TCurrencyField;
    RecStkNoComp: TCurrencyField;
    RecStkCosto: TCurrencyField;
    RecStkIdStock: TIntegerField;
    RecStkIdGrupo: TIntegerField;
    RecStkIdSubGr: TIntegerField;
    Arts: TMDOTable;
    ArtsIdArticulo: TIntegerField;
    ArtsIdGrupo: TIntegerField;
    ArtsIdSubGrupo: TIntegerField;
    ArtsCosto: TFloatField;
    ArtsPNeto: TCurrencyField;
    ArtsPBase: TCurrencyField;
    ArtsPrecio: TCurrencyField;
    ArtsImpInt: TFloatField;
    qReacStk: TMDOQuery;
    dsRecStk: TDataSource;
    RecStkMarca: TStringField;
    RecStkDetalle: TStringField;
    ArtsMarca: TStringField;
    ArtsDetalle: TStringField;
    pcControlesStock: TRzPageControl;
    tsRecalculo: TRzTabSheet;
    pnlRecTop: TRzPanel;
    lblSucursal: TLabel;
    lblFechaD: TLabel;
    lblFechaH: TLabel;
    lblProd: TLabel;
    lblFechaInv: TLabel;
    btnStkArt: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    cbSucRec: TRzComboBox;
    edtCodArt: TRzEdit;
    edtDesde: TRzDateTimeEdit;
    edtHasta: TRzDateTimeEdit;
    btnRecGenInv: TRzBitBtn;
    edtFhInv: TRzDateTimeEdit;
    btnExpRecStk: TRzBitBtn;
    btnVerRec: TRzBitBtn;
    mEstado: TRzMemo;
    sp1: TSplitter;
    gRecStk: TwwDBGrid;
    RecStkDReal: TIntegerField;
    qStkReal: TMDOQuery;
    qStkRealS: TFloatField;
    RecStkConDif: TBooleanField;
    btnSaveNeg: TRzBitBtn;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnStkArtClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbSucRecChange(Sender: TObject);
    procedure btnRecGenInvClick(Sender: TObject);
    procedure btnExpRecStkClick(Sender: TObject);
    procedure btnVerRecClick(Sender: TObject);
    procedure RecStkConDifGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure btnSaveNegClick(Sender: TObject);
  private
    DesdeD, HastaD: Integer;
    FechaD, FechaH: TDate;
    NomDep: String;
    Cancelar: Boolean;
    { Private declarations }
    procedure Calcular_Stocks(Ar: Integer; D, H: TDate);
    procedure ReCalcular_Stocks_Generar_Inventario(IdArtStk: Integer; H: SmallInt);

  public
    { Public declarations }
  end;

var
  frmRegenerarStock: TfrmRegenerarStock;

implementation

uses udmSaveFile, uTools, udmGestion;

{$R *.DFM}

procedure TfrmRegenerarStock.Calcular_Stocks(Ar: Integer; D, H: TDate);
Const
     IVentas =   'Select IdArticulo, Sum(Cantidad) as Cant ' +
                 'From ItemsFV ' +
                 'Where (FechaF between :FechaD and :FechaH) and ' +
                 '      (IdSucursal =:Deposito) ' +
                 'Group By IdArticulo ';

      ICompras = 'Select IdArticulo, Sum(Cantidad) as Cant ' +
                 'From ItemsFC ' +
                 'Where (FechaF between :FechaD and :FechaH) and ' +
                 '      (IdSucursal =:Deposito) ' +
                 'Group By IdArticulo ';

      ITransfS = 'Select IdArticulo, Sum(Cantidad) as Cant ' +
                 'From ItemsTR '+
                 'Where (IdSucursalO = :Deposito) And '+
                 '      (TMov = 39) And '+
                 '      (FechaF between :FechaD and :FechaH) '+
                 'Group By IdArticulo ';

      ITransfE = 'Select IdArticulo, Sum(Cantidad) as Cant ' +
                 'From ItemsTR  '+
                 'Where (IdSucursalD = :Deposito) And ' +
                 '      (TMov = 39) And ' +
                 '      (FechaF between :FechaD and :FechaH) '+
                 'Group By IdArticulo ';

      IAjuste  = 'Select IdArticulo, TipoAj, Sum(Cantidad) as Cant ' +
                 'From ItemsTR '+
                 'Where (TMov in (46, 52)) and ' +
                 '      (IdSucursalO = :Deposito) and' +
                 '      (FechaF between :FechaD and :FechaH) ' +
                 'Group By IdArticulo, TipoAj ';

      IInvent  = 'Select IdArticulo, Sum(Cantidad) as Cant ' +
                 'From ItemsIN ' +
                 'Where (TFac in (46, 53)) And '+
                 '      (FechaI between :FechaD and :FechaH) and ' +
                 '      (IdStock =:Deposito) '+
                 'Group by IdArticulo ';

       ClrStk  = 'Update StockArt '+
                 'Set Egresos = 0, Ingresos = 0, Actual = 0, StkAInv = 0, DifInv = 0 ';
       ClrUno  = 'Where IdArticulo = ';

       ClrStkD = 'Update StockArt '+
                 'Set Egresos = 0, Ingresos = 0, Actual = 0, StkAInv = 0, DifInv = 0 '+
                 'Where IdStock = :Stk ';
       ClrStkU = ' and IdArticulo = ';

       ClrSize = 'Update StockArt '+
                 'Set Egresos = 0, Ingresos = 0, Actual = 0, StkAInv = 0, DifInv = 0 ';

       ClrSizeD= 'Update StockArt '+
                 'Set Egresos = 0, Ingresos = 0, Actual = 0, StkAInv = 0, DifInv = 0 '+
                 'Where IdStock =:Stk ';

       RecStk  = 'Update StockArt Set Actual = (Ingresos - Egresos), FechaControl = :Hoy ';
       RecStkD = 'Update StockArt Set Actual = (Ingresos - Egresos), FechaControl = :Hoy Where IdStock =:Stk ';

       RecSize = 'Update StockArtTalles Set Actual = (Ingresos - Egresos), FechaControl = :Hoy ';
       RecSizeD= 'Update StockArtTalles Set Actual = (Ingresos - Egresos), FechaControl = :Hoy Where IdStock =:Stk ';

var
  Todos: Boolean;
  IdArtStk, Deposito: Integer;
  FecUltInv: TDate;
begin
  Cancelar := False;
  if DesdeD = 0 then
  begin
    edtDesde.Date := Date;
    edtFhInv.Date := Date;
    edtHasta.Date := Date;
  end
  else begin
    if dmGestion.Sucursales.Locate(dmGestion.SucursalesIdSucursal.FieldName, DesdeD, []) then
    begin
      edtDesde.Date := StrToDate('01/01/2001');
      edtFhInv.Date := dmGestion.SucursalesFechaTInv.AsDateTime;
      edtHasta.Date := dmGestion.SucursalesFechaTInv.AsDateTime;
    end;
  end;
  mEstado.Lines.Clear;
  mEstado.Lines.add('preparando Bases de Datos');

  if not Stock.Active then
    Stock.Open;
  Stock.IndexName := '';
  if not StkTalles.Active then
    StkTalles.Open;
  StkTalles.IndexName := '';
  IdArtStk := Ar;

  if IdArtStk = 0 then
  begin
    if DesdeD = 0 then
    begin
      Todos := True;
      DesdeD := 1;
      HastaD := Max_Suc;
      mEstado.Lines.add('Clear Stk - Productos '+TimeToStr(Time));
      Application.ProcessMessages;
      qClear.Close;
      qClear.Sql.Text := ClrStk;
      qClear.ExecSQL;
      mEstado.Lines.add('Stock vacio '+TimeToStr(Time));
      Application.ProcessMessages;
    end
    else begin
      HastaD := DesdeD;
      Todos := False;
      mEstado.Lines.add('Clear Stk - Productos '+TimeToStr(Time));
      Application.ProcessMessages;
      qClear.Close;
      qClear.Sql.Text := ClrStkD;
      qClear.ParamByName('Stk').AsInteger := DesdeD;
      qClear.ExecSQL;
      mEstado.Lines.add('Stock vacio '+TimeToStr(Time));
      Application.ProcessMessages;
    end;
  end
  else begin
    if DesdeD = 0 then
    begin
      Todos := False;
      DesdeD := 1;
      HastaD := Max_Suc;

      mEstado.Lines.add('Clear Stk - Productos '+TimeToStr(Time));
      Application.ProcessMessages;
      qClear.Close;
      qClear.Sql.Text := ClrStk + ClrUno + IntToStr(IdArtStk);
      qClear.ExecSQL;
      mEstado.Lines.add('Stock vacio '+TimeToStr(Time));
      Application.ProcessMessages;
    end
    else begin
      HastaD := DesdeD;
      Todos := False;
      mEstado.Lines.add('Clear Stk - Productos '+TimeToStr(Time));
      Application.ProcessMessages;
      qClear.Close;
      qClear.Sql.Text := ClrStkD + ClrStkU + IntToStr(IdArtStk);
      qClear.ParamByName('Stk').AsInteger := DesdeD;
      qClear.ExecSQL;
      mEstado.Lines.add('Stock vacio '+TimeToStr(Time));
      Application.ProcessMessages;
    end;
  end;

  Arts.Open;
  for Deposito := DesdeD to HastaD do
  begin
    if Cancelar then
      Break;
    dmGestion.Sucursales.Locate(dmGestion.SucursalesIdSucursal.FieldName, Deposito, []);
    NomDep := dmGestion.SucursalesNombreSuc.AsString;
    FecUltInv := dmGestion.SucursalesFechaTInv.AsDateTime;
    if Todos then
    begin
      if dmGestion.SucursalesFechaTInv.IsNull then
        FechaD := dmGestion.SucursalesFechaInicio.AsDateTime
      else
        FechaD := dmGestion.SucursalesFechaTInv.AsDateTime;
      FechaH := Date;
    end
    else begin
      FechaD := D;
      FechaH := H;
    end;

    //Inventario
    pnlRecBot.Caption := ' ';
    qStock.Close;
    qStock.SQL.Clear;
    qStock.SQL.Text := IInvent;
    qStock.ParamByName('FechaD').AsDate := FechaD;
    qStock.ParamByName('FechaH').AsDate := FechaH;
    qStock.ParamByName('Deposito').AsInteger := Deposito;
    mEstado.Lines.add('Inventario Nº '+IntToStr(Deposito)+' '+NomDep+' Inicio:'+DateToStr(FechaD)+' '+TimeToStr(Time));
    Application.ProcessMessages;
    qStock.Open;
    if IdArtStk > 0 then
    begin
      qStock.Filter := 'IdArticulo = '+IntToStr(IdArtStk);
      qStock.Filtered := True;
    end;

    if not qStock.IsEmpty then
    begin
      qStock.First;
      while not qStock.Eof do
      begin
        pnlRecBot.Caption := 'Inventario Producto Nº '+qStock.FieldByName('IdArticulo').AsString+' actualizado';
        Application.ProcessMessages;
        if Stock.Locate('IdArticulo;Deposito',VarArrayOf([qStock.FieldByName('IdArticulo').AsInteger, Deposito]), []) then
        begin
          Stock.Edit;
          StockDifInv.AsFloat := 0;
          StockStkAInv.AsFloat := StockStkAInv.AsFloat + qStock.FieldByName('Cant').AsFloat;
          StockFechaInv.AsDateTime := FecUltInv;
          Stock.Post;
        end
        else begin
          if Arts.Locate(ArtsIdArticulo.FieldName, qStock.FieldByName('IdArticulo').AsInteger, []) then
          begin
            Stock.Insert;
            StockIdGrupo.AsInteger := ArtsIdGrupo.AsInteger;
            StockIdSubGrupo.AsInteger := ArtsIdSubGrupo.AsInteger;
            StockIdArticulo.AsInteger := ArtsIdArticulo.AsInteger;
            StockIdStock.AsInteger := Deposito;
            StockStkAInv.AsFloat := qStock.FieldByName('Cant').AsFloat;
            StockFechaInv.AsDateTime := FecUltInv;
            StockIngresos.AsFloat := 0;
            StockEgresos.AsFloat := 0;
            StockDifInv.AsFloat := 0;
            Stock.Post;
          end;
        end;
        qStock.Next;
      end;
    end;

    if Cancelar then
      Break;

    //Ventas
    pnlRecBot.Caption := ' ';
    qStock.Close;
    qStock.SQL.Clear;
    qStock.SQL.Text := IVentas;
    qStock.ParamByName('FechaD').AsDate := FechaD;
    qStock.ParamByName('FechaH').AsDate := FechaH;
    qStock.ParamByName('Deposito').AsInteger := Deposito;
    mEstado.Lines.add('Ventas Nº'+IntToStr(Deposito)+' '+NomDep+' Inicio:'+DateToStr(FechaD)+' '+TimeToStr(Time));
    Application.ProcessMessages;
    qStock.Open;
    if IdArtStk > 0 then
    begin
      qStock.Filter := 'IdArticulo = '+IntToStr(IdArtStk);
      qStock.Filtered := True;
    end;
    if not qStock.IsEmpty then
    begin
      qStock.First;
      while not qStock.Eof do
      begin
        pnlRecBot.Caption := 'Ventas Producto Nº '+qStock.FieldByName('IdArticulo').AsString+' actualizado';
        Application.ProcessMessages;
        if Stock.Locate('IdArticulo;Deposito',VarArrayOf([qStock.FieldByName('IdArticulo').AsInteger, Deposito]), []) then
        begin
          Stock.Edit;
          StockEgresos.AsFloat := StockEgresos.AsFloat + qStock.FieldByName('Cant').AsFloat;
          Stock.Post;
        end
        else begin
          if Arts.Locate(ArtsIdArticulo.FieldName, qStock.FieldByName('IdArticulo').AsInteger, []) then
          begin
            Stock.Insert;
            StockIdGrupo.AsInteger := ArtsIdGrupo.AsInteger;
            StockIdSubGrupo.AsInteger := ArtsIdSubGrupo.AsInteger;
            StockIdArticulo.AsInteger := ArtsIdArticulo.AsInteger;
            StockIdStock.AsInteger := Deposito;
            StockEgresos.AsFloat := qStock.FieldByName('Cant').AsFloat;
            StockIngresos.AsFloat := 0;
            StockDifInv.AsFloat := 0;
            StockStkAInv.AsFloat := 0;
            Stock.Post;
          end;
        end;
        qStock.Next;
      end;
    end;

    if Cancelar then
      Break;

    //Compras
    pnlRecBot.Caption := ' ';
    qStock.Close;
    qStock.SQL.Clear;
    qStock.SQL.Text := ICompras;
    qStock.ParamByName('FechaD').AsDate := FechaD;
    qStock.ParamByName('FechaH').AsDate := FechaH;
    qStock.ParamByName('Deposito').AsInteger := Deposito;
    qStock.Open;
    mEstado.Lines.add('Compras '+NomDep+' '+TimeToStr(Time));
    Application.ProcessMessages;
    if IdArtStk > 0 then
    begin
      qStock.Filter := 'IdArticulo = '+IntToStr(IdArtStk);
      qStock.Filtered := True;
    end;
    if not qStock.IsEmpty then
    begin
      qStock.First;
      while not qStock.Eof do
      begin
        pnlRecBot.Caption := 'Compras Producto Nº '+qStock.FieldByName('IdArticulo').AsString+' actualizado';
        Application.ProcessMessages;
        if Stock.Locate('IdArticulo;Deposito',VarArrayOf([qStock.FieldByName('IdArticulo').AsInteger, Deposito]), []) then
        begin
          Stock.Edit;
          StockIngresos.AsFloat := StockIngresos.AsFloat + qStock.FieldByName('Cant').AsFloat;
          Stock.Post;
        end
        else begin
          if Arts.Locate(ArtsIdArticulo.FieldName, qStock.FieldByName('IdArticulo').AsInteger, []) then
          begin
            Stock.Insert;
            StockIdGrupo.AsInteger := ArtsIdGrupo.AsInteger;
            StockIdSubGrupo.AsInteger := ArtsIdSubGrupo.AsInteger;
            StockIdArticulo.AsInteger := ArtsIdArticulo.AsInteger;
            StockIdStock.AsInteger := Deposito;
            StockIngresos.AsFloat := qStock.FieldByName('Cant').AsFloat;
            StockEgresos.AsFloat := 0;
            StockDifInv.AsFloat := 0;
            StockStkAInv.AsFloat := 0;
            Stock.Post;
          end;
        end;
        qStock.Next;
      end;
    end;
    if Cancelar then
      Break;

    //Origen
    pnlRecBot.Caption := ' ';
    qStock.Close;
    qStock.SQL.Clear;
    qStock.SQL.Text := ITransfS;
    qStock.ParamByName('FechaD').AsDate := FechaD;
    qStock.ParamByName('FechaH').AsDate := FechaH;
    qStock.ParamByName('Deposito').AsInteger := Deposito;
    qStock.Open;
    mEstado.Lines.add('Transferencias Envios '+NomDep+' '+TimeToStr(Time));
    Application.ProcessMessages;
    if IdArtStk > 0 then
    begin
      qStock.Filter := 'IdArticulo = '+IntToStr(IdArtStk);
      qStock.Filtered := True;
    end;
    if not qStock.IsEmpty then
    begin
      qStock.First;
      while not qStock.Eof do
      begin
        pnlRecBot.Caption := 'Egresos Producto Nº '+qStock.FieldByName('IdArticulo').AsString+' actualizado';
        Application.ProcessMessages;
        if Stock.Locate('IdArticulo;Deposito',VarArrayOf([qStock.FieldByName('IdArticulo').AsInteger, Deposito]), []) then
        begin
          Stock.Edit;
          StockEgresos.AsFloat := StockEgresos.AsFloat + qStock.FieldByName('Cant').AsFloat;
          Stock.Post;
        end
        else begin
          if Arts.Locate(ArtsIdArticulo.FieldName, qStock.FieldByName('IdArticulo').AsInteger, []) then
          begin
            Stock.Insert;
            StockIdGrupo.AsInteger := ArtsIdGrupo.AsInteger;
            StockIdSubGrupo.AsInteger := ArtsIdSubGrupo.AsInteger;
            StockIdArticulo.AsInteger := ArtsIdArticulo.AsInteger;
            StockIdStock.AsInteger := Deposito;
            StockEgresos.AsFloat := qStock.FieldByName('Cant').AsFloat;
            StockIngresos.AsFloat := 0;
            StockDifInv.AsFloat := 0;
            StockStkAInv.AsFloat := 0;
            Stock.Post;
          end;
        end;
        qStock.Next;
      end;
    end;
    if Cancelar then
      Break;

    //Destino
    pnlRecBot.Caption := ' ';
    qStock.Close;
    qStock.SQL.Clear;
    qStock.SQL.Text := ITransfE;
    qStock.ParamByName('FechaD').AsDate := FechaD;
    qStock.ParamByName('FechaH').AsDate := FechaH;
    qStock.ParamByName('Deposito').AsInteger := Deposito;
    qStock.Open;
    mEstado.Lines.add('Transferencias Ingresos ' + NomDep+' '+TimeToStr(Time));
    Application.ProcessMessages;
    if IdArtStk > 0 then
    begin
      qStock.Filter := 'IdArticulo = '+IntToStr(IdArtStk);
      qStock.Filtered := True;
    end;
    if not qStock.IsEmpty then
    begin
      qStock.First;
      while not qStock.Eof do
      begin
        pnlRecBot.Caption := 'Ingresos Producto Nº '+qStock.FieldByName('IdArticulo').AsString+' actualizado';
        Application.ProcessMessages;
        if Stock.Locate('IdArticulo;Deposito',VarArrayOf([qStock.FieldByName('IdArticulo').AsInteger, Deposito]), []) then
        begin
          Stock.Edit;
          StockIngresos.AsFloat := StockIngresos.AsFloat + qStock.FieldByName('Cant').AsFloat;
          Stock.Post;
        end
        else begin
          if Arts.Locate(ArtsIdArticulo.FieldName, qStock.FieldByName('IdArticulo').AsInteger, []) then
          begin
            Stock.Insert;
            StockIdGrupo.AsInteger := ArtsIdGrupo.AsInteger;
            StockIdSubGrupo.AsInteger := ArtsIdSubGrupo.AsInteger;
            StockIdArticulo.AsInteger := ArtsIdArticulo.AsInteger;
            StockIdStock.AsInteger := Deposito;
            StockIngresos.AsFloat := qStock.FieldByName('Cant').AsFloat;
            StocKEgresos.AsFloat := 0;
            StockDifInv.AsFloat := 0;
            StockStkAInv.AsFloat := 0;
            Stock.Post;
          end;
        end;
        qStock.Next;
      end;
    end;
    if Cancelar then
      Break;
    //Ajustes de Stock
    pnlRecBot.Caption := ' ';
    qStock.Close;
    qStock.SQL.Clear;
    qStock.SQL.Text := IAjuste;
    qStock.ParamByName('FechaD').AsDate := FechaD;
    qStock.ParamByName('FechaH').AsDate := FechaH;
    qStock.ParamByName('Deposito').AsInteger := Deposito;
    qStock.Open;
    mEstado.Lines.add('Ajustes ' + NomDep+' '+TimeToStr(Time));
    Application.ProcessMessages;
    if IdArtStk > 0 then
    begin
      qStock.Filter := 'IdArticulo = '+IntToStr(IdArtStk);
      qStock.Filtered := True;
    end;
    if not qStock.IsEmpty then
    begin
      qStock.First;
      while not qStock.Eof do
      begin
        pnlRecBot.Caption := 'Ajustes Producto Nº '+qStock.FieldByName('IdArticulo').AsString+' actualizado';
        Application.ProcessMessages;
        if Stock.Locate('IdArticulo;Deposito', VarArrayOf([qStock.FieldByName('IdArticulo').AsInteger, Deposito]), []) then
        begin
          Stock.Edit;
          if qStock.FieldByName('TipoAj').AsInteger > 0 then
            StockIngresos.AsFloat := StockIngresos.AsFloat + qStock.FieldByName('Cant').AsFloat
          else
            StockEgresos.AsFloat := StockEgresos.AsFloat + qStock.FieldByName('Cant').AsFloat;
          Stock.Post;
        end
        else begin
          if Arts.Locate(ArtsIdArticulo.FieldName, qStock.FieldByName('IdArticulo').AsInteger, []) then
          begin
            Stock.Insert;
            StockIdGrupo.AsInteger := ArtsIdGrupo.AsInteger;
            StockIdSubGrupo.AsInteger := ArtsIdSubGrupo.AsInteger;
            StockIdArticulo.AsInteger := ArtsIdArticulo.AsInteger;
            StockIdStock.AsInteger := Deposito;
            StockIngresos.AsFloat := qStock.FieldByName('Cant').AsFloat;
            StocKEgresos.AsFloat := 0;
            StockDifInv.AsFloat  := 0;
            StockStkAInv.AsFloat := 0;
          end;
        end;
        qStock.Next;
      end;
    end;

    mEstado.Lines.add('Finalizado: ' + NomDep+' '+TimeToStr(Time));
    Application.ProcessMessages;
    if Cancelar then
      Break;

    mEstado.Lines.add('Recalculo Stock... '+TimeToStr(Time));
    Application.ProcessMessages;
    pnlRecBot.Caption := ' ';
    qRecal.Close;
    qRecal.Sql.Text := RecStkD;
    qRecal.ParamByName('Hoy').AsDate := Date;
    qRecal.ParamByName('Stk').AsInteger := Deposito;
    qRecal.ExecSQL;
    mEstado.Lines.add('Fin recalculo Stock... '+TimeToStr(Time));
    Application.ProcessMessages;

    mEstado.Lines.add('Fin Recalculo. ' + NomDep+' '+TimeToStr(Time));
    pnlRecBot.Caption := ' Finalizado.-';
    Application.ProcessMessages;
  end;
end;

procedure TfrmRegenerarStock.ReCalcular_Stocks_Generar_Inventario(IdArtStk: Integer; H: SmallInt);
Const
  IVentas =  'Select IdArticulo, Sum(Cantidad) as Cant ' +
             'From ItemsFV ' +
             'Where (FechaF between :FechaD and :FechaH) and ' +
             '      (IdSucursal = :Deposito) ' +
             'Group By IdArticulo ';

  ICompras = 'Select IdArticulo, Sum(Cantidad) as Cant ' +
             'From ItemsFC ' +
             'Where (FechaF between :FechaD and :FechaH) and ' +
             '      (IdSucursal = :Deposito) ' +
             'Group By IdArticulo ';

  ITransfS = 'Select IdArticulo, Sum(Cantidad) as Cant ' +
             'From ItemsTR '+
             'Where (IdSucursalO = :Deposito) And (TMov = 39) and '+
             '      (FechaF between :FechaD and :FechaH) '+
             'Group By IdArticulo ';

  ITransfE = 'Select IdArticulo, Sum(Cantidad) as Cant ' +
             'From ItemsTR '+
             'Where (IdSucursalD = :Deposito) And (TMov = 39) And ' +
             '      (FechaF between :FechaD and :FechaH) '+
             'Group By IdArticulo ';

  IAjuste  = 'Select IdArticulo, TipoAj, Sum(Cantidad) as Cant ' +
             'From ItemsTR '+
             'Where (TMov in (46, 52)) and ' +
             '      (IdSucursalO = :Deposito) and' +
             '      (FechaF between :FechaD and :FechaH) '+
             'Group By IdArticulo, TipoAj ';

  IInvent  = 'Select IdArticulo, Sum(Cantidad) as Cant ' +
             'From ItemsIN ' +
             'Where (TFac = 46) and '+
             '      (FechaI between :FechaD and :FechaH) And ' +
             '      (IdStock = :Deposito) '+
             'Group by IdArticulo ';

var
  CantFac, AnoInv, Actual,
  Oper, Pri_Dep, Ult_Dep, Deposito: Integer;
  FechaInv: TDate;
  Operacion: String;
  AuxNCmp: St13;
  TNeto, TCosto, TNoCmp, RTotal: Currency;

begin
  Cancelar := False;
  pnlRecBot.Caption := ' ';
  AuxNCmp := Format('%.4d-%.8d',[Deposito, 0]); //'0000-00000000';
  Arts.Open;
  try
    Deposito := Integer(cbSucRec.Items.Objects[cbSucRec.ItemIndex]);
  except
    Deposito := 999;
    raise EUsuario.Create('Se debe procesar solo una sucursal');
  end;

  if Deposito = 0 then // Todos
  begin
    Pri_Dep := 1;
    Ult_Dep := Max_Suc;
  end
  else begin
    Pri_Dep := Deposito;
    Ult_Dep := Deposito;
  end;

  FechaD := edtDesde.Date;
  FechaH := edtHasta.Date;
  if FechaD > FechaH then
    raise EUsuario.Create('Periodo mal ingresado');
  FechaInv := edtFhInv.Date;
  CantFac := 0;
  AnoInv  := YearOf(FechaInv);
  For Deposito := Pri_Dep to Ult_Dep do
  begin
    mEstado.Lines.Clear;
    mEstado.Lines.add('preparando Bases de Datos');
    if RecStk.Active then
      RecStk.EmptyDataSet
    else
      RecStk.CreateDataSet;
    mEstado.Lines.add('Procesando Deposito Nº '+IntToStr(Deposito)+' '+NomDep+' '+TimeToStr(Time));

    For Oper := 1 to 6 do
    begin
      Operacion := Vacio;
      Case Oper of
        1: begin
             Operacion := IInvent; //Inventario
             mEstado.Lines.add('Inventario Nº '+IntToStr(Deposito)+' '+NomDep+' '+TimeToStr(Time));
           end;
        2: begin
             Operacion := IVentas;
             mEstado.Lines.add('Ventas Nº '+IntToStr(Deposito)+' '+NomDep+' '+TimeToStr(Time));
           end;
        3: begin
             Operacion := ICompras;
             mEstado.Lines.add('Compras Nº '+IntToStr(Deposito)+' '+NomDep+' '+TimeToStr(Time));
           end;
        4: begin
             Operacion := ITransfS;
             mEstado.Lines.add('Tr. Envios Nº '+IntToStr(Deposito)+' '+NomDep+' '+TimeToStr(Time));
           end;
        5: begin
             Operacion := ITransfE;
             mEstado.Lines.add('Tr. Ingresos Nº '+IntToStr(Deposito)+' '+NomDep+' '+TimeToStr(Time));
           end;
        6: begin
             Operacion := IAjuste;
             mEstado.Lines.add('Ajustes Nº '+IntToStr(Deposito)+' '+NomDep+' '+TimeToStr(Time));
           end;
      end;
      Application.ProcessMessages;
      qStock.Close;
      qStock.SQL.Clear;
      qStock.SQL.Text := Operacion;
      qStock.ParamByName('FechaD').AsDate := FechaD;
      qStock.ParamByName('FechaH').AsDate := FechaH;
      qStock.ParamByName('Deposito').AsInteger := Deposito;
      qStock.Open;
      if IdArtStk > 0 then
      begin
        qStock.Filter := 'IdArticulo = '+IntToStr(IdArtStk);
        qStock.Filtered := True;
      end;
      if not qStock.IsEmpty then
      begin
        qStock.First;
        while not qStock.Eof do
        begin
          pnlRecBot.Caption := 'ºOper '+InttoStr(Oper)+' Producto Nº '+qStock.FieldByName('IdArticulo').AsString+' procesado.';
          Application.ProcessMessages;
          if not RecStk.Locate(RecStkIdArticulo.FieldName, qStock.FieldByName('IdArticulo').AsInteger, []) then
          begin
            if Arts.Locate(ArtsIdArticulo.FieldName, qStock.FieldByName('IdArticulo').AsInteger, []) then
            begin
              RecStk.Insert;
              RecStkIdStock.AsInteger := Deposito;
              RecStkIdGrupo.AsInteger := ArtsIdGrupo.AsInteger;
              RecStkIdSubGr.AsInteger := ArtsIdSubGrupo.AsInteger;
              RecStkIdArticulo.AsInteger := ArtsIdArticulo.AsInteger;
              RecStkEgresos.AsInteger := 0;
              RecStkIngresos.AsInteger := 0;
              RecStkActual.AsInteger := 0;
              RecStkConDif.AsBoolean := False;
              RecStkCosto.AsCurrency := ArtsCosto.AsCurrency;
              RecStkNeto.AsCurrency := ArtsPNeto.AsCurrency;
              RecStkPrecio.AsCurrency := ArtsPrecio.AsCurrency;
              RecStkNoComp.AsCurrency := ArtsImpInt.AsCurrency;
              RecStkMarca.AsString := ArtsMarca.AsString;
              RecStkDetalle.AsString := ArtsDetalle.AsString;
              try
                qStkReal.Close;
                qStkReal.ParamByName('P').AsInteger := qStock.FieldByName('IdArticulo').AsInteger;
                qStkReal.ParamByName('D').AsInteger := Deposito;
                qStkReal.Open;
                RecStkDReal.AsInteger := qStkRealS.AsInteger;
                qStkReal.Close;
              except
                RecStkDReal.AsInteger := 0;
              end;
              RecStk.Post;
            end;
          end;

          if RecStk.Locate(RecStkIdArticulo.FieldName, qStock.FieldByName('IdArticulo').AsInteger, []) then
          begin
            RecStk.Edit;
            Case Oper of
              1:begin //Inventario
                  if qStock.FieldByName('Cant').AsInteger > 0 then
                    RecStkIngresos.AsInteger := RecStkIngresos.AsInteger + qStock.FieldByName('Cant').AsInteger
                  else
                    RecStkEgresos.AsInteger := RecStkEgresos.AsInteger + ABS(qStock.FieldByName('Cant').AsInteger);
                end;
              2:begin //Ventas
                  if qStock.FieldByName('Cant').AsInteger < 0 then
                    RecStkIngresos.AsInteger := RecStkIngresos.AsInteger + ABS(qStock.FieldByName('Cant').AsInteger)
                  else
                    RecStkEgresos.AsInteger := RecStkEgresos.AsInteger + qStock.FieldByName('Cant').AsInteger;
                end;
              3:begin //Compras
                  if qStock.FieldByName('Cant').AsInteger > 0 then
                    RecStkIngresos.AsInteger := RecStkIngresos.AsInteger + qStock.FieldByName('Cant').AsInteger
                  else
                    RecStkEgresos.AsInteger := RecStkEgresos.AsInteger + ABS(qStock.FieldByName('Cant').AsInteger);
                end;
              4:begin //Salidas
                  RecStkEgresos.AsInteger := RecStkEgresos.AsInteger + qStock.FieldByName('Cant').AsInteger;
                end;
              5:begin //Entradas
                 RecStkIngresos.AsInteger := RecStkIngresos.AsInteger + qStock.FieldByName('Cant').AsInteger
                end;
              6:begin // Ajustes
                  if qStock.FieldByName('TipoAj').AsInteger > 0 then
                    RecStkIngresos.AsInteger := RecStkIngresos.AsInteger + qStock.FieldByName('Cant').AsInteger
                  else
                    RecStkEgresos.AsInteger  := RecStkEgresos.AsInteger + ABS(qStock.FieldByName('Cant').AsInteger);
                end;
            end;
            RecStk.Post;
          end;
          qStock.Next;
        end;
      end;
      if Cancelar then
        Break;
    end;

    qStock.Close;
    mEstado.Lines.add('Finalizado: ' + NomDep+' '+TimeToStr(Time));
    Application.ProcessMessages;

    if not RecStk.IsEmpty then
    begin
      mEstado.Lines.add('Recalculando Stock... '+TimeToStr(Time));
      pnlRecBot.Caption := IntToStr(RecStk.RecordCount);
      Application.ProcessMessages;
      RecStk.First;
      While not RecStk.Eof do
      begin
        RecStk.Edit;
        RecStkActual.AsInteger := RecStkIngresos.AsInteger - RecStkEgresos.AsInteger;
        if ((RecStkIngresos.AsInteger - RecStkEgresos.AsInteger) <> RecStkDReal.AsInteger) then
        begin
          RecStkConDif.AsBoolean := True;
        end;
        RecStk.Post;
        RecStk.Next;
      end;
      pnlRecBot.Caption := ' .';
      mEstado.Lines.add('Fin recalculo Stock... '+TimeToStr(Time));
      Application.ProcessMessages;
      try
        RecStk.IndexFieldNames := 'IdGrupo;IdSubGr;IdArticulo';
      except

      end;

      RecStk.First;
      TNeto  := 0;
      TCosto := 0;
      TNoCmp := 0;
      RTotal := 0;
      Actual := 1;
      CantFac:= 1;

      if H = 1 then
      begin
        if dmGestion.Sucursales.Locate(dmGestion.SucursalesIdSucursal.FieldName, Deposito, []) then
        begin
          if Trim(dmGestion.SucursalesNroRemitoI.AsString) > Vacio then
            AuxNCmp := dmGestion.SucursalesNroRemitoI.AsString;
          dmGestion.Sucursales.Edit;
          dmGestion.SucursalesFechaTInv.AsDateTime := FechaInv;
          dmGestion.SucursalesFechaInicio.AsDateTime := FechaInv;
          dmGestion.Sucursales.Post;
        end;

        FillChar(Factura, SizeOf(Factura), 0);
        FillChar(ItemsFiscal, SizeOf(ItemsFiscal), 0);
        mEstado.Lines.add('Generando Cierre e Inventario... '+TimeToStr(Time));
        Application.ProcessMessages;
        While not RecStk.Eof do
        begin
          if RecStkActual.AsInteger > 0 then
          begin
            ItemsFiscal[Actual].IdItem := Actual;
            ItemsFiscal[Actual].IdSucursal := Deposito;
            ItemsFiscal[Actual].IdProducto := RecStkIdArticulo.AsInteger;
            ItemsFiscal[Actual].IdPuntoVenta := IdSalesPoint;
            ItemsFiscal[Actual].TipoAj := 1;
            ItemsFiscal[Actual].Cantidad := RecStkActual.AsInteger;
            ItemsFiscal[Actual].PrecioNetoT := RecStkNeto.AsCurrency * RecStkActual.Value;
            ItemsFiscal[Actual].PrecioCosto := RecStkCosto.AsCurrency;
            ItemsFiscal[Actual].PrecioFinal := RecStkPrecio.AsCurrency;
            ItemsFiscal[Actual].PrecioTotal := RecStkPrecio.AsCurrency * RecStkActual.Value;
            ItemsFiscal[Actual].NoComputable := RecStkNoComp.AsCurrency;
            ItemsFiscal[Actual].Servicio := False;

            TNeto  := TNeto  + (RecStkNeto.AsCurrency * RecStkActual.Value);
            TCosto := TCosto + (RecStkCosto.AsCurrency* RecStkActual.Value);
            TNoCmp := TNoCmp + (RecStkNoComp.AsCurrency* RecStkActual.Value);
            RTotal := RTotal + (RecStkPrecio.AsCurrency * RecStkActual.Value);
            Inc(Actual);
          end;

          try
            qReacStk.Close;
            qReacStk.ParamByName('A').AsInteger := RecStkActual.AsInteger;
            qReacStk.ParamByName('S').AsInteger := 0;
            qReacStk.ParamByName('E').AsInteger := RecStkEgresos.AsInteger;
            qReacStk.ParamByName('I').AsInteger := RecStkIngresos.AsInteger;
            qReacStk.ParamByName('F').AsDate := FechaInv;
            qReacStk.ParamByName('P').AsInteger := RecStkIdArticulo.AsInteger;
            qReacStk.ParamByName('D').AsInteger := Deposito;
            qReacStk.ExecSQL;
          except
            pnlRecBot.Caption := 'Error Producto Nº '+RecStkIdArticulo.AsString;
          end;

          pnlRecBot.Caption := 'Producto Nº '+RecStkIdArticulo.AsString;
          Application.ProcessMessages;
          RecStk.Next;

          if (Actual >= 30) or
             (RecStk.Eof) then
          begin
            with Factura do
            begin
              IdFactura := CantFac;
              IdSucursal := Deposito;
              IdPuntoVenta := IdSalesPoint;
              TipoFactura := RemitoInventario; //RemitoInventario = 53; RemitoAjusteSt = 46;
              CantArtic := Actual-1;
              IdStOrigen := Deposito;
              FechaF := FechaInv;
              Inc_NComp(AuxNCmp);
              NroFactura := AuxNCmp;
              IdCompRef := AnoInv;
              NombreEnt := Vacio;
              Neto := TNeto;
              Exento := TCosto;
              NoComputables := TNoCmp;
              Total := RTotal;
              Empleado := Usuario;
              TipoAj := 1;
            end;
            if dmSaveFile.GrabarComprobanteInventario(Factura, ItemsFiscal) then
            begin
              mEstado.Lines.add('Grabando Remito Nº '+Factura.NroFactura+'  '+ TimeToStr(Time));
              Application.ProcessMessages;
            end
            else
              ShowMessage('ERROR. El remito no se GRABO.');
            TNeto := 0;
            TCosto:= 0;
            TNoCmp:= 0;
            RTotal:= 0;
            Actual := 1;
            Inc(CantFac);
            FillChar(Factura, SizeOf(Factura), 0);
            FillChar(ItemsFiscal, SizeOf(ItemsFiscal), 0);
          end
        end;
        mEstado.Lines.add('Fin proceso  '+ TimeToStr(Time));
        Application.ProcessMessages;
        Calcular_Stocks(IdArtStk, FechaInv, Date);
      end;

      if H = 2 then // Ajustes de negativos
      begin
        if dmGestion.Sucursales.Locate(dmGestion.SucursalesIdSucursal.FieldName, Deposito, []) then
        begin
          if Trim(dmGestion.SucursalesNroRemitoI.AsString) > Vacio then
            AuxNCmp := dmGestion.SucursalesNroRemitoI.AsString;
        end;
        FillChar(Factura, SizeOf(Factura), 0);
        FillChar(ItemsFiscal, SizeOf(ItemsFiscal), 0);
        mEstado.Lines.add('Generando ajustes de negativos... '+TimeToStr(Time));
        Application.ProcessMessages;
        While not RecStk.Eof do
        begin
          if RecStkActual.AsInteger < 0 then
          begin
            ItemsFiscal[Actual].IdItem := Actual;
            ItemsFiscal[Actual].IdSucursal := Deposito;
            ItemsFiscal[Actual].IdProducto := RecStkIdArticulo.AsInteger;
            ItemsFiscal[Actual].IdPuntoVenta := IdSalesPoint;
            ItemsFiscal[Actual].TipoAj := 1;
            ItemsFiscal[Actual].Cantidad := ABS(RecStkActual.AsInteger);
            ItemsFiscal[Actual].PrecioFinal := RecStkPrecio.AsCurrency;
            ItemsFiscal[Actual].PrecioTotal := (RecStkPrecio.AsCurrency * ItemsFiscal[Actual].Cantidad);
            ItemsFiscal[Actual].NoComputable := 0;
            ItemsFiscal[Actual].Servicio := False;
            RTotal := RTotal + (RecStkPrecio.AsCurrency * ItemsFiscal[Actual].Cantidad);
            Inc(Actual);
          end;
          pnlRecBot.Caption := 'Producto Nº '+RecStkIdArticulo.AsString;
          Application.ProcessMessages;
          RecStk.Next;

          if (Actual >= 30) or (RecStk.Eof) then
          begin
            with Factura do
            begin
              IdFactura := CantFac;
              IdSucursal := Deposito;
              IdPuntoVenta := IdSalesPoint;
              TipoFactura := RemitoAjusteSt; //RemitoInventario = 53; RemitoAjusteSt = 46;
              CantArtic := Actual - 1;
              IdStOrigen := Deposito;
              IdStDestino := 1;
              FechaF := FechaInv - 1;
              Inc_NComp(AuxNCmp);
              NroFactura := AuxNCmp;
              IdCompRef := AnoInv;
              NombreEnt := Vacio;
              Neto := TNeto;
              Exento := TCosto;
              NoComputables := TNoCmp;
              Total := RTotal;
              Empleado := Usuario;
              TipoAj := 1;
            end;
            if dmSaveFile.GrabarComprobanteStock(Factura, ItemsFiscal) then
            begin
              mEstado.Lines.add('Grabando Remito Nº '+Factura.NroFactura+'  '+ TimeToStr(Time));
              Application.ProcessMessages;
            end
            else
              ShowMessage('ERROR. El remito de ajuste no se GRABO.');
            TNeto := 0;
            TCosto:= 0;
            TNoCmp:= 0;
            RTotal:= 0;
            Actual := 1;
            Inc(CantFac);
            FillChar(Factura, SizeOf(Factura), 0);
            FillChar(ItemsFiscal, SizeOf(ItemsFiscal), 0);
          end
        end;
        mEstado.Lines.add('Fin proceso de Ajuste '+ TimeToStr(Time));
        Application.ProcessMessages;
      end;
    end;
  end;
end;

procedure TfrmRegenerarStock.FormCreate(Sender: TObject);
begin
  mEstado.Clear;
  mEstado.Lines.add('Listo para comenzar');
  Application.ProcessMessages;
  Cancelar := False;
end;

procedure TfrmRegenerarStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmRegenerarStock.btnStkArtClick(Sender: TObject);
var
  a: Integer;
begin
  Screen.Cursor := crHourGlass;
  Application.ProcessMessages;
  try
    A := StrToInt(Trim(edtCodArt.Text));
  except
    A := 0;
  end;
  Calcular_Stocks(A, edtDesde.Date, edtHasta.Date);
  Screen.Cursor := crDefault;
  Application.ProcessMessages;
end;

procedure TfrmRegenerarStock.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRegenerarStock.btnCancelarClick(Sender: TObject);
begin
  Cancelar := True;
end;

procedure TfrmRegenerarStock.FormShow(Sender: TObject);
begin
  cbSucRec.ClearItems;
  cbSucRec.Items.AddObject('<TODOS>', TObject(0));
  with dmGestion do
  begin
    Sucursales.Open;
    Sucursales.First;
    while not Sucursales.Eof do
    begin
      cbSucRec.Items.AddObject(SucursalesNombreSuc.AsString+'  UI: '+DateToStr(SucursalesFechaTInv.AsDateTime), TObject(SucursalesIdSucursal.AsInteger));
      Sucursales.Next;
    end;
  end;
end;

procedure TfrmRegenerarStock.cbSucRecChange(Sender: TObject);
begin
  try
    DesdeD := Integer(cbSucRec.Items.Objects[cbSucRec.ItemIndex]);
  except
    DesdeD := 0;
  end;
end;

procedure TfrmRegenerarStock.btnRecGenInvClick(Sender: TObject);
var
  A: Integer;
begin
  Screen.Cursor := crHourGlass;
  Application.ProcessMessages;
  try
    A := StrToInt(Trim(edtCodArt.Text));
  except
    A := 0;
  end;
  ReCalcular_Stocks_Generar_Inventario(A, 1); // Recalculo y generacion de inventario
  Screen.Cursor := crDefault;
  Application.ProcessMessages;
end;

procedure TfrmRegenerarStock.btnExpRecStkClick(Sender: TObject);
begin
  with dmGestion do
  begin
    IyC_Exp.DataSet := gRecStk.DataSource.DataSet;
    IyC_Exp.Select;
  end;
end;

procedure TfrmRegenerarStock.btnVerRecClick(Sender: TObject);
var
  A: Integer;
begin
  Screen.Cursor := crHourGlass;
  Application.ProcessMessages;
  try
    A := StrToInt(Trim(edtCodArt.Text));
  except
    A := 0;
  end;
  ReCalcular_Stocks_Generar_Inventario(A, 0); // Ver solamente
  Screen.Cursor := crDefault;
  Application.ProcessMessages;
end;

procedure TfrmRegenerarStock.RecStkConDifGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if RecStkConDif.AsBoolean then
    Text := 'Si'
  else
    Text := 'No'
end;

procedure TfrmRegenerarStock.btnSaveNegClick(Sender: TObject);
var
  A: Integer;
begin
  Screen.Cursor := crHourGlass;
  Application.ProcessMessages;
  try
    A := StrToInt(Trim(edtCodArt.Text));
  except
    A := 0;
  end;
  ReCalcular_Stocks_Generar_Inventario(A, 2); // Recalculo y generacion de inventario
  Screen.Cursor := crDefault;
  Application.ProcessMessages;
end;

end.
