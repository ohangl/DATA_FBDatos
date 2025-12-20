unit uMovStk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, StdCtrls,
  Buttons, Mask, wwdbedit, wwdblook, Wwdotdot, Wwdbcomb,
  ppCtrls, ppBands, ppReport, ppPrnabl, ppClass, ppStrtch,
  ppSubRpt, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  RzButton, RzPanel, wwdbdatetimepicker, MDOQuery, MDOCustomDataSet,
  MDOTable, DBClient, RzEdit, RzCmboBx;

type
  TfrmMovStk = class(TForm)
    dsMovStk: TDataSource;
    MovStk: TClientDataSet;
    MovStkIdFactura: TIntegerField;
    MovStkIdSucursal: TIntegerField;
    MovStkIdPuntoVenta: TIntegerField;
    MovStkFecha: TDateField;
    MovStkComprobante: TStringField;
    MovStkTComp: TSmallintField;
    MovStkDetComp: TStringField;
    MovStkDepSal: TStringField;
    MovStkCantSal: TMDOBCDField;
    MovStkDepEnt: TStringField;
    MovStkCantEnt: TMDOBCDField;
    MovStkSaldo: TMDOBCDField;
    MovStkTOp: TSmallintField;
    MovStkSucSal: TIntegerField;
    MovStkSucEnt: TIntegerField;

    qMovArt: TMDOQuery;
    qMovArtIDFACTURA: TIntegerField;
    qMovArtIDSUCURSAL: TIntegerField;
    qMovArtIDPUNTOVENTA: TIntegerField;
    qMovArtFECHA: TDateField;
    qMovArtTIPOFACTURA: TSmallintField;
    qMovArtCOMPROBANTE: TMDOStringField;
    qMovArtSUCSAL: TIntegerField;
    qMovArtSUCENT: TIntegerField;
    qMovArtTIPOOP: TSmallintField;
    qMovArtDEPENT: TMDOStringField;
    qMovArtDEPSAL: TMDOStringField;
    qMovArtDESCCORTA: TMDOStringField;

    pnlMovStk: TRzPanel;
    lblProd: TLabel;
    lblDetProd: TLabel;
    lblSucur: TLabel;
    btnCalcular: TRzBitBtn;
    btnSalir: TRzBitBtn;
    btnExpotar: TRzBitBtn;
    btnImprimir: TRzBitBtn;
    gMovStk: TwwDBGrid;
    pnlFootMovStk: TRzPanel;

    rpMovStock: TppReport;
    dbpMovStk: TppDBPipeline;
    hbMovStk: TppHeaderBand;
    dbMovStk: TppDetailBand;
    btnVerAll: TRzBitBtn;
    lblEstado: TLabel;
    lblFecha: TppDBText;
    lblTFact: TppDBText;
    lblNroComp: TppDBText;
    lblCantEnt: TppDBText;
    lblSaldo: TppDBText;
    lblSucEnt: TppDBText;
    lblSucSal: TppDBText;
    lblCantSal: TppDBText;
    lblTitMovStk: TppLabel;
    lblProducto: TppLabel;
    lblComp: TppLabel;
    lblSalidas: TppLabel;
    lblEntradas: TppLabel;
    lblSdoStk: TppLabel;
    lblTalle: TppDBText;
    lblTOp: TppDBText;
    lnMovStk: TppLine;
    shpMovStk: TppShape;
    lblFecDesde: TLabel;
    cbSucursales: TRzComboBox;
    edtProducto: TRzEdit;
    edtFecha: TRzDateTimeEdit;
    qMovArtSALIDAS: TIntegerField;
    qMovArtENTRADAS: TIntegerField;
    qMovArtCANTIDAD: TIntegerField;
    qMovArtSDOSTK: TIntegerField;
    qMovArtA_INV: TIntegerField;
    qMovArtENREMITO: TSmallintField;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gMovStkDblClick(Sender: TObject);
    procedure btnExpotarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure gMovStkUpdateFooter(Sender: TObject);
    procedure gMovStkCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure MovStkTOpGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure lblTOpGetText(Sender: TObject; var Text: String);
    procedure edtProductoChange(Sender: TObject);
    procedure edtProductoEnter(Sender: TObject);
    procedure edtProductoExit(Sender: TObject);
    procedure edtProductoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbSucursalesChange(Sender: TObject);
    procedure lblSucurDblClick(Sender: TObject);
    procedure btnVerAllClick(Sender: TObject);
  private
    { Private declarations }
    ModFec: Boolean;
    Salidas,
    Entradas,
    SdoStk,
    CantOP: Integer;
    NameSc: String;
    Id_Stock, IdItem: Integer;
    procedure Calcular_MovStk(Id_Stk, Id_Prd: Integer; Desde: TDate);
    function GetStk_ToDate(Id_Stk, Id_Prd: Integer; Desde, Hasta: TDate): Integer;
  public
    { Public declarations }
  end;

