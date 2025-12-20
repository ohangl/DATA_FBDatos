unit uGestImp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, Buttons, mxExport, Db, StdCtrls,  DBCtrls, Spin, Grids,
  Wwdbigrd, Wwdbgrid, Mask, DBClient, RzTabs, RzButton, RzPanel, MDOCustomDataSet,
  MDOQuery, RzEdit, RzSpnEdt, RzCmboBx, ppVar, ppPrnabl, ppClass, ppCtrls,
  ppDB, ppBands, ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  wwcheckbox, RzSplit, RzRadChk, ppParameter, ppModule, wwDataInspector,
  RzDBNav, Provider, Menus, ppStrtch, ppSubRpt, ppPageBreak;

type
  TfrmGestImp = class(TForm)
    pcGestIva: TRzPageControl;
    tsTotales: TRzTabSheet;
    dsTotalImp: TDataSource;
    TotalImp: TClientDataSet;
    TotalImpDescripcion: TStringField;
    TotalImpMtoAlc: TMDOBCDField;
    TotalImpTotalAlc: TMDOBCDField;
    gTotImp: TwwDBGrid;

    tsCompras: TRzTabSheet;
    dsIvaCom: TDataSource;
    qIvaCom: TMDOQuery;
    qIvaComFechaF: TDateField;
    qIvaComNroFactura: TStringField;
    qIvaComTipoFactura: TSmallintField;
    qIvaComProveedor: TIntegerField;
    qIvaComTipoIva: TSmallintField;
    qIvaComIdFactura: TIntegerField;
    qIvaComNomProv: TStringField;
    qIvaComDocProv: TStringField;
    qIvaComDIvaProv: TStringField;
    qIvaComFacStr: TStringField;
    qIvaComTipoDoc: TSmallintField;
    qIvaComDTipoDoc: TStringField;
    qIvaComIdSucursal: TIntegerField;

    gIvaCom: TwwDBGrid;

    tsVentas: TRzTabSheet;
    gIvaVen: TwwDBGrid;
    dsIvaVen: TDataSource;
    IvaVen: TClientDataSet;
    IvaVenDetalle: TStringField;

    qIvaVen: TMDOQuery;
    tsControles: TRzTabSheet;
    pcControlComprobantes: TRzPageControl;
    tsControlCompras: TRzTabSheet;

    dsCtrIvaCom: TDataSource;
    qCtrIvaCom: TMDOQuery;
    qCtrIvaComFechaF: TDateField;
    qCtrIvaComNroFactura: TStringField;
    qCtrIvaComIdFactura: TIntegerField;
    qCtrIvaComIdSucursal: TIntegerField;
    qCtrIvaComNombre: TStringField;
    qCtrIvaComDescCorta: TStringField;
    qCtrIvaComIvaCorto: TStringField;

    tsControlVentas: TRzTabSheet;
    dsCtrIvaVen: TDataSource;
    gCompras: TwwDBGrid;
    qCtrIvaVen: TMDOQuery;
    qCtrIvaVenFechaF: TDateField;
    qCtrIvaVenNroFactura: TStringField;
    qCtrIvaVenNombre: TStringField;
    qCtrIvaVenIdFactura: TIntegerField;
    qCtrIvaVenSector: TIntegerField;
    qCtrIvaVenIdPuntoVenta: TIntegerField;
    qCtrIvaVenIdSucursal: TIntegerField;
    qCtrIvaVenDescCorta: TStringField;
    qCtrIvaVenIvaCorto: TStringField;

    qIvaTotCom: TMDOQuery;
    qIvaTotComPeriodo: TDateField;
    qIvaTotComFechaF: TDateField;
    qIvaTotComTipoFactura: TSmallintField;
    qIvaTotComTipoIva: TSmallintField;

    qIvaTotVen: TMDOQuery;

    qItemsFV: TMDOQuery;
    qIvaTotVenTipoIva: TSmallintField;
    qIvaTotVenTipoFactura: TSmallintField;
    qItemsFVIdAlcIB: TIntegerField;
    pnlIvaCom: TRzPanel;
    lblPeriodoCmp: TLabel;
    lblAnoCmp: TLabel;
    btnCalcCmp: TRzBitBtn;
    btnImpCmp: TRzBitBtn;
    btnExpCmp: TRzBitBtn;
    cbMesCmp: TRzComboBox;
    edtYearCmp: TRzSpinner;
    pnlPaginaCmp: TRzPanel;
    qIvaTotComNETO: TMDOBCDField;
    qIvaTotComEXENTO: TMDOBCDField;
    qIvaTotComNOCOMPUTABLES: TMDOBCDField;
    qIvaTotComIVAALICUOTA1: TMDOBCDField;
    qIvaTotComTOTAL: TMDOBCDField;
    qIvaTotComRETGAN: TMDOBCDField;
    qIvaTotComRETIBTO: TMDOBCDField;
    qIvaTotComRETLH: TMDOBCDField;
    qIvaTotVenNETO: TMDOBCDField;
    qIvaTotVenEXENTO: TMDOBCDField;
    qIvaTotVenNOCOMPUTABLES: TMDOBCDField;
    qIvaTotVenIVAALICUOTA1: TMDOBCDField;
    qIvaTotVenTOTAL: TMDOBCDField;
    qItemsFVINGBTO: TMDOBCDField;
    qItemsFVPRECIONETO: TMDOBCDField;
    qItemsFVIMPINT: TMDOBCDField;
    qIvaComTOTAL: TMDOBCDField;
    qIvaComNETO: TMDOBCDField;
    qIvaComEXENTO: TMDOBCDField;
    qIvaComNOCOMPUTABLES: TMDOBCDField;
    qIvaComRETGAN: TMDOBCDField;
    qIvaComMONTOIVA: TMDOBCDField;
    qIvaComRETIB: TMDOBCDField;
    qIvaComBONIFICACION: TMDOBCDField;
    qCtrIvaComTOTAL: TMDOBCDField;
    qCtrIvaComRETGAN: TMDOBCDField;
    qCtrIvaComRETIBTO: TMDOBCDField;
    qCtrIvaComRETLH: TMDOBCDField;
    qCtrIvaComRETIVA: TMDOBCDField;
    qCtrIvaComTOTIVA: TMDOBCDField;
    qCtrIvaVenBONIFICACION: TMDOBCDField;
    qCtrIvaVenNETO: TMDOBCDField;
    qCtrIvaVenEXENTO: TMDOBCDField;
    qCtrIvaVenNOCOMPUTABLES: TMDOBCDField;
    qCtrIvaVenIVAALICUOTA1: TMDOBCDField;
    qCtrIvaVenTOTAL: TMDOBCDField;
    qCtrIvaVenCOMPREF: TMDOStringField;
    pnlTopTot: TRzPanel;
    lblPeriodoTot: TLabel;
    cbMesTot: TRzComboBox;
    lblAnoTot: TLabel;
    edtYearTot: TRzSpinner;
    btnCalcTot: TRzBitBtn;
    btnExpTot: TRzBitBtn;
    btnImpTot: TRzBitBtn;
    pnlTopVta: TRzPanel;
    lblPeriodoVta: TLabel;
    lblAnoVta: TLabel;
    lblSucursalIV: TLabel;
    btnCalcVta: TRzBitBtn;
    btnImpVta: TRzBitBtn;
    btnExpVta: TRzBitBtn;
    cbMesVta: TRzComboBox;
    edtYearVta: TRzSpinner;
    pnlPaginaVta: TRzPanel;
    cbSucVta: TRzComboBox;
    pnlTopCtrlComp: TRzPanel;
    lblCmpProv: TLabel;
    lblNomPro: TLabel;
    lblPerComp: TLabel;
    lblAnoComp: TLabel;
    btnExpCompras: TRzBitBtn;
    btnCalcularCompras: TRzBitBtn;
    edtProveedorCCC: TRzEdit;
    cbMesControlCmp: TRzComboBox;
    edtAnioControlCpm: TRzSpinner;
    pnlTopCtrlVta: TRzPanel;
    lblVtaDesde: TLabel;
    lblVtaHasta: TLabel;
    lblSucCtrl: TLabel;
    btnExpVentas: TRzBitBtn;
    btnCalcularVentas: TRzBitBtn;
    edtVtaDesde: TRzDateTimeEdit;
    edtVtaHasta: TRzDateTimeEdit;
    cbSucCtr: TRzComboBox;
    qIvaTotVenIVAALICUOTA2: TMDOBCDField;
    qIvaTotComIVAALICUOTA2: TMDOBCDField;
    qIvaTotComIVAOTALC: TMDOBCDField;
    qIvaComRETIVA: TMDOBCDField;
    qIvaTotComRETIVA: TMDOBCDField;
    qCtrIvaVenIVAALICUOTA2: TMDOBCDField;
    tsInformes: TRzTabSheet;
    btnImpVtas: TRzBitBtn;
    rpComprobantesDeVentas: TppReport;
    dbpCompVtas: TppDBPipeline;
    hbComprVtas: TppHeaderBand;
    dbComprVtas: TppDetailBand;
    fbComprVtas: TppFooterBand;
    lblTituloCV1: TppLabel;
    lblEmisionCV: TppSystemVariable;
    lblPaginasCV: TppSystemVariable;
    qCtrIvaVenDETSUC: TMDOStringField;
    lblTituloCV2: TppLabel;
    lblDetSucCV: TppDBText;
    lblFechaCV: TppDBText;
    lblTCompCV: TppDBText;
    lblNCompCV: TppDBText;
    lblRazSocCV: TppDBText;
    lblTIvaCV: TppDBText;
    lblTotalCV: TppDBText;
    lblNetoCV: TppDBText;
    lblNoCompCV: TppDBText;
    lblIva1CV: TppDBText;
    lblIva2CV: TppDBText;
    shpCompVta1: TppShape;
    lblTotalCompVta: TppDBCalc;
    lnCompVta1: TppLine;
    pcInformesImpuestos: TRzPageControl;
    tsInfPercepciones: TRzTabSheet;
    pnlTPers: TRzPanel;
    bvlTotPer: TBevel;
    lblPerPercep: TLabel;
    lblAnoPercep: TLabel;
    lblTotPer: TLabel;
    btnCalcPer: TRzBitBtn;
    btnExpPer: TRzBitBtn;
    btnGenDGI: TRzBitBtn;
    sdTxt: TSaveDialog;
    gbPercepciones: TRzGroupBox;
    mmResult: TMemo;
    gPercepciones: TwwDBGrid;
    spPerceps: TRzSplitter;
    qPercepciones: TMDOQuery;
    dsqPercepciones: TDataSource;
    qPercepcionesIDFACTURA: TIntegerField;
    qPercepcionesIDSUCURSAL: TIntegerField;
    qPercepcionesFECHAF: TDateField;
    qPercepcionesNROFACTURA: TMDOStringField;
    qPercepcionesPROVEEDOR: TIntegerField;
    qPercepcionesRETIVA: TMDOBCDField;
    qPercepcionesALCPERCEPCION: TMDOBCDField;
    qPercepcionesTIPOFACTURA: TSmallintField;
    qPercepcionesNROREGPERCP: TMDOStringField;
    qPercepcionesCUIT: TMDOStringField;
    qPercepcionesPUNTO: TMDOStringField;
    qPercepcionesCOMPROBANTE: TMDOStringField;
    cbMesPer: TRzComboBox;
    edtYearPer: TRzSpinner;
    cbxIncNC: TRzCheckBox;
    qPercepcionesNOMBRE: TMDOStringField;
    edtPaginaCmp: TRzNumericEdit;
    edtPaginaVta: TRzNumericEdit;
    rpIvaCompras: TppReport;
    dbpIvaVen: TppDBPipeline;
    dbpTotImp: TppDBPipeline;
    rpTotalImp: TppReport;
    dbpIvaCom: TppDBPipeline;
    hbTotImp: TppHeaderBand;
    dbTotImp: TppDetailBand;
    fbTotImp: TppFooterBand;
    lblTITitulo1: TppLabel;
    lblTIDetalle: TppDBText;
    lblTIMtoAlc: TppDBText;
    lblTITotAlc: TppDBText;
    lblTITitulo2: TppLabel;
    shpTI1: TppShape;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppShape1: TppShape;
    lnTotImp: TppLine;
    hbIvaCom: TppHeaderBand;
    dbIvaCom: TppDetailBand;
    fbIvaCom: TppFooterBand;
    lblICPropietario: TppLabel;
    lblICDocProp: TppLabel;
    lblICTitulo: TppLabel;
    lblICComprobante: TppLabel;
    lblICProveedor: TppLabel;
    lblICOperacion: TppLabel;
    lblICFecha: TppLabel;
    lblICTipoNroF: TppLabel;
    lblICNomRZ: TppLabel;
    lblICTIvaNroDoc: TppLabel;
    lblICNeto: TppLabel;
    lblICNCII: TppLabel;
    lblICOEtas: TppLabel;
    lblICRetIva: TppLabel;
    lblICRetGan: TppLabel;
    lblICRetIBLH: TppLabel;
    lblICTOper: TppLabel;
    shpIC1: TppShape;
    shpIC2: TppShape;
    lblICFechaF: TppDBText;
    lblICDetCom: TppDBText;
    lblICNroFac: TppDBText;
    lblICNomProv: TppDBText;
    lblICDIva: TppDBText;
    lblICDDoc: TppDBText;
    lblICNDoc: TppDBText;
    lblICMNeto: TppDBText;
    lblICMNoComp: TppDBText;
    lblICMExto: TppDBText;
    lblICMRIva: TppDBText;
    lblICMRGan: TppDBText;
    lblICMRIBto: TppDBText;
    lblICMTotal: TppDBText;
    lblICTotNeto: TppDBCalc;
    lblICTotNC: TppDBCalc;
    lblICTotEx: TppDBCalc;
    lblICTotRI: TppDBCalc;
    lblICTotRG: TppDBCalc;
    lblICTotRL: TppDBCalc;
    lblICTotTotal: TppDBCalc;
    lnICTotales: TppLine;
    lblICTotTrans: TppLabel;
    rpIvaVentas: TppReport;
    hbIvaVta: TppHeaderBand;
    shpIV1: TppShape;
    shpIV2: TppShape;
    lblIVPropietario: TppLabel;
    lblIVDocProp: TppLabel;
    lblIVTitulo: TppLabel;
    lblIVComp: TppLabel;
    lblIVDCli: TppLabel;
    lblIVDOper: TppLabel;
    lblIVFecO: TppLabel;
    lblIVTyNro: TppLabel;
    lblIVNRSoc: TppLabel;
    lblIVTIvaNroDoc: TppLabel;
    lblIVNeto: TppLabel;
    lblIVNoComp: TppLabel;
    lblIVExto: TppLabel;
    lblIVIva1: TppLabel;
    lblIVIva2: TppLabel;
    lblIVTotOper: TppLabel;
    dbIvaVta: TppDetailBand;
    lblIVFechaF: TppDBText;
    lblIVDFac: TppDBText;
    lblIVNFac: TppDBText;
    lblIVNCli: TppDBText;
    lblIVDIva: TppDBText;
    lblIVDDoc: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    fbIvaVta: TppFooterBand;
    lblIVTNeto: TppDBCalc;
    lblIVTNComp: TppDBCalc;
    lblIVTExto: TppDBCalc;
    lblIVTIva1: TppDBCalc;
    lblIVTIva2: TppDBCalc;
    lblIVTTotal: TppDBCalc;
    lnIVTot: TppLine;
    lblIVTotTran: TppLabel;
    pnlFoot_Iva: TRzPanel;
    btnSalir: TRzBitBtn;
    lblTotComVta: TppLabel;
    lblvarNroPagIC: TppVariable;
    ppParameterList1: TppParameterList;
    lblvarNroPagIV: TppVariable;
    tsEstadistico: TRzTabSheet;
    qComparativo: TMDOQuery;
    dsEstadistico: TDataSource;
    qRetenciones: TMDOQuery;
    MDOStringField1: TMDOStringField;
    DateField1: TDateField;
    MDOStringField2: TMDOStringField;
    MDOBCDField1: TMDOBCDField;
    MDOBCDField2: TMDOBCDField;
    MDOStringField3: TMDOStringField;
    MDOStringField4: TMDOStringField;
    MDOStringField5: TMDOStringField;
    MDOStringField6: TMDOStringField;
    SmallintField1: TSmallintField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    dsqRetenciones: TDataSource;
    qTotCompa: TMDOQuery;
    dsTotCompa: TDataSource;
    qComparativoTFAC: TMDOStringField;
    qComparativoTIVA: TMDOStringField;
    qComparativoPMES: TIntegerField;
    qComparativoPYEAR: TIntegerField;
    qComparativoCANT_C: TIntegerField;
    qComparativoTCNETO: TMDOBCDField;
    qComparativoTCEXENTO: TMDOBCDField;
    qComparativoTCNOCOMP: TMDOBCDField;
    qComparativoTCIVA1: TMDOBCDField;
    qComparativoTCIVA2: TMDOBCDField;
    qComparativoTCIVA3: TMDOBCDField;
    qComparativoTCTOTAL: TMDOBCDField;
    qComparativoTCRIVA: TMDOBCDField;
    qComparativoTCRGAN: TMDOBCDField;
    qComparativoTCRIBT: TMDOBCDField;
    qComparativoTCRLH: TMDOBCDField;
    qComparativoCANT_V: TIntegerField;
    qComparativoTVNETO: TMDOBCDField;
    qComparativoTVEXENTO: TMDOBCDField;
    qComparativoTVNOCOMP: TMDOBCDField;
    qComparativoTVIVA1: TMDOBCDField;
    qComparativoTVIVA2: TMDOBCDField;
    qComparativoTVTOTAL: TMDOBCDField;
    qComparativoTVIBTO: TMDOBCDField;
    qComparativoTVLTH: TMDOBCDField;
    qTotCompaPMES: TIntegerField;
    qTotCompaPYEAR: TIntegerField;
    qTotCompaTCANT_C: TLargeintField;
    qTotCompaTCNETO: TMDOBCDField;
    qTotCompaTCEXENTO: TMDOBCDField;
    qTotCompaTCNOCOMP: TMDOBCDField;
    qTotCompaTCIVA1: TMDOBCDField;
    qTotCompaTCIVA2: TMDOBCDField;
    qTotCompaTCIVA3: TMDOBCDField;
    qTotCompaTCTOTAL: TMDOBCDField;
    qTotCompaTCRIVA: TMDOBCDField;
    qTotCompaTCRGAN: TMDOBCDField;
    qTotCompaTCRIBT: TMDOBCDField;
    qTotCompaTCRLH: TMDOBCDField;
    qTotCompaTCANT_V: TLargeintField;
    qTotCompaTVNETO: TMDOBCDField;
    qTotCompaTVEXENTO: TMDOBCDField;
    qTotCompaTVNOCOMP: TMDOBCDField;
    qTotCompaTVIVA1: TMDOBCDField;
    qTotCompaTVIVA2: TMDOBCDField;
    qTotCompaTVTOTAL: TMDOBCDField;
    qTotCompaTVIBTO: TMDOBCDField;
    qTotCompaTVLTH: TMDOBCDField;
    gbTotales: TRzGroupBox;
    gTotCompa: TwwDataInspector;
    pnlEstAnu: TRzPanel;
    lblAnoCompa: TLabel;
    cbPerAnu: TRzComboBox;
    btnCalcEstAnu: TRzBitBtn;
    lblDurCompa: TLabel;
    gbValMen: TRzGroupBox;
    navTotCompa: TRzDBNavigator;
    dspqTotCompa: TDataSetProvider;
    TotalCompa: TClientDataSet;
    Comparativo: TClientDataSet;
    dspqComparativo: TDataSetProvider;
    TotalCompaPMES: TIntegerField;
    TotalCompaPYEAR: TIntegerField;
    TotalCompaTCANT_C: TLargeintField;
    TotalCompaTCNETO: TBCDField;
    TotalCompaTCEXENTO: TBCDField;
    TotalCompaTCNOCOMP: TBCDField;
    TotalCompaTCIVA1: TBCDField;
    TotalCompaTCIVA2: TBCDField;
    TotalCompaTCIVA3: TBCDField;
    TotalCompaTCTOTAL: TBCDField;
    TotalCompaTCRIVA: TBCDField;
    TotalCompaTCRGAN: TBCDField;
    TotalCompaTCRIBT: TBCDField;
    TotalCompaTCRLH: TBCDField;
    TotalCompaTCANT_V: TLargeintField;
    TotalCompaTVNETO: TBCDField;
    TotalCompaTVEXENTO: TBCDField;
    TotalCompaTVNOCOMP: TBCDField;
    TotalCompaTVIVA1: TBCDField;
    TotalCompaTVIVA2: TBCDField;
    TotalCompaTVTOTAL: TBCDField;
    TotalCompaTVIBTO: TBCDField;
    TotalCompaTVLTH: TBCDField;
    ComparativoTFAC: TStringField;
    ComparativoTIVA: TStringField;
    ComparativoPMES: TIntegerField;
    ComparativoPYEAR: TIntegerField;
    ComparativoCANT_C: TIntegerField;
    ComparativoTCNETO: TBCDField;
    ComparativoTCEXENTO: TBCDField;
    ComparativoTCNOCOMP: TBCDField;
    ComparativoTCIVA1: TBCDField;
    ComparativoTCIVA2: TBCDField;
    ComparativoTCIVA3: TBCDField;
    ComparativoTCTOTAL: TBCDField;
    ComparativoTCRIVA: TBCDField;
    ComparativoTCRGAN: TBCDField;
    ComparativoTCRIBT: TBCDField;
    ComparativoTCRLH: TBCDField;
    ComparativoCANT_V: TIntegerField;
    ComparativoTVNETO: TBCDField;
    ComparativoTVEXENTO: TBCDField;
    ComparativoTVNOCOMP: TBCDField;
    ComparativoTVIVA1: TBCDField;
    ComparativoTVIVA2: TBCDField;
    ComparativoTVTOTAL: TBCDField;
    ComparativoTVIBTO: TBCDField;
    ComparativoTVLTH: TBCDField;
    btnExpEstAnu: TRzMenuButton;
    pmSalidaEstadistica: TPopupMenu;
    ExportarTotalesCompa: TMenuItem;
    ExportarMovimientosCompa: TMenuItem;
    ImprimirCompa: TMenuItem;
    dspIvaVen: TDataSetProvider;
    IvaVenIDSUCURSAL: TIntegerField;
    IvaVenFECHAF: TDateField;
    IvaVenPUNTOVTA: TSmallintField;
    IvaVenNOMCLI: TStringField;
    IvaVenTIPODOCCLI: TStringField;
    IvaVenDOCCLI: TStringField;
    IvaVenDETCOM: TStringField;
    IvaVenPRIMER_COMP: TStringField;
    IvaVenULTIMO_COMP: TStringField;
    IvaVenDETIVA: TStringField;
    IvaVenNETO: TBCDField;
    IvaVenEXENTO: TBCDField;
    IvaVenNOCOMPUTABLES: TBCDField;
    IvaVenIVAALICUOTA1: TBCDField;
    IvaVenIVAALICUOTA2: TBCDField;
    IvaVenTOTAL: TBCDField;
    gTotIvaE: TwwDBGrid;
    spEgrIng: TRzSplitter;
    gTotIvaI: TwwDBGrid;
    rpEstadistico: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    srEstCompras: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    dbEstCmp: TppDetailBand;
    sbEstCmp: TppSummaryBand;
    ppDBText1: TppDBText;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText2: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel1: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    shpEstadisticas2: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLabel28: TppLabel;
    srEstVentas: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    dbEstVta: TppDetailBand;
    sbEstVta: TppSummaryBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppDBText3: TppDBText;
    ppDBText23: TppDBText;
    ppLabel18: TppLabel;
    ppDBText24: TppDBText;
    ppLabel19: TppLabel;
    ppDBText25: TppDBText;
    ppLabel20: TppLabel;
    ppDBText26: TppDBText;
    ppLabel21: TppLabel;
    ppDBText27: TppDBText;
    ppLabel22: TppLabel;
    ppDBText28: TppDBText;
    ppLabel23: TppLabel;
    ppDBText29: TppDBText;
    ppLabel24: TppLabel;
    ppDBText30: TppDBText;
    ppLabel25: TppLabel;
    ppDBText31: TppDBText;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLabel32: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    shpEstadisticas3: TppShape;
    ppLine2: TppLine;
    lblEmisionEst: TppSystemVariable;
    lblNroPagEst: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel33: TppLabel;
    shpEstadisticas1: TppShape;
    lblTitEstadisticas: TppLabel;
    ppEstadistico: TppDBPipeline;
    dbpTotComparativo: TppDBPipeline;
    ppPageBreak1: TppPageBreak;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppShape2: TppShape;
    ppLabel46: TppLabel;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLabel54: TppLabel;
    ppDBText36: TppDBText;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    lblSucEst: TLabel;
    cbSucAnu: TRzComboBox;
    lblDetSucIV: TppLabel;
    lblNoCompIV: TppLabel;
    lblIva1IV: TppLabel;
    lblNCompIV: TppLabel;
    lblIva2IV: TppLabel;
    lblTotalIV: TppLabel;
    lblNetoIV: TppLabel;
    lnCompVt2: TppLine;
    pmGestIva: TPopupMenu;
    lblTotEmp: TLabel;
    cbTotEmp: TRzComboBox;
    qIvaTotComIDEMPRESA: TIntegerField;
    lblEmpCmp: TLabel;
    cbEmpCmp: TRzComboBox;
    lblEmpVta: TLabel;
    cbEmpVta: TRzComboBox;
    pcCtrlVtas: TRzPageControl;
    tsCompVtas: TRzTabSheet;
    tsTotDia: TRzTabSheet;
    gVentas: TwwDBGrid;
    gVentasDia: TwwDBGrid;
    qCtrDiaVen: TMDOQuery;
    dsqCtrDiaVen: TDataSource;
    qCtrDiaVenFECHAF: TDateField;
    qCtrDiaVenCANTOP: TIntegerField;
    qCtrDiaVenTNETO: TMDOBCDField;
    qCtrDiaVenTNOCOMP: TMDOBCDField;
    qCtrDiaVenTOTAL: TMDOBCDField;
    qCtrDiaVenTIVA: TMDOBCDField;
    qCtrDiaVenIDSUCURSAL: TIntegerField;
    qCtrDiaVenDETSUC: TMDOStringField;
    cbEmpAnu: TRzComboBox;
    Label1: TLabel;
    lblICMIva: TppLabel;
    lblICMIvaC: TppDBText;
    lblICTotIvaC: TppDBCalc;
    ppShape6: TppShape;
    qIvaComIDPUNTOVENTA: TIntegerField;
    qCtrIvaComIDPUNTOVENTA: TIntegerField;
    qRetencionesIDPUNTOVENTA: TIntegerField;
    qPercepcionesIDPUNTOVENTA: TIntegerField;
    procedure lblvarNroPagIVCalc(Sender: TObject; var Value: Variant);
    procedure lblvarNroPagICCalc(Sender: TObject; var Value: Variant);

    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnCalcCmpClick(Sender: TObject);
    procedure btnImpCmpClick(Sender: TObject);
    procedure edtPaginaCmpExit(Sender: TObject);
    procedure btnExpCmpClick(Sender: TObject);
    procedure btnExpVtaClick(Sender: TObject);
    procedure btnImpVtaClick(Sender: TObject);
    procedure edtPaginaVtaExit(Sender: TObject);
    procedure gIvaVenTopRowChanged(Sender: TObject);
    procedure btnCalcTotClick(Sender: TObject);
    procedure btnImpTotClick(Sender: TObject);
    procedure btnExpTotClick(Sender: TObject);
    procedure btnCalcularComprasClick(Sender: TObject);
    procedure gComprasDblClick(Sender: TObject);
    procedure gVentasDblClick(Sender: TObject);
    procedure btnCalcularVentasClick(Sender: TObject);
    procedure edtProveedorCCCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gComprasUpdateFooter(Sender: TObject);
    procedure gVentasUpdateFooter(Sender: TObject);
    procedure edtProveedorCCCExit(Sender: TObject);
    procedure btnExpComprasClick(Sender: TObject);
    procedure btnExpVentasClick(Sender: TObject);
    procedure edtProveedorCCCEnter(Sender: TObject);
    procedure gIvaVenUpdateFooter(Sender: TObject);
    procedure gIvaComUpdateFooter(Sender: TObject);
    procedure btnCalcVtaClick(Sender: TObject);
    procedure cbSucCtrChange(Sender: TObject);
    procedure cbSucCtrExit(Sender: TObject);
    procedure pcGestIvaTabClick(Sender: TObject);
    procedure cbMesVtaEnter(Sender: TObject);
    procedure gIvaComDblClick(Sender: TObject);
    procedure btnImpVtasClick(Sender: TObject);
    procedure btnExpPerClick(Sender: TObject);
    procedure btnCalcPerClick(Sender: TObject);
    procedure btnGenDGIClick(Sender: TObject);
    procedure gPercepcionesDblClick(Sender: TObject);
    procedure btnCalcEstAnuClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbPerAnuEnter(Sender: TObject);
    procedure TotalCompaAfterScroll(DataSet: TDataSet);
    procedure ExportarMovimientosCompaClick(Sender: TObject);
    procedure ExportarTotalesCompaClick(Sender: TObject);
    procedure ImprimirCompaClick(Sender: TObject);
    procedure IvaVenCalcFields(DataSet: TDataSet);
    procedure ppDBText32GetText(Sender: TObject; var Text: string);
    procedure ppDBText4GetText(Sender: TObject; var Text: string);
    procedure TotalCompaPMESGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure TotalCompaTCNETOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ComparativoTCNETOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure pcGestIvaClose(Sender: TObject; var AllowClose: Boolean);
    procedure cbEmpVtaChange(Sender: TObject);
    procedure cbEmpVtaEnter(Sender: TObject);
    procedure cbSucVtaChange(Sender: TObject);
    procedure edtVtaDesdeEnter(Sender: TObject);
    procedure edtVtaHastaEnter(Sender: TObject);
    procedure cbEmpVtaExit(Sender: TObject);
    procedure cbTotEmpExit(Sender: TObject);
    procedure cbTotEmpChange(Sender: TObject);
    procedure cbEmpCmpChange(Sender: TObject);
    procedure cbEmpCmpExit(Sender: TObject);
    procedure cbEmpAnuExit(Sender: TObject);
    procedure cbEmpAnuChange(Sender: TObject);
    procedure gVentasDiaUpdateFooter(Sender: TObject);
  private
    { Private declarations }
    TotalCompras, TotalImpCmp,
    CTNeto, CTExen, CTNoCm, CTMIva,
    CTTota, CTRetG, CTRetI, CTRetB,
    CTBonf, VTNeto, VTExen, VTNoCm,
    VTIva1, VTIva2, VTTota, TotBf,
    TotNt, TotI1, TotII, TotEx,
    TotVt, TotRI, TotRB, TotRG,
    TotLH, TotND, TotID, TotCD, TotVD: Currency;

    Entidad, SucVta, SucCtr,
    SucPrd, TotOD, CmpEmpezarEn,
    VtaEmpezarEn, Id_Emp, Cant_OPV: Integer;

    DtEmpresa,
    Direccion,
    Documento,
    NroIngBto: String;

    procedure ArmarLibroCompras;
    procedure ArmarLibroVentas(D, H: TDate; S, E: Integer);
    function Sumar_DDJJ: Boolean;
    procedure Control_Compras;
    procedure Control_Ventas;
    procedure Calcular_Estadistico_Anual;
    procedure Calcular_Percepciones;

  public
    { Public declarations }
  end;

