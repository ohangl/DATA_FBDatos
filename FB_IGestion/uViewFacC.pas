unit uViewFacC;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, Grids, Mask, ExtCtrls, ComCtrls, ToolWin,
  Buttons, ImgList, wwSpeedButton, wwDBNavigator, wwclearpanel, Wwdbigrd, Wwdbgrid,
  wwdbedit, wwdbdatetimepicker, wwdblook, Wwdotdot, Wwdbcomb, Variants, wwcheckbox,
  uTools, RzButton, RzPanel, MDOCustomDataSet, MDOQuery, Menus, DBClient, RzTabs,
  DateUtils, RzCmboBx, RzEdit;

type
  TfrmViewFacC = class(TForm)
    dsFacturas: TDataSource;
    qFacCom: TMDODataSet;
    qFacComIDFACTURA: TIntegerField;
    qFacComIDSUCURSAL: TIntegerField;
    qFacComTIPOFACTURA: TSmallintField;
    qFacComIDPUNTOVENTA: TIntegerField;
    qFacComDIAHORA: TDateTimeField;
    qFacComPERIODO: TDateField;
    qFacComFECHAF: TDateField;
    qFacComFECHAV: TDateField;
    qFacComNROFACTURA: TMDOStringField;
    qFacComCOMPREF: TMDOStringField;
    qFacComIDCOMPREF: TIntegerField;
    qFacComCAIPROV: TMDOStringField;
    qFacComPROVEEDOR: TIntegerField;
    qFacComTIPOIVA: TSmallintField;
    qFacComCANTARTIC: TSmallintField;
    qFacComPRCBONIF: TMDOBCDField;
    qFacComBONIFICACION: TMDOBCDField;
    qFacComNETO: TMDOBCDField;
    qFacComEXENTO: TMDOBCDField;
    qFacComNOCOMPUTABLES: TMDOBCDField;
    qFacComALCPERCEPCION: TMDOBCDField;
    qFacComRETGAN: TMDOBCDField;
    qFacComRETIBTO: TMDOBCDField;
    qFacComRETLH: TMDOBCDField;
    qFacComIVAALICUOTA1: TMDOBCDField;
    qFacComIVAALICUOTA2: TMDOBCDField;
    qFacComIVAOTALC: TMDOBCDField;
    qFacComTOTAL: TMDOBCDField;
    qFacComCONTADO: TMDOBCDField;
    qFacComTICKETS: TMDOBCDField;
    qFacComCTACTE: TMDOBCDField;
    qFacComCHEQUEPROP: TMDOBCDField;
    qFacComCHEQUETER: TMDOBCDField;
    qFacComOTROSPAGOS: TMDOBCDField;
    qFacComFECHACAN: TDateField;
    qFacComFECHAIS: TDateField;
    qFacComUSUARIO: TIntegerField;
    qFacComTIPOFACSTR: TMDOStringField;
    qFacComNOMBRE: TMDOStringField;
    qFacComDOCUMENTO: TMDOStringField;
    qFacComNOMUSUARIO: TMDOStringField;
    qFacComNROCOMPOP: TMDOStringField;
    qFacComRETIVA: TMDOBCDField;
    qFacComTIPOOP: TSmallintField;
    qFacComSTATE: TSmallintField;
    qFacComFECPRELIQDESDE: TDateField;
    qFacComFECPRELIQHASTA: TDateField;
    qFacComDETALLE: TMDOStringField;
    qFacComIDEMPRESA: TIntegerField;
    qFacComIDENTTARMUT: TIntegerField;
    qFacComIDNUMEROLIQ: TIntegerField;
    qFacComCOMISION: TMDOBCDField;
    qFacComIDPERIODO: TIntegerField;

    dsItemsFac: TDataSource;
    qItemsFC: TMDODataSet;
    qItemsFCIDFACTURA: TIntegerField;
    qItemsFCIDSUCURSAL: TIntegerField;
    qItemsFCIDPUNTOVENTA: TIntegerField;
    qItemsFCIDITEM: TSmallintField;
    qItemsFCIDARTICULO: TIntegerField;
    qItemsFCTALLE: TIntegerField;
    qItemsFCFECHAF: TDateField;
    qItemsFCCANTIDAD: TMDOBCDField;
    qItemsFCPRECIONETO: TMDOBCDField;
    qItemsFCPRECIOFINAL: TMDOBCDField;
    qItemsFCPRECIOTOTAL: TMDOBCDField;
    qItemsFCEXENTO: TMDOBCDField;
    qItemsFCIMPINT: TMDOBCDField;
    qItemsFCMTOIVA: TMDOBCDField;
    qItemsFCIDALCIVA: TIntegerField;
    qItemsFCALICUOTAIVA: TMDOBCDField;
    qItemsFCMARCA: TMDOStringField;
    qItemsFCDETALLE: TMDOStringField;
    qItemsFCCOLOR: TMDOStringField;
    qItemsFCSTATE: TSmallintField;
    qItemsFCPRCDCTO: TMDOBCDField;
    qItemsFCDESCUENTO: TMDOBCDField;
    qItemsFCSECTOR: TIntegerField;

    qActItems: TMDOQuery;

    dsFiltroFac: TDataSource;
    qComprobantes: TMDOQuery;
    qComprobantesIDFACTURA: TIntegerField;
    qComprobantesIDSUCURSAL: TIntegerField;
    qComprobantesIDPUNTOVENTA: TIntegerField;
    qComprobantesFECHAF: TDateField;
    qComprobantesDESCCORTA: TMDOStringField;
    qComprobantesNROFACTURA: TMDOStringField;
    qComprobantesNOMBRE: TMDOStringField;
    qComprobantesTOTAL: TMDOBCDField;
    qComprobantesNOMBRESUC: TMDOStringField;
    qComprobantesPROVEEDOR: TIntegerField;
    qComprobantesDETEMP: TMDOStringField;

    pmImprimir: TPopupMenu;
    ComprobanteFC: TMenuItem;
    EtiquetasFC: TMenuItem;
    pcEgresos: TRzPageControl;
    tsComprobantes: TRzTabSheet;
    tsBusqueda: TRzTabSheet;
    gbHeader: TRzGroupBox;
    bvlFacCom1: TBevel;
    lblNroCpm: TLabel;
    lblTipoComp: TLabel;
    lblFecha: TLabel;
    lblNroComp: TLabel;
    lblProv: TLabel;
    bvlFacCom2: TBevel;
    lblProveedor: TDBText;
    lblNroFac: TDBText;
    lblPeriodo: TLabel;
    lblCaiProv: TLabel;
    lblIdCompRef: TDBText;
    lblSucursal: TLabel;
    lblCompRef: TLabel;
    lblTipoOp: TLabel;
    lblDetEmp: TLabel;
    edtFechaF: TwwDBDateTimePicker;
    edtNroFactura: TwwDBEdit;
    edtProv: TwwDBEdit;
    cbTipoComp: TwwDBLookupCombo;
    edtPeriodo: TwwDBEdit;
    edtCaiProv: TwwDBEdit;
    cbSucur: TwwDBLookupCombo;
    edtCompRef: TwwDBEdit;
    cbTipoOp: TwwDBComboBox;
    btnProveedores: TRzBitBtn;
    cbDetEmp: TwwDBLookupCombo;
    gbItemsFC: TRzGroupBox;
    gViewProd: TwwDBGrid;
    gbFoot: TRzGroupBox;
    gbTotales: TRzGroupBox;
    lblNeto: TLabel;
    lblExento: TLabel;
    lblImpInt: TLabel;
    lblIvaOtAlc: TLabel;
    lblBonif: TLabel;
    lblIvaTDif: TLabel;
    lblTGral: TLabel;
    edtNeto: TwwDBEdit;
    edtExento: TwwDBEdit;
    edtNoComputables: TwwDBEdit;
    edtIvaOtAlc: TwwDBEdit;
    edtTotal: TwwDBEdit;
    edtBonif: TwwDBEdit;
    edtIvaTDif: TwwDBEdit;
    edtIvaTGral: TwwDBEdit;
    gbCtaCte: TRzGroupBox;
    lblIdOrdPago: TLabel;
    lblCtaCte: TLabel;
    lblContado: TLabel;
    lblTickets: TLabel;
    btnAdd_CC: TRzBitBtn;
    edtCtaCte: TwwDBEdit;
    edtIdOrdPag: TwwDBEdit;
    edtContado: TwwDBEdit;
    edtTickets: TwwDBEdit;
    gbRetenciones: TRzGroupBox;
    lblRetIB: TLabel;
    lblRetLH: TLabel;
    lblGanancias: TLabel;
    lblPersep: TLabel;
    lblPrcPerc: TLabel;
    edtRetGan: TwwDBEdit;
    edtRetLH: TwwDBEdit;
    edtRetIB: TwwDBEdit;
    edtPercep: TwwDBEdit;
    edtPrcPercep: TwwDBEdit;
    gbNavComp: TRzGroupBox;
    lblItems: TLabel;
    lblNomUsuario: TDBText;
    lblUsr: TLabel;
    lblDiaHora: TDBText;
    lblDetObsOpr: TLabel;
    pnlNavFC: TRzPanel;
    btnSaveFC: TRzBitBtn;
    btnBorrarFC: TRzBitBtn;
    btnCancelFC: TRzBitBtn;
    btnBuscarFC: TRzBitBtn;
    btnSalirFC: TRzBitBtn;
    btnEditFC: TRzBitBtn;
    btnImprimir: TRzMenuButton;
    edtCantArt: TwwDBEdit;
    edtDetObsOpr: TwwDBEdit;
    pnlHeadFiltro: TRzPanel;
    lblDesde: TLabel;
    lblHasta: TLabel;
    lblEntidad: TLabel;
    lblComp: TLabel;
    lblBusTComp: TLabel;
    btnFiltrar: TRzBitBtn;
    edtDesde: TRzDateTimeEdit;
    edtHasta: TRzDateTimeEdit;
    edtEntidad: TRzNumericEdit;
    edtComp: TRzMaskEdit;
    cbTipoEgresos: TRzComboBox;
    btnExpBuscados: TRzBitBtn;
    btnVolverAComp: TRzBitBtn;
    gFacturas: TwwDBGrid;

    gbDatos_PCL: TRzGroupBox;
    lblNroLiq: TDBText;
    lblFecPresLMDesde: TDBText;
    lblFecPresLMHasta: TDBText;
    lblPrcComision: TDBText;
    lblEntTarMutTar: TDBText;
    lblTotal: TLabel;
    btnRepPreLiq: TRzBitBtn;
    qItemsFCIDREMITO: TIntegerField;
    qItemsFCIDSUCREM: TIntegerField;
    qItemsFCIDPTOREM: TIntegerField;
    qItemsFCDCTOSTK: TSmallintField;
    qItemsFCENREMITO: TSmallintField;
    qItemsFCIDITMREM: TSmallintField;
    qItemsFCDETREMFAC: TStringField;
    qItemsFCCANT_REM: TMDOBCDField;

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtProvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure edtTotalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtContadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCtaCteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gViewProdKeyPress(Sender: TObject; var Key: Char);
    procedure edtTotalKeyPress(Sender: TObject; var Key: Char);
    procedure gViewProdDblClick(Sender: TObject);
    procedure btnAdd_CCClick(Sender: TObject);
    procedure qFacComPERIODOGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure qFacComPERIODOSetText(Sender: TField; const Text: String);
    procedure qFacComAfterPost(DataSet: TDataSet);
    procedure qFacComBeforeEdit(DataSet: TDataSet);
    procedure qItemsFCTALLEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure qItemsFCTALLESetText(Sender: TField; const Text: String);
    procedure btnBorrarFCClick(Sender: TObject);
    procedure btnBuscarFCClick(Sender: TObject);
    procedure btnSalirFCClick(Sender: TObject);
    procedure btnSaveFCClick(Sender: TObject);
    procedure btnCancelFCClick(Sender: TObject);
    procedure btnEditFCClick(Sender: TObject);
    procedure qFacComAfterClose(DataSet: TDataSet);
    procedure qFacComAfterOpen(DataSet: TDataSet);
    procedure lblProveedorDblClick(Sender: TObject);
    procedure qItemsFCCalcFields(DataSet: TDataSet);
    procedure ComprobanteFCClick(Sender: TObject);
    procedure EtiquetasFCClick(Sender: TObject);
    procedure qFacComFECPRELIQDESDEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnProveedoresClick(Sender: TObject);
    procedure qFacComBeforePost(DataSet: TDataSet);
    procedure qFacComAfterScroll(DataSet: TDataSet);
    procedure qFacComNROCOMPOPGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnFiltrarClick(Sender: TObject);
    procedure gFacturasDblClick(Sender: TObject);
    procedure btnExpBuscadosClick(Sender: TObject);
    procedure btnVolverACompClick(Sender: TObject);
    procedure edtCompExit(Sender: TObject);
    procedure edtEntidadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pcEgresosClose(Sender: TObject; var AllowClose: Boolean);
    procedure gFacturasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qFacComIDENTTARMUTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qFacComIDNUMEROLIQGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qFacComFECPRELIQHASTAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qFacComCOMISIONGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnRepPreLiqClick(Sender: TObject);
    procedure qItemsFCENREMITOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
                                                     private
    { private declarations }
    BorrandoComprobante: Boolean;
    IdFacAnt, IdSucAnt, IdPtoAnt, ProvAct, ProvAnt: Integer;
    FechaAnt: TDate;
    procedure CargarRegistro;
    function FacComLast(IdS, IdP: Integer): Integer;
    procedure Reparar_PreLiq;
  public
    { public declarations }
  end;