var
  frmMovStk: TfrmMovStk;

  procedure Get_MStk(IdArt, IdStock: Integer);
  function Get_StkF(IdArt, IdStock: Integer; Desde, Hasta: TDate): Integer;

implementation

uses udmGestion, udmSaveFile, uTools, uViewFacC, uViewFacV, uViewFacT, DateUtils,
  uABMArticulos, uSearchProd, uClaveMod;

{$R *.dfm}

procedure Get_MStk(IdArt, IdStock: Integer);
begin
  frmMovStk := TfrmMovStk.Create(nil);
  with frmMovStk do
  begin
    IdItem := IdArt;
    Id_Stock := IdStock;
    ShowModal;
  end;
end;

function Get_StkF(IdArt, IdStock: Integer; Desde, Hasta: TDate): Integer;
begin
  try
    Result := 0;
    frmMovStk := TfrmMovStk.Create(nil);
    with frmMovStk do
    begin
      Id_Stock := IdStock;
      IdItem := IdArt;
      Result := GetStk_ToDate(Id_Stock, IdItem, Desde, Hasta);
      Close;
    end;
  except
    Result := 0;
  end;
end;

procedure TfrmMovStk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmMovStk.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMovStk.btnVerAllClick(Sender: TObject);
begin
  edtFecha.Date := Ano_2000;
  Calcular_MovStk(Id_Stock, IdItem, Ano_2000);
end;

procedure TfrmMovStk.FormCreate(Sender: TObject);
begin
  Id_Stock := 0;
  NameSc := Vacio;
  cbSucursales.Items.Clear;
  with dmGestion do
  begin
    cbSucursales.Items.AddObject('<TODAS>', TObject(0));
    Sucursales.First;
    while not Sucursales.Eof do
    begin
      cbSucursales.Items.AddObject(SucursalesNombreSuc.AsString, TObject(SucursalesIdSucursal.AsInteger));
      Sucursales.Next;
    end;
  end;
  lblEstado.Caption := Vacio;
  edtProducto.Text := Vacio;
  edtProducto.Enabled := False;
  lblDetProd.Caption := Vacio;
  lblDetProd.Enabled := False;
  pnlFootMovStk.Caption := Vacio;
  Application.ProcessMessages;
  edtFecha.Date := Date;
end;

procedure TfrmMovStk.FormShow(Sender: TObject);
begin
  Salidas := 0;
  Entradas := 0;
  SdoStk := 0;
  CantOP := 0;
  if IdItem > 0 then
  begin
    if GetDatosArt(IdItem, Vacio, Datos_Art) then
    begin
      edtProducto.Text := IntToStr(Datos_Art.IdArticulo);
      lblDetProd.Caption := Datos_Art.DetProd;
      Application.ProcessMessages;
    end;
    if Id_Stock > 0 then
    begin
      if dmGestion.Sucursales.Locate(dmGestion.SucursalesIdSucursal.FieldName, Id_Stock, []) then
      begin
        edtFecha.Date := dmGestion.SucursalesFechaTInv.AsDateTime;
        NameSc := dmGestion.SucursalesNombreSuc.AsString;
        Calcular_MovStk(Id_Stock, IdItem, dmGestion.SucursalesFechaTInv.AsDateTime)
      end;
    end
    else begin
      NameSc := '<TODAS>';
      cbSucursales.ItemIndex := 0;
      edtFecha.Date := Ano_2000;
      Calcular_MovStk(Id_Stock, IdItem, Ano_2000)
    end;
  end
  else begin
    lblProd.Enabled := True;
    lblDetProd.Enabled := True;
    edtProducto.Enabled := True;
    cbSucursales.SetFocus;
  end;
  cbSucursales.ItemIndex := cbSucursales.Items.IndexOf(NameSc);
end;

