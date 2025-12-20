unit uViewFacT;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, Grids, Mask, ExtCtrls, ComCtrls, ToolWin,
  Buttons, ImgList, wwSpeedButton, wwDBNavigator, wwclearpanel, Wwdbigrd, Wwdbgrid,
  wwdbedit, wwdbdatetimepicker, wwdblook, Wwdotdot, Wwdbcomb, Variants,
  wwcheckbox, uTools, Wwdbspin,  MDOCustomDataSet, MDOQuery, RzPanel,
  RzButton;

type
  TfrmViewFacT = class(TForm)
    dsTraspaso: TDataSource;
    qMovStk: TMDODataSet;
    qMovStkIDFACTURA: TIntegerField;
    qMovStkIDSUCURSAL: TIntegerField;
    qMovStkIDPUNTOVENTA: TIntegerField;
    qMovStkTIPOFACTURA: TSmallintField;
    qMovStkIDSTORIGEN: TIntegerField;
    qMovStkIDSTDESTINO: TIntegerField;
    qMovStkEMPLEADO: TIntegerField;
    qMovStkDIAHORA: TDateTimeField;
    qMovStkFECHAF: TDateField;
    qMovStkNROFACTURA: TMDOStringField;
    qMovStkNROREMSUC: TMDOStringField;
    qMovStkCANTARTIC: TSmallintField;
    qMovStkTOTAL: TMDOBCDField;
    qMovStkUSUARIO: TIntegerField;
    qMovStkESTADO: TSmallintField;
    qMovStkTIPOAJ: TSmallintField;
    qMovStkIDSUBDEPO: TIntegerField;
    qMovStkIDSUBDEPD: TIntegerField;
    qMovStkNomEnt: TStringField;
    qMovStkNomUsr: TStringField;
    qMovStkTIPOFACSTR: TMDOStringField;

    dsItemsTR: TDataSource;
    qItmMov: TMDODataSet;
    qItmMovIDFACTURA: TIntegerField;
    qItmMovIDSUCURSAL: TIntegerField;
    qItmMovIDITEM: TSmallintField;
    qItmMovIDSUCURSALO: TIntegerField;
    qItmMovIDSUCURSALD: TIntegerField;
    qItmMovIDARTICULO: TIntegerField;
    qItmMovTALLE: TIntegerField;
    qItmMovTMOV: TIntegerField;
    qItmMovFECHAF: TDateField;
    qItmMovCANTIDAD: TMDOBCDField;
    qItmMovTIPOAJ: TSmallintField;
    qItmMovPRECIOFINAL: TMDOBCDField;
    qItmMovPRECIOTOTAL: TMDOBCDField;
    qItmMovMARCA: TMDOStringField;
    qItmMovDETALLE: TMDOStringField;
    qItmMovCOLOR: TMDOStringField;
    pnlHeader: TRzGroupBox;
    lblNroCpm: TLabel;
    bvlVerMov1: TBevel;
    lblNroFac: TDBText;
    lblResponsable: TLabel;
    edtComprador: TwwDBEdit;
    lblEmpleado: TDBText;
    lblTipoComp: TLabel;
    cbTipoComp: TwwDBLookupCombo;
    lblNroComp: TLabel;
    edtNroFactura: TwwDBEdit;
    lblOrigen: TLabel;
    pnlBody: TRzGroupBox;
    gViewProd: TwwDBGrid;
    lblDestino: TLabel;
    cbOrigen: TwwDBLookupCombo;
    cbDestino: TwwDBLookupCombo;
    lblFecha: TLabel;
    edtFechaF: TwwDBDateTimePicker;
    lblEstado: TLabel;
    lblTAjuste: TLabel;
    cbTipoAj: TwwDBComboBox;
    lblRemSuc: TLabel;
    edtRemSuc: TwwDBEdit;
    cbEstado: TwwDBComboBox;
    gbFoot: TRzGroupBox;
    lblUsuario: TDBText;
    lblDiaHora: TDBText;
    btnBuscarTR: TRzBitBtn;
    btnBorrarRemito: TRzBitBtn;
    btnSalirTR: TRzBitBtn;
    lblTotal: TLabel;
    edtTotal: TwwDBEdit;
    lblSucursal: TLabel;
    cbSucur: TwwDBLookupCombo;
    lblItems: TLabel;
    edtCantArt: TwwDBEdit;
    btnCancTR: TRzBitBtn;
    btnSaveTR: TRzBitBtn;
    btnModTR: TRzBitBtn;
    qMovStkSTATE: TSmallintField;
    qItmMovSTATE: TSmallintField;
    qItmMovIDPUNTOVENTA: TIntegerField;
    cbEnAmbas: TwwDBComboBox;
    lblEn_Ambas: TLabel;
    qMovStkEN_AMBAS: TSmallintField;

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtProvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure edtTotalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gViewProdKeyPress(Sender: TObject; var Key: Char);
    procedure edtTotalKeyPress(Sender: TObject; var Key: Char);
    procedure gViewProdDblClick(Sender: TObject);
    procedure cbOrigenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qMovStkBeforeEdit(DataSet: TDataSet);
    procedure qMovStkBeforePost(DataSet: TDataSet);
    procedure qMovStkCalcFields(DataSet: TDataSet);
    procedure qItmMovTALLEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure qItmMovTALLESetText(Sender: TField; const Text: String);
    procedure qItmMovTIPOAJGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure btnBuscarTRClick(Sender: TObject);
    procedure btnSalirTRClick(Sender: TObject);
    procedure qMovStkAfterOpen(DataSet: TDataSet);
    procedure qMovStkAfterClose(DataSet: TDataSet);
    procedure btnBorrarRemitoClick(Sender: TObject);
    procedure btnModTRClick(Sender: TObject);
    procedure btnCancTRClick(Sender: TObject);
    procedure btnSaveTRClick(Sender: TObject);
    procedure qMovStkAfterScroll(DataSet: TDataSet);
  private
    { private declarations }
    BorrandoComprobante: Boolean;
    CualTipo: SmallInt;
    procedure CargarRegistro;
  public
    { public declarations }
  end;