var
  frmViewFacC: TfrmViewFacC;

  procedure Get_FacC(IdFactura, IdSucursal, IdPunto: Integer);

implementation

uses udmGestion, uBuscaFac, uProveedores, udmSaveFile, uConfiguracion,
     uSelecUsuario, uClaveMod, uABMArticulos, uBeforeDelete, uImpCodBar, uViewMT;

{$R *.DFM}
procedure Get_FacC(IdFactura, IdSucursal, IdPunto: Integer);
begin
  frmViewFacC := TfrmViewFacC.Create(nil);
  with frmViewFacC do
  begin
    qFacCom.Close;
    if IdFactura > NoEncontrado then
    begin
      qFacCom.ParamByName('IdFactura').AsInteger := IdFactura;
      qFacCom.ParamByName('IdSucursal').AsInteger:= IdSucursal;
      qFacCom.ParamByName('IdPunto').AsInteger:= IdPunto;
    end
    else begin
      qFacCom.ParamByName('IdFactura').AsInteger := FacComLast(IdSucursal, IdPunto);
      qFacCom.ParamByName('IdSucursal').AsInteger:= IdSucursal;
      qFacCom.ParamByName('IdPunto').AsInteger:= IdPunto;
    end;
    qFacCom.Open;
    ShowModal;
  end;
end;

procedure TfrmViewFacC.FormCreate(Sender: TObject);
begin
  BorrandoComprobante := False;
  cbTipoEgresos.Clear;
  cbTipoEgresos.AddObject('<TODOS> ', TObject(0));
  dmGestion.TiposCompCmp.First;
  while not dmGestion.TiposCompCmp.Eof do
  begin
    cbTipoEgresos.AddObject(dmGestion.TiposCompCmpDetalle.AsString,
                   TObject(dmGestion.TiposCompCmpTipoCom.AsInteger));
    dmGestion.TiposCompCmp.Next;
  end;
  dmGestion.Empresas.Open;
  cbTipoEgresos.ItemIndex := 0;
  edtHasta.Date := Date;
  edtDesde.Date := StartOfTheMonth(Date);
end;

procedure TfrmViewFacC.FormShow(Sender: TObject);
begin
 //
end;

procedure TfrmViewFacC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmViewFacC.Reparar_PreLiq;
var
  q: TMDOQuery;
  f, s, p: Integer;
