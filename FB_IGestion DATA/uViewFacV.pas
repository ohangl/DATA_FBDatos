unit uViewFacV;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, Grids, Mask, ExtCtrls, Buttons, wwSpeedButton,
  wwDBNavigator, wwclearpanel, ImgList, Wwdbigrd, Wwdbgrid,  Variants, wwdbedit,
  wwdblook, wwdbdatetimepicker, Wwdotdot, Wwdbcomb, wwcheckbox, RzPanel, DateUtils,
  MDOCustomDataSet, MDOTable, MDOUpdateSQL, RzButton, MDOQuery, wwrcdpnl,
  wwDataInspector, RzTabs, RzEdit, RzCmboBx, Menus;

type
  TfrmViewFacV = class(TForm)

    dsFacturas: TDataSource;
    qFacVen: TMDODataSet;
    qFacVenIDFACTURA: TIntegerField;
    qFacVenIDSUCURSAL: TIntegerField;
    qFacVenIDPUNTOVENTA: TIntegerField;
    qFacVenTIPOFACTURA: TSmallintField;
    qFacVenSECTOR: TIntegerField;
    qFacVenIDSUBDEP: TIntegerField;
    qFacVenDIAHORA: TDateTimeField;
    qFacVenFECHAF: TDateField;
    qFacVenFECHAI: TDateField;
    qFacVenPUNTOVTA: TSmallintField;
    qFacVenNROFACTURA: TMDOStringField;
    qFacVenIDCOMPREF: TIntegerField;
    qFacVenCOMPREF: TMDOStringField;
    qFacVenCLIENTE: TIntegerField;
    qFacVenTIPOIVA: TSmallintField;
    qFacVenCANTARTIC: TSmallintField;
    qFacVenBONIFICACION: TMDOBCDField;
    qFacVenNETO: TMDOBCDField;
    qFacVenEXENTO: TMDOBCDField;
    qFacVenNOCOMPUTABLES: TMDOBCDField;
    qFacVenIVAALICUOTA1: TMDOBCDField;
    qFacVenIVAALICUOTA2: TMDOBCDField;
    qFacVenTOTAL: TMDOBCDField;
    qFacVenSITUACION: TSmallintField;
    qFacVenCONTADO: TMDOBCDField;
    qFacVenTARJETA: TMDOBCDField;
    qFacVenIDTARJETA: TIntegerField;
    qFacVenCTACTE: TMDOBCDField;
    qFacVenNROCTAS: TIntegerField;
    qFacVenCHEQUE: TMDOBCDField;
    qFacVenTICKETS: TMDOBCDField;
    qFacVenOTROSPAGOS: TMDOBCDField;
    qFacVenEMPLEADO: TIntegerField;
    qFacVenIMPRESA: TSmallintField;
    qFacVenFECHAIS: TDateField;
    qFacVenIDMOTNC: TIntegerField;
    qFacVenUSUARIO: TIntegerField;
    qFacVenNOMCLI: TMDOStringField;
    qFacVenNOMVEN: TMDOStringField;
    qFacVenTIPOIVASTR: TMDOStringField;
    qFacVenTIPOFACSTR: TMDOStringField;
    qFacVenDOCUMENTO: TMDOStringField;
    qFacVenTIPODOC: TSmallintField;
    qFacVenDIRECCION: TMDOStringField;
    qFacVenLOCALIDAD: TMDOStringField;
    qFacVenPROVINCIA: TMDOStringField;
    qFacVenCODPOSTAL: TMDOStringField;
    qFacVenTELEFONOS: TMDOStringField;
    qFacVenTIPODOCSTR: TMDOStringField;
    qFacVenSENAS: TMDOBCDField;
    qFacVenCOBSENAS: TMDOBCDField;
    qFacVenDIR_ENTREGA: TMDOStringField;
    qFacVenSTATE: TSmallintField;
    qFacVenNOMBRESUC: TMDOStringField;
    qFacVenENTCONTADO: TMDOBCDField;
    qFacVenIDEMPRESA: TIntegerField;

    dsItemsFac: TDataSource;
    qItemsFV: TMDODataSet;
    qItemsFVIDFACTURA: TIntegerField;
    qItemsFVIDSUCURSAL: TIntegerField;
    qItemsFVIDPUNTOVENTA: TIntegerField;
    qItemsFVIDITEM: TSmallintField;
    qItemsFVIDARTICULO: TIntegerField;
    qItemsFVTALLE: TIntegerField;
    qItemsFVIDSUBDEP: TIntegerField;
    qItemsFVFECHAF: TDateField;
    qItemsFVCANTIDAD: TMDOBCDField;
    qItemsFVNROCTAS: TIntegerField;
    qItemsFVPRCBONIFICACION: TMDOBCDField;
    qItemsFVDESCUENTO: TMDOBCDField;
    qItemsFVPRECIOCOSTO: TMDOBCDField;
    qItemsFVPRECIONETO: TMDOBCDField;
    qItemsFVPRECIOFINAL: TMDOBCDField;
    qItemsFVPRECIOTOTAL: TMDOBCDField;
    qItemsFVVALORLISTA: TMDOBCDField;
    qItemsFVEXENTO: TMDOBCDField;
    qItemsFVIMPINT: TMDOBCDField;
    qItemsFVIVAIN: TMDOBCDField;
    qItemsFVIDALCIVA: TIntegerField;
    qItemsFVALICUOTAIVA: TMDOBCDField;
    qItemsFVIDALCIB: TIntegerField;
    qItemsFVALCIB: TMDOBCDField;
    qItemsFVINGBTO: TMDOBCDField;
    qItemsFVOFERTA: TIntegerField;
    qItemsFVSUBDET: TMDOStringField;
    qItemsFVMARCA: TMDOStringField;
    qItemsFVDETALLE: TMDOStringField;
    qItemsFVSERVICIO: TSmallintField;
    qItemsFVCOLOR: TMDOStringField;
    qItemsFVESKIT: TSmallintField;
    qItemsFVSTATE: TSmallintField;
    qItemsFVDCTOSTK: TSmallintField;
    qItemsFVENTCONTADO: TMDOBCDField;
    qItemsFVMOSDOM: TSmallintField;
    qItemsFVIDAUTORDTO: TIntegerField;
    qItemsFVIDSUCSALIDA: TIntegerField;

    dsMovTar: TDataSource;
    qMovTar: TMDODataSet;
    qMovTarIDMOV: TIntegerField;
    qMovTarIDTARJETA: TIntegerField;
    qMovTarIDFACTURA: TIntegerField;
    qMovTarIDSUCURSAL: TIntegerField;
    qMovTarIDCLIENTE: TIntegerField;
    qMovTarCUPON: TMDOStringField;
    qMovTarLOTE: TMDOStringField;
    qMovTarFECHAOP: TDateField;
    qMovTarCODTAR: TMDOStringField;
    qMovTarNROCUOTA: TSmallintField;
    qMovTarIMPCUOTA: TMDOBCDField;
    qMovTarTOTALOP: TMDOBCDField;
    qMovTarAUTORIZACION: TMDOStringField;
    qMovTarESTADO: TSmallintField;
    qMovTarFECHAIS: TDateField;
    qMovTarCUOTAPAG: TIntegerField;
    qMovTarCANTCUOTAS: TSmallintField;
    qMovTarTARJETA: TMDOStringField;
    qMovTarSTATE: TSmallintField;

    dsDetItemsFV: TDataSource;
    qDetItemsFV: TMDODataSet;
    qDetItemsFVIDFACTURA: TIntegerField;
    qDetItemsFVIDSUCURSAL: TIntegerField;
    qDetItemsFVIDITEM: TSmallintField;
    qDetItemsFVDETALLE1: TMDOStringField;
    qDetItemsFVDETALLE2: TMDOStringField;
    qDetItemsFVDETALLE3: TMDOStringField;
    qDetItemsFVDETALLE4: TMDOStringField;

    qComprobantes: TMDOQuery;
    qComprobantesIDFACTURA: TIntegerField;
    qComprobantesIDSUCURSAL: TIntegerField;
    qComprobantesCLIENTE: TIntegerField;
    qComprobantesFECHAF: TDateField;
    qComprobantesNROFACTURA: TMDOStringField;
    qComprobantesTOTAL: TMDOBCDField;
    qComprobantesDESCCORTA: TMDOStringField;
    qComprobantesNOMBRE: TMDOStringField;
    qComprobantesNOMBRESUC: TMDOStringField;
    qComprobantesEMPLEADO: TIntegerField;
    qComprobantesIDPUNTOVENTA: TIntegerField;

    pcCompRealizados: TRzPageControl;
    tsComprobante: TRzTabSheet;
    tsBusqueda: TRzTabSheet;
    gbFoot: TRzPanel;
    gTotFacVen: TRzGroupBox;
    bvlFacV: TBevel;
    lblDesc: TLabel;
    lblNeto: TLabel;
    lblExento: TLabel;
    lblImpInt: TLabel;
    lblIva1: TLabel;
    lblEstSF: TLabel;
    lblEstadoSF_Senas: TLabel;
    lblFechaSF: TLabel;
    lblIva2: TLabel;
    lblFecRecep: TDBText;
    lblDiaHora: TDBText;
    edtBonificacion: TwwDBEdit;
    edtNeto: TwwDBEdit;
    edtExento: TwwDBEdit;
    edtNoComp: TwwDBEdit;
    edtIva1: TwwDBEdit;
    edtTotal: TwwDBEdit;
    cbEstadoServF_Senas: TwwDBComboBox;
    edtFechaImp: TwwDBDateTimePicker;
    edtIva2: TwwDBEdit;
    gbPagos: TRzGroupBox;
    gbTarjetas: TRzGroupBox;
    gTarjetas: TwwDBGrid;
    pnlNavFV: TRzPanel;
    btnSaveFV: TRzBitBtn;
    btnBorrarFV: TRzBitBtn;
    btnCancelFV: TRzBitBtn;
    btnBuscarFV: TRzBitBtn;
    btnImprimirFC: TRzBitBtn;
    btnEditFV: TRzBitBtn;
    btnSalirFC: TRzBitBtn;
    gPagos: TwwDBGrid;
    gbBody: TRzGroupBox;
    gViewProd: TwwDBGrid;
    ebDetItems: TwwExpandButton;
    diDetItems: TwwDataInspector;
    gbHeader: TRzGroupBox;
    bvlNomVend: TBevel;
    bvlEnt: TBevel;
    bvlPosRec: TBevel;
    lblNroCmp: TLabel;
    lblNumF: TDBText;
    lblCliente: TLabel;
    lblNomCli: TDBText;
    lblFecha: TLabel;
    lblTipoCmp: TLabel;
    lblNroComp: TLabel;
    lblComRef: TLabel;
    lblVend: TLabel;
    lblNombreVend: TDBText;
    lblIdCompRef: TDBText;
    lblSucursal: TLabel;
    lblMotNC: TLabel;
    lblIdPunto: TLabel;
    lblEmpre: TLabel;
    lblCantArt: TLabel;
    lblObser: TLabel;
    lblSubDep: TLabel;
    lblSituacion: TDBText;
    lblPuntoVta: TLabel;
    edtCliente: TwwDBEdit;
    edtFechaF: TwwDBDateTimePicker;
    edtNroFactura: TwwDBEdit;
    edtCompRef: TwwDBEdit;
    edtVendedor: TwwDBEdit;
    cbTipoComp: TwwDBLookupCombo;
    cbSucur: TwwDBLookupCombo;
    cbMotNC: TwwDBLookupCombo;
    edtPtoVta: TwwDBEdit;
    cbEmpre: TwwDBLookupCombo;
    edtCantPrd: TwwDBEdit;
    edtDirEntrega: TwwDBEdit;
    cbSubDep: TwwDBLookupCombo;
    edtPuntoVta: TwwDBEdit;
    pnlHeadFiltro: TRzPanel;
    lblDesde: TLabel;
    lblHasta: TLabel;
    lblEntidad: TLabel;
    lblComp: TLabel;
    btnFiltrar: TRzBitBtn;
    edtDesde: TRzDateTimeEdit;
    edtHasta: TRzDateTimeEdit;
    edtEntidad: TRzNumericEdit;
    edtComp: TRzMaskEdit;
    gFacturas: TwwDBGrid;
    dsFiltroFac: TDataSource;
    lblBusTComp: TLabel;
    cbTipoEmitidos: TRzComboBox;
    btnExpBuscados: TRzBitBtn;
    btnVolverAComp: TRzBitBtn;
    btnVerCompRef: TRzBitBtn;
    btnDesmarcar: TRzBitBtn;
    lblEntCont: TLabel;
    edtEntContado: TwwDBEdit;
    qItemsFVNroFacOper: TStringField;
    qMovTarIDTERMINAL: TIntegerField;
    qMovTarIDPUNTOVENTA: TIntegerField;

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edtTotalKeyPress(Sender: TObject; var Key: Char);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gViewProdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtTotalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dsFacturasDataChange(Sender: TObject; Field: TField);
    procedure gViewProdDblClick(Sender: TObject);
    procedure qFacVenBeforePost(DataSet: TDataSet);
    procedure qFacVenCOMPREFGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure qFacVenCOMPREFSetText(Sender: TField; const Text: String);
    procedure qFacVenFECHAISGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure qItemsFVBeforeEdit(DataSet: TDataSet);
    procedure qItemsFVTALLEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure qItemsFVTALLESetText(Sender: TField; const Text: String);
    procedure btnBuscarFVClick(Sender: TObject);
    procedure btnImprimirFCClick(Sender: TObject);
    procedure btnSalirFCClick(Sender: TObject);
    procedure btnSaveFVClick(Sender: TObject);
    procedure btnEditFVClick(Sender: TObject);
    procedure btnCancelFVClick(Sender: TObject);
    procedure btnBorrarFVClick(Sender: TObject);
    procedure qFacVenAfterClose(DataSet: TDataSet);
    procedure qFacVenAfterOpen(DataSet: TDataSet);
    procedure gTarjetasDblClick(Sender: TObject);
    procedure gPagosKeyPress(Sender: TObject; var Key: Char);
    procedure qFacVenSITUACIONGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure lblNomCliDblClick(Sender: TObject);
    procedure qItemsFVDCTOSTKGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure qItemsFVOFERTAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qFacVenDIAHORAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure pcCompRealizadosClose(Sender: TObject; var AllowClose: Boolean);
    procedure edtCompExit(Sender: TObject);
    procedure edtEntidadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnFiltrarClick(Sender: TObject);
    procedure gFacturasDblClick(Sender: TObject);
    procedure gFacturasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnExpBuscadosClick(Sender: TObject);
    procedure gTarjetasKeyPress(Sender: TObject; var Key: Char);
    procedure btnVolverACompClick(Sender: TObject);
    procedure edtNroFacturaExit(Sender: TObject);
    procedure gViewProdKeyPress(Sender: TObject; var Key: Char);
    procedure edtFechaFExit(Sender: TObject);
    procedure lblComRefDblClick(Sender: TObject);
    procedure qItemsFVMOSDOMGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnDesmarcarClick(Sender: TObject);
    procedure qFacVenBeforeEdit(DataSet: TDataSet);
    procedure edtEntContadoKeyPress(Sender: TObject; var Key: Char);
    procedure qFacVenAfterScroll(DataSet: TDataSet);
    procedure qItemsFVCalcFields(DataSet: TDataSet);
  private
    { private declarations }
    IdFac, IdSuc, IdPto, IdEmp, IdCli: Integer;
    procedure ImprimirFactura;
    procedure Borrar_Comprobante;
    procedure CargarRegistro;
    function FacVenLast(S: Integer): Integer;
  public
    { public declarations }
  end;

