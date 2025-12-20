unit uGestTarjetas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, ExtCtrls, Grids,  RzPanel, DBGrids, Buttons,
  Wwdbigrd, Wwdbgrid, wwSpeedButton, variants, wwDBNavigator, wwclearpanel,
  wwcheckbox, wwdbedit, Wwdotdot, Wwdbcomb, wwDialog, wwrcdvw, mxExport, wwdblook,
  ComCtrls, RzButton, wwclearbuttongroup, wwradiogroup, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, Menus, ppCtrls, ppVar, ppPrnabl, ppBands,
  ppCache, RzTabs, MDOTable, MDOCustomDataSet, MDOQuery, wwdbdatetimepicker,
  DateUtils, RzDTP, RzCmboBx, RzEdit, DBClient, RzDBNav, RzLabel, RzDBLbl,
  Provider, RzBorder, RzRadGrp, RzDBRGrp, RzRadChk, ppDBBDE;

type
  TfrmGestTarMut = class(TForm)
    dsLiqPreCon: TDataSource;
    LiqPreCon: TClientDataSet;
    LiqPreConIdFactura: TIntegerField;
    LiqPreConTipoFactura: TSmallintField;
    LiqPreConPeriodo: TDateField;
    LiqPreConFechaF: TDateField;
    LiqPreConProveedor: TIntegerField;
    LiqPreConNombreProveedor: TStringField;
    LiqPreConTipoIva: TSmallintField;
    LiqPreConCantItm: TSmallintField;
    LiqPreConTotal: TMDOBCDField;
    LiqPreConNroRegPrc: TStringField;
    LiqPreConAlcPercep: TMDOBCDField;
    LiqPreConRetIva: TMDOBCDField;
    LiqPreConMtoIvaAlc1: TCurrencyField;
    LiqPreConMtoIvaAlc2: TCurrencyField;
    LiqPreConMtoIvaOAlc: TCurrencyField;
    LiqPreConNoComputables: TMDOBCDField;
    LiqPreConNeto: TMDOBCDField;
    LiqPreConRetGan: TMDOBCDField;
    LiqPreConRetIBt: TMDOBCDField;
    LiqPreConRetLH: TMDOBCDField;
    LiqPreConSubTotal: TCurrencyField;
    LiqPreConComision: TCurrencyField;
    LiqPreConIdEmpresa: TIntegerField;
    LiqPreConIdSucursal: TIntegerField;
    LiqPreConIdEntidad: TIntegerField;
    LiqPreConEntidad: TStringField;
    LiqPreConNroPresConc: TStringField;
    LiqPreConPrcComP: TFloatField;
    LiqPreConDesdeP: TDateField;
    LiqPreConHastaP: TDateField;
    LiqPreConDetalle: TStringField;
    LiqPreConPrcRetIBt: TFloatField;
    LiqPreConPrcRetLH: TFloatField;

    dsMovTar: TDataSource;
    qMovTar: TMDOQuery;
    qMovTarIDMOV: TIntegerField;
    qMovTarIdTarjeta: TIntegerField;
    qMovTarIdSucursal: TIntegerField;
    qMovTarIdFactura: TIntegerField;
    qMovTarIDPUNTOVENTA: TIntegerField;
    qMovTarIdCliente: TIntegerField;
    qMovTarFechaOP: TDateField;
    qMovTarCodTar: TStringField;
    qMovTarNroCuota: TSmallintField;
    qMovTarAutorizacion: TStringField;
    qMovTarFechaResumen: TDateField;
    qMovTarCuotaPag: TIntegerField;
    qMovTarFechaIS: TDateField;
    qMovTarEstado: TSmallintField;
    qMovTarIMPCUOTA: TMDOBCDField;
    qMovTarTOTALOP: TMDOBCDField;
    qMovTarNROFACTURA: TMDOStringField;
    qMovTarTARJETA: TMDOStringField;
    qMovTarNROLIQUIDACION: TMDOStringField;
    qMovTarNOMBRE: TMDOStringField;
    qMovTarCOBRADO: TMDOBCDField;
    qMovTarSALDO: TMDOBCDField;

    qPresConc: TMDOQuery;
    qPresConcIDTARJETA: TIntegerField;
    qPresConcIDFACTURA: TIntegerField;
    qPresConcIDSUCURSAL: TIntegerField;
    qPresConcCUPON: TMDOStringField;
    qPresConcLOTE: TMDOStringField;
    qPresConcFECHAOP: TDateField;
    qPresConcCODTAR: TMDOStringField;
    qPresConcNROCUOTA: TSmallintField;
    qPresConcTOTALOP: TMDOBCDField;
    qPresConcCUOTAPAG: TIntegerField;
    qPresConcNROFACTURA: TMDOStringField;
    qPresConcTFAC: TMDOStringField;
    qPresConcIDMOVCRED: TIntegerField;
    qPresConcIDCUOTA: TSmallintField;
    qPresConcFECHAV: TDateField;
    qPresConcMONTOCUOTA: TMDOBCDField;
    qPresConcNRORECPAGO: TMDOStringField;
    qPresConcFECHAP: TDateField;
    qPresConcIDRECIBO: TIntegerField;
    qPresConcIDSUCREC: TIntegerField;
    qPresConcIDCLIENTE: TIntegerField;
    qPresConcESTADOMOV: TSmallintField;
    qPresConcNOMBRE: TMDOStringField;
    qPresConcIDPUNTOVENTA: TIntegerField;
    qPresConcESTADOOP: TSmallintField;

    dspPresConc: TDataSetProvider;
    dsPresConc: TDataSource;
    PresConc: TClientDataSet;
    PresConcEstado1: TBooleanField;
    PresConcEstado2: TBooleanField;
    PresConcEstado3: TBooleanField;
    PresConcNROFACTURA: TStringField;
    PresConcTFAC: TStringField;
    PresConcIDTARJETA: TIntegerField;
    PresConcIDFACTURA: TIntegerField;
    PresConcIDSUCURSAL: TIntegerField;
    PresConcCUPON: TStringField;
    PresConcLOTE: TStringField;
    PresConcFECHAOP: TDateField;
    PresConcCODTAR: TStringField;
    PresConcNROCUOTA: TSmallintField;
    PresConcTOTALOP: TBCDField;
    PresConcCUOTAPAG: TIntegerField;
    PresConcIDMOVCRED: TIntegerField;
    PresConcIDCUOTA: TSmallintField;
    PresConcFECHAV: TDateField;
    PresConcMONTOCUOTA: TBCDField;
    PresConcNRORECPAGO: TStringField;
    PresConcFECHAP: TDateField;
    PresConcIDRECIBO: TIntegerField;
    PresConcIDSUCREC: TIntegerField;
    PresConcIDCLIENTE: TIntegerField;
    PresConcESTADOMOV: TSmallintField;
    PresConcNOMBRE: TStringField;
    PresConcMontoACob: TCurrencyField;
    PresConcIDPUNTOVENTA: TIntegerField;
    PresConcEstadoPCL: TSmallintField;
    PresConcESTADOOP: TSmallintField;

    dsTarjetas: TDataSource;
    dspTarjetas: TDataSetProvider;
    Tarjetas: TClientDataSet;
    TarjetasTarjeta: TStringField;
    TarjetasCodComercio: TStringField;
    TarjetasDiaPresentacion: TSmallintField;
    TarjetasCodEntidad: TStringField;
    TarjetasTelAutorizacion: TStringField;
    TarjetasLIMITE: TBCDField;
    TarjetasCOMISION: TBCDField;
    TarjetasSALDOVENCIDO: TBCDField;
    TarjetasSALDOAVENCER: TBCDField;
    TarjetasTIPOENT: TSmallintField;
    TarjetasIDTARJETA: TIntegerField;
    TarjetasDOMICILIO: TStringField;
    TarjetasDEPARTAMENTO: TStringField;
    TarjetasPROVINCIA: TStringField;
    TarjetasDOCUMENTO: TStringField;
    TarjetasTDOCFISCAL: TSmallintField;
    TarjetasTIPOIVA: TSmallintField;
    TarjetasIDPROVEEDOR: TIntegerField;
    TarjetasNomProv: TStringField;

    dsqProv: TDataSource;
    qProv: TMDOQuery;
    qProvIDPROVEEDOR: TIntegerField;
    qProvNOMBRE: TMDOStringField;
    qProvDOCUMENTO: TMDOStringField;

    dsTarPlan: TDataSource;
    TarPlan: TClientDataSet;
    TarPlanIdTarjeta: TIntegerField;
    TarPlanNroCuota: TIntegerField;
    TarPlanIdSucursal: TIntegerField;
    TarPlanModoPago: TSmallintField;
    TarPlanCOEFPLAN: TBCDField;
    TarPlanMAXDCTO: TBCDField;
    TarPlanMAXDCTOII: TBCDField;
    TarPlanDetSuc: TStringField;
    TarPlanDetTar: TStringField;
    TarjetasqTarPlan: TDataSetField;
    TarjetasFECHAMOD: TDateField;
    TarjetasCODPOSTAL: TStringField;

    dsqTarjetas: TDataSource;
    qTarjetas: TMDOQuery;
    qTarjetasIDTARJETA: TIntegerField;
    qTarjetasTARJETA: TMDOStringField;
    qTarjetasDIAPRESENTACION: TSmallintField;
    qTarjetasTELAUTORIZACION: TMDOStringField;
    qTarjetasCODCOMERCIO: TMDOStringField;
    qTarjetasCODENTIDAD: TMDOStringField;
    qTarjetasLIMITE: TMDOBCDField;
    qTarjetasDOMICILIO: TMDOStringField;
    qTarjetasDEPARTAMENTO: TMDOStringField;
    qTarjetasPROVINCIA: TMDOStringField;
    qTarjetasCOMISION: TMDOBCDField;
    qTarjetasSALDOVENCIDO: TMDOBCDField;
    qTarjetasSALDOAVENCER: TMDOBCDField;
    qTarjetasTIPOENT: TSmallintField;
    qTarjetasDOCUMENTO: TMDOStringField;
    qTarjetasTDOCFISCAL: TSmallintField;
    qTarjetasTIPOIVA: TSmallintField;
    qTarjetasIDPROVEEDOR: TIntegerField;
    qTarjetasCODPOSTAL: TMDOStringField;
    qTarjetasFECHAMOD: TDateField;

    qTarPlan: TMDOQuery;
    qTarPlanIDTARJETA: TIntegerField;
    qTarPlanNROCUOTA: TIntegerField;
    qTarPlanIDSUCURSAL: TIntegerField;
    qTarPlanCOEFPLAN: TMDOBCDField;
    qTarPlanMODOPAGO: TSmallintField;
    qTarPlanMAXDCTO: TMDOBCDField;
    qTarPlanMAXDCTOII: TMDOBCDField;
    qTarPlanFECHAMOD: TDateField;

    dsqLstCoefTar: TDataSource;
    qLstCoefTar: TMDOQuery;
    qLstCoefTarIDTARJETA: TIntegerField;
    qLstCoefTarTARJETA: TMDOStringField;
    qLstCoefTarNOMBRESUC: TMDOStringField;
    qLstCoefTarNROCUOTA: TIntegerField;
    qLstCoefTarCOEFPLAN: TMDOBCDField;
    qLstCoefTarMAXDCTO: TMDOBCDField;
    qLstCoefTarMAXDCTOII: TMDOBCDField;

    qVerMovPCL: TMDOQuery;
    dsqVerMovPCL: TDataSource;
    qVerMovPCLIDFACTURA: TIntegerField;
    qVerMovPCLIDSUCURSAL: TIntegerField;
    qVerMovPCLIDPUNTOVENTA: TIntegerField;
    qVerMovPCLFECHAF: TDateField;
    qVerMovPCLPROVEEDOR: TIntegerField;
    qVerMovPCLFECPRELIQDESDE: TDateField;
    qVerMovPCLFECPRELIQHASTA: TDateField;
    qVerMovPCLIDEMPRESA: TIntegerField;
    qVerMovPCLIDNUMEROLIQ: TIntegerField;
    qVerMovPCLCOMISION: TMDOBCDField;
    qVerMovPCLTOTAL: TMDOBCDField;
    qVerMovPCLTIPOFACTURA: TSmallintField;
    qVerMovPCLNROFACTURA: TMDOStringField;
    qVerMovPCLIDENTTARMUT: TIntegerField;
    qVerMovPCLIDCOMPREF: TIntegerField;
    qVerMovPCLTARJETA: TMDOStringField;

    dsqVerItmPCL: TDataSource;
    qVerItmPCL: TMDOQuery;
    qVerItmPCLIDFACTURA: TIntegerField;
    qVerItmPCLIDPUNTOVENTA: TIntegerField;
    qVerItmPCLTALLE: TIntegerField;
    qVerItmPCLIDALCIVA: TIntegerField;
    qVerItmPCLSECTOR: TIntegerField;
    qVerItmPCLCANTIDAD: TMDOBCDField;
    qVerItmPCLPRECIOFINAL: TMDOBCDField;
    qVerItmPCLNOMBRE: TMDOStringField;
    qVerMovPCLCANTARTIC: TSmallintField;

    pcTarjetasMutuales: TRzPageControl;
    tsEntFinancieras: TRzTabSheet;
    tsOperaciones: TRzTabSheet;
    tsConciliaciones: TRzTabSheet;
    gMovTarMut: TwwDBGrid;
    rpCoefTar: TppReport;
    dbpTarCoef: TppDBPipeline;
    hbTitCoef: TppHeaderBand;
    dbCoefTar: TppDetailBand;
    chbCoef: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    lblTitulo1: TppLabel;
    lblTitulo2: TppLabel;
    lblEmisionCoefTar: TppSystemVariable;
    lblDetTar: TppDBText;
    lblDetSuc: TppDBText;
    lblNCtas: TppDBText;
    lblCoefPlan: TppDBText;
    lblNCta: TppLabel;
    lblCoef: TppLabel;
    shpCoefTar1: TppShape;
    gbCoefT: TRzGroupBox;
    gCoeficientes: TwwDBGrid;
    cbSucCtas: TwwDBComboBox;
    pnlConsTar: TRzPanel;
    lblEntOper: TLabel;
    lblHastaO: TLabel;
    lblDesdeO: TLabel;
    lblSucOper: TLabel;
    cbEntOper: TRzComboBox;
    btnBusOper: TRzBitBtn;
    edtDesdeO: TRzDateTimeEdit;
    edtHastaO: TRzDateTimeEdit;
    btnExpOper: TRzBitBtn;
    cbSucOper: TRzComboBox;
    btnPrnOper: TRzBitBtn;
    dbpMovTar: TppDBPipeline;
    rpMovTar: TppReport;
    hbMovTar: TppHeaderBand;
    dbMovTar: TppDetailBand;
    lblEmisionMT: TppSystemVariable;
    sbMovTat: TppSummaryBand;
    ppSystemVariable1: TppSystemVariable;
    lblTitMT1: TppLabel;
    lblTitMT2: TppLabel;
    shMovTar1: TppShape;
    shMovTar2: TppShape;
    shMovTar3: TppShape;
    lblFechaMT: TppDBText;
    lblNomCliMT: TppDBText;
    lblCodTarMT: TppDBText;
    lblAutoMT: TppDBText;
    lblNFactMT: TppDBText;
    lblImpCtaMT: TppDBText;
    lblNroCtaMT: TppDBText;
    lblCtaPagMT: TppDBText;
    lblTotOPMT: TppDBText;
    lblCobMT: TppDBText;
    lblSdoMT: TppDBText;
    ppGroup1: TppGroup;
    ghbMovTar: TppGroupHeaderBand;
    gfbMovTar: TppGroupFooterBand;
    lblDetEntMT: TppDBText;
    lblEntidadMT: TppLabel;
    lblEstadoMT: TppDBText;
    lblFResMT: TppDBText;
    lblDetSucMT: TppDBText;
    lblTotTotOPMT: TppDBCalc;
    lblTotCobMT: TppDBCalc;
    lblTotSdoMT: TppDBCalc;

    pcConcLiq: TRzPageControl;
    tsConsultasLiq: TRzTabSheet;
    tsPresentaciones: TRzTabSheet;
    pnlTop_PCL: TRzPanel;
    lblEntPres: TLabel;
    lblFecPres: TLabel;
    lblSucPres: TLabel;
    cbEnt_PCL: TRzComboBox;
    edtDesPCL: TRzDateTimeEdit;
    btnBusMovPCL: TRzBitBtn;
    cbSuc_PCL: TRzComboBox;
    edtHasPCL: TRzDateTimeEdit;
    gPCL_Movs: TwwDBGrid;
    ppGroup2: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ghbCoefTar: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppFooterBand1: TppFooterBand;
    shpCoefTar2: TppShape;
    lblIdTarCoefTar: TppDBText;
    gbEntidades: TRzRadioGroup;
    lblNomEnt: TLabel;
    lblTelAut: TLabel;
    lblCodCom: TLabel;
    lblCodEnt: TLabel;
    lblTipoEnt: TLabel;
    lblIdEntidad: TRzDBLabel;
    cbTEntTar: TwwDBComboBox;
    edtNomEnt: TwwDBEdit;
    edtTelAut: TwwDBEdit;
    edtCodCom: TwwDBEdit;
    edtCodEnt: TwwDBEdit;
    navTarjetas: TRzDBNavigator;
    btnImpCoefT: TRzBitBtn;
    gSelTarMut: TwwDBGrid;
    lblCantOP_PCL: TLabel;
    lblDSucMT: TppLabel;
    lblFecOPMT: TppLabel;
    lblEntMT: TppLabel;
    lblCodTMT: TppLabel;
    lblAutMT: TppLabel;
    lblCompMT: TppLabel;
    lblCuotaMT: TppLabel;
    lblNCtaMT: TppLabel;
    lblCtaPMT: TppLabel;
    lblTotOMT: TppLabel;
    lblCobOMT: TppLabel;
    lblSdoOMT: TppLabel;
    lblEstMT: TppLabel;
    lblResLMT: TppLabel;
    shpTMut: TppShape;
    gbTotales_PCL: TRzGroupBox;
    bvlProvLQ: TBevel;
    lblProvPCL: TLabel;
    lblProveedorLQ: TDBText;
    lblComprobantePCL: TLabel;
    lblPeriodoPCL: TLabel;
    lblTotalPCL: TLabel;
    lblNoCompPCL: TLabel;
    lblPercepPCL: TLabel;
    lblPrcComPCL: TLabel;
    lblRetGanPCL: TLabel;
    lblRetIBtPCL: TLabel;
    lblRetLHPCL: TLabel;
    lblNetoPCL: TLabel;
    lblIvaTGPCL: TLabel;
    lblIvaTDPCL: TLabel;
    lblIvaOTPCL: TLabel;
    lblFechaPCL: TLabel;
    lblComTarMutPCL: TLabel;
    lblEmprePCL: TLabel;
    edtProveedorPCL: TwwDBEdit;
    edtComprobantePCL: TwwDBEdit;
    edtPeriodoPCL: TwwDBDateTimePicker;
    edtTotalPCL: TwwDBEdit;
    edtNoCompPCL: TwwDBEdit;
    edtPercepPCL: TwwDBEdit;
    edtPrcComPCL: TwwDBEdit;
    edtAlcPerPCL: TwwDBEdit;
    edtRetGanPCL: TwwDBEdit;
    edtRetIBtPCL: TwwDBEdit;
    edtRetLHPCL: TwwDBEdit;
    edtNroPerPCL: TwwDBEdit;
    edtNetoPCL: TwwDBEdit;
    edtIvaTGPCL: TwwDBEdit;
    edtIvaTDPCL: TwwDBEdit;
    edtIvaOTPCL: TwwDBEdit;
    btnCancel_PCL: TRzBitBtn;
    btnPrn_PCL: TRzBitBtn;
    edtFechaPCL: TwwDBDateTimePicker;
    edtComisionPCL: TwwDBEdit;
    cbEmpresaPCL: TwwDBLookupCombo;
    btnSave_PCL: TRzBitBtn;
    pnlTopCons: TRzPanel;
    lblEntCons: TLabel;
    lblHastaC: TLabel;
    lblDesdeC: TLabel;
    lblSucCons: TLabel;
    cbEnt_Con: TRzComboBox;
    btnBusCons: TRzBitBtn;
    edtDesdeC: TRzDateTimeEdit;
    edtHastaC: TRzDateTimeEdit;
    btnExpCons: TRzBitBtn;
    cbSuc_Con: TRzComboBox;
    lblTipoPCL: TLabel;
    gConsPCL: TwwDBGrid;
    cbTipoOP_PCL: TRzComboBox;
    edtDetObsPCL: TwwDBEdit;
    lblDetObsPCL: TLabel;
    ebItemsConsPCL: TwwExpandButton;
    gItemsPCL: TwwDBGrid;
    cbxIncConciliados: TRzCheckBox;
    qMovTarIDTERMINAL: TIntegerField;
    lblIdTerminalMT: TppDBText;
    lblIdTermMT: TppLabel;
    lblNLoteMT: TppLabel;
    lblNroLoteMT: TppDBText;
    qMovTarLOTE: TMDOStringField;
    tsCobros: TRzTabSheet;
    btnExportarPC: TRzBitBtn;

    qPagoMutual: TMDOQuery;
    dsqPagoMutual: TDataSource;
    qPagoMutualIDLIQUIDACION: TIntegerField;
    qPagoMutualIDENTIDAD: TIntegerField;
    qPagoMutualIDSUCOPER: TIntegerField;
    qPagoMutualIDPROVEEDOR: TIntegerField;
    qPagoMutualFECHA: TDateField;
    qPagoMutualCANTOP: TSmallintField;
    qPagoMutualTOTAL: TMDOBCDField;
    qPagoMutualNETO: TMDOBCDField;
    qPagoMutualCOMISION: TMDOBCDField;
    qPagoMutualIDFACTURA: TIntegerField;
    qPagoMutualIDSUCURSAL: TIntegerField;
    qPagoMutualIDPUNTOVENTA: TIntegerField;
    qPagoMutualTIPOOP: TSmallintField;
    qPagoMutualUSUARIO: TIntegerField;
    qPagoMutualSTATE: TSmallintField;
    qPagoMutualNROOPERACION: TMDOStringField;
    qPagoMutualESTADO: TSmallintField;
    qPagoMutualIDEMPRESA: TIntegerField;
    qPagoMutualNOMBRE: TMDOStringField;
    qPagoMutualTARJETA: TMDOStringField;
    gPagoMutual: TwwDBGrid;
    qPagoMutualRETENIB: TMDOBCDField;
    qPagoMutualRETENLH: TMDOBCDField;
    qPagoMutualFECHAPAG: TDateField;
    qPagoMutualNROCERTRET: TMDOStringField;
    qPagoMutualIDRECIBO: TIntegerField;
    qPagoMutualSelected: TBooleanField;

    gbPagoMutual: TRzGroupBox;
    lblNroRecPag: TLabel;
    edtNroRecPag: TwwDBEdit;
    lblFecPag: TLabel;
    edtlFecPag: TwwDBDateTimePicker;
    lblTotLiq: TLabel;
    edtTotLiq: TwwDBEdit;
    btnSavePago: TRzBitBtn;

    dsPagoMutual: TDataSource;
    PagoMutual: TClientDataSet;
    PagoMutualNroRecibo: TStringField;
    PagoMutualFechaPag: TDateField;
    PagoMutualTotLiqui: TCurrencyField;
    PagoMutualTotRetIB: TCurrencyField;
    PagoMutualIdProv: TIntegerField;
    PagoMutualIdEntM: TIntegerField;
    PagoMutualIdSucP: TIntegerField;
    PagoMutualIdEmpresa: TIntegerField;
    PagoMutualTotNeto: TCurrencyField;
    PagoMutualTotComi: TCurrencyField;
    PagoMutualNomPro: TStringField;
    PagoMutualTotRetLH: TCurrencyField;
    PagoMutualNCertRet: TStringField;

    lblTotRetIB: TLabel;
    edtRetIB: TwwDBEdit;
    lblNomPro: TDBText;
    lblTotComi: TLabel;
    edtTotCom: TwwDBEdit;
    edtTotNeto: TwwDBEdit;
    lblTotNeto: TLabel;
    btnCancelPago: TRzBitBtn;
    lblCantOP: TLabel;
    pnlSalirCards: TRzPanel;
    btnSalir: TRzBitBtn;
    lblTotRetLH: TLabel;
    edtRetLH: TwwDBEdit;
    qVerItmPCLIDSUCURSAL: TIntegerField;
    qVerItmPCLMTOIVA: TMDOBCDField;
    qVerItmPCLIMPINT: TMDOBCDField;
    qVerItmPCLEXENTO: TMDOBCDField;
    qVerMovPCLDETSUC: TMDOStringField;
    qVerMovPCLDESCCORTA: TMDOStringField;
    qVerMovPCLNETO: TMDOBCDField;
    qVerMovPCLESTADO: TSmallintField;
    qVerMovPCLFECHAPAG: TDateField;
    qVerMovPCLNRORECPAGO: TMDOStringField;

    rpRecPagoMut: TppReport;
    dsDetPagMut: TDataSource;
    hbRepPagMut: TppHeaderBand;
    dbRepPagMut: TppDetailBand;
    fbRepPagMut: TppFooterBand;
    dbpDetPagMut: TppBDEPipeline;
    lblTitPagMut1: TppLabel;
    lblRPMNroPre: TppDBText;
    lblRPMFecPre: TppDBText;
    lblRPMEmision: TppSystemVariable;
    lblRPMPaginas: TppSystemVariable;
    lblRPMNOp: TppDBText;
    lblRPMNomPro: TppDBText;
    groupNomPro: TppGroup;
    ghbNomPro: TppGroupHeaderBand;
    gfbNomPro: TppGroupFooterBand;
    lblRPMTarjeta: TppDBText;
    lblRPMTotOp: TppDBText;
    shpPagMuT1: TppShape;
    lblRPMRetIB: TppDBText;
    lblRPMRetLH: TppDBText;
    lblRPMCom: TppDBText;
    lblRPMNeto: TppDBText;
    lnRecPagMut1: TppLine;
    lblRPMTotTot: TppDBCalc;
    lblRPMTotRIB: TppDBCalc;
    lblRPMTotRLH: TppDBCalc;
    lblRPMTotCom: TppDBCalc;
    lblRPMTotNet: TppDBCalc;
    shpPagMuT2: TppShape;
    shpPagMuT3: TppShape;
    
    DetPagMut: TClientDataSet;
    DetPagMutNroPresent: TStringField;
    DetPagMutComision: TCurrencyField;
    DetPagMutNomPro: TStringField;
    DetPagMutFechaOP: TDateField;
    DetPagMutCantOP: TSmallintField;
    DetPagMutTotal: TCurrencyField;
    DetPagMutNetoOP: TCurrencyField;
    DetPagMutRetenIB: TCurrencyField;
    DetPagMutRetenLH: TCurrencyField;
    DetPagMutIdLiquidacion: TIntegerField;
    DetPagMutTarjeta: TStringField;
    gbEntPag: TRzGroupBox;
    lblLimiteVta: TLabel;
    lblDomEnt: TLabel;
    lblDepEnt: TLabel;
    lblProvEnt: TLabel;
    lblComEnt: TLabel;
    lblDocEnt: TLabel;
    lblTIvaEnt: TLabel;
    lblCPEnt: TLabel;
    lblAltaMod: TDBText;
    edtLimiteVta: TwwDBEdit;
    edtDomEnt: TwwDBEdit;
    edtDepEnt: TwwDBEdit;
    edtProvEnt: TwwDBEdit;
    edtComEnt: TwwDBEdit;
    cbTipoIvaEnt: TwwDBLookupCombo;
    edtDocEnt: TwwDBEdit;
    cbTipoDocEnt: TwwDBLookupCombo;
    edtCPEnt: TwwDBEdit;
    cbPrvEntPag: TwwDBLookupCombo;
    lblPrvEntPag: TLabel;
    lblDiaPres: TLabel;
    edtDiaPres: TwwDBEdit;
    lblIdProvEnt: TRzDBLabel;
    btnProveedores: TRzBitBtn;
    pnlTopCobMut: TRzPanel;
    lblSucPagMt: TLabel;
    cbSucPagM: TRzComboBox;
    lblEntPagMt: TLabel;
    cbEntPagM: TRzComboBox;
    btnExpPag: TRzBitBtn;
    btnBusPag: TRzBitBtn;
    lblTitPagMut2: TppLabel;
    lnRecPagMut2: TppLine;

    procedure pcTarjetasMutualesClose(Sender: TObject; var AllowClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gMovTarMutUpdateFooter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPrn_PCLClick(Sender: TObject);
    procedure btnBusOperClick(Sender: TObject);
    procedure btnExpOperClick(Sender: TObject);
    procedure gCoeficientesKeyPress(Sender: TObject; var Key: Char);
    procedure gMovTarMutDblClick(Sender: TObject);
    procedure pcTarjetasMutualesTabClick(Sender: TObject);
    procedure qMovTarEstadoGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure btnImpCoefTClick(Sender: TObject);
    procedure btnPrnOperClick(Sender: TObject);
    procedure lblEstadoMTGetText(Sender: TObject; var Text: String);
    procedure qMovTarFechaResumenGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure lblFResMTGetText(Sender: TObject; var Text: String);
    procedure edtLimiteVtaKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomEntKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TarjetasTIPOIVAValidate(Sender: TField);
    procedure btnBusMovPCLClick(Sender: TObject);
    procedure gPCL_MovsUpdateFooter(Sender: TObject);
    procedure gPCL_MovsDblClick(Sender: TObject);
    procedure gPCL_MovsCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure gPCL_MovsExit(Sender: TObject);
    procedure PresConcAfterOpen(DataSet: TDataSet);
    procedure TarjetasAfterInsert(DataSet: TDataSet);
    procedure TarjetasAfterPost(DataSet: TDataSet);
    procedure TarjetasBeforeEdit(DataSet: TDataSet);
    procedure TarjetasBeforeInsert(DataSet: TDataSet);
    procedure TarjetasBeforePost(DataSet: TDataSet);
    procedure TarjetasDOCUMENTOValidate(Sender: TField);
    procedure TarPlanCalcFields(DataSet: TDataSet);
    procedure TarPlanNewRecord(DataSet: TDataSet);
    procedure btnSave_PCLClick(Sender: TObject);
    procedure lblDetSucGetText(Sender: TObject; var Text: String);
    procedure PresConcEstado1Change(Sender: TField);
    procedure PresConcEstado2Change(Sender: TField);
    procedure PresConcEstado3Change(Sender: TField);
    procedure TarjetasReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure TarjetasNewRecord(DataSet: TDataSet);
    procedure TarjetasTDOCFISCALChange(Sender: TField);
    procedure TarjetasIDTARJETAGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure gPCL_MovsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PresConcBeforeOpen(DataSet: TDataSet);
    procedure gMovTarMutCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure cbEnt_PCLChange(Sender: TObject);
    procedure cbSuc_PCLChange(Sender: TObject);
    procedure btnCancel_PCLClick(Sender: TObject);
    procedure cbEmpresaPCLKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtComprobantePCLExit(Sender: TObject);
    procedure edtTotalPCLKeyPress(Sender: TObject; var Key: Char);
    procedure cbTipoOP_PCLChange(Sender: TObject);
    procedure LiqPreConProveedorValidate(Sender: TField);
    procedure CalculoDiscrimChange(Sender: TField);
    procedure LiqPreConNewRecord(DataSet: TDataSet);
    procedure btnBusConsClick(Sender: TObject);
    procedure cbSuc_ConChange(Sender: TObject);
    procedure cbEnt_ConChange(Sender: TObject);
    procedure PresConcEstadoPCLChange(Sender: TField);
    procedure gConsPCLDblClick(Sender: TObject);
    procedure cbTipoOP_PCLEnter(Sender: TObject);
    procedure TarjetasTIPOENTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnExportarPCClick(Sender: TObject);
    procedure btnExpConsClick(Sender: TObject);
    procedure cbEntPagMChange(Sender: TObject);
    procedure cbSucPagMChange(Sender: TObject);
    procedure btnBusPagClick(Sender: TObject);
    procedure btnExpPagClick(Sender: TObject);
    procedure edtNroRecPagExit(Sender: TObject);
    procedure edtNroRecPagKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtRetIBKeyPress(Sender: TObject; var Key: Char);
    procedure qPagoMutualAfterOpen(DataSet: TDataSet);
    procedure PagoMutualNewRecord(DataSet: TDataSet);
    procedure qPagoMutualTIPOOPGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qPagoMutualIDSUCOPERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure gPagoMutualDblClick(Sender: TObject);
    procedure gPagoMutualMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
    procedure btnSavePagoClick(Sender: TObject);
    procedure btnCancelPagoClick(Sender: TObject);
    procedure gPagoMutualKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gItemsPCLDblClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure TarjetasCalcFields(DataSet: TDataSet);
    procedure btnProveedoresClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qVerMovPCLESTADOGetText(Sender: TField; var Text: string; DisplayText: Boolean);

  private
    { Private declarations }
    AltaEnt, Haciendo_Presentacion,
    Marcando_Presentacion, DiscriminandoPCL : Boolean;
    TotalEnc_PCL, TotalInc_PCL, TotalItemC, TotalIncC,
    IdProv, IdTarAct, CantMv, IdEnt_PCL, IdSuc_PCL,
    TipOp_PCL, IdSuc_Con, IdEnt_Con, IdFacPrn_PCL,
    IdSucPrn_PCL, IdPtoPrn_PCL, IdEnt_Pag, IdSuc_Pag, CanOp_Pag: Integer;
    TotalLiq, TotalPre_PCL, TotalMov, TotalCob, TotalSal: Currency;

        (*
           1 = NORMAL                      1 <N I> = NO Incluir.
           2 = COBRAR 1 CTA                2 <P1C> = Presentar 1 Cta.
           3 = COBRAR TODO                 3 <PTO> = Presentar Toda la Oper.
           4 = ANULADA/RECHAZADA           4 <RZD> = ANULADA/Rechazada

          20 = MORA 1º AVISO
          30 = MORA 2º AVISO
          40 = MORA 3º AVISO
          50 = EN LEGALES
          99 = INCOBRABLE

           0 = NORMAL
           1 = PAGADO
           2 = EN COBRO
           3 = RECHAZADA
           4 = ANULADA
          20 = MORA 1º AVISO
          30 = MORA 2º AVISO
          40 = MORA 3º AVISO
          50 = EN LEGALES
          99 = INCOBRABLE
                                                Presentacion    Conciliacion
           0 <N I> = NO Incluir.                     0 = 0           0 = 0
           1 <P1C> = Presentar 1 Cta.                1 = 2           1 = 2
           2 <PTO> = Presentar Toda la Oper.         2 = 2           2 = 1
           3 <RZD> = Rechazada                       3 = 4           3 = 3
       *)

    procedure Save_PCL;
    procedure HabilitarTotalesPCL(Habilitar: Boolean);
    procedure Calculo_Discriminacion_PCL;
    procedure UpdateTotals_PCL;
    procedure Consulta_Movimientos_Tarjetas;
    procedure PCL_Movimientos(E, T, S: Integer; D, H: TDate);
    procedure PCL_VerMovs(E, S: Integer;  D, H: TDate);
    procedure Llenar_Presentacion;
    procedure Save_RecPago;
    procedure Llenar_ReciboMutual;

  public
    { Public declarations }
  end;

(*
gerardo
154706824
155063735
*)

var
  frmGestTarMut: TfrmGestTarMut;

implementation

uses udmGestion, udmSaveFile, uTools, uViewMT, uClaveMod, uViewFacV,
     uViewFacC, uConfiguracion, uFormasDePago, uProveedores;

{$R *.DFM}

procedure TfrmGestTarMut.FormCreate(Sender: TObject);
begin
  cbEntOper.Items.Clear;
  cbEnt_Con.Items.Clear;
  cbEnt_PCL.Items.Clear;
  cbEntPagM.Items.Clear;
  cbEntOper.Items.AddObject('<TODAS>', TObject(0));
  cbEnt_Con.Items.AddObject('<TODAS>', TObject(0));
  try
    try
      Tarjetas.DisableControls;
      Tarjetas.Open;
      while not Tarjetas.Eof do
      begin
        cbEntOper.Items.AddObject(TarjetasTarjeta.AsString, TObject(TarjetasIdTarjeta.AsInteger));
        cbEnt_Con.Items.AddObject(TarjetasTarjeta.AsString, TObject(TarjetasIdTarjeta.AsInteger));
        cbEnt_PCL.Items.AddObject(TarjetasTarjeta.AsString, TObject(TarjetasIdTarjeta.AsInteger));
        if TarjetasTIPOENT.AsInteger = 2 then  (* Mutuales *)
          cbEntPagM.Items.AddObject(TarjetasTarjeta.AsString, TObject(TarjetasIdTarjeta.AsInteger));
        Tarjetas.Next;
      end;
    finally
      Tarjetas.EnableControls;
      Tarjetas.First;
      TarPlan.Open;
    end;
  except
    on E:Exception do
      raise EUSuario.Create('Tarjetas: '+E.Message);
  end;

  cbTipoOP_PCL.AutoDropDown := True;
  cbSucCtas.Items.Clear;
  cbSucOper.Items.Clear;
  cbSuc_PCL.Items.Clear;
  cbSuc_Con.Items.Clear;
  cbSucPagM.Items.Clear;
  cbSucCtas.Items.Add('<TODAS>'+ #9 + '0');
  cbSuc_PCL.Items.AddObject('<TODAS>', TObject(0));
  cbSucOper.Items.AddObject('<TODAS>', TObject(0));
  cbSucPagM.Items.AddObject('<TODAS>', TObject(0));

  dmGestion.Sucursales.Open;
  dmGestion.Sucursales.First;
  while not dmGestion.Sucursales.Eof do
  begin
    cbSucCtas.Items.Add(dmGestion.SucursalesNombreSuc.AsString+ #9 +dmGestion.SucursalesIdSucursal.AsString);
    cbSucOper.Items.AddObject(dmGestion.SucursalesNombreSuc.AsString, TObject(dmGestion.SucursalesIdSucursal.AsInteger));
    cbSuc_PCL.Items.AddObject(dmGestion.SucursalesNombreSuc.AsString, TObject(dmGestion.SucursalesIdSucursal.AsInteger));
    cbSuc_Con.Items.AddObject(dmGestion.SucursalesNombreSuc.AsString, TObject(dmGestion.SucursalesIdSucursal.AsInteger));
    cbSucPagM.Items.AddObject(dmGestion.SucursalesNombreSuc.AsString, TObject(dmGestion.SucursalesIdSucursal.AsInteger));
    dmGestion.Sucursales.Next;
  end;
  cbSucCtas.MapList := True;
  cbSucCtas.ApplyList;

  cbSucOper.ItemIndex := 0;
  cbSuc_Con.ItemIndex := 0;

  edtDesPCL.Date := StartOfTheMonth(Date);
  edtHasPCL.Date := Date;
  edtDesdeO.Date := StartOfTheMonth(Date);
  edtHastaO.Date := Date;
  edtDesdeC.Date := StartOfTheMonth(Date);
  edtHastaC.Date := Date;
  PresConc.Close;
  AltaEnt := False;

  IdEnt_PCL := 0;
  IdSuc_PCL := 0;
  IdEnt_Con := 0;
  IdSuc_Con := 0;
  IdSuc_Pag := 0;
  IdEnt_Pag := 0;
  CanOp_Pag := 0;
  TotalEnc_PCL := 0;
  TotalInc_PCL := 0;
  TotalPre_PCL := 0;
  dmGestion.Empresas.Open;
  dmGestion.Sucursales.First;
end;

procedure TfrmGestTarMut.FormShow(Sender: TObject);
var
  q: TMDOQuery;
begin
  try // ver si se trabajo con mutuales
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.dbGestion;
    q.Transaction := dmGestion.trProc;
    q.SQL.Add('Select Count(IdTarjeta) as CantM ');
    q.SQL.Add('From Tarjetas ');
    q.SQL.Add('Where TipoEnt = 2 ');
    q.Open;
    if q.FieldByName('CantM').AsInteger > 0 then
      tsCobros.TabVisible := True
    else
      tsCobros.TabVisible := False;
    q.Close;
  finally
    q.Free;
  end;
  qProv.Open;
end;

procedure TfrmGestTarMut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmGestTarMut.pcTarjetasMutualesClose(Sender: TObject; var AllowClose: Boolean);
begin
  Close;
end;

(*
Select M.IdMov, M.IdTarjeta, M.IdSucursal, M.IdFactura,
       M.IdCliente, M.FechaOP, M.CodTar, M.NroCuota,
       M.ImpCuota, M.TotalOP, M.Autorizacion, M.Estado,
       M.FechaResumen, M.CuotaPag, M.FechaIS, M.NroLiquidacion,
       F.NroFactura, T.Tarjeta, C.Nombre, F.IdPuntoVenta,
       (M.ImpCuota * M.CuotaPag) as Cobrado,
       (M.TotalOP - (M.ImpCuota * M.CuotaPag)) as Saldo
From MovTar M
Left Outer Join Clientes C
  on (C.IdCliente = M.IdCliente) and (C.IdSucursal = M.IdSucursal)
Left Outer Join FacVen F
  on (F.IdFactura = M.IdFactura) and (F.IdSucursal = M.IdSucursal)
Left Outer Join Tarjetas T
  on T.IdTarjeta = M.IdTarjeta
Where (M.Estado not in (3,4,60)) And
      (M.FechaOp between '01/01/2001' and '01/01/2009') and
      (M.IdTarjeta = 30) and
      (M.IdSucursal = 6)
Group By M.IdMov, M.IdTarjeta, M.IdSucursal, M.IdFactura, M.IdCliente,
      M.FechaOP, M.CodTar, M.NroCuota, M.ImpCuota, M.TotalOP, M.Autorizacion,
      M.Estado, M.FechaResumen, M.CuotaPag, M.FechaIS, M.NroLiquidacion,
      F.IdPuntoVenta, F.NroFactura, T.Tarjeta, C.Nombre, C.Telefonos
*)

procedure TfrmGestTarMut.Consulta_Movimientos_Tarjetas;
Const
  Movs = 'Select M.IdMov, M.IdTarjeta, M.IdSucursal, M.IdFactura, '+
         '       F.IdPuntoVenta, M.IdCliente, M.FechaOP, '+
         '       (''NT '' || M.CodTar) as CodTar, M.NroCuota, '+
         '       M.ImpCuota, M.TotalOP, M.Autorizacion, '+
         '       M.Estado, M.FechaResumen, M.CuotaPag, '+
         '       M.FechaIS, M.IdTerminal, M.NroLiquidacion, '+
         '       M.Lote, F.NroFactura, T.Tarjeta, C.Nombre, '+
         '       (M.ImpCuota * M.CuotaPag) as Cobrado, '+
         '       (M.TotalOP - (M.ImpCuota * M.CuotaPag)) as Saldo '+
         'From MovTar M '+
         'Join Clientes C '+
         '  on (C.IdCliente = M.IdCliente) and (C.IdSucursal = M.IdSucursal) '+
         'Join FacVen F '+
         '  on (F.IdFactura = M.IdFactura) and (F.IdSucursal = M.IdSucursal) '+
         'Join Tarjetas T '+
         '  on T.IdTarjeta = M.IdTarjeta '+
         'Where (M.State = 0) And (M.Estado not in (3, 4, 60)) And '+
         '      (M.FechaOp between :Desde and :Hasta) <COND> '+
         'Group By M.IdMov, M.IdTarjeta, M.IdSucursal, M.IdFactura, '+
         '      F.IdPuntoVenta, M.IdCliente, M.FechaOP, M.CodTar, '+
         '      M.NroCuota, M.ImpCuota, M.TotalOP, M.Autorizacion, '+
         '      M.Estado, M.FechaResumen, M.CuotaPag, M.FechaIS, '+
         '      M.IdTerminal, M.NroLiquidacion, M.Lote, F.NroFactura, '+
         '      T.Tarjeta, C.Nombre, C.Telefonos '+
         'Order By M.FechaOP, F.NroFactura, C.Nombre ';

var
  Cond: String;
  IdEnt, IdSuc: Integer;
begin
  TotalMov := 0;
  TotalCob := 0;
  TotalSal := 0;
  CantMv := 0;
  Cond := Vacio;
  qMovTar.Close;
  btnPrnOper.Enabled := False;
  btnExpOper.Enabled := False;
  try
    IdSuc := Integer(cbSucOper.Items.Objects[cbSucOper.ItemIndex]);
  except
    raise EUsuario.Create('La sucursal ha sido mal ingresada.-');
  end;

  try
    IdEnt := Integer(cbEntOper.Items.Objects[cbEntOper.ItemIndex]);
  except
    raise EUsuario.Create('La entidad ha sido mal ingresada.-');
  end;

  if edtDesdeO.Date > edtHastaO.Date then
    raise EUsuario.Create('periodo mal ingresado.-');

  if IdEnt > 0 then
    Cond := ' and (M.IdTarjeta = '+IntToStr(IdEnt)+')';

  if IdSuc > 0 then
    Cond := Cond + ' and (M.IdSucursal = '+IntToStr(IdSuc)+')';

  try
    Screen.Cursor := crHourGlass;
    qMovTar.SQL.Clear;
    qMovTar.SQL.Text := StringReplace(Movs, '<COND>', Cond, [rfReplaceAll]);
    qMovTar.ParamByName('Desde').AsDateTime := edtDesdeO.Date;
    qMovTar.ParamByName('Hasta').AsDateTime := edtHastaO.Date;
    qMovTar.Open;

    if not qMovTar.IsEmpty then
    begin
      try
        qMovTar.DisableControls;
        qMovTar.First;
        while not qMovTar.Eof do
        begin
          TotalMov := TotalMov + qMovTarTotalOp.AsCurrency;
          TotalCob := TotalCob + qMovTarCobrado.AsCurrency;
          TotalSal := TotalSal + qMovTarSaldo.AsCurrency;
          Inc(CantMv);
          qMovTar.Next;
        end;
      finally
        qMovTar.First;
        qMovTar.EnableControls;
        btnPrnOper.Enabled := True;
        btnExpOper.Enabled := True;
      end;
    end
    else
      ShowMessage('no hay movimientos');
  finally
    Screen.Cursor := crDefault;
    gMovTarMut.ColumnByName('Nombre').FooterValue := Format('NºOP %d',[CantMv]);
    gMovTarMut.ColumnByName('NroFactura').FooterValue := 'Total';
    gMovTarMut.ColumnByName('TotalOp').FooterValue := Format('%m',[TotalMov]);
    gMovTarMut.ColumnByName('Cobrado').FooterValue := Format('%m',[TotalCob]);
    gMovTarMut.ColumnByName('Saldo').FooterValue := Format('%m',[TotalSal]);
    gMovTarMut.RefreshDisplay;
  end;
end;

procedure TfrmGestTarMut.gMovTarMutUpdateFooter(Sender: TObject);
begin
  gMovTarMut.ColumnByName('Nombre').FooterValue := Format('NºOP %d',[CantMv]);
  gMovTarMut.ColumnByName('NroFactura').FooterValue := 'Total';
  gMovTarMut.ColumnByName('TotalOP').FooterValue := Format('%m',[TotalMov]);
  gMovTarMut.ColumnByName('Cobrado').FooterValue := Format('%m',[TotalCob]);
  gMovTarMut.ColumnByName('Saldo').FooterValue := Format('%m',[TotalSal]);
end;

procedure TfrmGestTarMut.qMovTarEstadoGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Case qMovTarEstado.AsInteger of
    0: Text := 'Sin Presentar';
    1: Text := 'En Cobro';
    2: Text := 'Cobrada';
    3: Text := 'Rechazada';
    4: Text := 'Anulada';
    5: Text := 'Presentada'
  end;
end;

procedure TfrmGestTarMut.gMovTarMutCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if not HighLight then
  begin
    if Up_Case(Field.FieldName) = Up_Case('NroFactura') then
    begin
      ABrush.Color := $00BFFFFF;
      AFont.Color := clBlack;
    end;
    if Up_Case(Field.FieldName) = Up_Case('Tarjeta') then
    begin
      ABrush.Color := $00D9FFD9;
      AFont.Color := clBlack;
    end;
    if Up_Case(Field.FieldName) = Up_Case('NroLiquidacion') then
    begin
      ABrush.Color := $00FFFFD7;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure TfrmGestTarMut.gMovTarMutDblClick(Sender: TObject);
begin
  if Up_Case(gMovTarMut.SelectedField.FieldName) = Up_Case('NroFactura') then
  begin
    Get_FacV(qMovTarIdFactura.AsInteger,
             qMovTarIdSucursal.AsInteger,
             qMovTarIDPUNTOVENTA.AsInteger);
  end;
  if Up_Case(gMovTarMut.SelectedField.FieldName) = Up_Case('Tarjeta') then
  begin
    Get_ModT(qMovTarIdFactura.AsInteger,
             qMovTarIdSucursal.AsInteger,
             qMovTarIdTarjeta.AsInteger,
             qMovTarIdMov.AsInteger);
  end;
  (*
  if Up_Case(gMovTarMut.SelectedField.FieldName) = Up_Case('NroLiquidacion') then
  begin
    //
  end;
  *)
end;

procedure TfrmGestTarMut.lblEstadoMTGetText(Sender: TObject; var Text: String);
begin
  Case qMovTarEstado.AsInteger of
     0: Text := 'NORMAL';
     1: Text := 'PAGADO';
     2: Text := 'EN COBRO';
     3: Text := 'RECHAZADA';
     4: Text := 'ANULADA';
    20: Text := 'MORA 1º AVISO';
    30: Text := 'MORA 2º AVISO';
    40: Text := 'MORA 3º AVISO';
    50: Text := 'EN LEGALES';
    99: Text := 'INCOBRABLE';
  end;
end;

procedure TfrmGestTarMut.btnPrnOperClick(Sender: TObject);
begin
  try
    qMovTar.DisableControls;
    lblTitMT1.Caption := OwnerName + ' Entidad: '+cbEntOper.Text+' Sucursal: '+cbSucOper.Text;
    lblTitMT2.Caption := 'Operaciones realizadas entre el '+DateToStr(edtDesdeO.Date)+' hasta '+DateToStr(edtHastaO.Date);
    rpMovTar.Print;
  finally
    qMovTar.EnableControls;
  end;
end;

procedure TfrmGestTarMut.btnExpConsClick(Sender: TObject);
begin
  if not qVerMovPCL.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qVerMovPCL;
    dmGestion.IyC_Exp.Execute;
  end;
end;

procedure TfrmGestTarMut.btnExpOperClick(Sender: TObject);
begin
  if not qMovTar.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qMovTar;
    dmGestion.IyC_Exp.Execute;
  end;
end;

procedure TfrmGestTarMut.btnExportarPCClick(Sender: TObject);
begin
  if not PresConc.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := PresConc;
    dmGestion.IyC_Exp.Execute;
  end;
end;

procedure TfrmGestTarMut.qMovTarFechaResumenGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if (qMovTarFechaResumen.AsDateTime <= Ano_2000) or
     (qMovTarFechaResumen.IsNull) then
    Text := 'SC'
  else
    Text := DateToStr(Sender.AsDateTime);
end;

procedure TfrmGestTarMut.lblFResMTGetText(Sender: TObject; var Text: String);
begin
  if (qMovTarFechaResumen.AsDateTime <= Ano_2000) or
     (qMovTarFechaResumen.IsNull) then
    Text := 'SC'
  else
    Text := DateToStr(qMovTarFechaResumen.AsDateTime);
end;

procedure TfrmGestTarMut.btnBusOperClick(Sender: TObject);
begin
  Consulta_Movimientos_Tarjetas
end;
//*****************************************************************************
//                          CONCILIACION
//                          PRESENTACIONES
//                          LIQUIDACIONES
//*****************************************************************************
procedure TfrmGestTarMut.btnPrn_PCLClick(Sender: TObject);
begin
  If (IdFacPrn_PCL > 0) And
     (IdSucPrn_PCL > 0) And
     (IdPtoPrn_PCL > 0) then begin
    Print_PCL_TM(IdFacPrn_PCL, IdSucPrn_PCL, IdPtoPrn_PCL);
  end;
end;

procedure TfrmGestTarMut.btnProveedoresClick(Sender: TObject);
begin
  try
    qProv.Close;
    frmProveedores := TfrmProveedores.Create(Self);
    frmProveedores.ShowModal;
  finally
    qProv.Open;
  end;
end;

procedure TfrmGestTarMut.cbSucPagMChange(Sender: TObject);
begin
  Application.ProcessMessages;
  try
    IdSuc_Pag := Integer(cbSucPagM.Items.Objects[cbSucPagM.ItemIndex]);
  except
    cbSucPagM.SetFocus;
    IdSuc_Pag := 0;
    raise EUsuario.Create('Debe seleccionar una Sucursal');
  end;
end;

procedure TfrmGestTarMut.cbSuc_ConChange(Sender: TObject);
begin
  Application.ProcessMessages;
  try
    IdSuc_Con := Integer(cbSuc_Con.Items.Objects[cbSuc_Con.ItemIndex]);
  except
    cbSuc_Con.SetFocus;
    IdSuc_Con := 0;
    raise EUsuario.Create('Debe seleccionar una Sucursal');
  end;
end;

procedure TfrmGestTarMut.cbSuc_PCLChange(Sender: TObject);
begin
  Application.ProcessMessages;
  try
    IdSuc_PCL := Integer(cbSuc_PCL.Items.Objects[cbSuc_PCL.ItemIndex]);
  except
    cbSuc_PCL.SetFocus;
    IdSuc_PCL := NoEncontrado;
    raise EUsuario.Create('Debe seleccionar una Sucursal');
  end;
end;

procedure TfrmGestTarMut.cbTipoOP_PCLChange(Sender: TObject);
begin
  try
    TipOp_PCL := StrToInt(cbTipoOp_PCL.Value);
    if not TipOp_PCL in [1,2] then
    begin
      cbTipoOP_PCL.SetFocus;
      TipOp_PCL := NoEncontrado;
      raise EUsuario.Create('Debe seleccionar un tipo de Operación');
    end;
  except
    cbTipoOP_PCL.SetFocus;
    TipOp_PCL := NoEncontrado;
    raise EUsuario.Create('Debe seleccionar un tipo de Operación');
  end;
end;

procedure TfrmGestTarMut.cbTipoOP_PCLEnter(Sender: TObject);
begin
  cbTipoOP_PCL.Perform(CB_SHOWDROPDOWN, 1 ,0);
  cbTipoOP_PCL.Repaint;
end;

procedure TfrmGestTarMut.cbEntPagMChange(Sender: TObject);
begin
  try
    IdEnt_Pag := Integer(cbEntPagM.Items.Objects[cbEntPagM.ItemIndex]);
  except
    cbEntPagM.SetFocus;
    IdEnt_Pag := 0;
    raise EUsuario.Create('Debe seleccionar un Entidad');
  end;
end;

procedure TfrmGestTarMut.cbEnt_ConChange(Sender: TObject);
begin
  try
    IdEnt_Con := Integer(cbEnt_Con.Items.Objects[cbEnt_Con.ItemIndex]);
  except
    cbEnt_Con.SetFocus;
    IdEnt_Con := 0;
    raise EUsuario.Create('Debe seleccionar un Entidad');
  end;
end;

procedure TfrmGestTarMut.cbEnt_PCLChange(Sender: TObject);
begin
  try
    IdEnt_PCL := Integer(cbEnt_PCL.Items.Objects[cbEnt_PCL.ItemIndex]);
  except
    cbEnt_PCL.SetFocus;
    IdEnt_PCL := 0;
    raise EUsuario.Create('Debe seleccionar un Entidad');
  end;
end;

procedure TfrmGestTarMut.cbEmpresaPCLKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  Case Key of
    VK_ESCAPE: btnSave_PCL.SetFocus;
    VK_F5: Calculadora(Handle);
    else {$INCLUDE IyC_NextEdit.Inc}
  end;
end;

procedure TfrmGestTarMut.PresConcAfterOpen(DataSet: TDataSet);
begin
  lblCantOP_PCL.Caption := IntToStr(PresConc.RecordCount);
  Application.ProcessMessages;
  try
    Haciendo_Presentacion := True;
    PresConc.First;
    while not PresConc.Eof do
    begin
      PresConc.Edit;
      PresConcEstadoPCL.AsInteger := PresConcESTADOOP.AsInteger;
      case PresConcESTADOOP.AsInteger of
        0:begin
            PresConcEstado1.AsBoolean := True;
            PresConcEstado2.AsBoolean := False;
            PresConcEstado3.AsBoolean := False;
          end;
        1:begin
            PresConcEstado1.AsBoolean := False;
            PresConcEstado2.AsBoolean := True;
            PresConcEstado3.AsBoolean := False;
          end;
        2:begin
            PresConcEstado1.AsBoolean := False;
            PresConcEstado2.AsBoolean := False;
            PresConcEstado3.AsBoolean := True;
          end;
      end;
      PresConc.Post;
      PresConc.Next;
    end;
  finally
    Haciendo_Presentacion := False;
    TotalEnc_PCL := PresConc.RecordCount;
    TotalInc_PCL := 0;
    PresConc.First;
    gPCL_Movs.ColumnByName('Nombre').FooterValue := 'Totales ';
    gPCL_Movs.ColumnByName('CodTar').FooterValue := Format('%d / %d',[TotalInc_PCL, TotalEnc_PCL]);
    gPCL_Movs.ColumnByName('MontoCuota').FooterValue := Format('%m', [TotalPre_PCL]);
  end;
end;

procedure TfrmGestTarMut.PresConcBeforeOpen(DataSet: TDataSet);
begin
  if LiqPreCon.Active then
    LiqPreCon.EmptyDataSet
  else
    LiqPreCon.CreateDataSet;
end;

procedure TfrmGestTarMut.HabilitarTotalesPCL(Habilitar: Boolean);
begin

  (*
  lblPrcComPCL.Enabled := Habilitar;
  edtPrcComPCL.Enabled := Habilitar;
  lblNetoPCL.Enabled := Habilitar;
  edtNetoPCL.Enabled := Habilitar;
  *)

  lblRetGanPCL.Enabled := Habilitar;
  edtRetGanPCL.Enabled := Habilitar;

  lblRetIBtPCL.Enabled := Habilitar;
  edtRetIBtPCL.Enabled := Habilitar;

  lblRetLHPCL.Enabled := Habilitar;
  edtRetLHPCL.Enabled := Habilitar;

  lblNoCompPCL.Enabled := Habilitar;
  edtNoCompPCL.Enabled := Habilitar;

  lblIvaTGPCL.Enabled := Habilitar;
  edtIvaTGPCL.Enabled := Habilitar;

  lblIvaTDPCL.Enabled := Habilitar;
  edtIvaTDPCL.Enabled := Habilitar;

  lblIvaOTPCL.Enabled := Habilitar;
  edtIvaOTPCL.Enabled := Habilitar;

  lblPercepPCL.Enabled := Habilitar;
  edtNroPerPCL.Enabled := Habilitar;
  edtPercepPCL.Enabled := Habilitar;
  edtAlcPerPCL.Enabled := Habilitar;
end;

procedure TfrmGestTarMut.Calculo_Discriminacion_PCL;
var
  GTotal, GSubTot, GComi,
  GNeto, GMIva, GPPCta, GTotRet: Currency;
  AlcIva: Double;
begin
  if not DiscriminandoPCL then
  begin
    try
      DiscriminandoPCL := True;
      if (LiqPreConTipoFactura.AsInteger in [LiquidacionA, LiquidacionC]) then
      begin
        if (LiqPreConTipoIva.AsInteger = RI) then
        begin
          try
            GTotal := 0;
            GSubTot:= 0;
            GComi  := 0;
            GNeto  := 0;
            GPPCta := 0;
            GMIva  := 0;
            GTotRet:= 0;
            AlcIva := 1 + (GetAlcIva(1) / 100);
            try
              if LiqPreConPrcComP.AsFloat > 0 then
                GComi := ((GSubTot * LiqPreConPrcComP.AsFloat) / 100)
              else
                GComi := LiqPreConComision.AsCurrency;

              GTotRet := LiqPreConNoComputables.AsCurrency +
                         LiqPreConRetGan.AsCurrency +
                         LiqPreConRetIBt.AsCurrency +
                         LiqPreConRetLH.AsCurrency;
              GSubTot := GComi - GTotRet;

              if (LiqPreConAlcPercep.AsFloat > 0) then
                GPPCta := (GSubTot * LiqPreConAlcPercep.AsFloat) / 100
              else
                GPPCta := LiqPreConRetIva.AsCurrency;
              GSubTot := GSubTot - GPPCta;

              GMIva   := GSubTot - (GSubTot / AlcIva);
              GSubTot := GSubTot - GMIva;
              GNeto  := GSubTot;
            finally
              LiqPreConSubTotal.AsCurrency := GSubTot;
              LiqPreConComision.AsCurrency := GComi;
              LiqPreConNeto.AsCurrency := GNeto;
              LiqPreConMtoIvaAlc1.AsCurrency := GMIva;
              LiqPreConMtoIvaAlc2.AsCurrency := 0;
              LiqPreConMtoIvaOAlc.AsCurrency := 0;
              LiqPreConRetIva.AsCurrency := GPPCta;
            end;
          except
            raise EUsuario.Create('Algún valor ingresado no es válido')
          end
        end
        else begin
          LiqPreConSubTotal.AsCurrency := LiqPreConTotal.AsCurrency;
          LiqPreConNeto.AsCurrency := LiqPreConTotal.AsCurrency;
          LiqPreConNoComputables.AsCurrency := 0;
          LiqPreConMtoIvaAlc1.AsCurrency := 0;
          LiqPreConMtoIvaAlc2.AsCurrency := 0;
          LiqPreConMtoIvaOAlc.AsCurrency := 0;
          LiqPreConRetIva.AsCurrency := 0;
          LiqPreConRetGan.AsCurrency := 0;
        end;
      end
      else begin
        LiqPreConSubTotal.AsCurrency := LiqPreConTotal.AsCurrency;
        LiqPreConNeto.AsCurrency := LiqPreConTotal.AsCurrency;
        LiqPreConNoComputables.AsCurrency := 0;
        LiqPreConMtoIvaAlc1.AsCurrency := 0;
        LiqPreConMtoIvaAlc2.AsCurrency := 0;
        LiqPreConMtoIvaOAlc.AsCurrency := 0;
        LiqPreConRetIva.AsCurrency := 0;
        LiqPreConRetGan.AsCurrency := 0;
        LiqPreConRetIBt.AsCurrency := 0;
        LiqPreConRetLH.AsCurrency := 0;
      end;
    finally
      DiscriminandoPCL := False;
    end;
  end;
end;

procedure TfrmGestTarMut.UpdateTotals_PCL;
var
  c, TempTotal: Currency;
  PrevRecord: TBookmark;
  q: TMDOQuery;
  p: Integer;
begin
  if (not Haciendo_Presentacion) and
     (IdEnt_PCL > 0) then
  begin
    try
      Haciendo_Presentacion := True;
      PrevRecord := PresConc.GetBookmark;      // returns null if table is empty }
      try
        PresConc.DisableControls;
        TempTotal := 0;	                       // use temp for efficiency
        TotalInc_PCL := 0;
        TotalPre_PCL := 0;
        PresConc.First;
        while not PresConc.Eof do
        begin
          Case PresConcEstadoPCL.AsInteger of
            0: begin
              PresConc.Edit;
              PresConcMontoACob.AsCurrency := 0;
              PresConc.Post;
            end;
            1: begin
              TempTotal := TempTotal + PresConcMONTOCUOTA.AsCurrency;
              PresConc.Edit;
              PresConcMontoACob.AsCurrency := PresConcMONTOCUOTA.AsCurrency;
              PresConc.Post;
              Inc(TotalInc_PCL);
            end;
            2: begin
              TempTotal := TempTotal + PresConcTOTALOP.AsCurrency;
              PresConc.Edit;
              PresConcMontoACob.AsCurrency := PresConcTOTALOP.AsCurrency;
              PresConc.Post;
              Inc(TotalInc_PCL);
            end;
          end;
          PresConc.Next;
        end;
      finally
        TotalPre_PCL := TempTotal;
        if (not PresConc.IsEmpty) then
        begin
          p := 0;
          c := 0;
          if LiqPreCon.IsEmpty then
          begin
            LiqPreCon.Insert;
            try
              q := TMDOQuery.Create(nil);
              q.Database := dmGestion.dbGestion;
              q.Transaction := dmGestion.trProc;
              q.SQL.Add('Select Comision, IdProveedor ');
              q.SQL.Add('From Tarjetas ');
              q.SQL.Add('Where IdTarjeta = :IdTarjeta ');
              q.ParamByName('IdTarjeta').AsInteger := IdEnt_PCL;
              q.Open;
              if q.IsEmpty then
              begin
                LiqPreCon.Cancel;
                raise EUsuario.Create('Entidad sin datos administrativos');
              end;
              p := q.FieldByName('IdProveedor').AsInteger;
              c := q.FieldByName('Comision').AsFloat;
              q.Close;
            finally
              q.Free;
            end;
            LiqPreConPrcComP.AsFloat := c;
            LiqPreConIdEntidad.AsInteger := IdEnt_PCL;
            LiqPreConFechaF.AsDateTime := Date;
            LiqPreConDesdeP.AsDateTime := edtDesPCL.Date;
            LiqPreConHastaP.AsDateTime := edtHasPCL.Date;
            if LiqPreConTipoFactura.AsInteger = PresentacionTM then
              LiqPreConNroPresConc.AsString := GetNumeroComprobante(IdBranch, '0001', RI, PresentacionTM)
            else
              LiqPreConNroPresConc.AsString := '0000-00000000';
            LiqPreConTotal.AsCurrency := 0;
            LiqPreConNeto.AsCurrency := 0;
            LiqPreConComision.AsCurrency := 0;
            LiqPreConCantItm.AsInteger := 0;
            LiqPreConIdSucursal.AsInteger := IdSuc_PCL;
            LiqPreConEntidad.AsString := cbEnt_PCL.Text+' Suc: '+cbSuc_PCL.Text;
            if GetDatosEnt(p, IdBranch, 2, Datos_Ent) then
            begin
              LiqPreConProveedor.AsInteger := Datos_Ent.IdEnt;
              LiqPreConNombreProveedor.AsString := Datos_Ent.Nombre;
            end;
            LiqPreCon.Post;
          end;
        end;

        LiqPreCon.Edit;
        LiqPreConTotal.AsCurrency := TotalPre_PCL;
        if LiqPreConPrcComP.AsFloat <> 0 then
        begin
          LiqPreConComision.AsCurrency := ((TotalPre_PCL * LiqPreConPrcComP.AsFloat) / 100);
          LiqPreConNeto.AsCurrency := TotalPre_PCL - LiqPreConComision.AsCurrency;
        end
        else begin
          LiqPreConComision.AsCurrency := 0;
          LiqPreConNeto.AsCurrency := 0;
        end;
        LiqPreConCantItm.AsInteger := TotalInc_PCL;
        LiqPreCon.Post;

        PresConc.EnableControls;
        gPCL_Movs.ColumnByName('Nombre').FooterValue := 'Totales ';
        gPCL_Movs.ColumnByName('CodTar').FooterValue := Format('%d / %d',[TotalInc_PCL, TotalEnc_PCL]);
        gPCL_Movs.ColumnByName('MontoCuota').FooterValue := Format('%m', [TotalPre_PCL]);
        if PrevRecord <> nil then
        begin
          PresConc.GotoBookmark(PrevRecord);
          PresConc.FreeBookmark(PrevRecord);
        end;
      end;
    finally
      Application.ProcessMessages;
      Haciendo_Presentacion := False;
    end;
  end;
end;

procedure TfrmGestTarMut.gPCL_MovsUpdateFooter(Sender: TObject);
begin
  gPCL_Movs.ColumnByName('Nombre').FooterValue := 'Totales ';
  gPCL_Movs.ColumnByName('CodTar').FooterValue := Format('%d / %d',[TotalInc_PCL, TotalEnc_PCL]);
  gPCL_Movs.ColumnByName('MontoCuota').FooterValue := Format('%m', [TotalPre_PCL]);
end;

procedure TfrmGestTarMut.PresConcEstado1Change(Sender: TField);
begin
  if (PresConcEstado1.AsBoolean) and    //No Incluir
     (not Marcando_Presentacion) then
  begin
    try
      Marcando_Presentacion := True;
      PresConc.Edit;
      PresConcEstado2.AsBoolean := False;
      PresConcEstado3.AsBoolean := False;
      PresConcEstadoPCL.AsInteger := 0;
    finally
      Marcando_Presentacion := False;
    end;
  end;
  if (not PresConcEstado1.AsBoolean) and
     (not PresConcEstado2.AsBoolean) and
     (not PresConcEstado3.AsBoolean) and
     (not Marcando_Presentacion) then
  begin
    try
      Marcando_Presentacion := True;
      PresConc.Edit;
      PresConcEstado1.AsBoolean := True;
      PresConcEstado2.AsBoolean := False;
      PresConcEstado3.AsBoolean := False;
      PresConcEstadoPCL.AsInteger := 0;
    finally
      Marcando_Presentacion := False;
    end;
  end;
end;

procedure TfrmGestTarMut.PresConcEstado2Change(Sender: TField);
begin
  if (PresConcEstado2.AsBoolean) and      // Pagar 1 cuota
     (not Marcando_Presentacion) then
  begin
    try
      Marcando_Presentacion := True;
      PresConc.Edit;
      PresConcEstado1.AsBoolean := False;
      PresConcEstado3.AsBoolean := False;
      PresConcEstadoPCL.AsInteger := 1;
    finally
      Marcando_Presentacion := False;
    end;
  end;
  if (not PresConcEstado1.AsBoolean) and
     (not PresConcEstado2.AsBoolean) and
     (not PresConcEstado3.AsBoolean) and
     (not Marcando_Presentacion) then
  begin
    try
      Marcando_Presentacion := True;
      PresConc.Edit;
      PresConcEstado2.AsBoolean := True;
      PresConcEstado1.AsBoolean := False;
      PresConcEstado3.AsBoolean := False;
      PresConcEstadoPCL.AsInteger := 1;
    finally
      Marcando_Presentacion := False;
    end;
  end;
end;

procedure TfrmGestTarMut.PresConcEstado3Change(Sender: TField);
begin
  if (PresConcEstado3.AsBoolean) and    //Anulada o rechazada
     (not Marcando_Presentacion) then
  begin
    try
      Marcando_Presentacion := True;
      PresConc.Edit;
      PresConcEstado1.AsBoolean := False;
      PresConcEstado2.AsBoolean := False;
      PresConcEstadoPCL.AsInteger := 2;
    finally
      Marcando_Presentacion := False;
    end;
  end;

  if (not PresConcEstado1.AsBoolean) and
     (not PresConcEstado2.AsBoolean) and
     (not PresConcEstado3.AsBoolean) and
     (not Marcando_Presentacion) then
  begin
    try
      Marcando_Presentacion := True;
      PresConc.Edit;
      PresConcEstado3.AsBoolean := True;
      PresConcEstado1.AsBoolean := False;
      PresConcEstado2.AsBoolean := False;
      PresConcEstadoPCL.AsInteger := 2;
    finally
      Marcando_Presentacion := False;
    end;
  end;
end;

procedure TfrmGestTarMut.PresConcEstadoPCLChange(Sender: TField);
begin
  UpdateTotals_PCL;
end;

procedure TfrmGestTarMut.PCL_VerMovs(E, S: Integer;  D, H: TDate);
begin
  if qVerMovPCL.Transaction.InTransaction then
    qVerMovPCL.Transaction.Commit;
  qVerMovPCL.Close;
  qVerMovPCL.ParamByName('D').AsDate := D;
  qVerMovPCL.ParamByName('H').AsDate := H;
  qVerMovPCL.ParamByName('E').AsInteger := E;
  qVerMovPCL.ParamByName('S').AsInteger := S;
  qVerMovPCL.Open;
  if not qVerMovPCL.IsEmpty then
     qVerItmPCL.Open;
end;


procedure TfrmGestTarMut.PCL_Movimientos(E, T, S: Integer; D, H: TDate);
begin
  lblCantOP_PCL.Caption := '0';
  btnSave_PCL.Enabled := False;
  btnPrn_PCL.Enabled := False;

  LiqPreCon.Close;
  PresConc.Close;
  Haciendo_Presentacion := False;

  IdFacPrn_PCL := NoEncontrado;
  IdSucPrn_PCL := NoEncontrado;
  IdPtoPrn_PCL := NoEncontrado;

  TotalEnc_PCL := 0;
  TotalInc_PCL := 0;
  TotalPre_PCL := 0;

  if D <= H then
  begin
    if cbxIncConciliados.State = cbChecked then
      PresConc.Params.ParamByName('EstCt').AsInteger := 2
    else
      PresConc.Params.ParamByName('EstCt').AsInteger := 0;
    PresConc.Params.ParamByName('IdTar').AsInteger := IdEnt_PCL;
    PresConc.Params.ParamByName('IdSuc').AsInteger := IdSuc_PCL;
    PresConc.Params.ParamByName('Desde').AsDate := edtDesPCL.Date;
    PresConc.Params.ParamByName('Hasta').AsDate := edtHasPCL.Date;
    PresConc.Open;
    if (not PresConc.IsEmpty) then
    begin
      btnSave_PCL.Enabled := True;
    end
    else begin
      ShowMessage('No hay movimientos');
      cbSuc_PCL.SetFocus;
    end;
  end
  else begin
    ShowMessage('Periodo mal ingresado.-');
    cbSuc_PCL.SetFocus;
  end;
  Application.ProcessMessages;
end;

procedure TfrmGestTarMut.btnBusConsClick(Sender: TObject);
begin
  PCL_VerMovs(IdEnt_Con, IdSuc_Con, edtDesdeC.Date, edtHastaC.Date);
end;

procedure TfrmGestTarMut.btnBusMovPCLClick(Sender: TObject);
begin
  PCL_Movimientos(TipOp_PCL, IdEnt_PCL, IdSuc_PCL, edtDesPCL.Date, edtHasPCL.Date);
end;

procedure TfrmGestTarMut.gPCL_MovsDblClick(Sender: TObject);
begin
  if Up_Case(gPCL_Movs.SelectedField.FieldName) = Up_Case('NroFactura') then
  begin
    Get_FacV(PresConcIdFactura.AsInteger,
             PresConcIdSucursal.AsInteger,
             PresConcIdPuntoVenta.AsInteger);
  end;

  if Up_Case(gPCL_Movs.SelectedField.FieldName) = Up_Case('CodTar') then
  begin
    Get_ModT(PresConcIdFactura.AsInteger, PresConcIdSucursal.AsInteger,
             PresConcIdTarjeta.AsInteger, PresConcIdMovCred.AsInteger);
  end;
end;

procedure TfrmGestTarMut.gPCL_MovsCalcCellColors(Sender: TObject; Field: TField;
                  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  Case PresConcEstadoPCL.AsInteger of
    1: AFont.Color := clBlack;
    2: AFont.Color := clBlue;
    3: AFont.Color := clGreen;
    else AFont.Color := clRed;
  end;
end;

procedure TfrmGestTarMut.gPCL_MovsExit(Sender: TObject);
begin
  if PresConc.State in [dsEdit] then
    PresConc.Post;
end;

procedure TfrmGestTarMut.edtComprobantePCLExit(Sender: TObject);
var
  Part1, Part2: Integer;
begin
  try
    Part1 := 0;
    Part2 := 0;
    try
      Part1:= StrToInt(Trim(Copy(edtComprobantePCL.Text,1,Pos('-',edtComprobantePCL.Text)-1)));
    except
      on E: EConvertError do
      begin
        edtComprobantePCL.SetFocus;
        edtComprobantePCL.SelStart := 0;
        edtComprobantePCL.SelLength := 3;
        raise EUsuario.Create('Error en el Pto. de Venta del comprobante');
      end;
    end;

    try
      Part2 := StrToInt(Trim(Copy(edtComprobantePCL.Text,Pos('-',edtComprobantePCL.Text)+1,Length(edtComprobantePCL.Text))));
    except
      on E: EConvertError do
      begin
        edtComprobantePCL.SetFocus;
        edtComprobantePCL.SelStart := 5;
        edtComprobantePCL.SelLength := 8;
        raise EUsuario.Create('Error en el Nº de comprobante');
      end;
    end;
  finally
    if not (LiqPreCon.State in dsEditModes) then
      LiqPreCon.Edit;
    LiqPreConNroPresConc.AsString := Format('%.4d-%.8d',[Part1, Part2]);
  end;
end;

procedure TfrmGestTarMut.edtTotalPCLKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmGestTarMut.edtRetIBKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmGestTarMut.gPCL_MovsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) then
  begin
    Case Key of
      VK_ESCAPE: cbEmpresaPCL.SetFocus;
      VK_F5: Calculadora(Handle);
    end;
  end;
end;

procedure TfrmGestTarMut.Save_PCL;
Var
  q: TMDOQuery;
begin
  if (LiqPreCon.State in [dsEdit, dsInsert]) then
    LiqPreCon.Post;

  if LiqPreConIdEmpresa.AsInteger = 0 then
  begin
    cbEmpresaPCL.SetFocus;
    ShowMessage('Se debe asignar un Empresa');
  end;

  if (not LiqPreCon.IsEmpty) And
     (LiqPreConCantItm.AsInteger > 0) And
     (Application.MessageBox('¿Graba la Operación?', 'GRABAR',
                  MB_ICONEXCLAMATION + MB_YESNO) = IDYES) then
  begin
    IdFacPrn_PCL := NoEncontrado;
    IdSucPrn_PCL := NoEncontrado;
    IdPtoPrn_PCL := NoEncontrado;
    Llenar_Presentacion;

    if (Factura.TipoFactura in [LiquidacionC, LiquidacionA]) then
    begin
      if not (DoPago(DatosPago, False) in [apPago]) then
      begin
        gPCL_Movs.UnselectAll;
        Exit;
      end;
    end;

    try
      if dmSaveFile.GrabarComprobanteEgresos(DatosPago, Factura, ItemsFiscal) then
      begin
        ShowMessage('La Operación fue correctamente grabada');
        btnPrn_PCL.Enabled := True;
        IdFacPrn_PCL := Factura.IdFactura;
        IdSucPrn_PCL := Factura.IdSucursal;
        IdPtoPrn_PCL := Factura.IdPuntoVenta;
      end;
    except
      on E:Exception do
        raise EUsuario('Error '+E.Message);
    end;

    PresConc.First;
    While not PresConc.Eof do
    begin
      if PresConcEstadoPCL.AsInteger > 0 then
      begin
        PresConc.Edit;
        PresConcIDRECIBO.AsInteger  := IdFacPrn_PCL;
        PresConcIDSUCREC.AsInteger  := IdSucPrn_PCL;
        PresConcNRORECPAGO.AsString := Factura.NroFactura;
        PresConc.Post;
      end;
      PresConc.Next;
    end;
  end
  else begin
    ShowMessage('No Hay movimientos seleccionados.-');
  end;
end;

procedure TfrmGestTarMut.CalculoDiscrimChange(Sender: TField);
begin
  Calculo_Discriminacion_PCL;
end;

procedure TfrmGestTarMut.LiqPreConNewRecord(DataSet: TDataSet);
begin
  LiqPreConFechaF.AsDateTime := edtHasPCL.Date;
  LiqPreConPeriodo.AsDateTime:= edtHasPCL.Date;
  LiqPreConIdSucursal.AsInteger := IdSuc_PCL;
  LiqPreConDesdeP.AsDateTime := edtDesPCL.Date;
  LiqPreConHastaP.AsDateTime := edtHasPCL.Date;
  LiqPreConCantItm.AsInteger := 0;
  LiqPreConTotal.AsCurrency := 0;
  LiqPreConRetIva.AsCurrency := 0;
  LiqPreConMtoIvaAlc1.AsCurrency := 0;
  LiqPreConMtoIvaAlc2.AsCurrency := 0;
  LiqPreConMtoIvaOAlc.AsCurrency := 0;
  LiqPreConNoComputables.AsCurrency := 0;
  LiqPreConNeto.AsCurrency := 0;
  LiqPreConRetGan.AsCurrency := 0;
  LiqPreConRetIBt.AsCurrency := 0;
  LiqPreConRetLH.AsCurrency := 0;
  LiqPreConSubTotal.AsCurrency := 0;
  LiqPreConComision.AsCurrency := 0;
  LiqPreConPrcComP.AsFloat := 0;
  LiqPreConPrcRetIBt.AsFloat := 0;
  LiqPreConPrcRetLH.AsFloat := 0;
end;

procedure TfrmGestTarMut.LiqPreConProveedorValidate(Sender: TField);
begin
  if GetDatosEnt(LiqPreConProveedor.AsInteger, IdBranch, 2, Datos_Ent) then
  begin
    LiqPreConNombreProveedor.AsString := Datos_Ent.Nombre+' '+Datos_Ent.DetIva+' '+
                                         Datos_Ent.DetDoc+' '+Datos_Ent.Documento;
    LiqPreConTipoIva.AsInteger := Datos_Ent.TipoIva;
    case Datos_Ent.TipoIva of
      RI: begin
            if TipOp_PCL = 1 then
              LiqPreConTipoFactura.AsInteger := LiquidacionA
            else
              LiqPreConTipoFactura.AsInteger := PresentacionTM;
            HabilitarTotalesPCL(True);
          end;
      RNI, Ex, RMT: begin
            if TipOp_PCL = 1 then
              LiqPreConTipoFactura.AsInteger := LiquidacionC
            else
              LiqPreConTipoFactura.AsInteger := PresentacionTM;
            HabilitarTotalesPCL(False);
          end;
    end;

    if Datos_Ent.PERCEPCIONES then
    begin
      LiqPreConNroRegPrc.AsString := Datos_Ent.NROREGPERCP;
      edtNroPerPCL.Enabled := True;
      edtAlcPerPCL.Enabled := True;
      edtPercepPCL.Enabled := True;
    end
    else begin
      LiqPreConNroRegPrc.AsString := Vacio;
      edtNroPerPCL.Enabled := False;
      edtAlcPerPCL.Enabled := False;
      edtPercepPCL.Enabled := False;
    end;

    if (Datos_Ent.MONTORETENCION_B > 0) then
    begin
      edtRetIBtPCL.Enabled := True;
      LiqPreConPrcRetIBt.AsFloat:= Datos_Ent.PRCRETENCION_B1;
      edtRetLHPCL.Enabled := True;
      LiqPreConPrcRetLH.AsFloat := Datos_Ent.PRCRETENCION_B2;
    end
    else begin
      LiqPreConPrcRetIBt.AsFloat := 0;
      LiqPreConPrcRetLH.AsFloat := 0;
      edtRetIBtPCL.Enabled := False;
      edtRetLHPCL.Enabled := False;
    end;
  end
  else
    raise EUsuario.Create('El Proveedor asignado a la entidad no es valido. O no esta asignado.');
end;

procedure TfrmGestTarMut.Llenar_Presentacion;
var
  Actual,
  IdArt, T_Ent: Integer;
  q: TMDOQuery;
begin
  IdArt := 0;
  T_Ent := 0;
  FillChar(DatosPago, SizeOf(TDatosPagos), 0);
  FillChar(Factura, SizeOf(TFactura), 0);
  FillChar(ItemsFiscal, SizeOf(TBody_Fiscal), 0);
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.dbGestion;
    q.Transaction := dmGestion.trProc;
    q.SQL.Add('Select IDARTCOBMUTTAR as IdArt ');
    q.SQL.Add('From DatosSis ');
    q.SQL.Add('Where IdEmpresa = :IdEmp ');
    q.ParamByName('IdEmp').AsInteger := LiqPreConIdEmpresa.AsInteger;
    q.Open;
    IdArt := q.FieldByName('IdArt').AsInteger;
    q.Close;
  finally
    q.Free;
  end;

  if (IdArt > 0) And
     (GetDatosEnt(LiqPreConProveedor.AsInteger, IdBranch, 2, Datos_Ent)) then
  begin
    DatosPago.TotalPagos := LiqPreConTotal.AsCurrency - LiqPreConComision.AsCurrency;
    DatosPago.IdEntidad  := Datos_Ent.IdEnt;
    DatosPago.IdEmpresa  := LiqPreConIdEmpresa.AsInteger;
    DatosPago.NomEntidad := LiqPreConNombreProveedor.AsString;
    DatosPago.NroComprobante := LiqPreConNroPresConc.AsString;
    DatosPago.TipoOperacion := uTools.PreLiq;
    DatosPago.FechaOp := LiqPreConFechaF.AsDateTime;
    DatosPago.FechaOr := LiqPreConFechaF.AsDateTime;
    DatosPago.TipoComprobante := LiqPreConTipoFactura.AsInteger;

    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.trProc;
      q.SQL.Add('Select TipoEnt ');
      q.SQL.Add('From Tarjetas ');
      q.SQL.Add('Where IdTarjeta = :IdTar ');
      q.ParamByName('IdTar').AsInteger := IdEnt_PCL;
      q.Open;
      T_Ent := q.FieldByName('TipoEnt').AsInteger;
      q.Close;
    finally
      q.Free;
    end;

    with Factura do
    begin
      TipoOp := uTools.Gastos;
      TipoOper := fcLiqPre; // Presentacion tarjetas mutuales
      TipoFactura:= LiqPreConTipoFactura.AsInteger;
      NroFactura := LiqPreConNroPresConc.AsString;
      CaiProv := Cero;
      IdSucursal := IdBranch;
      IdPuntoVenta := IdSalesPoint;
      IdEmpresa := LiqPreConIdEmpresa.AsInteger;
      Entidad := Datos_Ent.IdEnt;
      IdTarjeta := IdEnt_PCL;
      TipoAj := T_Ent;
      IdPeriodo := 0;
      PuntoVta := 0;
      IdCompRef := IdSuc_PCL;
      TipoComRef := Falso;
      Periodo := LiqPreConPeriodo.AsDateTime;
      FechaF  := LiqPreConFechaF.AsDateTime;
      FechaLD := LiqPreConDesdeP.AsDateTime;
      FechaLH := LiqPreConHastaP.AsDateTime;
      TipoIva := Datos_Ent.TipoIva;

      NoComputables:= LiqPreConNoComputables.AsCurrency;
      IvaAlicuota1 := LiqPreConMtoIvaAlc1.AsCurrency;
      IvaAlicuota2 := LiqPreConMtoIvaAlc2.AsCurrency;
      IvaOtAlc := LiqPreConMtoIvaOAlc.AsCurrency;
      Neto  := LiqPreConNeto.AsCurrency;
      Total := LiqPreConComision.AsCurrency;
      AlcPercep:= LiqPreConAlcPercep.AsCurrency;
      PPCuenta := LiqPreConRetIva.AsCurrency;
      PrcDscto := LiqPreConPrcComP.AsFloat;     // El descuento va el % Comision
      Descuento:= LiqPreConTotal.AsCurrency;    // El descuento va la $ Comision
      RetGan := LiqPreConRetGan.AsCurrency;
      RetIBt := LiqPreConRetIBt.AsCurrency;
      RetLH  := LiqPreConRetLH.AsCurrency;
      Detalle:= LiqPreConDetalle.AsString;
      CantArtic:= LiqPreConCantItm.AsInteger;
      Comision := LiqPreConComision.AsCurrency;
      Empleado := Usuario;
      NroLiquidacion := 0;
    end;

    PresConc.First;
    Actual := 0;
    While not PresConc.Eof do
    begin
      if PresConcEstadoPCL.AsInteger > 0 then
      begin
        Inc(Actual);
        With ItemsFiscal[Actual] do
        begin
          IdItem := Actual;
          IdPuntoVenta := IdSalesPoint;
          IdSucursal := Factura.IdSucursal;
          IdProducto := IdArt;
          CodProd := IntToStr(IdArt);
          IdAlcIva := PresConcIDCLIENTE.AsInteger;
          IdSector := IdSuc_PCL;
          AlicuotaIva := 0;
          AlicuotaIB := 0;
          Talle := PresConcIDMOVCRED.AsInteger;
          DescProd := '';
          Color := Vacio;
          FechaF := Factura.FechaF;
          Cantidad := PresConcIdCuota.AsInteger;
          Cuota := PresConcEstadoPCL.AsInteger;
          EnRemito := Falso;
          EnPedido := Falso;
          IdOrdPedido := PresConcIDFACTURA.AsInteger;
          IdItmPedido := PresConcIDSUCURSAL.AsInteger;
          Bonificacion := IdSuc_PCL;
          Descuento := PresConcEstadoPCL.AsInteger;
          PrecioNetoT := PresConcNROCUOTA.AsInteger;
          PrecioNetoU := 0;
          PrecioPublico:= 0;
          PrecioFinal := PresConcMontoCuota.AsCurrency;
          PrecioTotal := PresConcMontoACob.AsCurrency;
          IdMarkUp := IdEnt_PCL;
          CoefMarkUp := 0;
          TipoImpInt := 0;
          IdFacDomRem := 0;
          IdSucDomRem := 0;
          IdPtoDomRem := 0;
          IdItmDomRem := 0;
          Exento := PresConcIDFACTURA.AsInteger;
          MtoIva := PresConcIDSucursal.AsInteger;
          NoComputable := PresConcIDPuntoVenta.AsInteger;
          TIvaEnt := 0;
          Servicio := True;
          EsKit := False;
        end;
      end;
      PresConc.Next;
    end;
  end
  else begin
    raise EUSuario.Create('La entidad no tiene definidos los datos administrativos.-');
  end;
end;

procedure TfrmGestTarMut.btnSave_PCLClick(Sender: TObject);
begin
  Save_PCL;
end;

procedure TfrmGestTarMut.btnCancel_PCLClick(Sender: TObject);
begin
  gPCL_Movs.UnselectAll;
  PCL_Movimientos(0, IdEnt_PCL, IdSuc_PCL, edtDesPCL.Date, edtHasPCL.Date);
end;

procedure TfrmGestTarMut.btnBusPagClick(Sender: TObject);
begin
  CanOp_Pag := 0;
  qPagoMutual.Close;
  qPagoMutual.ParamByName('IdEntM').AsInteger := IdEnt_Pag;
  qPagoMutual.ParamByName('Estado').AsInteger := 0;
  qPagoMutual.ParamByName('IdSucM').AsInteger := IdSuc_Pag;
  qPagoMutual.Open;
end;

procedure TfrmGestTarMut.btnExpPagClick(Sender: TObject);
begin
  if not qPagoMutual.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qPagoMutual;
    dmGestion.IyC_Exp.Execute;
  end;
end;

procedure TfrmGestTarMut.qPagoMutualAfterOpen(DataSet: TDataSet);
begin
  if PagoMutual.Active then
    PagoMutual.EmptyDataSet
  else
    PagoMutual.CreateDataSet;
end;

procedure TfrmGestTarMut.qPagoMutualTIPOOPGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  try
    Text := GetText_Comprobante(qPagoMutualTIPOOP.AsInteger, 2);
  except
    Text := '--';
  end;
end;

procedure TfrmGestTarMut.qVerMovPCLESTADOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if qVerMovPCLESTADO.AsInteger = 1 then
    Text := 'P'
  else
    Text := ' '
end;

procedure TfrmGestTarMut.Llenar_ReciboMutual;
var
  Actual,
  i, T_Ent: Integer;
  q: TMDOQuery;
begin
  (*
       Select C.IdMovCred, C.IdSucursal, C.NroCuota, C.NroRecPago,
              C.FechaP, C.IdCliente, C.IdRecibo, C.IdSucRec,
              C.IdPuntoRec, C.Estado, C.MontoCuota, F.TipoFactura,
              F.NroFactura, F.FechaF, F.Proveedor, P.Nombre,
              P.Direccion, P.Localidad, P.Provincia, P.TipoIva,
              P.TipoDoc, P.Documento, T.IdTarjeta, T.TipoEnt
       From MovTar M
       Join MovCuotas C
         on C.IdMovCred = M.IdMov And
            C.IdSucursal = M.IdSucursal And
            C.IdCliente = M.IdCliente
       Join FacCom F
         on F.IdFactura = C.IdRecibo And
            F.IdSucursal = C.IdSucRec
       Join Proveedores P
         on P.IdProveedor = F.Proveedor And
            P.IdSucursal = 1
       Join Tarjetas T
         on T.IdTarjeta = M.IdTarjeta
       Where (C.FechaP is not Null) And
             (C.FechaIC is null) And
             (C.Estado = 1) And
             (T.TipoEnt in (1,2)) And
             (F.TipoFactura in (55,56)) And
             (F.State = 0) And
             (F.IdEmpresa = :IdEmpresa) And
             (F.IdCompRef = :Idsucursal)

  *)
  FillChar(DatosPago, SizeOf(TDatosPagos), 0);
  FillChar(Factura, SizeOf(TFactura), 0);
  FillChar(ItemsFiscal, SizeOf(TBody_Fiscal), 0);

  if (GetDatosEnt(PagoMutualIdProv.AsInteger, IdBranch, 2, Datos_Ent)) then
  begin
    DatosPago.TotalPagos := PagoMutualTotLiqui.AsCurrency;
    DatosPago.IdEntidad  := Datos_Ent.IdEnt;
    DatosPago.IdEmpresa  := PagoMutualIdEmpresa.AsInteger;
    DatosPago.NroComprobante := PagoMutualNroRecibo.AsString;
    DatosPago.TipoOperacion := uTools.PreLiq;
    DatosPago.FechaOp := PagoMutualFechaPag.AsDateTime;
    DatosPago.FechaOr := PagoMutualFechaPag.AsDateTime;
    if Datos_Ent.TipoIva = RI then
      DatosPago.TipoComprobante := LiquidacionA
    else
      DatosPago.TipoComprobante := LiquidacionC;
    DatosPago.Aplicar_RIB := False;

    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.trProc;
      q.SQL.Add('Select TipoEnt ');
      q.SQL.Add('From Tarjetas ');
      q.SQL.Add('Where IdTarjeta = :IdTar ');
      q.ParamByName('IdTar').AsInteger := IdEnt_Pag;
      q.Open;
      T_Ent := q.FieldByName('TipoEnt').AsInteger;
      q.Close;
    finally
      q.Free;
    end;

    with Factura do
    begin
      TipoOp := uTools.Cobros;
      TipoOper := fcLiqPre; // Presentacion tarjetas mutuales
      TipoFactura:= DatosPago.TipoComprobante;
      NroFactura := PagoMutualNroRecibo.AsString;
      CaiProv := Cero;
      IdSucursal := IdBranch;
      IdPuntoVenta := IdSalesPoint;
      IdEmpresa := PagoMutualIdEmpresa.AsInteger;
      Entidad := Datos_Ent.IdEnt;
      TipoIva := Datos_Ent.TipoIva;
      TipoIvaStr := Datos_Ent.DetIva;
      TipoDoc := Datos_Ent.TipoDoc;
      TipoDocStr := Datos_Ent.DetDoc;
      NroDocumento := Datos_Ent.Documento;
      IdTarjeta := IdEnt_Pag;
      TipoAj := T_Ent;
      IdPeriodo := IdSuc_Pag;
      PuntoVta  := 0;
      IdCompRef := IdSuc_Pag;
      CompRef := PagoMutualNCertRet.AsString;
      TipoComRef := Verdadero;
      Periodo := PagoMutualFechaPag.AsDateTime;
      FechaF  := PagoMutualFechaPag.AsDateTime;
      FechaLD := PagoMutualFechaPag.AsDateTime;
      FechaLH := PagoMutualFechaPag.AsDateTime;
      NoComputables:= 0;
      IvaAlicuota1 := 0;
      IvaAlicuota2 := 0;
      IvaOtAlc := 0;
      Neto  := PagoMutualTotComi.AsCurrency;
      Total := PagoMutualTotComi.AsCurrency;
      AlcPercep:= 0;
      PPCuenta := 0;
      PrcDscto := PagoMutualTotNeto.AsCurrency;
      Descuento:= PagoMutualTotLiqui.AsCurrency;
      RetGan := 0;
      RetIBt := PagoMutualTotRetIB.AsCurrency;
      RetLH  := PagoMutualTotRetLH.AsCurrency;
      Detalle:= '';
      CantArtic:= CanOp_Pag;
      Comision := PagoMutualTotComi.AsCurrency;
      Empleado := Usuario;
      NroLiquidacion := 0;
    end;

    qPagoMutual.First;
    if DetPagMut.Active then
      DetPagMut.EmptyDataSet
    else
      DetPagMut.CreateDataSet;

    Actual := 0;
    for i := 0 to gPagoMutual.SelectedList.Count-1 do
    begin
      gPagoMutual.DataSource.DataSet.GotoBookmark(gPagoMutual.SelectedList.Items[i]);
      if qPagoMutual.Locate(qPagoMutualIDLIQUIDACION.FieldName,
                            gPagoMutual.DataSource.DataSet.FieldByName('IDLIQUIDACION').AsInteger, []) then
      begin
        Inc(Actual);
        With ItemsFiscal[Actual] do
        begin
          DetPagMut.Append;
          DetPagMutIdLiquidacion.AsInteger := qPagoMutualIDLIQUIDACION.AsInteger;
          DetPagMutNomPro.AsString := Datos_Ent.Nombre;
          DetPagMutFechaOP.AsDateTime := qPagoMutualFECHA.AsDateTime;
          DetPagMutCantOP.AsInteger := qPagoMutualCANTOP.AsInteger;
          DetPagMutTotal.AsCurrency := qPagoMutualTOTAL.AsCurrency;
          DetPagMutNetoOP.AsCurrency := qPagoMutualNETO.AsCurrency;
          DetPagMutRetenIB.AsCurrency := qPagoMutualRETENIB.AsCurrency;
          DetPagMutRetenLH.AsCurrency := qPagoMutualRETENLH.AsCurrency;
          DetPagMutTarjeta.AsString := qPagoMutualTARJETA.AsString;
          DetPagMutComision.AsCurrency := qPagoMutualCOMISION.AsCurrency;
          DetPagMutNroPresent.AsString := qPagoMutualNROOPERACION.AsString;
          DetPagMut.Post;

          IdItem := Actual;
          IdPuntoVenta := IdSalesPoint;
          IdSucursal := Factura.IdSucursal;
          IdProducto := qPagoMutualIDENTIDAD.AsInteger;
          CodProd := IntToStr(qPagoMutualIDENTIDAD.AsInteger);
          IdAlcIva := qPagoMutualIDLIQUIDACION.AsInteger;
          AlicuotaIva := 0;
          IdAlcIB := qPagoMutualIDSUCOPER.AsInteger;;
          AlicuotaIB := 0;
          Talle := 0;
          IdSector := 0;
          DescProd := '';
          Color := Vacio;
          FechaF := qPagoMutualFECHA.AsDateTime;
          Cantidad := qPagoMutualCANTOP.AsInteger;
          Cuota := IdSuc_Pag;
          EnRemito := Falso;
          EnPedido := Falso;
          IdOrdPedido := 0;
          IdItmPedido := 0;
          Bonificacion := 0;
          Descuento :=  0;
          PrecioNetoT := qPagoMutualNETO.AsCurrency;
          PrecioNetoU := 0;
          PrecioPublico:= 0;
          PrecioFinal := qPagoMutualCOMISION.AsCurrency;
          PrecioTotal := qPagoMutualTOTAL.AsCurrency;
          IdFacDomRem := 0;
          IdSucDomRem := 0;
          IdPtoDomRem := 0;
          IdItmDomRem := 0;
          IdMarkUp := 0;
          CoefMarkUp := 0;
          TipoImpInt := 0;
          Exento := qPagoMutualIDFACTURA.AsInteger;
          MtoIva := qPagoMutualIDSucursal.AsInteger;
          NoComputable := qPagoMutualIDPUNTOVENTA.AsInteger;
          TIvaEnt := 0;
          Servicio := True;
          EsKit := False;
        end;
      end;
    end;
  end
  else begin
    raise EUSuario.Create('La entidad no tiene definidos los datos administrativos.-');
  end;
end;

procedure TfrmGestTarMut.PagoMutualNewRecord(DataSet: TDataSet);
begin
  PagoMutualNroRecibo.AsString  := '0000-00000000';
  PagoMutualFechaPag.AsDateTime := Date;
  PagoMutualTotLiqui.AsCurrency := 0;
  PagoMutualTotRetIB.AsCurrency := 0;
  PagoMutualTotRetLH.AsCurrency := 0;
  PagoMutualTotComi.AsCurrency  := 0;
  PagoMutualTotNeto.AsCurrency  := 0;
  PagoMutualIdProv.AsInteger := qPagoMutualIDPROVEEDOR.AsInteger;
  PagoMutualNomPro.AsString  := qPagoMutualNOMBRE.AsString;
  PagoMutualIdEntM.AsInteger := qPagoMutualIDENTIDAD.AsInteger;
  PagoMutualIdSucP.AsInteger := qPagoMutualIDSUCOPER.AsInteger;
  PagoMutualIdEmpresa.AsInteger := qPagoMutualIDEMPRESA.AsInteger;
end;

procedure TfrmGestTarMut.qPagoMutualIDSUCOPERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  try
    Text := Get_DetSuc(qPagoMutualIDSUCOPER.AsInteger, 2);
  except
    Text := '--';
  end;
end;

procedure TfrmGestTarMut.gPagoMutualDblClick(Sender: TObject);
begin
  Get_FacC(qPagoMutualIDFACTURA.AsInteger,
           qPagoMutualIDSUCURSAL.AsInteger,
           qPagoMutualIDPUNTOVENTA.AsInteger);
end;

procedure TfrmGestTarMut.gPagoMutualKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) then
  begin
    Case Key of
       VK_ESCAPE: begin
         if not PagoMutual.IsEmpty then
           edtNroRecPag.SetFocus
         else
           cbSucPagM.SetFocus;
       end;
       VK_F5: Calculadora(Handle);
    end;
  end;
end;

procedure TfrmGestTarMut.gPagoMutualMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
begin
  if PagoMutual.IsEmpty then
    PagoMutual.Append
  else
    PagoMutual.Edit;

  if Selecting then
  begin
    PagoMutualTotLiqui.AsCurrency := PagoMutualTotLiqui.AsCurrency + qPagoMutualTOTAL.AsCurrency;
    PagoMutualTotRetIB.AsCurrency := PagoMutualTotRetIB.AsCurrency + qPagoMutualRETENIB.AsCurrency;
    PagoMutualTotRetLH.AsCurrency := PagoMutualTotRetLH.AsCurrency + qPagoMutualRETENLH.AsCurrency;
    PagoMutualTotComi.AsCurrency := PagoMutualTotComi.AsCurrency + qPagoMutualCOMISION.AsCurrency;
    PagoMutualTotNeto.AsCurrency := PagoMutualTotNeto.AsCurrency + qPagoMutualNETO.AsCurrency;
    Inc(CanOp_Pag);
  end
  else begin
    if (PagoMutualTotLiqui.AsCurrency > 0) then
      PagoMutualTotLiqui.AsCurrency := PagoMutualTotLiqui.AsCurrency - qPagoMutualTOTAL.AsCurrency;
    if (PagoMutualTotRetIB.AsCurrency > 0) then
      PagoMutualTotRetIB.AsCurrency := PagoMutualTotRetIB.AsCurrency - qPagoMutualRetenIB.AsCurrency;
    if (PagoMutualTotRetLH.AsCurrency > 0) then
      PagoMutualTotRetLH.AsCurrency := PagoMutualTotRetLH.AsCurrency - qPagoMutualRetenLH.AsCurrency;
    if (PagoMutualTotComi.AsCurrency > 0) then
      PagoMutualTotComi.AsCurrency := PagoMutualTotComi.AsCurrency - qPagoMutualCOMISION.AsCurrency;
    if (PagoMutualTotNeto.AsCurrency > 0) then
      PagoMutualTotNeto.AsCurrency := PagoMutualTotNeto.AsCurrency - qPagoMutualNETO.AsCurrency;
    Dec(CanOp_Pag);
  end;

  if PagoMutual.State in dsEditModes then
    PagoMutual.Post;
  lblCantOP.Caption := Format('Nº OP %d ', [CanOp_Pag]);
  Application.ProcessMessages;
end;

procedure TfrmGestTarMut.Save_RecPago;
begin
  if (not PagoMutual.IsEmpty) And
     (CanOp_Pag > 0) And
     (Application.MessageBox('¿Graba el Recibo de Cobro?', 'Mutuales', MB_ICONEXCLAMATION + MB_YESNO) = IDYES) then
  begin
    if (PagoMutual.State in [dsEdit, dsInsert]) then
      PagoMutual.Post;
    Llenar_ReciboMutual;

    if DoPago(DatosPago, False) in [apPago] then
    begin
      if dmSaveFile.GrabarComprobanteEgresos(DatosPago, Factura, ItemsFiscal) then
      begin
        ShowMessage('El recibo fue correctamente grabado.-');
        if PagoMutual.IsEmpty then
          PagoMutual.Append
        else
          PagoMutual.Edit;
        if (not DetPagMut.IsEmpty) And
           (Application.MessageBox('¿Imprime un resumen del Recibo de Cobro?', 'Mutuales', MB_ICONEXCLAMATION + MB_YESNO) = IDYES) then
        begin
          lblTitPagMut1.Caption := OwnerName;
          lblTitPagMut2.Caption := Format('%s   %s ', [Factura.NroFactura, DateToStr(Factura.FechaF)]);
          rpRecPagoMut.Print;
        end;
      end;
    end;
  end;
end;

procedure TfrmGestTarMut.btnCancelPagoClick(Sender: TObject);
begin
  gPagoMutual.UnselectAll;
  if PagoMutual.IsEmpty then
    PagoMutual.Append
  else
    PagoMutual.Edit;
end;

procedure TfrmGestTarMut.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGestTarMut.btnSavePagoClick(Sender: TObject);
begin
  Save_RecPago;
end;

//*****************************************************************************
//                          FIN CONCILIACION/PRESENTACIONES
//*****************************************************************************

//******************************************************************************
//
//******************************************************************************

procedure TfrmGestTarMut.gCoeficientesKeyPress(Sender: TObject; var Key: Char);
begin
  if (gCoeficientes.SelectedField.DataType in [ftFloat, ftCurrency, ftBCD]) and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

procedure TfrmGestTarMut.gConsPCLDblClick(Sender: TObject);
begin
  Get_FacC(qVerMovPCLIDFACTURA.AsInteger,
           qVerMovPCLIDSUCURSAL.AsInteger,
           qVerMovPCLIDPUNTOVENTA.AsInteger);
end;

procedure TfrmGestTarMut.gItemsPCLDblClick(Sender: TObject);
begin
  try
    Get_ModT(qVerItmPCLEXENTO.AsInteger,
             qVerItmPCLMTOIVA.AsInteger,
             qVerMovPCLIdEntTarMut.AsInteger,
             qVerItmPCLTalle.AsInteger);
  except
    ShowMessage('No Encontrado');
  end;
end;

procedure TfrmGestTarMut.TarPlanCalcFields(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if TarPlanIdSucursal.AsInteger = 0 then
    TarPlanDetSuc.AsString := 'Todas'
  else begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.trProc;
      q.SQL.Add('Select NombreSuc ');
      q.SQL.Add('From Sucursales ');
      q.SQL.Add('Where IdSucursal = :IdSuc ');
      q.ParamByName('IdSuc').AsInteger := LiqPreConIdEmpresa.AsInteger;
      q.Open;
      TarPlanDetSuc.AsString := q.FieldByName('NombreSuc').AsString;
      q.Close;
    finally
      q.Free;
    end;
  end;
end;

procedure TfrmGestTarMut.TarPlanNewRecord(DataSet: TDataSet);
begin
  TarPlanIdTarjeta.AsInteger := TarjetasIdTarjeta.AsInteger;
  TarPlanIdSucursal.AsInteger := IdBranch;
  TarPlanNroCuota.AsInteger := 1;
  TarPlanMAXDCTO.AsFloat := 0;
  TarPlanMAXDCTOII.AsFloat := 0;
  TarPlanCOEFPLAN.AsFloat := 0;
end;

procedure TfrmGestTarMut.pcTarjetasMutualesTabClick(Sender: TObject);
begin
  if pcTarjetasMutuales.ActivePage = tsEntFinancieras then
    gCoeficientes.RefreshDisplay;
end;

procedure TfrmGestTarMut.btnImpCoefTClick(Sender: TObject);
begin
  try
    qLstCoefTar.Open;
    qLstCoefTar.First;
    lblTitulo1.Caption := 'Coeficientes de cuotas para Tarjetas y Mutuales por sucursal';
    lblTitulo2.Caption := OwnerName;
    rpCoefTar.Print;
  finally
    qLstCoefTar.Close;
  end;
end;

procedure TfrmGestTarMut.lblDetSucGetText(Sender: TObject; var Text: String);
begin
  if Trim(qLstCoefTarNOMBRESUC.AsString) = Vacio then
    Text := 'TODAS'
  else
    Text := qLstCoefTarNOMBRESUC.AsString;
end;

procedure TfrmGestTarMut.edtNomEntKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmGestTarMut.edtNroRecPagExit(Sender: TObject);
var
  Part1, Part2: Integer;
begin
  try
    Part1 := 0;
    Part2 := 0;
    try
      Part1:= StrToInt(Trim(Copy(edtNroRecPag.Text,1,Pos('-',edtNroRecPag.Text)-1)));
    except
      on E: EConvertError do
      begin
        edtNroRecPag.SetFocus;
        edtNroRecPag.SelStart := 0;
        edtNroRecPag.SelLength := 3;
        raise EUsuario.Create('Error en el Pto. de Venta del comprobante');
      end;
    end;

    try
      Part2 := StrToInt(Trim(Copy(edtNroRecPag.Text,Pos('-',edtNroRecPag.Text)+1,Length(edtNroRecPag.Text))));
    except
      on E: EConvertError do
      begin
        edtNroRecPag.SetFocus;
        edtNroRecPag.SelStart := 5;
        edtNroRecPag.SelLength := 8;
        raise EUsuario.Create('Error en el Nº de comprobante');
      end;
    end;
  finally
    if not (PagoMutual.State in dsEditModes) then
      PagoMutual.Edit;
    PagoMutualNroRecibo.AsString := Format('%.4d-%.8d',[Part1, Part2]);
  end;
end;

procedure TfrmGestTarMut.edtNroRecPagKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmGestTarMut.edtLimiteVtaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmGestTarMut.TarjetasAfterInsert(DataSet: TDataSet);
begin
  AltaEnt := True;
end;

procedure TfrmGestTarMut.TarjetasAfterPost(DataSet: TDataSet);
begin
  IdProv := 0;
  if TarPlan.State in dsEditModes then
    TarPlan.Post;
  try
    IdTarAct := TarjetasIDTARJETA.AsInteger;
    try
      if Tarjetas.ApplyUpdates(0) > 0 then
        Abort;
      qTarjetas.Transaction.Commit;
    except
      on E:Exception do
      begin
        qTarjetas.Transaction.Rollback;
        raise EUsuario.Create(E.Message);
      end;
    end;
  finally
    UpDate_DatosSistema(0, 2);
    if not Tarjetas.Active then
      Tarjetas.Open;
    Tarjetas.Locate(TarjetasIDTARJETA.FieldName, IdTarAct, []);
    if TarPlan.Active then
      TarPlan.Open;
  end;
end;

procedure TfrmGestTarMut.TarjetasReconcileError(
    DataSet: TCustomClientDataSet; E: EReconcileError;
    UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ApplicationShowException(E);
end;

procedure TfrmGestTarMut.TarjetasBeforeEdit(DataSet: TDataSet);
begin
  IdTarAct := TarjetasIDTARJETA.AsInteger;
  gCoeficientes.SetFocus;
end;

procedure TfrmGestTarMut.TarjetasBeforeInsert(DataSet: TDataSet);
begin
  edtNomEnt.SetFocus;
  // Hacer control de seguridad
end;

procedure TfrmGestTarMut.TarjetasBeforePost(DataSet: TDataSet);
var
  q,s : TMDOQuery;
begin
  if (Trim(TarjetasTarjeta.AsString) = Vacio) or
     (TarjetasTIPOENT.AsInteger = 0) then
  begin
    edtNomEnt.SetFocus;
    raise EUsuario.Create('Falta algun Dato REQUERIDO de la Entidad, para poder grabarlo ');
  end;

  if AltaEnt then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.trProc;
      q.SQL.Text := 'Select MAX(IdTarjeta) As Ultimo From Tarjetas ';
      q.Open;
      TarjetasIdTarjeta.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;

  if (IdBranch = 1) and
     (TarjetasTIPOENT.AsInteger in [1,2,4]) then
  begin
    if (TarjetasIDPROVEEDOR.AsInteger = 0) then
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := dmGestion.trProc;
        q.SQL.Add('Select IdProveedor ');
        q.SQL.Add('From Proveedores ');
        q.SQL.Add('Where TipoDoc = :TipoDoc And ');
        q.SQL.Add('      Documento = :Documento And ');
        q.SQL.Add('      IdSucursal = :IdSucursal ');
        q.ParamByName('TipoDoc').AsInteger := TarjetasTDOCFISCAL.AsInteger;
        q.ParamByName('Documento').AsString := TarjetasDOCUMENTO.AsString;
        q.ParamByName('IdSucursal').AsInteger := IdBranch;
        q.Open;
        IdProv := q.FieldByName('IdProveedor').AsInteger;
        q.Close;
      finally
        q.Free;
      end;

      if IdProv > 0 then
      begin
        TarjetasIDPROVEEDOR.AsInteger := IdProv;
        try
          q := TMDOQuery.Create(nil);
          q.Database := dmGestion.dbGestion;
          q.Transaction := dmGestion.trGestion;
          q.SQL.Add('Select NOMBRE, DIRECCION, LOCALIDAD, ');
          q.SQL.Add('       PROVINCIA, TELEFONOS, TIPOIVA ');
          q.SQL.Add('From PROVEEDORES ');
          q.SQL.Add('WHERE IDPROVEEDOR = :IDPRO AND IDSUCURSAL = :IDSUC ');
          q.ParamByName('IDPRO').AsInteger := IdProv;
          q.ParamByName('IDSUC').AsInteger := IdBranch;
          q.Open;
          if not q.IsEmpty then
          begin
            TarjetasNomProv.AsString := q.ParamByName('NOMBRE').AsString;
            TarjetasDOMICILIO.AsString := q.ParamByName('DIRECCION').AsString;
            TarjetasDEPARTAMENTO.AsString := q.ParamByName('LOCALIDAD').AsString;
            TarjetasPROVINCIA.AsString := q.ParamByName('PROVINCIA').AsString;
            TarjetasTelAutorizacion.AsString := q.ParamByName('TELEFONOS').AsString;
            TarjetasTIPOIVA.AsInteger := q.ParamByName('TIPOIVA').AsInteger;
          end;
        finally
          q.Free;
        end;
      end
      else begin
        try  // Alta de proveedor
          if not dmGestion.trProc.InTransaction then
            dmGestion.trProc.StartTransaction;
          try
            try
              s := TMDOQuery.Create(nil);
              s.Database := dmGestion.dbGestion;
              s.Transaction := dmGestion.trProc;
              s.SQL.Text := 'Select MAX(IdProveedor) As Ultimo From Proveedores ';
              s.Open;
              IdProv := s.FieldByName('Ultimo').AsInteger + 1;
              s.Close;
            finally
              s.Free;
            end;
            q := TMDOQuery.Create(nil);
            q.Database := dmGestion.dbGestion;
            q.Transaction := dmGestion.trProc;
            q.SQL.Add('INSERT INTO PROVEEDORES ');
            q.SQL.Add('      (IDPROVEEDOR, IDSUCURSAL, NOMBRE, DIRECCION, LOCALIDAD, ');
            q.SQL.Add('       PROVINCIA, CODPOSTAL, TELEFONOS, TELFAX, MAIL, WEB, ');
            q.SQL.Add('       TIPOIVA, TIPODOC, ACTIVO, DOCUMENTO, INGBRUTOS, CONTACTO, ');
            q.SQL.Add('       TELCONTACTO, CODCTACON, AUTORIZADO, DOCAUTOR) ');
            q.SQL.Add('VALUES (:IDPROVEEDOR, :IDSUCURSAL, :NOMBRE, :DIRECCION, :LOCALIDAD, ');
            q.SQL.Add('       :PROVINCIA, :CODPOSTAL, :TELEFONOS, :TELFAX, :MAIL, :WEB, ');
            q.SQL.Add('       :TIPOIVA, :TIPODOC, :ACTIVO, :DOCUMENTO, :INGBRUTOS, :CONTACTO, ');
            q.SQL.Add('       :TELCONTACTO, :CODCTACON, :AUTORIZADO, :DOCAUTOR) ');
            q.ParamByName('IDPROVEEDOR').AsInteger := IdProv;
            q.ParamByName('IDSUCURSAL').AsInteger := IdBranch;
            q.ParamByName('NOMBRE').AsString := TarjetasNomProv.AsString;
            q.ParamByName('DIRECCION').AsString := TarjetasDOMICILIO.AsString;
            q.ParamByName('LOCALIDAD').AsString := TarjetasDEPARTAMENTO.AsString;
            q.ParamByName('PROVINCIA').AsString := TarjetasPROVINCIA.AsString;
            q.ParamByName('CODPOSTAL').AsString := Vacio;
            q.ParamByName('TELEFONOS').AsString := TarjetasTelAutorizacion.AsString;
            q.ParamByName('TELFAX').AsString := Vacio;
            q.ParamByName('MAIL').AsString := Vacio;
            q.ParamByName('WEB').AsString := Vacio;
            q.ParamByName('TIPOIVA').AsInteger := TarjetasTIPOIVA.AsInteger;
            q.ParamByName('TIPODOC').AsInteger := TarjetasTDOCFISCAL.AsInteger;
            q.ParamByName('ACTIVO').AsInteger := Verdadero;
            q.ParamByName('DOCUMENTO').AsString := TarjetasDOCUMENTO.AsString;
            q.ParamByName('INGBRUTOS').AsString := Vacio;
            q.ParamByName('CONTACTO').AsString := Vacio;
            q.ParamByName('TELCONTACTO').AsString := Vacio;
            q.ParamByName('CODCTACON').AsInteger := 0;
            q.ParamByName('AUTORIZADO').AsString := Vacio;
            q.ParamByName('DOCAUTOR').AsString := Vacio;
            q.ExecSQL;
          finally
            q.Free;
          end;
          dmGestion.trProc.Commit;
        except
          on E:Exception do
          begin
            dmGestion.trProc.Rollback;
            raise EUsuario.Create(E.Message);
          end;
        end;
        TarjetasIDPROVEEDOR.AsInteger := IdProv;
      end;
    end;
  end;
  AltaEnt := False;
end;

procedure TfrmGestTarMut.TarjetasCalcFields(DataSet: TDataSet);
begin
  if GetDatosEnt(TarjetasIDPROVEEDOR.AsInteger, IdBranch, 2, Datos_Ent) then
    TarjetasNomProv.AsString := Datos_Ent.Nombre
  else
    TarjetasNomProv.AsString := TarjetasTarjeta.AsString;
end;

procedure TfrmGestTarMut.TarjetasDOCUMENTOValidate(Sender: TField);
var
  r: Integer;
begin
  if (TarjetasTDOCFISCAL.AsInteger = CUIT) then
  begin
    if (not Validate_Documento_Fiscal(Sender.AsString)) and
       (Application.MessageBox('El número de C.U.I.T. puede ser erroneo. Acepta?',
        'C.U.I.T. no válido', MB_ICONEXCLAMATION + MB_YESNO) = IDNO) then
      SysUtils.Abort;
  end;
  r := CheckDocEnt(2, TarjetasTDOCFISCAL.AsInteger, Sender.AsString);
  if (r > NoEncontrado) and
     (Application.MessageBox(PChar('El Documento a sido ingresado anteriormente al proveedor º '+IntToStr(r)+'. Grabar?'),
     'Documento no válido', MB_ICONEXCLAMATION + MB_OKCANCEL) = IDCANCEL) then
    SysUtils.Abort;
end;

procedure TfrmGestTarMut.TarjetasTIPOENTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Case TarjetasTIPOENT.AsInteger of
    1: Text := 'TC';
    2: Text := 'MT';
    3: Text := 'FP';
    4: Text := 'CE';
    5: Text := 'CI';
    else Text := 'NN';
  End;
end;

procedure TfrmGestTarMut.TarjetasTIPOIVAValidate(Sender: TField);
begin
  if Sender.AsInteger in [RI, RMT, EX] then
    TarjetasTDOCFISCAL.AsInteger := CUIT;
end;

procedure TfrmGestTarMut.TarjetasNewRecord(DataSet: TDataSet);
begin
  TarjetasIDTARJETA.AsInteger := NUEVO_REGISTRO;
  TarjetasIDPROVEEDOR.AsInteger := 0;
end;

procedure TfrmGestTarMut.TarjetasIDTARJETAGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if Sender.AsInteger = NUEVO_REGISTRO then
    Text := 'Alta'
  else
    Text := Sender.AsString;
end;

procedure TfrmGestTarMut.TarjetasTDOCFISCALChange(Sender: TField);
begin
  if Sender.AsInteger = CUIT then //Tipo doc Cuit
    TarjetasDOCUMENTO.EditMask := '##-########-#;1;_'
  else
    TarjetasDOCUMENTO.EditMask := '';
end;

  (*
  IdProv := 0;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.dbGestion;
    q.Transaction := dmGestion.trProc;
    q.SQL.Add('Select IdProveedor ');
    q.SQL.Add('From Proveedores ');
    q.SQL.Add('Where TipoDoc = :TipoDoc And ');
    q.SQL.Add('      Documento = :Documento And ');
    q.SQL.Add('      IdSucursal = :IdSucursal ');
    q.ParamByName('TipoDoc').AsInteger := TarjetasTDOCFISCAL.AsInteger;
    q.ParamByName('Documento').AsString := TarjetasDOCUMENTO.AsString;
    q.ParamByName('IdSucursal').AsInteger := IdBranch;
    q.Open;
    IdProv := q.FieldByName('IdProveedor').AsInteger;
    q.Close;
    if IdProv > 0 then
  finally
    q.Free;
  end;
  
  try
    LiqPreCon.Filter := 'EstadoMov > 0';
    LiqPreCon.Filtered := True;
    if not LiqPreCon.IsEmpty then
    begin
      lblPTTitulo1.Caption := Format('%s  Presentación para cobro periodo %s al %s ',
                              [OwnerName, LiqPreConDesdeP.AsString, LiqPreConHastaP.AsString]);
      lblPTTitulo2.Caption := Format('Entidad: %s Nº de Presentación %s  %s  %s',
                              [LiqPreConEntidad.AsString, LiqPreConNroPresConc.AsString,
                               DateToStr(LiqPreConFechaF.AsDateTime), LiqPreConNombreProveedor.AsString]);
      lblPresTotal.Caption := Format('%m',[LiqPreConTotal.AsCurrency]);
      lblPresNetoP.Caption := Format('%m',[LiqPreConSubTotal.AsCurrency]);
      lblPresComi.Caption :=  Format('%% Comisión %8.2f - Cantidad de Operaciones incluidas %d ',
                                      [LiqPreConPrcComP.AsFloat, LiqPreConCantItm.AsInteger]);
      lblPresComision.Caption := Format('%m', [LiqPreConComision.AsCurrency]);
      rpPresMutTar.Print;
    end
    else begin
      ShowMessage('No hay Comprobantes.');
    end;
  finally
    LiqPreCon.Filter := '';
    LiqPreCon.Filtered := False;
  end;
  *)

end.