begin
  if qFacComTIPOOP.AsInteger = fcLiqPre then
  begin
    try
      f := qFacComIDFACTURA.AsInteger;
      s := qFacComIDSUCURSAL.AsInteger;
      p := qFacComIDPUNTOVENTA.AsInteger;
      try
        qItemsFC.First;
        If not qFacCom.Transaction.InTransaction then
           qFacCom.Transaction.StartTransaction;
        while not qItemsFC.Eof do
        begin
          try
            q := TMDOQuery.Create(nil);
            q.Database := qFacCom.Database;
            q.Transaction := qFacCom.Transaction;
            q.SQL.Add('UpDate MovCuotas ');
            case qFacComTIPOFACTURA.AsInteger of
              PresentacionTM: q.SQL.Add('   Set Estado = 3 '); // Presentada
              LiquidacionA,
              LiquidacionC  : q.SQL.Add('   Set Estado = 1 '); // Pagada
            end;
            q.SQL.Add('Where (IdMovCred = :IdM) And ');
            q.SQL.Add('      (IdSucursal = :IdS) And ');
            q.SQL.Add('      (NroCuota = :IdC) And ');
            q.SQL.Add('      (IdCliente = :IdE) And ');
            q.SQL.Add('      (IdTarjeta = :IdT) And ');
            q.SQL.Add('      (Estado = 0) ');
            q.ParamByName('IdM').AsInteger := qItemsFCTALLE.AsInteger;
            q.ParamByName('IdS').AsInteger := qItemsFCSECTOR.AsInteger;
            q.ParamByName('IdC').AsInteger := qItemsFCCANTIDAD.AsInteger;
            q.ParamByName('IdE').AsInteger := qItemsFCIDALCIVA.AsInteger;
            q.ParamByName('IdT').AsInteger := qFacComIDENTTARMUT.AsInteger;
            q.ExecSQL;
          finally
            q.Free;
          end;
          qItemsFC.Next;
        end;
        if qFacComNROFACTURA.AsString = '0000-00000000' then
        begin
          qFacCom.Edit;
          qFacComNROFACTURA.AsString := Format('%.4d-%.8d',[qFacComIDSUCURSAL.AsInteger,qFacComIDNUMEROLIQ.AsInteger]);
          qFacCom.Post;
        end;
        qFacCom.Transaction.Commit
      except
        on E:Exception do
        begin
          qFacCom.Transaction.Rollback;
          raise EUsuario.Create(E.Message);
        end;
      end;
    finally
      qFacCom.ParamByName('IDFACTURA').AsInteger := f;
      qFacCom.ParamByName('IDSUCURSAL').AsInteger := s;
      qFacCom.ParamByName('IDPUNTO').AsInteger := p;
      qFacCom.Open;
    end;
  end;
end;

procedure TfrmViewFacC.edtProvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F3 then
  begin
    ProvAct := Busca_Pro;
    if ProvAct > NoEncontrado then
    begin
      qFacCom.Edit;
      qFacComProveedor.AsInteger := ProvAct;
    end;
  end;
  if Key = VK_Escape then
    btnSalirFC.SetFocus;
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmViewFacC.CargarRegistro;
var
  Actual: Integer;
begin
  FillChar(Factura, SizeOf(TFactura), 0);
  FillChar(ItemsFiscal, SizeOf(TBody_Fiscal), 0);
  with Factura do
  begin
    if qFacComTipoFactura.AsInteger = RemitoX then
      IdRemito := qFacComIdFactura.AsInteger
    else
      IdFactura:= qFacComIdFactura.AsInteger;
    IdSucursal := qFacComIdSucursal.AsInteger;
    TipoFactura := qFacComTipoFactura.AsInteger;
    TipoFacStr := qFacComTIPOFACSTR.AsString;
    FechaF := qFacComFechaF.AsDateTime;
    FechaI := 0;
    PuntoVta := 0;
    IdPuntoVenta := 0;
    NroFactura := qFacComNroFactura.AsString;
    CompRef := qFacComCompRef.AsString;
    IdCompRef := 0;
    Entidad := qFacComProveedor.AsInteger;
    GetDatosEnt(qFacComProveedor.AsInteger, qFacComIdSucursal.AsInteger, 2, Datos_Ent);
    NombreEnt := Datos_Ent.Nombre;
    NombreFan := Datos_Ent.NomFan;
    TipoIvaStr := Datos_Ent.DetIva;
    TipoDocStr := Datos_Ent.DetDoc;
    NroDocumento := Datos_Ent.Documento;
    Direccion := Datos_Ent.Direccion;
    Localidad := Datos_Ent.Localidad;
    Provincia := Datos_Ent.Provincia;
    Telefono := Datos_Ent.Telefono;
    CodPostal := Datos_Ent.CodPostal;
    TipoDoc := Datos_Ent.TipoDoc;
    TipoIva := qFacComTIPOIVA.AsInteger;
    Descuento := qFacComBonificacion.AsFloat;
    Neto := qFacComNeto.AsCurrency;
    Exento := qFacComExento.AsCurrency;
    NoComputables := qFacComNoComputables.AsCurrency;
    AlicuotaIva1 := GetAlcIva(1);
    IvaAlicuota1 := qFacComIvaAlicuota1.AsCurrency;
    AlicuotaIva2 := GetAlcIva(2);
    IvaAlicuota2 := qFacComIVAALICUOTA2.AsCurrency;
    IvaOtAlc := qFacComIVAOTALC.AsCurrency;
    Total := qFacComTotal.AsCurrency;
    Contado := 0;
    Tarjeta := 0;
    CtaCte := 0;
    Credito := 0;
    ChequeTer := 0;
    Empleado := qFacComUsuario.AsInteger;
    NombreEmpleado := qFacComNOMUSUARIO.AsString;
    Imprimir_Totales := True;
    Detalle := qFacComDETALLE.AsString;
  end;

  try
    qItemsFC.DisableControls;
    qItemsFC.First;
    Actual := 0;
    while not qItemsFC.Eof do
    begin
      Inc(Actual);
      ItemsFiscal[Actual].IdProducto := qItemsFCIdArticulo.AsInteger;
      ItemsFiscal[Actual].CodProd := qItemsFCIdArticulo.AsString;
      ItemsFiscal[Actual].Marca := qItemsFCMarca.AsString;
      ItemsFiscal[Actual].Detalle := qItemsFCDetalle.AsString;
      ItemsFiscal[Actual].DescProd := qItemsFCMarca.AsString +' '+ qItemsFCDetalle.AsString;
      ItemsFiscal[Actual].ListaStr := '';
      ItemsFiscal[Actual].Color := qItemsFCColor.AsString;
      ItemsFiscal[Actual].IdPuntoVenta := 0;
      ItemsFiscal[Actual].Cantidad := qItemsFCCantidad.AsFloat;
      ItemsFiscal[Actual].Bonificacion := 0;
      ItemsFiscal[Actual].Descuento := 0;
      ItemsFiscal[Actual].PrecioNetoT := qItemsFCPrecioNeto.AsCurrency;
      ItemsFiscal[Actual].PrecioFinal := qItemsFCPrecioFinal.AsCurrency;
      ItemsFiscal[Actual].PrecioTotal := qItemsFCPrecioTotal.AsCurrency;
      ItemsFiscal[Actual].Exento := qItemsFCExento.AsCurrency;
      ItemsFiscal[Actual].NoComputable := qItemsFCImpInt.AsCurrency;
      ItemsFiscal[Actual].CoefImpInt := 0;
      ItemsFiscal[Actual].MtoIva := qItemsFCMtoIva.AsCurrency;
      ItemsFiscal[Actual].IdAlcIva := qItemsFCIdAlcIva.AsInteger;
      ItemsFiscal[Actual].AlicuotaIva := qItemsFCAlicuotaIva.AsFloat;
      ItemsFiscal[Actual].TIvaEnt := 0;
      ItemsFiscal[Actual].IdAlcIB := 0;
      ItemsFiscal[Actual].IngBto := 0;
      ItemsFiscal[Actual].Servicio := False;
      qItemsFC.Next;
    end;
  finally
    qItemsFC.EnableControls;
  end;
  Factura.CantArtic := Actual;
end;

procedure TfrmViewFacC.edtTotalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmViewFacC.edtCompExit(Sender: TObject);
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

procedure TfrmViewFacC.edtContadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmViewFacC.edtCtaCteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmViewFacC.edtEntidadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F3 then
  begin
    ProvAct := Busca_Pro;
    if ProvAct > NoEncontrado then
      edtEntidad.Text := IntToStr(ProvAct);
  end;
  if Key = VK_Escape then
    btnSalirFC.SetFocus;
end;

procedure TfrmViewFacC.gViewProdKeyPress(Sender: TObject; var Key: Char);
begin
  if (gViewProd.SelectedField.DataType in [ftFloat, ftCurrency]) and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