var
  frmViewFacT: TfrmViewFacT;

  procedure Get_FacS(Cual_Tipo, NFactura, NSucursal, NPunto: Integer);

implementation

uses udmGestion, uBuscaFac, udmSaveFile, uBuscaEmp,
     uClaveMod, uABMArticulos, uConfiguracion, uBeforeDelete;

{$R *.DFM}

procedure Get_FacS(Cual_Tipo, NFactura, NSucursal, NPunto: Integer);
begin
  frmViewFacT := TfrmViewFacT.Create(nil);
  with frmViewFacT do
  begin
    if NFactura > NoEncontrado then
    begin
      qMovStk.Close;
      qMovStk.ParamByName('IdFactura').AsInteger := NFactura;
      qMovStk.ParamByName('IdSucursal').AsInteger := NSucursal;
      qMovStk.ParamByName('IdPuntoVenta').AsInteger := NPunto;
      qMovStk.ParamByName('TipoFac').AsInteger := Cual_Tipo;
      qMovStk.Open;
    end;
    CualTipo := Cual_Tipo;
    if not qMovStk.IsEmpty  then
      ShowModal;
  end;
end;

procedure TfrmViewFacT.FormShow(Sender: TObject);
begin
  Case CualTipo of
    RemitoTraspaso: begin
       btnBorrarRemito.Visible := False;
                    end;//39
    RemitoInventario, //53
    RemitoAjusteSt: begin //46
      lblOrigen.Caption := 'Sucursal';
      lblDestino.Visible := False;
      cbDestino.Visible := False;
      btnBorrarRemito.Visible := True;
    end;
    Descuento_D: begin //52
      lblOrigen.Caption := 'Sucursal';
      lblDestino.Visible := False;
      cbDestino.Visible := False;
      btnBorrarRemito.Visible := True;
      lblEstado.Visible := False;
      cbEstado.Visible := False;
    end;
  end;
  btnSaveTR.Enabled := False;
  btnCancTR.Enabled := False;

  gViewProd.Selected.Clear;
  gViewProd.Selected.Add('IdArticulo'#9'5'#9'Cº'#9'F'#9'Producto');
  gViewProd.Selected.Add('Marca'#9'8'#9'Marca'#9'F'#9'Producto');
  gViewProd.Selected.Add('Detalle'#9'27'#9'Detalle'#9'F'#9'Producto');
  if Control_Talles then
  begin
    gViewProd.Selected.Add('Talle'#9'3'#9'T/M'#9'F'#9'Producto');
    gViewProd.Selected.Add('Color'#9'4'#9'Color'#9'F'#9'Producto');
  end
  else
    gViewProd.Selected.Add('Color'#9'5'#9'Color'#9'F'#9'Producto');
  gViewProd.Selected.Add('Cantidad'#9'6'#9'Cantidad'#9'F'#9'Producto');
  gViewProd.Selected.Add('TipoAj'#9'1'#9'A'#9'F'#9'Producto');
  gViewProd.Selected.Add('PrecioFinal'#9'8'#9'Final'#9'F'#9'Precios');
  gViewProd.Selected.Add('PrecioTotal'#9'9'#9'Total'#9'F'#9'Precios');
  gViewProd.RefreshDisplay;
end;

procedure TfrmViewFacT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qMovStk.Close;
  Action := caFree;
end;

procedure TfrmViewFacT.edtProvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F3 then
  begin
    frmBuscaEmp := TfrmBuscaEmp.Create(Self);
    frmBuscaEmp.Elegido := qMovStkEmpleado.AsInteger;
    if frmBuscaEmp.ShowModal = mrOk then
    begin
      qMovStk.Edit;
      qMovStkEmpleado.AsInteger := frmBuscaEmp.Elegido;
    end;
  end;
  if Key = VK_Escape then
    Close;
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmViewFacT.FormCreate(Sender: TObject);
begin
  BorrandoComprobante := False;
end;

procedure TfrmViewFacT.CargarRegistro;
var
  Actual: Integer;
begin
  FillChar(Factura, SizeOf(TFactura), 0);
  FillChar(ItemsFiscal, SizeOf(TBody_Fiscal), 0);
  with Factura do
  begin
    if qMovStkTipoFactura.AsInteger = Descuento_D then
      TipoFactura := RemitoAjusteSt
    else
      TipoFactura := qMovStkTipoFactura.AsInteger;
    TipoFacStr := cbTipoComp.Text;
    FechaF := qMovStkFechaF.AsDateTime;
    FechaI := 0;
    PuntoVta := 0;
    IdPuntoVenta := 0;
    NroFactura := qMovStkNroFactura.AsString;
    CompRef := Cero;
    IdCompRef := 0;
    Entidad := qMovStkEmpleado.AsInteger;
    NombreEnt := qMovStkNomEnt.AsString;
    TipoIva := 0;
    TipoIvaStr := '';
    TipoDoc := 0;
    TipoDocStr := '';
    NroDocumento := '';
    Direccion := '';
    Localidad := '';
    Provincia := '';
    CodPostal := '';
    Telefono  := '';
    Descuento := 0;
    Neto := 0;
    Exento := 0;
    NoComputables := 0;
    AlicuotaIva1 := 0;
    IvaAlicuota1 := 0;
    Total := qMovStkTotal.AsCurrency;
    Contado := 0;
    Tarjeta := 0;
    CtaCte := 0;
    Credito := 0;
    ChequeTer := 0;
    Usuario := qMovStkUSUARIO.AsInteger;
    NombreUsuario := qMovStkNomUsr.AsString;
  end;

  qItmMov.First;
  Actual := 0;
  while not qItmMov.Eof do
  begin
    Inc(Actual);
    ItemsFiscal[Actual].IdProducto := qItmMovIdArticulo.AsInteger;
    ItemsFiscal[Actual].CodProd := qItmMovIdArticulo.AsString;
    ItemsFiscal[Actual].Marca := qItmMovMarca.AsString;
    ItemsFiscal[Actual].Detalle := qItmMovDetalle.AsString;
    ItemsFiscal[Actual].DescProd := qItmMovMarca.AsString+' '+
                                    qItmMovDetalle.AsString+' '+
                                    qItmMovColor.AsString;
    ItemsFiscal[Actual].ListaStr := '';
    ItemsFiscal[Actual].Color := qItmMovColor.AsString;
    ItemsFiscal[Actual].IdPuntoVenta := 0;
    ItemsFiscal[Actual].Cantidad := qItmMovCantidad.AsFloat;
    ItemsFiscal[Actual].Bonificacion := 0;
    ItemsFiscal[Actual].Descuento := 0;
    ItemsFiscal[Actual].PrecioNetoT := 0;
    ItemsFiscal[Actual].PrecioFinal := qItmMovPrecioFinal.AsCurrency;
    ItemsFiscal[Actual].PrecioTotal := qItmMovPrecioTotal.AsCurrency;
    ItemsFiscal[Actual].Exento := 0;
    ItemsFiscal[Actual].NoComputable := 0;
    ItemsFiscal[Actual].CoefImpInt := 0;
    ItemsFiscal[Actual].MtoIva := 0;
    ItemsFiscal[Actual].IdAlcIva := 0;
    ItemsFiscal[Actual].AlicuotaIva := 0;
    ItemsFiscal[Actual].TIvaEnt := 0;
    ItemsFiscal[Actual].IdAlcIB := 0;
    ItemsFiscal[Actual].IngBto := 0;
    ItemsFiscal[Actual].Servicio := False;
    qItmMov.Next;
  end;
  Factura.CantArtic := Actual;
end;

procedure TfrmViewFacT.edtTotalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmViewFacT.gViewProdKeyPress(Sender: TObject; var Key: Char);
begin
  if (gViewProd.SelectedField.DataType in [ftFloat, ftCurrency]) and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

procedure TfrmViewFacT.edtTotalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmViewFacT.gViewProdDblClick(Sender: TObject);
begin
  frmABMArticulos := TfrmABMArticulos.Create(nil);
  frmABMArticulos.Cual_Art := qItmMovIdArticulo.AsInteger;
  frmABMArticulos.ShowModal;
end;

procedure TfrmViewFacT.cbOrigenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmViewFacT.qMovStkBeforeEdit(DataSet: TDataSet);
begin
  case qMovStkTipoFactura.AsInteger of
    RemitoTraspaso: if not Check_Seg(Nivel_Mod, 'Traspaso', AutorDto) then
      raise EUsuario.Create('No esta habilitado para esta función');
    RemitoAjusteSt: if not Check_Seg(Nivel_Adm, 'Ajuste', AutorDto) then
      raise EUsuario.Create('No esta habilitado para esta función');
    Descuento_D: if not Check_Seg(Nivel_Adm, 'Dev Proveedor', AutorDto) then
      raise EUsuario.Create('No esta habilitado para esta función');
  end;
end;

procedure TfrmViewFacT.qMovStkBeforePost(DataSet: TDataSet);
begin
  qItmMov.First;
  while not qItmMov.Eof do
  begin
    qItmMov.Edit;
    qItmMovIdSucursal.AsInteger := qMovStkIdSucursal.AsInteger;
    qItmMovIdSucursalD.AsInteger := qMovStkIdStDestino.AsInteger;
    qItmMovIdSucursalO.AsInteger := qMovStkIdStOrigen.AsInteger;
    qItmMovTIPOAJ.AsInteger := qMovStkTIPOAJ.AsInteger;
    qItmMovFechaF.AsDateTime := qMovStkFechaF.AsDateTime;
    qItmMov.Post;
    qItmMov.Next;
  end;
end;

procedure TfrmViewFacT.qMovStkCalcFields(DataSet: TDataSet);
var
  q : TMDOQuery;
begin
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.dbGestion;
    q.Transaction := dmGestion.trProc;
    q.SQL.Add('Select Nombre From Empleados');
    q.SQL.Add('Where IdEmpleado = :Entidad ');
    q.ParamByName('Entidad').AsInteger := qMovStkUsuario.AsInteger;
    q.Open;
    if not q.IsEmpty then
      qMovStkNomUsr.AsString := q.FieldByName('Nombre').AsString
    else
      qMovStkNomUsr.AsString := ' ';
  finally
    q.Free;
  end;

  Case qMovStkTipoFactura.AsInteger of
    RemitoAjusteSt,
    RemitoTraspaso: begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := dmGestion.trProc;
        q.SQL.Add('Select Nombre From Empleados');
        q.SQL.Add('Where IdEmpleado = :Entidad ');
        q.ParamByName('Entidad').AsInteger := qMovStkEmpleado.AsInteger;;
        q.Open;
        if not q.IsEmpty then
          qMovStkNomEnt.AsString := q.FieldByName('Nombre').AsString
        else
          qMovStkNomEnt.AsString := ' ';
      finally
        q.Free;
      end;
    end;

    Descuento_D: begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := dmGestion.trProc;
        q.SQL.Add('Select Nombre From Proveedores');
        q.SQL.Add('Where IdProveedor = :Entidad ');
        q.ParamByName('Entidad').AsInteger := qMovStkEmpleado.AsInteger;;
        q.Open;
        if not q.IsEmpty then
          qMovStkNomEnt.AsString := q.FieldByName('Nombre').AsString
        else
          qMovStkNomEnt.AsString := ' ';
      finally
        q.Free;
      end;
    end;
  end;
end;

procedure TfrmViewFacT.qItmMovTALLEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if Control_Talles then
  begin
    if Sender.AsInteger > 0 then
    begin
      try
        Text := GetTextTalle(Sender.AsInteger);
      except
        Text := Sender.AsString;
      end;
    end;
  end;
end;

procedure TfrmViewFacT.qItmMovTALLESetText(Sender: TField; const Text: String);
begin
  if Control_Talles then
  begin
    try
      Sender.Value := SetTextTalle(Text);
    except
      on E: Exception do
      begin
        Application.MessageBox(PChar(E.Message), 'Error cargado talles', MB_ICONERROR);
      end;
    end;
  end;
end;

procedure TfrmViewFacT.qItmMovTIPOAJGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if (qItmMovTipoAj.AsInteger > 0) then
    Text := 'E'
  else
    Text := 'S';
end;

procedure TfrmViewFacT.btnBuscarTRClick(Sender: TObject);
var
  Fac, Suc, Pto: Integer;
begin
  if FiltrarRemitos(CualTipo, Fac, Suc, Pto) then
  begin
    qMovStk.Close;
    qMovStk.ParamByName('IdFactura').AsInteger := Fac;
    qMovStk.ParamByName('IdSucursal').AsInteger := Suc;
    qMovStk.ParamByName('IdPuntoVenta').AsInteger := Pto;
    qMovStk.ParamByName('TipoFac').AsInteger := CualTipo;
    qMovStk.Open;
  end;
end;

procedure TfrmViewFacT.btnCancTRClick(Sender: TObject);
begin
  if qMovStk.State in dsEditModes then
    qMovStk.Cancel;
end;

procedure TfrmViewFacT.btnModTRClick(Sender: TObject);
begin
  if not qMovStk.IsEmpty then
  begin
    btnSaveTR.Enabled := True;
    btnCancTR.Enabled := True;
    qMovStk.Edit;
  end;
end;

procedure TfrmViewFacT.btnSalirTRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmViewFacT.btnSaveTRClick(Sender: TObject);
var
  Fac, Suc, Pto, Tip: Integer;
begin
  try
    Fac := qMovStkIDFACTURA.AsInteger;
    Suc := qMovStkIDSUCURSAL.AsInteger;
    Pto := qMovStkIDPUNTOVENTA.AsInteger;
    Tip := qMovStkTIPOFACTURA.AsInteger;
    if qMovStk.State in dsEditModes then
    begin
      qMovStk.Post;
      try
        if not qMovStk.Transaction.InTransaction  then
          qMovStk.Transaction.StartTransaction;
        qMovStk.Transaction.Commit;
      except
        on E:Exception do
        begin
          qMovStk.Transaction.RollBack;
          raise EUsuario.Create('Error al grabar comprobante '+E.Message);
        end;
      end;
    end;
  finally
    btnSaveTR.Enabled := False;
    btnCancTR.Enabled := False;
    qMovStk.ParamByName('IdFactura').AsInteger := Fac;
    qMovStk.ParamByName('IdSucursal').AsInteger := Suc;
    qMovStk.ParamByName('IdPuntoVenta').AsInteger := Pto;
    qMovStk.ParamByName('TipoFac').AsInteger := Tip;
    qMovStk.Open;
  end;
end;

procedure TfrmViewFacT.qMovStkAfterOpen(DataSet: TDataSet);
begin
  qItmMov.Open;
end;

procedure TfrmViewFacT.qMovStkAfterScroll(DataSet: TDataSet);
begin
  btnBorrarRemito.Visible := (qMovStkTipoFactura.AsInteger = Descuento_D);
  lblEn_Ambas.Visible := (qMovStkTipoFactura.AsInteger = RemitoTraspaso);
  cbEnAmbas.Visible := (qMovStkTipoFactura.AsInteger = RemitoTraspaso);
end;

procedure TfrmViewFacT.qMovStkAfterClose(DataSet: TDataSet);
begin
  qItmMov.Close;
end;

procedure TfrmViewFacT.btnBorrarRemitoClick(Sender: TObject);
var
  q: TMDOQuery;
  B: Integer;
begin
  if qMovStkTipoFactura.AsInteger = Descuento_D then
  begin
    if not Check_Seg(Nivel_Adm, 'DevProv', AutorDto) then
      raise EUsuario.Create('No esta habilitado para esta función');
    B := AntesDeBorrar;
    if not qMovStk.Transaction.InTransaction  then
      qMovStk.Transaction.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := qMovStk.Database;
      q.Transaction := qMovStk.Transaction;
      q.SQL.Add('UpDate CCProv ');
      q.SQL.Add('Set State = :M ');
      q.SQL.Add('Where Entidad = :E And ');
      q.SQL.Add('      TComp = :T And ');
      q.SQL.Add('      IdComprobante = :I And ');
      q.SQL.Add('      IdSucursal = :S And ');
      q.SQL.Add('      IdPuntoVenta = :P ');
      q.ParamByName('M').AsInteger := B;
      q.ParamByName('E').AsInteger := qMovStkEmpleado.AsInteger;
      q.ParamByName('T').AsInteger := qMovStkTIPOFACTURA.AsInteger;
      q.ParamByName('I').AsInteger := qMovStkIDFACTURA.AsInteger;
      q.ParamByName('S').AsInteger := qMovStkIDSUCURSAL.AsInteger;
      q.ParamByName('P').AsInteger := qMovStkIDPUNTOVENTA.AsInteger;
      q.ExecSQL;
    finally
      q.Free;
    end;

    qItmMov.First;
    while not qItmMov.Eof do
    begin
      Update_Parts(qItmMovIDARTICULO.AsInteger, qItmMovIDSUCURSALO.AsInteger,
                   qItmMovCANTIDAD.AsFloat, qItmMovTALLE.AsInteger,
                   Descuento_D, qMovStkTIPOAJ.AsInteger, False, False,
                   qItmMov.DataBase, qItmMov.Transaction);
      qItmMov.Edit;
      qItmMovSTATE.AsInteger := B;
      qItmMov.Post;
      qItmMov.Next;
    end;
    qMovStk.Edit;
    qMovStkSTATE.AsInteger := B;
    qMovStk.Post;
    try
      qMovStk.Transaction.Commit;
    except
      on E:Exception do
      begin
        qMovStk.Transaction.RollBack;
        raise EUsuario.Create('Error al borrar Devolución de Proveedor '+E.Message);
      end;
    end;
  end;

  if qMovStkTipoFactura.AsInteger = RemitoAjusteSt then
  begin
    if not Check_Seg(Nivel_Adm, 'Ajuste Stk', AutorDto) then
      raise EUsuario.Create('No esta habilitado para esta función');
    B := AntesDeBorrar;
    if not qMovStk.Transaction.InTransaction  then
      qMovStk.Transaction.StartTransaction;

    qItmMov.First;
    while not qItmMov.Eof do
    begin
      Update_Parts(qItmMovIDARTICULO.AsInteger, qItmMovIDSUCURSALO.AsInteger,
                   qItmMovCANTIDAD.AsFloat, qItmMovTALLE.AsInteger,
                   RemitoAjusteSt, qMovStkTIPOAJ.AsInteger, False, False,
                   qItmMov.DataBase, qItmMov.Transaction);
      qItmMov.Edit;
      qItmMovSTATE.AsInteger := B;
      qItmMov.Post;
      qItmMov.Next;
    end;
    qMovStk.Edit;
    qMovStkSTATE.AsInteger := B;
    qMovStk.Post;
    try
      qMovStk.Transaction.Commit;
    except
      on E:Exception do
      begin
        qMovStk.Transaction.RollBack;
        raise EUsuario.Create('Error al borrar Ajuste de Stock '+E.Message);
      end;
    end;
  end;

  Close;
end;

end.