var
  frmViewFacV: TfrmViewFacV;

  procedure Get_FacV(IdF, IdS, IdP: Integer);

implementation

uses udmGestion, uTools, uBuscaFac, udmSaveFile, uSelecUsuario, uClaveMod,
     uABMArticulos, uViewMT, uEntidades, uConfiguracion, uBeforeDelete,
     uFiscal;

{$R *.DFM}

procedure Get_FacV(IdF, IdS, IdP: Integer);
begin
  frmViewFacV := TfrmViewFacV.Create(Application);
  with frmViewFacV do
  begin
    qFacVen.Close;
    if IdF <> NoEncontrado then
    begin
      qFacVen.ParamByName('IdFactura').AsInteger := IdF;
      qFacVen.ParamByName('IdSucursal').AsInteger := IdS;
      qFacVen.ParamByName('IdPunto').AsInteger := IdP;
    end
    else begin
      qFacVen.ParamByName('IdFactura').AsInteger := FacVenLast(IdS);
      qFacVen.ParamByName('IdSucursal').AsInteger := IdS;
      qFacVen.ParamByName('IdPunto').AsInteger := IdP;
    end;
    qFacVen.Open;
    if not qFacVen.IsEmpty then
      pcCompRealizados.ActivePage := tsComprobante
    else
      pcCompRealizados.ActivePage := tsBusqueda;
    ShowModal;
  end;
end;

procedure TfrmViewFacV.CargarRegistro;
var
  Actual: Integer;