procedure TfrmViewFacC.edtTotalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmViewFacC.gFacturasDblClick(Sender: TObject);
begin
  if not qComprobantes.IsEmpty then
  begin
    qFacCom.Close;
    qFacCom.ParamByName('IdFactura').AsInteger  := qComprobantesIDFACTURA.AsInteger;
    qFacCom.ParamByName('IdSucursal').AsInteger := qComprobantesIDSUCURSAL.AsInteger;
    qFacCom.ParamByName('IdPunto').AsInteger := qComprobantesIDPUNTOVENTA.AsInteger;
    qFacCom.Open;
    if not qFacCom.IsEmpty then
      tsComprobantes.Show;
  end;
end;

procedure TfrmViewFacC.gFacturasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Shift = [] then
  begin
    if (Key = VK_RETURN) and
       (not qComprobantes.IsEmpty) then
    begin
      qFacCom.Close;
      qFacCom.ParamByName('IdFactura').AsInteger  := qComprobantesIDFACTURA.AsInteger;
      qFacCom.ParamByName('IdSucursal').AsInteger := qComprobantesIDSUCURSAL.AsInteger;
      qFacCom.ParamByName('IdPunto').AsInteger := qComprobantesIDPUNTOVENTA.AsInteger;
      qFacCom.Open;
      if not qFacCom.IsEmpty then
        tsComprobantes.Show;
    end;
  end;
end;

procedure TfrmViewFacC.gViewProdDblClick(Sender: TObject);
var
  f, s, p: Integer;
begin
  if qFacComTIPOOP.AsInteger = fcCompra then
  begin
    f := qFacComIDFACTURA.AsInteger;
    s := qFacComIDSUCURSAL.AsInteger;
    p := qFacComIDPUNTOVENTA.AsInteger;
    frmABMArticulos := TfrmABMArticulos.Create(nil);
    frmABMArticulos.Cual_Art := qItemsFCIdArticulo.AsInteger;
    frmABMArticulos.ShowModal;
    qFacCom.Close;
    qFacCom.ParamByName('IdFactura').AsInteger := f;
    qFacCom.ParamByName('IdSucursal').AsInteger:= s;
    qFacCom.ParamByName('IdPunto').AsInteger := p;
    qFacCom.Open;
  end;
  if qFacComTIPOOP.AsInteger = fcLiqPre then
  begin
    Case qFacComTIPOFACTURA.AsInteger of
      PresentacionTM: Get_ModT(qItemsFCEXENTO.AsInteger, qItemsFCMTOIVA.AsInteger,
                               qFacComIdEntTarMut.AsInteger, qItemsFCTalle.AsInteger);
      LiquidacionA,
      LiquidacionC:   Get_ModT(qItemsFCEXENTO.AsInteger, qItemsFCMTOIVA.AsInteger,
                               qFacComIdEntTarMut.AsInteger, qItemsFCTalle.AsInteger);
    End;
  end;
end;