procedure TfrmMovStk.cbSucursalesChange(Sender: TObject);
begin
  Id_Stock := Integer(cbSucursales.Items.Objects[cbSucursales.ItemIndex]);
end;

procedure TfrmMovStk.edtProductoChange(Sender: TObject);
begin
  if Trim(edtProducto.Text) > Cero then
  begin
    try
      IdItem := StrToInt(edtProducto.Text);
    except
      IdItem := 0;
      edtProducto.SetFocus;
      raise EUSuario.Create('Producto invalido');
    end;
  end;
end;

procedure TfrmMovStk.edtProductoEnter(Sender: TObject);
begin
  edtProducto.SelectAll;
end;

procedure TfrmMovStk.edtProductoExit(Sender: TObject);
begin
  if Trim(edtProducto.Text) > Cero then
  begin
    try
      IdItem := StrToInt(edtProducto.Text);
    except
      IdItem := 0;
      edtProducto.SetFocus;
      raise EUSuario.Create('Producto invalido');
    end;
  end;
  if GetDatosArt(IdItem, Vacio, Datos_Art) then
  begin
    edtProducto.Text := IntToStr(Datos_Art.IdArticulo);
    lblDetProd.Caption := Datos_Art.DetProd;
    Application.ProcessMessages;
    Calcular_MovStk(Id_Stock, IdItem, edtFecha.Date);
  end;
end;

procedure TfrmMovStk.edtProductoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and
     (Key = VK_F3) then
  begin
    Elegido := Search_Prod(edtProducto.Text, Tarea);
    edtProducto.Text := IntToStr(Elegido.IdArticulo);
  end
end;

procedure TfrmMovStk.Calcular_MovStk(Id_Stk, Id_Prd: Integer; Desde: TDate);
var
 va_inv: Boolean;