begin
  FillChar(Factura, SizeOf(TFactura), 0);
  FillChar(ItemsFiscal, SizeOf(TBody_Fiscal), 0);
  with Factura do
  begin
    TipoOp := Venta;
    IdFactura := qFacVenIDFACTURA.AsInteger;
    IdSucursal := qFacVenIDSUCURSAL.AsInteger;
    DetSuc := qFacVenNOMBRESUC.AsString;
    IdPuntoVenta := qFacVenIDPUNTOVENTA.AsInteger;
    TipoFactura := qFacVenTipoFactura.AsInteger;
    TipoFacStr := qFacVenTIPOFACSTR.AsString;
    FechaF := qFacVenFechaF.AsDateTime;
    FechaI := qFacVenFechaI.AsDateTime;
    PuntoVta := qFacVenPuntoVta.AsInteger;
    NroFactura := qFacVenNroFactura.AsString;
    CompRef := qFacVenCompRef.AsString;
    IdCompRef := qFacVenIdCompRef.AsInteger;
    Entidad := qFacVenCliente.AsInteger;
    NombreEnt := qFacVenNomCli.AsString;
    TipoIva := qFacVenTipoIva.AsInteger;
    TipoIvaStr := qFacVenTipoIvaStr.AsString;
    TipoDoc  := qFacVenTipoDoc.AsInteger;
    TipoDocStr := qFacVenTIPODOCSTR.AsString;
    NroDocumento := qFacVenDocumento.AsString;
    Direccion := qFacVenDireccion.AsString;
    Localidad := qFacVenLocalidad.AsString;
    Provincia := qFacVenProvincia.AsString;
    CodPostal := qFacVenCodPostal.AsString;
    Telefono  := qFacVenTelefonos.AsString;
    CantArtic := qFacVenCantArtic.AsInteger;
    Descuento := qFacVenBonificacion.AsCurrency;
    Neto := qFacVenNeto.AsCurrency;
    Exento := qFacVenExento.AsCurrency;
    NoComputables := qFacVenNoComputables.AsCurrency;
    AlicuotaIva1 := GetAlcIva(1);
    IvaAlicuota1 := qFacVenIvaAlicuota1.AsFloat;
    AlicuotaIva2 := GetAlcIva(2);
    IvaAlicuota2 := qFacVenIvaAlicuota2.AsFloat;
    Total := qFacVenTotal.AsCurrency;
    Contado := qFacVenContado.AsCurrency;
    Tarjeta := qFacVenTarjeta.AsCurrency;
    CtaCte := qFacVenCtaCte.AsCurrency;
    ChequeTer := qFacVenCHEQUE.AsCurrency;
    Empleado := qFacVenEmpleado.AsInteger;
    NombreEmpleado := qFacVenNomVen.AsString;
    DomicilioE := qFacVenDIR_ENTREGA.AsString;
    Situacion := qFacVenSITUACION.AsInteger;
    Imprimir_Totales := True;
  end;

  qItemsFV.First;
  Actual := 1;
  while not qItemsFV.Eof do
  begin
    ItemsFiscal[Actual].IdProducto := qItemsFVIdArticulo.AsInteger;
    ItemsFiscal[Actual].CodProd := qItemsFVIDARTICULO.AsString;
    ItemsFiscal[Actual].Marca := qItemsFVMarca.AsString;
    ItemsFiscal[Actual].Detalle := qItemsFVDetalle.AsString;
    ItemsFiscal[Actual].DescProd := ItemsFiscal[Actual].Marca +' '+ ItemsFiscal[Actual].Detalle;
    ItemsFiscal[Actual].SubDet :=  qItemsFVSubDet.AsString;
    ItemsFiscal[Actual].Color := qItemsFVCOLOR.AsString;
    ItemsFiscal[Actual].Talle := qItemsFVTALLE.AsInteger;
    ItemsFiscal[Actual].IdPuntoVenta := qItemsFVIDPUNTOVENTA.AsInteger;
    ItemsFiscal[Actual].Cantidad := qItemsFVCantidad.AsFloat;
    ItemsFiscal[Actual].Bonificacion := qItemsFVPrcBonificacion.AsFloat;
    ItemsFiscal[Actual].Descuento := qItemsFVDESCUENTO.AsCurrency;
    ItemsFiscal[Actual].PrecioNetoT := qItemsFVPrecioNeto.Value;
    ItemsFiscal[Actual].PrecioFinal := qItemsFVPrecioFinal.Value;
    ItemsFiscal[Actual].PrecioTotal := qItemsFVPrecioTotal.Value;
    ItemsFiscal[Actual].Exento := qItemsFVExento.Value;
    ItemsFiscal[Actual].NoComputable := qItemsFVImpInt.Value;
    ItemsFiscal[Actual].MtoIva := qItemsFVIvaIn.AsCurrency;
    ItemsFiscal[Actual].IdAlcIva := qItemsFVIdAlcIva.AsInteger;
    ItemsFiscal[Actual].AlicuotaIva := qItemsFVALICUOTAIVA.AsFloat;
    ItemsFiscal[Actual].TIvaEnt := qFacVenTipoIva.AsInteger;
    ItemsFiscal[Actual].IdAlcIB := 0;
    ItemsFiscal[Actual].IngBto := 0;
    ItemsFiscal[Actual].DetalleExtendido := False;
    if not qDetItemsFV.IsEmpty then
    begin
      qDetItemsFV.First;
      ItemsFiscal[Actual].DetalleExtendido := True;
      ItemsFiscal[Actual].DetalleExt[1] := qDetItemsFVDETALLE1.AsString;
      ItemsFiscal[Actual].DetalleExt[2] := qDetItemsFVDETALLE2.AsString;
      ItemsFiscal[Actual].DetalleExt[3] := qDetItemsFVDETALLE3.AsString;
      ItemsFiscal[Actual].DetalleExt[4] := qDetItemsFVDETALLE4.AsString;
    end;
    Inc(Actual);
    qItemsFV.Next;
  end;
end;

procedure TfrmViewFacV.ImprimirFactura;
begin
  CargarRegistro;
  if Factura.TipoFactura in [RemitoX, Presupuesto, RemitoR, ReciboX, SaldoAFavor, Cobro_Sena] then
  begin
    if (ImprimirEnControlador) and
       (Tipo_Factura or Tipo_Estacion) and
       (ControladorLocal) then
    begin
      if frmFiscal.Imprimir_Comprobante(Factura, ItemsFiscal, DatosPago) then;
    end
    else begin
      try
        Print_Form(Factura, ItemsFiscal);
      except
        raise EUsuario.Create('No se puede imprimir el comprobante');
      end;
    end;
  end
  else begin
    try
      Print_Form(Factura, ItemsFiscal);
    except
      raise EUsuario.Create('No se puede imprimir el comprobante');
    end;
  end;
end;

function TfrmViewFacV.FacVenLast(S: Integer): Integer;
var
  q: TMDOQuery;
begin
  Result := 1;
  try
    q := TMDOQuery.Create(nil);
    q.Database := qFacVen.Database;
    q.Transaction := qFacVen.Transaction;
    q.SQL.Add('Select Max(IDFACTURA) as Ultimo ');
    q.SQL.Add('From FACVEN ');
    q.SQL.Add('Where IdSucursal = :S ');
    q.ParamByName('S').AsInteger := S;
    q.Open;
    Result := q.FieldByName('Ultimo').AsInteger;
  finally
    q.Free;
  end;
end;

procedure TfrmViewFacV.Borrar_Comprobante;
var
  q: TMDOQuery;
  IdFND, IdSND, IdPND, S, F, P, B: Integer;