var
  frmGestImp: TfrmGestImp;

implementation

uses udmSaveFile, uViewFacC, uViewFacV, udmGestion, uTools, uEntidades, uProveedores;

{$R *.DFM}

Const
   Todos = 0;

Type
   TDJCompra  = Packed Record                  (* Compras *)
                CprExent: Currency;            (* Total Compras Exentas        *)
                TotIpItC: Currency;            (* Total Compras NoComp/Imp.Int *)
                                               (* Total Compras Ext. + NCp/ImIn*)
                CrdTAlc1: Currency;            (* Total CF RI  Alicuota 1      *)
                CrdTAlc2: Currency;            (* Total CF RI  Alicuota 2      *)
                CrdTAlcO: Currency;            (* Total CF RI  Alicuota O      *)
                CrdTotal: Currency;            (* Total CF Alc1 + Alc2 + Alc3  *)
                RetPrsCp: Currency;            (* Total Reten.y Percep. Compras*)

                DevQtDC1: Currency;            (* Total Dev.Quitas y D. Comp.A1*)
                DevQtDC2: Currency;            (* Total Dev.Quitas y D. Comp.A2*)
                DevQtDCO: Currency;            (* Total Dev.Quitas y D. Comp.A3*)
                TotDevQt: Currency;            (* Total Dev.Quitas y D. Comp. *)

                TotNetoC: Currency;            (* Total Neto Compras           *)
                TotCompr: Currency;            (* Total Operaciones de Compras *)
                TotRetIB: Currency;            (* Total Retenciones Ing. Brutos*)
                TotRetLH: Currency;            (* Total Retenciones Lote Hogar *)
                TotRetGN: Currency;            (* Total Retenciones Ganancias  *)
   end;

   TDJVenta  = Packed Record                   (* Ventas  *)
                VtaExent: Currency;            (* Total Ventas Exentas         *)
                TotIpItV: Currency;            (* Total Ventas No Comp/Imp.Int.*)
                                               (* Total Ventas Ext. + NCp/ImIn *)
                DebFRIA1: Currency;            (* Total DF RI Alicuota 1       *)
                DebFCFA1: Currency;            (* Total DF Cons. Finales  Alc 1*)
                DebFExA1: Currency;            (* Total DF a Exentos      Alc 1*)
                DebFNCA1: Currency;            (* Total DF No Cat.        Alc 1*)
                DebFRMA1: Currency;            (* Total DF Resp.Monotrib. Alc 1*)
                DebFRNI1: Currency;            (* Total DF Resp. No Insc. Alc 1*)
                DebTotA1: Currency;            (* Total Debito Fiscal     Alc 1*)

                DebFRIA2: Currency;            (* Total DF RI Alicuota 2       *)
                DebFCFA2: Currency;            (* Total DF Cons. Finales  Alc 2*)
                DebFExA2: Currency;            (* Total DF a Exentos      Alc 2*)
                DebFNCA2: Currency;            (* Total DF No Cat.        Alc 2*)
                DebFRMA2: Currency;            (* Total DF Resp.Monotrib. Alc 2*)
                DebFRNI2: Currency;            (* Total DF Resp. No Insc. Alc 2*)
                DebTotA2: Currency;            (* Total Debito Fiscal     Alc 2*)

                DebTotal: Currency;            (* Total Debito Fiscal  A1 + A2 *)
                RetPrsVt: Currency;            (* Total Reten. y Percep. Ventas*)
                DevQtDA1: Currency;            (* Total Dev.Quitas y D.Vent. A1*)
                DevQtDA2: Currency;            (* Total Dev.Quitas y D.Vent. A2*)
                TotNetoV: Currency;            (* Total Neto Ventas            *)
                TotVenta: Currency;            (* Total Operaciones de Ventas  *)
   end;