begin
  CantOP := 0;
  Salidas  := 0;
  Entradas := 0;
  SdoStk := 0;
  pnlFootMovStk.Caption := Vacio;
  va_inv := False;
  try
    Screen.Cursor := crHourGlass;
    if Id_Stk = 0 then   // Todas las sucursales sin el inventarios
    begin
      va_inv := False;
      qMovArt.Close;
      qMovArt.ParamByName('IdArt').AsInteger := Id_Prd;
      qMovArt.ParamByName('IdSuc').AsInteger := Id_Stk;
      qMovArt.ParamByName('Desde').AsDate := Ano_2000;
      qMovArt.ParamByName('Hasta').AsDate := Tomorrow;
      qMovArt.ParamByName('I').AsInteger := 0;
      qMovArt.Open;
    end
    else begin
      if dmGestion.Sucursales.Locate(dmGestion.SucursalesIdSucursal.FieldName, Id_Stock, []) then
      begin
        if dmGestion.SucursalesFechaTInv.AsDateTime > Desde then
        begin
          va_inv := False;
          qMovArt.Close;
          qMovArt.ParamByName('IdArt').AsInteger := Id_Prd;
          qMovArt.ParamByName('IdSuc').AsInteger := Id_Stk;
          qMovArt.ParamByName('Desde').AsDate := Desde;
          qMovArt.ParamByName('Hasta').AsDate := Tomorrow;
          qMovArt.ParamByName('I').AsInteger := 0;
          qMovArt.Open;
        end
        else begin
          va_inv := True;
          qMovArt.Close;
          qMovArt.ParamByName('IdArt').AsInteger := Id_Prd;
          qMovArt.ParamByName('IdSuc').AsInteger := Id_Stk;
          qMovArt.ParamByName('Desde').AsDate := Desde;
          qMovArt.ParamByName('Hasta').AsDate := Tomorrow;
          qMovArt.ParamByName('I').AsInteger := 1;
          qMovArt.Open;
        end;
      end;
    end;

    if not qMovArt.IsEmpty then
    begin
      try
        if MovStk.Active then
          MovStk.EmptyDataSet
        else
          MovStk.CreateDataSet;
        lblEstado.Caption := 'Calculando...';
        Application.ProcessMessages;

        qMovArt.First;
        while not qMovArt.Eof do
        begin
          MovStk.Append;
          MovStkTOp.AsInteger := qMovArtTIPOOP.AsInteger;
          MovStkIdFactura.AsInteger := qMovArtIdFactura.AsInteger;
          MovStkIdSucursal.AsInteger := qMovArtIdSucursal.AsInteger;
          MovStkIdPuntoVenta.AsInteger := qMovArtIDPUNTOVENTA.AsInteger;
          Case qMovArtTIPOOP.AsInteger of
            0: begin // Inventario
                  if va_inv then
                  begin
                    MovStkFecha.AsDateTime := dmGestion.SucursalesFechaTInv.AsDateTime;
                    MovStkDetComp.AsString := 'Inv';
                    MovStkCantEnt.AsFloat := ABS(qMovArtA_INV.AsInteger);
                    MovStkCantSal.AsFloat := 0;
                  end;
               end;
            1: begin //Ventas
                 if qMovArtTIPOFACTURA.AsInteger in [CreA, CreB] then
                 begin
                   MovStkCantEnt.AsFloat := ABS(qMovArtCantidad.AsFloat);
                   MovStkCantSal.AsFloat := 0;
                 end
                 else begin
                   MovStkCantSal.AsFloat := ABS(qMovArtCantidad.AsFloat);
                   MovStkCantEnt.AsFloat := 0
                 end;
               end;
            2: begin //Compras
                 if qMovArtTIPOFACTURA.AsInteger in [CreA, CreB] then
                 begin
                   MovStkCantEnt.AsFloat := 0;
                   MovStkCantSal.AsFloat := ABS(qMovArtCantidad.AsFloat)
                 end
                 else begin
                   MovStkCantEnt.AsFloat := ABS(qMovArtCantidad.AsFloat);
                   MovStkCantSal.AsFloat := 0
                 end;
               end;
            3: begin //Remito Traspasos 39
                 if Id_Stk > 0 then
                 begin
                   if Id_Stk = qMovArtSucEnt.AsInteger then
                   begin
                     MovStkCantEnt.AsFloat := ABS(qMovArtCantidad.AsFloat);
                     MovStkCantSal.AsFloat := 0;
                   end
                   else begin
                     MovStkCantEnt.AsFloat := 0;
                     MovStkCantSal.AsFloat := ABS(qMovArtCantidad.AsFloat);
                   end;
                 end
                 else begin
                   MovStkCantEnt.AsFloat := 0;
                   MovStkCantSal.AsFloat := 0;
                 end;
               end;
            4: begin  // Ajt Stk  Entrada
                 MovStkCantSal.AsFloat := 0;
                 MovStkCantEnt.AsFloat := ABS(qMovArtCantidad.AsFloat);
               end;
            5: begin  // Ajt Stk  Salida
                 MovStkCantSal.AsFloat := ABS(qMovArtCantidad.AsFloat);
                 MovStkCantEnt.AsFloat := 0;
               end;
            6: begin // Ajustes de Inventario
                 if qMovArtCantidad.AsFloat > 0 then
                 begin
                   MovStkCantEnt.AsFloat := ABS(qMovArtCantidad.AsFloat);
                   MovStkCantSal.AsFloat := 0;
                 end
                 else begin
                   MovStkCantEnt.AsFloat := 0;
                   MovStkCantSal.AsFloat := ABS(qMovArtCantidad.AsFloat);
                 end;
               end;
            8: begin  // Ajt Stk  Salida Dev a Proveedor
                 MovStkCantSal.AsFloat := ABS(qMovArtCantidad.AsFloat);
                 MovStkCantEnt.AsFloat := 0;
               end;
          end;
          MovStkFecha.AsDateTime := qMovArtFecha.AsDateTime;
          MovStkDetComp.AsString := qMovArtDESCCORTA.AsString;
          MovStkComprobante.AsString := qMovArtCOMPROBANTE.AsString;
          MovStkDepEnt.AsString  := qMovArtDepEnt.AsString;
          MovStkSucEnt.AsInteger := qMovArtSucEnt.AsInteger;
          MovStkDepSal.AsString  := qMovArtDepSal.AsString;
          MovStkSucSal.AsInteger := qMovArtSucSal.AsInteger;
          MovStkTComp.AsInteger  := qMovArtTIPOFACTURA.AsInteger;
          MovStk.Post;
          qMovArt.Next;
        end;
      finally
        try
          MovStk.IndexName := 'iOrden';
        except
          MovStk.IndexFieldNames := MovStkFecha.FieldName+';'+MovStkTComp.FieldName+';'+MovStkComprobante.FieldName;
        end;
        MovStk.First;
        Salidas  := 0;
        Entradas := 0;
        SdoStk := 0;
        CantOP := MovStk.RecordCount;
        lblEstado.Caption := 'Calculando saldos';
        while not MovStk.Eof do
        begin
          MovStk.Edit;
          SdoStk := SdoStk + (MovStkCantEnt.AsInteger - MovStkCantSal.AsInteger);
          Salidas := Salidas + MovStkCantSal.AsInteger;
          Entradas := Entradas + MovStkCantEnt.AsInteger;
          MovStkSaldo.AsFloat := SdoStk;
          MovStk.Post;
          MovStk.Next;
        end;
      end;
    end;
  finally
    lblEstado.Caption := Format('Cantidad de ºOp: %d ',[CantOP]);
    Screen.Cursor := crDefault;
    gMovStk.ColumnByName('Saldo').FooterValue := Format('%9d',[SdoStk]);
    gMovStk.ColumnByName('CantSal').FooterValue := Format('%9d',[Salidas]);
    gMovStk.ColumnByName('CantEnt').FooterValue := Format('%9d',[Entradas]);
    Application.ProcessMessages;
  end;