begin
  if Application.MessageBox(PChar('¿Borra el comprobante emitido?'+#13#10+'Comprobante Nº '+
     qFacVenNroFactura.AsString),'Borrar Comprobante', MB_ICONQUESTION + MB_YESNO) = IdYES then
  begin
    B := AntesDeBorrar;
    F := qFacVenIDFACTURA.AsInteger;
    S := qFacVenIDSUCURSAL.AsInteger;
    P := qFacVenIDPUNTOVENTA.AsInteger;
    try
      if not qFacVen.Transaction.InTransaction then
        qFacVen.Transaction.StartTransaction;
      if qFacVenTarjeta.AsCurrency <> 0 then // Borrar tarjeta del pago del recibo si tiene
      begin
        try
          q := TMDOQuery.Create(nil);
          q.Database := qFacVen.Database;
          q.Transaction := qFacVen.Transaction;
          q.SQL.Add('UpDate MovTar ');
          q.SQL.Add('Set State = :MotBj, ');
          q.SQL.Add('    FechaIS = :FechaIS ');
          q.SQL.Add('Where IdFactura =:IdFactura And ');
          q.SQL.Add('      IdSucursal =:IdSucursal ');
          q.ParamByName('MotBJ').AsInteger := B;
          q.ParamByName('FechaIS').Clear;
          q.ParamByName('IdFactura').AsInteger := F;
          q.ParamByName('IdSucursal').AsInteger := S;
          q.ExecSQL;
        finally
          q.Free;
        end;
      end;

      if qFacVenCHEQUE.AsCurrency <> 0 then
      begin
        try
          q := TMDOQuery.Create(nil);
          q.Database := qFacVen.Database;
          q.Transaction := qFacVen.Transaction;
          q.SQL.Add('UpDate BancoTer ');
          q.SQL.Add('Set Situacion = 5, ');
          q.SQL.Add('    FechaIS = :FechaIS ');
          q.SQL.Add('Where IdFactura =:IdFactura And ');
          q.SQL.Add('      IdSucursal =:IdSucursal ');
          q.ParamByName('FechaIS').Clear;
          q.ParamByName('IdFactura').AsInteger := F;
          q.ParamByName('IdSucursal').AsInteger := S;
          q.ExecSQL;
        finally
          q.Free;
        end;
      end;

      if qFacVenCOBSENAS.AsCurrency <> 0 then // Reingresar seña del pago del recibo si tiene
      begin
        FillChar(DatosPago, SizeOf(TDatosPagos), 0);
        DatosPago.TipoOperacion := Suspen;
        DatosPago.IdEntidad := qFacVenCliente.AsInteger;
        DatosPago.IdPuntoVenta := qFacVenIDPUNTOVENTA.AsInteger;
        DatosPago.IdSucursal := qFacVenIDSUCURSAL.AsInteger;
        DatosPago.FechaOp := qFacVenFECHAF.AsDateTime;
        DatosPago.NomEntidad := qFacVenNOMCLI.AsString;
        DatosPago.NroComprobante := qFacVenNROFACTURA.AsString;
        DatosPago.TipoComprobante := Cobro_Sena;
        DatosPago.IdCompRef := 0;
        DatosPago.CompReferencia := Vacio;
        DatosPago.Coeficiente := 0;
        DatosPago.IdTarjeta := 0;
        DatosPago.CantidadCuotas := 0;
        DatosPago.IdVendedor := qFacVenEMPLEADO.AsInteger;
        DatosPago.TotalPagos := qFacVenCOBSENAS.AsCurrency;
        DatosPago.OpcionNC := 0;
        dmSaveFile.Grabar_Senas(DatosPago, Cobro_Sena);
      end;

      // Reingresar SAF del pago del recibo si tiene
      if qFacVenOTROSPAGOS.AsCurrency <> 0 then
      begin
        FillChar(DatosPago, SizeOf(TDatosPagos), 0);
        DatosPago.TipoOperacion := Suspen;
        DatosPago.IdEntidad := qFacVenCliente.AsInteger;
        DatosPago.IdPuntoVenta := qFacVenIDPUNTOVENTA.AsInteger;
        DatosPago.IdSucursal := qFacVenIDSUCURSAL.AsInteger;
        DatosPago.FechaOp := qFacVenFECHAF.AsDateTime;
        DatosPago.NomEntidad := qFacVenNOMCLI.AsString;
        DatosPago.NroComprobante := qFacVenNROFACTURA.AsString;
        DatosPago.TipoComprobante := SaldoAFavor;
        DatosPago.IdCompRef := 0;
        DatosPago.CompReferencia := Vacio;
        DatosPago.Coeficiente := 0;
        DatosPago.IdTarjeta := 0;
        DatosPago.CantidadCuotas := 0;
        DatosPago.IdVendedor := qFacVenEMPLEADO.AsInteger;
        DatosPago.TotalPagos := qFacVenOTROSPAGOS.AsCurrency;
        DatosPago.OpcionNC := 0;
        dmSaveFile.Grabar_Senas(DatosPago, SaldoAFavor);
      end;

      qItemsFV.First;
      IdFND := 0;
      IdSND := 0;
      IdPND := 0;
      while not qItemsFV.Eof do
      begin
        if qFacVenTIPOFACTURA.AsInteger = ReciboX then
        begin
          (* if qItemsFVDCTOSTK.AsInteger = Verdadero then
            Update_Parts(qItemsFVIdArticulo.AsInteger, qItemsFVIdSucursal.AsInteger,
                         qItemsFVCantidad.AsFloat, qItemsFVTalle.AsInteger,
                         qFacVenTipoFactura.AsInteger, -1, qItemsFVServicio.AsInteger = Verdadero,
                         qItemsFVEsKit.AsInteger = Verdadero, qItemsFV.Database, qItemsFV.Transaction); *)
          if dmGestion.Empresas.Locate(dmGestion.EmpresasIDEMPRESA.FieldName, qFacVenIDEMPRESA.AsInteger, []) then
          begin
            if qItemsFVIDARTICULO.AsInteger = dmGestion.EmpresasIDARTCUOTA.AsInteger then
            begin
              try // Desmarcar Cuotas pagadas
                q := TMDOQuery.Create(nil);
                q.Database := qFacVen.Database;
                q.Transaction := qFacVen.Transaction;
                q.SQL.Add('UpDate MovTar ');
                q.SQL.Add('Set NroRecPago = null, ');
                q.SQL.Add('    VenCuota = :VenCuota, ');
                q.SQL.Add('    Estado = 0, ');
                q.SQL.Add('    FechaIS = null, ');
                if (qItemsFVOferta.AsInteger = Falso) then
                  q.SQL.Add('    CuotaPag = CuotaPag ')
                else
                  q.SQL.Add('    CuotaPag = CuotaPag - 1');
                q.SQL.Add('Where (IdMov = :IdMov) And ');
                q.SQL.Add('      (IdSucursal = :IdSuc) ');
                q.ParamByName('VenCuota').AsDate := qItemsFVFECHAF.AsDateTime;
                q.ParamByName('IdMov').AsInteger := qItemsFVTALLE.AsInteger;
                q.ParamByName('IdSuc').AsInteger := qItemsFVIDSUBDEP.AsInteger;
                q.ExecSQL;
              finally
                q.Free;
              end;

              try
                q := TMDOQuery.Create(nil);
                q.Database := qFacVen.Database;
                q.Transaction := qFacVen.Transaction;
                q.SQL.Add('UpDate MovCuotas ');
                q.SQL.Add('Set Estado = 0, FechaV = :FecVto, ');
                q.SQL.Add('    IdRecibo = 0, IdSucRec = 0, IdPuntoRec = 0, ');
                q.SQL.Add('    NroRecPago = null, FechaP = null, FechaIS = null, ');
                q.SQL.Add('    CantPagos = (CantPagos - 1), NroNotaDeb = 0000-0000000, ');
                q.SQL.Add('    MontoDebito = MontoDebito - :MtoDeb, ');
                q.SQL.Add('    Cobrado = (Cobrado - :MtoCob), ');
                q.SQL.Add('    SaldoCuota = (SaldoCuota + :MtoCob), ');
                q.SQL.Add('    MontoCredito = (MontoCredito - :MtoCre) ');
                q.SQL.Add('Where IdMovCred = :Id_Mov And ');
                q.SQL.Add('      IdSucursal = :Id_Suc And ');
                q.SQL.Add('      NroCuota = :NroCta ');
                q.ParamByName('FecVto').AsDate := qItemsFVFECHAF.AsDateTime;
                q.ParamByName('MtoDeb').AsCurrency := qItemsFVPRECIONETO.AsCurrency;
                q.ParamByName('MtoCre').AsCurrency := qItemsFVDESCUENTO.AsCurrency;
                q.ParamByName('MtoCob').AsCurrency := qItemsFVPRECIOFINAL.AsCurrency;
                q.ParamByName('Id_Mov').AsInteger := qItemsFVTALLE.AsInteger;
                q.ParamByName('Id_Suc').AsInteger := qItemsFVIDSUBDEP.AsInteger;
                q.ParamByName('NroCta').AsInteger := qItemsFVNROCTAS.AsInteger;
                q.ExecSQL;
              finally
                q.Free;
              end;
            end;

            if qItemsFVIDALCIVA.AsInteger > 0 then
            begin
              IdFND := qItemsFVIDALCIVA.AsInteger;
              IdSND := qItemsFVIDSUBDEP.AsInteger;
              IdPND := 0;
            end;
          end;

          try
            q := TMDOQuery.Create(nil);
            q.Database := qFacVen.Database;
            q.Transaction := qFacVen.Transaction;
            q.SQL.Add('UpDate ItemsFV ');
            q.SQL.Add('   Set State = :MotBJ ');
            q.SQL.Add('Where IdFactura = :IdFac And ');
            q.SQL.Add('      IdSucursal = :IdSuc And ');
            q.SQL.Add('      IdPuntoVenta = :IdPto ');
            q.ParamByName('MotBJ').AsInteger := B;
            q.ParamByName('IdFac').AsInteger := F;
            q.ParamByName('IdSuc').AsInteger := S;
            q.ParamByName('IdPto').AsInteger := P;
            q.ExecSQL;
          finally
            q.Free;
          end;
        end
        else begin
          if qItemsFVDCTOSTK.AsInteger = Verdadero then
          begin
            Update_Parts(qItemsFVIdArticulo.AsInteger, qItemsFVIdSucursal.AsInteger,
                         qItemsFVCantidad.AsFloat, qItemsFVTalle.AsInteger,
                         qFacVenTipoFactura.AsInteger, -1, qItemsFVServicio.AsInteger = Verdadero,
                         qItemsFVEsKit.AsInteger = Verdadero, qItemsFV.Database, qItemsFV.Transaction);
          end;
          try
            q := TMDOQuery.Create(nil);
            q.Database := qFacVen.Database;
            q.Transaction := qFacVen.Transaction;
            q.SQL.Add('UpDate ItemsFV ');
            q.SQL.Add('   Set State = :MotBJ, ');
            q.SQL.Add('       IdAutorDto = :IdDel ');
            q.SQL.Add('Where IdFactura = :IdFac And ');
            q.SQL.Add('      IdSucursal = :IdSuc And ');
            q.SQL.Add('      IdPuntoVenta = :IdPto ');
            q.ParamByName('MotBJ').AsInteger := B;
            q.ParamByName('IdDel').AsInteger := AutorDto;
            q.ParamByName('IdFac').AsInteger := F;
            q.ParamByName('IdSuc').AsInteger := S;
            q.ParamByName('IdPto').AsInteger := P;
            q.ExecSQL;
          finally
            q.Free;
          end;
        end;
        qItemsFV.Next;
      end;

      try // Marcar comprobante como borrado
        q := TMDOQuery.Create(nil);
        q.Database := qFacVen.Database;
        q.Transaction := qFacVen.Transaction;
        q.SQL.Add('UpDate FacVen ');
        q.SQL.Add('Set State = :MotBj, FechaIS = null ');
        q.SQL.Add('Where IdFactura = :IdFac And ');
        q.SQL.Add('      IdSucursal = :IdSuc And ');
        q.SQL.Add('      IdPuntoVenta = :IdPto ');
        q.ParamByName('MotBJ').AsInteger := B;
        q.ParamByName('IdFac').AsInteger := F;
        q.ParamByName('IdSuc').AsInteger := S;
        q.ParamByName('IdPto').AsInteger := P;
        q.ExecSQL;
      finally
        q.Free;
      end;
      qFacVen.Transaction.Commit;
    except
      on E:Exception do
      begin
        qFacVen.Transaction.RollBack;
        raise Eusuario.Create(E.Message);
      end;
    end;
    Hubo_ModComprobante := True;


    If (IdFND > 0) then
    begin // Generar y Emitir N. de Credito para anular ND por debitos
      try
        q := TMDOQuery.Create(nil);
        q.Database := qFacVen.Database;
        q.Transaction := qFacVen.Transaction;
        q.SQL.Add('Select IdFactura, IdSucursal, IdPuntoVenta, ');
        q.SQL.Add('       NroFactura, FechaF, Total  ');
        q.SQL.Add('From FacVen ');
        q.SQL.Add('Where IdFactura = :IdFac And ');
        q.SQL.Add('      IdSucursal = :IdSuc And ');
        q.SQL.Add('      IdPuntoVenta = :IdPto And ');
        q.SQL.Add('      TipoFactura in (2,7) ');
        q.ParamByName('IdFac').AsInteger := IdFND;
        q.ParamByName('IdSuc').AsInteger := IdSND;
        q.ParamByName('IdPto').AsInteger := IdPND;
        q.Open;
        if not q.IsEmpty then
        begin
          ShowMessage(Format('Debe Emitir una NC por %m para Anular la NDº %s de Fecha %s',
                              [q.FieldByName('Total').AsCurrency,
                               q.FieldByName('NroFactura').AsString,
                               DateToStr(q.FieldByName('FechaF').AsDateTime)]));
        end;
      finally
        q.Free;
      end;
    end;
    qFacVen.Close;
    qFacVen.ParamByName('IdFactura').AsInteger := FacVenLast(S);
    qFacVen.ParamByName('IdSucursal').AsInteger := S;
    qFacVen.ParamByName('IdPunto').AsInteger := P;
    qFacVen.Open;
  end
  else
    Abort;