Var
  DJ_C: TDJCompra;
  DJ_V: TDJVenta;

procedure TfrmGestImp.ArmarLibroCompras;
begin
  (*

Select F.FechaF, F.NroFactura, F.Total, F.Neto, F.Exento,
       F.NoComputables, F.RetGan, F.RetIva,
       (F.IvaAlicuota1+F.IvaAlicuota2+F.IvaOtAlc) as MontoIva,
       (F.RetIBto+F.RetLH) as RetIB, F.Proveedor, F.TipoIva,
        F.TipoFactura, F.Bonificacion, F.IdFactura, F.IdSucursal,
        P.Nombre as NomProv, P.TipoDoc, P.Documento as DocProv,
        I.IvaCorto as DIvaProv, D.Documento as DTipoDoc,
        T.DescCorta as FacStr
From FacCom F
Join Proveedores P
  on P.IdProveedor = F.Proveedor
Join TipoIva I
  on I.TipoIva = F.TipoIva
Join TipoDoc D
  on D.TipoDoc = P.TipoDoc
Join TiposComp T
  on T.IdComprobante = F.TipoFactura
Where (Extract(Year from F.Periodo) = :Anio)
            And (Extract(Month from F.Periodo) = :Mes)
            And (F.TipoFactura in (1,2,3,4,11,12,13,14,16,17))
            And (F.State = 0)
Order By F.FechaF

  *)
  CTNeto := 0;
  CTExen := 0;
  CTNoCm := 0;
  CTMIva := 0;
  CTRetI := 0;
  CTTota := 0;
  CTRetG := 0;
  CTRetB := 0;
  CTBonf := 0;
  try
    Id_Emp := Integer(cbEmpCmp.Items.Objects[cbEmpCmp.ItemIndex]);
    Screen.Cursor := crHourGlass;
    qIvaCom.Close;
    qIvaCom.ParamByName('Anio').Value := edtYearCmp.Value;
    qIvaCom.ParamByName('Mes').Value := cbMesCmp.ItemIndex + 1;
    qIvaCom.ParamByName('IdEmp').AsInteger := Id_Emp;
    qIvaCom.Prepare;
    qIvaCom.Open;

    try
      qIvaCom.DisableControls;
      if not qIvaCom.IsEmpty then
      begin
        qIvaCom.First;
        While not qIvaCom.Eof do
        begin
          CTNeto := CTNeto + qIvaComNETO.AsCurrency;
          CTExen := CTExen + qIvaComEXENTO.AsCurrency;
          CTNoCm := CTNoCm + qIvaComNOCOMPUTABLES.AsCurrency;
          CTMIva := CTMIva + qIvaComMONTOIVA.AsCurrency;
          CTRetI := CTRetI + qIvaComRETIVA.AsCurrency;
          CTTota := CTTota + qIvaComTOTAL.AsCurrency;
          CTRetG := CTRetG + qIvaComRETGAN.AsCurrency;
          CTRetB := CTRetB + qIvaComRETIB.AsCurrency;
          qIvaCom.Next;
        end;
        btnImpCmp.Enabled := True;
        btnExpCmp.Enabled := True;
        gIvaCom.SetFocus;
        qIvaCom.First;
      end;
    finally
      qIvaCom.EnableControls;
      gIvaCom.ColumnByName('Total').FooterValue := Format('%10.2f',[CTTota]);
      gIvaCom.ColumnByName('Neto').FooterValue := Format('%10.2f',[CTNeto]);
      gIvaCom.ColumnByName('MontoIva').FooterValue := Format('%10.2f',[CTMIva]);
      gIvaCom.ColumnByName('Exento').FooterValue := Format('%10.2f',[CTExen]);
      gIvaCom.ColumnByName('NoComputables').FooterValue := Format('%10.2f',[CTNoCm]);
      gIvaCom.ColumnByName('RetIva').FooterValue := Format('%10.2f',[CTRetI]);
      gIvaCom.ColumnByName('RetGan').FooterValue := Format('%10.2f',[CTRetG]);
      gIvaCom.ColumnByName('RetIB').FooterValue := Format('%10.2f',[CTRetB]);
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmGestImp.gIvaComUpdateFooter(Sender: TObject);
begin
  gIvaCom.ColumnByName('Total').FooterValue := Format('%10.2f',[CTTota]);
  gIvaCom.ColumnByName('Neto').FooterValue := Format('%10.2f',[CTNeto]);
  gIvaCom.ColumnByName('MontoIva').FooterValue := Format('%10.2f',[CTMIva]);
  gIvaCom.ColumnByName('Exento').FooterValue := Format('%10.2f',[CTExen]);
  gIvaCom.ColumnByName('NoComputables').FooterValue := Format('%10.2f',[CTNoCm]);
  gIvaCom.ColumnByName('RetIva').FooterValue := Format('%10.2f',[CTRetI]);
  gIvaCom.ColumnByName('RetGan').FooterValue := Format('%10.2f',[CTRetG]);
  gIvaCom.ColumnByName('RetIB').FooterValue := Format('%10.2f',[CTRetB]);
end;

procedure TfrmGestImp.IvaVenCalcFields(DataSet: TDataSet);
begin
  try
    if IvaVenPRIMER_COMP.AsInteger = IvaVenULTIMO_COMP.AsInteger then
      IvaVenDetalle.Value := Format('%.4d-%.8d', [IvaVenPUNTOVTA.AsInteger, IvaVenPRIMER_COMP.AsInteger])
    else
      IvaVenDetalle.Value := Format('%.4d-%.8d/%.6d', [IvaVenPUNTOVTA.AsInteger, IvaVenPRIMER_COMP.AsInteger, IvaVenULTIMO_COMP.AsInteger]);
  except
    IvaVenDetalle.Value := IvaVenPRIMER_COMP.AsString;
  end;
end;

procedure TfrmGestImp.ArmarLibroVentas(D, H: TDate; S, E: Integer);
(*
Select L.IdSucursal, L.Fecha, L.PuntoVta, L.Nombre, D.Documento as TipoDocCli,
       L.NroDoc, T.DescCorta as DetCom, L.Primer_Comp, L.Ultimo_Comp,
       I.IvaCorto as DetIva, L.Neto,  L.Exento, L.NoComputables, L.IvaAlicuota1,
       L.IvaAlicuota2, L.Total
From IMPUESTOS_LIVENTAS(D, H, S, E) L
Join TipoDoc D
  on D.TipoDoc = L.TipoDoc
Join TipoIva I
  on I.TipoIva = L.TipoIva
Join TiposComp T
  on T.IdComprobante = L.TipoFactura
Order By L.Fecha, L.PuntoVta

Select Sum(Neto) as TNeto,
       Sum(Exento) as TExento,
       Sum(NoComputables) as TNoComp,
       Sum(IvaAlicuota1) as TIva1,
       Sum(IvaAlicuota2) as TIva2,
       Sum(Total) as TTotal
From IMPUESTOS_LIVENTAS(D, H, S, E) L
*)

  procedure SumIvaVen;
  var
    q: TMDOQuery;
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := qIvaVen.Database;
      q.Transaction := qIvaVen.Transaction;
      q.SQL.Add('Select Sum(L.Neto) as TNeto, ');
      q.SQL.Add('       Sum(L.Exento) as TExento, ');
      q.SQL.Add('       Sum(L.NoComputables) as TNoComp, ');
      q.SQL.Add('       Sum(L.IvaAlicuota1) as TIva1, ');
      q.SQL.Add('       Sum(L.IvaAlicuota2) as TIva2, ');
      q.SQL.Add('       Sum(L.Total) as TTotal ');
      q.SQL.Add('From IMPUESTOS_LIVENTAS(:D, :H, :S, :E) L ');
      q.ParamByName('D').AsDate := D;
      q.ParamByName('H').AsDate := H;
      q.ParamByName('S').AsInteger := S;
      q.ParamByName('E').AsInteger := E;
      q.Open;

      VTNeto := q.FieldByName('TNeto').AsCurrency;
      VTExen := q.FieldByName('TExento').AsCurrency;
      VTNoCm := q.FieldByName('TNoComp').AsCurrency;
      VTIva1 := q.FieldByName('TIva1').AsCurrency;
      VTIva2 := q.FieldByName('TIva2').AsCurrency;
      VTTota := q.FieldByName('TTotal').AsCurrency;
      q.Close;
    finally
      q.Free;
    end;
  end;