end;

function TfrmMovStk.GetStk_ToDate(Id_Stk, Id_Prd: Integer; Desde, Hasta: TDate): Integer;
var
  va_inv: SmallInt;
begin
  CantOP := 0;
  Salidas  := 0;
  Entradas := 0;
  SdoStk := 0;
  va_inv := 0;
  try
    Result := 0;
    if Id_Stk > 0 then   // Todas las sucursales sin el inventarios
    begin
      if dmGestion.Sucursales.Locate(dmGestion.SucursalesIdSucursal.FieldName, Id_Stock, []) then
      begin
        if dmGestion.SucursalesFechaTInv.AsDateTime > Desde then
          va_inv := 0
        else
          va_inv := 1;
      end;

      qMovArt.Close;
      qMovArt.ParamByName('IdArt').AsInteger := Id_Prd;
      qMovArt.ParamByName('IdSuc').AsInteger := Id_Stk;
      qMovArt.ParamByName('Desde').AsDate := Desde;
      qMovArt.ParamByName('Hasta').AsDate := Hasta;
      qMovArt.ParamByName('I').AsInteger := Va_Inv;
      qMovArt.Open;

      if not qMovArt.IsEmpty then
      begin
        try
          if MovStk.Active then
            MovStk.EmptyDataSet
          else
            MovStk.CreateDataSet;
          qMovArt.First;
          while not qMovArt.Eof do
          begin
            MovStk.Append;
            MovStkTOp.AsInteger := qMovArtTIPOOP.AsInteger;
            MovStkIdFactura.AsInteger := qMovArtIdFactura.AsInteger;
            MovStkIdSucursal.AsInteger := qMovArtIdSucursal.AsInteger;
            MovStkIdPuntoVenta.AsInteger := qMovArtIDPUNTOVENTA.AsInteger;
            Case qMovArtTIPOOP.AsInteger of
              0: begin // Inventario
                    if va_inv = 1 then
                    begin
                      MovStkFecha.AsDateTime := dmGestion.SucursalesFechaTInv.AsDateTime;
                      MovStkDetComp.AsString := 'Inv';
                      MovStkCantEnt.AsFloat := ABS(qMovArtA_INV.AsInteger);
                      MovStkCantSal.AsFloat := 0;
                    end;
                 end;
              1: begin //Ventas
                   if qMovArtTIPOFACTURA.AsInteger in [CreA, CreB] then
                   begin
                     MovStkCantEnt.AsFloat := ABS(qMovArtCantidad.AsFloat);
                     MovStkCantSal.AsFloat := 0;
                   end
                   else begin
                     MovStkCantSal.AsFloat := ABS(qMovArtCantidad.AsFloat);
                     MovStkCantEnt.AsFloat := 0
                   end;
                 end;
              2: begin //Compras
                   if qMovArtTIPOFACTURA.AsInteger in [CreA, CreB] then
                   begin
                     MovStkCantEnt.AsFloat := 0;
                     MovStkCantSal.AsFloat := ABS(qMovArtCantidad.AsFloat)
                   end
                   else begin
                     MovStkCantEnt.AsFloat := ABS(qMovArtCantidad.AsFloat);
                     MovStkCantSal.AsFloat := 0
                   end;
                 end;
              3: begin //Remito Traspasos 39
                   if Id_Stk > 0 then
                   begin
                     if Id_Stk = qMovArtSucEnt.AsInteger then
                     begin
                       MovStkCantEnt.AsFloat := ABS(qMovArtCantidad.AsFloat);
                       MovStkCantSal.AsFloat := 0;
                     end
                     else begin
                       MovStkCantEnt.AsFloat := 0;
                       MovStkCantSal.AsFloat := ABS(qMovArtCantidad.AsFloat);
                     end;
                   end
                   else begin
                     MovStkCantEnt.AsFloat := 0;
                     MovStkCantSal.AsFloat := 0;
                   end;
                 end;
              4: begin  // Ajt Stk Entrada
                   MovStkCantSal.AsFloat := 0;
                   MovStkCantEnt.AsFloat := ABS(qMovArtCantidad.AsFloat);
                 end;
              5: begin  // Ajt Stk Salida
                   MovStkCantSal.AsFloat := ABS(qMovArtCantidad.AsFloat);
                   MovStkCantEnt.AsFloat := 0;
                 end;
              (*
              6: begin // Ajustes de Inventario
                   if qMovArtCantidad.AsFloat > 0 then
                   begin
                     MovStkCantEnt.AsFloat := ABS(qMovArtCantidad.AsFloat);
                     MovStkCantSal.AsFloat := 0;
                   end
                   else begin
                     MovStkCantEnt.AsFloat := 0;
                     MovStkCantSal.AsFloat := ABS(qMovArtCantidad.AsFloat);
                   end;
                 end;
              *)
              8: begin  // Ajt Stk  Salida Dev a Proveedor
                   MovStkCantSal.AsFloat := ABS(qMovArtCantidad.AsFloat);
                   MovStkCantEnt.AsFloat := 0;
                 end;
            end;
            MovStkFecha.AsDateTime := qMovArtFecha.AsDateTime;
            MovStkDetComp.AsString := qMovArtDESCCORTA.AsString;
            MovStkComprobante.AsString := qMovArtCOMPROBANTE.AsString;
            MovStkDepEnt.AsString  := qMovArtDepEnt.AsString;
            MovStkSucEnt.AsInteger := qMovArtSucEnt.AsInteger;
            MovStkDepSal.AsString  := qMovArtDepSal.AsString;
            MovStkSucSal.AsInteger := qMovArtSucSal.AsInteger;
            MovStkTComp.AsInteger  := qMovArtTIPOFACTURA.AsInteger;
            MovStk.Post;
            qMovArt.Next;
          end;
        finally
          try
            MovStk.IndexName := 'iFecha';
          except

          end;
          MovStk.First;
          Salidas  := 0;
          Entradas := 0;
          SdoStk := 0;
          CantOP := MovStk.RecordCount;
          while not MovStk.Eof do
          begin
            MovStk.Edit;
            SdoStk := SdoStk +
                     (MovStkCantEnt.AsInteger - MovStkCantSal.AsInteger);
            Salidas := Salidas + MovStkCantSal.AsInteger;
            Entradas := Entradas + MovStkCantEnt.AsInteger;
            MovStkSaldo.AsFloat := SdoStk;
            MovStk.Post;
            MovStk.Next;
          end;
        end;
      end;
    end;
  finally
    if not MovStk.IsEmpty then
      Result := SdoStk
    else
      Result := 0;
  end;
