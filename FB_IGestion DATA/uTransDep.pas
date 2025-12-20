unit uTransDep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, DBGrids, StdCtrls, Mask, DBCtrls, RzTabs, RzPanel,
  Grids, OleCtrls, ComCtrls, Buttons, uTools, Menus, wwdblook, Wwdbigrd,
  Wwdbgrid, wwdbdatetimepicker, wwdbedit, Wwdotdot, Wwdbcomb, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Variants, wwcheckbox, RzButton, MDOCustomDataSet,
  DateUtils, MDOQuery, RzDTP, RzCmboBx, DBClient, RzEdit, RzDBCmbo, Wwdbdlg,
  ppDB, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDBPipe, ppBands, ppCache,
  ppPrnabl, ppCtrls, ppVar, Provider, MDOUpdateSQL, RzRadChk, RzRadGrp,
  RzSpnEdt, RzLabel, RzShellDialogs, RzSplit;

type
  TfrmTransDep = class(TForm)
    dsFacT: TDataSource;
    FacT: TClientDataSet;
    FacTIdFactura: TIntegerField;
    FacTTipoFactura: TSmallintField;
    FacTTipoFacStr: TStringField;
    FacTFechaF: TDateField;
    FacTNroFactura: TStringField;
    FacTNroRemSuc: TStringField;
    FacTCantArtic: TSmallintField;
    FacTVendedor: TIntegerField;
    FacTOrigenStr: TStringField;
    FacTDestinoStr: TStringField;
    FacTIdStOrigen: TIntegerField;
    FacTIdStDestino: TIntegerField;
    FacTTotal: TMDOBCDField;
    FacTNombreVendedor: TStringField;
    FacTIdSucursal: TIntegerField;
    FacTSucRemO: TSmallIntField;
    FacTSucRemD: TSmallIntField;
    FacTEstado: TSmallintField;
    FacTTipoAjuste: TIntegerField;
    FacTIdMotivo: TIntegerField;
    FacTIdSubDepO: TIntegerField;
    FacTIdSubDepD: TIntegerField;
    FacTSubDepOStr: TStringField;
    FacTSubDepDStr: TStringField;
    FacTTipoAjusteStr: TStringField;
    FacTEntregarA: TStringField;
    FacTDomicilioE: TStringField;
    FacTIdFacDom: TIntegerField;
    FacTIdSucDom: TIntegerField;
    FacTFletero: TStringField;

    dsItemsT: TDataSource;
    ItemsT: TClientDataSet;
    ItemsTIdFactura: TIntegerField;
    ItemsTIdArticulo: TIntegerField;
    ItemsTCantidad: TMDOBCDField;
    ItemsTPrecioFinal: TMDOBCDField;
    ItemsTPrecioTotal: TMDOBCDField;
    ItemsTDescripcionArticulo: TStringField;
    ItemsTIdItems: TIntegerField;
    ItemsTMarca: TStringField;
    ItemsTDescripcion: TStringField;
    ItemsTServicio: TSmallIntField;
    ItemsTColor: TStringField;
    ItemsTStkAct: TMDOBCDField;
    ItemsTTalle: TIntegerField;
    ItemsTCodBarra: TStringField;
    ItemsTGrupoSubGrupo: TStringField;
    ItemsTTieneTalle: TSmallIntField;
    ItemsTTipoAj: TIntegerField;
    ItemsTTieneStk: TSmallIntField;
    ItemsTObservacion: TStringField;
    ItemsTDetalle1: TStringField;
    ItemsTDetalle2: TStringField;
    ItemsTDetalle3: TStringField;
    ItemsTDetalle4: TStringField;
    ItemsTParaDomicilio: TSmallintField;
    ItemsTIdFacDomCli: TIntegerField;
    ItemsTIdSucDomCli: TIntegerField;
    dsTransp: TDataSource;
    qTrasp: TMDOQuery;
    dsItems: TDataSource;
    qItemsT: TMDOQuery;

    qSetEnviados: TMDOQuery;

    dsqEnvios: TDataSource;
    qEnvios: TMDOQuery;
    qEnviosIDFACTURA: TIntegerField;
    qEnviosIDSUCURSAL: TIntegerField;
    qEnviosTIPOFACTURA: TSmallintField;
    qEnviosIDSTORIGEN: TIntegerField;
    qEnviosIDSTDESTINO: TIntegerField;
    qEnviosESTADO: TSmallintField;
    qEnviosEMPLEADO: TIntegerField;
    qEnviosDIAHORA: TDateTimeField;
    qEnviosFECHAF: TDateField;
    qEnviosCANTARTIC: TSmallintField;
    qEnviosTOTAL: TMDOBCDField;
    qEnviosUSUARIO: TIntegerField;
    qEnviosNROFACTURA: TMDOStringField;
    qEnviosORIGEN: TMDOStringField;
    qEnviosDESTINO: TMDOStringField;
    qEnviosIDPUNTOVENTA: TIntegerField;
    qEnviosSelected: TBooleanField;
    qEnviosDESCRIPCION: TMDOStringField;

    dsqRemEnv: TDataSource;
    qRemEnv: TMDOQuery;
    qRemEnvIDFACTURA: TIntegerField;
    qRemEnvIDSUCURSAL: TIntegerField;
    qRemEnvFECHAF: TDateField;
    qRemEnvNROFACTURA: TMDOStringField;
    qRemEnvCANTARTIC: TSmallintField;
    qRemEnvESTADO: TSmallintField;

    qPrdDom: TMDOQuery;
    dsqPrdDom: TDataSource;
    qPrdDomIDFACTURA: TIntegerField;
    qPrdDomIDSUCURSAL: TIntegerField;
    qPrdDomFECHAF: TDateField;
    qPrdDomNROFACTURA: TMDOStringField;
    qPrdDomCLIENTE: TIntegerField;
    qPrdDomDIR_ENTREGA: TMDOStringField;
    qPrdDomDESCCORTA: TMDOStringField;
    qPrdDomNOMBRE: TMDOStringField;
    qPrdDomTELEFONOS: TMDOStringField;
    qPrdDomCANTIDAD: TMDOBCDField;
    qPrdDomMARCA: TMDOStringField;
    qPrdDomDETALLE: TMDOStringField;
    qPrdDomIDPUNTOVENTA: TIntegerField;

    dspqRemEnv: TDataSetProvider;
    qRemEnvTIPOFACTURA: TSmallintField;
    qRemEnvDESCRIPCION: TMDOStringField;
    qRemEnvIDPUNTOVENTA: TIntegerField;

    ModEnviados: TClientDataSet;
    ModEnviadosIDFACTURA: TIntegerField;
    ModEnviadosIDSUCURSAL: TIntegerField;
    ModEnviadosFECHAF: TDateField;
    ModEnviadosNROFACTURA: TStringField;
    ModEnviadosCANTARTIC: TSmallintField;
    ModEnviadosESTADO: TSmallintField;
    ModEnviadosTIPOFACTURA: TSmallintField;
    ModEnviadosDESCRIPCION: TStringField;
    ModEnviadosIDPUNTOVENTA: TIntegerField;

    qFleteros: TMDOQuery;
    qFleterosIDEMPLEADO: TIntegerField;
    qFleterosNOMBRE: TMDOStringField;

    dsqTraDom: TDataSource;
    qTraDom: TMDOQuery;
    qTraDomIDFACTURA: TIntegerField;
    qTraDomIDSUCURSAL: TIntegerField;
    qTraDomIDPUNTOVENTA: TIntegerField;
    qTraDomFECHAF: TDateField;
    qTraDomNROFACTURA: TMDOStringField;
    qTraDomCLIENTE: TIntegerField;
    qTraDomDIR_ENTREGA: TMDOStringField;
    qTraDomDESCCORTA: TMDOStringField;
    qTraDomNOMBRE: TMDOStringField;
    qTraDomTELEFONOS: TMDOStringField;
    qTraDomCANTDOM: TIntegerField;

    qPrdDomIDARTICULO: TIntegerField;
    qPrdDomIDSUCSALIDA: TIntegerField;
    qPrdDomNOMBRESUC: TMDOStringField;
    qPrdDomFECHASAL: TDateField;

    dsItemsIv: TDataSource;
    ItemsIv: TClientDataSet;
    ItemsIvIdFactura: TIntegerField;
    ItemsIvIdSucursal: TIntegerField;
    ItemsIvIdItem: TIntegerField;
    ItemsIvIdArticulo: TIntegerField;
    ItemsIvTalle: TIntegerField;
    ItemsIvDetArt: TStringField;
    ItemsIvCantidad: TMDOBCDField;
    ItemsIvPrecio: TMDOBCDField;
    ItemsIvActual: TMDOBCDField;
    ItemsIvCosto: TMDOBCDField;
    ItemsIvNeto: TMDOBCDField;
    ItemsIvImpInt: TMDOBCDField;
    ItemsIvFechaI: TDateField;
    ItemsIvMarca: TStringField;
    ItemsIvDetalle: TStringField;
    ItemsIvColor: TStringField;
    ItemsIvTieneTalle: TSmallintField;
    ItemsIvTotal: TMDOBCDField;

    dsqAjusteDeInv: TDataSource;
    qAjusteDeInv: TMDOQuery;
    qAjusteDeInvIDFACTURA: TIntegerField;
    qAjusteDeInvIDSUCURSAL: TIntegerField;
    qAjusteDeInvFECHAI: TDateField;
    qAjusteDeInvNROFACT: TMDOStringField;
    qAjusteDeInvIDSTOCK: TIntegerField;
    qAjusteDeInvEMPLEADO: TIntegerField;
    qAjusteDeInvPERIODO: TIntegerField;
    qAjusteDeInvCANTART: TSmallintField;
    qAjusteDeInvTNETO: TMDOBCDField;
    qAjusteDeInvTNOCOMP: TMDOBCDField;
    qAjusteDeInvTCOSTO: TMDOBCDField;
    qAjusteDeInvTOTAL: TMDOBCDField;
    qAjusteDeInvDEPOSITOSTR: TMDOStringField;
    qAjusteDeInvNOMENT: TMDOStringField;
    qAjusteDeInvTOTALAR: TLargeintField;
    qAjusteDeInvTOTALNT: TMDOBCDField;
    qAjusteDeInvTOTALNC: TMDOBCDField;
    qAjusteDeInvTOTALCT: TMDOBCDField;
    qAjusteDeInvTOTALSUC: TMDOBCDField;

    dsqAjustes: TDataSource;
    qAjustes: TMDOQuery;
    qAjustesIDFACTURA: TIntegerField;
    qAjustesIDSUCURSAL: TIntegerField;
    qAjustesFECHAI: TDateField;
    qAjustesNROFACT: TMDOStringField;
    qAjustesDIAHORA: TDateTimeField;
    qAjustesIDSTOCK: TIntegerField;
    qAjustesEMPLEADO: TIntegerField;
    qAjustesPERIODO: TIntegerField;
    qAjustesTOTAL: TMDOBCDField;
    qAjustesCANTART: TSmallintField;
    qAjustesTNETO: TMDOBCDField;
    qAjustesTNOCOMP: TMDOBCDField;
    qAjustesTCOSTO: TMDOBCDField;
    qAjustesDEPOSITOSTR: TMDOStringField;
    qAjustesNOMENT: TMDOStringField;

    dsqItemsAj: TDataSource;
    qItemsAj: TMDOQuery;
    qItemsAjIDFACTURA: TIntegerField;
    qItemsAjIDSUCURSAL: TIntegerField;
    qItemsAjIDSTOCK: TIntegerField;
    qItemsAjIDITEM: TSmallintField;
    qItemsAjIDARTICULO: TIntegerField;
    qItemsAjTALLE: TIntegerField;
    qItemsAjFECHAI: TDateField;
    qItemsAjPERIODO: TIntegerField;
    qItemsAjCANTIDAD: TMDOBCDField;
    qItemsAjIPRECIO: TMDOBCDField;
    qItemsAjITOTAL: TMDOBCDField;
    qItemsAjINETO: TMDOBCDField;
    qItemsAjINOCOMP: TMDOBCDField;
    qItemsAjCOSTO: TMDOBCDField;
    qItemsAjMARCA: TMDOStringField;
    qItemsAjDETALLE: TMDOStringField;
    qItemsAjTIENETALLE: TSmallintField;
    qItemsAjCOLOR: TMDOStringField;

    dsFacIv: TDataSource;
    FacIv: TClientDataSet;
    FacIvIdFactura: TIntegerField;
    FacIvIdSucursal: TIntegerField;
    FacIvIdDeposito: TIntegerField;
    FacIvFechaI: TDateField;
    FacIvEmpleado: TIntegerField;
    FacIvCantArt: TSmallintField;
    FacIvTotal: TMDOBCDField;
    FacIvTNeto: TMDOBCDField;
    FacIvTNoCmp: TMDOBCDField;
    FacIvNomEmp: TStringField;
    FacIvNroFac: TStringField;
    FacIvDepositoStr: TStringField;
    FacIvPeriodo: TIntegerField;
    FacIvTCosto: TMDOBCDField;
    FacIvTipoComp: TSmallintField;

    dsqItemsIv: TDataSource;
    qItemsIv: TMDOQuery;
    dsqResInv: TDataSource;
    qResultadoInv: TMDOQuery;

    dsqStkInv: TDataSource;
    qStkInv: TMDOQuery;
    qStkInvSTKAINV: TMDOBCDField;
    qStkInvFECHAINV: TDateField;
    qStkInvNOMBRESUC: TMDOStringField;

    dsqInventario: TDataSource;
    qInventario: TMDOQuery;

    dsqProvByArt: TDataSource;
    qProvByArt: TMDOQuery;
    qProvByArtPRECIOPROV: TMDOBCDField;
    qProvByArtULTIMACOMPRA: TDateField;
    qProvByArtCANTIDAD: TMDOBCDField;
    qProvByArtDESCUENTO: TMDOBCDField;
    qProvByArtNOMBRE: TMDOStringField;

    qLstAreas: TMDOQuery;
    qLstAreasIDAREA: TIntegerField;
    qLstAreasAREA: TMDOStringField;

    qBranch: TMDOQuery;
    qBranchNOMBRESUC: TMDOStringField;
    qBranchIDSUCURSAL: TIntegerField;
    qBranchACTIVA: TSmallintField;

    dspqTrasp: TDataSetProvider;
    Trasp: TClientDataSet;
    TraspIdFactura: TIntegerField;
    TraspIdSucursal: TIntegerField;
    TraspTipoFactura: TSmallintField;
    TraspFechaF: TDateField;
    TraspNroFactura: TStringField;
    TraspEmpleado: TIntegerField;
    TraspIdStOrigen: TIntegerField;
    TraspIdStDestino: TIntegerField;
    TraspCantArtic: TSmallintField;
    TraspEstado: TSmallintField;
    TraspSOrigen: TStringField;
    TraspDestMov: TStringField;
    TraspTipoAJ: TSmallintField;
    TraspNomEnt: TStringField;
    TraspDiaHora: TDateTimeField;
    TraspNomUsr: TStringField;
    TraspNroRemSuc: TStringField;
    TraspIdSubDepO: TIntegerField;
    TraspIdSubDepD: TIntegerField;
    TraspTOTAL: TBCDField;
    TraspENTREGARA: TStringField;
    TraspDOMICILIOE: TStringField;
    TraspDESCRIPCION: TStringField;
    TraspIDFLETERO: TIntegerField;
    TraspIDPUNTOVENTA: TIntegerField;

    dsqTransp: TDataSource;
    Items: TClientDataSet;
    TraspqItemsT: TDataSetField;
    ItemsIDFACTURA: TIntegerField;
    ItemsIDSUCURSAL: TIntegerField;
    ItemsIDPUNTOVENTA: TIntegerField;
    ItemsIDITEM: TSmallintField;
    ItemsIDSUCURSALO: TIntegerField;
    ItemsIDSUCURSALD: TIntegerField;
    ItemsIDARTICULO: TIntegerField;
    ItemsTALLE: TIntegerField;
    ItemsTMOV: TIntegerField;
    ItemsFECHAF: TDateField;
    ItemsCANTIDAD: TBCDField;
    ItemsTIPOAJ: TSmallintField;
    ItemsPRECIOFINAL: TBCDField;
    ItemsPRECIOTOTAL: TBCDField;
    ItemsDETALLE1: TStringField;
    ItemsDETALLE2: TStringField;
    ItemsDETALLE3: TStringField;
    ItemsDETALLE4: TStringField;
    ItemsMARCA: TStringField;
    ItemsDETALLE: TStringField;
    ItemsCODBARRA: TStringField;
    ItemsTIENETALLE: TSmallintField;
    ItemsGRUPO: TStringField;
    ItemsSUBGRUPO: TStringField;

    dsFacAj: TDataSource;
    FacAj: TClientDataSet;
    FacAjIdFactura: TIntegerField;
    FacAjIdSucursal: TIntegerField;
    FacAjIdDeposito: TIntegerField;
    FacAjFechaI: TDateField;
    FacAjEmpleado: TIntegerField;
    FacAjCantArt: TSmallintField;
    FacAjTotal: TMDOBCDField;
    FacAjTNeto: TMDOBCDField;
    FacAjTNoCmp: TMDOBCDField;
    FacAjNomEmp: TStringField;
    FacAjNroFac: TStringField;
    FacAjDepositoStr: TStringField;
    FacAjPeriodo: TIntegerField;
    FacAjTCosto: TMDOBCDField;
    FacAjTipoComp: TSmallintField;

    dsItemsAj: TDataSource;
    ItemsAj: TClientDataSet;
    ItemsAjIdFactura: TIntegerField;
    ItemsAjIdSucursal: TIntegerField;
    ItemsAjIdItem: TIntegerField;
    ItemsAjIdArticulo: TIntegerField;
    ItemsAjTalle: TIntegerField;
    ItemsAjDetArt: TStringField;
    ItemsAjCantidad: TMDOBCDField;
    ItemsAjPrecio: TMDOBCDField;
    ItemsAjActual: TMDOBCDField;
    ItemsAjCosto: TMDOBCDField;
    ItemsAjNeto: TMDOBCDField;
    ItemsAjImpInt: TMDOBCDField;
    ItemsAjFechaI: TDateField;
    ItemsAjMarca: TStringField;
    ItemsAjDetalle: TStringField;
    ItemsAjColor: TStringField;
    ItemsAjTieneTalle: TSmallintField;
    ItemsAjTotal: TMDOBCDField;

    pcTraspasos: TRzPageControl;
    tsRemitos: TRzTabSheet;
    tsTransferencias: TRzTabSheet;
    gbHeadRemito: TRzGroupBox;
    bvlRemTra: TBevel;
    lblEntidad: TLabel;
    lblOrigen: TLabel;
    lblVendedor: TDBText;
    lblFecha: TLabel;
    lblComprobante: TLabel;
    lblTAjuste: TLabel;
    lblDestino: TLabel;
    edtEmpleado: TwwDBEdit;
    edtComprobante: TwwDBEdit;
    cbDepOrigen: TwwDBComboBox;
    cbDepDestino: TwwDBComboBox;
    cbTipoAj: TwwDBComboBox;
    edtFecha: TwwDBDateTimePicker;
    gTraspasos: TwwDBGrid;
    pnlFootTrasp: TRzPanel;
    btnSalir: TRzBitBtn;
    lblRemSuc: TLabel;
    pnlTransF: TRzPanel;
    lblDestDesde: TLabel;
    lblDesde: TLabel;
    btnVerDesde: TRzBitBtn;
    cbSucursales: TRzComboBox;
    edtDesdeRem: TRzDateTimeEdit;
    tsEnvios: TRzTabSheet;
    pcEnvioASucursales: TRzPageControl;
    tsEnviarRemitos: TRzTabSheet;
    pnlEnvSuc: TRzPanel;
    btnBuscarTrans: TRzBitBtn;
    gEnvios: TwwDBGrid;
    tsEnviados: TRzTabSheet;
    pnlReEnvios: TRzPanel;
    lblSucEnv: TLabel;
    lblDesdeEnv: TLabel;
    btnBuscarEnv: TRzBitBtn;
    gRemEnv: TwwDBGrid;
    cbEstado: TwwDBComboBox;
    cbSucAEnviar: TRzComboBox;
    lblSucAEnv: TLabel;
    cbSucARe_Env: TRzComboBox;
    edtDesdeEnv: TRzDateTimeEdit;
    gbItemsR: TRzGroupBox;
    pnlBtnRemito: TRzPanel;
    lblState: TDBText;
    pnlTipoComp: TRzPanel;
    gFacT: TwwDBGrid;
    pnlPrint: TRzPanel;
    btnImpFiscal: TRzBitBtn;
    btnImpComun: TRzBitBtn;
    btnCodeBar: TRzBitBtn;
    btnCerrarPrint: TRzBitBtn;
    lblEntregarA: TLabel;
    edtEntregarA: TwwDBEdit;
    edtDomicilioE: TwwDBEdit;
    tsPendientes: TRzTabSheet;
    pnlTopDom: TRzPanel;
    lblSucDom: TLabel;
    lblDesDom: TLabel;
    btnBusDom: TRzBitBtn;
    cbSucA_Domic: TRzComboBox;
    edtDesdeDom: TRzDateTimeEdit;
    gProdDom: TwwDBGrid;
    edtHastaDom: TRzDateTimeEdit;
    lblHasDom: TLabel;

    btnExpOpr: TRzBitBtn;
    btnExpPrdDom: TRzBitBtn;
    pnlBotEnv: TRzPanel;
    btnSelAllEnv: TRzBitBtn;
    btnEnviar: TRzBitBtn;
    edtRemSuc: TwwDBLookupComboDlg;

    lblEstado: TLabel;
    cbEstadoDom: TRzComboBox;
    btnImpProdDom: TRzBitBtn;
    lblFlete: TLabel;
    cbFletero: TwwDBLookupCombo;

    dbpPrdDom: TppDBPipeline;
    rpPrdDom: TppReport;
    hbPrdDom: TppHeaderBand;
    dbPrdDom: TppDetailBand;
    fbPrdDom: TppFooterBand;
    lblPDNroCli: TppDBText;
    lblPDNomCli: TppDBText;
    lblPDDomicilio: TppDBText;
    lblPDTComp: TppDBText;
    lblPDNroFac: TppDBText;
    lblPDCodArt: TppDBText;
    lblPDMarca: TppDBText;
    lblPDDetalle: TppDBText;
    lblPDCant: TppDBText;
    lblPDTelCli: TppDBText;
    lblPDFecEnt: TppDBText;
    lblDatosCli: TppLabel;
    lblPDComprobantes: TppLabel;
    lblPDProducto: TppLabel;
    lblPDCantidad: TppLabel;
    shPDom1: TppShape;
    lblPDTitulo: TppLabel;
    shPDom3: TppShape;
    lblPDEmision: TppSystemVariable;
    grpPrdDom: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    gfbPDom: TppGroupFooterBand;
    lblPDNroPag: TppSystemVariable;
    lblPDFecVen: TppDBText;
    lblPDFSal: TppLabel;
    shPDom2: TppShape;
    btnSaveRem: TRzBitBtn;
    btnDesSelEnv: TRzBitBtn;
    FacTIdFletero: TIntegerField;
    tsInventario: TRzTabSheet;
    pcInventario: TRzPageControl;
    tsInvInventarios: TRzTabSheet;
    lblInitInv: TRzLabel;
    pnlInventario: TRzPanel;
    lblPerInv: TLabel;
    lblSucAInv: TLabel;
    cbTInventario: TRzComboBox;
    btnBuscarInv: TRzBitBtn;
    btnExpRemInv: TRzBitBtn;
    edtPerInventario: TRzSpinner;
    gInventarios: TwwDBGrid;
    tsInvRemitosInventario: TRzTabSheet;
    gbIngresoRInv: TRzGroupBox;
    gItemsI: TwwDBGrid;
    tsInvResultados: TRzTabSheet;
    pnlInfInv: TRzPanel;
    lblPerInf: TLabel;
    lblSucInf: TLabel;
    lblAreaResInv: TLabel;
    cbSucResInv: TRzComboBox;
    btnCalcResInv: TRzBitBtn;
    btnExpDif: TRzBitBtn;
    cbAreasResInv: TRzComboBox;
    btnImpDif: TRzBitBtn;
    rgResTallesInv: TRzRadioGroup;
    edtPerResInv: TRzSpinner;
    gResInv: TwwDBGrid;
    rpResInv: TppReport;
    hbDifInv: TppHeaderBand;
    lblTituloDifInv1: TppLabel;
    lblTituloDifInv2: TppLabel;
    lblEmisionDifInv: TppSystemVariable;
    dbDifInv: TppDetailBand;
    ppDBText11: TppDBText;
    lblDArt: TppDBText;
    lblCant: TppDBText;
    lblPrecioCosto: TppDBText;
    ppSystemVariable5: TppSystemVariable;
    grDifInv1: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    lblDGrp: TppDBText;
    ppGroupFooterBand9: TppGroupFooterBand;
    grDifInv2: TppGroup;
    ghbDifInv1: TppGroupHeaderBand;
    lblSubG: TppDBText;
    lblProd: TppLabel;
    lblContado: TppLabel;
    lblPrCosto: TppLabel;
    gfbDifInv1: TppGroupFooterBand;

    lblCantEnc: TLabel;
    btnModificar: TRzBitBtn;
    btnRemitoPrint: TRzBitBtn;
    btnRemitoSearch: TRzBitBtn;
    btnRemitoCancel: TRzBitBtn;
    btnRemitoGrabar: TRzBitBtn;
    btnRemitoNuevo: TRzBitBtn;

    TraspFLETERO: TStringField;
    TraspEN_AMBAS: TSmallintField;
    FacTIdPuntoVenta: TIntegerField;

    rgTipoTrans: TRzRadioGroup;
    tsControles: TRzTabSheet;
    odFileLec: TRzOpenDialog;
    gbLectCtrl: TRzGroupBox;
    pnlLectCtrl: TRzPanel;
    lblSucLec: TLabel;
    cbSucLectCtrl: TRzComboBox;
    btnLectCtrl: TRzBitBtn;
    btnAjustesControl: TRzBitBtn;

    dsLectCtrl: TDataSource;
    LectCtrl: TClientDataSet;
    LectCtrlIdArt: TIntegerField;
    LectCtrlIdSuc: TIntegerField;
    LectCtrlMarca: TStringField;
    LectCtrlDetalle: TStringField;
    LectCtrlTalle: TIntegerField;
    LectCtrlIdReg: TIntegerField;
    LectCtrlCantLect: TIntegerField;
    LectCtrlNrLec: TIntegerField;
    LectCtrlIdEmp: TIntegerField;
    LectCtrlCodLec: TStringField;

    dsLectTran: TDataSource;
    LectTran: TClientDataSet;
    LectTranIdSuc: TIntegerField;
    LectTranIdArt: TIntegerField;
    LectTranMarca: TStringField;
    LectTranDetalle: TStringField;
    LectTranTalle: TIntegerField;
    LectTranCantLect: TIntegerField;
    LectTranCantSist: TIntegerField;
    LectTranDif_Cant: TIntegerField;
    LectTranTipoAj: TSmallintField;
    LectTranDetAjuste: TStringField;
    LectTranPFinal: TCurrencyField;

    lblEstadoLect: TLabel;
    btnProcLect: TRzMenuButton;
    pcLectCtrl: TRzPageControl;
    tsLecturas: TRzTabSheet;
    tsTransformacion: TRzTabSheet;
    tsComparacion: TRzTabSheet;
    gLectCtrl: TwwDBGrid;
    mmLectCtrl: TRzMemo;
    tsAjustes: TRzTabSheet;
    gLectTran: TwwDBGrid;
    lblContDesde: TLabel;
    edtStkDes: TRzDateTimeEdit;
    edtStkHas: TRzDateTimeEdit;
    lblContHasta: TLabel;
    btnExportar: TRzMenuButton;
    lblEstadoProc: TLabel;
    pmExpCtrlAjts: TPopupMenu;
    ExportarComparacindedatos1: TMenuItem;
    ExportarDatosdelAjuste1: TMenuItem;
    pmCompAjte: TPopupMenu;
    CompararProductosLeidos: TMenuItem;
    ComparaTodosLosProductos: TMenuItem;
    ExportarAjustes1: TMenuItem;
    pnlAjuste: TRzPanel;
    gAjustes: TwwDBGrid;
    btnGenerar_Ajustes: TRzBitBtn;
    RzSplitter1: TRzSplitter;
    gItemsIV: TwwDBGrid;
    qProductos: TMDOQuery;
    qProductosIDARTICULO: TIntegerField;
    qProductosMARCA: TMDOStringField;
    qProductosDETALLE: TMDOStringField;
    qProductosTIENETALLE: TSmallintField;
    qProductosPRECIO: TMDOBCDField;
    btnIniCieInv: TRzBitBtn;
    qInventarioIDFACTURA: TIntegerField;
    qInventarioIDSUCURSAL: TIntegerField;
    qInventarioIDPUNTOVENTA: TIntegerField;
    qInventarioIDSTORIGEN: TIntegerField;
    qInventarioIDSTDESTINO: TIntegerField;
    qInventarioFECHAF: TDateField;
    qInventarioNROFACTURA: TMDOStringField;
    qInventarioCANTARTIC: TSmallintField;
    qInventarioTNETO: TMDOBCDField;
    qInventarioTNOCOMP: TMDOBCDField;
    qInventarioTCOSTO: TMDOBCDField;
    qInventarioTOTAL: TMDOBCDField;
    qInventarioNOMEMPLEADO: TMDOStringField;
    qInventarioIDEMPLEADO: TIntegerField;
    qInventarioDIAHORA: TDateTimeField;
    qItemsIvIDFACTURA: TIntegerField;
    qItemsIvIDSUCURSAL: TIntegerField;
    qItemsIvIDPUNTOVENTA: TIntegerField;
    qItemsIvIDITEM: TIntegerField;
    qItemsIvIDARTICULO: TIntegerField;
    qItemsIvTALLE: TIntegerField;
    qItemsIvIDSUCURSALO: TIntegerField;
    qItemsIvIDSUCURSALD: TIntegerField;
    qItemsIvCANTIDAD: TIntegerField;
    qItemsIvPRECIOFINAL: TMDOBCDField;
    qItemsIvPRECIOTOTAL: TMDOBCDField;
    qItemsIvPRECIOCOSTO: TMDOBCDField;
    qItemsIvPRECIONETO: TMDOBCDField;
    qItemsIvNOCOMPUTABLES: TMDOBCDField;
    qItemsIvMARCA: TMDOStringField;
    qItemsIvDETALLE: TMDOStringField;
    qItemsIvTIENETALLE: TSmallintField;
    qItemsIvCOLOR: TMDOStringField;
    qResultadoInvGRUPO: TMDOStringField;
    qResultadoInvAREA: TMDOStringField;
    qResultadoInvSUBGRUPO: TMDOStringField;
    qResultadoInvIDARTICULO: TIntegerField;
    qResultadoInvTALLE: TIntegerField;
    qResultadoInvDETART: TMDOStringField;
    qResultadoInvCOLOR: TMDOStringField;
    qResultadoInvCANTIDAD: TIntegerField;
    qResultadoInvPRECIOCOSTO: TMDOBCDField;
    qResultadoInvPRECIONETO: TMDOBCDField;
    qResultadoInvNOCOMPUTABLES: TMDOBCDField;
    qResultadoInvTIENETALLE: TSmallintField;
    qResultadoInvPRECIOFINAL: TMDOBCDField;
    qResultadoInvPRECIOTOTAL: TMDOBCDField;
    dbpResInv: TppDBPipeline;
    lblRITotCto: TppDBCalc;
    lblPrefin: TppLabel;
    lblPrecioFinal: TppDBText;
    lblRITotFin: TppDBCalc;
    lblSGTotCto: TppDBCalc;
    lblSGTotFin: TppDBCalc;
    lblGrTotCto: TppDBCalc;
    lblGRTotFin: TppDBCalc;
    shResInv4: TppShape;
    ppSummaryBand1: TppSummaryBand;
    shResInv3: TppShape;
    shResInv2: TppShape;
    shResInv6: TppShape;
    shResInv5: TppShape;
    ItemsIvIdDeposito: TIntegerField;
    lblTotGrp: TppLabel;
    shResInv1: TppShape;
    gbABMRtoManual: TRzGroupBox;
    lblNomEmpRI: TDBText;
    lblPeriodo: TLabel;
    Label1: TLabel;
    lblEmpleado: TLabel;
    lblSucursal: TLabel;
    lblNroFac: TLabel;
    lblRemAct: TDBText;
    edtPeriodoRI: TwwDBEdit;
    edtFechaRI: TwwDBDateTimePicker;
    edtEmpleadoRI: TwwDBEdit;
    cbSucursalRI: TwwDBComboBox;
    edtComprobanteRI: TwwDBEdit;
    btnNuevoRI: TRzBitBtn;
    btnGrabarRI: TRzBitBtn;
    btnCancelarRI: TRzBitBtn;
    btnImprimirRI: TRzBitBtn;
    pnlSubDep: TRzPanel;
    lblSubDepO: TLabel;
    lblSubDepD: TLabel;
    cbSubDepOr: TwwDBComboBox;
    cbSubDepD: TwwDBComboBox;
    tsComparativo: TRzTabSheet;
    pnlTopCom: TRzPanel;
    lblPerCom1: TLabel;
    edtComInvPer1: TRzSpinner;
    lblSucACom: TLabel;
    cbSucComInv: TRzComboBox;
    edtComInvPer2: TRzSpinner;
    lblPerCom2: TLabel;
    btnComInv: TRzBitBtn;
    btnExpComInv: TRzBitBtn;
    qPerComInv: TMDOQuery;
    dsqPerComInv: TDataSource;
    qPerComInvDETSUCURSAL: TMDOStringField;
    qPerComInvIDARTICULO: TIntegerField;
    qPerComInvMARCA: TMDOStringField;
    qPerComInvDETALLE: TMDOStringField;
    qPerComInvCANT1: TIntegerField;
    qPerComInvCOSTO1: TMDOBCDField;
    qPerComInvFECHA1: TDateField;
    qPerComInvCANT2: TIntegerField;
    qPerComInvCOSTO2: TMDOBCDField;
    qPerComInvFECHA2: TDateField;
    gComPerInv: TwwDBGrid;

    procedure btnEnviarClick(Sender: TObject);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure ItemsTAfterPost(DataSet: TDataSet);
    procedure ItemsTNewRecord(DataSet: TDataSet);
    procedure ItemsTPrecioFinalChange(Sender: TField);

    procedure gFacTEnter(Sender: TObject);
    procedure gFacTKeyPress(Sender: TObject; var Key: Char);
    procedure gFacTColExit(Sender: TObject);
    procedure gFacTCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure gFacTUpdateFooter(Sender: TObject);
    procedure gFacTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gFacTColEnter(Sender: TObject);

    procedure FacTNewRecord(DataSet: TDataSet);
    procedure FacTVendedorValidate(Sender: TField);
    procedure FacTOrigenValidate(Sender: TField);
    procedure FacTIdStOrigenValidate(Sender: TField);
    procedure FacTIdStDestinoValidate(Sender: TField);

    procedure edtComprobanteExit(Sender: TObject);
    procedure edtEmpleadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbDepOrigenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCerrarPrintClick(Sender: TObject);
    procedure btnImpFiscalClick(Sender: TObject);
    procedure btnImpComunClick(Sender: TObject);
    procedure btnCodeBarClick(Sender: TObject);
    procedure cbDepDestinoExit(Sender: TObject);
    procedure cbDepOrigenExit(Sender: TObject);
    procedure ItemsTAfterDelete(DataSet: TDataSet);
    procedure ItemsTTalleGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure ItemsTTalleSetText(Sender: TField; const Text: String);
    procedure edtComprobanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSalirClick(Sender: TObject);
    procedure gTraspasosDblClick(Sender: TObject);
    procedure btnRemitoNuevoClick(Sender: TObject);
    procedure btnRemitoGrabarClick(Sender: TObject);
    procedure btnRemitoCancelClick(Sender: TObject);
    procedure btnRemitoSearchClick(Sender: TObject);
    procedure btnRemitoPrintClick(Sender: TObject);
    procedure ItemsTIdArticuloValidate(Sender: TField);
    procedure ItemsTIdArticuloSetText(Sender: TField; const Text: String);
    procedure ItemsTCantidadChange(Sender: TField);
    procedure ItemsTTalleValidate(Sender: TField);
    procedure FacTBeforePost(DataSet: TDataSet);
    procedure FacTIdMotivoValidate(Sender: TField);
    procedure cbTipoAjExit(Sender: TObject);
    procedure cbTipoAjKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ItemsTBeforePost(DataSet: TDataSet);
    procedure btnModificarClick(Sender: TObject);
    procedure edtRemSucExit(Sender: TObject);
    procedure cbDepOrigenEnter(Sender: TObject);
    procedure cbDepDestinoEnter(Sender: TObject);
    procedure pcTraspasosChange(Sender: TObject);
    procedure cbSubDepOrEnter(Sender: TObject);
    procedure cbSubDepDEnter(Sender: TObject);
    procedure FacTIdSubDepOChange(Sender: TField);
    procedure FacTIdSubDepDChange(Sender: TField);
    procedure gTraspasosCalcCellColors(Sender: TObject; Field: TField;
              State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FacTIdSubDepOValidate(Sender: TField);
    procedure FacTIdSubDepDValidate(Sender: TField);
    procedure FacTTipoAjusteValidate(Sender: TField);
    procedure btnVerDesdeClick(Sender: TObject);
    procedure ItemsTBeforeInsert(DataSet: TDataSet);
    procedure cbSucursalesChange(Sender: TObject);
    procedure btnBuscarTransClick(Sender: TObject);
    procedure cbSucAEnviarEnter(Sender: TObject);
    procedure cbSucAEnviarChange(Sender: TObject);
    procedure gEnviosDblClick(Sender: TObject);
    procedure gEnviosMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
    procedure gEnviosUpdateFooter(Sender: TObject);
    procedure btnBuscarEnvClick(Sender: TObject);
    procedure cbSucARe_EnvChange(Sender: TObject);
    procedure FacTEstadoGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure edtEntregarAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pcTraspasosClose(Sender: TObject; var AllowClose: Boolean);
    procedure btnBusDomClick(Sender: TObject);
    procedure cbSucA_DomicChange(Sender: TObject);
    procedure btnExpOprClick(Sender: TObject);
    procedure btnExpPrdDomClick(Sender: TObject);
    procedure btnSelAllEnvClick(Sender: TObject);
    procedure gProdDomDblClick(Sender: TObject);
    procedure FacTIdFacDomChange(Sender: TField);
    procedure ItemsTCantidadValidate(Sender: TField);
    procedure edtRemSucCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure btnImpProdDomClick(Sender: TObject);
    procedure ModEnviadosReconcileError(DataSet: TCustomClientDataSet;
              E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure ModEnviadosAfterPost(DataSet: TDataSet);
    procedure btnSaveRemClick(Sender: TObject);
    procedure qPrdDomNOMBRESUCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure dspqRemEnvBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
              DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure btnDesSelEnvClick(Sender: TObject);
    procedure cbFleteroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ItemsIvAfterDelete(DataSet: TDataSet);
    procedure ItemsIvTalleSetText(Sender: TField; const Text: string);
    procedure ItemsIvTalleGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ItemsIvIdArticuloValidate(Sender: TField);
    procedure gItemsIUpdateFooter(Sender: TObject);
    procedure gInventariosUpdateFooter(Sender: TObject);
    procedure btnBuscarInvClick(Sender: TObject);
    procedure btnExpRemInvClick(Sender: TObject);
    procedure gInventariosDblClick(Sender: TObject);
    procedure btnCancelarRIClick(Sender: TObject);
    procedure btnGrabarRIClick(Sender: TObject);
    procedure btnImprimirRIClick(Sender: TObject);
    procedure gItemsIKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FacIvNewRecord(DataSet: TDataSet);
    procedure FacIvAfterPost(DataSet: TDataSet);
    procedure FacIvPeriodoValidate(Sender: TField);
    procedure ItemsIvNewRecord(DataSet: TDataSet);
    procedure gItemsIColExit(Sender: TObject);
    procedure edtComprobanteRIExit(Sender: TObject);
    procedure gItemsIEnter(Sender: TObject);
    procedure gItemsIKeyPress(Sender: TObject; var Key: Char);
    procedure edtPeriodoRIKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtEmpleadoRIKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gItemsICalcCellColors(Sender: TObject; Field: TField;
              State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FacIvIdDepositoValidate(Sender: TField);
    procedure gItemsIColEnter(Sender: TObject);
    procedure FacIvEmpleadoValidate(Sender: TField);
    procedure ItemsIvIdArticuloSetText(Sender: TField; const Text: string);
    procedure cbSucursalRIEnter(Sender: TObject);
    procedure btnImpDifClick(Sender: TObject);
    procedure btnExpDifClick(Sender: TObject);
    procedure btnCalcResInvClick(Sender: TObject);
    procedure rgResTallesInvClick(Sender: TObject);
    procedure gResInvDblClick(Sender: TObject);
    procedure ItemsIvCantidadValidate(Sender: TField);
    procedure TraspEstadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure gTraspasosUpdateFooter(Sender: TObject);
    procedure TraspAfterOpen(DataSet: TDataSet);
    procedure TraspEN_AMBASGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnLectCtrlClick(Sender: TObject);
    procedure cbSucLectCtrlEnter(Sender: TObject);
    procedure gLectTranDblClick(Sender: TObject);
    procedure LectCtrlIdArtValidate(Sender: TField);
    procedure cbSucLectCtrlChange(Sender: TObject);
    procedure LectTranIdSucGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ExportarComparacindedatos1Click(Sender: TObject);
    procedure ExportarDatosdelAjuste1Click(Sender: TObject);
    procedure btnAjustesControlClick(Sender: TObject);
    procedure gLectTranCalcCellColors(Sender: TObject; Field: TField;
              State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure CompararProductosLeidosClick(Sender: TObject);
    procedure ComparaTodosLosProductosClick(Sender: TObject);
    procedure ExportarAjustes1Click(Sender: TObject);
    procedure LectTranTipoAjGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnGenerar_AjustesClick(Sender: TObject);
    procedure TraspTipoAJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure gItemsIVUpdateFooter(Sender: TObject);
    procedure qInventarioAfterScroll(DataSet: TDataSet);
    procedure btnIniCieInvClick(Sender: TObject);
    procedure qInventarioIDSTORIGENGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure gResInvUpdateFooter(Sender: TObject);
    procedure gItemsIVDblClick(Sender: TObject);
    procedure gItemsIDblClick(Sender: TObject);
    procedure btnComInvClick(Sender: TObject);
    procedure btnExpComInvClick(Sender: TObject);
    procedure gComPerInvUpdateFooter(Sender: TObject);
    procedure gComPerInvDblClick(Sender: TObject);
  private
    { Private declarations }
    Hubo_Mod_Remito, Buscando_ArtT,
    Leyendo_RemitoT, New_RemT,
    Hubo_Modificacion, Buscando_ArtI,
    Leyendo_RemitoI, Leyendo_RemitoA,
    New_RemI, New_RemA, Sumando_Totales: Boolean;

    TOper, TCArt, Cant_Item_Inv, Sizes,
    Cant_Item_Ajt, Cantidad_Items, Cantidad_Etq,
    Total_Art, MaxLineaItm, IdSucDom, Id_Sucur,
    IdSucLec, Entidad, IdSucEnv, CantE, Total_Remitos,
    Total_Lineas: Integer;

    RI_TPNeto, RI_TFinal,
    RI_NoComp, RI_TCosto, Total,
    Total_Rem_Inv, Total_Rem_Ajt,
    TNeto, TNoCmp, TCosto, TempTotal,
    TCosto1, TCosto2: Currency;

    NomDep: String;
    Fec_TI,
    StkDes, StkHas, Desde: TDate;
    TRem, StDSuc: String;

    procedure Habilitar_Ingreso(Habilitar: Boolean);
    procedure UpdateTotalsTraspaso;
    procedure VaciarTablas;
    procedure Leer_Comprobante;
    procedure Grabar_Remito;
    procedure Cargar_Registro;
    procedure Transferencias_Domicilios;

    //Envios
    procedure Buscar_Remitos(T: SmallInt);

    // Inventarios
    procedure DatosArticuloBuscado_INV(Sender: TField; Text: String);
    procedure Habilitar_Ingreso_Inventario(Habilitar: Boolean);
    procedure UpdateTotals_Inventario;
    procedure VaciarTablas_Inventario;
    procedure VaciarTablas_Ajustes;
    procedure Ver_Inventario;
    procedure Cargar_Registro_Inventario;
    procedure Cargar_Registro_Ajustes;
    procedure Grabar_Remito_Inventario;
    procedure Leer_Comprobante_Inventario;
    procedure Leer_Comprobante_Ajustes;
    procedure Calcular_Resultado_Inventario(IdSt, IdPr, IdAr: Integer);

    procedure Leer_Archivo_De_Control;
    procedure Proc_Archivo_De_Control(T: SmallInt);
    procedure Ajustar_Controles(TAjuste: SmallInt; FAjuste: TDate);

  public
    { Public declarations }
    NroRec,
    TipoRemito: Integer;
  end;

const
  RT = 'Select T.IdFactura, T.IdSucursal, T.IdPuntoVenta, '+
       '       T.TipoFactura, T.FechaF, T.NroFactura, T.TipoAj, '+
       '       T.Empleado, T.IdStOrigen, T.IdStDestino, T.Total, '+
       '       T.DiaHora, T.CantArtic, T.Estado, T.NroRemSuc, '+
       '       T.EntregarA, T.IdFletero, T.DomicilioE, T.En_Ambas, '+
       '       E.Nombre as NomEnt, D.NombreSuc as DestMov, '+
       '       O.NombreSuc as SOrigen,  T.IdSubDepO, T.IdSubDepD, '+
       '       U.Nombre as NomUsr, C.Descripcion, F.Nombre as Fletero '+
       'From Traspaso T '+
       'Join Sucursales O '+
       '  on O.IdSucursal = T.IdStOrigen '+
       'Left Outer Join Sucursales D '+
       '  on D.IdSucursal = T.IdStDestino '+
       'Join TiposComp C '+
       '  on C.IdComprobante = T.TipoFactura '+
       'Join Empleados E '+
       '  on E.IdEmpleado = T.Empleado '+
       'Join Empleados U '+
       '  on U.IdEmpleado = T.Usuario '+
       'Left Outer Join Empleados F '+
       '  on F.IdEmpleado = T.IdFletero '+
       'Where (T.State = 0) And '+
       '      (T.TipoFactura =:TFac) And '+
       '      (T.FechaF >=:Desde) <Cond> '+
       'Order By T.DiaHora desc, T.IdStDestino ';

(*
Select T.IdFactura, T.IdSucursal, T.IdPuntoVenta, T.TipoFactura,
       T.FechaF, T.NroFactura,  T.TipoAJ, T.Empleado, T.IdStOrigen,
       T.IdStDestino, T.Total, T.DiaHora, T.CantArtic,
       T.Estado, T.NroRemSuc, T.ENTREGARA, T.IdFletero,
       T.DOMICILIOE,  E.Nombre as NomEnt,
       D.NombreSuc as DestMov, O.NombreSuc as SOrigen,
       T.IdSubDepO, T.IdSubDepD, U.Nombre as NomUsr,
       C.Descripcion
From Traspaso T
Join Sucursales O
  on O.IdSucursal = T.IdStOrigen
Left Outer Join Sucursales D
  on D.IdSucursal = T.IdStDestino
Join TiposComp C
  on C.IdComprobante = T.TipoFactura
Join Empleados E
  on E.IdEmpleado = T.Empleado
Join Empleados U
  on U.IdEmpleado = T.Usuario
Where (T.TipoFactura =:TFac)  And
      (T.FechaF >=:Desde) And
      (T.IdStOrigen = :IdSuc) And
      (T.State = 0)
Order By T.FechaF desc

*)

  RA = 'Select T.IdFactura, T.IdSucursal, T.IdPuntoVenta, T.TipoFactura, T.FechaF, '+
       '       T.NroFactura, T.TipoAj, T.Empleado, T.IdStOrigen, T.IdStDestino, '+
       '       T.Total, T.CantArtic, T.Estado, T.DiaHora, T.En_Ambas, M.Motivo as DestMov, '+
       '       O.NombreSuc as SOrigen, T.NroRemSuc, T.IdFletero, T.IdSubDepO, '+
       '       T.IdSubDepD, E.Nombre as NomEnt, C.Descripcion, U.Nombre as NomUsr, '+
       '       T.EntregarA, T.DomicilioE, F.Nombre as Fletero '+
       'From Traspaso T '+
       'Join Sucursales O '+
       '  on O.IdSucursal = T.IdStOrigen '+
       'Join MotivosAJ M '+
       '  on M.IdMotivo = T.IdStDestino '+
       'Join TiposComp C '+
       '  on C.IdComprobante = T.TipoFactura '+
       'Left outer Join Empleados E '+
       '  on E.IdEmpleado = T.Empleado '+
       'Left outer Join Empleados U '+
       '  on U.IdEmpleado = T.Usuario '+
       'Left Outer Join Empleados F '+
       '  on F.IdEmpleado = T.IdFletero '+
       'Where (T.State = 0) And (T.TipoFactura = :TFac) And (T.FechaF >= :Desde) <Cond> '+
       'Order By T.DiaHora desc ';

  Dv = 'Select T.IdFactura, T.IdSucursal, T.IdPuntoVenta, T.TipoFactura, T.FechaF, '+
       '       T.NroFactura, T.TipoAj, T.Empleado, T.IdStOrigen, T.IdStDestino, '+
       '       T.Total, T.CantArtic, T.Estado, T.DiaHora, T.En_Ambas, M.Motivo as DestMov, '+
       '       O.NombreSuc as SOrigen, T.NroRemSuc, T.IdFletero, T.IdSubDepO, '+
       '       T.IdSubDepD, E.Nombre as NomEnt, C.Descripcion, U.Nombre as NomUsr, '+
       '       T.EntregarA, T.DomicilioE, F.Nombre as Fletero '+
       'From Traspaso T '+
       'Join Sucursales O '+
       '  on O.IdSucursal = T.IdStOrigen '+
       'Join MotivosAJ M '+
       '  on M.IdMotivo = T.IdStDestino '+
       'Join TiposComp C '+
       '  on C.IdComprobante = T.TipoFactura '+
       'Left outer Join Proveedores E '+
       '  on E.IdProveedor = T.Empleado '+
       'Left outer Join Empleados U '+
       '  on U.IdEmpleado = T.Usuario '+
       'Left Outer Join Empleados F '+
       '  on F.IdEmpleado = T.IdFletero '+
       'Where (T.State = 0) And (T.TipoFactura =:TFac) And (T.FechaF >=:Desde) <Cond> '+
       'Order By T.DiaHora desc ';
var
  frmTransDep: TfrmTransDep;

  procedure Remito(Q_H: Integer);

implementation

uses udmGestion, udmSaveFile, uBuscaEmp, uViewFacT, uConfiguracion, uABMArticulos,
     uBuscaFac, uFiscal, uClaveMod, uListaSelectTalles, uProveedores, uDlgExt,
     uImpCodBar, uViewFacV, uRecalcularStock, uSearchProd, uMovStk, uIniCieInv;

{$R *.DFM}

procedure Remito(Q_H: Integer);
begin
  frmTransDep := TfrmTransDep.Create(Application);
  frmTransDep.TipoRemito := Q_H;
  frmTransDep.ShowModal;
end;

procedure TfrmTransDep.Habilitar_Ingreso(Habilitar: Boolean);
begin
  edtEmpleado.Enabled := Habilitar;
  edtFecha.Enabled := Habilitar;
  cbDepOrigen.Enabled := Habilitar;
  cbDepDestino.Enabled := Habilitar;
  cbTipoAj.Enabled := Habilitar;
  edtComprobante.Enabled := Habilitar;
  btnRemitoGrabar.Enabled := Habilitar;

  if cbFletero.Visible then
    cbFletero.Enabled := Habilitar;

  gFacT.Font.Name := 'Tahoma';
  gFacT.Font.Size := 8;
  gFacT.ControlType.Clear;
  gFacT.Selected.Clear;
  gFacT.Selected.Add('IdItems'#9'3'#9'Nº'#9'F');
  gFacT.Selected.Add('IdArticulo'#9'9'#9'Código');
  if Control_Talles then
  begin
    gFacT.Selected.Add('Talle'#9'4'#9'Talle');
    gFacT.Selected.Add('DescripcionArticulo'#9'40'#9'Descripción Producto'#9'F');
  end
  else begin
    gFacT.Selected.Add('DescripcionArticulo'#9'40'#9'Descripción Producto'#9'F');
    gFacT.Selected.Add('Observacion'#9'10'#9'Observación'#9'F');
  end;
  if Habilitar then
    gFacT.Selected.Add('StkAct'#9'8'#9'Stk O'#9'F');
  gFacT.Selected.Add('Cantidad'#9'8'#9'Cantidad');
  gFacT.Selected.Add('PrecioFinal'#9'9'#9'Unitario'#9'F');
  gFacT.Selected.Add('PrecioTotal'#9'12'#9'Precio Total'#9'F');
  gFacT.Enabled := True;

  if Habilitar then
  begin
    gFacT.ReadOnly := False;
    gFacT.Options := gFacT.Options + [dgEditing];
  end
  else begin
    gFacT.ReadOnly := True;
    gFacT.Options := gFacT.Options - [dgEditing];
  end;
  gFacT.RefreshDisplay;
end;

procedure TfrmTransDep.UpdateTotalsTraspaso;
begin
  if not Sumando_Totales then
  begin
    try
      Sumando_Totales := True;
      ItemsT.First;
      TempTotal := 0;
      Total_Lineas := 0;
      Total_Art := 0;
      Cantidad_Etq := 0;
      while not ItemsT.Eof do
      begin
        TempTotal := TempTotal + (ItemsTPrecioFinal.AsCurrency * ItemsTCantidad.AsFloat);
        Cantidad_Etq := Cantidad_Etq + ItemsTCantidad.AsInteger;
        Inc(Total_Art);
        if Length(Trim(ItemsTDetalle1.AsString)) > 0 then
          Inc(Total_Lineas);
        if Length(Trim(ItemsTDetalle2.AsString)) > 0 then
          Inc(Total_Lineas);
        if Length(Trim(ItemsTDetalle3.AsString)) > 0 then
          Inc(Total_Lineas);
        if Length(Trim(ItemsTDetalle4.AsString)) > 0 then
          Inc(Total_Lineas);
        Inc(Total_Lineas);

        if not Control_Talles then
        begin
          if Trim(ItemsTObservacion.AsString) > Vacio then
          begin
            ItemsT.Edit;
            try
              ItemsTTalle.AsInteger := StrToInt(Trim(ItemsTObservacion.AsString));
            except
              ItemsTTalle.AsInteger := 0;
            end;
            ItemsT.Post;
          end;
        end;
        ItemsT.Next;
      end;
      if not (FacT.State in dsEditModes) then
        FacT.Edit;
      FacTTotal.AsCurrency := TempTotal;
      FacTCantArtic.AsInteger := Total_Art;
    finally
      Cantidad_Items := Total_Art;
      ItemsT.Last;
      gFacT.ColumnByName('DescripcionArticulo').FooterValue := 'Cantidad de Lineas/Items/Etq';
      gFacT.ColumnByName('Observacion').FooterValue := Format('%d',[Total_Lineas]);
      gFacT.ColumnByName('Cantidad').FooterValue := Format('%d',[Total_Art]);
      gFacT.ColumnByName('PrecioFinal').FooterValue := Format('%d',[Cantidad_Etq]);
      gFacT.ColumnByName('PrecioTotal').FooterValue := Format('%m',[TempTotal]);
      Sumando_Totales := False;
    end;
  end;
end;

procedure TfrmTransDep.gFacTUpdateFooter(Sender: TObject);
begin
  gFacT.ColumnByName('DescripcionArticulo').FooterValue := 'Cantidad de Lineas/Items/Etq';
  gFacT.ColumnByName('Observacion').FooterValue := Format('%d',[Total_Lineas]);
  gFacT.ColumnByName('Cantidad').FooterValue := Format('%d',[Total_Art]);
  gFacT.ColumnByName('PrecioFinal').FooterValue := Format('%d',[Cantidad_Etq]);
  gFacT.ColumnByName('PrecioTotal').FooterValue := Format('%m',[TempTotal]);
end;

procedure TfrmTransDep.gProdDomDblClick(Sender: TObject);
begin
  Get_FacV(qPrdDomIdFactura.AsInteger,
           qPrdDomIdSucursal.AsInteger,
           qPrdDomIDPUNTOVENTA.AsInteger);
end;

procedure TfrmTransDep.Cargar_Registro;
var
  Actual: Integer;
begin
  try
    FillChar(Factura, SizeOf(Factura), 0);
    FillChar(ItemsFiscal, SizeOf(ItemsFiscal), 0);
    Leyendo_RemitoT := True;
    with Factura do
    begin
      IdFactura := FacTIdFactura.AsInteger;
      IdSucursal := FacTIdSucursal.AsInteger;
      IdPuntoVenta := FacTIdPuntoVenta.AsInteger;
      TipoFactura := FacTTipoFactura.AsInteger;
      TipoRemito := FacTTipoFactura.AsInteger;
      TipoFacStr := FacTTipoFacStr.AsString;
      NroFactura := FacTNroFactura.AsString;
      IdStOrigen := FacTIdStOrigen.AsInteger;
      Entidad := FacTVendedor.AsInteger;
      FechaF := FacTFechaF.AsDateTime;
      FechaI := 0;
      PuntoVta := 0;
      Case TipoRemito of
        RemitoTraspaso: begin
          IdStDestino := FacTIdStDestino.AsInteger;
          IdSubDepO := FacTIdSubDepO.AsInteger;
          if IdSubDepO > 0 then
            DepOrigen := 'Origen: '+ FacTOrigenStr.AsString + ' SD: '+FacTSubDepOStr.AsString
          else
            DepOrigen := 'Origen: '+ FacTOrigenStr.AsString;
          IdSubDepD := FacTIdSubDepD.AsInteger;
          if IdSubDepD > 0 then
            DepDestino := 'Destino: '+ FacTDestinoStr.AsString + ' SD: '+FacTSubDepDStr.AsString
          else
            DepDestino := 'Destino: '+ FacTDestinoStr.AsString;
          NombreEnt := 'Encargado: '+FacTNombreVendedor.AsString;
          TipoIva := CFi;
          TipoIvaStr := '';
          TipoDoc := NINGUNO;
          TipoDocStr := '';
          NroDocumento := FacTNroRemSuc.AsString;
          Direccion := 'Envio de sucursal ' + FacTOrigenStr.AsString +
                       ' a sucursal '+ FacTDestinoStr.AsString;
          Localidad := dmGestion.qTerminalesLocalidad.AsString;
          Provincia := dmGestion.qTerminalesProvincia.AsString;
          CodPostal := '';
          Telefono  := '';
          CompRef := FacTNroRemSuc.AsString;
          IdEmpresa := 0;
          Imprimir_Totales := True;
          lblFlete.Enabled := True;
          cbFletero.Enabled := True;
        end;
        RemitoAjusteSt: begin
          DepOrigen := 'Sucursal: '+ FacTOrigenStr.AsString;
          IdStDestino := FacTIdMotivo.AsInteger;
          if Trim(FacTTipoAjusteStr.AsString) > Vacio then
            DepDestino := 'Ajuste por: '+ FacTDestinoStr.AsString + ' - ' +FacTTipoAjusteStr.AsString
          else
            DepDestino := 'Ajuste por: '+ FacTDestinoStr.AsString;
          NombreEnt := 'Responsable: '+FacTNombreVendedor.AsString;
          TipoIva := CFi;
          TipoIvaStr := '';
          TipoDoc := NINGUNO;
          TipoDocStr := '';
          NroDocumento := FacTNroRemSuc.AsString;
          CompRef := FacTNroRemSuc.AsString;
          if dmGestion.Sucursales.Locate(dmGestion.SucursalesIDSUCURSAL.FieldName, IdStOrigen, []) then
            IdEmpresa := dmGestion.SucursalesIDEMPRESA.AsInteger
          else
            IdEmpresa := 1;
          Imprimir_Totales := True;
          lblFlete.Visible := False;
          cbFletero.Visible := False;
        end;
        Descuento_D: begin
          DepOrigen := 'Sucursal: '+ FacTOrigenStr.AsString;
          IdStDestino := FacTIdMotivo.AsInteger;
          DepDestino := 'Ajuste por: '+ FacTDestinoStr.AsString;
          if GetDatosEnt(FacTVendedor.AsInteger, IdBranch, 2, Datos_Ent) then
          begin
            NombreEnt := 'Proveedor: '+Datos_Ent.Nombre;
            TipoIva := Datos_Ent.TipoIva;
            TipoIvaStr := Datos_Ent.DetIva;
            TipoDoc := Datos_Ent.TipoDoc;
            TipoDocStr := Datos_Ent.DetDoc;
            NroDocumento := Datos_Ent.Documento;
            Direccion := Datos_Ent.Direccion;
            Localidad := Datos_Ent.Localidad;
            Provincia := Datos_Ent.Provincia;
            CodPostal := Datos_Ent.CodPostal;
            Telefono  := Datos_Ent.Telefono;
          end;
          CompRef := Vacio;
          if dmGestion.Sucursales.Locate(dmGestion.SucursalesIDSUCURSAL.FieldName, IdStOrigen, []) then
            IdEmpresa := dmGestion.SucursalesIDEMPRESA.AsInteger
          else
            IdEmpresa := 1;
          Imprimir_Totales := True;
          lblFlete.Visible := False;
          cbFletero.Visible := False;
        end;
      end;
      IdCompRef := 0;
      Descuento := 0;
      Neto := 0;
      Exento := 0;
      NoComputables:= 0;
      AlicuotaIva1 := 0;
      IvaAlicuota1 := 0;
      Total := FacTTotal.AsCurrency;
      Contado := 0;
      Tarjeta := 0;
      CtaCte := 0;
      Credito := 0;
      ChequeTer := 0;
      Empleado := FacTVendedor.AsInteger;
      NombreEmpleado := FacTNombreVendedor.AsString;
      TipoAj := FacTTipoAjuste.AsInteger;
      EntregarA := FacTEntregarA.AsString;
      DomicilioE:= FacTDomicilioE.AsString;
      IdFletero := FacTIdFletero.AsInteger;
      Imprimir_Totales := True;
    end;

    ItemsT.First;
    Actual := 0;
    while not ItemsT.Eof do
    begin
      Inc(Actual);
      ItemsFiscal[Actual].IdItem := ItemsTIdItems.AsInteger;
      ItemsFiscal[Actual].IdSucursal := FacTIdSucursal.AsInteger;
      ItemsFiscal[Actual].IdPuntoVenta := FacTIdPuntoVenta.AsInteger;
      ItemsFiscal[Actual].IdProducto := ItemsTIdArticulo.AsInteger;
      if Control_Talles then
        ItemsFiscal[Actual].Talle := ItemsTTalle.AsInteger
      else begin
        try
          ItemsFiscal[Actual].Talle := StrToInt(ItemsTObservacion.AsString);
        except
          ItemsFiscal[Actual].Talle := 0;
        end;
      end;

      ItemsFiscal[Actual].CodProd := ItemsTCodBarra.AsString;
      ItemsFiscal[Actual].Marca := ItemsTMarca.AsString;
      ItemsFiscal[Actual].Detalle := ItemsTDescripcion.AsString;
      ItemsFiscal[Actual].DescProd := ItemsTDescripcionArticulo.AsString;
      ItemsFiscal[Actual].SubDet := ItemsTObservacion.AsString;
      ItemsFiscal[Actual].Color := ItemsTColor.AsString;
      ItemsFiscal[Actual].IdPuntoVenta := IdSalesPoint;
      ItemsFiscal[Actual].TipoAj := ItemsTTipoAj.AsInteger;
      ItemsFiscal[Actual].Cantidad := ItemsTCantidad.AsFloat;
      ItemsFiscal[Actual].Bonificacion := 0;
      ItemsFiscal[Actual].Descuento := 0;
      ItemsFiscal[Actual].PrecioNetoT := 0;
      ItemsFiscal[Actual].PrecioFinal := ItemsTPrecioFinal.AsCurrency;
      ItemsFiscal[Actual].PrecioTotal := ItemsTPrecioTotal.AsCurrency;
      ItemsFiscal[Actual].Exento := 0;
      ItemsFiscal[Actual].NoComputable := 0;
      ItemsFiscal[Actual].CoefImpInt := 0;
      ItemsFiscal[Actual].MtoIva := 0;
      ItemsFiscal[Actual].IdAlcIva := 0;
      ItemsFiscal[Actual].AlicuotaIva := 0;
      ItemsFiscal[Actual].TIvaEnt := 0;
      ItemsFiscal[Actual].IdAlcIB := 0;
      ItemsFiscal[Actual].IngBto := 0;
      ItemsFiscal[Actual].IdSucSalida := FacTIdStOrigen.AsInteger;
      ItemsFiscal[Actual].IdSucDestino := FacTIdStDestino.AsInteger;
      ItemsFiscal[Actual].Servicio := (ItemsTServicio.AsInteger = Verdadero);
      ItemsFiscal[Actual].DetalleExt[1] := ItemsTDetalle1.AsString;
      ItemsFiscal[Actual].DetalleExt[2] := ItemsTDetalle2.AsString;
      ItemsFiscal[Actual].DetalleExt[3] := ItemsTDetalle3.AsString;
      ItemsFiscal[Actual].DetalleExt[4] := ItemsTDetalle4.AsString;
      If (Length(Trim(ItemsTDetalle1.AsString)) > 0) or
         (Length(Trim(ItemsTDetalle2.AsString)) > 0) or
         (Length(Trim(ItemsTDetalle3.AsString)) > 0) or
         (Length(Trim(ItemsTDetalle4.AsString)) > 0) then
        ItemsFiscal[Actual].DetalleExtendido := True;
      ItemsFiscal[Actual].IdFacDomRem := ItemsTIdFacDomCli.AsInteger;
      ItemsFiscal[Actual].IdSucDomRem := ItemsTIdSucDomCli.AsInteger;
      ItemsFiscal[Actual].MosDom := ItemsTParaDomicilio.AsInteger;
      ItemsT.Next;
    end;
  finally
    Factura.CantArtic := Actual;
    Leyendo_RemitoT := False;
  end;
end;

procedure TfrmTransDep.Grabar_Remito;
begin
  if Hubo_Modificacion then
  begin
    if (ItemsT.State in dsEditModes) and
       (ItemsTIdArticulo.AsInteger > 0) then
      ItemsT.Post
    else
      ItemsT.Cancel;
    if ItemsT.IsEmpty then
      raise EUsuario.Create('No hay productos cargados.');
    if FacT.State in dsEditModes then
      FacT.Post;
    Cargar_Registro;
    try
      LockWindowUpdate(Handle);
      if dmSaveFile.GrabarComprobanteStock(Factura, ItemsFiscal) then
      begin
        qTrasp.Close;
        qTrasp.Open;
        ShowMessage('el comprobante fue correctamente grabado.-');
        New_RemT := False;
        Hubo_Modificacion := False;
      end
      else begin
        FacT.Edit;
        Hubo_Modificacion := True;
        Habilitar_Ingreso(True);
      end;
    finally
      LockWindowUpdate(0);
    end;
  end;
end;

procedure TfrmTransDep.Leer_Comprobante;
begin
  try
    VaciarTablas;
    Total_Lineas := 0;
    Total_Art := 0;
    Cantidad_Etq := 0;
    TempTotal := 0;
    Screen.Cursor := crHourGlass;
    try
      Leyendo_RemitoT := True;
      Sumando_Totales := False;
      Items.Close;
      Items.Open;
      if not Items.IsEmpty then
      begin
        FacT.DisableControls;
        FacT.Insert;
        FacTIdFactura.AsInteger := TraspIdFactura.AsInteger;
        FacTIdSucursal.AsInteger := TraspIdSucursal.AsInteger;
        FacTIdPuntoVenta.AsInteger := TraspIDPUNTOVENTA.AsInteger;
        FacTTipoFactura.AsInteger := TraspTipoFactura.AsInteger;
        FacTFechaF.AsDateTime := TraspFechaF.AsDateTime;
        FacTNroFactura.AsString := TraspNroFactura.AsString;
        FacTNroRemSuc.AsString := TraspNroRemSuc.AsString;
        FacTVendedor.AsInteger := TraspEmpleado.AsInteger;
        FacTNombreVendedor.AsString := TraspNomEnt.AsString;
        FacTIdStOrigen.AsInteger := TraspIdStOrigen.AsInteger;
        FacTIdStDestino.AsInteger := TraspIdStDestino.AsInteger;
        FacTIdMotivo.AsInteger := TraspIdStDestino.AsInteger;
        FacTTotal.AsCurrency := TraspTotal.AsCurrency;
        FacTTipoAjuste.AsInteger := TraspTipoAJ.AsInteger;
        FacTCantArtic.AsInteger := TraspCantArtic.AsInteger;
        FacTEstado.AsInteger := TraspEstado.AsInteger;
        FacTIdSubDepO.AsInteger := TraspIdSubDepO.AsInteger;
        FacTIdSubDepD.AsInteger := TraspIdSubDepD.AsInteger;
        FacTCantArtic.AsInteger := ItemsT.RecordCount;
        FacTEntregarA.AsString := TraspEntregarA.AsString;
        FacTDomicilioE.AsString := TraspDomicilioE.AsString;
        FacT.Post;

        Items.First;
        ItemsT.DisableControls;
        while not Items.Eof do
        begin
          ItemsT.Append;
          ItemsTIdFactura.AsInteger := ItemsIdFactura.AsInteger;
          ItemsTIdItems.AsInteger := ItemsIdItem.AsInteger;
          ItemsTIdArticulo.AsInteger := ItemsIdArticulo.AsInteger;
          ItemsTCodBarra.AsString := ItemsCodBarra.AsString;
          ItemsTCantidad.AsFloat := ItemsCantidad.AsInteger;
          Cantidad_Etq := Cantidad_Etq + ItemsCantidad.AsInteger;
          if Control_Talles then
            ItemsTTalle.AsInteger := ItemsTalle.AsInteger
          else
            ItemsTObservacion.AsString := ItemsTalle.AsString;
          ItemsTTipoAj.AsInteger := ItemsTipoAj.AsInteger;
          ItemsTPrecioFinal.AsCurrency := ItemsPrecioFinal.AsCurrency;
          ItemsTPrecioTotal.AsCurrency := ItemsPrecioTotal.AsCurrency;
          ItemsTMarca.AsString := ItemsMarca.AsString;
          ItemsTDescripcion.AsString := ItemsDetalle.AsString;
          ItemsTDescripcionArticulo.AsString := ItemsMarca.AsString+' '+ItemsDetalle.AsString;
          ItemsTTieneTalle.AsInteger := ItemsTieneTalle.AsInteger;
          ItemsTGrupoSubGrupo.AsString := ItemsGrupo.AsString+' '+ItemsSubGrupo.AsString;
          ItemsTObservacion.AsString := ItemsCodBarra.AsString;
          if not ItemsDETALLE1.IsNull then
          begin
            Inc(Total_Lineas);
            ItemsTDetalle1.Value := ItemsDETALLE1.Value;
          end;
          if not ItemsDETALLE2.IsNull then
          begin
            Inc(Total_Lineas);
            ItemsTDetalle2.Value := ItemsDETALLE2.Value;
          end;
          if not ItemsDETALLE3.IsNull then
          begin
            Inc(Total_Lineas);
            ItemsTDetalle3.Value := ItemsDETALLE3.Value;
          end;
          if not ItemsDETALLE1.IsNull then
          begin
            Inc(Total_Lineas);
            ItemsTDetalle4.Value := ItemsDETALLE4.Value;
          end;
          Inc(Total_Lineas);
          Inc(Total_Art);
          ItemsT.Post;
          Items.Next;
        end;
      end;
    finally
      TempTotal := FacTTotal.AsCurrency;
      FacT.EnableControls;
      ItemsT.First;
      ItemsT.EnableControls;
      gFacT.RefreshDisplay;
    end;
    gFacT.ColumnByName('DescripcionArticulo').FooterValue := 'Cantidad de Lineas/Items/Etq';
    gFacT.ColumnByName('Observacion').FooterValue := Format('%d',[Total_Lineas]);
    gFacT.ColumnByName('Cantidad').FooterValue := Format('%d',[Total_Art]);
    gFacT.ColumnByName('PrecioFinal').FooterValue := Format('%d',[Cantidad_Etq]);
    gFacT.ColumnByName('PrecioTotal').FooterValue := Format('%m',[TempTotal]);
    gFacT.RefreshDisplay;
  finally
    Leyendo_RemitoT := False;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmTransDep.ModEnviadosAfterPost(DataSet: TDataSet);
begin
  try
    if not qRemEnv.Transaction.InTransaction then
      qRemEnv.Transaction.StartTransaction;
    if ModEnviados.ApplyUpdates(0) > 0 then
      Abort;
    qRemEnv.Transaction.Commit;
  except
    on E:Exception do
    begin
      qRemEnv.Transaction.Rollback;
      raise EUsuario.Create('Error: '+E.Message);
    end;
  end;
end;

procedure TfrmTransDep.ModEnviadosReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ApplicationShowException(E);
end;

procedure TfrmTransDep.VaciarTablas;
begin
  if FacT.Active then
    FacT.EmptyDataSet
  else
    FacT.CreateDataSet;

  if ItemsT.Active then
    ItemsT.EmptyDataSet
  else
    ItemsT.CreateDataSet;

  if not dmGestion.MotivosAJ.Active then
    dmGestion.MotivosAJ.Open;
  qFleteros.Open;
  Total_Lineas := 0;
  Total_Art := 0;
  Cantidad_Etq := 0;
  TempTotal := 0;
  gFacT.ColumnByName('DescripcionArticulo').FooterValue := 'Cantidad de Lineas/Items/Etq';
  gFacT.ColumnByName('Observacion').FooterValue := Format('%d',[Total_Lineas]);
  gFacT.ColumnByName('Cantidad').FooterValue := Format('%d',[Total_Art]);
  gFacT.ColumnByName('PrecioFinal').FooterValue := Format('%d',[Cantidad_Etq]);
  gFacT.ColumnByName('PrecioTotal').FooterValue := Format('%m',[TempTotal]);
  Buscando_ArtT := False;
end;

procedure TfrmTransDep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  VaciarTablas;
  qTrasp.Close;
  qItemsT.Close;
  Action := caFree;
end;

procedure TfrmTransDep.FormCreate(Sender: TObject);
begin
  ItemsTPrecioTotal.DisplayFormat := StringDisplay;
  ItemsTPrecioTotal.EditFormat := StringEdit;
  ItemsTPrecioFinal.DisplayFormat := StringDisplay;
  ItemsTPrecioFinal.EditFormat := StringEdit;
  ItemsTIdArticulo.ValidChars := CodChars;
  ItemsTTalle.ValidChars := CodChars;

  FacTTotal.DisplayFormat := StringDisplay;
  FacTTotal.EditFormat := StringEdit;

  FacT.Close;
  ItemsT.Close;
  Buscando_ArtT := False;
  Hubo_Modificacion := False;
  MaxLineaItm := 21;
  TRem := Cero;
  Total_Remitos := 0;
  lblEstadoLect.Caption := ' Sin Procesar archivo';
  // Envios
  cbSucAEnviar.Items.Clear;
  cbSucARe_Env.Items.Clear;
  cbSucA_Domic.Items.Clear;
  lblCantEnc.Caption := '0';
  with dmGestion do
  begin
    Sucursales.First;
    while not Sucursales.Eof do
    begin
      if (SucursalesRemota.AsInteger = Verdadero) And
         (SucursalesACTIVA.AsInteger = Verdadero) And (IdBranch = 1) then
      begin
        cbSucAEnviar.Items.AddObject(SucursalesNombreSuc.AsString, TObject(SucursalesIdSucursal.AsInteger));
        cbSucARe_Env.Items.AddObject(SucursalesNombreSuc.AsString, TObject(SucursalesIdSucursal.AsInteger));
      end
      else begin
        if (SucursalesACTIVA.AsInteger = Verdadero) then
        begin
          cbSucAEnviar.Items.AddObject(SucursalesNombreSuc.AsString, TObject(SucursalesIdSucursal.AsInteger));
          cbSucARe_Env.Items.AddObject(SucursalesNombreSuc.AsString, TObject(SucursalesIdSucursal.AsInteger));
        end;
      end;
      if (SucursalesACTIVA.AsInteger = Verdadero) then
        cbSucA_Domic.Items.AddObject(SucursalesNombreSuc.AsString, TObject(SucursalesIdSucursal.AsInteger));
      Sucursales.Next;
    end;
    Id_Sucur := IdBranch;
    IdSucEnv := IdBranch;
  end;
  edtDesdeEnv.Date := StartOfTheMonth(Date);
  edtDesdeDom.Date := StartOfTheMonth(Date);
  edtHastaDom.Date := Date;
  edtDesdeRem.Date := StartOfTheMonth(Date);
  edtComInvPer1.Value := CurrentYear - 1;
  edtComInvPer2.Value := CurrentYear;
end;

procedure TfrmTransDep.FormShow(Sender: TObject);
begin
  gTraspasos.Selected.Clear;
  gEnvios.Selected.Clear;
  cbSucursales.Items.Clear;
  Case TipoRemito of
    RemitoTraspaso: begin
      qFleteros.Open;
      if IsServer then
        TRem := StringReplace(RT, '<Cond>','',[rfReplaceAll])
      else
        TRem := StringReplace(RT, '<Cond>',' And (T.IdStOrigen =:IdSuc or T.IdStDestino =:IdSuc) ',[rfReplaceAll]);
      gTraspasos.Selected.Add('SOrigen'#9'17'#9'Origen'#9'F');
      gTraspasos.Selected.Add('DestMov'#9'17'#9'Destino'#9'F');
      gTraspasos.Selected.Add('FechaF'#9'8'#9'Fecha'#9'F');
      gTraspasos.Selected.Add('DescCorta'#9'4'#9'TC'#9'F');
      gTraspasos.Selected.Add('NroFactura'#9'13'#9'Comprobante'#9'F');
      gTraspasos.Selected.Add('NomEnt'#9'15'#9'Destinatario'#9'F');
      gTraspasos.Selected.Add('CantArtic'#9'2'#9'CP'#9'F');
      gTraspasos.Selected.Add('Total'#9'9'#9'Total'#9'F');
      gTraspasos.Selected.Add('Estado'#9'2'#9'E'#9'F');
      gTraspasos.Selected.Add('En_Ambas'#9'2'#9'E~A'#9'F');
      gTraspasos.Selected.Add('NomUsr'#9'15'#9'Usuario'#9'F');
      gTraspasos.Selected.Add('DiaHora'#9'12'#9'Dia Hora'#9'F');
      gTraspasos.Selected.Add('NomUsr'#9'15'#9'Usuario'#9'F');
      gTraspasos.Selected.Add('ENTREGARA'#9'20'#9'Destinatario~Mercaderias'#9'F');
      gTraspasos.Selected.Add('DOMICILIOE'#9'30'#9'Domicilio~de Destino'#9'F');
      gTraspasos.Selected.Add('FLETERO'#9'10'#9'Flete'#9'F');
      lblState.Visible := False;
      Caption := 'Transferencias entre Depositos';
      lblEntidad.Caption := '&Destinatario:';
      tsTransferencias.Caption := 'Transferencias';
      lblTAjuste.Visible := False;
      cbTipoAj.Visible := False;
      lblOrigen.Caption := 'Depósito'#13#10'&Origen';
      lblDestino.Caption:= 'Depósito'#13#10'&Destino';
      lblRemSuc.Visible := True;
      edtRemSuc.Visible := True;
      pnlSubDep.Enabled := ConSubDep;
      pnlSubDep.Visible := ConSubDep;
      rgTipoTrans.Visible := True;
      dmGestion.Sucursales.Open;
      dmGestion.Sucursales.First;
      while not dmGestion.Sucursales.Eof do
      begin
        cbDepOrigen.Items.Add(dmGestion.SucursalesNombreSuc.AsString+#9+dmGestion.SucursalesIdSucursal.AsString);
        cbDepDestino.Items.Add(dmGestion.SucursalesNombreSuc.AsString+#9+dmGestion.SucursalesIdSucursal.AsString);
        cbSucursales.Items.AddObject(dmGestion.SucursalesNombreSuc.AsString, TObject(dmGestion.SucursalesIdSucursal.AsInteger));
        dmGestion.Sucursales.Next;
      end;
      Desde := StartOfTheMonth(Date);
      cbDepDestino.DataField := FacTIdStDestino.FieldName;
      tsPendientes.TabVisible := True;
      tsInventario.TabVisible := False;
      tsControles.TabVisible := False;
      gEnvios.Selected.Add('FechaF'#9'8'#9'Fecha'#9'F');
      gEnvios.Selected.Add('Descripcion'#9'13'#9'TC'#9'T');
      gEnvios.Selected.Add('NroFactura'#9'13'#9'Comprobante'#9'T');
      gEnvios.Selected.Add('CantArtic'#9'3'#9'CP'#9'T');
      gEnvios.Selected.Add('Total'#9'9'#9'Total'#9'T');
      gEnvios.Selected.Add('Origen'#9'15'#9'Origen'#9'T');
      gEnvios.Selected.Add('Destino'#9'15'#9'Destino'#9'T');
      gEnvios.Selected.Add('Selected'#9'8'#9'Enviar'#9'F');
    end;

    RemitoAjusteSt: begin
      TRem := StringReplace(RA, '<Cond>','',[rfReplaceAll]);
      gTraspasos.Selected.Add('SOrigen'#9'17'#9'Sucursal'#9'F');
      gTraspasos.Selected.Add('TipoAj'#9'7'#9'T.Ajuste'#9'F');
      gTraspasos.Selected.Add('DestMov'#9'17'#9'Motivo'#9'F');
      gTraspasos.Selected.Add('FechaF'#9'8'#9'Fecha'#9'F');
      gTraspasos.Selected.Add('DescCorta'#9'4'#9'TC'#9'F');
      gTraspasos.Selected.Add('NroFactura'#9'13'#9'Comprobante'#9'F');
      gTraspasos.Selected.Add('NomEnt'#9'15'#9'Responsable'#9'F');
      gTraspasos.Selected.Add('CantArtic'#9'2'#9'CP'#9'F');
      gTraspasos.Selected.Add('Total'#9'9'#9'Total'#9'F');
      gTraspasos.Selected.Add('NomUsr'#9'15'#9'Usuario'#9'F');
      gTraspasos.Selected.Add('DiaHora'#9'12'#9'Dia Hora'#9'F');
      Caption := 'Ajustes de Stock';
      lblEntidad.Caption := '&Empleado:';
      tsTransferencias.Caption := 'Ajustes';
      lblTAjuste.Visible := True;
      cbTipoAj.Visible := True;
      lblOrigen.Caption := 'Deposito'#13#10'a A&justar';
      lblDestino.Caption:= 'Motivo'#13#10'Aj&uste';
      lblRemSuc.Visible := False;
      edtRemSuc.Visible := False;
      pnlSubDep.Visible := False;
      rgTipoTrans.Visible := False;

      with dmGestion do
      begin
        Sucursales.Open;
        Sucursales.First;
        while not Sucursales.Eof do
        begin
          cbDepOrigen.Items.Add(SucursalesNombreSuc.AsString+#9+SucursalesIdSucursal.AsString);
          cbSucursales.Items.AddObject(SucursalesNombreSuc.AsString, TObject(SucursalesIdSucursal.AsInteger));
          if SucursalesIdSucursal.AsInteger = IdBranch then
            Desde := SucursalesFechaInicio.AsDateTime;
          Sucursales.Next;
        end;
        // Desde := StrToDate('01/01/2007');
        MotivosAJ.Open;
        MotivosAJ.First;
        while not MotivosAJ.Eof do
        begin
          cbDepDestino.Items.Add(MotivosAJMotivo.AsString+#9+MotivosAJIdMotivo.AsString);
          MotivosAJ.Next;
        end;
      end;
      cbDepDestino.DataField := FacTIdMotivo.FieldName;
      tsPendientes.TabVisible := False;
      gEnvios.Selected.Add('FechaF'#9'8'#9'Fecha'#9'F');
      gEnvios.Selected.Add('Descripcion'#9'13'#9'TC'#9'T');
      gEnvios.Selected.Add('NroFactura'#9'13'#9'Comprobante'#9'T');
      gEnvios.Selected.Add('CantArtic'#9'3'#9'CP'#9'T');
      gEnvios.Selected.Add('Total'#9'9'#9'Total'#9'T');
      gEnvios.Selected.Add('Origen'#9'15'#9'Origen'#9'T');
      gEnvios.Selected.Add('Destino'#9'15'#9'Motivo'#9'T');
      gEnvios.Selected.Add('Selected'#9'8'#9'Enviar'#9'F');
      cbSucursalRI.Clear;
      cbSucResInv.ClearItems;
      cbSucComInv.ClearItems;
      cbTInventario.ClearItems;
      cbSucLectCtrl.ClearItems;
      cbSucResInv.Items.AddObject('<TODOS>', TObject(0));
      //cbSucComInv.Items.AddObject('<TODOS>', TObject(0));
      cbTInventario.Items.AddObject('<TODOS>', TObject(0));
      rgTipoTrans.Visible := False;
      qBranch.Open;
      qBranch.First;
      while not qBranch.Eof do
      begin
        if qBranchActiva.AsInteger = Verdadero then
        begin
          cbSucursalRI.Items.Add(qBranchNombreSuc.AsString+#9+qBranchIdSucursal.AsString);
          cbTInventario.Items.AddObject(qBranchNombreSuc.AsString, TObject(qBranchIdSucursal.AsInteger));
          cbSucResInv.Items.AddObject(qBranchNombreSuc.AsString, TObject(qBranchIdSucursal.AsInteger));
          cbSucComInv.Items.AddObject(qBranchNombreSuc.AsString, TObject(qBranchIdSucursal.AsInteger));
          cbSucLectCtrl.Items.AddObject(qBranchNombreSuc.AsString, TObject(qBranchIdSucursal.AsInteger));
        end;
        qBranch.Next;
      end;
      edtStkHas.Date := Date;
      edtStkDes.Date := StartOfTheMonth(Date);
      // configuracion inventario y ajustes de inventario
      gItemsI.Selected.Clear;
      if Control_Talles then
      begin
        rgResTallesInv.Visible := True;
        gItemsI.Selected.Add('IdItem'#9'3'#9'Iº'#9'F');
        gItemsI.Selected.Add('IdArticulo'#9'8'#9'Código'#9'F');
        gItemsI.Selected.Add('Talle'#9'5'#9'Talle'#9'F');
        gItemsI.Selected.Add('DetArt'#9'40'#9'Detalle Producto'#9'F');
        gItemsI.Selected.Add('Precio'#9'12'#9'Precio'#9'F');
        gItemsI.Selected.Add('Cantidad'#9'10'#9'Cantidad'#9'F');
      end
      else begin
        rgResTallesInv.Visible := False;
        gItemsI.Selected.Add('IdItem'#9'3'#9'Iº'#9'F');
        gItemsI.Selected.Add('IdArticulo'#9'10'#9'Código'#9'F');
        gItemsI.Selected.Add('DetArt'#9'35'#9'Detalle Producto'#9'F');
        gItemsI.Selected.Add('Precio'#9'15'#9'Precio'#9'F');
        gItemsI.Selected.Add('Cantidad'#9'10'#9'Cantidad'#9'F');
      end;
      gInventarios.Enabled := False;
      gResInv.GroupFieldName := 'Area';
      edtPerInventario.Value := CurrentYear;
      edtPerResInv.Value := CurrentYear;
      ItemsIvPrecio.DisplayFormat := StringDisplay;
      ItemsIvPrecio.EditFormat := StringEdit;
      ItemsIvIdArticulo.ValidChars := CodChars;
      ItemsIvTalle.ValidChars := CodChars;
      ItemsIv.Close;
      FacIvTotal.DisplayFormat := StringDisplay;
      FacIvTotal.EditFormat := StringEdit;
      FacIv.Close;
      cbAreasResInv.ClearItems;
      cbAreasResInv.Items.AddObject('<TODOS>', TObject(0));
      qLstAreas.Open;
      qLstAreas.First;
      while not qLstAreas.Eof do
      begin
        cbAreasResInv.Items.AddObject(qLstAreasArea.AsString, TObject(qLstAreasIdArea.AsInteger));
        qLstAreas.Next;
      end;
      Habilitar_Ingreso_Inventario(False);
    end;

    Descuento_D: begin
      TRem := StringReplace(Dv, '<Cond>','',[rfReplaceAll]);
      gTraspasos.Selected.Add('SOrigen'#9'17'#9'Sucursal'#9'F');
      gTraspasos.Selected.Add('DestMov'#9'17'#9'Motivo'#9'F');
      gTraspasos.Selected.Add('FechaF'#9'8'#9'Fecha'#9'F');
      gTraspasos.Selected.Add('DescCorta'#9'4'#9'TC'#9'F');
      gTraspasos.Selected.Add('NroFactura'#9'13'#9'Comprobante'#9'F');
      gTraspasos.Selected.Add('NomEnt'#9'15'#9'Proveedor'#9'F');
      gTraspasos.Selected.Add('CantArtic'#9'2'#9'CP'#9'F');
      gTraspasos.Selected.Add('Total'#9'9'#9'Total'#9'F');
      gTraspasos.Selected.Add('Estado'#9'2'#9'E'#9'F');
      gTraspasos.Selected.Add('NomUsr'#9'15'#9'Usuario'#9'F');
      gTraspasos.Selected.Add('DiaHora'#9'12'#9'Dia Hora'#9'F');

      Caption := 'Devolución a Proveedores';
      lblEntidad.Caption := '&Proveedor:';
      tsTransferencias.Caption := 'Devoluciones';
      lblTAjuste.Visible := False;
      cbTipoAj.Visible := False;
      lblOrigen.Caption  := 'Deposito'#13#10'a A&justar';
      lblDestino.Caption := 'Motivo'#13#10'Aj&uste';
      lblRemSuc.Visible := False;
      edtRemSuc.Visible := False;
      pnlSubDep.Visible := False;
      with dmGestion do
      begin
       Sucursales.Open;
       Sucursales.First;
       while not Sucursales.Eof do
       begin
         cbDepOrigen.Items.Add(SucursalesNombreSuc.AsString+#9+SucursalesIdSucursal.AsString);
         cbSucursales.Items.AddObject(SucursalesNombreSuc.AsString, TObject(SucursalesIdSucursal.AsInteger));
         if SucursalesIdSucursal.AsInteger = IdBranch then
           Desde := SucursalesFechaInicio.AsDateTime;
         Sucursales.Next;
       end;

       //Desde := StrToDate('01/01/2005');
       MotivosAJ.Open;
       MotivosAJ.First;
       while not MotivosAJ.Eof do
       begin
         cbDepDestino.Items.Add(MotivosAJMotivo.AsString+#9+MotivosAJIdMotivo.AsString);
         MotivosAJ.Next;
       end;
       cbDepDestino.Enabled := True;
      end;
      cbDepDestino.DataField := FacTIdMotivo.FieldName;
      rgTipoTrans.Visible := False;
      tsPendientes.TabVisible := False;
      tsEnvios.TabVisible := False;
      tsInventario.TabVisible := False;
      tsControles.TabVisible := False;
    end;

    RemitoInventario: begin
      tsPendientes.TabVisible := False;
      tsEnvios.TabVisible := False;
      tsInventario.TabVisible := True;
      tsControles.TabVisible := False;
    end;
  end;

  Sizes := 0;
  TCosto1 := 0;
  TCosto2 := 0;
  try
    Screen.Cursor := crHourGlass;
    qTrasp.Close;
    qItemsT.Close;
    qItemsT.DataSource := dsqTransp;
    qTrasp.SQL.Clear;
    qTrasp.SQL.Text := TRem;
    qTrasp.Prepare;
    Trasp.FetchParams;
    if TipoRemito = RemitoTraspaso then
    begin
      Trasp.Params.ParamByName('TFac').AsInteger := RemitoTraspaso;
      if not IsServer then
        Trasp.Params.ParamByName('IdSuc').AsInteger := IdBranch;
    end
    else
      Trasp.Params.ParamByName('TFac').AsInteger := TipoRemito;
    Trasp.Params.ParamByName('Desde').AsDate := Desde;
    Trasp.Open;
  finally
    gTraspasos.RefreshDisplay;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmTransDep.gFacTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  FillChar(Elegido, SizeOf(Elegido), NoEncontrado);
  if Shift = [] then
  begin
    Case Key of
      VK_RIGHT,
      VK_RETURN,
      VK_TAB : Atras := False;
      VK_LEFT: Atras := True;
      VK_F2  : begin // Agregar detalles extendidos
        if ((Tipo_Factura) and
            (gFacT.SelectedField.FieldName = ItemsTObservacion.FieldName))or
           ((ImprimirEnControlador = False) and
            (gFacT.SelectedField.FieldName = ItemsTObservacion.FieldName)) then
        begin
          frmDlgExt := TfrmDlgExt.Create(Self);
          frmDlgExt.Tipo_Fac := 2;
          frmDlgExt.ShowModal;
        end;
      end;
      VK_F3: Elegido := Search_Prod(Vacio, Tarea);
      VK_F5: Calculadora(Handle);
      VK_ESCAPE: btnRemitoGrabar.SetFocus;
      else inherited KeyDown(Key, Shift);
    end;
    if Elegido.IdArticulo <> NoEncontrado then
    begin
      ItemsT.Edit;
      ItemsTIdArticulo.AsInteger := Elegido.IdArticulo;
    end;
  end;
end;

procedure TfrmTransDep.edtEntregarAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and
     (Key = VK_ESCAPE) then
    gFacT.SetFocus
  else
   {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmTransDep.edtPeriodoRIKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmTransDep.FacTNewRecord(DataSet: TDataSet);
begin
  FacTFechaF.AsDateTime := Date;
  FacTTipoFactura.AsInteger := TipoRemito;
  FacTIdFactura.AsInteger := 1;
  FacTIdSucursal.AsInteger := IdBranch;
  FacTIdPuntoVenta.AsInteger := IdSalesPoint;
  FacTVendedor.AsInteger := Usuario;
  FacTNroRemSuc.AsString := '0000-00000000';
  FacTIdSubDepO.AsInteger := 0;
  FacTIdSubDepD.AsInteger := 0;
  FacTEstado.AsInteger := 1; // En confeccion
  Case TipoRemito of
    RemitoTraspaso: begin
      AuxNCmp := '0000-00000000';
      FacTNroFactura.AsString := AuxNCmp;
      FacTTipoFacStr.AsString := 'Envio e/Depositos Nº ';
      FacTSucRemO.AsInteger := Falso;
      FacTSucRemD.AsInteger := Falso;
      FacTTipoAjuste.AsInteger := 1;
    end;
    RemitoAjusteSt: begin
      dmGestion.Empresas.Refresh;
      AuxNCmp := Inc_NComp(dmGestion.EmpresasRemitoAj.AsString);
      FacTNroFactura.AsString := AuxNCmp;
      FacTTipoFacStr.AsString := 'Ajuste Nº ';
      FacTTipoAjuste.AsInteger := 1;
    end;
    Descuento_D: begin
      dmGestion.Empresas.Refresh;
      AuxNCmp := Inc_NComp(dmGestion.EmpresasNOrdPago.AsString);
      FacTNroFactura.AsString := AuxNCmp;
      FacTTipoFacStr.AsString := 'NC Ajuste Nº ';
      FacTVendedor.AsInteger := Usuario;
      FacTIdMotivo.AsInteger := 8;
      FacTTipoAjuste.AsInteger := -1;
    end;
  end;
  Cantidad_Items := 0;
end;

procedure TfrmTransDep.ItemsTAfterPost(DataSet: TDataSet);
begin
  UpdateTotalsTraspaso;
end;

procedure TfrmTransDep.ItemsTNewRecord(DataSet: TDataSet);
begin
  Inc(Cantidad_Items);
  ItemsTIdItems.AsInteger := Cantidad_Items;
  ItemsTIdFactura.AsInteger := FacTIdFactura.AsInteger;
  if Control_Talles then
  begin
    ItemsTTieneTalle.AsInteger := Falso;
    ItemsTTalle.AsInteger := SIN_DETALLE_TALLE;
  end;
  ItemsTCantidad.AsFloat := 1;
  ItemsTIdFacDomCli.AsInteger := 0;
  ItemsTIdSucDomCli.AsInteger := 0;
  ItemsTParaDomicilio.AsInteger := 0;
  if TipoRemito = Descuento_D then
    ItemsTTipoAj.AsInteger := -1
  else
    ItemsTTipoAj.AsInteger := FacTTipoAjuste.AsInteger;
end;

procedure TfrmTransDep.gFacTColExit(Sender: TObject);
begin
  if gFacT.Columns[gFacT.SelectedIndex].FieldName = 'IdArticulo' then
  begin
    if (Trim(ItemsTIdArticulo.AsString) = Cero) or (ItemsTIdArticulo.IsNull) then
    begin
      Elegido := Search_Prod(Vacio, Tarea);
      if Elegido.IdArticulo <> NoEncontrado then
      begin
        ItemsT.Edit;
        ItemsTIdArticulo.AsInteger := Elegido.IdArticulo;
      end;
    end
    else begin
      if Control_Talles then
      begin
        if (ItemsTTieneTalle.AsInteger = Verdadero) and (ItemsTIdArticulo.AsInteger > 0)and
           ((ItemsTTalle.IsNull)or(ItemsTTalle.AsInteger = SIN_DETALLE_TALLE)) then
        begin
          ItemsT.Edit;
          ItemsTTalle.AsInteger := GetTalles(ItemsTIdArticulo.AsInteger);
        end;
      end;
    end;
  end;
end;

procedure TfrmTransDep.edtComprobanteExit(Sender: TObject);
Var
  Part1, Part2: Integer;
begin
  try
    Part1:= StrToInt(Trim(Copy(edtComprobante.Text,1,Pos('-',edtComprobante.Text)-1)));
  except
    on E: EConvertError do
    begin
      edtComprobante.SetFocus;
      edtComprobante.SelStart := 0;
      edtComprobante.SelLength := 3;
      raise EUsuario.Create('Error en el Pto. de Venta del comprobante');
    end;
  end;
  try
    Part2:= StrToInt(Trim(Copy(edtComprobante.Text,Pos('-',edtComprobante.Text)+1,Length(edtComprobante.Text))));
  except
    on E: EConvertError do
    begin
      edtComprobante.SetFocus;
      edtComprobante.SelStart := 5;
      edtComprobante.SelLength := 8;
      raise EUsuario.Create('Error en el Nº de comprobante');
    end;
  end;
  FacTNroFactura.AsString := Format('%.4d-%.8d',[Part1,Part2]);
end;

procedure TfrmTransDep.gFacTEnter(Sender: TObject);
begin
  if FacT.State in [dsEdit, dsInsert] then
    FacT.Post;
  cbDepOrigen.Enabled := False;
  cbTipoAj.Enabled := False;
  edtComprobante.Enabled := False;
  edtFecha.Enabled := False;
  FacT.Edit;
end;

procedure TfrmTransDep.gFacTKeyPress(Sender: TObject; var Key: Char);
begin
  if (gFacT.SelectedField.DataType in [ftFloat, ftCurrency])and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

procedure TfrmTransDep.FacTOrigenValidate(Sender: TField);
begin
  if TipoRemito = RemitoTraspaso then
    if FacTIdStOrigen.AsInteger = FacTIdStDestino.AsInteger then
      raise EUsuario.Create('El origen no puede ser igual al destino');
end;

procedure TfrmTransDep.edtEmpleadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  Case Key of
    VK_F3: begin
      Case TipoRemito of
        RemitoAjusteSt: begin
          frmBuscaEmp := TfrmBuscaEmp.Create(Self);
          frmBuscaEmp.Elegido := FacTVendedor.AsInteger;
          if frmBuscaEmp.ShowModal = mrOk then
          begin
            FacT.Edit;
            FacTVendedor.AsInteger := frmBuscaEmp.Elegido;
          end;
        end;
        Descuento_D: begin
          Entidad := Busca_Pro;
          if Entidad > NoEncontrado then
          begin
            FacT.Edit;
            FacTVendedor.AsInteger := Entidad;
          end;
        end;
        RemitoTraspaso: begin
          frmBuscaEmp := TfrmBuscaEmp.Create(Self);
          frmBuscaEmp.Elegido := FacTVendedor.AsInteger;
          if frmBuscaEmp.ShowModal = mrOk then
          begin
            FacT.Edit;
            FacTVendedor.AsInteger := frmBuscaEmp.Elegido;
          end;
        end;
      end;
    end;
    VK_ESCAPE: btnSalir.SetFocus
    else begin
      {$INCLUDE IyC_NextEdit.INC}
    end;
  end;
end;

procedure TfrmTransDep.edtEmpleadoRIKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  Case Key of
    VK_F3: begin
      frmBuscaEmp := TfrmBuscaEmp.Create(Self);
      frmBuscaEmp.Elegido := FacIvEmpleado.AsInteger;
      if frmBuscaEmp.ShowModal = mrOk then
      begin
        FacIv.Edit;
        FacIvEmpleado.AsInteger := frmBuscaEmp.Elegido;
      end;
    end;
    VK_ESCAPE: btnCancelarRI.SetFocus
    else begin
     {$INCLUDE IyC_NextEdit.INC}
    end;
  end;
end;

procedure TfrmTransDep.gFacTCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if Highlight then
  begin
    if State = [gdSelected, gdFocused] then
      AFont.Color := clWhite
    else
      AFont.Color := clBlack;
  end
end;

procedure TfrmTransDep.ItemsTPrecioFinalChange(Sender: TField);
begin
  if (ItemsTPrecioFinal.AsCurrency <> 0) and
     (ItemsTCantidad.AsFloat >= 0) then
    ItemsTPrecioTotal.AsCurrency := ItemsTPrecioFinal.AsCurrency * ItemsTCantidad.AsFloat;
end;

procedure TfrmTransDep.cbDepOrigenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmTransDep.cbFleteroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmTransDep.FacTIdStOrigenValidate(Sender: TField);
var
  q: TMDOQuery;
begin
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.dbGestion;
    q.Transaction := dmSaveFile.trSaveComp;
    q.SQL.Add('Select NombreSuc, Remota ');
    q.SQL.Add('From Sucursales ');
    q.SQL.Add('Where IdSucursal =:IdSucO ');
    q.ParamByName('IdSucO').AsInteger := Sender.AsInteger;
    q.Open;
    if not q.IsEmpty then
    begin
      FacTOrigenStr.AsString := q.FieldByName('NombreSuc').AsString;
      FacTSucRemO.AsInteger  := q.FieldByName('Remota').AsInteger;
    end;
  finally
    q.Free;
  end;
end;

procedure TfrmTransDep.FacTIdStDestinoValidate(Sender: TField);
var
  q: TMDOQuery;
begin
  edtRemSuc.Enabled := False;
  if TipoRemito = RemitoTraspaso then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmSaveFile.trSaveComp;
      q.SQL.Add('Select NombreSuc, NroRemitoT, Remota ');
      q.SQL.Add('From Sucursales ');
      q.SQL.Add('Where IdSucursal =:IdSucD ');
      q.ParamByName('IdSucD').AsInteger := Sender.AsInteger;
      q.Open;

      if not q.IsEmpty then
      begin
        FacTDestinoStr.AsString := q.FieldByName('NombreSuc').AsString;
        if not Leyendo_RemitoT then
        begin
          if ControladorLocal and Tipo_Factura then
            FacTNroFactura.AsString := GetNumeroComprobante(IdBranch, '0000', RI, RemitoX)
          else
            FacTNroFactura.AsString := q.FieldByName('NroRemitoT').AsString;
        end;
        FacTSucRemD.AsInteger := q.FieldByName('Remota').AsInteger;
      end;
    finally
      q.Free;
    end;
    qTraDom.Close;
    qTraDom.ParamByName('Hasta').AsDate := FacTFechaF.AsDateTime;
    qTraDom.ParamByName('IdSuc').AsInteger := FacTIdStDestino.AsInteger;
    qTraDom.Open;
    edtRemSuc.Enabled := (not qTraDom.IsEmpty);
  end;
end;

procedure TfrmTransDep.gFacTColEnter(Sender: TObject);
begin
  if (gFacT.SelectedField.FieldName = 'DescripcionArticulo') or
     (gFacT.SelectedField.FieldName = 'PrecioFinal') or
     (gFacT.SelectedField.FieldName = 'StkAct') then
  begin
    if Atras then
      gFacT.SelectedIndex := gFacT.SelectedIndex - 1
    else
      gFacT.SelectedIndex := gFacT.SelectedIndex + 1;
  end;

  if (gFacT.SelectedField.FieldName = 'Talle') and (not ItemsTTieneTalle.AsInteger = Verdadero) then
  begin
    if Atras then
      gFacT.SelectedIndex := gFacT.SelectedIndex - 1
    else
      gFacT.SelectedIndex := gFacT.SelectedIndex + 1;
  end;
end;

procedure TfrmTransDep.FacTVendedorValidate(Sender: TField);
begin
  Case TipoRemito of
    RemitoTraspaso, RemitoAjusteSt: begin
      if GetDatosEmp(FacTVendedor.AsInteger, Vacio, 3, Datos_Ent) then
        FacTNombreVendedor.AsString := Datos_Ent.Nombre;
    end;
    Descuento_D: begin
      if GetDatosEnt(FacTVendedor.AsInteger, IdBranch, 2, Datos_Ent) then
        FacTNombreVendedor.AsString := Datos_Ent.Nombre;
    end;
  end;
end;

procedure TfrmTransDep.btnCalcResInvClick(Sender: TObject);
Var
  S, P, A: Integer;
begin
  try
    S := Integer(cbSucResInv.Items.Objects[cbSucResInv.ItemIndex]);
  except
    S := 0;
  end;
  try
    P := edtPerResInv.Value;
  except
    edtPerResInv.SetFocus;
    raise;
  end;
  try
    A := Integer(cbAreasResInv.Items.Objects[cbAreasResInv.ItemIndex]);
  except
    A := 0;
  end;
  Calcular_Resultado_Inventario(S, P, A);
end;

procedure TfrmTransDep.btnCancelarRIClick(Sender: TObject);
begin
  if (FacIv.State in dsEditModes) and (Hubo_Mod_Remito) then
  begin
    VaciarTablas_Inventario;
    Hubo_Mod_Remito := False;
  end;
end;

procedure TfrmTransDep.btnCerrarPrintClick(Sender: TObject);
begin
  pnlPrint.Visible := False;
end;

procedure TfrmTransDep.btnImpFiscalClick(Sender: TObject);
var
  q: TMDOQuery;
begin
  if (ControladorLocal) and (Tipo_Factura) and (TipoRemito = RemitoTraspaso) then
  begin
    Cargar_Registro;
    if Hubo_Modificacion then
      if Application.MessageBox('Para imprimir en el Controlador Fiscal, el Remito debe estar Grabado', '¿Grabar?', MB_ICONQUESTION + MB_YESNO) = ID_YES then
        Grabar_Remito;
    with frmFiscal do
    begin
      if not ControladorOk then
        ControladorOK := InicializarControlador;
      ImprimirRemitoF(Factura, ItemsFiscal);
      if Trim(Factura.NroFactura) > Vacio then
      begin
        try
          q := TMDOQuery.Create(nil);
          q.Database := dmGestion.dbGestion;
          q.Transaction := dmGestion.trProc;
          q.SQL.Add('UpDate Traspaso ');
          q.SQL.Add('   Set NroFactura =:NroFac ');
          q.SQL.Add('Where IdFactura =:IdFac And ');
          q.SQL.Add('      IdSucursal =:IdSuc And ');
          q.SQL.Add('      IdPuntoVenta =:IdPto ');
          q.ParamByName('NroFac').AsString := Factura.NroFactura;
          q.ParamByName('IdFac').AsInteger := Factura.IdFactura;
          q.ParamByName('IdSuc').AsInteger := Factura.IdSucursal;
          q.ParamByName('IdPto').AsInteger := Factura.IdPuntoVenta;
          q.ExecSQL;
        finally
          q.Free;
        end;
      end;
    end;
    Hubo_Modificacion := False;
  end;
end;

procedure TfrmTransDep.btnImpComunClick(Sender: TObject);
begin
  Cargar_Registro;
  if Hubo_Modificacion then
    if (Application.MessageBox(PChar('¿Grabar el Remito'#13#10' Nº '+FacTNroFactura.AsString+'?'), 'Grabar', MB_ICONQUESTION + MB_YESNO) = ID_YES) then
      Grabar_Remito
    else
      Exit;
  if not Print_Form(Factura, ItemsFiscal) then
    raise EUsuario.Create('No se puede imprimir el remito Nº '+FacTNroFactura.AsString);
end;

procedure TfrmTransDep.btnImpDifClick(Sender: TObject);
begin
  lblTituloDifInv1.Caption := 'Resultado Inventario Periodo: '+ IntToStr(edtPerResInv.Value)+' Sucursal: '+NomDep;
  lblTituloDifInv2.Caption := 'Fecha de Inventario: '+DateToStr(Fec_TI);
  rpResInv.Print;
end;

procedure TfrmTransDep.btnCodeBarClick(Sender: TObject);
begin
  if Application.MessageBox('¿Imprime rotulos/etiquetas de los productos transferidos?', 'Etiquetas', MB_ICONQUESTION + MB_YESNO) = ID_YES then
  begin
    if ItemsT.State in dsEditModes then
      ItemsT.Post;
    Cargar_Registro;
    frmImpCodBar := TfrmImpCodBar.Create(Self);
    frmImpCodBar.CodProd := 0;
    frmImpCodBar.CantStk := 0;
    frmImpCodBar.ElTalle := 0;
    frmImpCodBar.IC := ItemsFiscal;
    frmImpCodBar.ShowModal;
  end;
end;

procedure TfrmTransDep.btnDesSelEnvClick(Sender: TObject);
begin
  if not qEnvios.IsEmpty then
  begin
    gEnvios.UnselectAll;
    CantE := 0;
    lblCantEnc.Caption := IntToStr(CantE);
    gEnvios.ColumnByName('Selected').FooterValue := Format('%d', [CantE]);
    Application.ProcessMessages;
  end;
end;

procedure TfrmTransDep.btnEnviarClick(Sender: TObject);
var
  i: SmallInt;
begin
  if CantE > 0 then
  begin
    try
      if not qSetEnviados.Transaction.InTransaction then
        qSetEnviados.Transaction.StartTransaction;
      try
        Screen.Cursor := crHourGlass;
        qEnvios.First;
        for i := 0 to gEnvios.SelectedList.Count-1 do
        begin
          gEnvios.DataSource.DataSet.GotoBookmark(gEnvios.SelectedList.Items[i]);
          try
            qSetEnviados.Close;
            qSetEnviados.ParamByName('IdFac').AsInteger := gEnvios.DataSource.DataSet.FieldByName('IdFactura').AsInteger;
            qSetEnviados.ParamByName('IdSuc').AsInteger := gEnvios.DataSource.DataSet.FieldByName('IdSucursal').AsInteger;
            qSetEnviados.ParamByName('IdPto').AsInteger := gEnvios.DataSource.DataSet.FieldByName('IdPuntoVenta').AsInteger;
            qSetEnviados.ParamByName('TipoR').AsInteger := TipoRemito;
            qSetEnviados.ExecSQL;
          except
            raise EUsuario.Create('No se puede marcar el remito Nº '+gEnvios.DataSource.DataSet.FieldByName('NroFactura').AsString+' como ya enviado.')
          end;
        end;
      finally
        Screen.Cursor := crDefault;
      end;
      qSetEnviados.Transaction.Commit;
    except
      on E:Exception do
      begin
        qSetEnviados.Transaction.Rollback;
        raise EUsuario.Create(E.Message);
      end;
    end;
    Buscar_Remitos(TipoRemito);
  end;
end;

procedure TfrmTransDep.btnExpDifClick(Sender: TObject);
begin
  if not qResultadoInv.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qResultadoInv;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmTransDep.btnExpOprClick(Sender: TObject);
begin
  if Trasp.Active then
  begin
    try
      Trasp.DisableControls;
      dmGestion.IyC_Exp.DataSet := Trasp;
      dmGestion.IyC_Exp.Select;
    finally
      Trasp.EnableControls;
    end;
  end;
end;

procedure TfrmTransDep.btnExpPrdDomClick(Sender: TObject);
begin
  if qPrdDom.Active then
  begin
    try
      qPrdDom.DisableControls;
      dmGestion.IyC_Exp.DataSet := qPrdDom;
      dmGestion.IyC_Exp.Select;
    finally
      qPrdDom.EnableControls;
    end;
  end;
end;

procedure TfrmTransDep.btnExpRemInvClick(Sender: TObject);
begin
  dmGestion.IyC_Exp.DataSet := qInventario;
  dmGestion.IyC_Exp.Select;
end;

procedure TfrmTransDep.btnGrabarRIClick(Sender: TObject);
begin
  if not Hubo_Mod_Remito then
    Exit;
  if (Application.MessageBox(PChar('¿Grabar el Remito de Toma de Inventario'#13#10' Nº '+
                  FacIvNroFac.AsString+'?'), 'Grabar', MB_ICONQUESTION + MB_YESNO) = ID_YES) then
  begin
    Habilitar_Ingreso_Inventario(False);
    Grabar_Remito_Inventario;
    New_RemI := False;
    Hubo_Mod_Remito := False;
  end;
end;

procedure TfrmTransDep.gTraspasosCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if not Highlight then
  begin
    if (TraspIdSubDepO.AsInteger > 0) or
       (TraspIdSubDepD.AsInteger > 0) then
    begin
      AFont.Style := AFont.Style+[fsItalic];
      AFont.Color := clNavy;
    end
    else begin
      AFont.Color := $00004080;
      AFont.Style := AFont.Style-[fsItalic];
    end;
  end;  
end;

procedure TfrmTransDep.cbDepDestinoExit(Sender: TObject);
begin
  Case TipoRemito of
    RemitoTraspaso: begin
      if (FacTIdStDestino.IsNull) or (FacTIdStDestino.AsInteger = 0) then
        raise EUsuario.Create('Debe elegir un Destino');
      if FacTIdStOrigen.AsInteger = FacTIdStDestino.AsInteger then
        raise EUsuario.Create('El depósito origen debe ser distinto al de Destino');
      if ConSubDep then
      begin
        with dmGestion do
        begin
          SubDep.Filter := 'IdSucursal = '+IntToStr(FacTIdStDestino.AsInteger);
          SubDep.Filtered := True;
          SubDep.Open;
          if not SubDep.IsEmpty then
          begin
            SubDep.First;
            cbSubDepD.Items.Add('<Sucursal>'+#9+'0');
            while not SubDep.Eof do
            begin
              cbSubDepD.Items.Add(SubDepDetSubDep.AsString+#9+SubDepIdSubDep.AsString);
              SubDep.Next;
            end;
          end
          else
            cbSubDepD.Enabled := False;
        end;
      end;
    end;
    RemitoAjusteSt,
    Descuento_D: begin
      if (FacTIdMotivo.IsNull) or (FacTIdMotivo.AsInteger = 0) then
        raise EUsuario.Create('Debe elegir un motivo');
    end;
  end;
end;

procedure TfrmTransDep.cbDepOrigenExit(Sender: TObject);
begin
  if (FacTIdStOrigen.IsNull) or (FacTIdStOrigen.AsInteger = 0) then
    raise EUsuario.Create('Debe elegir un Deposito')
  else begin
    if FacTTipoFactura.AsInteger = RemitoTraspaso then
    begin
      with dmGestion do
      begin
        SubDep.Filter := 'IdSucursal = '+IntToStr(FacTIdStOrigen.AsInteger);
        SubDep.Filtered := True;
        SubDep.Open;
        if not SubDep.IsEmpty then
        begin
          SubDep.First;
          cbSubDepOr.Items.Add('<Sucursal>'+#9+'0');
          while not SubDep.Eof do
          begin
            cbSubDepOr.Items.Add(SubDepDetSubDep.AsString+#9+SubDepIdSubDep.AsString);
            SubDep.Next;
          end
        end
        else
          cbSubDepOr.Enabled := False;
      end;
    end;
  end;
end;

procedure TfrmTransDep.ItemsIvAfterDelete(DataSet: TDataSet);
begin
  UpdateTotals_Inventario;
end;

procedure TfrmTransDep.ItemsIvCantidadValidate(Sender: TField);
begin
  if (ItemsIvCantidad.AsFloat > 100) And
     ((Application.MessageBox('La cantidad es muy grande. ¿Es correcto? ',' Error ', MB_ICONQUESTION + MB_YESNO) = ID_NO)) then
    Abort;
end;

procedure TfrmTransDep.ItemsIvIdArticuloSetText(Sender: TField; const Text: string);
begin
  DatosArticuloBuscado_INV(Sender, Text);
end;

procedure TfrmTransDep.ItemsIvIdArticuloValidate(Sender: TField);
begin
  if (not ItemsIvIdArticulo.IsNull) then
  begin
    if GetDatosArt(Sender.AsInteger, '', Datos_Art) then
    begin
      ItemsIvTieneTalle.AsInteger := Datos_Art.TieneTalle;
      ItemsIvDetArt.AsString := Datos_Art.DetProd;
      ItemsIvMarca.AsString := Datos_Art.Marca;
      ItemsIvDetalle.AsString := Datos_Art.Detalle;
      ItemsIvColor.AsString := Datos_Art.Color;
      ItemsIvPrecio.AsCurrency := Datos_Art.Precio;
      ItemsIvCosto.AsCurrency := Datos_Art.Costo;
      ItemsIvImpInt.AsCurrency := Datos_Art.ImpInt;
      ItemsIvNeto.AsCurrency := Datos_Art.PBase;
    end;
  end;
  gItemsI.RefreshDisplay;
end;

procedure TfrmTransDep.ItemsIvNewRecord(DataSet: TDataSet);
begin
  Inc(Cant_Item_Inv);
  if Cant_Item_Inv > 101 then
    raise EUsuario.Create('Formulario lleno. continue en otro.-');
  ItemsIvIdItem.AsInteger := Cant_Item_Inv;
  ItemsIvIdFactura.AsInteger := FacIvIdFactura.AsInteger;
  ItemsIvIdSucursal.AsInteger := FacIvIdSucursal.AsInteger;
  ItemsIvTieneTalle.AsInteger := Falso;
  ItemsIvTalle.AsInteger := SIN_DETALLE_TALLE;
  ItemsIvCantidad.AsFloat := 1;
end;

procedure TfrmTransDep.ItemsIvTalleGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Control_Talles then
  begin
    try
      Text := GetTextTalle(Sender.AsInteger);
    except
      Text := Sender.AsString;
    end;
  end;
end;

procedure TfrmTransDep.ItemsIvTalleSetText(Sender: TField; const Text: string);
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
  end;
end;

procedure TfrmTransDep.ItemsTAfterDelete(DataSet: TDataSet);
begin
  UpdateTotalsTraspaso;
end;

procedure TfrmTransDep.ItemsTTalleGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if Control_Talles then
  begin
    try
      Text := GetTextTalle(Sender.AsInteger);
    except
      Text := Sender.AsString;
    end;
  end;
end;

procedure TfrmTransDep.ItemsTTalleSetText(Sender: TField; const Text: String);
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
  end;  
end;

procedure TfrmTransDep.FacTEstadoGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Case FacTEstado.AsInteger of
    0: Text := 'I';
    1: Text := 'C';
    2: Text := 'E';
    3: Text := 'R';
    else
      Text := IntToStr(FacTEstado.AsInteger);
  end;
end;

procedure TfrmTransDep.edtComprobanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmTransDep.edtComprobanteRIExit(Sender: TObject);
Var
  Part1, Part2: Integer;
begin
  try
    Part1:= StrToInt(Trim(Copy(edtComprobanteRI.Text, 1, Pos('-',edtComprobanteRI.Text)-1)));
  except
    on E: EConvertError do
    begin
      edtComprobanteRI.SetFocus;
      edtComprobanteRI.SelStart := 0;
      edtComprobanteRI.SelLength := 3;
      raise EUsuario.Create('Error en el Pto. de Venta del comprobante');
    end;
  end;
  try
    Part2:= StrToInt(Trim(Copy(edtComprobanteRI.Text, Pos('-',edtComprobanteRI.Text)+1, Length(edtComprobanteRI.Text))));
  except
    on E: EConvertError do
    begin
      edtComprobanteRI.SetFocus;
      edtComprobanteRI.SelStart := 5;
      edtComprobanteRI.SelLength := 8;
      raise EUsuario.Create('Error en el Nº de comprobante');
    end;
  end;
  FacIvNroFac.AsString := Format('%.4d-%.8d', [Part1, Part2]);
end;

procedure TfrmTransDep.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTransDep.btnSaveRemClick(Sender: TObject);
begin
  if ModEnviados.State = dsEdit then
    ModEnviados.Post;
end;

procedure TfrmTransDep.gTraspasosDblClick(Sender: TObject);
begin
  Hubo_Modificacion := False;
  pcTraspasos.ActivePage := tsRemitos;
  Habilitar_Ingreso(False);
end;

procedure TfrmTransDep.gTraspasosUpdateFooter(Sender: TObject);
begin
  gTraspasos.ColumnByName('Descripcion').FooterValue := 'Nº Comprobantes';
  gTraspasos.ColumnByName('NomEnt').FooterValue := Format('%d',[Total_Remitos]);
end;

procedure TfrmTransDep.qPrdDomNOMBRESUCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if (qPrdDomIDSUCSALIDA.AsInteger = 0) And
     (Trim(qPrdDomNOMBRESUC.AsString) = Vacio) then
    Text := 'Central'
  else begin
    if Trim(qPrdDomNOMBRESUC.AsString) > Vacio then
      Text := qPrdDomNOMBRESUC.AsString;
  end;

end;

procedure TfrmTransDep.rgResTallesInvClick(Sender: TObject);
begin
  Sizes := rgResTallesInv.ItemIndex;
end;

procedure TfrmTransDep.btnComInvClick(Sender: TObject);
Var
  SC,
  P1, P2: Integer;
  q: TMDOQuery;
begin
  gComPerInv.Enabled := False;
  qPerComInv.Close;
  TCosto1 := 0;
  TCosto2 := 0;
  try
    P1 := edtComInvPer1.Value;
  except
    edtComInvPer1.SetFocus;
    raise;
  end;

  try
    P2 := edtComInvPer2.Value;
  except
    edtComInvPer2.SetFocus;
    raise;
  end;

  try
    SC := Integer(cbSucComInv.Items.Objects[cbSucComInv.ItemIndex]);
  except
    SC := 0;
  end;

  if (P1 < P2) and (SC > 0) then
  begin
    qPerComInv.ParamByName('SC').AsInteger := SC;
    qPerComInv.ParamByName('P1').AsInteger := P1;
    qPerComInv.ParamByName('P2').AsInteger := P2;
    try
      Screen.Cursor := crSQLWait;
      pnlTopCom.Caption := Format('Inicio: %s',[TimeToStr(Now)]);
      qPerComInv.Open;
      if not qPerComInv.IsEmpty then
      begin
        if not Leyendo_RemitoI then
        begin
          try
            q := TMDOQuery.Create(nil);
            q.Database := qPerComInv.Database;
            q.Transaction := qPerComInv.Transaction;
            q.SQL.Add('Select Sum(Costo1) as TCosto1, ');
            q.SQL.Add('       Sum(Costo2) as TCosto2' );
            q.SQL.Add('From PRODUCTOS_STOCK_COMPARATIVO_2I(:SC, :P1, :P2) ');
            q.ParamByName('SC').AsInteger := SC;
            q.ParamByName('P1').AsInteger := P1;
            q.ParamByName('P2').AsInteger := P2;
            q.Open;
            TCosto1 := q.FieldByName('TCosto1').AsCurrency;
            TCosto2 := q.FieldByName('TCosto2').AsCurrency;
          finally
            q.Free;
          end;
          gComPerInv.Enabled := True;
          gComPerInv.ColumnByName('Detalle').FooterValue := 'Totales';
          gComPerInv.ColumnByName('Costo1').FooterValue := Format('%m',[TCosto1]);
          gComPerInv.ColumnByName('Costo2').FooterValue := Format('%m',[TCosto2]);
        end;
      end;
    finally
      Screen.Cursor := crDefault;
      pnlTopCom.Caption := pnlTopCom.Caption + Format(' - Fin: %s',[TimeToStr(Now)]);
      Application.ProcessMessages;
    end;
  end
  else begin
    cbSucComInv.SetFocus;
    ShowMessage('Sucursal o Periodos mal ingresados');
  end;
end;

procedure TfrmTransDep.gComPerInvDblClick(Sender: TObject);
begin
  try
    Get_MStk(qPerComInvIdArticulo.AsInteger,
             Integer(cbSucComInv.Items.Objects[cbSucComInv.ItemIndex]));
  except
    frmABMArticulos := TfrmABMArticulos.Create(nil);
    frmABMArticulos.Cual_Art := qPerComInvIdArticulo.AsInteger;
    frmABMArticulos.ShowModal;
  end;
end;

procedure TfrmTransDep.gComPerInvUpdateFooter(Sender: TObject);
begin
  gComPerInv.ColumnByName('Detalle').FooterValue := 'Totales';
  gComPerInv.ColumnByName('Costo1').FooterValue := Format('%m',[TCosto1]);
  gComPerInv.ColumnByName('Costo2').FooterValue := Format('%m',[TCosto2]);
end;

procedure TfrmTransDep.btnExpComInvClick(Sender: TObject);
begin
  if not qPerComInv.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qPerComInv;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmTransDep.btnImpProdDomClick(Sender: TObject);
begin
  lblPDTitulo.Caption := OwnerName +' '+OwnerAddres;
  rpPrdDom.Print;
end;

procedure TfrmTransDep.btnImprimirRIClick(Sender: TObject);
begin
  Cargar_Registro_Inventario;
  if Hubo_Mod_Remito then
  begin
    if (Application.MessageBox(PChar('¿Grabar el Remito de Inventario'#13#10' Nº '+
        FacIvNroFac.AsString+'?'), 'Grabar', MB_ICONQUESTION + MB_YESNO) = ID_YES) then
    begin
      Grabar_Remito_Inventario;
      try
        Print_Form(Factura, ItemsFiscal);
      except
        raise EUsuario.Create('No se puede imprimir el comprobante');
      end;
    end;
  end;
end;

procedure TfrmTransDep.btnIniCieInvClick(Sender: TObject);
begin
  frmIniCieInv := TfrmIniCieInv.Create(self);
  frmIniCieInv.ShowModal;
end;

procedure TfrmTransDep.btnSelAllEnvClick(Sender: TObject);
begin
  if not qEnvios.IsEmpty then
  begin
    gEnvios.SelectAll;
    CantE := qEnvios.RecordCount;
    lblCantEnc.Caption := IntToStr(CantE);
    gEnvios.ColumnByName('Selected').FooterValue := Format('%d', [CantE]);
    Application.ProcessMessages;
  end;
end;

procedure TfrmTransDep.btnRemitoNuevoClick(Sender: TObject);
begin
  if TipoRemito = RemitoAjusteSt then
  begin
    if not (Check_Seg(Nivel_Mod, 'Ajuste STK', AutorDto)) then
    begin
      pnlBtnRemito.SetFocus;
      raise EUsuario.Create('No posee habilitación para hacer ajustes.-');
    end;
  end;
  VaciarTablas;
  FacT.Insert;
  Leyendo_RemitoT := False;
  Hubo_Modificacion := True;
  Habilitar_Ingreso(True);
  edtEmpleado.SetFocus;
end;

procedure TfrmTransDep.btnRemitoGrabarClick(Sender: TObject);
begin
  if not Hubo_Modificacion then
    Exit;
  if (Application.MessageBox(PChar('¿Grabar el Remito'#13#10' Nº '+
      FacTNroFactura.AsString+'?'), 'Grabar', MB_ICONQUESTION + MB_YESNO) = ID_YES) then
  begin
    Habilitar_Ingreso(False);
    Grabar_Remito;
  end;
end;

procedure TfrmTransDep.btnRemitoCancelClick(Sender: TObject);
begin
  if (FacT.State in dsEditModes) and
     (Hubo_Modificacion) then
  begin
    VaciarTablas;
    Hubo_Modificacion := False;
    pcTraspasos.ActivePage := tsTransferencias;
  end;
end;

procedure TfrmTransDep.btnRemitoSearchClick(Sender: TObject);
var
  Fac, Suc, Pto: Integer;
begin
  if FiltrarRemitos(TipoRemito, Fac, Suc, Pto) then
    Get_FacS(TipoRemito, Fac, Suc, Pto)
end;

procedure TfrmTransDep.btnRemitoPrintClick(Sender: TObject);
begin
  if (Tipo_Factura) and (ControladorLocal) then
    btnImpFiscal.Enabled := True
  else
    btnImpFiscal.Enabled := False;
  if TipoRemito in [Descuento_D, RemitoAjusteSt] then
  begin
    btnCodeBar.Enabled := False;
    btnImpFiscal.Enabled := False;
  end;
  pnlPrint.Visible := True;
end;

procedure TfrmTransDep.ItemsTIdArticuloValidate(Sender: TField);
begin
  if not Leyendo_RemitoT then
  begin
    if (not ItemsTIdArticulo.IsNull) then
    begin
      if GetDatosArt(Sender.AsInteger, Vacio, Datos_Art) then
      begin
        ItemsTCodBarra.AsString := Datos_Art.CodBarra;
        ItemsTTieneTalle.AsInteger := Datos_Art.TieneTalle;
        ItemsTDescripcionArticulo.AsString := Datos_Art.DetProd;
        ItemsTMarca.AsString := Datos_Art.Marca;
        ItemsTDescripcion.AsString := Datos_Art.Detalle;
        ItemsTColor.AsString := Datos_Art.Color;
        ItemsTTieneStk.AsInteger := Datos_Art.TSinStk;
        ItemsTObservacion.AsString := Datos_Art.CodBarra;
        if Datos_Art.TieneTalle = Falso  then
          ItemsTStkAct.AsFloat := Get_Stock(Datos_Art.IdArticulo, FacTIdStOrigen.AsInteger, 0, False);
        if TipoRemito = Descuento_D then
        begin
          ItemsTPrecioFinal.AsCurrency := Datos_Art.Costo;
          ItemsTPrecioTotal.AsCurrency := Datos_Art.Costo * ItemsTCantidad.AsFloat;
        end
        else begin
          ItemsTPrecioFinal.AsCurrency := Datos_Art.Precio;
          ItemsTPrecioTotal.AsCurrency := Datos_Art.Precio * ItemsTCantidad.AsFloat;
        end;
        ItemsTGrupoSubGrupo.AsString := Datos_Art.DetGrupo+' '+Datos_Art.DetSubGr;
      end;
    end;
    gFacT.RefreshDisplay;
  end;
end;


procedure TfrmTransDep.ItemsTIdArticuloSetText(Sender: TField; const Text: String);
var
  V, Err: Integer;
  Searched: String;
begin
  if not Buscando_ArtT then
  begin
    Buscando_ArtT := True;
    Searched := Text;
    try
      if Searched > Vacio then
      begin
        Val(Searched, V, Err);
        if Err = 0 then
        begin
          if GetDatosArt(V, Vacio, Datos_Art) then
          begin
            if (Datos_Art.Activo = Verdadero) and
               (Datos_Art.Servicio = Falso) then
              Sender.AsInteger := Datos_Art.IdArticulo
            else
              raise EUsuario.Create('El Producto es un Servicio o Esta Desactivado.-');
          end
          else begin
            Elegido := Search_Prod(Searched, Tarea);
            if Elegido.IdArticulo > NoEncontrado then
              Sender.AsInteger := Elegido.IdArticulo
            else
              raise EUsuario.Create('No se encontró el producto');
          end;
        end
        else begin
          if GetDatosArt(0, Searched, Datos_Art) then
          begin
            Sender.AsInteger := Datos_Art.IdArticulo;
            if (Datos_Art.Activo = Verdadero) and
               (Datos_Art.Servicio = Falso) then
              Sender.AsInteger := Datos_Art.IdArticulo
            else
              raise EUsuario.Create('El Producto es un Servicio o Esta Desactivado.-');
          end
          else begin
            Elegido := Search_Prod(Searched, Tarea);
            if Elegido.IdArticulo > NoEncontrado then
              Sender.AsInteger := Elegido.IdArticulo
            else
              raise EUsuario.Create('No se encontró el producto');
          end;
        end
      end
      else begin
        Elegido := Search_Prod(Searched, Tarea);
        if Elegido.IdArticulo > NoEncontrado then
          Sender.AsInteger := Elegido.IdArticulo
        else
          raise EUsuario.Create('No se encontró el producto');
      end;
    finally
      Buscando_ArtT := False;
    end;
  end;
end;

procedure TfrmTransDep.ItemsTCantidadChange(Sender: TField);
begin
  if (not ItemsTIdArticulo.IsNull) then
    ItemsTPrecioTotal.AsCurrency := ItemsTPrecioFinal.AsCurrency * ItemsTCantidad.Value;
  gFacT.RefreshDisplay;
end;

procedure TfrmTransDep.ItemsTCantidadValidate(Sender: TField);
begin
  if ItemsTCantidad.AsInteger < 0 then
    raise EUsuario.Create('No se pueden ingresar cantidades negativas.-')
end;

procedure TfrmTransDep.ItemsTTalleValidate(Sender: TField);
begin
  if (Control_Talles) And
     (ItemsTTieneTalle.AsInteger = Verdadero) then
    ItemsTStkAct.AsFloat := Get_Stock(ItemsTIdArticulo.AsInteger, FacTIdStOrigen.AsInteger, ItemsTTalle.AsInteger, ItemsTTieneTalle.AsInteger = Verdadero);
end;

procedure TfrmTransDep.FacIvAfterPost(DataSet: TDataSet);
begin
  UpdateTotals_Inventario;
end;

procedure TfrmTransDep.FacIvEmpleadoValidate(Sender: TField);
begin
  if (not Leyendo_RemitoI) and
     (GetDatosEmp(FacIvEmpleado.AsInteger, Vacio, 3, Datos_Ent)) then
    FacIvNomEmp.AsString := Datos_Ent.Nombre;
end;

procedure TfrmTransDep.FacIvIdDepositoValidate(Sender: TField);
var
  q: TMDOQuery;
begin
  if not Leyendo_RemitoI then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.trProc;
      q.SQL.Add('Select NroRemitoI as AuxNCom ');
      q.SQL.Add('From Sucursales ');
      q.SQL.Add('Where IdSucursal =:IdSuc ');
      q.ParamByName('IdSuc').AsInteger := Sender.AsInteger;
      q.Open;
      FacIvNroFac.AsString := Inc_NComp(q.FieldByName('AuxNCmp').AsString);
    finally
      q.Free;
    end;
  end;
end;

procedure TfrmTransDep.FacIvNewRecord(DataSet: TDataSet);
begin
  FacIvFechaI.AsDateTime := Date;
  FacIvIdFactura.AsInteger := 1;
  FacIvIdSucursal.AsInteger := IdBranch;
  FacIvEmpleado.AsInteger := Usuario;
  FacIvPeriodo.AsInteger := edtPerInventario.Value;
  FacIvNroFac.AsString := '0000-00000000';
end;

procedure TfrmTransDep.FacIvPeriodoValidate(Sender: TField);
begin
  if (FacIvPeriodo.AsInteger < CurrentYear) and
     (Hubo_Mod_Remito) then
    raise EUsuario.Create('No se puede inventariar un periodo anterior al año en curso')
end;

procedure TfrmTransDep.FacTBeforePost(DataSet: TDataSet);
begin
  if (not FacT.IsEmpty) And
     (FacTVendedor.AsInteger = 0) then
    raise EUsuario.Create('No se puede grabar sin Entidad.-')
end;

procedure TfrmTransDep.FacTIdFacDomChange(Sender: TField);
begin
  FacTIdSucDom.AsInteger := FacTIdStDestino.AsInteger
end;

procedure TfrmTransDep.FacTIdMotivoValidate(Sender: TField);
var
  q: TMDOQuery;
begin
  if (TipoRemito in [RemitoAjusteSt, Descuento_D]) and
     (FacTIdMotivo.AsInteger > 0) then
  begin
    try
      q := TMDOQuery.Create(Self);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.trGestion;
      q.SQL.Add('Select Motivo ');
      q.SQL.Add('From MotivosAJ ');
      q.SQL.Add('Where IdMotivo = :M');
      q.ParamByName('M').AsInteger := FacTIdMotivo.AsInteger;
      q.Open;
      if not q.IsEmpty then
        FacTDestinoStr.AsString := q.FieldByName('Motivo').AsString
      else
        FacTDestinoStr.AsString := ' ';
    finally
      q.Free;
    end;
  end;
end;

procedure TfrmTransDep.cbTipoAjExit(Sender: TObject);
begin
  if (TipoRemito = RemitoAjusteSt) and (FacTTipoAjuste.AsInteger = 0) and
     (not btnRemitoCancel.Focused) and (not btnSalir.Focused) then
  begin
    raise EUsuario.Create('debe elegir un tipo de ajuste');
  end;
end;

procedure TfrmTransDep.cbTipoAjKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmTransDep.dspqRemEnvBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
const
  UpdSql = 'UPDATE TRASPASO ' +
           'SET ESTADO = :ESTADO ' +
           'WHERE ' +
           '  IDFACTURA = :OLD_IDFACTURA AND ' +
           '  IDSUCURSAL = :OLD_IDSUCURSAL AND ' +
           '  IDPUNTOVENTA = :OLD_IDPUNTOVENTA ';
var
  q: TMDOQuery;
begin
  if UpdateKind = ukModify then
  begin
    try
      q := TMDOQuery.Create(Self);
      q.Database := qRemEnv.Database;
      q.Transaction := qRemEnv.Transaction;
      q.SQL.Text := UpdSql;
      q.ParamByName('OLD_IDFACTURA').AsInteger := ModEnviadosIDFACTURA.AsInteger;
      q.ParamByName('OLD_IDSUCURSAL').AsInteger := ModEnviadosIDSUCURSAL.AsInteger;
      q.ParamByName('OLD_IDPUNTOVENTA').AsInteger := ModEnviadosIDPUNTOVENTA.AsInteger;
      q.ParamByName('ESTADO').AsInteger := ModEnviadosESTADO.AsInteger;
      q.ExecSQL;
      Applied := True;
    finally
      q.Free;
    end;
  end;
end;

procedure TfrmTransDep.ItemsTBeforePost(DataSet: TDataSet);
begin
  if (not ItemsTTieneStk.AsInteger = Verdadero) and (not Leyendo_RemitoT) and
     (ItemsTStkAct.AsFloat < ItemsTCantidad.AsFloat) and
     (not Check_Seg(Nivel_Mod, 'Sin STOCK', AutorDto)) then
  begin
    raise EUsuario.Create('No tiene stock para transferir.-')
  end;
end;

procedure TfrmTransDep.btnModificarClick(Sender: TObject);
begin
  if Check_Seg(Nivel_Mod, 'Ver/Mod/Bor', AutorDto) then
    Get_FacS(FacTTipoFactura.AsInteger, FacTTipoFactura.AsInteger,
             FacTIdFactura.AsInteger, FacTIdPuntoVenta.AsInteger);
end;

procedure TfrmTransDep.edtRemSucCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
var
  q: TMDOQuery;
  NroItem: SmallInt;
begin
  if (not Leyendo_RemitoT) And
     (Hubo_Modificacion) And
     (not qTraDom.IsEmpty) And
     (TipoRemito = RemitoTraspaso) And
     (modified) then
  begin
    if Application.MessageBox('¿Agrega los items al remito?', 'Envios', MB_ICONQUESTION + MB_YESNO) = ID_YES then
    begin
      FacTEntregarA.AsString := '('+qTraDomCLIENTE.AsString + ') ' + qTraDomNOMBRE.AsString;
      FacTDomicilioE.AsString:= qTraDomDIR_ENTREGA.AsString;
      FacTIdFacDom.AsInteger := qTraDomIdFactura.AsInteger;
      FacTIdSucDom.AsInteger := qTraDomIdSucursal.AsInteger;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := dmGestion.trGestion;
        q.SQL.Add('Select I.IdArticulo, I.Cantidad, I.Talle, I.PrecioFinal ');
        q.SQL.Add('From FacVen F ');
        q.SQL.Add('Join ItemsFV I ');
        q.SQL.Add('  on (I.IdFactura = F.IdFactura) And ');
        q.SQL.Add('     (I.IdSucursal = F.IdSucursal) And ');
        q.SQL.Add('     (I.IdPuntoVenta = F.IdPuntoVenta) ');
        q.SQL.Add('Where (F.IdFactura = :IdFac) And ');
        q.SQL.Add('      (F.IdSucursal = :IdSuc) And  ');
        q.SQL.Add('      (F.Cliente = :FcCli) And ');
        q.SQL.Add('      (F.State = 0) And (I.MosDom = 1) ');
        q.ParamByName('IdFac').AsInteger := qTraDomIdFactura.AsInteger;
        q.ParamByName('IdSuc').AsInteger := qTraDomIdSucursal.AsInteger;
        q.ParamByName('FcCli').AsInteger := qTraDomCliente.AsInteger;
        q.Open;
        if not q.IsEmpty then
        begin
          ItemsT.DisableControls;
          q.First;
          while not q.Eof do
          begin
            if GetDatosArt(q.FieldByName('IdArticulo').AsInteger, Vacio, Datos_Art) then
            begin
              ItemsT.Append;
              Inc(NroItem);
              ItemsTIdArticulo.AsInteger := Datos_Art.IdArticulo;
              ItemsTIdFacDomCli.AsInteger := qTraDomIdFactura.AsInteger;
              ItemsTIdSucDomCli.AsInteger := qTraDomIdSucursal.AsInteger;
              ItemsTParaDomicilio.AsInteger := Verdadero;
              ItemsTCodBarra.AsString := Datos_Art.CodBarra;
              ItemsTCantidad.AsInteger := q.FieldByName('Cantidad').AsInteger;
              Cantidad_Etq := Cantidad_Etq + q.FieldByName('Cantidad').AsInteger;
              ItemsTTalle.AsInteger := q.FieldByName('Talle').AsInteger;
              ItemsTObservacion.AsString := Datos_Art.CodBarra;
              ItemsTTipoAj.AsInteger := 1;
              ItemsTPrecioFinal.AsCurrency := q.FieldByName('PrecioFinal').AsCurrency;
              ItemsTPrecioTotal.AsCurrency := q.FieldByName('PrecioFinal').AsCurrency * q.FieldByName('Cantidad').AsInteger;
              ItemsTMarca.AsString := Datos_Art.Marca;
              ItemsTDescripcion.AsString := Datos_Art.Detalle;
              ItemsTDescripcionArticulo.AsString := Datos_Art.DetProd;
              ItemsTTieneTalle.AsInteger := Datos_Art.TieneTalle;
              ItemsTGrupoSubGrupo.AsString := Datos_Art.DetGrupo+' '+Datos_Art.DetSubGr;
              ItemsT.Post;
            end;
            q.Next;
          end;
          ItemsT.EnableControls;
        end;
      finally
        q.Free;
      end;
      edtRemSuc.Enabled := False;
    end;
  end;
end;

procedure TfrmTransDep.edtRemSucExit(Sender: TObject);
var
  Part1, Part2: Integer;
begin
  try
    Part1:= StrToInt(Trim(Copy(edtRemSuc.Text,1,Pos('-',edtRemSuc.Text)-1)));
  except
    on E: EConvertError do
    begin
      edtRemSuc.SetFocus;
      edtRemSuc.SelStart := 0;
      edtRemSuc.SelLength := 3;
      raise EUsuario.Create('Error en el Pto. de Venta del remito');
    end;
  end;
  try
    Part2:= StrToInt(Trim(Copy(edtRemSuc.Text,Pos('-',edtRemSuc.Text)+1,Length(edtRemSuc.Text))));
  except
    on E: EConvertError do
    begin
      edtRemSuc.SetFocus;
      edtRemSuc.SelStart := 5;
      edtRemSuc.SelLength := 8;
      raise EUsuario.Create('Error en el Nº de remito');
    end;
  end;
  FacTNroRemSuc.AsString := Format('%.4d-%.8d',[Part1,Part2]);
end;

procedure TfrmTransDep.cbDepOrigenEnter(Sender: TObject);
begin
  cbDepOrigen.DropDown;
end;

procedure TfrmTransDep.cbDepDestinoEnter(Sender: TObject);
begin
  cbDepDestino.DropDown;
end;

procedure TfrmTransDep.pcTraspasosChange(Sender: TObject);
begin
  case pcTraspasos.ActivePageIndex of
    0: begin
         if New_RemT then
         begin
           try
             Screen.Cursor := crHourGlass;
             qTrasp.Close;
             qItemsT.Close;
             qItemsT.DataSource := dsqTransp;
             qTrasp.Prepare;
             Trasp.Params.ParamByName('TFac').AsInteger := TipoRemito;
             Trasp.Params.ParamByName('Desde').AsDate := Desde;
             Trasp.Open;
           finally
             Screen.Cursor := crDefault;
           end;
         end;
       end;
    1: begin
         New_RemT := False;
         Leer_Comprobante;
         Habilitar_Ingreso(False);
       end;
  end;
end;

procedure TfrmTransDep.pcTraspasosClose(Sender: TObject; var AllowClose: Boolean);
begin
  Close;
end;

procedure TfrmTransDep.cbSubDepOrEnter(Sender: TObject);
begin
  cbSubDepOr.DropDown;
end;

procedure TfrmTransDep.cbSubDepDEnter(Sender: TObject);
begin
  cbSubDepD.DropDown;
end;

procedure TfrmTransDep.FacTIdSubDepOChange(Sender: TField);
begin
  if ConSubDep then
  begin
    with dmGestion do
    begin
      if not SubDep.Active then
        SubDep.Open;
      if SubDep.Locate(SubDepIdSucursal.FieldName+';'+SubDepIdSubDep.FieldName,
         varArrayOf([FacTIdStOrigen.AsInteger, FacTIdSubDepO.AsInteger]), []) then
        FacTSubDepOStr.AsString := SubDepDetSubDep.AsString;
    end;
  end;
end;

procedure TfrmTransDep.FacTIdSubDepDChange(Sender: TField);
begin
  if ConSubDep then
  begin
    with dmGestion do
    begin
      if not SubDep.Active then
        SubDep.Open;
      if SubDep.Locate(SubDepIdSucursal.FieldName+';'+SubDepIdSubDep.FieldName,
         varArrayOf([FacTIdStDestino.AsInteger, FacTIdSubDepD.AsInteger]), []) then
        FacTSubDepDStr.AsString := SubDepDetSubDep.AsString;
    end;
  end;
end;

procedure TfrmTransDep.FacTIdSubDepOValidate(Sender: TField);
begin
  if ConSubDep then
  begin
    with dmGestion do
    begin
      if not SubDep.Active then
        SubDep.Open;
      if SubDep.Locate(SubDepIdSucursal.FieldName+';'+SubDepIdSubDep.FieldName,
         varArrayOf([FacTIdStOrigen.AsInteger, FacTIdSubDepO.AsInteger]), []) then
        FacTSubDepOStr.AsString := SubDepDetSubDep.AsString;
    end;
  end;
end;

procedure TfrmTransDep.FacTIdSubDepDValidate(Sender: TField);
begin
  if ConSubDep then
  begin
    with dmGestion do
    begin
      if not SubDep.Active then
        SubDep.Open;
      if SubDep.Locate(SubDepIdSucursal.FieldName+';'+SubDepIdSubDep.FieldName,
         varArrayOf([FacTIdStDestino.AsInteger, FacTIdSubDepD.AsInteger]), []) then
        FacTSubDepDStr.AsString := SubDepDetSubDep.AsString;
    end;
  end;
end;

procedure TfrmTransDep.FacTTipoAjusteValidate(Sender: TField);
begin
  Case FacTTipoAjuste.AsInteger of
    1: FacTTipoAjusteStr.AsString := 'ENTRADA';
   -1: FacTTipoAjusteStr.AsString := 'SALIDA ';
    else FacTTipoAjusteStr.AsString := Vacio;
  end;
end;

procedure TfrmTransDep.btnVerDesdeClick(Sender: TObject);
begin
  try
    Desde := edtDesdeRem.Date;
  except
    Desde := StartOfTheMonth(Date);
  end;
  try
    Screen.Cursor := crHourGlass;
    Trasp.Close;
    qTrasp.Close;
    qItemsT.Close;
    qTrasp.SQL.Clear;
    Case TipoRemito of
      RemitoTraspaso :begin
        Case rgTipoTrans.ItemIndex of
          0: begin
               qTrasp.SQL.Text := StringReplace(RT, '<Cond>',
                                  ' And ((T.IdStOrigen = :IdSuc) '+
                                  ' or (T.IdStDestino = :IdSuc)) ',
                                  [rfReplaceAll]);
          end;
          1: begin
               qTrasp.SQL.Text := StringReplace(RT, '<Cond>',
                                  ' And (T.IdStOrigen = :IdSuc) ',
                                  [rfReplaceAll]);
          end;
          2: begin
               qTrasp.SQL.Text := StringReplace(RT, '<Cond>',
                                  ' And (T.IdStDestino = :IdSuc) ',
                                  [rfReplaceAll]);
          end;
          3: begin
             ShowMessage('Proximamente por este Sistema....');
             SysUtils.Abort;
          end;
        End;
      end;
      RemitoAjusteSt :begin
        qTrasp.SQL.Text := StringReplace(RA, '<Cond>',
                           ' And (T.IdStOrigen = :IdSuc) ', [rfReplaceAll]);
      end;
      Descuento_D: begin
        qTrasp.SQL.Text := StringReplace(DV, '<Cond>',
                           ' And (T.IdStOrigen = :IdSuc) ', [rfReplaceAll]);
      end;
    end;
    qItemsT.DataSource := dsqTransp;
    Trasp.FetchParams;
    Trasp.Params.ParamByName('IdSuc').AsInteger := Id_Sucur;
    Trasp.Params.ParamByName('TFac').AsInteger := TipoRemito;
    Trasp.Params.ParamByName('Desde').AsDate := Desde;
    Trasp.Open;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmTransDep.ItemsTBeforeInsert(DataSet: TDataSet);
begin
  if (Cantidad_Items >= MaxLineaItm) and (not Leyendo_RemitoT) then
    raise EUsuario.Create('No se pueden agregar mas items al Remito');
end;

procedure TfrmTransDep.cbSucursalesChange(Sender: TObject);
begin
  Id_Sucur := Integer(cbSucursales.Items.Objects[cbSucursales.ItemIndex]);
end;

procedure TfrmTransDep.cbSucursalRIEnter(Sender: TObject);
begin
  cbSucursalRI.DropDown;
end;

//**********************************  ENVIOS  *********************************
procedure TfrmTransDep.cbSucAEnviarEnter(Sender: TObject);
begin
  lblCantEnc.Caption := '0';
  CantE := 0;
end;

procedure TfrmTransDep.cbSucAEnviarChange(Sender: TObject);
begin
  try
    Id_Sucur := Integer(cbSucAEnviar.Items.Objects[cbSucAEnviar.ItemIndex]);
  except
    Id_Sucur := 0;
  end;
end;

procedure TfrmTransDep.Buscar_Remitos(T: SmallInt);
Const
  Env = 'Select T.IdFactura, T.IdSucursal, T.IdPuntoVenta, T.TipoFactura, '+
        '       T.IdStOrigen, T.IdStDestino, T.Estado, T.Empleado, T.DiaHora, '+
        '       T.FechaF, T.CantArtic, T.Total, T.Usuario, T.NroFactura, '+
        '       O.NombreSuc as Origen, D.NombreSuc as Destino, C.Descripcion '+
        'From Traspaso T '+
        'Join Sucursales O '+
        '  On O.IdSucursal = T.IdStOrigen '+
        'Join Sucursales D '+
        '  On D.IdSucursal = T.IdStDestino '+
        'Join TiposComp C '+
        '  on C.IdComprobante = T.TipoFactura '+
        'Where (T.Estado = 1) ';

  Ajt = 'Select T.IdFactura, T.IdSucursal, T.IdPuntoVenta, T.TipoFactura, '+
        '       T.IdStOrigen, T.IdStDestino, T.Estado, T.Empleado, T.DiaHora, '+
        '       T.FechaF, T.CantArtic, T.Total, T.Usuario, T.NroFactura, '+
        '       O.NombreSuc as Origen, D.Motivo as Destino, C.Descripcion '+
        'From Traspaso T '+
        'Join Sucursales O '+
        '  On O.IdSucursal = T.IdStOrigen '+
        'Join MotivosAJ D '+
        '  On D.IdMotivo = T.IdStDestino '+
        'Join TiposComp C '+
        '  on C.IdComprobante = T.TipoFactura '+
        'Where (T.Estado = 1) ';
Var
  Cond: String;
begin
  gEnvios.SelectedList.Clear;
  qEnvios.Close;
  CantE := 0;
  Cond := Vacio;
  if (Id_Sucur > 0) And
     (TipoRemito in [RemitoTraspaso, RemitoAjusteSt]) then
  begin
    qEnvios.SQL.Clear;
    Case TipoRemito of
      RemitoTraspaso: begin
        Cond := ' And (T.IdStOrigen = '+IntToStr(Id_Sucur)+
                ' Or T.IdStDestino = '+IntToStr(Id_Sucur)+')'+
                ' And (T.TipoFactura = '+IntToStr(TipoRemito)+')'+
                ' Order By T.FechaF desc ';
        qEnvios.SQL.Text := Env + Cond;
      end;
      RemitoAjusteSt: begin
        Cond := ' And (T.IdStOrigen = '+IntToStr(Id_Sucur)+')'+
                ' And (T.TipoFactura = '+IntToStr(TipoRemito)+')'+
                ' Order By T.FechaF desc ';
        qEnvios.SQL.Text := Ajt + Cond;
      end;
      (*
      Descuento_D: begin
        Cond := ' And (T.IdStOrigen = '+IntToStr(Id_Sucur)+')'+
                ' And (T.TipoFactura = '+IntToStr(TipoRemito)+')'+
                ' Order By T.FechaF desc ';
      end;
      *)
    end;
     qEnvios.Open;
    if not qEnvios.IsEmpty then
    begin
      qEnvios.Last;
      lblCantEnc.Caption := IntToStr(qEnvios.RecordCount);
      qEnvios.First;
      gEnvios.Enabled := True;
    end
    else begin
      qEnvios.Close;
      gEnvios.Enabled := False;
    end;
  end;
  gEnvios.RefreshDisplay;
end;

procedure TfrmTransDep.Transferencias_Domicilios;
const
  TDom = 'Select F.IdFactura, F.IdSucursal, F.IdPuntoVenta, F.FechaF, '+
         '       F.NroFactura, F.Cliente, F.Dir_Entrega, T.DescCorta, '+
         '       C.Nombre, C.Telefonos, I.IdArticulo, I.Cantidad, '+
         '       I.IdSucSalida, I.FechaSal, K.NombreSuc, A.Marca, '+
         '       A.Detalle '+
         'From FacVen F '+
         'Join ItemsFV I '+
         '  on (I.IdFactura = F.IdFactura) And '+
         '       (I.IdSucursal = F.IdSucursal) And '+
         '       (I.IdPuntoVenta = F.IdPuntoVenta) '+
         'Join TiposComp T '+
         '  on T.IdComprobante = F.TipoFactura '+
         'Join Clientes C '+
         '  on (C.IdCliente = F.Cliente) And '+
         '     (C.IdSucursal = F.IdSucursal) '+
         'Left Outer Join Sucursales K '+
         '  on K.IdSucursal = I.IdSucSalida '+
         'Join Articulos A '+
         '  on A.IdArticulo = I.IdArticulo '+
         'Where (F.State = 0) And (F.IdSucursal = :IdSuc) <cond> '+
         'Order By C.Nombre, F.FechaF ';
var
  t: SmallInt;
  s: String;
begin
  if edtDesdeDom.Date <= edtHastaDom.Date then
  begin
    try
      Screen.Cursor := crSQLWait;
      t := StrToInt(cbEstadoDom.Values[cbEstadoDom.ItemIndex]);
      Case t of
        1: s := StringReplace(TDom, '<cond>', ' And (F.FechaF between :Desde And :Hasta) And (I.MosDom = 1) ',[rfReplaceAll]);
       -1: s := StringReplace(TDom, '<cond>', ' And (I.FechaSal between :Desde And :Hasta) And (I.MosDom = -1) ',[rfReplaceAll]);
        else s:= StringReplace(TDom,'<cond>', ' And (I.FechaSal between :Desde And :Hasta) ',[rfReplaceAll]);
      end;

      qPrdDom.Close;
      qPrdDom.SQL.Clear;
      qPrdDom.SQL.Text := s;
      qPrdDom.ParamByName('Desde').AsDate := edtDesdeDom.Date;
      qPrdDom.ParamByName('Hasta').AsDate := edtHastaDom.Date;
      qPrdDom.ParamByName('IdSuc').AsInteger := IdSucDom;
      qPrdDom.Open;
    Finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmTransDep.TraspAfterOpen(DataSet: TDataSet);
begin
  try
    Total_Remitos := 0;
    if not Trasp.IsEmpty then
      Total_Remitos := Trasp.RecordCount;
  finally
    gTraspasos.ColumnByName('Descripcion').FooterValue := 'Nº Comprobantes';
    gTraspasos.ColumnByName('NomEnt').FooterValue := Format('%d',[Total_Remitos]);
  end;
end;

procedure TfrmTransDep.TraspEN_AMBASGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if TraspEN_AMBAS.AsInteger = 2 then
    Text := 'Si'
  else
    Text := 'No';
end;

procedure TfrmTransDep.TraspEstadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Case TraspEstado.AsInteger of
    0: Text := ' ';
    1: Text := 'C';
    2: Text := 'E';
    3: Text := 'R';
    else Text := IntToStr(TraspEstado.AsInteger);
  end;
end;

procedure TfrmTransDep.TraspTipoAJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Case TraspTipoAj.AsInteger of
    1 : Text := 'Entrada';
    -1: Text := 'Salida ';
  End;
end;

procedure TfrmTransDep.btnBuscarInvClick(Sender: TObject);
begin
  Ver_Inventario
end;

procedure TfrmTransDep.btnBuscarTransClick(Sender: TObject);
begin
  Buscar_Remitos(TipoRemito);
end;

procedure TfrmTransDep.btnBusDomClick(Sender: TObject);
begin
  Transferencias_Domicilios;
end;

procedure TfrmTransDep.gResInvDblClick(Sender: TObject);
begin
  try
    Get_MStk(qResultadoInvIdArticulo.AsInteger,
      Integer(cbSucResInv.Items.Objects[cbSucResInv.ItemIndex]));
  except
    frmABMArticulos := TfrmABMArticulos.Create(nil);
    frmABMArticulos.Cual_Art := qResultadoInvIdArticulo.AsInteger;
    frmABMArticulos.ShowModal;
  end;
end;

procedure TfrmTransDep.gResInvUpdateFooter(Sender: TObject);
begin
  gResInv.ColumnByName('DetArt').FooterValue := 'Totales';
  gResInv.ColumnByName('PrecioCosto').FooterValue := Format('%m',[RI_TCosto]);
  gResInv.ColumnByName('PrecioNeto').FooterValue := Format('%m',[RI_TPNeto]);
  gResInv.ColumnByName('NoComputables').FooterValue := Format('%m',[RI_NoComp]);
  gResInv.ColumnByName('PrecioFinal').FooterValue := Format('%m',[RI_TFinal]);
end;

procedure TfrmTransDep.gEnviosDblClick(Sender: TObject);
begin
  Get_FacS(qEnviosTipoFactura.AsInteger,
           qEnviosIdFactura.AsInteger,
           qEnviosIdSucursal.AsInteger,
           qEnviosIdPuntoVenta.AsInteger);
end;

procedure TfrmTransDep.gEnviosMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
begin
  if Selecting then
    Inc(CantE)
  else
    Dec(CantE);
  gEnvios.ColumnByName('Selected').FooterValue := Format('%d', [CantE]);
end;

procedure TfrmTransDep.gEnviosUpdateFooter(Sender: TObject);
begin
  gEnvios.ColumnByName('Selected').FooterValue := Format('%d', [CantE]);
end;

procedure TfrmTransDep.cbSucARe_EnvChange(Sender: TObject);
begin
  try
    IdSucEnv := Integer(cbSucARe_Env.Items.Objects[cbSucARe_Env.ItemIndex]);
  except
    IdSucEnv := 0;
  end;
end;

procedure TfrmTransDep.btnBuscarEnvClick(Sender: TObject);
(*
  Select T.IdFactura, T.IdSucursal, T.FechaF, T.NroFactura,
         T.CantArtic, T.TipoFactura, T.Estado, C.Descripcion
  From Traspaso T
  Join TiposComp C
    on C.IdComprobante = T.TipoFactura
  Where ((IdStOrigen =:IdSuc) Or (IdStDestino =:IdSuc)) And
        (FechaF >=:Desde) And (Estado >= 2) And (T.TipoFactura =:T)

  qRemEnv.Close;
  qRemEnv.ParamByName('IdSuc').AsInteger := IdSucEnv;
  qRemEnv.ParamByName('Desde').AsDate := edtDesdeEnv.Date;
  qRemEnv.ParamByName('TipoR').AsInteger := TipoRemito;
  qRemEnv.Open;
*)
begin
  if IdSucEnv > 0 then
  begin
    ModEnviados.Close;
    ModEnviados.Params.ParamByName('IdOrg').AsInteger := IdSucEnv;
    ModEnviados.Params.ParamByName('IdDes').AsInteger := IdSucEnv;
    ModEnviados.Params.ParamByName('Desde').AsDate := edtDesdeEnv.Date;
    ModEnviados.Params.ParamByName('TipoR').AsInteger := TipoRemito;
    ModEnviados.Open;
  end;
end;

procedure TfrmTransDep.cbSucA_DomicChange(Sender: TObject);
begin
  IdSucDom := Integer(cbSucA_Domic.Items.Objects[cbSucA_Domic.ItemIndex]);
end;

//***********************************************INVENTARIO*********************

procedure TfrmTransDep.DatosArticuloBuscado_INV(Sender: TField; Text: String);
var
  V, Err: Integer;
  Searched: String;
  ElTalle: Integer;
begin
  ElTalle := SIN_DETALLE_TALLE;
  with dmGestion do
  begin
    if not Buscando_ArtI then
    begin
      Buscando_ArtI := True;
      Searched := Text;
      try
        if Searched > Vacio then
        begin
          if Length(Searched) = 12 then
          begin
            try
              ElTalle := StrToInt(Copy(Searched, 9, 3));
            except
              ElTalle := SIN_DETALLE_TALLE;
            end;
            Searched := Copy(Searched, 1, 7);
          end;
          if GetDatosArt(0, Searched, Datos_Art) then
          begin
            if Datos_Art.Activo = Verdadero then
            begin
              if ElTalle > SIN_DETALLE_TALLE then
                ItemsIVTalle.AsInteger := ElTalle;
              Sender.AsInteger := Datos_Art.IdArticulo;
            end
            else
              raise EUsuario.Create('Producto DESACTIVADO no se puede Facturar.-');
          end
          else begin
            Val(Searched, V, Err);
            if Err = 0 then
            begin
              if GetDatosArt(V, Vacio, Datos_Art) then
              begin
                if Datos_Art.Activo = Verdadero then
                begin
                  if ElTalle > SIN_DETALLE_TALLE then
                    ItemsIVTalle.AsInteger := ElTalle;
                  Sender.AsInteger := Datos_Art.IdArticulo;
                end
                else
                  raise EUsuario.Create('Producto DESACTIVADO no se puede Facturar.-');
              end
              else begin
                Elegido := Search_Prod(Searched, Tarea);
                if Elegido.IdArticulo > NoEncontrado then
                begin
                  if GetDatosArt(Elegido.IdArticulo, Vacio, Datos_Art) then
                    Sender.AsInteger := Datos_Art.IdArticulo;
                end
                else
                  raise EUsuario.Create('No se encontró el producto');
              end;
            end
            else begin
              Elegido := Search_Prod(Searched, Tarea);
              if Elegido.IdArticulo > NoEncontrado then
              begin
                if GetDatosArt(Elegido.IdArticulo, Vacio, Datos_Art) then
                  Sender.AsInteger := Elegido.IdArticulo;
              end
              else
                raise Exception.Create('No se encontró el producto');
            end;
          end;
        end
        else begin
          Elegido := Search_Prod(Searched, Tarea);
          if Elegido.IdArticulo > NoEncontrado then
          begin
            if GetDatosArt(Elegido.IdArticulo, Vacio, Datos_Art) then
              Sender.AsInteger := Elegido.IdArticulo;
          end
          else
            raise Exception.Create('No se encontró el producto');
        end;
      finally
        Buscando_ArtI := False;
      end;
    end;
  end;
end;

procedure TfrmTransDep.Habilitar_Ingreso_Inventario(Habilitar: Boolean);
begin
  btnNuevoRI.Enabled := not Habilitar;
  btnGrabarRI.Enabled := Habilitar;
  btnCancelarRI.Enabled := Habilitar;
  btnImprimirRI.Enabled := not Habilitar;

  edtPeriodoRI.Enabled := Habilitar;
  edtEmpleadoRI.Enabled := Habilitar;
  edtFechaRI.Enabled := Habilitar;
  cbSucursalRI.Enabled := Habilitar;
  edtComprobanteRI.Enabled := Habilitar;

  if Habilitar then
  begin
    gItemsI.ReadOnly := False;
    gItemsI.Options := gItemsI.Options + [dgEditing];
  end
  else begin
    gItemsI.ReadOnly := True;
    gItemsI.Options := gItemsI.Options - [dgEditing];
  end;
  gItemsI.RefreshDisplay;
end;

procedure TfrmTransDep.VaciarTablas_Inventario;
begin
  if ItemsIv.Active then
  begin
    ItemsIv.Close;
    ItemsIv.CreateDataSet;
  end
  else
    ItemsIv.CreateDataSet;

  if FacIv.Active then
  begin
    FacIv.Close;
    FacIv.CreateDataSet;
  end
  else
    FacIv.CreateDataSet;
  Cant_Item_Inv := 0;
  Total_Rem_Inv := 0;
  Buscando_ArtI := False;
end;

procedure TfrmTransDep.VaciarTablas_Ajustes;
begin
  if ItemsAj.Active then
  begin
    ItemsAj.Close;
    ItemsAj.CreateDataSet;
  end
  else
    ItemsAj.CreateDataSet;

  if FacAj.Active then
  begin
    FacAj.Close;
    FacAj.CreateDataSet;
  end
  else
    FacAj.CreateDataSet;
  Cant_Item_Ajt := 0;
  Total_Rem_Ajt := 0;
  Buscando_ArtI := False;
end;

procedure TfrmTransDep.UpdateTotals_Inventario;
var
  TempTotal, TempNeto, TempNoComp, TempCosto: Currency;
  TotalItems: Integer;
begin
  try
    Cant_Item_Inv := 0;
    Total_Rem_Inv := 0;
    ItemsIv.First;
    TempTotal := 0;
    TempNeto  := 0;
    TempNoComp:= 0;
    TempCosto := 0;
    TotalItems:= 0;
    while not ItemsIv.Eof do
    begin
      TempTotal := TempTotal + (ItemsIvPrecio.AsCurrency * ItemsIvCantidad.AsFloat);
      TempNeto  := TempNeto  + (ItemsIvNeto.AsCurrency * ItemsIvCantidad.AsFloat);
      TempNoComp:= TempNoComp+ (ItemsIvImpInt.AsCurrency * ItemsIvCantidad.AsFloat);
      TempCosto := TempCosto + (ItemsIvCosto.AsCurrency * ItemsIvCantidad.AsFloat);
      Inc(TotalItems);
      ItemsIv.Next;
    end;
    if not (FacIv.State in dsEditModes) then
      FacIv.Edit;
    FacIvTotal.AsCurrency := TempTotal;
    FacIvTNeto.AsCurrency := TempNeto;
    FacIvTNoCmp.AsCurrency:= TempNoComp;
    FacIvTCosto.AsCurrency:= TempCosto;
    FacIvCantArt.AsInteger:= TotalItems;
  finally
    Cant_Item_Inv := TotalItems;
    Total_Rem_Inv := TempTotal;
    ItemsIv.Last;
    gItemsI.ColumnByName('DetArt').FooterValue := 'Cantidad de Items (max 100)';
    gItemsI.ColumnByName('Cantidad').FooterValue := Format('%d', [Cant_Item_Inv]);
    gItemsI.ColumnByName('Precio').FooterValue := Format('%m',[Total_Rem_Inv]);
  end;
end;

procedure TfrmTransDep.gItemsICalcCellColors(Sender: TObject; Field: TField;
           State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if Highlight then
  begin
    if State = [gdSelected, gdFocused] then
      AFont.Color := clWhite
    else
      AFont.Color := clBlack;
  end
end;

procedure TfrmTransDep.gItemsIColEnter(Sender: TObject);
begin
  if Assigned(gItemsI.SelectedField) then
  begin
    if (gItemsI.SelectedField.FieldName = 'DetArt') or
       (gItemsI.SelectedField.FieldName = 'Precio') then
    begin
      if Atras then
        gItemsI.SelectedIndex := gItemsI.SelectedIndex - 1
      else
        gItemsI.SelectedIndex := gItemsI.SelectedIndex + 1;
    end;

    if (gItemsI.SelectedField.FieldName = 'Talle') and (not ItemsIvTieneTalle.AsInteger = Verdadero) then
    begin
      if Atras then
        gItemsI.SelectedIndex := gItemsI.SelectedIndex - 1
      else
        gItemsI.SelectedIndex := gItemsI.SelectedIndex + 1;
    end;
  end;
end;

procedure TfrmTransDep.gItemsIColExit(Sender: TObject);
begin
  if gItemsI.Columns[gItemsI.SelectedIndex].FieldName = 'IdArticulo' then
  begin
    if (Trim(ItemsIvIdArticulo.AsString) = Cero) or (ItemsIvIdArticulo.IsNull) then
    begin
      Elegido := Search_Prod(Vacio, Tarea);
      if Elegido.IdArticulo <> NoEncontrado then
      begin
        ItemsIv.Edit;
        ItemsIvIdArticulo.AsInteger := Elegido.IdArticulo;
      end;
    end
    else begin
      if (ItemsIvTieneTalle.AsInteger = Verdadero) and
         (ItemsIvIdArticulo.AsInteger > 0) and
         ((ItemsIvTalle.IsNull) or
          (ItemsIvTalle.AsInteger = SIN_DETALLE_TALLE)) and
         (Control_Talles) then
      begin
        ItemsIv.Edit;
        ItemsIvTalle.AsInteger := GetTalles(ItemsIvIdArticulo.AsInteger);
      end;
    end;
  end;
end;

procedure TfrmTransDep.gItemsIDblClick(Sender: TObject);
begin
  Get_MStk(ItemsIvIDARTICULO.AsInteger, ItemsIvIdDeposito.AsInteger);
end;

procedure TfrmTransDep.gItemsIEnter(Sender: TObject);
begin
  if not qInventario.IsEmpty then
  begin
    if FacIv.State in [dsEdit, dsInsert] then
      FacIv.Post;
    cbSucursalRI.Enabled := False;
    edtComprobanteRI.Enabled := False;
    edtFechaRI.Enabled := False;
    FacIv.Edit;
  end;
end;

procedure TfrmTransDep.gItemsIKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  FillChar(Elegido, SizeOf(Elegido), NoEncontrado);
  if Shift = [] then
  begin
    Case Key of
      VK_RIGHT,
      VK_RETURN,
      VK_TAB : Atras := False;
      VK_LEFT: Atras := True;
      VK_F3: Elegido := Search_Prod(Vacio, Tarea);
      VK_ESCAPE: btnGrabarRI.SetFocus;
      else inherited KeyDown(Key, Shift);
    end;
    if Elegido.IdArticulo <> NoEncontrado then
    begin
      ItemsIv.Edit;
      ItemsIvIdArticulo.AsInteger := Elegido.IdArticulo;
    end;
  end;
end;

procedure TfrmTransDep.gItemsIKeyPress(Sender: TObject; var Key: Char);
begin
  if (gItemsI.SelectedField.DataType in [ftFloat, ftCurrency, ftBCD])and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

procedure TfrmTransDep.gItemsIUpdateFooter(Sender: TObject);
begin
  gItemsI.ColumnByName('DetArt').FooterValue := 'Cantidad de Items (max 100)';
  gItemsI.ColumnByName('Cantidad').FooterValue := Format('%d',[Cant_Item_Inv]);
  gItemsI.ColumnByName('Precio').FooterValue := Format('%m',[Total_Rem_Inv]);
end;

procedure TfrmTransDep.Cargar_Registro_Inventario;
var
  Actual: Integer;
begin
  try
    FillChar(Factura, SizeOf(Factura), 0);
    FillChar(ItemsFiscal, SizeOf(ItemsFiscal), 0);
    Leyendo_RemitoI := True;
    with Factura do
    begin
      IdFactura := FacIvIdFactura.AsInteger;
      IdSucursal := FacIvIdSucursal.AsInteger;
      IdPuntoVenta := IdSalesPoint;
      TipoFactura := RemitoInventario;
      TipoFacStr := 'Remito Inventario';
      IdStOrigen := FacIvIdDeposito.AsInteger;
      DepOrigen := FacIvDepositoStr.AsString;
      IdStDestino := FacIvPeriodo.AsInteger;
      DepDestino := Vacio;
      FechaF := FacIvFechaI.AsDateTime;
      FechaI := 0;
      PuntoVta := 0;
      NroFactura := FacIvNroFac.AsString;
      CompRef := Vacio;
      IdCompRef := 0;
      Entidad := FacIvEmpleado.AsInteger;
      NombreEnt := FacIvNomEmp.AsString;
      TipoIva := 0;
      TipoIvaStr := Vacio;
      TipoDoc := NINGUNO;
      TipoDocStr := Vacio;
      NroDocumento := Vacio;
      Direccion := FacIvDepositoStr.AsString;
      Localidad := 'Periodo: '+FacIvPeriodo.AsString;
      Provincia := Vacio;
      CodPostal := Vacio;
      Telefono  := Vacio;
      Descuento := 0;
      Neto := FacIvTNeto.AsCurrency;
      Exento := FacIvTCosto.AsCurrency;
      NoComputables := FacIvTNoCmp.AsCurrency;
      AlicuotaIva1 := 0;
      IvaAlicuota1 := 0;
      Total := FacIvTotal.AsCurrency;
      Contado := 0;
      Tarjeta := 0;
      CtaCte := 0;
      Credito := 0;
      ChequeTer := 0;
      Empleado := FacIvEmpleado.AsInteger;
      NombreEmpleado := FacIvNomEmp.AsString;
      TipoAj := 0;
    end;

    ItemsIv.First;
    Actual := 0;
    while not ItemsIv.Eof do
    begin
      Inc(Actual);
      ItemsFiscal[Actual].IdItem := ItemsIvIdItem.AsInteger;
      ItemsFiscal[Actual].IdSucursal := FacIvIdSucursal.AsInteger;
      ItemsFiscal[Actual].IdPuntoVenta := IdSalesPoint;
      ItemsFiscal[Actual].IdProducto := ItemsIvIdArticulo.AsInteger;
      ItemsFiscal[Actual].Talle := ItemsIvTalle.AsInteger;
      ItemsFiscal[Actual].CodProd := ItemsIvIdArticulo.AsString;
      ItemsFiscal[Actual].Marca := ItemsIvMarca.AsString;
      ItemsFiscal[Actual].Detalle := ItemsIvDetalle.AsString;
      ItemsFiscal[Actual].DescProd := ItemsIvDetArt.AsString;
      ItemsFiscal[Actual].Color := ItemsIvColor.AsString;
      ItemsFiscal[Actual].TipoAj := 0;
      ItemsFiscal[Actual].Cantidad := ItemsIvCantidad.AsFloat;
      ItemsFiscal[Actual].Bonificacion := 0;
      ItemsFiscal[Actual].Descuento := 0;
      ItemsFiscal[Actual].PrecioNetoT := ItemsIvNeto.AsCurrency * ItemsIvCantidad.AsFloat;
      ItemsFiscal[Actual].PrecioCosto := ItemsIvCosto.AsCurrency;
      ItemsFiscal[Actual].PrecioFinal := ItemsIvPrecio.AsCurrency;
      ItemsFiscal[Actual].PrecioTotal := ItemsIvPrecio.AsCurrency * ItemsIvCantidad.AsFloat;
      ItemsFiscal[Actual].Exento := 0;
      ItemsFiscal[Actual].NoComputable := ItemsIvImpInt.AsCurrency;
      ItemsFiscal[Actual].CoefImpInt := 0;
      ItemsFiscal[Actual].MtoIva := 0;
      ItemsFiscal[Actual].IdAlcIva := 0;
      ItemsFiscal[Actual].AlicuotaIva := 0;
      ItemsFiscal[Actual].TIvaEnt := 0;
      ItemsFiscal[Actual].IdAlcIB := 0;
      ItemsFiscal[Actual].IngBto := 0;
      ItemsFiscal[Actual].Servicio := False;
      ItemsIv.Next;
    end;
  finally
    Factura.CantArtic := Actual;
    Leyendo_RemitoI  := False;
  end;
end;

procedure TfrmTransDep.Cargar_Registro_Ajustes;
var
  Actual: Integer;
begin
  try
    FillChar(Factura, SizeOf(Factura), 0);
    FillChar(ItemsFiscal, SizeOf(ItemsFiscal), 0);
    Leyendo_RemitoI := True;
    with Factura do
    begin
      IdFactura := FacAjIdFactura.AsInteger;
      IdSucursal := FacAjIdSucursal.AsInteger;
      IdPuntoVenta := IdSalesPoint;
      TipoFactura := RemitoAjusteSt;
      TipoFacStr := 'Remito Ajuste Inv';
      IdStOrigen := FacAjIdDeposito.AsInteger;
      DepOrigen := FacAjDepositoStr.AsString;
      FechaF := FacAjFechaI.AsDateTime;
      FechaI := 0;
      PuntoVta := 0;
      NroFactura := FacAjNroFac.AsString;
      CompRef := Vacio;
      IdCompRef := FacAjPeriodo.AsInteger;
      Entidad := FacAjEmpleado.AsInteger;
      NombreEnt := FacAjNomEmp.AsString;
      TipoIva := 0;
      TipoIvaStr := Vacio;
      TipoDoc := NINGUNO;
      TipoDocStr := Vacio;
      NroDocumento := Vacio;
      Direccion := FacAjDepositoStr.AsString;
      Localidad := 'Periodo: '+FacAjPeriodo.AsString;
      Provincia := Vacio;
      CodPostal := Vacio;
      Telefono  := Vacio;
      Descuento := 0;
      Neto := FacAjTNeto.AsCurrency;
      Exento := FacAjTCosto.AsCurrency;
      NoComputables := FacAjTNoCmp.AsCurrency;
      AlicuotaIva1 := 0;
      IvaAlicuota1 := 0;
      Total := FacAjTotal.AsCurrency;
      Contado := 0;
      Tarjeta := 0;
      CtaCte := 0;
      Credito := 0;
      ChequeTer := 0;
      Empleado := FacAjEmpleado.AsInteger;
      NombreEmpleado := FacAjNomEmp.AsString;
      TipoAj := 1;
    end;

    ItemsAj.First;
    Actual := 0;
    while not ItemsAj.Eof do
    begin
      Inc(Actual);
      ItemsFiscal[Actual].IdItem := ItemsAjIdItem.AsInteger;
      ItemsFiscal[Actual].IdSucursal := FacIvIdSucursal.AsInteger;
      ItemsFiscal[Actual].IdPuntoVenta := IdSalesPoint;
      ItemsFiscal[Actual].IdProducto := ItemsAjIdArticulo.AsInteger;
      ItemsFiscal[Actual].Talle := ItemsAjTalle.AsInteger;
      ItemsFiscal[Actual].CodProd := ItemsAjIdArticulo.AsString;
      ItemsFiscal[Actual].Marca := ItemsAjMarca.AsString;
      ItemsFiscal[Actual].Detalle := ItemsAjDetalle.AsString;
      ItemsFiscal[Actual].DescProd := ItemsAjDetArt.AsString;
      ItemsFiscal[Actual].Color := ItemsAjColor.AsString;
      ItemsFiscal[Actual].TipoAj := 1;
      ItemsFiscal[Actual].Cantidad := ItemsAjCantidad.AsFloat;
      ItemsFiscal[Actual].Bonificacion := 0;
      ItemsFiscal[Actual].Descuento := 0;
      ItemsFiscal[Actual].PrecioNetoT := ItemsAjNeto.AsCurrency * ItemsAjCantidad.AsFloat;
      ItemsFiscal[Actual].PrecioCosto := ItemsAjCosto.AsCurrency;
      ItemsFiscal[Actual].PrecioFinal := ItemsAjPrecio.AsCurrency;
      ItemsFiscal[Actual].PrecioTotal := ItemsAjPrecio.AsCurrency * ItemsAjCantidad.AsFloat;
      ItemsFiscal[Actual].Exento := 0;
      ItemsFiscal[Actual].NoComputable := ItemsAjImpInt.AsCurrency;
      ItemsFiscal[Actual].CoefImpInt := 0;
      ItemsFiscal[Actual].MtoIva := 0;
      ItemsFiscal[Actual].IdAlcIva := 0;
      ItemsFiscal[Actual].AlicuotaIva := 0;
      ItemsFiscal[Actual].TIvaEnt := 0;
      ItemsFiscal[Actual].IdAlcIB := 0;
      ItemsFiscal[Actual].IngBto := 0;
      ItemsFiscal[Actual].Servicio := False;
      ItemsAj.Next;
    end;
  finally
    Factura.CantArtic := Actual;
    Leyendo_RemitoI  := False;
  end;
end;

procedure TfrmTransDep.Grabar_Remito_Inventario;
begin
  if Hubo_Mod_Remito then
  begin
    if (ItemsIv.State in dsEditModes) and
       (ItemsIvIdArticulo.AsInteger > 0) then
      ItemsIv.Post
    else
      ItemsIv.Cancel;
    if ItemsIv.IsEmpty then
      raise EUsuario.Create('No hay productos cargados.');
    if FacIv.State in dsEditModes then
      FacIv.Post;

    Cargar_Registro_Inventario;
    try
      LockWindowUpdate(Handle);
      if dmSaveFile.GrabarComprobanteInventario(Factura, ItemsFiscal) then
        ShowMessage('El remito de Toma de inventario fue correctamente grabado.')
      else
        ShowMessage('ERROR. El remito no se GRABO.');
    finally
      LockWindowUpdate(0);
    end;
  end;
end;

procedure TfrmTransDep.Leer_Comprobante_Inventario;
begin
  if Leyendo_RemitoI then
    Exit;
  VaciarTablas_Inventario;
  try
    Screen.Cursor := crHourGlass;
    Leyendo_RemitoI := True;
    ItemsIv.DisableControls;
    qItemsIv.First;
    if not qItemsIv.IsEmpty then
    begin
      FacIv.Append;
      FacIvIdFactura.AsInteger := qInventarioIDFACTURA.AsInteger;
      FacIvIdSucursal.AsInteger := qInventarioIdSucursal.AsInteger;
      FacIvIdDeposito.AsInteger := qInventarioIDSTORIGEN.AsInteger;
      FacIvFechaI.AsDateTime := qInventarioFechaF.AsDateTime;
      FacIvNroFac.AsString := qInventarioNROFACTURA.AsString;
      FacIvEmpleado.AsInteger := qInventarioIdEmpleado.AsInteger;
      FacIvNomEmp.AsString := qInventarioNOMEMPLEADO.AsString;
      FacIvTotal.AsCurrency := qInventarioTotal.AsCurrency;
      FacIvCantArt.AsInteger := qInventarioCANTARTIC.AsInteger;
      FacIv.Post;
      (*
      Total_Rem_Inv := qInventarioTotal.AsCurrency;
      Cant_Item_Inv := qInventarioCANTARTIC.AsInteger;
      *)
      qItemsIv.First;
      while not qItemsIv.Eof do
      begin
        ItemsIv.Append;
        ItemsIvIdFactura.AsInteger := qItemsIVIdFactura.AsInteger;
        ItemsIvIdSucursal.AsInteger := qItemsIVIdSucursal.AsInteger;
        ItemsIvIdItem.AsInteger := qItemsIVIdItem.AsInteger;
        ItemsIvIdArticulo.AsInteger := qItemsIVIdArticulo.AsInteger;
        ItemsIvCantidad.AsFloat := qItemsIVCantidad.AsInteger;
        ItemsIvPrecio.AsCurrency := qItemsIVPrecioFinal.AsCurrency;
        ItemsIvTotal.AsCurrency := qItemsIVPrecioTotal.AsCurrency;
        ItemsIvMarca.AsString := qItemsIVMarca.AsString;
        ItemsIvDetalle.AsString := qItemsIVDetalle.AsString;
        ItemsIvDetArt.AsString := qItemsIVMarca.AsString+' '+
                                  qItemsIvDetalle.AsString+' '+
                                  qItemsIVColor.AsString;
        ItemsIvTieneTalle.AsInteger := qItemsIVTieneTalle.AsInteger;
        ItemsIvTalle.AsInteger := qItemsIVTalle.AsInteger;
        ItemsIvIdDeposito.AsInteger := qInventarioIDSTORIGEN.AsInteger;
        ItemsIv.Post;
        qItemsIv.Next;
      end;
    end;
    gItemsI.ColumnByName('DetArt').FooterValue := 'Cantidad de Items (max 100)';
    gItemsI.ColumnByName('Cantidad').FooterValue := Format('%d',[Cant_Item_Inv]);
    gItemsI.ColumnByName('Precio').FooterValue := Format('%m',[Total_Rem_Inv]);
  finally
    ItemsIv.First;
    ItemsIv.EnableControls;
    gItemsI.RefreshDisplay;
    Leyendo_RemitoI := False;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmTransDep.Leer_Comprobante_Ajustes;
begin
  if Leyendo_RemitoI then
    Exit;
  VaciarTablas_Inventario;
  try
    Screen.Cursor := crHourGlass;
    Leyendo_RemitoI := True;
    ItemsIv.DisableControls;
    qItemsAj.Close;
    qItemsAj.Open;
    if not qItemsAj.IsEmpty then
    begin
      FacAj.Append;
      FacAjIdFactura.AsInteger := qAjustesIdFactura.AsInteger;
      FacAjIdSucursal.AsInteger := qAjustesIdSucursal.AsInteger;
      FacAjIdDeposito.AsInteger := qAjustesIdStock.AsInteger;
      FacAjFechaI.AsDateTime := qAjustesFechaI.AsDateTime;
      FacAjNroFac.AsString := qAjustesNroFact.AsString;
      FacAjEmpleado.AsInteger := qAjustesEmpleado.AsInteger;
      FacAjNomEmp.AsString := qAjustesNomEnt.AsString;
      FacAjTotal.AsCurrency := qAjustesTotal.AsCurrency;
      FacAjCantArt.AsInteger := qAjustesCantArt.AsInteger;
      FacAj.Post;
      Total_Rem_Ajt := qAjustesTotal.AsCurrency;
      qItemsAj.First;
      while not qItemsAj.Eof do
      begin
        ItemsAj.Append;
        ItemsAjIdFactura.AsInteger := qItemsAjIdFactura.AsInteger;
        ItemsAjIdSucursal.AsInteger := qItemsAjIdSucursal.AsInteger;
        ItemsAjIdItem.AsInteger := qItemsAjIdItem.AsInteger;
        ItemsAjIdArticulo.AsInteger := qItemsAjIdArticulo.AsInteger;
        ItemsAjCantidad.AsFloat := qItemsAjCantidad.AsInteger;
        ItemsAjPrecio.AsCurrency := qItemsAjIPrecio.AsCurrency;
        ItemsAjTotal.AsCurrency := qItemsAjITotal.AsCurrency;
        ItemsAjMarca.AsString := qItemsAjMarca.AsString;
        ItemsAjDetalle.AsString := qItemsAjDetalle.AsString;
        ItemsAjDetArt.AsString := qItemsAjMarca.AsString+' '+qItemsAjDetalle.AsString+' '+qItemsAjColor.AsString;
        ItemsAjTieneTalle.AsInteger := qItemsAjTieneTalle.AsInteger;
        ItemsAjTalle.AsInteger := qItemsAjTalle.AsInteger;
        ItemsAj.Post;
        qItemsAj.Next;
      end;
    end;
  finally
    ItemsAj.First;
    ItemsAj.EnableControls;
    Leyendo_RemitoI := False;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmTransDep.gInventariosUpdateFooter(Sender: TObject);
begin
  gInventarios.ColumnByName('NroFactura').FooterValue := 'Totales';
  gInventarios.ColumnByName('CantArtic').FooterValue := Format('%d',[TCArt]);
  gInventarios.ColumnByName('TCosto').FooterValue := Format('%m',[TCosto]);
  gInventarios.ColumnByName('TNeto').FooterValue := Format('%m',[TNeto]);
  gInventarios.ColumnByName('TNoComp').FooterValue := Format('%m',[TNoCmp]);
  gInventarios.ColumnByName('Total').FooterValue := Format('%m',[Total]);
end;

procedure TfrmTransDep.gItemsIVDblClick(Sender: TObject);
begin
  Get_MStk(qItemsIvIDARTICULO.AsInteger, qItemsIvIDSUCURSALO.AsInteger);
end;

procedure TfrmTransDep.gItemsIVUpdateFooter(Sender: TObject);
begin
  gItemsIV.ColumnByName('Cantidad').FooterValue := Format('%d',[qInventarioCANTARTIC.AsInteger]);
  gItemsIV.ColumnByName('PrecioFinal').FooterValue := Format('%m',[qInventarioTOTAL.AsCurrency]);
end;

procedure TfrmTransDep.qInventarioAfterScroll(DataSet: TDataSet);
begin
  qItemsIV.Open;
end;

procedure TfrmTransDep.qInventarioIDSTORIGENGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text:= Get_DetSuc(qInventarioIDSTORIGEN.AsInteger, 2);
end;

procedure TfrmTransDep.Ver_Inventario;
var
  q: TMDOQuery;
  IdSuc,
  IdPer: Integer;
begin
  try
    TCArt := 0;
    Total := 0;
    TNeto := 0;
    TNoCmp:= 0;
    TCosto:= 0;
    if edtPerInventario.Value = 0 then
      Exit;
    Screen.Cursor := crHourGlass;
    try
      IdPer := edtPerInventario.Value;
      if (IdPer >= 2005) And
         (IdPer <= CurrentYear) then
      begin
        try
          IdSuc := Integer(cbTInventario.Items.Objects[cbTInventario.ItemIndex]);
        except
          IdSuc := 0;
        end;
        gInventarios.Enabled := False;
        qInventario.Close;
        qInventario.ParamByName('IdSucur').AsInteger := IdSuc;
        qInventario.ParamByName('Periodo').AsInteger := IdPer;
        qInventario.Prepare;
        qInventario.Open;
        if not qInventario.IsEmpty then
        begin
          try
            q := TMDOQuery.Create(nil);
            q.Database := qInventario.Database;
            q.Transaction := qInventario.Transaction;
            q.SQL.Add('Select Sum(CantArtic) as TotalAr, ');
            q.SQL.Add('       Sum(TNeto) as TotalNt, ');
            q.SQL.Add('       Sum(TNoComp) as TotalNC, ');
            q.SQL.Add('       Sum(TCosto) as TotalCt, ');
            q.SQL.Add('       Sum(Total) as TotalIn ');
            q.SQL.Add('From Remitos_Inventarios(:IdSucur, :Periodo ) ');
            q.ParamByName('IdSucur').AsInteger := IdSuc;
            q.ParamByName('Periodo').AsInteger := IdPer;
            q.Open;
            TCArt := q.FieldByName('TotalAr').AsInteger;
            TNeto := q.FieldByName('TotalNt').AsCurrency;
            TNoCmp:= q.FieldByName('TotalNC').AsCurrency;
            TCosto:= q.FieldByName('TotalCt').AsCurrency;
            Total := q.FieldByName('TotalIn').AsCurrency;
            q.Close;
          finally
            q.Free;
          end;
          gInventarios.ColumnByName('NroFactura').FooterValue := 'Totales';
          gInventarios.ColumnByName('CantArtic').FooterValue := Format('%d',[TCArt]);
          gInventarios.ColumnByName('TCosto').FooterValue := Format('%m',[TCosto]);
          gInventarios.ColumnByName('TNeto').FooterValue := Format('%m',[TNeto]);
          gInventarios.ColumnByName('TNoComp').FooterValue := Format('%m',[TNoCmp]);
          gInventarios.ColumnByName('Total').FooterValue := Format('%m',[Total]);
          gInventarios.Enabled := True;
          qInventario.First;
        end
        else begin
          qInventario.Close;
          ShowMessage('periodo y sucursal sin inventario');
        end;
      end;
    except
      on E: Exception do
      begin
        qInventario.Close;
        Application.MessageBox(PChar(E.Message), 'Error', MB_ICONERROR);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmTransDep.gInventariosDblClick(Sender: TObject);
begin
  if qInventario.Active then
  begin
    Hubo_Mod_Remito := False;
    Leer_Comprobante_Inventario;
    Habilitar_Ingreso_Inventario(False);
    pcInventario.ActivePage := tsInvRemitosInventario;
  end
  else
    raise EUsuario.Create('remito no encontrado.-');
end;

procedure TfrmTransDep.Calcular_Resultado_Inventario(IdSt, IdPr, IdAr: Integer);
Const
  DifInvG = 'Select Area, Grupo, SubGrupo, IdArticulo, Talle,  '+
            '       DetArt, Color, Cantidad, PrecioCosto, PrecioNeto, '+
            '       NoComputables, TieneTalle, PrecioFinal, PrecioTotal '+
            'from REMITOS_INVENTARIOS_RESULTADO(:IdSuc, :IdPer, :IdArea) '+
            'Order by Area, Grupo, SubGrupo ';
var
  q: TMDOQuery;
begin
  RI_TPNeto := 0;
  RI_TFinal := 0;
  RI_NoComp := 0;
  RI_TCosto := 0;
  NomDep := Get_DetSuc(IdSt,1);
  btnImpDif.Enabled := False;
  try
    Screen.Cursor := crSQLWait;
    qResultadoInv.Close;;
    qResultadoInv.ParamByName('IdSuc').AsInteger := IdSt;
    qResultadoInv.ParamByName('IdPer').AsInteger := IdPr;
    qResultadoInv.ParamByName('IdArea').AsInteger:= IdAr;
    qResultadoInv.Open;
    if not qResultadoInv.IsEmpty then
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := qResultadoInv.Database;
        q.Transaction := qResultadoInv.Transaction;
        q.SQL.Add('Select Sum(PrecioNeto) as TotalNt, ');
        q.SQL.Add('       Sum(NoComputables) as TotalNC, ');
        q.SQL.Add('       Sum(PrecioCosto) as TotalCt, ');
        q.SQL.Add('       Sum(PrecioFinal) as TotalIn ');
        q.SQL.Add('From REMITOS_INVENTARIOS_RESULTADO(:IdSuc, :IdPer, :IdArea) ');
        q.ParamByName('IdSuc').AsInteger := IdSt;
        q.ParamByName('IdPer').AsInteger := IdPr;
        q.ParamByName('IdArea').AsInteger:= IdAr;
        q.Open;
        RI_TPNeto := q.FieldByName('TotalNt').AsCurrency;
        RI_TFinal := q.FieldByName('TotalIn').AsCurrency;
        RI_NoComp := q.FieldByName('TotalNC').AsCurrency;
        RI_TCosto := q.FieldByName('TotalCt').AsCurrency;
        q.Close;
      finally
        q.Free;
      end;
      gResInv.ColumnByName('DetArt').FooterValue := 'Totales';
      gResInv.ColumnByName('PrecioCosto').FooterValue := Format('%m',[RI_TCosto]);
      gResInv.ColumnByName('PrecioNeto').FooterValue := Format('%m',[RI_TPNeto]);
      gResInv.ColumnByName('NoComputables').FooterValue := Format('%m',[RI_NoComp]);
      gResInv.ColumnByName('PrecioFinal').FooterValue := Format('%m',[RI_TFinal]);
      btnImpDif.Enabled := True;
      gResInv.SetFocus;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;


//****************** Lecturas de Control ************************************
//***************************************************************************

procedure TfrmTransDep.LectCtrlIdArtValidate(Sender: TField);
begin
  if GetDatosArt(LectCtrlIdArt.AsInteger, LectCtrlCodLec.AsString, Datos_Art) then
  begin
    LectCtrlMarca.AsString := Datos_Art.Marca;
    LectCtrlDetalle.AsString := Datos_Art.Detalle;
  end
  else begin
    LectCtrlMarca.AsString := '';
    LectCtrlDetalle.AsString := 'ERROR';
  end;
end;

procedure TfrmTransDep.LectTranIdSucGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if LectTranIdSuc.AsInteger = IdSucLec then
    Text := StDSuc
  else
    Text := LectTranIdSuc.AsString;
end;

procedure TfrmTransDep.Leer_Archivo_De_Control;
var
  ArchL: TextFile;
  FileL, Linea, AuxSt: String;
  NroRg, AuxNr: Integer;
  i, j: SmallInt;
begin
  btnProcLect.Enabled := False;
  StkDes := edtStkDes.Date;
  StkHas := edtStkHas.Date;
  gAjustes.Visible := False;
  btnGenerar_Ajustes.Enabled := False;
  if (IdSucLec > 0) And
     (StkDes <= StkHas) then
  begin
    odFileLec.InitialDir := PasoExe;
    if odFileLec.Execute then
    begin
      lblEstadoLect.Caption := odFileLec.FileName;
      FileL := odFileLec.FileName;
    end;
    AssignFile(ArchL, FileL);
    Reset(ArchL);
    Application.ProcessMessages;
    if Application.MessageBox('¿Procesa el archivo de lecturas?', 'Lecturas', MB_ICONQUESTION + MB_YESNO) = ID_YES then
    begin
      try
        Screen.Cursor := crSQLWait;
        lblEstadoProc.Caption := 'abriendo archivo';
        Application.ProcessMessages;
        NroRg := 0;
        if LectCtrl.Active then
          LectCtrl.EmptyDataSet
        else
          LectCtrl.CreateDataSet;
        mmLectCtrl.Lines.Clear;
        mmLectCtrl.Lines.Add(Format('A procesar ', [FileL]));
        while not EoF(ArchL) do
        begin
          Linea := Vacio;
          Readln(ArchL, Linea);
          if Trim(Linea) > Vacio then
          begin
            mmLectCtrl.Lines.Add(Linea);
            Inc(NroRg);
            try
              LectCtrl.Append;
              LectCtrlIdReg.AsInteger := NroRg;
              // Empresa
              AuxNr := 0;
              AuxSt := Copy(Linea, 21, 1);
              try
                AuxNr := StrToInt(AuxSt);
              except
                AuxNr := 0;
              end;
              LectCtrlIdEmp.AsInteger := AuxNr;

              // Sucursal
              AuxNr := 0;
              AuxSt := Copy(Linea, 23, 1);
              try
                AuxNr := StrToInt(AuxSt);
              except
                AuxNr := 0;
              end;
              LectCtrlIdSuc.AsInteger := AuxNr;

              // Codigo leido
              AuxNr := 0;
              AuxSt := Vacio;
              i := 25;
              While (Linea[i] <> ',') And
                    (Linea[i] in ['0'..'9']) And
                    (Linea[i] > Vacio) do
              begin
                AuxSt := AuxSt + Linea[i];
                Inc(i);
              end;
              LectCtrlCodLec.AsString := AuxSt;
              j := Length(AuxSt)+1;
              if j > 6 then
                Delete(AuxSt, j - 5, 5);
              try
                AuxNr := StrToInt(AuxSt);
              except
                AuxNr := 0;
              end;

              // Codigo del Articulo
              LectCtrlIdArt.AsInteger := AuxNr;
              // Talle
              LectCtrlTalle.AsInteger := 0;

              // Cantidad leida
              AuxNr := 0;
              AuxSt := Vacio;
              Inc(i);
              While (Linea[i] <> ',') and
                    (Linea[i] in ['0'..'9']) and
                    (Linea[i] > Vacio) do
              begin
                AuxSt := AuxSt + Linea[i];
                Inc(i);
              end;

              try
                AuxNr := StrToInt(AuxSt);
              except
                AuxNr := 0;
              end;
              LectCtrlCantLect.AsInteger := AuxNr;

              // Nro de reg. leido
              AuxNr := 0;
              AuxSt := Vacio;
              Inc(i);
              While (Linea[i] <> ',') and
                    (Linea[i] in ['0'..'9']) and
                    (Linea[i] > Vacio) do
              begin
                AuxSt := AuxSt + Linea[i];
                Inc(i);
              end;
              try
                AuxNr := StrToInt(AuxSt);
              except
                AuxNr := 0;
              end;

              LectCtrlNrLec.AsInteger := AuxNr;
              LectCtrl.Post;
            except
              on E:Exception do
                mmLectCtrl.Lines.Add(E.Message);
            end;
          end;
        end;
        CloseFile(ArchL);
        mmLectCtrl.Lines.Add(Format('Finalizado: %s Lineas leidas %d', [FileL, NroRg]));
        if not LectCtrl.IsEmpty then
        begin
          lblEstadoProc.Caption := 'Fin. Listo para comparar.';
          Application.ProcessMessages;
          btnProcLect.Enabled := True;
          pcLectCtrl.ActivePage := tsTransformacion;
        end
        else begin
          lblEstadoProc.Caption := 'Fin. ';
          Application.ProcessMessages;
        end;
      finally
        Screen.Cursor := crDefault;
      end;
    end;
  end;
end;

procedure TfrmTransDep.Proc_Archivo_De_Control(T: SmallInt);
begin
  if (not LectCtrl.IsEmpty) And (IdSucLec > 0) then
  begin
    try
      qProductos.Close;
      Screen.Cursor := crSQLWait;
      lblEstadoProc.Caption := 'Comparando ... ' + TimeToStr(Time);
      Application.ProcessMessages;
      if LectTran.Active then
        LectTran.EmptyDataSet
      else
        LectTran.CreateDataSet;
      pcLectCtrl.ActivePage := tsComparacion;

      Case T of
        1:begin // Solo productos leidos
            LectCtrl.First;
            While not LectCtrl.Eof do
            begin
              if LectTran.Locate(LectTranIdSuc.FieldName+';'+LectTranIdArt.FieldName,
                                 VarArrayOf([IdSucLec, LectCtrlIdArt.AsInteger]), [] ) then
              begin
                LectTran.Edit;
                LectTranCantLect.AsInteger := LectTranCantLect.AsInteger + LectCtrlCantLect.AsInteger;
                LectTran.Post;
              end
              else begin
                if GetDatosArt(LectCtrlIdArt.AsInteger, Vacio, Datos_Art) then
                begin
                  LectTran.Append;
                  LectTranIdSuc.AsInteger := IdSucLec;
                  LectTranIdArt.AsInteger := LectCtrlIdArt.AsInteger;
                  LectTranMarca.AsString  := Datos_Art.Marca;
                  LectTranDetalle.AsString := Datos_Art.Detalle;
                  if (Control_Talles) And
                     (Datos_Art.TieneTalle = Verdadero) then
                    LectTranTalle.AsInteger := LectCtrlTalle.AsInteger
                  else
                    LectTranTalle.AsInteger := SIN_DETALLE_TALLE;
                  LectTranCantLect.AsInteger := LectCtrlCantLect.AsInteger;
                  LectTranCantSist.AsInteger := Get_StkF(LectCtrlIdArt.AsInteger,
                                                         IdSucLec, StkDes, StkHas);
                  LectTranDif_Cant.AsInteger := 0;
                  LectTranTipoAj.AsInteger := 0;
                  LectTranPFinal.AsCurrency := Datos_Art.Precio;
                  LectTranDetAjuste.AsString := Vacio;
                  LectTran.Post;
                end;
              end;
              LectCtrl.Next;
            end;
          end;

        2:begin
            qProductos.Open;
            qProductos.First;
            While not qProductos.Eof do
            begin
              LectTran.Append;
              LectTranIdSuc.AsInteger := IdSucLec;
              LectTranIdArt.AsInteger := qProductosIDARTICULO.AsInteger;
              LectTranMarca.AsString  := qProductosMarca.AsString;
              LectTranDetalle.AsString := qProductosDetalle.AsString;
              if (Control_Talles) And
                 (qProductosTieneTalle.AsInteger = Verdadero) then
                LectTranTalle.AsInteger := SIN_DETALLE_TALLE
              else
                LectTranTalle.AsInteger := SIN_DETALLE_TALLE;
              LectTranCantLect.AsInteger := 0;
              LectTranCantSist.AsInteger := Get_StkF(qProductosIDARTICULO.AsInteger,
                                                     IdSucLec, StkDes, StkHas);
              LectTranDif_Cant.AsInteger := 0;
              LectTranTipoAj.AsInteger := 0;
              LectTranPFinal.AsCurrency := qProductosPRECIO.AsCurrency;
              LectTranDetAjuste.AsString := Vacio;
              LectTran.Post;
              qProductos.Next;
            end;

            LectCtrl.First;
            While not LectCtrl.Eof do
            begin
              if LectTran.Locate(LectTranIdSuc.FieldName+';'+LectTranIdArt.FieldName,
                                 VarArrayOf([IdSucLec, LectCtrlIdArt.AsInteger]), [] ) then
              begin
                LectTran.Edit;
                LectTranCantLect.AsInteger := LectTranCantLect.AsInteger + LectCtrlCantLect.AsInteger;
                LectTran.Post;
              end
              else begin
                if GetDatosArt(LectCtrlIdArt.AsInteger, Vacio, Datos_Art) then
                begin
                  LectTran.Append;
                  LectTranIdSuc.AsInteger := IdSucLec;
                  LectTranIdArt.AsInteger := LectCtrlIdArt.AsInteger;
                  LectTranMarca.AsString  := Datos_Art.Marca;
                  LectTranDetalle.AsString := Datos_Art.Detalle;
                  if (Control_Talles) And
                     (Datos_Art.TieneTalle = Verdadero) then
                    LectTranTalle.AsInteger := LectCtrlTalle.AsInteger
                  else
                    LectTranTalle.AsInteger := SIN_DETALLE_TALLE;
                  LectTranCantLect.AsInteger := LectCtrlCantLect.AsInteger;
                  LectTranDif_Cant.AsInteger := 0;
                  LectTranTipoAj.AsInteger := 0;
                  LectTranDetAjuste.AsString := Vacio;
                  LectTran.Post;
                end;
              end;
              LectCtrl.Next;
            end;
        end;
      end;

      if not LectTran.IsEmpty then
      begin
        try
          LectTran.DisableControls;
          LectTran.First;
          While not LectTran.Eof do
          begin
            LectTran.Edit;
            if (LectTranCantSist.AsInteger >= 0) then
            begin
              // Existencias Iguales
              if (LectTranCantSist.AsInteger = LectTranCantLect.AsInteger) then
              begin
                LectTranDif_Cant.AsInteger := 0;
                LectTranTipoAj.AsInteger := 0;
                LectTranDetAjuste.AsString := 'No Ajustar';
              end;
              // Falta existencia fisica, sobra en sistema
              if (LectTranCantSist.AsInteger > LectTranCantLect.AsInteger) then
              begin
                LectTranDif_Cant.AsInteger := ABS(LectTranCantLect.AsInteger - LectTranCantSist.AsInteger);
                LectTranTipoAj.AsInteger := -1;
                LectTranDetAjuste.AsString := 'Salida';
              end;
              // Falta en Sistema y hay existencia
              if (LectTranCantSist.AsInteger < LectTranCantLect.AsInteger) then
              begin
                LectTranDif_Cant.AsInteger := ABS(LectTranCantLect.AsInteger - LectTranCantSist.AsInteger);
                LectTranTipoAj.AsInteger := 1;
                LectTranDetAjuste.AsString := 'Entrada';
              end;
            end
            else begin
              // Falta existencia fisica, sobra en sistema
              if (LectTranCantSist.AsInteger < LectTranCantLect.AsInteger) then
              begin
                if LectTranCantLect.AsInteger > ABS(LectTranCantSist.AsInteger) then
                begin
                  LectTranDif_Cant.AsInteger := ABS(LectTranCantLect.AsInteger - ABS(LectTranCantSist.AsInteger));
                  LectTranTipoAj.AsInteger := 1;
                  LectTranDetAjuste.AsString := 'Entrada';
                end
                else begin
                  LectTranDif_Cant.AsInteger := Abs(LectTranCantSist.AsInteger) + LectTranCantLect.AsInteger;
                  LectTranTipoAj.AsInteger := 1;
                  LectTranDetAjuste.AsString := 'Entrada';
                end;
              end;
            end;
            LectTran.Post;
            LectTran.Next;
          end;
        finally
          try
            LectTran.IndexName := 'iIdArt';
          except
            on E:Exception do
              ShowMessage(E.Message);
          end;
          LectTran.First;
          LectTran.EnableControls;
          pcLectCtrl.ActivePage := tsComparacion;
        end;
      end;

    finally
      lblEstadoProc.Caption := lblEstadoProc.Caption + ' Fin. ' + TimeToStr(Time);
      Application.ProcessMessages;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmTransDep.gLectTranCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (Field.FieldName = LectTranDif_Cant.FieldName) or
     (Field.FieldName = LectTranDetAjuste.FieldName) then
  begin
    // Existencias Iguales
    if (LectTranCantSist.AsInteger = LectTranCantLect.AsInteger) then
    begin
      ABrush.Color := $00D5E2FF;
      AFont.Color := clBlack;
      AFont.Style := [fsBold]
    end;
    // Falta existencia fisica, sobra en sistema
    if (LectTranCantSist.AsInteger > LectTranCantLect.AsInteger) then
    begin
      ABrush.Color := clYellow;
      AFont.Color := clRed;
      AFont.Style := [fsBold, fsItalic]
    end;
    // Falta en Sistema y hay existencia
    if (LectTranCantSist.AsInteger < LectTranCantLect.AsInteger) then
    begin
      ABrush.Color := clGreen;
      AFont.Color := clWhite;
      AFont.Style := [fsBold, fsItalic]
    end;
  end;
end;

procedure TfrmTransDep.Ajustar_Controles(TAjuste: SmallInt; FAjuste: TDate);
var
  Actual, NroAjt: Integer;
  AuxNCmp: St13;
  RTotal: Currency;
  Llenando: Boolean;
  q: TMDOQuery;
begin
  NroRec := 0;
  LectTran.Filter := '';
  LectTran.Filtered := False;
  LectTran.Filter := '(Dif_Cant <> 0) And (TipoAj = '+IntToStr(TAjuste)+')';
  LectTran.Filtered := True;
  Llenando := False;
  if not LectTran.IsEmpty then
  begin
    NroRec := LectTran.RecordCount;
    AuxNCmp := '0000-00000000';
    if not LectTran.IsEmpty then
    begin
      pcLectCtrl.ActivePage := tsAjustes;
      LectTran.IndexName := 'iAjuste';
      gAjustes.Visible := True;
      gAjustes.Refresh;
      Case TAjuste of
        1: pnlAjuste.Caption := Format('ºProd a Aj. Entrada %d ºRemitos %d ',[NroRec, Round(NroRec/25)]);
        -1:pnlAjuste.Caption := Format('ºProd a Aj. Salida %d ºRemitos %d ',[NroRec, Round(NroRec/25)]);
      End;
      Application.ProcessMessages;
    end;
    LectTran.First;
    FillChar(Factura, SizeOf(Factura), 0);
    FillChar(ItemsFiscal, SizeOf(ItemsFiscal), 0);
    Actual := 0;
    RTotal := 0;
    NroAjt := 0;
    While not LectTran.Eof do
    begin
      if Actual <= 25 then
      begin // Llenar remito
        Inc(Actual);
        Llenando := True;
        ItemsFiscal[Actual].IdItem := Actual;
        ItemsFiscal[Actual].IdSucursal := IdSucLec;
        ItemsFiscal[Actual].IdPuntoVenta := IdSalesPoint;
        ItemsFiscal[Actual].IdProducto := LectTranIdArt.AsInteger;
        if Control_Talles then
          ItemsFiscal[Actual].Talle := LectTranTalle.AsInteger
        else
          ItemsFiscal[Actual].Talle := SIN_DETALLE_TALLE;
        ItemsFiscal[Actual].TipoAj := TAjuste;
        ItemsFiscal[Actual].Cantidad := LectTranDif_Cant.AsInteger;
        ItemsFiscal[Actual].Bonificacion := 0;
        ItemsFiscal[Actual].Descuento := 0;
        ItemsFiscal[Actual].PrecioNetoT := 0;
        ItemsFiscal[Actual].PrecioFinal := LectTranPFinal.AsCurrency;
        ItemsFiscal[Actual].PrecioTotal := (LectTranPFinal.AsCurrency * LectTranDif_Cant.AsInteger);
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
        ItemsFiscal[Actual].DetalleExt[1] := Vacio;
        ItemsFiscal[Actual].DetalleExt[2] := Vacio;
        ItemsFiscal[Actual].DetalleExt[3] := Vacio;
        ItemsFiscal[Actual].DetalleExt[4] := Vacio;
        ItemsFiscal[Actual].DetalleExtendido := False;
        ItemsFiscal[Actual].IdFacDomRem := 0;
        ItemsFiscal[Actual].IdSucDomRem := 0;
        ItemsFiscal[Actual].MosDom := 0;
        RTotal := RTotal + ItemsFiscal[Actual].PrecioTotal;
      end;

      if (Actual >= 25) or
         (LectTran.Eof) then
      begin // Grabar remito
        with Factura do
        begin
          IdFactura := 1;
          IdSucursal := IdBranch;
          IdPuntoVenta := IdSalesPoint;
          TipoFactura := RemitoAjusteSt;
          TipoRemito := RemitoAjusteSt;
          IdStOrigen := IdSucLec;
          Empleado := Usuario;
          Entidad := Usuario;
          FechaF := FAjuste;
          TipoAj := TAjuste;
          FechaI := 0;
          PuntoVta := 0;
          IdStDestino := 17;
          TipoIva := CFi;
          TipoIvaStr := '';
          TipoDoc := NINGUNO;
          TipoDocStr := '';
          CantArtic := Actual;
          Llenando := False;
          if dmGestion.Sucursales.Locate(dmGestion.SucursalesIDSUCURSAL.FieldName, IdSucLec, []) then
            IdEmpresa := dmGestion.SucursalesIDEMPRESA.AsInteger
          else
            IdEmpresa := 1;
          if dmGestion.trProc.InTransaction then
            dmGestion.trProc.Commit;
          try
            q := TMDOQuery.Create(nil);
            q.Database := dmGestion.dbGestion;
            q.Transaction := dmGestion.trProc;
            q.SQL.Add('Select RemitoAj From DatosSis ');
            q.SQL.Add('Where IdEmpresa = :NroEmp ');
            q.ParamByName('NroEmp').AsInteger := IdEmpresa;
            q.Open;
            if not q.IsEmpty then
              AuxNCmp := q.FieldByName('RemitoAj').AsString
            else
              AuxNCmp := '0000-00000000';
            AuxNCmp := Inc_NComp(AuxNCmp);
            q.Close;
          finally
            q.Free;
          end;
          Total := RTotal;
          NroFactura := AuxNCmp;
          CompRef := AuxNCmp;
        end;
        // Grabar
        try
          LockWindowUpdate(Handle);
          if dmSaveFile.GrabarComprobanteStock(Factura, ItemsFiscal) then
          begin
            Inc(NroAjt);
            Case TAjuste of
              1: pnlAjuste.Caption := Format('Productos %d  -  %d Ajuste de Entrada grabado(s) ', [NroRec, NroAjt]);
              -1:pnlAjuste.Caption := Format('Productos %d  -  %d Ajuste de Salida  grabado(s) ', [NroRec, NroAjt]);
            End;
            Application.ProcessMessages;
            FillChar(Factura, SizeOf(Factura), 0);
            FillChar(ItemsFiscal, SizeOf(ItemsFiscal), 0);
          end
        finally
          LockWindowUpdate(0);
        end;
        Actual := 0;
        RTotal := 0;
      end;
      LectTran.Next;
    end;

    if (Actual > 0) and
       (Llenando) then
    begin
      with Factura do
      begin
        IdFactura := 1;
        IdSucursal := IdBranch;
        IdPuntoVenta := IdSalesPoint;
        TipoFactura := RemitoAjusteSt;
        TipoRemito := RemitoAjusteSt;
        IdStOrigen := IdSucLec;
        Empleado := Usuario;
        Entidad := Usuario;
        FechaF := FAjuste;
        TipoAj := TAjuste;
        FechaI := 0;
        PuntoVta := 0;
        IdStDestino := 17;
        TipoIva := CFi;
        TipoIvaStr := '';
        TipoDoc := NINGUNO;
        TipoDocStr := '';
        CantArtic := Actual;
        if dmGestion.Sucursales.Locate(dmGestion.SucursalesIDSUCURSAL.FieldName, IdSucLec, []) then
          IdEmpresa := dmGestion.SucursalesIDEMPRESA.AsInteger
        else
          IdEmpresa := 1;
        if dmGestion.trProc.InTransaction then
          dmGestion.trProc.Commit;
        try
          q := TMDOQuery.Create(nil);
          q.Database := dmGestion.dbGestion;
          q.Transaction := dmGestion.trProc;
          q.SQL.Add('Select RemitoAj From DatosSis ');
          q.SQL.Add('Where IdEmpresa = :NroEmp ');
          q.ParamByName('NroEmp').AsInteger := IdEmpresa;
          q.Open;
          if not q.IsEmpty then
            AuxNCmp := q.FieldByName('RemitoAj').AsString
          else
            AuxNCmp := '0000-00000000';
          AuxNCmp := Inc_NComp(AuxNCmp);
          q.Close;
        finally
          q.Free;
        end;
        Total := RTotal;
        NroFactura := AuxNCmp;
        CompRef := AuxNCmp;
      end;

      // Grabar
      try
        LockWindowUpdate(Handle);
        if dmSaveFile.GrabarComprobanteStock(Factura, ItemsFiscal) then
        begin
          Inc(NroAjt);
          Case TAjuste of
            1: pnlAjuste.Caption := Format('Productos %d  -  %d Ajuste de Entrada grabado(s) ', [NroRec, NroAjt]);
           -1: pnlAjuste.Caption := Format('Productos %d  -  %d Ajuste de Salida  grabado(s) ', [NroRec, NroAjt]);
          End;
          Application.ProcessMessages;
          FillChar(Factura, SizeOf(Factura), 0);
          FillChar(ItemsFiscal, SizeOf(ItemsFiscal), 0);
        end
      finally
        LockWindowUpdate(0);
      end;
    end;
  end
  else begin
    Case TAjuste of
      1: pnlAjuste.Caption := 'No hay Ajustes de Entrada para realizar ';
      -1:pnlAjuste.Caption := 'No hay Ajustes de Salida para realizar ';
    End;
    Application.ProcessMessages;
  end;
end;

procedure TfrmTransDep.cbSucLectCtrlChange(Sender: TObject);
var
  q: TMDOQuery;
begin
  try
    IdSucLec := Integer(cbSucLectCtrl.Items.Objects[cbSucLectCtrl.ItemIndex]);
  except
    IdSucLec := 0;
  end;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.dbGestion;
    q.Transaction := dmGestion.trProc;
    q.SQL.Add('Select FechaTInv, DetSuc From Sucursales ');
    q.SQL.Add('Where IdSucursal = :IdSuc ');
    q.ParamByName('IdSuc').AsInteger := IdSucLec;
    q.Open;
    if not q.IsEmpty then
    begin
      edtStkDes.Date := q.FieldByName('FechaTInv').AsDateTime;
      StkDes := q.FieldByName('FechaTInv').AsDateTime;
      StDSuc := q.FieldByName('DetSuc').AsString;
    end;
  finally
    q.Free;
  end;
end;

procedure TfrmTransDep.cbSucLectCtrlEnter(Sender: TObject);
begin
  IdSucLec := 0;
  lblEstadoLect.Caption := ' Sin Procesar archivo';
end;

procedure TfrmTransDep.btnLectCtrlClick(Sender: TObject);
begin
  Leer_Archivo_De_Control;
end;

procedure TfrmTransDep.CompararProductosLeidosClick(Sender: TObject);
begin
  Proc_Archivo_De_Control(1)
end;

procedure TfrmTransDep.ComparaTodosLosProductosClick(Sender: TObject);
begin
  Proc_Archivo_De_Control(2)
end;


procedure TfrmTransDep.gLectTranDblClick(Sender: TObject);
begin
  if LectTranIdArt.AsInteger > 0 then
    Get_MStk(LectTranIdArt.AsInteger, IdSucLec);
end;

procedure TfrmTransDep.LectTranTipoAjGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if LectTranTipoAj.AsInteger > 0 then
    Text := 'E'
  else
    Text := 'S';
end;

procedure TfrmTransDep.ExportarAjustes1Click(Sender: TObject);
begin
  if not LectCtrl.isEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := LectCtrl;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmTransDep.ExportarComparacindedatos1Click(Sender: TObject);
begin
  if not LectCtrl.isEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := LectCtrl;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmTransDep.ExportarDatosdelAjuste1Click(Sender: TObject);
begin
  if not LectTran.isEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := LectTran;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmTransDep.btnAjustesControlClick(Sender: TObject);
begin
  NroRec := 0;
  btnGenerar_Ajustes.Enabled := False;
  if not LectTran.IsEmpty then
  begin
    LectTran.Filter := '(Dif_Cant <> 0) And (TipoAj <> 0)';
    LectTran.Filtered := True;
    NroRec := LectTran.RecordCount;
    AuxNCmp := '0000-00000000';
    if not LectTran.IsEmpty then
    begin
      pcLectCtrl.ActivePage := tsAjustes;
      LectTran.IndexName := 'iAjuste';
      gAjustes.Visible := True;
      gAjustes.Refresh;
      pnlAjuste.Caption := Format('ºProd a Ajustar %d Nro de Rem. %d ',[NroRec, Round(NroRec/25)]);
      Application.ProcessMessages;
    end;
    btnGenerar_Ajustes.Enabled := True;
  end;
end;

procedure TfrmTransDep.btnGenerar_AjustesClick(Sender: TObject);
begin
  Ajustar_Controles(-1, edtStkHas.Date); // Salida
  Ajustar_Controles( 1, edtStkHas.Date);  // Entrada
end;
//***************************************************************************
end.