begin
  VTNeto := 0;
  VTExen := 0;
  VTNoCm := 0;
  VTIva1 := 0;
  VTIva2 := 0;
  VTTota := 0;
  gIvaVen.GroupFieldName := 'FechaF';
  try
    IvaVen.DisableControls;
    Screen.Cursor := crHourGlass;
    IvaVen.Close;
    IvaVen.Params.ParamByName('Desde').AsDate := D;
    IvaVen.Params.ParamByName('Hasta').AsDate := H;
    IvaVen.Params.ParamByName('IdSuc').AsInteger := S;
    IvaVen.Params.ParamByName('IdEmp').AsInteger := E;
    IvaVen.Open;
    if not IvaVen.IsEmpty then
    begin
      IvaVen.First;
      SumIvaVen;
      btnImpVta.Enabled := True;
      btnExpVta.Enabled := True;
      gIvaVen.SetFocus
    end;
  finally
    Screen.Cursor := crDefault;
    IvaVen.EnableControls;
  end;
  gIvaVen.ColumnByName('Total').FooterValue := FloatToStrF(VTTota,ffCurrency,10,2);
  gIvaVen.ColumnByName('Neto').FooterValue  := FloatToStrF(VTNeto,ffCurrency,9,2);
  gIvaVen.ColumnByName('Exento').FooterValue := FloatToStrF(VTExen,ffCurrency,9,2);
  gIvaVen.ColumnByName('NoComputables').FooterValue := FloatToStrF(VTNoCm,ffCurrency,9,2);
  gIvaVen.ColumnByName('IvaAlicuota1').FooterValue := FloatToStrF(VTIva1,ffCurrency,8,2);
  gIvaVen.ColumnByName('IvaAlicuota2').FooterValue := FloatToStrF(VTIva2,ffCurrency,8,2);
end;

function TfrmGestImp.Sumar_DDJJ: Boolean;
var
  IB: array[1..10]of record
        Coef: Currency;
        IdCoef: Integer;
        Detalle: St30;
        BaseImp, TotalCoef: Currency;
      end;
  TotalIB, LH, TotalLH, TotImpProv: Currency;
  Alic1, Alic2, AlicO: Double;
  j, NroAlcIB: SmallInt;
  FecIni, FecFin: TDate;
begin
  Result := False;
  FecIni := EncodeDate(edtYearTot.Value, cbMesTot.ItemIndex + 1, 1);
  FecFin := EncodeDate(edtYearTot.Value, cbMesTot.ItemIndex + 1, MonthDays[IsLeapYear(edtYearTot.Value), cbMesTot.ItemIndex + 1]);
  pnlFoot_Iva.Caption := cbTotEmp.Text +' '+ DateToStr(FecIni)+ ' ' +DateToStr(FecFin);
  Application.ProcessMessages;

  FillChar(IB,sizeOf(IB),0);
  Alic1 := GetAlcIva(1);
  Alic2 := GetAlcIva(2);
  AlicO := GetAlcIva(3);
  with dmGestion do
  begin // Alicuotas Ingresos Brutos
    LH := EmpresasAlcImpProvincial.Value;
    IngBruto.First;
    NroAlcIB := 1;
    while (not IngBruto.Eof) and (NroAlcIB < 10) do
    begin
      IB[NroAlcIB].Coef := IngBrutoCoefIB.Value;
      IB[NroAlcIB].IdCoef := IngBrutoIdIngBru.Value;
      IB[NroAlcIB].Detalle := Format('%-20s %5.2f %s', [IngBrutoDetalleIB.AsString, IngBrutoCoefIB.AsFloat,'%']);
      Inc(NroAlcIB);
      IngBruto.Next;
    end;
  end;
  {************************* COMPRAS *************************************}
  FillChar(DJ_C,sizeOf(DJ_C),0);
  With DJ_C do
  begin
    qIvaTotCom.Close;
    qIvaTotCom.ParamByName('Desde').AsDate := FecIni;
    qIvaTotCom.ParamByName('Hasta').AsDate := FecFin;
    qIvaTotCom.ParamByName('IdEmp').AsInteger := Id_Emp;
    qIvaTotCom.Open;
    qIvaTotCom.First;
    While not qIvaTotCom.Eof do
    begin
      if (qIvaTotComTipoFactura.AsInteger in
         [FacA, DebA, CreA, RecA, FacC, DebC, CreC, RecC, DcAd, ODV]) then
      begin
        CprExent := CprExent + qIvaTotComExento.AsCurrency;
        TotIpItC := TotIpItC + qIvaTotComNoComputables.AsCurrency;
        CrdTAlc1 := CrdTAlc1 + qIvaTotComIvaAlicuota1.AsCurrency;
        CrdTAlc2 := CrdTAlc2 + qIvaTotComIvaAlicuota2.AsCurrency;
        CrdTAlcO := CrdTAlcO + qIvaTotComIVAOTALC.AsCurrency;
        RetPrsCp := RetPrsCp + qIvaTotComRetIva.AsCurrency;
        if qIvaTotComTipoFactura.Value in [CreA, Creb] then
        begin
          DevQtDC1 := DevQtDC1 + qIvaTotComIvaAlicuota1.AsCurrency;
          DevQtDC2 := DevQtDC2 + qIvaTotComIvaAlicuota2.AsCurrency;
          DevQtDCO := DevQtDCO + qIvaTotComIvaOTALC.AsCurrency;
        end;
        TotNetoC := TotNetoC + qIvaTotComNeto.AsCurrency;
        TotCompr := TotCompr + qIvaTotComTotal.AsCurrency;
        TotRetIB := TotRetIB + qIvaTotComRetIBto.AsCurrency;
        TotRetLH := TotRetLH + qIvaTotComRetLH.AsCurrency;
        TotRetGN := TotRetGN + qIvaTotComRetGan.AsCurrency;
        CrdTotal:= CrdTAlc1+CrdTAlc2+CrdTAlcO;
        TotDevQt:= DevQtDC1+DevQtDC2+DevQtDCO;
      end;
      qIvaTotCom.Next;
    end;
  end;

  {************************* VENTAS *************************************}
  (*
  FacA = 1;  DebA = 2;  CreA = 3;  RecA = 4;  Tkt  = 5;  FacB = 6;  DebB = 7;  CreB = 8;
  RecB = 9;  CrrZ = 10;  FacC = 11;  DebC = 12;  CreC = 13;  RecC = 14;  RemitoX = 15;
  DcAd = 16;  ODV  = 17;  NoImputable = 18;
  *)

  FillChar(DJ_V,sizeOf(DJ_V),0);
  With DJ_V do
  begin
    qIvaTotVen.Close;
    qIvaTotVen.ParamByName('Desde').AsDate := FecIni;
    qIvaTotVen.ParamByName('Hasta').AsDate := FecFin;
    qIvaTotVen.ParamByName('IdEmp').AsInteger := Id_Emp;
    qIvaTotVen.Prepare;
    qIvaTotVen.Open;
    qIvaTotVen.First;
    while not qIvaTotVen.Eof do
    begin
      if qIvaTotVenTipoFactura.AsInteger in [CreA, CreB] then
      begin
        DevQtDA1 := DevQtDA1 + qIvaTotVenIvaAlicuota1.AsCurrency;
        DevQtDA2 := DevQtDA2 + qIvaTotVenIvaAlicuota2.AsCurrency;
      end;
      VtaExent := VtaExent + qIvaTotVenExento.AsCurrency;
      TotIpItV := TotIpItV + qIvaTotVenNoComputables.AsCurrency;
      TotNetoV := TotNetoV + qIvaTotVenNeto.AsCurrency;
      TotVenta := TotVenta + qIvaTotVenTotal.AsCurrency;
      DebTotA1 := DebTotA1 + qIvaTotVenIvaAlicuota1.AsCurrency;
      DebTotA2 := DebTotA2 + qIvaTotVenIvaAlicuota2.AsCurrency;
      DebTotal := DebTotal + qIvaTotVenIvaAlicuota1.AsCurrency + qIvaTotVenIvaAlicuota2.AsCurrency;
      Case qIvaTotVenTipoIva.AsInteger of
        RI: begin
          DebFRIA1 := DebFRIA1 + qIvaTotVenIvaAlicuota1.AsCurrency;
          DebFRIA2 := DebFRIA2 + qIvaTotVenIvaAlicuota2.AsCurrency;
        end;
        CFi, BU, NR: begin
          DebFCFA1 := DebFCFA1 + qIvaTotVenIvaAlicuota1.AsCurrency;
          DebFCFA2 := DebFCFA2 + qIvaTotVenIvaAlicuota2.AsCurrency;
        end;
        EX: begin
          DebFExA1 := DebFExA1 + qIvaTotVenIvaAlicuota1.AsCurrency;
          DebFExA2 := DebFExA2 + qIvaTotVenIvaAlicuota2.AsCurrency;
        end;
        RMT: begin
          DebFRMA1 := DebFRMA1 + qIvaTotVenIvaAlicuota1.AsCurrency;
          DebFRMA2 := DebFRMA2 + qIvaTotVenIvaAlicuota2.AsCurrency;
        end;
        NC: begin
          DebFNCA1 := DebFNCA1 + qIvaTotVenIvaAlicuota1.AsCurrency;
          DebFNCA2 := DebFNCA2 + qIvaTotVenIvaAlicuota2.AsCurrency;
        end;
      end;
      qIvaTotVen.Next;
    end;

    qItemsFV.Close;
    qItemsFV.ParamByName('Desde').AsDate := FecIni;
    qItemsFV.ParamByName('Hasta').AsDate := FecFin;
    qItemsFV.ParamByName('IdEmp').AsInteger := Id_Emp;
    qItemsFV.Open;
    qItemsFV.First;
    while not qItemsFV.Eof do
    begin
      if qItemsFVIdAlcIB.AsInteger in [1..9] then
      begin
        IB[qItemsFVIdAlcIB.AsInteger].TotalCoef := IB[qItemsFVIdAlcIB.AsInteger].TotalCoef + qItemsFVIngBto.AsCurrency;
        IB[qItemsFVIdAlcIB.AsInteger].BaseImp := IB[qItemsFVIdAlcIB.AsInteger].BaseImp + qItemsFVPrecioNeto.AsCurrency + qItemsFVImpInt.AsCurrency;
      end;
      qItemsFV.Next;
    end;
  end;

  try
    if TotalImp.Active then
      TotalImp.EmptyDataSet
    else
      TotalImp.CreateDataSet;

    TotalImp.DisableControls;
    With DJ_C, DJ_V do begin
      TotalImp.Append;
      TotalImpDescripcion.Value:= Format('Conceptos del Periodo: %s/%d',[cbMesTot.Text, edtYearTot.Value]);
      {************************* COMPRAS *************************************}
      TotalImp.Append;
      TotalImpDescripcion.Value:= 'COMPRAS y GASTOS      CREDITO FISCAL';
      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Compras Exentas';
      TotalImpTotalAlc.Value:= CprExent;
      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Compras No Computable/Impuestos Internos';
      TotalImpTotalAlc.Value:= TotIpItC;
      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Compras Exentas + No Computable/Impuestos Internos';
      TotalImpTotalAlc.Value:= CprExent+TotIpItC;
      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Credito Fiscal Alícuota ' + FloatToStrF(Alic1,ffFixed,5,2)+'%';
      TotalImpTotalAlc.Value:= CrdTAlc1;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Credito Fiscal Alícuota ' + FloatToStrF(Alic2,ffFixed,5,2)+'%';
      TotalImpTotalAlc.Value:= CrdTAlc2;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Credito Fiscal Alícuota ' + FloatToStrF(AlicO,ffFixed,5,2)+'%';
      TotalImpTotalAlc.Value:= CrdTAlcO;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Credito Fiscal';
      TotalImpTotalAlc.Value:= CrdTotal;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Retenciones, Percepciones y/o Pagos a Cuenta';
      TotalImpTotalAlc.Value:= RetPrsCp;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Impuesto por Dev. Quitas y/o Descuentos ' + FloatToStrF(Alic1,ffFixed,5,2)+'%';;
      TotalImpTotalAlc.Value:= DevQtDC1;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Impuesto por Dev. Quitas y/o Descuentos ' + FloatToStrF(Alic2,ffFixed,5,2)+'%';;
      TotalImpTotalAlc.Value:= DevQtDC2;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Impuesto por Dev. Quitas y/o Descuentos ' + FloatToStrF(AlicO,ffFixed,5,2)+'%';;
      TotalImpTotalAlc.Value:= DevQtDCO;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Impuesto por Devoluciones Quitas y/o Descuentos';
      TotalImpTotalAlc.Value:= TotDevQt;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Neto Compras';
      TotalImpTotalAlc.Value:= TotNetoC;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Operaciones de Compras';
      TotalImpTotalAlc.Value:= TotCompr;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Retenciones de Ganancias';
      TotalImpTotalAlc.Value:= TotRetGN;

      {************************* VENTAS **************************************}
      TotalImp.Append;
      TotalImpDescripcion.Value:= '                    ';
      TotalImp.Append;
      TotalImpDescripcion.Value:= 'VENTAS                 DEBITO FISCAL';

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Ventas Exentas';
      TotalImpTotalAlc.Value:= VtaExent;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Ventas No Computables/Impuestos Internos';
      TotalImpTotalAlc.Value:= TotIpItV;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Ventas Exentas + No Computables/Imp. Internos ';
      TotalImpTotalAlc.Value:= TotIpItV+VtaExent;

      TotalImp.Append;
      TotalImpDescripcion.Value := 'Debito Fiscal Responsables Inscriptos ' + FloatToStrF(Alic1,ffFixed,5,2)+'%';
      TotalImpMtoAlc.Value := DebFRIA1;
      TotalImpTotalAlc.Value:= DebFRIA1;

      TotalImp.Append;
      TotalImpDescripcion.Value := 'Debito Fiscal Responsables Inscriptos ' + FloatToStrF(Alic2,ffFixed,5,2)+'%';
      TotalImpMtoAlc.Value := DebFRIA2;
      TotalImpTotalAlc.Value:= DebFRIA2;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Debito Fiscal Consumidores Finales ' + FloatToStrF(Alic1,ffFixed,5,2)+'%';
      TotalImpMtoAlc.Value := DebFCFA1;
      TotalImpTotalAlc.Value:= DebFCFA1;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Debito Fiscal Consumidores Finales ' + FloatToStrF(Alic2,ffFixed,5,2)+'%';
      TotalImpMtoAlc.Value := DebFCFA2;
      TotalImpTotalAlc.Value:= DebFCFA2;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Debito Fiscal a Exentos en IVA ' + FloatToStrF(Alic1,ffFixed,5,2)+'%';
      TotalImpMtoAlc.Value := DebFExA1;
      TotalImpTotalAlc.Value:= DebFExA1;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Debito Fiscal a Exentos en IVA ' + FloatToStrF(Alic2,ffFixed,5,2)+'%';
      TotalImpMtoAlc.Value := DebFExA2;
      TotalImpTotalAlc.Value:= DebFExA2;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Debito Fiscal No Categorizados ' + FloatToStrF(Alic1,ffFixed,5,2)+'%';
      TotalImpMtoAlc.Value := DebFNCA1;
      TotalImpTotalAlc.Value:= DebFNCA1;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Debito Fiscal No Categorizados ' + FloatToStrF(Alic2,ffFixed,5,2)+'%';
      TotalImpMtoAlc.Value := DebFNCA2;
      TotalImpTotalAlc.Value:= DebFNCA2;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Debito Fiscal Responsables Monotributo ' + FloatToStrF(Alic1,ffFixed,5,2)+'%';
      TotalImpMtoAlc.Value := DebFRMA1;
      TotalImpTotalAlc.Value:= DebFRMA1;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Debito Fiscal Responsables Monotributo ' + FloatToStrF(Alic2,ffFixed,5,2)+'%';
      TotalImpMtoAlc.Value := DebFRMA2;
      TotalImpTotalAlc.Value:= DebFRMA2;

      TotalImp.Append;
      TotalImpDescripcion.Value := 'Total Debito Fiscal';
      TotalImpMtoAlc.Value := DebTotA1 + DebTotA2;
      TotalImpTotalAlc.Value := DebTotal;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Retenciones, Percepciones y/o Pagos a Cuenta';
      TotalImpTotalAlc.Value:= RetPrsVt;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Devoluciones, Quitas y/o Descuentos ' + FloatToStrF(Alic1,ffFixed,5,2)+'%';
      TotalImpMtoAlc.Value := DevQtDA1;
      TotalImpTotalAlc.Value:= DevQtDA1;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Devoluciones, Quitas y/o Descuentos ' + FloatToStrF(Alic2,ffFixed,5,2)+'%';
      TotalImpMtoAlc.Value := DevQtDA2;
      TotalImpTotalAlc.Value:= DevQtDA2;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Neto Ventas';
      TotalImpTotalAlc.Value:= TotNetoV;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Operaciones de Ventas';
      TotalImpTotalAlc.Value:= TotVenta;

      {************************* ING. BRUTOS **************************************}
      TotalImp.Append;
      TotalImpDescripcion.Value := '                    ';
      TotalImp.Append;
      TotalImpDescripcion.Value := ' Impuestos Provinciales:      INGRESOS BRUTOS (D.G.R.)';

      TotalIB := 0;
      For j := 1 to 9 do
      begin
        if (IB[j].IdCoef > 0) and (IB[j].TotalCoef > 0.0000) then
        begin
          TotalIB:= TotalIB + IB[j].TotalCoef;
          TotalImp.Append;
          TotalImpDescripcion.Value := Format('%-30s %-20s ',[IB[j].Detalle,' Base Imponible: ']);
          TotalImpMtoAlc.Value := IB[j].BaseImp;
          TotalImpTotalAlc.Value:= IB[j].TotalCoef;
        end;
      end;
      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Ingresos Brutos';
      TotalImpTotalAlc.Value:= TotalIB;

      TotalLH:= (TotalIB * LH) / 100;
      TotalImp.Append;
      TotalImpDescripcion.Value:= dmGestion.EmpresasDetImpProvincial.AsString + ' ' + FloatToStr(LH) + '%';;
      TotalImpTotalAlc.Value := TotalLH;

      TotImpProv:= TotalIB + TotalLH;
      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Impuestos Provinciales';
      TotalImpTotalAlc.Value:= TotImpProv;

      TotalImp.Append;
      TotalImpDescripcion.Value:= Format('%-40s %7.2f %s',['Descuento Pago anticipado Ing. Brutos ',dmGestion.EmpresasDescuentoIngBtos.Value,'%']);
      TotalImpMtoAlc.Value := (TotalIB*dmGestion.EmpresasDescuentoIngBtos.Value)/100;
      TotalImpTotalAlc.Value:= TotalIB - ((TotalIB*dmGestion.EmpresasDescuentoIngBtos.Value)/100);

      TotalImp.Append;
      TotalImpDescripcion.Value:= Format('%-40s %7.2f %s',['Descuento Pago anticipado Lote Hogar ',dmGestion.EmpresasDescuentoIngBtos.Value,'%']);
      TotalImpMtoAlc.Value := (TotalLH*dmGestion.EmpresasDescuentoIngBtos.Value)/100;
      TotalImpTotalAlc.Value:= TotalLH + ((TotalLH*dmGestion.EmpresasDescuentoIngBtos.Value)/100);

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total a Pagar Impuestos Provinciales';
      TotalImpTotalAlc.Value:= TotImpProv-((TotImpProv*dmGestion.EmpresasDescuentoIngBtos.Value)/100);

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Retenciones de Ingresos Brutos';
      TotalImpTotalAlc.Value:= TotRetIB;

      TotalImp.Append;
      TotalImpDescripcion.Value:= 'Total Retenciones Lote Hogar';
      TotalImpTotalAlc.Value:= TotRetLH;
      TotalImp.Post;
    end;
  finally
    TotalImp.First;
    TotalImp.EnableControls;
    Result := True;
  end;