end;

procedure TfrmMovStk.btnExpotarClick(Sender: TObject);
begin
  MovStk.First;
  with dmGestion do
  begin
    IyC_Exp.DataSet := MovStk;
    IyC_Exp.Select;
  end;
end;

procedure TfrmMovStk.btnImprimirClick(Sender: TObject);
begin
  try
    MovStk.DisableControls;
    lblTitMovStk.Caption := Format('Movimiento de Stock desde %s Sucursal %s', [DateToStr(edtFecha.Date), cbSucursales.Text]);
    lblProducto.Caption := lblDetProd.Caption;
    rpMovStock.Print;
  finally
    MovStk.EnableControls;
  end;
end;

procedure TfrmMovStk.btnCalcularClick(Sender: TObject);
begin
  Calcular_MovStk(Id_Stock, IdItem, edtFecha.Date);
end;

procedure TfrmMovStk.gMovStkDblClick(Sender: TObject);
begin
  Case MovStkTOp.AsInteger of
    1: Get_FacV(MovStkIdFactura.AsInteger, MovStkIdSucursal.AsInteger, MovStkIdPuntoVenta.AsInteger);
    2: Get_FacC(MovStkIdFactura.AsInteger, MovStkIdSucursal.AsInteger, MovStkIdPuntoVenta.AsInteger);
    0,
    3,
    4,
    5,
    8: Get_FacS(MovStkTComp.AsInteger, MovStkIdFactura.AsInteger,
                MovStkIdSucursal.AsInteger, MovStkIdPuntoVenta.AsInteger);
  end;