procedure TfrmViewFacC.btnAdd_CCClick(Sender: TObject);
begin
  if not Check_Seg(Nivel_Mod, 'Cta Cte', AutorDto) then
    raise EUsuario.Create('No esta habilitado para esta función');
  if Application.MessageBox(PChar('Esta seguro de agregar el'#13#10'Comprobante Nº '+ qFacComNroFactura.AsString), 'Cuenta Corriente', MB_ICONQUESTION+MB_YESNO) = ID_YES then
  begin
    FillChar(DatosPago, sizeOf(TDatosPagos), 0);
    DatosPago.IdEntidad := qFacComProveedor.AsInteger;
    DatosPago.TipoComprobante := qFacComTipoFactura.AsInteger;
    DatosPago.FechaOp := qFacComFechaF.AsDateTime;
    DatosPago.IdComprobante := qFacComIdFactura.AsInteger;
    DatosPago.IdSucursal := qFacComIdSucursal.AsInteger;
    DatosPago.IdEmpresa := qFacComIDEMPRESA.AsInteger;
    DatosPago.NroComprobante := qFacComNroFactura.AsString;
    DatosPago.PagosCtaCte.FechaVence := qFacComFechaF.AsDateTime;
    DatosPago.PagosCtaCte.TotalCtaCte := qFacComTotal.AsCurrency;
    dmSaveFile.DoPagoCuentaProv(DatosPago);
  end;
end;

procedure TfrmViewFacC.qFacComPERIODOGetText(Sender: TField; var Text: String; DisplayText: Boolean);
var
  Anio, Mes, Dia: Word;
begin
  try
    DecodeDate(Sender.Value, Anio, Mes, Dia);
    if Anio > 1980 then
      Text := IntToStr(Mes) + '/' + IntToStr(Anio)
    else
      Text := '';
  except
    Text := '';
  end;
end;

procedure TfrmViewFacC.qFacComPERIODOSetText(Sender: TField; const Text: String);
begin
  try
    Sender.Value := StrToDate('01/' + Text);
  except
    Sender.Clear;
    raise;
  end;
end;

procedure TfrmViewFacC.qFacComAfterPost(DataSet: TDataSet);
var
  q: TMDOQuery;
  f, s, p: Integer;
begin
  try
    f := qFacComIdFactura.AsInteger;
    s := qFacComIdSucursal.AsInteger;
    p := qFacComIDPUNTOVENTA.AsInteger;
    try
      if not qFacCom.Transaction.InTransaction then
        qFacCom.Transaction.StartTransaction;
      if qFacComCantArtic.AsInteger > 0 then
      begin
        qActItems.Close;
        qActItems.ParamByName('IdFactura').AsInteger := IdFacAnt;
        qActItems.ParamByName('IdSucursal').AsInteger := IdSucAnt;
        qActItems.ParamByName('IdPuntoVenta').AsInteger := IdPtoAnt;
        qActItems.ParamByName('NewIdSucursal').AsInteger := qFacComIdSucursal.AsInteger;
        qActItems.ParamByName('NewFechaF').AsDate := qFacComFechaF.AsDateTime;
        qActItems.ExecSQL;

        if (qFacComTIPOOP.AsInteger = fcCompra) and
           (qFacComIdSucursal.AsInteger <> IdSucAnt) then
        begin
          qItemsFC.First;
          while not qItemsFC.Eof do
          begin
            Update_Parts(qItemsFCIdArticulo.AsInteger, IdSucAnt,
                         qItemsFCCantidad.AsFloat, qItemsFCTalle.AsInteger,
                         qFacComTipoFactura.AsInteger, 0, False, False,
                         qItemsFC.Database, qItemsFC.Transaction);
            Update_Parts(qItemsFCIdArticulo.AsInteger, qFacComIdSucursal.AsInteger,
                         qItemsFCCantidad.AsFloat, qItemsFCTalle.AsInteger,
                         qFacComTipoFactura.AsInteger, 1, False, False,
                         qItemsFC.Database, qItemsFC.Transaction);
            qItemsFC.Next;
          end;
        end;
      end;
      qFacCom.Transaction.Commit;
    except
      on E:Exception do
      begin
        qFacCom.Transaction.Rollback;
        raise EUsuario.Create(E.Message);
      end;
    end;
  finally
    qFacCom.Close;
    qFacCom.ParamByName('IdFactura').AsInteger := f;
    qFacCom.ParamByName('IdSucursal').AsInteger:= s;
    qFacCom.ParamByName('IdPunto').AsInteger := p;
    qFacCom.Open;
  end;
end;

procedure TfrmViewFacC.qFacComAfterScroll(DataSet: TDataSet);
begin
  EtiquetasFC.Enabled := False;
  gViewProd.Selected.Clear;
  if qFacComTIPOOP.AsInteger = fcGastos then
  begin
    gbItemsFC.Caption := 'Cuentas de Gastos';
    gViewProd.Selected.Add('IdArticulo'#9'6'#9'Código'#9'F'#9'Imputación');
    gViewProd.Selected.Add('Marca'#9'16'#9'Código Contable'#9'F'#9'Imputación');
    gViewProd.Selected.Add('Detalle'#9'50'#9'Detalle'#9'F'#9'Imputación');
    gViewProd.Selected.Add('Cantidad'#9'12'#9'Porcentaje'#9'F'#9'Imputación');
    gViewProd.Selected.Add('PrecioTotal'#9'12'#9'Total'#9'F'#9'Proporción');
    gViewProd.Selected.Add('AlicuotaIva'#9'8'#9'Alicuota'#9'F'#9'Proporción');
    gbDatos_PCL.Visible := False;
  end
  else begin
    if qFacComTIPOOP.AsInteger = fcLiqPre then
    begin
      Case qFacComTIPOFACTURA.AsInteger of
         PresentacionTM: begin
           gbItemsFC.Caption := 'Movimientos Presentados';
           gViewProd.Selected.Add('Color'#9'12'#9'Sucursal'#9'F'#9'Detalle Operaciones');
           gViewProd.Selected.Add('Talle'#9'7'#9'NºOP'#9'F'#9'Detalle Operaciones');
           gViewProd.Selected.Add('Marca'#9'30'#9'Operación'#9'F'#9'Detalle Operaciones');
           gViewProd.Selected.Add('IdAlcIva'#9'6'#9'NºCliente'#9'F'#9'Detalle Operaciones');
           gViewProd.Selected.Add('Detalle'#9'25'#9'Nombre / RZ'#9'F'#9'Detalle Operaciones');
           gViewProd.Selected.Add('Cantidad'#9'5'#9'NºCta'#9'F'#9'Detalle Operaciones');
           gViewProd.Selected.Add('PrecioFinal'#9'12'#9'Cuota'#9'F'#9'Detalle Operaciones');
           gViewProd.Selected.Add('PrecioTotal'#9'12'#9'Total'#9'F'#9'Detalle Operaciones');
           lblTotal.Caption:= 'Comisión';
           lblNeto.Caption := 'Neto  OP';
           lblBonif.Caption:= 'Total OP';
         end;
         LiquidacionA: begin
           gbItemsFC.Caption := 'Movimientos Liquidados';
           gViewProd.Selected.Add('IdArticulo'#9'5'#9'Entidad'#9'F'#9'Detalle Liquidación');
           gViewProd.Selected.Add('IdAlcIva'#9'6'#9'NºLiq'#9'F'#9'Detalle Liquidación');
           gViewProd.Selected.Add('Detalle'#9'25'#9'Nombre / RZ'#9'F'#9'Detalle Liquidación');
           gViewProd.Selected.Add('PrecioNeto'#9'8'#9'Neto'#9'F'#9'Detalle Liquidación');
           gViewProd.Selected.Add('PrecioFinal'#9'8'#9'Comisión'#9'F'#9'Detalle Liquidación');
           gViewProd.Selected.Add('PrecioTotal'#9'9'#9'Total'#9'F'#9'Detalle Liquidación');
           lblTotal.Caption:= 'Com. Total';
           lblNeto.Caption := 'Com. Neta ';
           lblBonif.Caption:= 'Liquidado';
         end;
         LiquidacionC: begin
           gbItemsFC.Caption := 'Movimientos Liquidados';
           gViewProd.Selected.Add('IdArticulo'#9'5'#9'Entidad'#9'F'#9'Detalle Liquidación');
           gViewProd.Selected.Add('IdAlcIva'#9'6'#9'NºLiq'#9'F'#9'Detalle Liquidación');
           gViewProd.Selected.Add('Detalle'#9'25'#9'Nombre / RZ'#9'F'#9'Detalle Liquidación');
           gViewProd.Selected.Add('PrecioNeto'#9'8'#9'Neto'#9'F'#9'Detalle Liquidación');
           gViewProd.Selected.Add('PrecioFinal'#9'8'#9'Comisión'#9'F'#9'Detalle Liquidación');
           gViewProd.Selected.Add('PrecioTotal'#9'9'#9'Total'#9'F'#9'Detalle Liquidación');
           lblTotal.Caption:= 'Com. Total';
           lblNeto.Caption := 'Com. Neta ';
           lblBonif.Caption:= 'Liquidado';
         end;
      End;
      gbDatos_PCL.Visible := True;
    end
    else begin
      gbDatos_PCL.Visible := False;
      EtiquetasFC.Enabled := True;;
      if qFacComTIPOOP.AsInteger = fcCompra then
      begin
        gbItemsFC.Caption := 'Items Comprados';
        if Control_Talles then
        begin
          gViewProd.Selected.Add('IdArticulo'#9'5'#9'Código'#9'F'#9'Producto');
          gViewProd.Selected.Add('Marca'#9'10'#9'Marca'#9'F'#9'Producto');
          gViewProd.Selected.Add('Detalle'#9'28'#9'Detalle'#9'F'#9'Producto');
          gViewProd.Selected.Add('Talle'#9'3'#9'M'#9'F'#9'Producto');
          gViewProd.Selected.Add('Color'#9'5'#9'Color'#9'F'#9'Producto');
          gViewProd.Selected.Add('Cantidad'#9'5'#9'Cant'#9'F'#9'Producto');
          gViewProd.Selected.Add('PRCDCTO'#9'7'#9'%Dcto'#9'F'#9'Precios');
          gViewProd.Selected.Add('PrecioNeto'#9'8'#9'Base'#9'F'#9'Precios');
          gViewProd.Selected.Add('PrecioFinal'#9'8'#9'Costo'#9'F'#9'Precios');
          gViewProd.Selected.Add('PrecioTotal'#9'9'#9'Total'#9'F'#9'Precios');
          gViewProd.Selected.Add('AlicuotaIva'#9'7'#9'Alc'#9'F'#9'Impuestos');
          gViewProd.Selected.Add('MtoIva'#9'8'#9'Iva'#9'F'#9'Impuestos');
          gViewProd.Selected.Add('ImpInt'#9'8'#9'No Comp'#9'F'#9'Impuestos');
          gViewProd.Selected.Add('EnRemito'#9'2'#9'Rm'#9'F'#9'');
        end
        else begin
          gViewProd.Selected.Add('IdArticulo'#9'5'#9'Código'#9'F'#9'Producto');
          gViewProd.Selected.Add('Marca'#9'10'#9'Marca'#9'F'#9'Producto');
          gViewProd.Selected.Add('Detalle'#9'25'#9'Detalle'#9'F'#9'Producto');
          gViewProd.Selected.Add('Color'#9'5'#9'Color'#9'F'#9'Producto');
          gViewProd.Selected.Add('Cantidad'#9'5'#9'Cant'#9'F'#9'Producto');
          gViewProd.Selected.Add('PRCDCTO'#9'7'#9'%Dcto'#9'F'#9'Precios');
          gViewProd.Selected.Add('PrecioNeto'#9'8'#9'Base'#9'F'#9'Precios');
          gViewProd.Selected.Add('PrecioFinal'#9'8'#9'Costo'#9'F'#9'Precios');
          gViewProd.Selected.Add('PrecioTotal'#9'9'#9'Total'#9'F'#9'Precios');
          gViewProd.Selected.Add('AlicuotaIva'#9'8'#9'Alc IVA'#9'F'#9'Impuestos');
          gViewProd.Selected.Add('MtoIva'#9'8'#9'IVA'#9'F'#9'Impuestos');
          gViewProd.Selected.Add('ImpInt'#9'8'#9'No Comp'#9'F'#9'Impuestos');
          gViewProd.Selected.Add('EnRemito'#9'2'#9'Rm'#9'F'#9'');
        end;
      end;

      if qFacComTIPOOP.AsInteger = fcRemito then
      begin
        gbItemsFC.Caption := 'Items Recibidos';
        if Control_Talles then
        begin
          gViewProd.Selected.Add('IdArticulo'#9'6'#9'Código'#9'F'#9'Producto');
          gViewProd.Selected.Add('Marca'#9'15'#9'Marca'#9'F'#9'Producto');
          gViewProd.Selected.Add('Detalle'#9'40'#9'Detalle'#9'F'#9'Producto');
          gViewProd.Selected.Add('Talle'#9'5'#9'M'#9'F'#9'Producto');
          gViewProd.Selected.Add('Color'#9'7'#9'Color'#9'F'#9'Producto');
          gViewProd.Selected.Add('Cantidad'#9'8'#9'Cantidad'#9'F'#9'Producto');
          gViewProd.Selected.Add('Cant_Rem'#9'8'#9'Pendiente'#9'F'#9'Producto');
        end
        else begin
          gViewProd.Selected.Add('IdArticulo'#9'6'#9'Código'#9'F'#9'Producto');
          gViewProd.Selected.Add('Marca'#9'15'#9'Marca'#9'F'#9'Producto');
          gViewProd.Selected.Add('Detalle'#9'40'#9'Detalle'#9'F'#9'Producto');
          gViewProd.Selected.Add('Color'#9'10'#9'Color'#9'F'#9'Producto');
          gViewProd.Selected.Add('Cantidad'#9'8'#9'Cantidad'#9'F'#9'Producto');
          gViewProd.Selected.Add('Cant_Rem'#9'8'#9'Pendiente'#9'F'#9'Producto');
        end;
      end;
    end;
  end;
  Application.ProcessMessages;
  gViewProd.RefreshDisplay;
end;

procedure TfrmViewFacC.qFacComBeforeEdit(DataSet: TDataSet);
begin
  if not Check_Seg(Nivel_Mod,'FacCom', AutorDto) then
    raise EUsuario.Create('No esta habilitado para esta función');
  dmGestion.Empresas.Open;
  IdFacAnt := qFacComIdFactura.AsInteger;
  IdSucAnt := qFacComIdSucursal.AsInteger;
  IdPtoAnt := qFacComIdPuntoVenta.AsInteger;
  FechaAnt := qFacComFechaF.AsDateTime;
  ProvAnt  := qFacComProveedor.AsInteger;
end;

procedure TfrmViewFacC.qFacComBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if (qFacComCtaCte.AsCurrency <> 0) and
     (qFacComTIPOOP.AsInteger in [fcCompra, fcGastos]) then
  begin
    if Application.MessageBox(PChar('El Comprobante Nº '+ qFacComNroFactura.AsString+' esta en '+
       'Cuenta Corriente. ¿La modifica tambien?'), 'Modificación', MB_ICONQUESTION+MB_YESNO) = ID_YES then
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := qFacCom.Transaction;
        q.SQL.Add('UpDate CCProv ');
        q.SQL.Add('Set Entidad =:Entidad, ');
        q.SQL.Add('    TComp = :TComp, ');
        q.SQL.Add('    Fecha = :FechaF, ');
        q.SQL.Add('    FechaOrg = :FechaOrg, ');
        q.SQL.Add('    IdEmpresa = :IdEmpresa, ');
        q.SQL.Add('    Comprobante = :Comprobante, ');
        q.SQL.Add('    ImpNeto = :ImpNeto, ');
        q.SQL.Add('    SaldoMov = :Saldo, ');
        if qFacComTipoFactura.AsInteger in [CreA, CreB, CreC, CreditoAjuste] then
        begin
          q.SQL.Add('  Haber =:Total, ');
          q.SQL.Add('  Debe = 0 ');
        end
        else begin
          q.SQL.Add('  Debe =:Total, ');
          q.SQL.Add('  Haber = 0 ');
        end;
        q.SQL.Add('Where IdComprobante = :IdFac And ');
        q.SQL.Add('      IdSucursal = :IdSuc And ');
        q.SQL.Add('      IdPuntoVenta = :IdPto ');
        q.ParamByName('Entidad').AsInteger := qFacComPROVEEDOR.AsInteger;
        q.ParamByName('TComp').AsInteger := qFacComTipoFactura.AsInteger;
        q.ParamByName('FechaF').AsDate := qFacComFechaF.AsDateTime;;
        q.ParamByName('FechaOrg').AsDate := qFacComFechaF.AsDateTime;
        q.ParamByName('IdEmpresa').AsInteger := qFacComIDEMPRESA.AsInteger;
        q.ParamByName('Comprobante').AsString := qFacComNROFACTURA.AsString;
        q.ParamByName('ImpNeto').AsCurrency := qFacComNETO.AsCurrency;
        q.ParamByName('Saldo').AsCurrency := qFacComTotal.AsCurrency;
        q.ParamByName('Total').AsCurrency := qFacComTotal.AsCurrency;
        q.ParamByName('IdFac').AsInteger := qFacComIdFactura.AsInteger;
        q.ParamByName('IdSuc').AsInteger := qFacComIdSucursal.AsInteger;
        q.ParamByName('IdPto').AsInteger := qFacComIDPUNTOVENTA.AsInteger;
        q.ExecSQL;
      finally
        q.Free;
      end;
    end;
  end;
end;

procedure TfrmViewFacC.qFacComCOMISIONGetText(Sender: TField; var Text: string;    DisplayText: Boolean);
begin
  if qFacComCOMISION.AsCurrency <> 0 then
    Text := Format('Comisión %m', [qFacComCOMISION.AsCurrency])
  else
    Text := ' ';
end;

procedure TfrmViewFacC.qFacComFECPRELIQDESDEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.Value <= Date_old then
    Text := Vacio
  else
    Text := Format('Desde %s ',[DateToStr(Sender.AsDateTime)])
end;

procedure TfrmViewFacC.qFacComFECPRELIQHASTAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.Value <= Date_old then
    Text := Vacio
  else
    Text := Format('Hasta %s ',[DateToStr(Sender.AsDateTime)])
end;

procedure TfrmViewFacC.qFacComIDENTTARMUTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if qFacComIDENTTARMUT.AsInteger > 0 then
    Text := Format('Eº %d', [qFacComIDENTTARMUT.AsInteger])
  else
    Text := ' ';
end;

procedure TfrmViewFacC.qFacComIDNUMEROLIQGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if qFacComIDNUMEROLIQ.AsInteger > 0 then
    Text := Format('Lº %d', [qFacComIDNUMEROLIQ.AsInteger])
  else
    Text := ' ';
end;

procedure TfrmViewFacC.qFacComNROCOMPOPGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Trim(qFacComNROCOMPOP.AsString) <= Vacio then
    Text := '0000-00000000'
  else
    Text := Sender.AsString;
end;

procedure TfrmViewFacC.qItemsFCTALLEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if Control_Talles then
  begin
    try
      Text := GetTextTalle(Sender.AsInteger);
    except
      Text := Sender.AsString;
    end;
  end
  else begin
    if qFacComTIPOOP.AsInteger = fcLiqPre then
    begin
      Text := Sender.AsString;
    end;
  end;
end;

procedure TfrmViewFacC.qItemsFCTALLESetText(Sender: TField; const Text: String);
begin
  if Control_Talles then
  begin
    try
      Sender.Value := SetTextTalle(Text);
    except
      on E: Exception do
      begin
        Application.MessageBox(PChar(E.Message), 'Error cargando talles', MB_ICONERROR);
      end;
    end;
  end
end;

procedure TfrmViewFacC.btnBorrarFCClick(Sender: TObject);
var
  q: TMDOQuery;
  B: Integer;
begin
  if not Check_Seg(Nivel_Adm, 'FacCom', AutorDto) then
    raise EUsuario.Create('No esta habilitado para esta función');
  if Application.MessageBox(PChar('Esta seguro de borrar el'#13#10'Comprobante Nº '+
    qFacComNROFACTURA.AsString), 'Borrar', MB_ICONQUESTION+MB_YESNO) = ID_YES then
  begin
    B := AntesDeBorrar;
    try
      if not qFacCom.Transaction.InTransaction then
        qFacCom.Transaction.StartTransaction;
      if (qFacComCantArtic.AsInteger > 0) then
      begin
        qItemsFC.First;
        while not qItemsFC.Eof do
        begin
          if qFacComTIPOOP.AsInteger in [fcCompra, fcRemito] then
          begin
            Update_Parts(qItemsFCIdArticulo.AsInteger, qFacComIDSUCURSAL.AsInteger,
                         qItemsFCCantidad.AsFloat, qItemsFCTalle.AsInteger,
                         qFacComTipoFactura.AsInteger, 0, False, False,
                         qItemsFC.Database, qItemsFC.Transaction);
          end
          else begin
            if qFacComTIPOOP.AsInteger = fcLiqPre then
            begin
              try // OPERACION
                q := TMDOQuery.Create(nil);
                q.Database := qFacCom.Database;
                q.Transaction := qFacCom.Transaction;
                q.SQL.Add('UpDate MovTar ');
                q.SQL.Add('   Set CuotaPag = (CuotaPag - 1), ');
                q.SQL.Add('       Estado = 0 ');
                q.SQL.Add('Where (IdMov = :IdM) And ');
                q.SQL.Add('      (IdTarjeta = :IdT) and ');
                q.SQL.Add('      (IdSucursal = :IdS) ');
                q.ParamByName('IdM').AsInteger := qItemsFCTalle.AsInteger;
                q.ParamByName('IdT').AsInteger := qFacComIDENTTARMUT.AsInteger;
                q.ParamByName('IdS').AsInteger := qItemsFCSECTOR.AsInteger;
                try
                  q.ExecSQL;
                except
                  on E:Exception do
                  begin
                    raise EUsuario.Create(E.Message);
                  end;
                end;
                q.Close;
              finally
                q.Free;
              end;

              try   //CUOTA
                q := TMDOQuery.Create(nil);
                q.Database := qFacCom.Database;
                q.Transaction := qFacCom.Transaction;
                q.SQL.Add('UpDate MovCuotas ');
                q.SQL.Add('   Set Estado = 0 ');
                q.SQL.Add('Where (IdMovCred = :IdM) And ');
                q.SQL.Add('      (IdSucursal = :IdS) And ');
                q.SQL.Add('      (NroCuota = :NCt) ');
                q.ParamByName('IdM').AsInteger := qItemsFCTalle.AsInteger;
                q.ParamByName('IdS').AsInteger := qItemsFCSECTOR.AsInteger;
                q.ParamByName('NCt').AsInteger := qItemsFCCANTIDAD.AsInteger;
                try
                  q.ExecSQL;
                except
                  on E:Exception do
                  begin
                    raise EUsuario.Create(E.Message);
                  end;
                end;
                q.Close;
              finally
                q.Free;
              end;
            end;
          end;

          try
            q := TMDOQuery.Create(nil);
            q.Database := qFacCom.Database;
            q.Transaction := qFacCom.Transaction;
            q.SQL.Add('UpDate ItemsFC Set State = :MotBJ ');
            q.SQL.Add('Where (IdFactura = :IdFac) And ');
            q.SQL.Add('      (IdSucursal = :IdSuc) And ');
            q.SQL.Add('      (IdPuntoVenta = :IdPto) ');
            q.ParamByName('MotBJ').AsInteger := B;
            q.ParamByName('IdFac').AsInteger := qFacComIdFactura.AsInteger;
            q.ParamByName('IdSuc').AsInteger := qFacComIdSucursal.AsInteger;
            q.ParamByName('IdPto').AsInteger := qFacComIDPUNTOVENTA.AsInteger;
            q.ExecSQL;
          finally
            q.Free;
          end;
          qItemsFC.Next;
        end;
      end;

      if (qFacComCtaCte.AsCurrency <> 0) then
      begin
        try
          q := TMDOQuery.Create(nil);
          q.Database := qFacCom.Database;
          q.Transaction := qFacCom.Transaction;
          q.SQL.Add('UpDate CCProv ');
          q.SQL.Add('   Set State = :MotBJ ');
          q.SQL.Add('Where (IdComprobante = :IdFac) And ');
          q.SQL.Add('      (IdSucursal = :IdSuc) And ');
          q.SQL.Add('      (IdPuntoVenta = :IdPto) ');
          q.ParamByName('MotBJ').AsInteger := B;
          q.ParamByName('IdFac').AsInteger := qFacComIdFactura.AsInteger;
          q.ParamByName('IdSuc').AsInteger := qFacComIdSucursal.AsInteger;
          q.ParamByName('IdPto').AsInteger := qFacComIdPuntoVenta.AsInteger;
          q.ExecSQL;
        finally
          q.Free;
        end;
      end;

      try
        q := TMDOQuery.Create(nil);
        q.Database := qFacCom.Database;
        q.Transaction := qFacCom.Transaction;
        q.SQL.Add('UpDate FacCom ');
        q.SQL.Add('   Set State = :MotBJ, ');
        q.SQL.Add('       FechaIs = null ');
        q.SQL.Add('Where (IdFactura = :IdFac) And ');
        q.SQL.Add('      (IdSucursal = :IdSuc) And ');
        q.SQL.Add('      (IdPuntoVenta = :IdPto) ');
        q.ParamByName('MotBJ').AsInteger := B;
        q.ParamByName('IdFac').AsInteger := qFacComIdFactura.AsInteger;
        q.ParamByName('IdSuc').AsInteger := qFacComIdSucursal.AsInteger;
        q.ParamByName('IdPto').AsInteger := qFacComIdPuntoVenta.AsInteger;
        q.ExecSQL;
      finally
        q.Free;
      end;
      qFacCom.Transaction.Commit;
    except
      qFacCom.Transaction.Rollback;
      raise;
    end;
  end
  else
    Abort;
end;

procedure TfrmViewFacC.btnBuscarFCClick(Sender: TObject);
begin
  pcEgresos.ActivePage := tsBusqueda;
  tsBusqueda.Show;
end;

procedure TfrmViewFacC.btnSalirFCClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmViewFacC.ComprobanteFCClick(Sender: TObject);
Var
  f, s, p: Integer;
begin
  f := qFacComIDFACTURA.AsInteger;
  s := qFacComIDSUCURSAL.AsInteger;
  p := qFacComIDPUNTOVENTA.AsInteger;
  if qFacComTIPOFACTURA.AsInteger in [PresentacionTM, LiquidacionA, LiquidacionC] then
  begin
    Print_PCL_TM(qFacComIDFACTURA.AsInteger,
                 qFacComIDSUCURSAL.AsInteger,
                 qFacComIDPUNTOVENTA.AsInteger)
  end
  else begin
    try
      CargarRegistro;
      Print_Form(Factura, ItemsFiscal);
    except
      on E:Exception do
        raise EUsuario.Create('No se puede imprimir el comprobante '+E.Message);
    end;
    qFacCom.ParamByName('IdFactura').AsInteger := f;
    qFacCom.ParamByName('IdSucursal').AsInteger:= s;
    qFacCom.ParamByName('IdPunto').AsInteger := p;
    qFacCom.Open;
  end;
end;

procedure TfrmViewFacC.EtiquetasFCClick(Sender: TObject);
var
  f, s, p: Integer;
begin
  try
    f := qFacComIDFACTURA.AsInteger;
    s := qFacComIDSUCURSAL.AsInteger;
    p := qFacComIDPUNTOVENTA.AsInteger;
    if qFacComTIPOOP.AsInteger in [fcCompra, fcRemito] then
    begin
      CargarRegistro;
      frmImpCodBar := TfrmImpCodBar.Create(Self);
      frmImpCodBar.CodProd := 0;
      frmImpCodBar.CantStk := 0;
      frmImpCodBar.ElTalle := 0;
      frmImpCodBar.IC := ItemsFiscal;
      frmImpCodBar.ShowModal;
    end;
  finally
    qFacCom.Close;
    qFacCom.ParamByName('IdFactura').AsInteger := f;
    qFacCom.ParamByName('IdSucursal').AsInteger:= s;
    qFacCom.ParamByName('IdPunto').AsInteger := p;
    qFacCom.Open;
  end;
end;

function TfrmViewFacC.FacComLast(IdS, IdP: Integer): Integer;
var
  q: TMDOQuery;
begin
  Result := 1;
  try
    q := TMDOQuery.Create(nil);
    q.Database := qFacCom.Database;
    q.Transaction := qFacCom.Transaction;
    q.SQL.Add('Select Max(IdFactura) as Ultimo ');
    q.SQL.Add('From FacCom ');
    q.SQL.Add('Where (IdSucursal = :IdS) And ');
    q.SQL.Add('      (IdPuntoVenta = :IdP) ');
    q.ParamByName('IdS').AsInteger := IdS;
    q.ParamByName('IdP').AsInteger := IdP;
    q.Open;
    Result := q.FieldByName('Ultimo').AsInteger;
    q.Close;
  finally
    q.Free;
  end;
end;

procedure TfrmViewFacC.btnSaveFCClick(Sender: TObject);
begin
  if qItemsFC.State in dsEditModes then
    qItemsFC.Post;
  if qFacCom.State in dsEditModes then
    qFacCom.Post;
end;

procedure TfrmViewFacC.btnCancelFCClick(Sender: TObject);
begin
  if qFacCom.State in dsEditModes then
    qFacCom.Cancel;
  if qItemsFC.State in dsEditModes then
    qItemsFC.Cancel;
end;

procedure TfrmViewFacC.btnEditFCClick(Sender: TObject);
begin
  qFacCom.Edit;
  qItemsFC.Edit;
end;

procedure TfrmViewFacC.btnExpBuscadosClick(Sender: TObject);
begin
  if not qComprobantes.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qComprobantes;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmViewFacC.btnFiltrarClick(Sender: TObject);
Const
  BCp = 'Select F.IdFactura, F.IdSucursal, F.IdPuntoVenta, '+
        '       F.FechaF, F.NroFactura, F.Total, F.Proveedor, '+
        '       T.DescCorta, E.Nombre, K.NombreSuc, D.DetEmp '+
        'From FacCom F '+
        'Join TiposComp T '+
        '  on T.IdComprobante = F.TipoFactura '+
        'Left outer Join Proveedores E '+
        '  on E.IdProveedor = F.Proveedor '+
        'Join Sucursales K '+
        '  on K.IdSucursal = F.IdSucursal '+
        'Join DatosSis D '+
        '  on D.IdEmpresa = F.IdEmpresa '+
        'Where <Cond> '+
        'Order By F.FechaF desc ';
var
  Cmp,
  Cnd, Con: String;
  TCm: SmallInt;
begin
  Cnd := '(F.State = 0)';
  try
    TCm := Integer(cbTipoEgresos.Items.Objects[cbTipoEgresos.ItemIndex]);
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
    Cnd := Cnd+' and (F.Proveedor = ' + edtEntidad.Text+')';

  Cmp := StringReplace(edtComp.Text, '_', '', [rfReplaceAll]);
  if (Trim(Cmp) <> '-') and
     (Cmp <> '0000-00000000') then
    Cnd := Cnd+' and (F.NroFactura = ' + QuotedStr(Cmp)+')';

  if TCm > 0 then
    Cnd := Cnd+' and (F.TipoFactura = ' + IntToStr(TCm)+')';

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

procedure TfrmViewFacC.btnProveedoresClick(Sender: TObject);
begin
  VerProveedor(qFacComPROVEEDOR.AsInteger);
end;

procedure TfrmViewFacC.btnRepPreLiqClick(Sender: TObject);
begin
  Reparar_PreLiq;
end;

procedure TfrmViewFacC.qFacComAfterClose(DataSet: TDataSet);
begin
  qItemsFC.Close;
end;

procedure TfrmViewFacC.qFacComAfterOpen(DataSet: TDataSet);
begin
  qItemsFC.Open;
end;

procedure TfrmViewFacC.qItemsFCCalcFields(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  (* fcCompra = 0;  fcRemito = 1; fcGastos = 2;  fcLiqPre = 4 *)
  if qFacComTIPOOP.AsInteger in [fcCompra, fcRemito] then
  begin
    if GetDatosArt(qItemsFCIDARTICULO.AsInteger, Vacio, Datos_Art) then
    begin
      qItemsFCMARCA.AsString := Datos_Art.Marca;
      qItemsFCDETALLE.AsString := Datos_Art.Detalle;
      qItemsFCCOLOR.AsString := Datos_Art.Color;
    end;
    If (not qItemsFCIDREMITO.IsNull) And
       (not qItemsFCIDSUCREM.IsNull) And
       (not qItemsFCIDPTOREM.IsNull) then
    begin
      if qFacComTIPOFACTURA.AsInteger = RemitoR then
      begin
        try
          q := TMDOQuery.Create(nil);
          q.Database := qFacCom.Database;
          q.Transaction := qFacCom.Transaction;
          q.SQL.Add('Select NroFactura ');
          q.SQL.Add('From FacCom ');
          q.SQL.Add('Where (IdFactura = :IdF) And ');
          q.SQL.Add('      (IdSucursal = :IdS) And ');
          q.SQL.Add('      (IdPuntoVenta = :IdP) And ');
          q.SQL.Add('      (TipoFactura <> 40) And (TipoOP = 1) ');
          q.ParamByName('IdF').AsInteger := qItemsFCIDREMITO.AsInteger;
          q.ParamByName('IdS').AsInteger := qItemsFCIDSUCREM.AsInteger;
          q.ParamByName('IdP').AsInteger := qItemsFCIDPTOREM.AsInteger;
          q.Open;
          if not q.IsEmpty then
            qItemsFCDETREMFAC.AsString := q.FieldByName('NroFactura').AsString;
          q.Close;
        finally
          q.Free;
        end;
      end
      else begin
        try
          q := TMDOQuery.Create(nil);
          q.Database := qFacCom.Database;
          q.Transaction := qFacCom.Transaction;
          q.SQL.Add('Select NroFactura ');
          q.SQL.Add('From FacCom ');
          q.SQL.Add('Where (IdFactura = :IdF) And ');
          q.SQL.Add('      (IdSucursal = :IdS) And ');
          q.SQL.Add('      (IdPuntoVenta = :IdP) And ');
          q.SQL.Add('      (TipoFactura = 40) And (TipoOP = 3) ');
          q.ParamByName('IdF').AsInteger := qItemsFCIDREMITO.AsInteger;
          q.ParamByName('IdS').AsInteger := qItemsFCIDSUCREM.AsInteger;
          q.ParamByName('IdP').AsInteger := qItemsFCIDPTOREM.AsInteger;
          q.Open;
          if not q.IsEmpty then
            qItemsFCDETREMFAC.AsString := q.FieldByName('NroFactura').AsString;
          q.Close;
        finally
          q.Free;
        end;
      end
    end
    else
      qItemsFCDETREMFAC.AsString := '0000-00000000';
  end
  else begin
    if qFacComTIPOOP.AsInteger = fcGastos then
    begin
      if GetDatosCuenta(qItemsFCIDARTICULO.AsInteger, Datos_Cta) then
      begin
        qItemsFCMARCA.AsString := Datos_Cta.CodigoCon;
        qItemsFCDETALLE.AsString := Datos_Cta.DetalleCtro;
        qItemsFCCOLOR.AsString := Vacio;
      end;
    end
    else begin
      if qFacComTIPOOP.AsInteger = fcLiqPre then
      begin
        Case qFacComTIPOFACTURA.AsInteger of
          PresentacionTM,
          LiquidacionC,
          LiquidacionA: begin
            if qItemsFCIDARTICULO.AsInteger > 0 then
            begin
              try
                try
                  q := TMDOQuery.Create(nil);
                  q.Database := qFacCom.Database;
                  q.Transaction := qFacCom.Transaction;
                  q.SQL.Add('Select NroFactura, FechaF ');
                  q.SQL.Add('From FacVen ');
                  q.SQL.Add('Where (IdFactura = :IdF) And ');
                  q.SQL.Add('      (IdSucursal = :IdS) And ');
                  q.SQL.Add('      (IdPuntoVenta = :IdP) And ');
                  q.SQL.Add('      (Cliente = :IdC) ');
                  q.ParamByName('IdF').AsInteger := qItemsFCEXENTO.AsInteger;
                  q.ParamByName('IdS').AsInteger := qItemsFCMTOIVA.AsInteger;
                  q.ParamByName('IdP').AsInteger := qItemsFCIMPINT.AsInteger;
                  q.ParamByName('IdC').AsInteger := qItemsFCIDALCIVA.AsInteger;
                  q.Open;
                  qItemsFCMARCA.AsString := Format('Nº %s F %s' ,[q.FieldByName('NroFactura').AsString,
                                            DateToStr(q.FieldByName('FechaF').AsDateTime)]);
                  q.Close;
                finally
                  q.Free;
                end;
              except
                on E:Exception do
                  qItemsFCMARCA.AsString := E.Message;
              end;
              if GetDatosEnt(qItemsFCIDALCIVA.AsInteger, qItemsFCSector.AsInteger, 1, Datos_Ent) then
                qItemsFCDETALLE.AsString := Datos_Ent.Nombre;
              qItemsFCCOLOR.AsString := Get_DetSuc(qItemsFCSector.AsInteger, 1);
            end;
          end;
          (*
          LiquidacionC: begin

          end;
          LiquidacionA: begin

          end;
          *)
          else begin
            qItemsFCMARCA.AsString := '';
            qItemsFCDETALLE.AsString := '';
            qItemsFCCOLOR.AsString := '';
          end;
        end;
      end
    end;
  end;
end;

procedure TfrmViewFacC.qItemsFCENREMITOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if qItemsFCENREMITO.AsInteger = Verdadero then
    Text := 'SI'
  else
    Text := 'NO'
end;

procedure TfrmViewFacC.btnVolverACompClick(Sender: TObject);
begin
  pcEgresos.ActivePage := tsComprobantes;
  tsComprobantes.Show;
end;

procedure TfrmViewFacC.lblProveedorDblClick(Sender: TObject);
begin
  VerProveedor(qFacComPROVEEDOR.AsInteger);
end;

procedure TfrmViewFacC.pcEgresosClose(Sender: TObject; var AllowClose: Boolean);
begin
  Close;
end;

end.