end;

procedure TfrmGestImp.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGestImp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qIvaCom.Close;
  qIvaCom.Unprepare;
  qIvaTotCom.Close;
  qIvaTotVen.Close;
  qItemsFV.Close;
  Action:= caFree;
end;

procedure TfrmGestImp.FormCreate(Sender: TObject);
var
  i: Integer;
  Year, Month, Day: Word;
begin
  CTNeto := 0;  CTExen := 0;  CTNoCm := 0;  CTMIva := 0; CTRetI := 0;  CTTota := 0;
  CTRetG := 0;  CTRetB := 0;
  VTNeto := 0;  VTExen := 0;  VTNoCm := 0;  VTIva1 := 0; VTTota := 0;
  SucVta := Todos;
  SucPrd := Todos;
  pnlFoot_Iva.Caption := OwnerName+'   Agenda Impositiva';
  Caption := 'Totales de Impuestos por periodos de: ' + OwnerName;

  edtPaginaVta.IntValue := 1;
  edtPaginaCmp.IntValue := 1;

  DecodeDate(Date, Year, Month, Day);
  edtYearCmp.Value := Year;
  edtYearVta.Value := Year;
  edtYearTot.Value := Year;
  edtYearPer.Value := Year;
  edtAnioControlCpm.Value := Year;
  cbMesTot.Items.Clear;
  cbMesVta.Items.Clear;
  cbMesCmp.Items.Clear;
  cbMesPer.Items.Clear;
  cbMesControlCmp.Items.Clear;
  for i := 1 to 12 do
  begin
    cbMesVta.Items.Add(LongMonthNames[i]);
    cbMesTot.Items.Add(LongMonthNames[i]);
    cbMesCmp.Items.Add(LongMonthNames[i]);
    cbMesPer.Items.Add(LongMonthNames[i]);
    cbMesControlCmp.Items.Add(LongMonthNames[i]);
  end;
  cbMesVta.ItemIndex := Month - 1;
  cbMesTot.ItemIndex := Month - 1;
  cbMesCmp.ItemIndex := Month - 1;
  cbMesPer.ItemIndex := Month - 1;
  cbMesControlCmp.ItemIndex := Month - 1;

  cbPerAnu.Items.Clear;
  cbPerAnu.Items.AddObject('<TODOS>', TObject(0));
  for i := 2000 to Year do
    cbPerAnu.Items.AddObject('AÑO '+IntToStr(i), TObject(i));

  edtVtaDesde.Date := IncMonth(Date, -1);
  edtVtaHasta.Date := Date;
  btnImpCmp.Enabled := False;
  btnExpCmp.Enabled := False;
  btnImpVta.Enabled := False;
  btnExpVta.Enabled := False;
  lblNomPro.Visible := False;
  lblNomPro.Caption := '';
  edtProveedorCCC.Text := '0';

  cbSucCtr.Items.Clear;
  cbSucCtr.Items.AddObject('<TODOS>', TObject(Todos));
  cbSucAnu.Items.AddObject('<TODOS>', TObject(Todos));
  with dmGestion do
  begin
    Sucursales.Open;
    Sucursales.First;
    while not Sucursales.Eof do
    begin
      cbSucCtr.Items.AddObject(SucursalesNombreSuc.AsString, TObject(SucursalesIdSucursal.AsInteger));
      cbSucAnu.Items.AddObject(SucursalesNombreSuc.AsString, TObject(SucursalesIdSucursal.AsInteger));
      Sucursales.Next;
    end;

    Empresas.Open;
    Empresas.First;
    cbTotEmp.Items.Clear;
    cbTotEmp.Items.AddObject('<Todas>', TObject(0));
    cbEmpCmp.Items.Clear;
    cbEmpCmp.Items.AddObject('<Todas>', TObject(0));
    cbEmpVta.Items.Clear;
    cbEmpVta.Items.AddObject('<Todas>', TObject(0));
    cbEmpAnu.Items.Clear;
    cbEmpAnu.Items.AddObject('<Todas>', TObject(0));
    while not Empresas.Eof do
    begin
      cbTotEmp.Items.AddObject(EmpresasNOMBREEMPRESA.AsString, TObject(EmpresasIdEmpresa.AsInteger));
      cbEmpCmp.Items.AddObject(EmpresasNOMBREEMPRESA.AsString, TObject(EmpresasIdEmpresa.AsInteger));
      cbEmpVta.Items.AddObject(EmpresasNOMBREEMPRESA.AsString, TObject(EmpresasIdEmpresa.AsInteger));
      cbEmpAnu.Items.AddObject(EmpresasNOMBREEMPRESA.AsString, TObject(EmpresasIdEmpresa.AsInteger));
      Empresas.Next;
    end;
  end;
  cbSucCtr.ItemIndex := 0;
  cbSucAnu.ItemIndex := 0;
  cbTotEmp.ItemIndex := 0;
  cbEmpCmp.ItemIndex := 0;
  cbEmpVta.ItemIndex := 0;
  cbEmpAnu.ItemIndex := 0;
  edtVtaDesde.Date := Date;
  edtVtaHasta.Date := Date;
end;