end;

procedure TfrmMovStk.gMovStkUpdateFooter(Sender: TObject);
begin
  gMovStk.ColumnByName('CantSal').FooterValue := Format('%9d',[Salidas]);
  gMovStk.ColumnByName('CantEnt').FooterValue := Format('%9d',[Entradas]);
  gMovStk.ColumnByName('Saldo').FooterValue   := Format('%9d',[SdoStk]);
end;

procedure TfrmMovStk.gMovStkCalcCellColors(Sender: TObject; Field: TField;
           State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if not Highlight then
  begin
    Case MovStkTOp.AsInteger of
      0: ABrush.Color := clWhite;
      1: ABrush.Color := clCream;
      2: ABrush.Color := clSkyBlue;
      3: ABrush.Color := $00CEFFFF;
      4: ABrush.Color := $00FFFFCC;
      5: ABrush.Color := $00F0F4F4;
      6: ABrush.Color := $00D7FEBA;
      8: ABrush.Color := $00DFE3E6;
    end;
  end;
end;

procedure TfrmMovStk.MovStkTOpGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Case MovStkTOp.AsInteger of
    0: Text := 'Inv';
    1: Text := 'Vta';
    2: Text := 'Cmp';
    3: Text := 'Trf';
    4: Text := 'AjE';
    5: Text := 'AjS';
    6: Text := 'Err';
    8: Text := 'DvP';
  end;
end;

procedure TfrmMovStk.lblSucurDblClick(Sender: TObject);
var
  q: TMDOQuery;
begin
  if not Check_Seg(Nivel_Adm, 'Modificar Stk', AutorDto) then
    raise EUsuario.Create('No esta habilitado.');
  if Tarea <= Nivel_Adm then
  begin
    if (Id_Stock > 0) and
       (IdItem > 0) then
    begin
      if Application.MessageBox('¿Esta seguro?', 'Stk', MB_ICONQUESTION + MB_YESNO) = ID_YES then
      begin
        try
          if not qMovArt.Transaction.InTransaction then
            qMovArt.Transaction.StartTransaction;
          try
            q := TMDOQuery.Create(nil);
            q.Database := qMovArt.Database;
            q.Transaction := qMovArt.Transaction;
            q.SQL.Add('UpDate StockArt');
            q.SQL.Add('   Set Ingresos = :I, ');
            q.SQL.Add('       Egresos = :E, ');
            q.SQL.Add('       Actual = :A, ');
            q.SQL.Add('       FechaControl = :F ');
            q.SQL.Add('Where IdArticulo = :P And ');
            q.SQL.Add('      IdStock = :S ');
            q.ParamByName('P').AsInteger := IdItem;
            q.ParamByName('S').AsInteger := Id_Stock;
            q.ParamByName('I').AsInteger := Abs(Entradas);
            q.ParamByName('E').AsInteger := Abs(Salidas);
            q.ParamByName('A').AsInteger := Abs(Entradas) - Abs(Salidas);
            q.ParamByName('F').AsDate := Date;
            q.ExecSQL;
          finally
            q.Free;
          end;
          qMovArt.Transaction.Commit;
          Calcular_MovStk(Id_Stock, IdItem, edtFecha.Date);
        except
          on E:Exception do
          begin
            qMovArt.Transaction.Rollback;
            raise EUsuario.Create(E.Message);
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmMovStk.lblTOpGetText(Sender: TObject; var Text: String);
begin
  Case MovStkTOp.AsInteger of
    0: Text := 'Inv';
    1: Text := 'Vta';
    2: Text := 'Cmp';
    3: Text := 'Trf';
    4: Text := 'AjE';
    5: Text := 'AjS';
    6: Text := 'Err';
    8: Text := 'DvP';
  end;
end;

end.