end;

procedure TfrmViewFacV.FormShow(Sender: TObject);
begin
  lblMotNC.Visible := (qFacVenTipoFactura.AsInteger in [CreA, CreB]);
  cbMotNC.Visible  := (qFacVenTipoFactura.AsInteger in [CreA, CreB]);
  lblComRef.Visible := (qFacVenTipoFactura.AsInteger in [CreA, CreB, RemitoX]);
  edtCompRef.Visible := (qFacVenTipoFactura.AsInteger in [CreA, CreB, RemitoX]);
  btnVerCompRef.Visible  := (qFacVenTipoFactura.AsInteger in [CreA, CreB]);
  cbEstadoServF_Senas.Items.Clear;
  if qFacVenTipoFactura.AsInteger in [Cobro_Sena, SaldoAFavor] then
  begin
    lblEstadoSF_Senas.Caption := 'Estado Señas';
    cbEstadoServF_Senas.Items.Add('Borrada  '+#9+'0');
    cbEstadoServF_Senas.Items.Add('Pendiente'+#9+'1');
    cbEstadoServF_Senas.Items.Add('Cobrada  '+#9+'2');
    cbEstadoServF_Senas.Items.Add('Anulada  '+#9+'3');
  end
  else begin
    lblEstadoSF_Senas.Caption := 'Estado Svr.Fiscal';
    cbEstadoServF_Senas.Items.Add('Sin Imprimir'+#9+'0');
    cbEstadoServF_Senas.Items.Add('Impreso     '+#9+'1');
    cbEstadoServF_Senas.Items.Add('En Impresión'+#9+'2');
    cbEstadoServF_Senas.Items.Add('Cancelado   '+#9+'3');
  end;
  cbEstadoServF_Senas.ApplyList;
  cbEstadoServF_Senas.MapList := True;
  lblIva1.Caption := Format('IVA %5.2f',[GetAlcIva(1)])+'%';
  lblIva2.Caption := Format('IVA %5.2f',[GetAlcIva(2)])+'%';
  lblSubDep.Visible := ConSubDep;
  cbSubDep.Visible  := ConSubDep;
  edtDesde.Date := StartOfTheMonth(Date);
  edtHasta.Date := Date;
  Hubo_ModComprobante := False;
end;

procedure TfrmViewFacV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmViewFacV.FormCreate(Sender: TObject);
begin
  cbTipoEmitidos.Clear;
  cbTipoEmitidos.AddObject('<TODOS> ', TObject(0));
  dmGestion.TiposCompVta.First;
  while not dmGestion.TiposCompVta.Eof do
  begin
    cbTipoEmitidos.AddObject(dmGestion.TiposCompVtaDetalle.AsString,
                   TObject(dmGestion.TiposCompVtaTipoCom.AsInteger));
    dmGestion.TiposCompVta.Next;
  end;
  dmGestion.Empresas.Open;
  cbTipoEmitidos.ItemIndex := 0;
end;

procedure TfrmViewFacV.edtTotalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmViewFacV.edtClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmViewFacV.gViewProdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmViewFacV.gViewProdKeyPress(Sender: TObject; var Key: Char);
begin
  if (gViewProd.SelectedField.DataType in [ftFloat, ftCurrency, ftBCD]) and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

procedure TfrmViewFacV.edtTotalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if Key = VK_F5 then
    Calculadora(Handle)
 else
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmViewFacV.dsFacturasDataChange(Sender: TObject; Field: TField);
begin
//  gViewProd.Visible := not(qFacVenTipoFactura.AsInteger in []);
end;

procedure TfrmViewFacV.gViewProdDblClick(Sender: TObject);
begin
  frmABMArticulos := TfrmABMArticulos.Create(nil);
  frmABMArticulos.Cual_Art := qItemsFVIdArticulo.AsInteger;
  frmABMArticulos.ShowModal;
end;

procedure TfrmViewFacV.qFacVenBeforeEdit(DataSet: TDataSet);
begin
  IdFac := qFacVenIDFACTURA.AsInteger;
  IdSuc := qFacVenIDSUCURSAL.AsInteger;
  IdPto := qFacVenIDPUNTOVENTA.AsInteger;
  IdEmp := qFacVenIDEMPRESA.AsInteger;
  IdCli := qFacVenCLIENTE.AsInteger;
end;

procedure TfrmViewFacV.qFacVenBeforePost(DataSet: TDataSet);
var
  t: TMDOQuery;
begin
  Hubo_ModComprobante := True;
  try
    try
      qFacVenPUNTOVTA.AsInteger := StrToInt(Copy(qFacVenNROFACTURA.AsString, 1, 4));
    except
      qFacVenPUNTOVTA.AsInteger := qFacVenIDPUNTOVENTA.AsInteger;
    end;
    qFacVenFECHAIS.Clear;
    qItemsFV.First;
    while not qItemsFV.Eof do
    begin
      qItemsFV.Edit;
      qItemsFVIdSucursal.AsInteger := qFacVenIdSucursal.AsInteger;
      qItemsFVIdPuntoVenta.AsInteger := qFacVenIdPuntoVenta.AsInteger;
      qItemsFVFechaF.AsDateTime := qFacVenFechaF.AsDateTime;
      qItemsFV.Post;
      qItemsFV.Next;
    end;

    qDetItemsFV.First;
    while not qDetItemsFV.Eof do
    begin
      qDetItemsFV.Edit;
      qDetItemsFVIdSucursal.AsInteger := qFacVenIdSucursal.AsInteger;
      qDetItemsFV.Post;
      qDetItemsFV.Next;
    end;

    if (qFacVenTARJETA.AsCurrency <> 0) and
       (qMovTar.Active) then
    begin
      qMovTar.First;
      while not qMovTar.Eof do
      begin
        qMovTar.Edit;
        if qMovTarIDCLIENTE.AsInteger <> IdCli then
        begin
          try
            t := TMDOQuery.Create(nil);
            t.Database := qFacVen.Database;
            t.Transaction := qFacVen.Transaction;
            t.SQL.Add('UpDate MovCuotas ');
            t.SQL.Add('Set IdCliente = :C, ');
            t.SQL.Add('    IdSucursal = :S, ');
            t.SQL.Add('    FechaIS = :F ');
            t.SQL.Add('Where IdMovCred = :M And ');
            t.SQL.Add('      IdSucursal = :O ');
            t.ParamByName('M').AsInteger := qMovTarIdMov.AsInteger;
            t.ParamByName('O').AsInteger := qMovTarIdSucursal.AsInteger;
            t.ParamByName('F').AsDate := Ano_2000;
            t.ParamByName('C').AsInteger := qFacVenCLIENTE.AsInteger;
            t.ParamByName('S').AsInteger := qFacVenIDSUCURSAL.AsInteger;
            try
              t.ExecSQL;
            except
            end;
          finally
            t.Free;
          end;
        end;
        qMovTarFECHAIS.Clear;
        qMovTarIDCLIENTE.AsInteger := qFacVenCLIENTE.AsInteger;
        qMovTarIDSUCURSAL.AsInteger := qFacVenIdSucursal.AsInteger;
        qMovTar.Post;
        qMovTar.Next;
      end;
    end;
  except
    on E:Exception do
    begin
      raise EUsuario.Create('Error :'+E.Message );
    end;
  end;
end;

procedure TfrmViewFacV.qFacVenCOMPREFGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if qFacVenCompRef.IsNull then
    Text := '0000-00000000'
  else
    Text := qFacVenCompRef.AsString;
end;

procedure TfrmViewFacV.qFacVenCOMPREFSetText(Sender: TField; const Text: String);
begin
  if Text = Cero then
    Sender.AsString := '0000-00000000'
  else
    Sender.AsString := Text;
end;

procedure TfrmViewFacV.qFacVenDIAHORAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := ' G: '+ Sender.AsString;
end;

procedure TfrmViewFacV.qFacVenFECHAISGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if (Sender.IsNull) or
     (Sender.AsDateTime = 0) or
     (Sender.AsDateTime <= Date_Old) then
    Text := ' O_L '
  else
    Text := ' R/E '+ Sender.AsString;
end;

procedure TfrmViewFacV.qItemsFVBeforeEdit(DataSet: TDataSet);
begin
  if not (qFacVen.State in dsEditModes) then
    Abort;
end;

procedure TfrmViewFacV.qItemsFVCalcFields(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if qFacVenTIPOFACTURA.AsInteger in [21, 22] then
  begin
    try
      try
        q := TMDOQuery.Create(nil);
        q.Database := qFacVen.Database;
        q.Transaction := qFacVen.Transaction;
        q.SQL.Add('Select M.NroFactOrg ');
        q.SQL.Add('From MovTar M ');
        q.SQL.Add('Where M.IdMov = :IdM And ');
        q.SQL.Add('      M.IdSucursal = :IdS And ');
        q.SQL.Add('      M.IdCliente = :IdC ');
        q.ParamByName('IdM').AsInteger := qItemsFVTALLE.AsInteger;
        q.ParamByName('IdS').AsInteger := qItemsFVIDSUBDEP.AsInteger;
        q.ParamByName('IdC').AsInteger := qFacVenCLIENTE.AsInteger;
        q.Open;
        if not q.IsEmpty then
        begin
          qItemsFVNroFacOper.AsString := q.FieldByName('NroFactOrg').AsString;
        end;
      finally
        q.Free;
      end;
    Except
      qItemsFVNroFacOper.AsString := '0000-00000000'
    end;
  end
  else
    qItemsFVNroFacOper.AsString := '0000-00000000';
end;

procedure TfrmViewFacV.qItemsFVOFERTAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if qFacVenTIPOFACTURA.AsInteger in [21, 22] then
  begin
    if qItemsFVOFERTA.AsInteger = Verdadero then
      Text := 'Cancelación '
    else
      Text := 'Pago Parcial';
  end
  else begin
    if qItemsFVOFERTA.AsInteger = Verdadero then
      Text := 'S'
    else
      Text := 'N';
  end;
end;

procedure TfrmViewFacV.qItemsFVTALLEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if Control_Talles then
  begin
    try
      Text := GetTextTalle(Sender.AsInteger)
    except
      Text := Sender.AsString;
    end;
  end
  else begin
    if qFacVenTIPOFACTURA.AsInteger in [21, 22] then
      Text := Sender.AsString;
  end;
end;

procedure TfrmViewFacV.qItemsFVTALLESetText(Sender: TField; const Text: String);
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

procedure TfrmViewFacV.btnBuscarFVClick(Sender: TObject);
begin
  pcCompRealizados.ActivePage := tsBusqueda;
  tsBusqueda.Show;
end;

procedure TfrmViewFacV.btnVolverACompClick(Sender: TObject);
begin
  pcCompRealizados.ActivePage := tsComprobante;
  tsComprobante.Show;
end;

procedure TfrmViewFacV.btnImprimirFCClick(Sender: TObject);
begin
  ImprimirFactura;
end;

procedure TfrmViewFacV.btnSalirFCClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmViewFacV.btnSaveFVClick(Sender: TObject);
var
  S, F, P: Integer;
begin
  F := qFacVenIDFACTURA.AsInteger;
  S := qFacVenIDSUCURSAL.AsInteger;
  P := qFacVenIDPUNTOVENTA.AsInteger;

  try
    if not dmSaveFile.trVerComp.InTransaction then
      dmSaveFile.trVerComp.StartTransaction;
    if qFacVen.State in dsEditModes then
      qFacVen.Post;
    if qItemsFV.State in dsEditModes then
      qItemsFV.Post;
    if qDetItemsFV.State in dsEditModes then
      qDetItemsFV.Post;
    dmSaveFile.trVerComp.Commit;
  except
    on E:Exception do
    begin
      dmSaveFile.trVerComp.RollBack;
      raise EUsuario.Create('Error: '+E.Message);
    end;
  end;

  Hubo_ModComprobante := True;
  try
    qFacVen.Close;
    qFacVen.ParamByName('IdFactura').AsInteger  := F;
    qFacVen.ParamByName('IdSucursal').AsInteger := S;
    qFacVen.ParamByName('IdPunto').AsInteger := P;
    qFacVen.Open;
  except
    qFacVen.Close;
    qFacVen.ParamByName('IdFactura').AsInteger  := FacVenLast(S);
    qFacVen.ParamByName('IdSucursal').AsInteger := S;
    qFacVen.ParamByName('IdPunto').AsInteger := P;
    qFacVen.Open;
  end;
end;

procedure TfrmViewFacV.btnEditFVClick(Sender: TObject);
begin
  if not Check_Seg(Nivel_Mod, 'FacVen', AutorDto) then
    raise EUsuario.Create('No esta habilitado para esta función');
  qFacVen.Edit;
  qItemsFV.Edit;
  qDetItemsFV.Edit;
  edtCliente.SetFocus;
end;

procedure TfrmViewFacV.btnExpBuscadosClick(Sender: TObject);
begin
  if not qComprobantes.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qComprobantes;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmViewFacV.btnCancelFVClick(Sender: TObject);
begin
  if qFacVen.State in dsEditModes then
    qFacVen.Cancel;
  if qItemsFV.State in dsEditModes then
    qItemsFV.Cancel;
  if qDetItemsFV.State in dsEditModes then
    qDetItemsFV.Cancel;
end;

procedure TfrmViewFacV.btnDesmarcarClick(Sender: TObject);
begin
  qFacVen.Edit;
  qFacVenFECHAIS.Clear;
  qFacVen.Post;
  if qMovTar.Active then
  begin
    qMovTar.Edit;
    qMovTarFECHAIS.Clear;
    qMovTar.Post;
  end;
end;

procedure TfrmViewFacV.btnBorrarFVClick(Sender: TObject);
Var
  FComp: TDate;
begin
  FComp := qFacVenDIAHORA.AsDateTime;
  if Not (FComp = Date) then
  begin
    if not Check_Seg(Nivel_Dto, 'FacVen', AutorDto) then
      raise EUsuario.Create('No esta habilitado para esta función');
  end;
  Borrar_Comprobante;
end;

procedure TfrmViewFacV.qFacVenAfterClose(DataSet: TDataSet);
begin
  qItemsFV.Close;
  qDetItemsFV.Close;
  qMovTar.Close;
end;

procedure TfrmViewFacV.qFacVenAfterOpen(DataSet: TDataSet);
begin
  if not qFacVen.IsEmpty then
  begin
    qItemsFV.Open;
    qDetItemsFV.Open;
    if ABS(qFacVenTARJETA.AsCurrency) > 0 then
    begin
      try
        if qFacVenTIPOFACTURA.AsInteger in [CreA, CreB] then
          qMovTar.ParamByName('IdFactura').AsInteger := qFacVenIDCOMPREF.AsInteger
        else
          qMovTar.ParamByName('IdFactura').AsInteger := qFacVenIDFACTURA.AsInteger;
        qMovTar.ParamByName('IdSucursal').AsInteger := qFacVenIDSUCURSAL.AsInteger;
        qMovTar.ParamByName('IdCliente').AsInteger := qFacVenCLIENTE.AsInteger;
        qMovTar.Open;
      except
        on E:Exception do
        begin
          raise EUsuario.Create(E.Message);
        end;
      end;
    end;
  end
  else begin
    pcCompRealizados.ActivePage := tsBusqueda;
    tsBusqueda.Show;
  end;
end;

procedure TfrmViewFacV.qFacVenAfterScroll(DataSet: TDataSet);
begin
  gViewProd.Selected.Clear;
  if qFacVenTIPOFACTURA.AsInteger in [21, 22] then
  begin
    gViewProd.Font.Size := 8;
    gViewProd.Selected.Add('IdArticulo'#9'3'#9'Cod'#9'F'#9'Datos Operación');
    gViewProd.Selected.Add('Talle'#9'5'#9'Nº OP'#9'F'#9'Datos Operación');
    gViewProd.Selected.Add('NroFacOper'#9'13'#9'Comp. Original'#9'F'#9'Datos Operación');
    gViewProd.Selected.Add('NroCtas'#9'7'#9'Cuota'#9'F'#9'Datos Operación');
    gViewProd.Selected.Add('FechaF'#9'8'#9'Vencimiento'#9'F'#9'Datos Operación');
    gViewProd.Selected.Add('ValorLista'#9'8'#9'Monto Cuota '#9'F'#9'Datos Operación');
    gViewProd.Selected.Add('Oferta'#9'15'#9'Tipo de Pago'#9'F'#9'Datos Cobranza');
    gViewProd.Selected.Add('IdAlcIB'#9'2'#9'#P'#9'F'#9'Datos Cobranza');
    gViewProd.Selected.Add('PrecioFinal'#9'8'#9'Cobrado'#9'F'#9'Datos Cobranza');
    gViewProd.Selected.Add('Descuento'#9'8'#9'Bonificación'#9'F'#9'Datos Cobranza');
    gViewProd.Selected.Add('PrecioNeto'#9'8'#9'Débitos'#9'F'#9'Datos Cobranza');
    gViewProd.Selected.Add('SubDet'#9'13'#9'Nota Deb/Cred'#9'F'#9'Datos Cobranza');
  end
  else begin
    if Tarea <= Nivel_Mod then
    begin
      gViewProd.Font.Size := 8;
      gViewProd.ControlType.Add('CANTIDAD;CustomEdit;ebDetItems;T');
      gViewProd.Selected.Add('IdArticulo'#9'4'#9'C'#186#9'F'#9'Productos vendidos');
      gViewProd.Selected.Add('Marca'#9'5'#9'Marca'#9'F'#9'Productos vendidos');
      gViewProd.Selected.Add('Detalle'#9'18'#9'Detalle'#9'F'#9'Productos vendidos');
      gViewProd.Selected.Add('Cantidad'#9'5'#9'D/#'#9'F'#9'Productos vendidos');

      if Control_Talles then
        gViewProd.Selected.Add('Talle'#9'3'#9'T'#9'F'#9'Productos vendidos');
      gViewProd.Selected.Add('EntContado'#9'7'#9'Entrega'#9'F'#9'Precios');
      gViewProd.Selected.Add('PrecioFinal'#9'7'#9'Unitario'#9'F'#9'Precios');
      gViewProd.Selected.Add('PrecioTotal'#9'8'#9'Total'#9'F'#9'Precios');
      gViewProd.Selected.Add('Oferta'#9'2'#9'Of'#9'F'#9'Precios');
      gViewProd.Selected.Add('PRCBONIFICACION'#9'5'#9'%Dto'#9'F'#9'Descuentos');
      gViewProd.Selected.Add('Descuento'#9'7'#9'Monto'#9'F'#9'Descuentos');

      gViewProd.Selected.Add('ImpInt'#9'6'#9'II'#9'F'#9'Datos Tecnicos');
      gViewProd.Selected.Add('IvaIn'#9'6'#9'IVA'#9'F'#9'Datos Tecnicos');
      gViewProd.Selected.Add('PrecioCosto'#9'7'#9'Costo'#9'F'#9'Datos Tecnicos');
      gViewProd.Selected.Add('ValorLista'#9'8'#9'Lista'#9'F'#9'Datos Tecnicos');
      gViewProd.Selected.Add('INGBTO'#9'7'#9'I.Bts.'#9'F'#9'Datos Tecnicos');
      gViewProd.Selected.Add('DCTOSTK'#9'1'#9'K'#9'F'#9'Datos Tecnicos');
    end
    else begin
      gViewProd.Font.Size := 9;
      gViewProd.ControlType.Add('CANTIDAD;CustomEdit;ebDetItems;T');
      gViewProd.Selected.Add('IdArticulo'#9'6'#9'Código'#186#9'F'#9'Productos vendidos');
      gViewProd.Selected.Add('Marca'#9'10'#9'Marca'#9'F'#9'Productos vendidos');
      gViewProd.Selected.Add('Detalle'#9'25'#9'Detalle'#9'F'#9'Productos vendidos');
      gViewProd.Selected.Add('Cantidad'#9'8'#9'D/#'#9'F'#9'Productos vendidos');

      if Control_Talles then
        gViewProd.Selected.Add('Talle'#9'4'#9'T'#9'F'#9'Productos vendidos');
      gViewProd.Selected.Add('EntContado'#9'8'#9'Entrega'#9'F'#9'Precios');
      gViewProd.Selected.Add('PrecioFinal'#9'8'#9'Unitario'#9'F'#9'Precios');
      gViewProd.Selected.Add('PrecioTotal'#9'10'#9'Total'#9'F'#9'Precios');
      gViewProd.Selected.Add('Oferta'#9'2'#9'Of'#9'F'#9'Precios');
      gViewProd.Selected.Add('PRCBONIFICACION'#9'6'#9'%Dcto'#9'F'#9'Descuentos');
      gViewProd.Selected.Add('Descuento'#9'8'#9'Monto'#9'F'#9'Descuentos');
    end;
  end;
  gViewProd.RefreshDisplay;
end;

procedure TfrmViewFacV.gTarjetasDblClick(Sender: TObject);
var
  IdF,IdS,IdP: Integer;
begin
  if not qMovTar.IsEmpty then
  begin
    try
      IdF := qFacVenIdFactura.AsInteger;
      IdS := qFacVenIdSucursal.AsInteger;
      IdP := qFacVenIDPUNTOVENTA.AsInteger;
      Get_ModT(qMovTarIdFactura.AsInteger, qMovTarIdSucursal.AsInteger,
               qMovTarIdTarjeta.AsInteger, qMovTarIdMov.AsInteger);
      if not qFacVen.Active then
      begin
        qFacVen.ParamByName('IdFactura').AsInteger  := IdF;
        qFacVen.ParamByName('IdSucursal').AsInteger := IdS;
        qFacVen.ParamByName('IdPunto').AsInteger := IdP;
        qFacVen.Open;
      end;
    except
      on E:Exception do
      begin
        qFacVen.ParamByName('IdFactura').AsInteger  := FacVenLast(IdS);
        qFacVen.ParamByName('IdSucursal').AsInteger := IdS;
        qFacVen.ParamByName('IdPunto').AsInteger := IdP;
        qFacVen.Open;
        raise EUsuario('Error al buscar operación: '+E.Message);
      end;
    end;
  end;
end;

procedure TfrmViewFacV.gTarjetasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmViewFacV.gPagosKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmViewFacV.qFacVenSITUACIONGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if qFacVenTIPOFACTURA.AsInteger = RemitoX then
  begin
    if qFacVenSITUACION.AsInteger = Falso then
      Text := 'Sin Precios'
    else
      Text := 'Con Precios';
  end
  else begin
    if qFacVenTIPOFACTURA.AsInteger in [CreA, CreB] then
    begin
      Case qFacVenSITUACION.AsInteger of
        0: Text := 'NCred c/ SaF';
        1: Text := 'Anulación Op';
        2: Text := 'Cambio Prod.';
      end;
    end
    else
      Text := ' - ';
  end;
end;

procedure TfrmViewFacV.lblComRefDblClick(Sender: TObject);
begin
  Get_FacV(qFacVenIDCOMPREF.AsInteger,
           qFacVenIdSucursal.AsInteger,
           qFacVenIdPuntoVenta.AsInteger);
end;

procedure TfrmViewFacV.lblNomCliDblClick(Sender: TObject);
begin
  VerCliente(qFacVenCLIENTE.AsInteger, qFacVenIDSUCURSAL.AsInteger);
end;

procedure TfrmViewFacV.pcCompRealizadosClose(Sender: TObject; var AllowClose: Boolean);
begin
  Close;
end;

procedure TfrmViewFacV.qItemsFVDCTOSTKGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if qItemsFVDCTOSTK.AsInteger = Verdadero then
    Text := 'S'
  else
    Text := 'N'
end;

procedure TfrmViewFacV.qItemsFVMOSDOMGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if (qItemsFVMOSDOM.AsInteger = 0) then
    Text := 'E'
  else
    Text := 'R'
end;

procedure TfrmViewFacV.btnFiltrarClick(Sender: TObject);
Const
  BCp = 'Select F.IdFactura, F.IdSucursal, F.IdPuntoVenta, F.FechaF, '+
        '       F.NroFactura, F.Total, F.Cliente, T.DescCorta, F.Empleado, '+
        '       E.Nombre, K.NombreSuc '+
        'From FacVen F '+
        'Join TiposComp T '+
        '  on T.IdComprobante = F.TipoFactura '+
        'Left outer Join Clientes E '+
        '  on E.IdCliente = F.Cliente And E.IdSucursal = F.IdSucursal '+
        'Join Sucursales K '+
        '  on K.IdSucursal = F.IdSucursal '+
        'Where <Cond> '+
        'Order By F.FechaF ';
var
  Cmp,
  Cnd, Con: String;
  TCm: SmallInt;
begin
  Cnd := '(F.State = 0)';

  try
    TCm := Integer(cbTipoEmitidos.Items.Objects[cbTipoEmitidos.ItemIndex]);
  except
    TCm := 0;
  end;

  if (edtDesde.Date <= edtHasta.Date) and
     (edtDesde.Date > 0) and (edtHasta.Date > 0) then
  begin
    Cnd := Cnd+ ' and (F.FechaF between ' + QuotedStr(FormatDateTime('mm-dd-yyyy', edtDesde.Date))+
                ' and '+ QuotedStr(FormatDateTime('mm-dd-yyyy', edtHasta.Date))+')';
  end;

  if edtEntidad.IntValue > 0 then
    Cnd := Cnd+' and (F.Cliente = ' + edtEntidad.Text+')';

  Cmp := StringReplace(edtComp.Text, '_', '', [rfReplaceAll]);
  if (Trim(Cmp) <> '-') and
     (Cmp <> '0000-00000000') then
    Cnd := Cnd+' and (F.NroFactura = ' + QuotedStr(Cmp)+')';

  if TCm > 0 then
    Cnd := Cnd+' and (F.TipoFactura = ' +  IntToStr(TCm)+')';

  Con := StringReplace(BCp, '<Cond>', Cnd, [rfReplaceAll]);

  qComprobantes.Close;
  qComprobantes.SQL.Clear;
  qComprobantes.SQL.Text := Con;
  try
    Screen.Cursor := crHourGlass;
    qComprobantes.Open;
    if not qComprobantes.IsEmpty then
      gFacturas.SetFocus
    else
      edtDesde.SetFocus;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmViewFacV.gFacturasDblClick(Sender: TObject);
begin
  if not qComprobantes.IsEmpty then
  begin
    qFacVen.Close;
    qFacVen.ParamByName('IdFactura').AsInteger  := qComprobantesIDFACTURA.AsInteger;
    qFacVen.ParamByName('IdSucursal').AsInteger := qComprobantesIDSUCURSAL.AsInteger;
    qFacVen.ParamByName('IdPunto').AsInteger := qComprobantesIDPUNTOVENTA.AsInteger;
    qFacVen.Open;
    if not qFacVen.IsEmpty then
      tsComprobante.Show;
  end;
end;

procedure TfrmViewFacV.gFacturasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Shift = [] then
  begin
    if (Key = VK_RETURN) and
       (not qComprobantes.IsEmpty) then
    begin
      qFacVen.Close;
      qFacVen.ParamByName('IdFactura').AsInteger  := qComprobantesIDFACTURA.AsInteger;
      qFacVen.ParamByName('IdSucursal').AsInteger := qComprobantesIDSUCURSAL.AsInteger;
      qFacVen.ParamByName('IdPunto').AsInteger := qComprobantesIDPUNTOVENTA.AsInteger;
      qFacVen.Open;
      if not qFacVen.IsEmpty then
        tsComprobante.Show;
    end;
  end;
end;

procedure TfrmViewFacV.edtCompExit(Sender: TObject);
Var
  Part1, Part2: Integer;
begin
  try
    Part1:= StrToInt(Trim(Copy(edtComp.Text,1,Pos('-',edtComp.Text)-1)));
  except
    on E: EConvertError do
    begin
       if Trim(Copy(edtComp.Text,1,Pos('-',edtComp.Text)-1)) <> Vacio then
       begin
         edtComp.SetFocus;
         edtComp.SelStart := 0;
         edtComp.SelLength := 3;
         raise EUsuario.Create('Error en el Nº de serie del comprobante');
       end;
    end;
  end;
  try
    Part2:= StrToInt(Trim(Copy(edtComp.Text,Pos('-',edtComp.Text)+1,Length(edtComp.Text))));
  except
    on E: EConvertError do
    begin
      if Trim(Copy(edtComp.Text,Pos('-',edtComp.Text)+1,Length(edtComp.Text))) <> Vacio then
      begin
        edtComp.SetFocus;
        edtComp.SelStart := 5;
        edtComp.SelLength := 8;
        raise EUsuario.Create('Error en el Nº de factura del comprobante');
      end;
    end;
  end;
  edtComp.Text := Format('%.4d-%.8d', [Part1, Part2]);
end;

procedure TfrmViewFacV.edtEntContadoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmViewFacV.edtEntidadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F3) then
  begin
    if Busca_Cli(IdEntidad, IdSucEnt) then
      edtEntidad.Text := IntToStr(IdEntidad);
  end;
end;

procedure TfrmViewFacV.edtFechaFExit(Sender: TObject);
begin
  try
    StrToDate(edtFechaF.Text);
  except
    on E: EConvertError do
    begin
      edtFechaF.SetFocus;
      raise EUsuario.Create('Fecha del comprobante inválida');
    end;
  end;
end;

procedure TfrmViewFacV.edtNroFacturaExit(Sender: TObject);
var
  Part1, Part2: Integer;
begin
  try
    Part1 := 0;
    Part2 := 0;
    try
      Part1:= StrToInt(Trim(Copy(edtNroFactura.Text,1,Pos('-',edtNroFactura.Text)-1)));
    except
      on E: EConvertError do
      begin
        edtNroFactura.SetFocus;
        edtNroFactura.SelStart := 0;
        edtNroFactura.SelLength := 3;
        raise EUsuario.Create('Error en el Pto. de Venta del comprobante');
      end;
    end;

    try
      Part2 := StrToInt(Trim(Copy(edtNroFactura.Text,Pos('-',edtNroFactura.Text)+1,Length(edtNroFactura.Text))));
    except
      on E: EConvertError do
      begin
        edtNroFactura.SetFocus;
        edtNroFactura.SelStart := 5;
        edtNroFactura.SelLength := 8;
        raise EUsuario.Create('Error en el Nº de comprobante');
      end;
    end;
  finally
    qFacVenNroFactura.AsString := Format('%.4d-%.8d',[Part1, Part2]);
    qFacVenPuntoVta.AsInteger := Part1;
  end;
end;

end.