procedure TfrmGestImp.FormShow(Sender: TObject);
begin
  TotND := 0;
  TotID := 0;
  TotCD := 0;
  TotVD := 0;
  TotOD := 0;
  Cant_OPV := 0;
  TotNt :=  0;
  TotBf :=  0;
  TotI1 :=  0;
  TotII :=  0;
  TotEx :=  0;
  TotVt :=  0;

  gVentas.GroupFieldName := 'FechaF';
  gVentasDia.GroupFieldName := 'FechaF';
  gTotImp.Selected.Clear;
  gTotImp.Selected.Add('Descripcion'#9'57'#9'Conceptos~del Periodo');
  gTotImp.Selected.Add('MtoAlc'#9'22'#9'Impuesto');
  gTotImp.Selected.Add('TotalAlc'#9'23'#9'Totales'#9'F');
  gTotImp.RefreshDisplay;
end;

procedure TfrmGestImp.btnCalcCmpClick(Sender: TObject);
begin
  ArmarLibroCompras
end;

procedure TfrmGestImp.btnImpCmpClick(Sender: TObject);
begin
  pnlPaginaCmp.Visible := True;
  edtPaginaCmp.SetFocus;
end;

procedure TfrmGestImp.edtPaginaCmpExit(Sender: TObject);
begin
  try
    lblICDocProp.Text := 'CUIT: '+ Documento;
    lblICPropietario.Text := DtEmpresa;
    lblICTitulo.Text := 'Libro IVA COMPRAS - Periodo: ' + cbMesCmp.Text + '/' + IntToStr(edtYearCmp.Value);
    try
      CmpEmpezarEn := edtPaginaCmp.IntValue;
    except
      CmpEmpezarEn := 1;
    end;
    qIvaCom.DisableControls;
    rpIvaCompras.Print;
  finally
    qIvaCom.EnableControls;
  end;
end;

procedure TfrmGestImp.lblvarNroPagICCalc(Sender: TObject; var Value: Variant);
begin
  Value := 'Página Nº '+IntToStr(CmpEmpezarEn-1+rpIvaCompras.PageNo);
end;

procedure TfrmGestImp.lblvarNroPagIVCalc(Sender: TObject; var Value: Variant);
begin
  Value := 'Página Nº '+IntToStr(VtaEmpezarEn-1+rpIvaVentas.PageNo);
end;

procedure TfrmGestImp.btnExpCmpClick(Sender: TObject);
begin
  dmGestion.IyC_Exp.DataSet := qIvaCom;
  dmGestion.IyC_Exp.Select;
end;

procedure TfrmGestImp.gIvaComDblClick(Sender: TObject);
begin
  Get_FacC(qIvaComIdFactura.AsInteger,
          qIvaComIdSucursal.AsInteger,
          qIvaComIdPuntoVenta.AsInteger);
end;

procedure TfrmGestImp.btnExpVtaClick(Sender: TObject);
begin
  dmGestion.IyC_Exp.DataSet := IvaVen;
  dmGestion.IyC_Exp.Select;
end;

procedure TfrmGestImp.btnImpVtaClick(Sender: TObject);
begin
  pnlPaginaVta.Visible := True;
  edtPaginaVta.SetFocus;
end;

procedure TfrmGestImp.edtPaginaVtaExit(Sender: TObject);
begin
  try
    lblIVDocProp.Text := 'CUIT: '+ Documento;
    if SucVta > Todos then
      lblIVPropietario.Text := DtEmpresa +' Sucursal: '+cbSucVta.Text
    else
      lblIVPropietario.Text := DtEmpresa;
    lblIVTitulo.Text := 'Libro IVA VENTAS - Periodo: ' +
                        cbMesVta.Text + '/' + IntToStr(edtYearVta.Value);
    try
      VtaEmpezarEn := edtPaginaVta.IntValue;
    except
      VtaEmpezarEn := 1;
    end;
    IvaVen.DisableControls;
    rpIvaVentas.Print;
  finally
    IvaVen.EnableControls;
    pnlPaginaVta.Visible := False;
  end;
end;

procedure TfrmGestImp.gIvaVenTopRowChanged(Sender: TObject);
begin
  gIvaVen.invalidate;
end;

procedure TfrmGestImp.btnCalcTotClick(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if Sumar_DDJJ then
    begin
      btnExpTot.Enabled := True;
      btnImpTot.Enabled := True;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmGestImp.btnImpTotClick(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    TotalImp.DisableControls;
    lblTITitulo1.Caption := DtEmpresa + '    Periodo: '+cbMesTot.Text+'/'+IntToStr(edtYearTot.Value);
    lblTITitulo2.Caption := 'Documento: '+Documento+'  Nº Ingresos Brutos: '+NroIngBto;
    rpTotalImp.Print;
  finally
    TotalImp.EnableControls;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmGestImp.btnExpTotClick(Sender: TObject);
begin
  dmGestion.IyC_Exp.DataSet := TotalImp;
  dmGestion.IyC_Exp.Select;
end;

procedure TfrmGestImp.Control_Compras;
Const
  ContPrv = 'Select F.IdFactura, F.IdSucursal, F.IdPuntoVenta, '+
            '       F.FechaF, F.NroFactura, F.TipoFactura, F.Proveedor,  '+
            '       P.Nombre, F.TipoIva, T.DescCorta, I.IvaCorto, '+
            '       F.Total, F.RetGan, F.RetIBto, F.RetLH, F.RetIva, '+
            '       Sum(F.IvaAlicuota1+F.IvaAlicuota2+F.IvaOtAlc) as TotIva '+
            'From FacCom F '+
            'Join Proveedores P '+
            '  on P.IdProveedor = F.Proveedor '+
            'Join TiposComp T '+
            '  on T.IdComprobante = F.TipoFactura '+
            'Join TipoIva I '+
            '  on I.TipoIva = F.TipoIva '+
            'Where (F.State = 0) And '+
            '      (F.TipoFactura not in (15, 18)) And '+
            '      (F.Periodo between :Desde And :Hasta) <Prove> '+
            'Group By F.IdFactura, F.IdSucursal, F.IdPuntoVenta, '+
            '         F.FechaF, F.NroFactura, F.TipoFactura, F.Proveedor, '+
            '         P.Nombre, F.TipoIva, T.DescCorta, I.IvaCorto, '+
            '         F.Total, F.RetGan, F.RetIBto, F.RetLH, F.RetIva '+
            'Order By F.FechaF ';
var
  FecIni, FecFin: TDate;
begin
  TotalCompras := 0;
  TotalImpCmp :=  0;
  TotRI :=  0;
  TotRB :=  0;
  TotRG :=  0;
  TotLH :=  0;
  FecIni := EncodeDate(edtAnioControlCpm.Value, cbMesControlCmp.ItemIndex + 1, 1);
  FecFin := EncodeDate(edtAnioControlCpm.Value, cbMesControlCmp.ItemIndex + 1, MonthDays[IsLeapYear(edtAnioControlCpm.Value), cbMesControlCmp.ItemIndex + 1]);

  qCtrIvaCom.Close;
  qCtrIvaCom.SQL.Clear;
  if Entidad > Todos then
    qCtrIvaCom.SQL.Text := StringReplace(ContPrv, '<Prove>', 'And (F.Proveedor = '+IntToStr(Entidad)+')', [rfReplaceAll])
  else
    qCtrIvaCom.SQL.Text := StringReplace(ContPrv, '<Prove>', '', [rfReplaceAll]);
  qCtrIvaCom.ParamByName('Desde').AsDate := FecIni;
  qCtrIvaCom.ParamByName('Hasta').AsDate := FecFin;
  qCtrIvaCom.Open;
  if not qCtrIvaCom.IsEmpty then
  begin
    try
      qCtrIvaCom.DisableControls;
      qCtrIvaCom.First;
      while not qCtrIvaCom.Eof do
      begin
        TotalCompras := TotalCompras + qCtrIvaComTOTAL.AsCurrency;
        TotalImpCmp  := TotalImpCmp + qCtrIvaComTOTIVA.AsCurrency;
        TotRI := TotRI + qCtrIvaComRETIVA.AsCurrency;
        TotRB := TotRB + qCtrIvaComRETIBTO.AsCurrency;
        TotRG := TotRG + qCtrIvaComRETGAN.AsCurrency;
        TotLH := TotLH + qCtrIvaComRETLH.AsCurrency;
        qCtrIvaCom.Next;
      end;
    finally
      qCtrIvaCom.EnableControls;
      qCtrIvaCom.First;
      gCompras.ColumnByName('TotIva').FooterValue := Format('%10.2f',[TotalImpCmp]);
      gCompras.ColumnByName('Total').FooterValue  := Format('%10.2f',[TotalCompras]);
      gCompras.ColumnByName('RetIVA').FooterValue := Format('%10.2f',[TotRI]);
      gCompras.ColumnByName('RetGan').FooterValue := Format('%10.2f',[TotRG]);
      gCompras.ColumnByName('RetIBto').FooterValue:= Format('%10.2f',[TotRB]);
      gCompras.ColumnByName('RetLH').FooterValue  := Format('%10.2f',[TotLH]);
      btnExpCompras.Enabled := True;
      gCompras.SetFocus;
    end;
  end;
end;

procedure TfrmGestImp.gComprasDblClick(Sender: TObject);
begin
  Get_FacC(qCtrIvaComIdFactura.AsInteger,
           qCtrIvaComIdSucursal.AsInteger,
           qCtrIvaComIdPuntoVenta.AsInteger);
end;

procedure TfrmGestImp.gVentasDblClick(Sender: TObject);
begin
  Get_FacV(qCtrIvaVenIdFactura.AsInteger,
           qCtrIvaVenIdSucursal.AsInteger,
           qCtrIvaVenIdPuntoVenta.AsInteger);
end;

procedure TfrmGestImp.btnCalcularComprasClick(Sender: TObject);
begin
  Control_Compras;
end;

procedure TfrmGestImp.Control_Ventas;
Const
  ControlV = 'Select F.IdFactura, F.IdSucursal, F.IdPuntoVenta, F.FechaF, F.NroFactura, '+
             '       F.Bonificacion, F.Neto, F.Exento, F.NoComputables, F.IvaAlicuota1, '+
             '       F.IvaAlicuota2, F.Total, F.Sector, F.CompRef, E.Nombre, T.DescCorta, '+
             '       V.IvaCorto, K.DetSuc '+
             'From FacVen F '+
             'Join Clientes E '+
             '  on E.IdCliente = F.Cliente and E.IdSucursal = F.IdSucursal '+
             'Join TiposComp T '+
             '  on T.IdComprobante = F.TipoFactura '+
             'Join TipoIva V '+
             '  on V.TipoIva = F.TipoIva '+
             'Join Sucursales K '+
             '  on K.IdSucursal = F.IdSucursal '+
             'Where (F.State = 0) and (F.FechaF between :Desde And :Hasta) And '+
             '      (F.TipoFactura in (1, 2, 3, 5, 6, 7, 8, 38, 43, 44, 45)) <Cond> '+
             'Order By F.FechaF, F.NroFactura ';

  ControlD = 'Select F.FechaF, Count(F.IdFactura) as CantOP, Sum(F.Neto) as TNeto, '+
             '       Sum(F.NoComputables) as TNoComp, Sum(Total) as Total, '+
             '       Sum(F.IvaAlicuota1+F.IvaAlicuota2) As TIva, F.IdSucursal, K.Detsuc '+
             'From FacVen F '+
             'Join Sucursales K '+
             '  on K.IdSucursal = F.IdSucursal '+
             'Where (F.State = 0) and (F.FechaF between :Desde And :Hasta) And '+
             '      (F.TipoFactura in (1, 2, 3, 5, 6, 7, 8, 38, 43, 44, 45)) <Cond> '+
             'Group By F.FechaF, F.IdSucursal, K.DetSuc ';

begin
  Screen.Cursor := crHourGlass;
  TotND := 0;
  TotID := 0;
  TotCD := 0;
  TotVD := 0;
  TotOD := 0;

  Cant_OPV := 0;
  TotNt :=  0;
  TotBf :=  0;
  TotI1 :=  0;
  TotII :=  0;
  TotEx :=  0;
  TotVt :=  0;
  qCtrIvaVen.Close;
  qCtrIvaVen.SQL.Clear;
  if SucCtr > Todos then
    qCtrIvaVen.SQL.Text := StringReplace(ControlV, '<Cond>',
                           ' And (F.IdSucursal = '+IntToStr(SucCtr)+')', [rfReplaceAll])
  else
    qCtrIvaVen.SQL.Text := StringReplace(ControlV, '<Cond>',
                           ' ', [rfReplaceAll]);
  qCtrIvaVen.ParamByName('Desde').AsDate := edtVtaDesde.Date;
  qCtrIvaVen.ParamByName('Hasta').AsDate := edtVtaHasta.Date;
  qCtrIvaVen.Open;
  try
    if not qCtrIvaVen.IsEmpty then
    begin
      qCtrIvaVen.DisableControls;
      qCtrIvaVen.First;
      while not qCtrIvaVen.Eof do
      begin
        Inc(Cant_OPV);
        TotNt := TotNt + qCtrIvaVenNeto.AsCurrency;
        TotBf := TotBf + qCtrIvaVenBonificacion.AsCurrency;
        TotI1 := TotI1 + qCtrIvaVenIvaAlicuota1.AsCurrency;

        TotII := TotII + qCtrIvaVenNoComputables.AsCurrency;
        TotEx := TotEx + qCtrIvaVenExento.AsCurrency;
        TotVt := TotVt + qCtrIvaVenTotal.AsCurrency;
        qCtrIvaVen.Next;
      end;
      qCtrDiaVen.Close;
      qCtrDiaVen.SQL.Clear;
      if SucCtr > Todos then
        qCtrDiaVen.SQL.Text := StringReplace(ControlD, '<Cond>',
                               ' And (F.IdSucursal = '+IntToStr(SucCtr)+')', [rfReplaceAll])
      else
        qCtrDiaVen.SQL.Text := StringReplace(ControlD, '<Cond>',
                               ' ', [rfReplaceAll]);
      qCtrDiaVen.ParamByName('Desde').AsDate := edtVtaDesde.Date;
      qCtrDiaVen.ParamByName('Hasta').AsDate := edtVtaHasta.Date;
      qCtrDiaVen.Open;
      if not qCtrDiaVen.IsEmpty then
      begin
        try
          qCtrDiaVen.DisableControls;
          qCtrDiaVen.First;
          while not qCtrDiaVen.Eof do
          begin
            TotND := TotND + qCtrDiaVenTNETO.AsCurrency;
            TotID := TotID + qCtrDiaVenTIVA.AsCurrency;
            TotCD := TotCD + qCtrDiaVenTNOCOMP.AsCurrency;
            TotVD := TotVD + qCtrDiaVenTOTAL.AsCurrency;
            TotOD := TotOD + qCtrDiaVenCANTOP.AsInteger;
            qCtrDiaVen.Next;
          end;
        finally
          gVentasDia.GroupFieldName := 'FechaF';
          qCtrDiaVen.EnableControls;
          qCtrDiaVen.First;
          gVentasDia.ColumnByName('FechaF').FooterValue := 'Totales';
          gVentasDia.ColumnByName('TNeto').FooterValue := Format('%10.2f',[TotND]);
          gVentasDia.ColumnByName('TIva').FooterValue := Format('%10.2f',[TotID]);
          gVentasDia.ColumnByName('TNoComp').FooterValue := Format('%10.2f',[TotCD]);
          gVentasDia.ColumnByName('Total').FooterValue := Format('%10.2f',[TotVD]);
          gVentasDia.ColumnByName('CantOP').FooterValue := Format('%d',[TotOD]);
          gVentasDia.RefreshDisplay;
        end;
      end;
      gVentas.SetFocus;
    end;
  finally
    gVentas.GroupFieldName := 'FechaF';
    qCtrIvaVen.First;
    qCtrIvaVen.EnableControls;
    gVentas.ColumnByName('Nombre').FooterValue := Format('Nº OP %d ',[Cant_OPV]);
    gVentas.ColumnByName('Neto').FooterValue := Format('%10.2f',[TotNt]);
    gVentas.ColumnByName('Bonificacion').FooterValue := Format('%10.2f',[TotBf]);
    gVentas.ColumnByName('IvaAlicuota1').FooterValue := Format('%10.2f',[TotI1]);
    gVentas.ColumnByName('NoComputables').FooterValue := Format('%10.2f',[TotII]);
    gVentas.ColumnByName('Exento').FooterValue := Format('%10.2f',[TotEx]);
    gVentas.ColumnByName('Total').FooterValue := Format('%10.2f',[TotVt]);
    Screen.Cursor := crDefault;
    btnExpVentas.Enabled := True;
  end;
end;

procedure TfrmGestImp.btnCalcularVentasClick(Sender: TObject);
begin
  Control_Ventas;
end;

procedure TfrmGestImp.edtProveedorCCCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F3 then
  begin
    Entidad := Busca_Pro;
    if Entidad > NoEncontrado then
    begin
      edtProveedorCCC.Text := IntToStr(Entidad);
    end;
  end;
end;

procedure TfrmGestImp.edtVtaDesdeEnter(Sender: TObject);
begin
  edtVtaDesde.SelectAll;
end;

procedure TfrmGestImp.edtVtaHastaEnter(Sender: TObject);
begin
  edtVtaHasta.SelectAll;
end;

procedure TfrmGestImp.gComprasUpdateFooter(Sender: TObject);
begin
  gCompras.ColumnByName('TotIva').FooterValue := Format('%10.2f',[TotalImpCmp]);
  gCompras.ColumnByName('Total').FooterValue := Format('%10.2f',[TotalCompras]);
  gCompras.ColumnByName('RetIVA').FooterValue := Format('%10.2f',[TotRI]);
  gCompras.ColumnByName('RetGan').FooterValue := Format('%10.2f',[TotRG]);
  gCompras.ColumnByName('RetIBto').FooterValue := Format('%10.2f',[TotRB]);
  gCompras.ColumnByName('RetLH').FooterValue := Format('%10.2f',[TotLH]);
end;

procedure TfrmGestImp.gVentasUpdateFooter(Sender: TObject);
begin
  gVentas.ColumnByName('Nombre').FooterValue := Format('Nº OP %d ',[Cant_OPV]);
  gVentas.ColumnByName('Neto').FooterValue := Format('%10.2f',[TotNt]);
  gVentas.ColumnByName('Bonificacion').FooterValue := Format('%10.2f',[TotBf]);
  gVentas.ColumnByName('IvaAlicuota1').FooterValue := Format('%10.2f',[TotI1]);
  gVentas.ColumnByName('NoComputables').FooterValue:= Format('%10.2f',[TotII]);
  gVentas.ColumnByName('Exento').FooterValue := Format('%10.2f',[TotEx]);
  gVentas.ColumnByName('Total').FooterValue := Format('%10.2f',[TotVt]);
end;

procedure TfrmGestImp.gVentasDiaUpdateFooter(Sender: TObject);
begin
  gVentasDia.ColumnByName('FechaF').FooterValue := 'Totales';
  gVentasDia.ColumnByName('TNeto').FooterValue := Format('%10.2f',[TotND]);
  gVentasDia.ColumnByName('TIva').FooterValue := Format('%10.2f',[TotID]);
  gVentasDia.ColumnByName('TNoComp').FooterValue := Format('%10.2f',[TotCD]);
  gVentasDia.ColumnByName('Total').FooterValue := Format('%10.2f',[TotVD]);
  gVentasDia.ColumnByName('CantOP').FooterValue := Format('%d',[TotOD]);
end;

procedure TfrmGestImp.edtProveedorCCCExit(Sender: TObject);
begin
  if Trim(edtProveedorCCC.Text) > Cero then
  begin
    try
      Entidad := StrToInt(edtProveedorCCC.Text);
    except
      raise EUsuario.Create('Código Proveedor no valido');
    end;
    if Entidad > 0 then
    begin
      if GetDatosEnt(Entidad, IdBranch, 2, Datos_Ent) then
        lblNomPro.Caption := Datos_Ent.Nombre
      else
        lblNomPro.Caption := ' - Todos - ';
      lblNomPro.Visible := True;
    end;
  end;
end;

procedure TfrmGestImp.btnExpComprasClick(Sender: TObject);
begin
  dmGestion.IyC_Exp.DataSet := qCtrIvaCom;
  dmGestion.IyC_Exp.Select;
end;

procedure TfrmGestImp.btnExpVentasClick(Sender: TObject);
begin
  dmGestion.IyC_Exp.DataSet := qCtrIvaVen;
  dmGestion.IyC_Exp.Select;
end;

procedure TfrmGestImp.btnImpVtasClick(Sender: TObject);
begin
  lblTituloCV1.Caption := OwnerName;
  lblTituloCV2.Caption := 'Ventas desde: '+DateToStr(edtVtaDesde.Date)+' hasta: '+
                           DateToStr(edtVtaHasta.Date)+' Sucursal: '+cbSucCtr.Text;
  try
    qCtrIvaVen.DisableControls;
    rpComprobantesDeVentas.Print;
  finally
    qCtrIvaVen.EnableControls;
  end;
end;

procedure TfrmGestImp.edtProveedorCCCEnter(Sender: TObject);
begin
  edtProveedorCCC.SelectAll;
end;

procedure TfrmGestImp.gIvaVenUpdateFooter(Sender: TObject);
begin
  gIvaVen.ColumnByName('Total').FooterValue := FloatToStrF(VTTota,ffCurrency,10,2);
  gIvaVen.ColumnByName('Neto').FooterValue := FloatToStrF(VTNeto,ffCurrency,9,2);
  gIvaVen.ColumnByName('Exento').FooterValue := FloatToStrF(VTExen,ffCurrency,9,2);
  gIvaVen.ColumnByName('NoComputables').FooterValue := FloatToStrF(VTNoCm,ffCurrency,9,2);
  gIvaVen.ColumnByName('IvaAlicuota1').FooterValue := FloatToStrF(VTIva1,ffCurrency,8,2);
end;

procedure TfrmGestImp.btnCalcVtaClick(Sender: TObject);
Var
  D,H: TDate;
begin
  if (edtYearVta.Value > 2000) And
     (edtYearVta.Value <= CurrentYear) then
  begin
    D := EncodeDate(edtYearVta.Value, cbMesVta.ItemIndex + 1, 1);
    H := EncodeDate(edtYearVta.Value, cbMesVta.ItemIndex + 1,
                    MonthDays[IsLeapYear(edtYearVta.Value),
                    cbMesVta.ItemIndex + 1]);
    if D <= H then
      ArmarLibroVentas(D, H, SucVta, Id_Emp);
  end;
end;

procedure TfrmGestImp.cbSucCtrChange(Sender: TObject);
begin
  SucCtr := Integer(cbSucCtr.Items.Objects[cbSucCtr.ItemIndex])
end;

procedure TfrmGestImp.cbSucCtrExit(Sender: TObject);
begin
  SucCtr := Integer(cbSucCtr.Items.Objects[cbSucCtr.ItemIndex])
end;

procedure TfrmGestImp.cbSucVtaChange(Sender: TObject);
begin
  try
    SucVta := Integer(cbSucVta.Items.Objects[cbSucVta.ItemIndex])
  except
    SucVta := Todos;
  end;
end;

procedure TfrmGestImp.cbTotEmpChange(Sender: TObject);
begin
  try
    Id_Emp := Integer(cbTotEmp.Items.Objects[cbTotEmp.ItemIndex]);
  except
    Id_Emp := 0;
  end;
end;

procedure TfrmGestImp.cbTotEmpExit(Sender: TObject);
Var
  q: TMDOQuery;
begin
  DtEmpresa := Vacio;
  Direccion := Vacio;
  Documento := Vacio;
  NroIngBto := Vacio;
  try
    Id_Emp := Integer(cbTotEmp.Items.Objects[cbTotEmp.ItemIndex]);
  except
    Id_Emp := Todos
  end;
  if (Id_Emp > 0) Then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.trGestion;
      q.SQL.Add('Select NombreEmpresa, Direccion,');
      q.SQL.Add('       Localidad, Provincia, ');
      q.SQL.Add('       DocuEmp, IngBrutEmp ');
      q.SQL.Add('From DatosSis ');
      q.SQL.Add('Where IdEmpresa =:IdEmp ');
      q.ParamByName('IdEmp').AsInteger := Id_Emp;
      q.Open;
      if not q.IsEmpty then
      begin
        DtEmpresa := q.FieldByName('NombreEmpresa').AsString;
        Direccion := q.FieldByName('Direccion').AsString+' '+
                     q.FieldByName('Localidad').AsString+' '+
                     q.FieldByName('Provincia').AsString;

        Documento := q.FieldByName('DocuEmp').AsString;
        NroIngBto := q.FieldByName('IngBrutEmp').AsString
      end
      else begin
        raise EUsuario.Create('No se Encuentran o no se puede acceder a los datos de la Empresa Nº '+IntToStr(Id_Emp));
      end;
    finally
      q.Free;
    end;
  end;
end;

procedure TfrmGestImp.pcGestIvaClose(Sender: TObject; var AllowClose: Boolean);
begin
  Close;
end;

procedure TfrmGestImp.pcGestIvaTabClick(Sender: TObject);
begin
  if pcGestIva.ActivePage = tsTotales then
  begin
    btnExpTot.Enabled := False;
    btnImpTot.Enabled := False;
  end;
  if pcGestIva.ActivePage = tsCompras then
  begin
    btnImpCmp.Enabled := False;
    btnExpCmp.Enabled := False;
  end;
  if pcGestIva.ActivePage = tsVentas then
  begin
    btnImpVta.Enabled := False;
    btnExpVta.Enabled := False;
  end;
  if pcGestIva.ActivePage = tsControles then
  begin
    btnExpCompras.Enabled := False;
    btnExpVentas.Enabled := False;
    Entidad := 0;
  end;
end;


procedure TfrmGestImp.cbEmpAnuChange(Sender: TObject);
begin
  try
    Id_Emp := Integer(cbEmpAnu.Items.Objects[cbEmpAnu.ItemIndex]);
  except
    Id_Emp := Todos
  end;
  if Id_Emp > 0 then
  begin
    cbSucAnu.Items.Clear;
    cbSucAnu.Items.AddObject('<TODOS>', TObject(Todos));
    with dmGestion do
    begin
      Sucursales.Open;
      Sucursales.First;
      while not Sucursales.Eof do
      begin
        if SucursalesIDEMPRESA.AsInteger = Id_Emp then
          cbSucAnu.Items.AddObject(SucursalesNombreSuc.AsString,
                         TObject(SucursalesIdSucursal.AsInteger));
        Sucursales.Next;
      end;
    end;
    cbSucAnu.ItemIndex := 0;
    cbSucAnu.Enabled := True;
  end
  else
    cbSucVta.Enabled := False;
end;

procedure TfrmGestImp.cbEmpAnuExit(Sender: TObject);
Var
  q: TMDOQuery;
begin
  DtEmpresa := Vacio;
  Direccion := Vacio;
  Documento := Vacio;
  NroIngBto := Vacio;
  try
    Id_Emp := Integer(cbEmpAnu.Items.Objects[cbEmpAnu.ItemIndex]);
  except
    Id_Emp := Todos
  end;
  if (Id_Emp > Todos) Then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.trGestion;
      q.SQL.Add('Select NombreEmpresa, Direccion,');
      q.SQL.Add('       Localidad, Provincia, ');
      q.SQL.Add('       DocuEmp, IngBrutEmp ');
      q.SQL.Add('From DatosSis ');
      q.SQL.Add('Where IdEmpresa =:IdEmp ');
      q.ParamByName('IdEmp').AsInteger := Id_Emp;
      q.Open;
      if not q.IsEmpty then
      begin
        DtEmpresa := q.FieldByName('NombreEmpresa').AsString;
        Direccion := q.FieldByName('Direccion').AsString+' '+
                     q.FieldByName('Localidad').AsString+' '+
                     q.FieldByName('Provincia').AsString;
        Documento := q.FieldByName('DocuEmp').AsString;
        NroIngBto := q.FieldByName('IngBrutEmp').AsString
      end
      else begin
        raise EUsuario.Create('No se Encuentran o no se puede acceder a los datos de la Empresa Nº '+IntToStr(Id_Emp));
      end;
    finally
      q.Free;
    end;
  end;
end;

procedure TfrmGestImp.cbEmpCmpChange(Sender: TObject);
begin
  try
    Id_Emp := Integer(cbEmpCmp.Items.Objects[cbEmpCmp.ItemIndex]);
  except
    Id_Emp := 0;
  end;
end;

procedure TfrmGestImp.cbEmpCmpExit(Sender: TObject);
Var
  q: TMDOQuery;
begin
  DtEmpresa := Vacio;
  Direccion := Vacio;
  Documento := Vacio;
  NroIngBto := Vacio;
  try
    Id_Emp := Integer(cbEmpCmp.Items.Objects[cbEmpCmp.ItemIndex]);
  except
    Id_Emp := Todos
  end;

  if (Id_Emp > 0) Then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.trGestion;
      q.SQL.Add('Select NombreEmpresa, Direccion,');
      q.SQL.Add('       Localidad, Provincia, ');
      q.SQL.Add('       DocuEmp, IngBrutEmp ');
      q.SQL.Add('From DatosSis ');
      q.SQL.Add('Where IdEmpresa =:IdEmp ');
      q.ParamByName('IdEmp').AsInteger := Id_Emp;
      q.Open;
      if not q.IsEmpty then
      begin
        DtEmpresa := q.FieldByName('NombreEmpresa').AsString;
        Direccion := q.FieldByName('Direccion').AsString+' '+
                     q.FieldByName('Localidad').AsString+' '+
                     q.FieldByName('Provincia').AsString;
        Documento := q.FieldByName('DocuEmp').AsString;
        NroIngBto := q.FieldByName('IngBrutEmp').AsString
      end
      else begin
        raise EUsuario.Create('No se Encuentran o no se puede acceder a los datos de la Empresa Nº '+IntToStr(Id_Emp));
      end;
    finally
      q.Free;
    end;
  end;
end;

procedure TfrmGestImp.cbEmpVtaChange(Sender: TObject);
begin
  try
    Id_Emp := Integer(cbEmpVta.Items.Objects[cbEmpVta.ItemIndex]);
  except
    Id_Emp := Todos
  end;
  if Id_Emp > 0 then
  begin
    cbSucVta.Items.Clear;
    cbSucVta.Items.AddObject('<TODOS>', TObject(Todos));
    with dmGestion do
    begin
      Sucursales.Open;
      Sucursales.First;
      while not Sucursales.Eof do
      begin
        if SucursalesIDEMPRESA.AsInteger = Id_Emp then
          cbSucVta.Items.AddObject(SucursalesNombreSuc.AsString,
                                   TObject(SucursalesIdSucursal.AsInteger));
        Sucursales.Next;
      end;
    end;
    cbSucVta.ItemIndex := 0;
    cbSucVta.Enabled := True;
  end
  else
    cbSucVta.Enabled := False;
end;

procedure TfrmGestImp.cbEmpVtaEnter(Sender: TObject);
begin
  cbSucVta.Enabled := False;
end;

procedure TfrmGestImp.cbEmpVtaExit(Sender: TObject);
Var
  q: TMDOQuery;
begin
  DtEmpresa := Vacio;
  Direccion := Vacio;
  Documento := Vacio;
  NroIngBto := Vacio;
  try
    Id_Emp := Integer(cbEmpVta.Items.Objects[cbEmpVta.ItemIndex]);
  except
    Id_Emp := Todos
  end;
  if (Id_Emp > Todos) Then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.trGestion;
      q.SQL.Add('Select NombreEmpresa, Direccion,');
      q.SQL.Add('       Localidad, Provincia, ');
      q.SQL.Add('       DocuEmp, IngBrutEmp ');
      q.SQL.Add('From DatosSis ');
      q.SQL.Add('Where IdEmpresa = :IdEmp ');
      q.ParamByName('IdEmp').AsInteger := Id_Emp;
      q.Open;
      if not q.IsEmpty then
      begin
        DtEmpresa := q.FieldByName('NombreEmpresa').AsString;
        Direccion := q.FieldByName('Direccion').AsString+' '+
                     q.FieldByName('Localidad').AsString+' '+
                     q.FieldByName('Provincia').AsString;
        Documento := q.FieldByName('DocuEmp').AsString;
        NroIngBto := q.FieldByName('IngBrutEmp').AsString
      end
      else begin
        raise EUsuario.Create('No se Encuentran o no se puede acceder a los datos de la Empresa Nº '+IntToStr(Id_Emp));
      end;
    finally
      q.Free;
    end;
  end;
end;

procedure TfrmGestImp.cbMesVtaEnter(Sender: TObject);
begin
  IvaVen.Close;
end;

procedure TfrmGestImp.cbPerAnuEnter(Sender: TObject);
begin
  cbPerAnu.SelectAll;
  lblDurCompa.Caption := 'elija un periodo a procesar. ';
end;

// Informes Comparativo Compras / Ventas
procedure TfrmGestImp.Calcular_Estadistico_Anual;
Const
  TC = 'Select TFAC, TIVA, PMES, PYEAR, Cant_C '+
       '       sum(CNETO) as TCNeto, '+
       '       sum(CEXENTO) as TCExento, '+
       '       sum(CNOCOMP) as TCNoComp, '+
       '       sum(CIVA1) as TCIVA1, '+
       '       sum(CIVA2) as TCIVA2, '+
       '       sum(CIVA3) as TCIVA3, '+
       '       sum(CTOTAL) as TCTOTAL, '+
       '       sum(CRETIVA) as TCRIVA, '+
       '       sum(CRETGAN) as TCRGAN, '+
       '       sum(CRETIBT) as TCRIBT, '+
       '       sum(CRETLH) as TCRLH, '+
       '       Cant_V,               '+
       '       sum(VNETO) as TVNETO, '+
       '       sum(VEXENTO) as TVEXENTO, '+
       '       sum(VNOCOMP) as TVNOCOMP, '+
       '       sum(VIVA1) as TVIVA1, '+
       '       sum(VIVA2) as TVIVA2, '+
       '       sum(VTOTAL) as TVTOTAL, '+
       '       sum(VINGBTO) as TVIBTO, '+
       '       sum(VLOTEHR) as TVLTH '+
       'From IMPUESTOS_TOTALES_ANUALES(:Ano, :Emp) '+
       'Group by TFAC, TIVA, PMES, PYEAR, Cant_C, Cant_V  '+
       'Order By PYear, PMes ';

  TT = 'Select PMES, PYEAR, '+
       '       sum(CANT_C) as TCant_C, '+
       '       sum(CNETO) as TCNeto, '+
       '       sum(CEXENTO) as TCExento, '+
       '       sum(CNOCOMP) as TCNoComp, '+
       '       sum(CIVA1) as TCIVA1, '+
       '       sum(CIVA2) as TCIVA2, '+
       '       sum(CIVA3) as TCIVA3, '+
       '       sum(CTOTAL) as TCTOTAL, '+
       '       sum(CRETIVA) as TCRIVA, '+
       '       sum(CRETGAN) as TCRGAN, '+
       '       sum(CRETIBT) as TCRIBT, '+
       '       sum(CRETLH) as TCRLH, '+
       '       sum(CANT_V) as TCant_V, '+
       '       sum(VNETO) as TVNETO, '+
       '       sum(VEXENTO) as TVEXENTO, '+
       '       sum(VNOCOMP) as TVNOCOMP, '+
       '       sum(VIVA1) as TVIVA1, '+
       '       sum(VIVA2) as TVIVA2, '+
       '       sum(VTOTAL) as TVTOTAL, '+
       '       sum(VINGBTO) as TVIBTO, '+
       '       sum(VLOTEHR) as TVLTH '+
       'From IMPUESTOS_TOTALES_ANUALES(:Ano, :Emp) '+
       'Group by PMES, PYEAR '+
       'Order By PYear, PMes ';

  TG = 'Select sum(CANT_C) as TCant_C, '+
       '       sum(CNETO) as TCNeto, '+
       '       sum(CEXENTO) as TCExento, '+
       '       sum(CNOCOMP) as TCNoComp, '+
       '       sum(CIVA1) as TCIVA1, '+
       '       sum(CIVA2) as TCIVA2, '+
       '       sum(CIVA3) as TCIVA3, '+
       '       sum(CTOTAL) as TCTOTAL, '+
       '       sum(CRETIVA) as TCRIVA, '+
       '       sum(CRETGAN) as TCRGAN, '+
       '       sum(CRETIBT) as TCRIBT, '+
       '       sum(CRETLH) as TCRLH, '+
       '       sum(CANT_V) as TCant_V, '+
       '       sum(VNETO) as TVNETO, '+
       '       sum(VEXENTO) as TVEXENTO, '+
       '       sum(VNOCOMP) as TVNOCOMP, '+
       '       sum(VIVA1) as TVIVA1, '+
       '       sum(VIVA2) as TVIVA2, '+
       '       sum(VTOTAL) as TVTOTAL, '+
       '       sum(VINGBTO) as TVIBTO, '+
       '       sum(VLOTEHR) as TVLTH '+
       'From IMPUESTOS_TOTALES_ANUALES(:Ano, :Emp) ';
var
  YC,
  SE: Integer;
begin
  try
    lblDurCompa.Caption := ' ';
    gTotIvaE.Enabled := False;
    gTotIvaI.Enabled := False;
    try
      SE := Integer(cbSucAnu.Items.Objects[cbSucAnu.ItemIndex]);
    except
      SE := 0;
    end;
    try
      YC := Integer(cbPerAnu.Items.Objects[cbPerAnu.ItemIndex]);
    except
      YC := 0;
    end;
    (*
    Comparativo.Close;
    TotalCompa.Close;
    TotalCompa.Params.ParamByName('ANO_TOT').AsInteger := YC;
    TotalCompa.Params.ParamByName('Suc_TOT').AsInteger := SE;
    lblDurCompa.Caption := 'Ini: '+TimeToStr(Time);
    Screen.Cursor := crSQLWait;
    TotalCompa.Open;
    if not TotalCompa.IsEmpty then
    begin
      Comparativo.Params.ParamByName('ANO_TOT').AsInteger := YC;
      Comparativo.Open;
    end;
    *)
  finally
    Screen.Cursor := crDefault;
    if not Comparativo.IsEmpty then
    begin
      gTotIvaE.Enabled := True;
      gTotIvaI.Enabled := True;
    end;
    lblDurCompa.Caption := lblDurCompa.Caption+ ' -  Fin: '+TimeToStr(Time);
    Application.ProcessMessages;
  end;
end;

procedure TfrmGestImp.TotalCompaAfterScroll(DataSet: TDataSet);
begin
  Comparativo.Filtered := False;
  Comparativo.Filter := 'PMes = '+IntToStr(TotalCompaPMES.AsInteger) +
                         ' And PYear = '+IntToStr(TotalCompaPYEAR.AsInteger);
  Comparativo.Filtered := True;
  gTotIvaE.RefreshDisplay;
  gTotIvaI.RefreshDisplay;
end;

procedure TfrmGestImp.TotalCompaPMESGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  try
    Text := LongMonthNames[Sender.AsInteger];
  except
    Text := Sender.AsString;
  end;
end;

procedure TfrmGestImp.TotalCompaTCNETOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.IsNull then
    Text := '0.00'
  else
    Text := Format('%10.2f', [Sender.AsFloat]);
end;

procedure TfrmGestImp.ComparativoTCNETOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.IsNull then
    Text := '0.00'
  else
    Text := Format('%10.2f', [Sender.AsFloat]);
end;

procedure TfrmGestImp.ppDBText32GetText(Sender: TObject; var Text: string);
begin
  try
    Text := LongMonthNames[TotalCompaPMES.AsInteger];
  except
    Text := TotalCompaPMES.AsString;
  end;
end;

procedure TfrmGestImp.ppDBText4GetText(Sender: TObject; var Text: string);
begin
  try
    Text := LongMonthNames[TotalCompaPMES.AsInteger];
  except
    Text := TotalCompaPMES.AsString;
  end;
end;

procedure TfrmGestImp.btnCalcEstAnuClick(Sender: TObject);
begin
  Calcular_Estadistico_Anual;
end;

procedure TfrmGestImp.ExportarMovimientosCompaClick(Sender: TObject);
begin
  if not Comparativo.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := Comparativo;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmGestImp.ExportarTotalesCompaClick(Sender: TObject);
begin
  if not TotalCompa.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := TotalCompa;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmGestImp.ImprimirCompaClick(Sender: TObject);
begin
  try
    Comparativo.DisableControls;
    lblTitEstadisticas.Caption := OwnerName + '  ' + OwnerAddres + ' ' +
                                  Owner_ID + ' Periodo: ' + cbPerAnu.Text (*+ ' Sucursal' + cbSucAnu.Text*);
    rpEstadistico.Print;
  finally
    Comparativo.EnableControls;
  end;
end;

// Informes de Percepciones
procedure TfrmGestImp.Calcular_Percepciones;
var
  i: SmallInt;
  Line, AuxST: String;
  TPerFC, TPerNC: Currency;
  CantFC, CantNC: Integer;
begin
  btnExpPer.Enabled := False;
  btnGenDGI.Enabled := False;
  TPerFC := 0;
  TPerNC := 0;
  CantFC := 0;
  CantNC := 0;
  lblTotPer.Caption := ' ';
  qPercepciones.Close;
  qPercepciones.ParamByName('Anio').AsInteger := edtYearPer.Value;
  qPercepciones.ParamByName('Mes').AsInteger := cbMesPer.ItemIndex + 1;
  qPercepciones.Open;
  if not qPercepciones.IsEmpty then
  begin
    try
      Screen.Cursor := crSQLWait;
      qPercepciones.First;
      qPercepciones.DisableControls;
      mmResult.Lines.Clear;
      while not qPercepciones.Eof do
      begin
        Line := Vacio;
        AuxST:= Vacio;
        if (qPercepcionesTipoFactura.AsInteger in [CreA, CreB, CreC]) and
           (cbxIncNC.State = cbUnchecked) then
        begin
          TPerNC := TPerNC + qPercepcionesRETIVA.AsCurrency;
          Inc(CantNC);
        end
        else begin
          Line := qPercepcionesNROREGPERCP.AsString+qPercepcionesCuit.AsString +
                  FormatDateTime('dd/mm/yyyy', qPercepcionesFechaF.AsDateTime) +
                  qPercepcionesPunto.AsString+qPercepcionesComprobante.AsString;
          AuxST:= Format('%.2f',[qPercepcionesRETIVA.AsFloat]);
          for i := 1 to 16 - Length(AuxST) do
            Insert('0', AuxST, 1);
          Line := Line + AuxST;
          mmResult.Lines.Add(Line);
          if qPercepcionesTipoFactura.AsInteger in [CreA, CreB, CreC] then
          begin
            TPerNC := TPerNC + qPercepcionesRETIVA.AsCurrency;
            Inc(CantNC);
          end
          else begin
            TPerFC := TPerFC + qPercepcionesRETIVA.AsCurrency;
            Inc(CantFC);
          end;
        end;
        qPercepciones.Next;
      end;
      btnExpPer.Enabled := True;
      btnGenDGI.Enabled := True;
    finally
      qPercepciones.EnableControls;
      lblTotPer.Caption := 'Totales Percepciones'+#13#10+' '+#13#10+
                           Format('%s %d',['Nº Comprobantes ', (CantFC+CantNC)]) + #13#10+' '+#13#10+
                           Format('%-6s %m',['T.FC', TPerFC]) + #13#10+ Format('%-6s %d',['NºFC', CantFC]) + #13#10+
                           Format('%-6s %m',['T.NC', TPerNC]) + #13#10+ Format('%-6s %d',['NºNC', CantNC]);
      Screen.Cursor := crDefault;
      Application.ProcessMessages;
    end;
  end;
end;

procedure TfrmGestImp.btnCalcPerClick(Sender: TObject);
begin
  Calcular_Percepciones;
end;

procedure TfrmGestImp.btnExpPerClick(Sender: TObject);
begin
  dmGestion.IyC_Exp.DataSet := qPercepciones;
  dmGestion.IyC_Exp.Select;
end;

procedure TfrmGestImp.btnGenDGIClick(Sender: TObject);
begin
  sdTxt.InitialDir := PasoExe;
  if sdTxt.Execute then
    mmResult.Lines.SaveToFile(sdTxt.FileName);
end;

procedure TfrmGestImp.gPercepcionesDblClick(Sender: TObject);
begin
  Get_FacC(qPercepcionesIdFactura.AsInteger,
           qPercepcionesIdSucursal.AsInteger,
           qPercepcionesIdPuntoVenta.AsInteger);
end;

end.
