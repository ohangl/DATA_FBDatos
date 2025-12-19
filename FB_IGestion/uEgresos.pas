unit uEgresos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, DBGrids, StdCtrls, Mask, DBCtrls, Grids, ComCtrls, Buttons,
  ToolWin, uTools, wwSpeedButton, wwDBNavigator, wwclearpanel, wwdblook, Wwdbdlg,
  ImgList, wwdbedit, Wwdotdot, Wwdbcomb, wwdbdatetimepicker, DateUtils, Wwdbigrd,
  Wwdbgrid, Variants, RzTabs, RzButton, RzPanel, MDOCustomDataSet, MDOQuery,
  DBClient, RzEdit, Spin, RzSpnEdt, RzCmboBx, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppBands, ppCache, ppPrnabl, ppCtrls, ppVar, RzRadChk,
  Provider, ppStrtch, ppSubRpt, RzRadGrp, RzDBRGrp, wwcheckbox, Menus, Math,
  TeEngine, Series, TeeProcs, Chart, DbChart, MDOTable, ShellApi;

type
  TfrmEgresos = class(TForm)
    pcGastos: TRzPageControl;
    tsGastos: TRzTabSheet;
    tCompImputable: TTimer;

    dsGastos: TDataSource;
    Gastos: TClientDataSet;
    GastosIdFactura: TIntegerField;
    GastosTipoFactura: TSmallintField;
    GastosPeriodo: TDateField;
    GastosFechaF: TDateField;
    GastosNroFactura: TStringField;
    GastosCaiProv: TStringField;
    GastosProveedor: TIntegerField;
    GastosNombreProveedor: TStringField;
    GastosTipoIva: TSmallintField;
    GastosPrcBonif: TMDOBCDField;
    GastosBonificacion: TMDOBCDField;
    GastosNeto: TMDOBCDField;
    GastosExento: TMDOBCDField;
    GastosNoComputables: TMDOBCDField;
    GastosTotal: TMDOBCDField;
    GastosAlcPercep: TMDOBCDField;
    GastosRetIva: TMDOBCDField;
    GastosDevQDtos: TMDOBCDField;
    GastosRetGan: TMDOBCDField;
    GastosRetIBt: TMDOBCDField;
    GastosCantItm: TSmallintField;
    GastosNreRegPrc: TStringField;
    GastosMtoIvaAlc1: TCurrencyField;
    GastosMtoIvaAlc2: TCurrencyField;
    GastosMtoIvaOAlc: TCurrencyField;
    GastosRetLH: TMDOBCDField;
    GastosSubTotal: TCurrencyField;
    GastosAplicar_RetIBLH: TBooleanField;
    GastosDetalle: TStringField;
    GastosTotPrcAlc: TFloatField;
    GastosIdEmpresa: TIntegerField;

    dsItemsGT: TDataSource;
    ItemsGT: TClientDataSet;
    ItemsGTIdItem: TIntegerField;
    ItemsGTIdCuenta: TIntegerField;
    ItemsGTDetCuenta: TStringField;
    ItemsGTPrcCta: TFloatField;
    ItemsGTIdAlcIva: TIntegerField;
    ItemsGTAlcIva: TFloatField;
    ItemsGTMontoCta: TCurrencyField;
    ItemsGTMontoIva: TCurrencyField;
    ItemsGTMaxIdItem: TAggregateField;
    ItemsGTIdFactura: TIntegerField;

    dsTotCtros: TDataSource;

    dsCentros: TDataSource;
    qCentros: TMDODataSet;
    qCentrosCENTRO: TIntegerField;
    qCentrosCODIGO: TIntegerField;
    qCentrosNIVEL: TSmallintField;
    qCentrosIDCUENTA: TIntegerField;
    qCentrosIDSUCURSAL: TIntegerField;
    qCentrosDESCRIPCION: TMDOStringField;
    qCentrosCODIGOCONTABLE: TMDOStringField;
    qCentrosDETALLECENTRO: TMDOStringField;

    dsqPlanCtas: TDataSource;
    qPlanCtas: TMDOQuery;
    qPlanCtasDESCRIPCION: TMDOStringField;
    qPlanCtasDETALLECENTRO: TMDOStringField;
    qPlanCtasCENTRO: TIntegerField;
    qPlanCtasNIVEL: TSmallintField;
    qPlanCtasCODIGO: TIntegerField;

    dsCuentas: TDataSource;
    qCuentas: TMDODataSet;
    qCuentasCENTRO: TIntegerField;
    qCuentasCODIGO: TIntegerField;
    qCuentasNIVEL: TSmallintField;
    qCuentasIDCUENTA: TIntegerField;
    qCuentasIDSUCURSAL: TIntegerField;
    qCuentasDESCRIPCION: TMDOStringField;
    qCuentasCODIGOCONTABLE: TMDOStringField;
    qCuentasDETALLECENTRO: TMDOStringField;

    tsInformes: TRzTabSheet;
    dsInfCtas: TDataSource;
    qInfCuentas: TMDOQuery;
    qInfCuentasIDEMPRESA: TIntegerField;
    qInfCuentasDETSUC: TMDOStringField;
    qInfCuentasDETEMP: TMDOStringField;
    qInfCuentasIDARTICULO: TIntegerField;
    qInfCuentasPRECIONETO: TMDOBCDField;
    qInfCuentasPRECIOTOTAL: TMDOBCDField;
    qInfCuentasMTOIVA: TMDOBCDField;
    qInfCuentasCANTIDAD: TMDOBCDField;
    qInfCuentasALICUOTAIVA: TMDOBCDField;
    qInfCuentasFECHAF: TDateField;
    qInfCuentasIDFACTURA: TIntegerField;
    qInfCuentasIDSUCURSAL: TIntegerField;
    qInfCuentasNROFACTURA: TMDOStringField;
    qInfCuentasCUENTA: TMDOStringField;
    qInfCuentasDESCCORTA: TMDOStringField;
    qInfCuentasNOMBRE: TMDOStringField;
    qInfCuentasIDPUNTOVENTA: TIntegerField;

    dsqNoImp: TDataSource;
    qNoImp: TMDOQuery;
    qNoImpIdFactura: TIntegerField;
    qNoImpIdSucursal: TIntegerField;
    qNoImpIDPUNTOVENTA: TIntegerField;
    qNoImpFechaF: TDateField;
    qNoImpNroFactura: TStringField;
    qNoImpNOMBRE: TMDOStringField;
    qNoImpTOTAL: TMDOBCDField;
    qNoImpDOCUMENTO: TMDOStringField;
    qNoImpTDOC: TMDOStringField;
    qNoImpDETEMP: TMDOStringField;

    dsqInforme: TDataSource;
    qInformeEP: TMDOQuery;
    qInformeEPNroFactura: TStringField;
    qInformeEPFechaF: TDateField;
    qInformeEPNombre: TStringField;
    qInformeEPComprobante: TStringField;
    qInformeEPFechaOp: TDateField;
    qInformeEPNroChq: TStringField;
    qInformeEPDetalle: TStringField;
    qInformeEPDescripcion: TStringField;
    qInformeEPIdFactura: TIntegerField;
    qInformeEPIdSucursal: TIntegerField;
    qInformeEPIDPUNTOVENTA: TIntegerField;
    qInformeEPIdOrdPago: TIntegerField;
    qInformeEPTOTAL: TMDOBCDField;
    qInformeEPIMPORTE: TMDOBCDField;
    qInformeEPSALDOMOV: TMDOBCDField;
    qInformeEPIDPROVEEDOR: TIntegerField;
    qInformeEPDETSUC: TMDOStringField;
    qInformeEPTIPOP: TMDOStringField;

    dsFacCom: TDataSource;
    FacCom: TClientDataSet;
    FacComPeriodo: TDateField;
    FacComFechaF: TDateField;
    FacComIdFactura: TIntegerField;
    FacComIdRemito: TIntegerField;
    FacComTipoFactura: TSmallintField;
    FacComNroFactura: TStringField;
    FacComCompRef: TStringField;
    FacComIdCompRef: TIntegerField;
    FacComCaiProv: TStringField;
    FacComProveedor: TIntegerField;
    FacComNombreProveedor: TStringField;
    FacComTipoIva: TSmallintField;
    FacComCantArtic: TSmallintField;
    FacComAlcPercep: TMDOBCDField;
    FacComPrcBonif: TMDOBCDField;
    FacComSubTotal: TMDOBCDField;
    FacComBonificacion: TMDOBCDField;
    FacComPPACuenta: TMDOBCDField;
    FacComNoComp: TMDOBCDField;
    FacComExento: TMDOBCDField;
    FacComIvaAlicuota1: TMDOBCDField;
    FacComIvaAlicuota2: TMDOBCDField;
    FacComIvaOtAlc: TMDOBCDField;
    FacComNeto: TMDOBCDField;
    FacComTotal: TMDOBCDField;
    FacComNroRegPerc: TStringField;
    FacComProvConVDolar: TBooleanField;
    FacComDetalle: TStringField;
    FacComIdEmpresa: TIntegerField;

    dsItemsFC: TDataSource;
    ItemsFC: TClientDataSet;
    ItemsFCIdFactura: TIntegerField;
    ItemsFCIdItem: TAutoIncField;
    ItemsFCIdArticulo: TIntegerField;
    ItemsFCTalle: TIntegerField;
    ItemsFCTieneTalle: TSmallintField;
    ItemsFCProducto: TStringField;
    ItemsFCColor: TStringField;
    ItemsFCCantidad: TMDOBCDField;
    ItemsFCPrcBonif: TMDOBCDField;
    ItemsFCCostoActual: TMDOBCDField;
    ItemsFCFinalActual: TMDOBCDField;
    ItemsFCUPrecioNeto: TMDOBCDField;
    ItemsFCUBonifItem: TMDOBCDField;
    ItemsFCUPrecioFinal: TMDOBCDField;
    ItemsFCExento: TMDOBCDField;
    ItemsFCUImpInt: TMDOBCDField;
    ItemsFCUMontoIva: TMDOBCDField;
    ItemsFCAlcIva: TIntegerField;
    ItemsFCEnRemito: TSmallintField;
    ItemsFCIdMarkUp: TIntegerField;
    ItemsFCMarkUp: TMDOBCDField;
    ItemsFCPFinalPublico: TMDOBCDField;
    ItemsFCEnPedido: TSmallintField;
    ItemsFCIdOrdPed: TIntegerField;
    ItemsFCIdItmPed: TIntegerField;
    ItemsFCTipoImpInt: TSmallintField;
    ItemsFCMaxIdItem: TAggregateField;
    ItemsFCVarPFinal: TFloatField;
    ItemsFCMarca: TStringField;
    ItemsFCDetalle: TStringField;
    ItemsFCValorDolar: TCurrencyField;
    ItemsFCUNetoDolar: TCurrencyField;
    ItemsFCTBonifItem: TCurrencyField;
    ItemsFCTPrecioNeto: TCurrencyField;
    ItemsFCTPrecioFinal: TCurrencyField;
    ItemsFCTImpInt: TCurrencyField;
    ItemsFCTMontoIva: TCurrencyField;
    ItemsFCIdRemPen: TIntegerField;
    ItemsFCIdRemSuc: TIntegerField;
    ItemsFCIdRemPto: TIntegerField;
    ItemsFCIdRemItm: TSmallintField;

    qFacProv: TMDOQuery;
    qFacProvIdFactura: TIntegerField;
    qFacProvIDSUCURSAL: TIntegerField;
    qFacProvIDPUNTOVENTA: TIntegerField;
    qFacProvFechaF: TDateField;
    qFacProvDESCCORTA: TMDOStringField;
    qFacProvNroFactura: TStringField;
    qFacProvTOTAL: TMDOBCDField;

    qInfCentros: TMDOQuery;
    qInfCentrosCENTRO: TIntegerField;
    qInfCentrosDESCRIPCION: TMDOStringField;
    qInfCentrosTNETO: TMDOBCDField;
    qInfCentrosTOTAL: TMDOBCDField;
    qInfCentrosTIVA: TMDOBCDField;

    dsCCProv: TDataSource;
    CCP: TClientDataSet;
    CCPFecha: TDateField;
    CCPTC: TStringField;
    CCPComprobante: TStringField;
    CCPDebe: TMDOBCDField;
    CCPHaber: TMDOBCDField;
    CCPSaldo: TMDOBCDField;
    CCPPagoACta: TMDOBCDField;
    CCPSaldoMov: TMDOBCDField;
    CCPIdComprobante: TIntegerField;
    CCPIdSucursal: TIntegerField;
    CCPIdPuntoVenta: TIntegerField;
    CCPTipoMov: TSmallintField;
    CCPNroMov: TIntegerField;
    CCPEstado: TSmallintField;
    CCPDetEst: TStringField;
    CCPFechaOrg: TDateField;
    CCPMontoOrg: TMDOBCDField;
    CCPIdEmpresa: TIntegerField;
    CCPDetEmp: TStringField;

    qCuentaP: TMDOQuery;
    qCuentaPNroMovimiento: TIntegerField;
    qCuentaPIdComprobante: TIntegerField;
    qCuentaPIdSucursal: TIntegerField;
    qCuentaPIDPUNTOVENTA: TIntegerField;
    qCuentaPTComp: TSmallintField;
    qCuentaPEntidad: TIntegerField;
    qCuentaPFecha: TDateField;
    qCuentaPComprobante: TStringField;
    qCuentaPTC: TStringField;
    qCuentaPEstado: TSmallintField;
    qCuentaPFechaOrg: TDateField;
    qCuentaPDEBE: TMDOBCDField;
    qCuentaPHABER: TMDOBCDField;
    qCuentaPSALDO: TMDOBCDField;
    qCuentaPPAGOACTA: TMDOBCDField;
    qCuentaPSALDOMOV: TMDOBCDField;
    qCuentaPMONTOORGCP: TMDOBCDField;
    qCuentaPMONTOORGFC: TMDOBCDField;
    qCuentaPIDEMPRESA: TIntegerField;
    qCuentaPDETEMP: TMDOStringField;

    dsqPagoMultipleProv: TDataSource;
    qPagoMultipleProv: TMDOQuery;
    qPagoMultipleProvTComp: TSmallintField;
    qPagoMultipleProvEntidad: TIntegerField;
    qPagoMultipleProvFecha: TDateField;
    qPagoMultipleProvComprobante: TStringField;
    qPagoMultipleProvIdSucursal: TIntegerField;
    qPagoMultipleProvIDPUNTOVENTA: TIntegerField;
    qPagoMultipleProvEstado: TSmallintField;
    qPagoMultipleProvDetComp: TStringField;
    qPagoMultipleProvSelected: TSmallintField;
    qPagoMultipleProvNroMovimiento: TIntegerField;
    qPagoMultipleProvIdComprobante: TIntegerField;
    qPagoMultipleProvDEBE: TMDOBCDField;
    qPagoMultipleProvPAGOACTA: TMDOBCDField;
    qPagoMultipleProvSALDOMOV: TMDOBCDField;
    qPagoMultipleProvIMPNETO: TMDOBCDField;
    qPagoMultipleProvMONTORETI: TMDOBCDField;
    qPagoMultipleProvMONTORETG: TMDOBCDField;
    qPagoMultipleProvMONTORETB: TMDOBCDField;
    qPagoMultipleProvIDEMPRESA: TIntegerField;
    qPagoMultipleProvDETEMP: TMDOStringField;

    qSdoAntCCP: TMDOQuery;
    qSdoAntCCPSALDOP: TMDOBCDField;

    dsqMovAjt: TDataSource;
    qMovAjt: TMDOQuery;
    qMovAjtNroMovimiento: TIntegerField;
    qMovAjtTComp: TSmallintField;
    qMovAjtEntidad: TIntegerField;
    qMovAjtFecha: TDateField;
    qMovAjtFechaOrg: TDateField;
    qMovAjtTC: TStringField;
    qMovAjtComprobante: TStringField;
    qMovAjtEstado: TSmallintField;
    qMovAjtNomEntidad: TStringField;
    qMovAjtIdComprobante: TIntegerField;
    qMovAjtIdSucursal: TIntegerField;
    qMovAjtIDPUNTOVENTA: TIntegerField;
    qMovAjtHABER: TMDOBCDField;
    qMovAjtSALDOMOV: TMDOBCDField;

    dsqRelAjt: TDataSource;
    qRelAjt: TMDOQuery;
    qRelAjtFechaF: TDateField;
    qRelAjtTC: TStringField;
    qRelAjtNroFactura: TStringField;
    qRelAjtIdFactura: TIntegerField;
    qRelAjtIdSucursal: TIntegerField;
    qRelAjtIDPUNTOVENTA: TIntegerField;
    qRelAjtTipoFactura: TSmallintField;
    qRelAjtTOTAL: TMDOBCDField;

    dsViewGtos: TDataSource;
    qViewGtos: TMDOQuery;
    qViewGtosIDFACTURA: TIntegerField;
    qViewGtosIDSUCURSAL: TIntegerField;
    qViewGtosIDPUNTOVENTA: TIntegerField;
    qViewGtosTIPOFACTURA: TSmallintField;
    qViewGtosFECHAF: TDateField;
    qViewGtosNROFACTURA: TMDOStringField;
    qViewGtosPROVEEDOR: TIntegerField;
    qViewGtosTIPOOP: TSmallintField;
    qViewGtosDESCCORTA: TMDOStringField;
    qViewGtosNOMBRE: TMDOStringField;
    qViewGtosTOTAL: TMDOBCDField;

    dspqViewGtos: TDataSetProvider;
    ViewGtos: TClientDataSet;
    ViewGtosIDFACTURA: TIntegerField;
    ViewGtosIDSUCURSAL: TIntegerField;
    ViewGtosIDPUNTOVENTA: TIntegerField;
    ViewGtosTIPOFACTURA: TSmallintField;
    ViewGtosFECHAF: TDateField;
    ViewGtosNROFACTURA: TStringField;
    ViewGtosPROVEEDOR: TIntegerField;
    ViewGtosTIPOOP: TSmallintField;
    ViewGtosDESCCORTA: TStringField;
    ViewGtosNOMBRE: TStringField;
    ViewGtosTOTAL: TBCDField;
    ViewGtosTotalPer: TAggregateField;

    dsViewFCom: TDataSource;
    qViewFCom: TMDOQuery;
    qViewFComIDFACTURA: TIntegerField;
    qViewFComIDSUCURSAL: TIntegerField;
    qViewFComIDPUNTOVENTA: TIntegerField;
    qViewFComTIPOFACTURA: TSmallintField;
    qViewFComFECHAF: TDateField;
    qViewFComNROFACTURA: TMDOStringField;
    qViewFComPROVEEDOR: TIntegerField;
    qViewFComTIPOOP: TSmallintField;
    qViewFComDESCCORTA: TMDOStringField;
    qViewFComNOMBRE: TMDOStringField;
    qViewFComTOTAL: TMDOBCDField;

    dspqViewFCom: TDataSetProvider;
    ViewFCom: TClientDataSet;
    ViewFComIDFACTURA: TIntegerField;
    ViewFComIDSUCURSAL: TIntegerField;
    ViewFComIDPUNTOVENTA: TIntegerField;
    ViewFComTIPOFACTURA: TSmallintField;
    ViewFComFECHAF: TDateField;
    ViewFComNROFACTURA: TStringField;
    ViewFComPROVEEDOR: TIntegerField;
    ViewFComTIPOOP: TSmallintField;
    ViewFComDESCCORTA: TStringField;
    ViewFComNOMBRE: TStringField;
    ViewFComTOTAL: TBCDField;
    ViewFComTotalPer: TAggregateField;

    qPreOP: TMDOQuery;
    qPreOPIDNROPREOP: TIntegerField;
    qPreOPCANPO: TIntegerField;
    qPreOPTOTPO: TMDOBCDField;

    dsPreOrdPag: TDataSource;
    PreOrdPag: TClientDataSet;
    PreOrdPagDetComp: TStringField;
    PreOrdPagComprobante: TStringField;
    PreOrdPagFecha: TDateField;
    PreOrdPagImporte: TCurrencyField;
    PreOrdPagNroMovimiento: TIntegerField;
    PreOrdPagEntidad: TIntegerField;

    dsqCmpByPro: TDataSource;
    qCmpByPro: TMDOQuery;
    qCmpByProFECHAF: TDateField;
    qCmpByProDIAHORA: TDateTimeField;
    qCmpByProNROFACTURA: TMDOStringField;
    qCmpByProIDFACTURA: TIntegerField;
    qCmpByProIDSUCURSAL: TIntegerField;
    qCmpByProIDPUNTOVENTA: TIntegerField;
    qCmpByProIDPROVEEDOR: TIntegerField;
    qCmpByProNOMBRE: TMDOStringField;
    qCmpByProTCOMP: TMDOStringField;
    qCmpByProNETO: TMDOBCDField;
    qCmpByProTOTAL: TMDOBCDField;
    qCmpByProIDEMPRESA: TIntegerField;
    qCmpByProEMPRESA: TMDOStringField;

    dsqAnticiposCCP: TDataSource;
    qAnticiposCCP: TMDOQuery;
    qAnticiposCCPNROMOVIMIENTO: TIntegerField;
    qAnticiposCCPIDCOMPROBANTE: TIntegerField;
    qAnticiposCCPIDSUCURSAL: TIntegerField;
    qAnticiposCCPCOMPROBANTE: TMDOStringField;
    qAnticiposCCPENTIDAD: TIntegerField;
    qAnticiposCCPNOMBRE: TMDOStringField;
    qAnticiposCCPEMPRESA: TMDOStringField;
    qAnticiposCCPFECHA: TDateField;
    qAnticiposCCPHABER: TMDOBCDField;

    dsqSaldos: TDataSource;
    qSaldos: TMDOQuery;
    qSaldosEntidad: TIntegerField;
    qSaldosNombre: TStringField;
    qSaldosSALDO: TMDOBCDField;
    qSaldosSALDOA: TMDOBCDField;
    qSaldosIDEMPRESA: TIntegerField;
    qSaldosDETEMP: TMDOStringField;

    pmCCP: TPopupMenu;
    ModificarCCP: TMenuItem;
    ExportarCCP: TMenuItem;
    ImprimirOP: TMenuItem;
    dbpEstadoP: TppDBPipeline;
    rpEstadoP: TppReport;
    ppHeaderBandCCP: TppHeaderBand;
    shpCCP1: TppShape;
    lblDebe: TppLabel;
    lblHaber: TppLabel;
    lblECCSaldo: TppLabel;
    lblTituloCCP1: TppLabel;
    lblTituloCCP2: TppLabel;
    ppLabel3: TppLabel;
    lblVto: TppLabel;
    lblFOrg: TppLabel;
    ppDetailBandCCP: TppDetailBand;
    lblFechaOp: TppDBText;
    lblTMov: TppDBText;
    lblComprobante: TppDBText;
    lblDetEst: TppDBText;
    lblImporte: TppDBText;
    Haber1: TppDBText;
    lblSaldo: TppDBText;
    lnCCP1: TppLine;
    lnCCP3: TppLine;
    lnCCP2: TppLine;
    lblFechaF: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    shpCCP2: TppShape;
    lblEmisionCCP: TppSystemVariable;
    pmAjtInt: TPopupMenu;
    RelacionNC: TMenuItem;
    ExportarRelNC: TMenuItem;
    pcCCP: TRzPageControl;
    tsSaldos: TRzTabSheet;
    gSaldos: TwwDBGrid;
    tsCuentas: TRzTabSheet;
    pnlTopCCP: TRzPanel;
    lblCualCCP: TLabel;
    lblDesdeCCP: TLabel;
    lblCualProv: TLabel;
    edtCualProv: TRzNumericEdit;
    edtDesdeCCP: TRzDateTimeEdit;
    gMovCCP: TwwDBGrid;
    gbPagoMultipleProv: TRzGroupBox;
    btnPagarPro: TRzBitBtn;
    btnSalirPago: TRzBitBtn;
    gPagoMultipleProv: TwwDBGrid;
    pnlOperCCP: TRzPanel;
    btnPagosCCP: TRzBitBtn;
    btnInformeCCP: TRzBitBtn;
    btnExportarCCP: TRzBitBtn;
    btnAntiposCCP: TRzBitBtn;
    btnSdoInicial: TRzBitBtn;
    btnDescuentos: TRzBitBtn;
    gbOrdenDePagos: TRzGroupBox;
    lblMontoOP: TLabel;
    lblFecPago: TLabel;
    lblMontoRtGan: TLabel;
    lblMontoRtIB: TLabel;
    lblMontoRtIVA: TLabel;
    edtTotalOP: TRzNumericEdit;
    btnAceptarOP: TRzBitBtn;
    btnCancelarOP: TRzBitBtn;
    edtFecOrdPago: TRzDateTimeEdit;
    edtTotalRetGan: TRzNumericEdit;
    edtTotalRetIB: TRzNumericEdit;
    edtTotalRetIVA: TRzNumericEdit;
    tsAjustes: TRzTabSheet;
    gMovAjt: TwwDBGrid;
    gbRelNC: TRzGroupBox;
    btnCerrarRelNC: TRzBitBtn;
    gRelMov: TwwDBGrid;
    gOrdenes: TwwDBGrid;
    ebItemOP: TwwExpandButton;
    ebPagosOp: TwwExpandButton;
    gItemsOP: TwwDBGrid;
    gItemsPgOP: TwwDBGrid;

    dbpInformeSaldos: TppDBPipeline;
    rpInformeSaldos: TppReport;
    hbInformeSaldo: TppHeaderBand;
    shpInfSdo1: TppShape;
    lblTituloIS1: TppLabel;
    lblTituloIS2: TppLabel;
    lblEmisionIS: TppSystemVariable;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    shpInfSdo2: TppShape;
    lblDetProv: TppLabel;
    lblDetSaldo: TppLabel;
    dbInformeSaldo: TppDetailBand;
    lblEntidadIS: TppDBText;
    lblSaldoIS: TppDBText;
    lnInfSdo: TppLine;
    ppColumnFooterBand1: TppColumnFooterBand;
    shpInfSdo3: TppShape;
    lblASaldo: TppDBCalc;

    pcInfGtos: TRzPageControl;
    tsOperGastos: TRzTabSheet;
    pnlInformes: TRzPanel;
    lblDesde: TLabel;
    lblHasta: TLabel;
    lblCualCuenta: TLabel;
    edtDesdeIC: TRzDateTimeEdit;
    edtHastaIC: TRzDateTimeEdit;
    edtCualCta: TRzEdit;
    gMovGastos: TwwDBGrid;
    tsNoImp: TRzTabSheet;
    tsTotales: TRzTabSheet;
    pnlTotGtos: TRzPanel;
    lblDesdeT: TLabel;
    lblHastaT: TLabel;
    edtToDesde: TRzDateTimeEdit;
    edtToHasta: TRzDateTimeEdit;
    btnCalcTot: TRzBitBtn;
    btnExpTot: TRzBitBtn;
    gNoImp: TwwDBGrid;
    gCentros: TwwDBGrid;
    tsInfPagos: TRzTabSheet;
    btnCal_Informe: TRzBitBtn;
    btnExp_Informe: TRzBitBtn;
    btnImp_Informe: TRzBitBtn;
    pnlFootGtos: TRzPanel;
    btnCalc: TRzBitBtn;
    btnSearchComp: TRzBitBtn;
    btnSalirEgresos: TRzBitBtn;
    pnlInforme: TRzPanel;
    lblDesdeI: TLabel;
    lblHastaI: TLabel;
    edtEPDesde: TRzDateTimeEdit;
    edtEPHasta: TRzDateTimeEdit;
    btnCalcI: TRzBitBtn;
    btnExpI: TRzBitBtn;
    gEstadoDePagos: TwwDBGrid;

    pnlNoImp: TRzPanel;
    lblDesdeNI: TLabel;
    edtNIDesde: TRzDateTimeEdit;
    lblHastaNI: TLabel;
    edtNIHasta: TRzDateTimeEdit;
    btnCalcNI: TRzBitBtn;
    btnExpNI: TRzBitBtn;
    dbpInfCtas: TppDBPipeline;
    rpInfCtas: TppReport;
    hbInfCtas: TppHeaderBand;
    dbInfGtos: TppDetailBand;
    lblIGFecha: TppDBText;
    lblIGDetalle: TppDBText;
    lblIGNeto: TppDBText;
    lblIGIva: TppDBText;
    lblIGTotal: TppDBText;
    lblTitInfGto: TppLabel;
    lblPaginasIC: TppSystemVariable;
    shTitInfCtas: TppShape;
    sbInfCtas: TppSummaryBand;
    lblIGTotTot: TppDBCalc;
    lblIGTotIva: TppDBCalc;
    lblIGTotNet: TppDBCalc;
    lnIGTotales: TppLine;
    lblICEmision: TppSystemVariable;
    rpPlanCtas: TppReport;
    dbPlanCtas: TppDetailBand;
    fbPlanCtas: TppFooterBand;
    tbPlanCtas: TppTitleBand;
    lblTitPlanCtas: TppLabel;
    lblCodCentro: TppDBText;
    lblDetCentro: TppDBText;
    shpPlanCtas1: TppShape;
    lblCentro: TppLabel;
    shpPlanCtas2: TppShape;
    lblPaginaPC: TppSystemVariable;

    dbpCentros: TppDBPipeline;
    dbpCuentas: TppDBPipeline;
    srCuentas: TppSubReport;
    ppChildReport1: TppChildReport;
    tbCentroPlanCtas: TppTitleBand;
    dbCentroPlanCtas: TppDetailBand;
    lblDetCtroCta: TppDBText;
    lblCodCuenta: TppDBText;
    lblDetCta: TppLabel;
    shpPlanCtas3: TppShape;
    lblIdCta: TppDBText;
    tsCompras: TRzTabSheet;
    btnProveedores: TRzBitBtn;

    gbGastos: TRzGroupBox;
    bvlProvGT: TBevel;
    lblProvGT: TLabel;
    lblProveedorGT: TDBText;
    lblComprobanteGT: TLabel;
    lblFechaGT: TLabel;
    lblPeriodoGT: TLabel;
    lblTipoCompGT: TLabel;
    lblCaiProvGT: TLabel;
    lblTotalGT: TLabel;
    edtProveedorGT: TwwDBEdit;
    edtComprobanteGT: TwwDBEdit;
    cbTipoCompGT: TwwDBLookupCombo;
    pnlTipoCompGT: TRzPanel;
    edtFechaFGT: TwwDBDateTimePicker;
    edtPeriodoGT: TwwDBDateTimePicker;
    edtCaiProvGT: TwwDBEdit;
    edtTotalGT: TwwDBEdit;
    cbxConIvaGT: TRzCheckBox;
    btnAddGto: TRzBitBtn;
    btnCancelGT: TRzBitBtn;
    lblNoCompGT: TLabel;
    lblExentoGT: TLabel;
    lblPPCuentaGT: TLabel;
    lblBonifGT: TLabel;
    lblRetGanGT: TLabel;
    lblRetIBtGT: TLabel;
    lblRetLHGT: TLabel;
    edtNoCompGT: TwwDBEdit;
    edtExentoGT: TwwDBEdit;
    edtPPCuentaGT: TwwDBEdit;
    edtBonificacionGT: TwwDBEdit;
    edtPrcBonifGT: TwwDBEdit;
    edtAlcPercepGT: TwwDBEdit;
    edtRetGanGT: TwwDBEdit;
    edtRetIBtGT: TwwDBEdit;
    edtRetLHGT: TwwDBEdit;
    edtNroRegPerGT: TwwDBEdit;
    lblNetoGT: TLabel;
    lblDevQDtosGT: TLabel;
    lblIvaTGGT: TLabel;
    lblIvaTDGT: TLabel;
    lblIvaOTGT: TLabel;
    edtNetoGT: TwwDBEdit;
    edtDevQDtosGT: TwwDBEdit;
    btnPagosGT: TRzBitBtn;
    edtIvaTGGT: TwwDBEdit;
    edtIvaTDGT: TwwDBEdit;
    edtIvaOTGT: TwwDBEdit;
    tsOrdenes: TRzTabSheet;
    tsCtaCteP: TRzTabSheet;
    btnGestBancos: TRzBitBtn;

    lblIGTComp: TppDBText;
    lblIGNroFac: TppDBText;
    lblIGPrcAp: TppDBText;
    lblIGAlcIva: TppDBText;

    pnlBtnPMCC: TRzPanel;
    btnPreOP: TRzBitBtn;
    lblMtoRetSS: TLabel;
    edtMtoRetSS: TRzNumericEdit;
    gbUltOperComp: TRzGroupBox;
    gbOperCompras: TRzGroupBox;
    pnlHeaderFC: TRzPanel;
    bvlFacCom: TBevel;
    lblProvFC: TLabel;
    lblNomProvFC: TDBText;
    lblComprobanteFC: TLabel;
    lblFechaFFC: TLabel;
    lblPeriodoFC: TLabel;
    lblTCompFC: TLabel;
    lblCompRefFC: TLabel;
    lblCaiProvFC: TLabel;
    edtProvFC: TwwDBEdit;
    edtComprobanteFC: TwwDBEdit;
    cbTCompFC: TwwDBLookupCombo;
    cbCompRefFC: TwwDBLookupComboDlg;
    pnlTipoCompFC: TRzPanel;
    edtPeriodoFC: TwwDBDateTimePicker;
    edtCaiProvFC: TwwDBEdit;
    edtFechaFFC: TwwDBDateTimePicker;
    btnAddCompra: TRzBitBtn;
    btnAddRemito: TRzBitBtn;
    btnCancelFC: TRzBitBtn;
    btnPrintFC: TRzBitBtn;
    gbFootIFC: TRzGroupBox;
    lblIINCFC: TLabel;
    lblIvaFC1: TLabel;
    lblIvaFC2: TLabel;
    lblNetoFC: TLabel;
    lblTotalFC: TLabel;
    lblMtoExtFC: TLabel;
    lblPercFC: TLabel;
    lblBonifFC: TLabel;
    lblSubTFC: TLabel;
    lblIvaFC3: TLabel;
    edtIINCFC: TwwDBEdit;
    edtIvaFC1: TwwDBEdit;
    edtIvaFC2: TwwDBEdit;
    edtTotalFC: TwwDBEdit;
    edtNetoFC: TwwDBEdit;
    edtMtoExtFC: TwwDBEdit;
    edtMtoPercFC: TwwDBEdit;
    edtBonifFC: TwwDBEdit;
    btnPagosFC: TRzBitBtn;
    edtPrcBonifFC: TwwDBEdit;
    edtPercFC: TwwDBEdit;
    edtSubTotalFC: TwwDBEdit;
    btnGrabarRemX: TRzBitBtn;
    edtIvaFC3: TwwDBEdit;
    edtNroRegPercFC: TwwDBEdit;
    gbProductosComprados: TRzGroupBox;
    gFacC: TwwDBGrid;
    pnlOrdPag: TRzPanel;
    lblDesdeOP: TLabel;
    edtDesdeOP: TRzDateTimeEdit;
    lblHastaOp: TLabel;
    edtHastaOP: TRzDateTimeEdit;
    btnVerOPs: TRzBitBtn;
    btnExportarOP: TRzBitBtn;
    gbUltOperGtos: TRzGroupBox;
    gViewGtos: TwwDBGrid;
    gViewFCom: TwwDBGrid;
    gbSaldosCC: TRzGroupBox;
    lblFSaldo: TLabel;
    btnInformeSdoAFecha: TRzBitBtn;
    btnExportarSdoAFecha: TRzBitBtn;
    btnSaldosAFecha: TRzBitBtn;
    edtFSaldo: TRzDateTimeEdit;
    rpPreOrdPago: TppReport;
    hbPreOP: TppHeaderBand;
    dbPreOP: TppDetailBand;
    lblPOTC: TppDBText;
    lblPONroComp: TppDBText;
    lblPOFecha: TppDBText;
    lblPOMonto: TppDBText;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    cfPreOp: TppColumnFooterBand;
    lblPOTotal: TppDBCalc;
    fbPreOP: TppFooterBand;
    shpPreOP3: TppShape;
    lblCompPOP: TppLabel;
    lblVtoPOP: TppLabel;
    lblPOPMto: TppLabel;
    shpPreOP2: TppShape;
    lblTituloPO1: TppLabel;
    lblTituloPO2: TppLabel;
    shpPreOP1: TppShape;
    shpPreOP4: TppShape;
    lblDetPagosPOP: TppLabel;
    lblAutorizoPOP: TppLabel;
    pnlPreOPs: TRzPanel;
    lblPreOPs: TLabel;
    btnBuscarPreOP: TRzBitBtn;
    cbPreOPs: TRzComboBox;
    dbpPreOrdPago: TppDBPipeline;
    lblEmisionPreOP: TppSystemVariable;
    lblPONroMov: TppDBText;
    lnPreOP: TppLine;
    tsDefPlanCtas: TRzTabSheet;
    pnlCtas: TRzPanel;
    btnImprimirPC: TRzBitBtn;
    gbCentro: TRzGroupBox;
    lblDescCtro: TLabel;
    lblSucursal: TLabel;
    pnlCosto: TRzPanel;
    lblNroCentro: TDBText;
    edtDescripcionCentro: TwwDBEdit;
    cbSucurCentrosPC: TwwDBLookupCombo;
    navCentros: TwwDBNavigator;
    navCentrosFirst: TwwNavButton;
    navCentrosPrior: TwwNavButton;
    navCentrosNext: TwwNavButton;
    navCentrosLast: TwwNavButton;
    navCentrosInsert: TwwNavButton;
    navCentrosEdit: TwwNavButton;
    navCentrosDelete: TwwNavButton;
    navCentrosPost: TwwNavButton;
    gbCuentas: TRzGroupBox;
    lblDescCta: TLabel;
    lblCodContable: TLabel;
    pnlCta: TRzPanel;
    lblNroCta: TDBText;
    edtDescripcionCta: TwwDBEdit;
    edtCodContable: TwwDBEdit;
    navCtas: TwwDBNavigator;
    navCtasFirst: TwwNavButton;
    navCtasPrior: TwwNavButton;
    navCtasNext: TwwNavButton;
    navCtasLast: TwwNavButton;
    navCtasInsert: TwwNavButton;
    navCtasEdit: TwwNavButton;
    navCtasDelete: TwwNavButton;
    navCtasPost: TwwNavButton;
    tvPlanDeCtas: TTreeView;
    gbDiscriminacionItems: TRzGroupBox;
    bvlCosto: TBevel;
    lblNetoUIFC: TLabel;
    lblImpIntIFC: TLabel;
    lblCostoActIFC: TDBText;
    lblCostoIFC: TLabel;
    bvlItemsIFC: TBevel;
    lblDctoItemFC: TLabel;
    lblAlcIvaIFC: TLabel;
    lblPesDtoItem: TLabel;
    lblFinalIFC: TLabel;
    lblPublicoIFC: TLabel;
    lblPrecioActualIFC: TDBText;
    lblMarkUpActIFC: TDBText;
    lblMarkUpIFC: TLabel;
    lblVarPer: TDBText;
    lblValorDolar: TLabel;
    lblNetoUDolar: TLabel;
    lblNUniItmFC: TLabel;
    lblNTotItmFC: TLabel;
    edtNetoUIFC: TwwDBEdit;
    edtNetoTIFC: TwwDBEdit;
    btnAceptarIFC: TRzBitBtn;
    btnCancelarIFC: TRzBitBtn;
    edtAlcIvaIFC: TwwDBLookupCombo;
    edtDctoPesItmFC: TwwDBEdit;
    edtPrcDtoItmFC: TwwDBEdit;
    edtFinalIFC: TwwDBEdit;
    rgTipoImpInt: TRzDBRadioGroup;
    edtImpIntIFCUni: TwwDBEdit;
    pnlFootDiscArt: TRzPanel;
    edtValorDolar: TwwDBEdit;
    edtNetoUDolar: TwwDBEdit;
    edtImpIntIFCTot: TwwDBEdit;
    edtDctoPesTotFC: TwwDBEdit;
    lblMtoIva: TLabel;
    lblMtoIvaU: TDBText;
    lblMtoIvaT: TDBText;
    gbGTImputaciones: TRzGroupBox;
    gItemsGT: TwwDBGrid;
    cbAlcIvaItmGT: TwwDBComboBox;
    edtDetalleGtos: TwwDBEdit;
    lblDetObsGto: TLabel;
    lbDetObsFV: TLabel;
    edtDetObsFV: TwwDBEdit;
    lblDetEmpFC: TLabel;
    cbFCDetEmp: TwwDBLookupCombo;
    lblDetEmpGT: TLabel;
    cbGTDetEmp: TwwDBLookupCombo;
    lblCCEmp: TLabel;
    cbCCEmpre: TRzComboBox;
    lblDetEmpPro: TppDBText;
    lblDetEmpIC: TppDBText;
    lblPagEmp: TLabel;
    cbPagoEmp: TRzComboBox;
    pnlTopAI: TRzPanel;
    lblDesdeAI: TLabel;
    lblHastaAI: TLabel;
    edtDesdeAI: TRzDateTimeEdit;
    edtHastaAI: TRzDateTimeEdit;
    btnCalcularAI: TRzBitBtn;
    btnExportarAI: TRzBitBtn;
    tsOperCompras: TRzTabSheet;
    pnlCompras: TRzPanel;
    lblCompras: TLabel;
    lblNomProvCmp: TLabel;
    lblProvDesde: TLabel;
    btnExpProvCmp: TRzBitBtn;
    btnProvCmp: TRzBitBtn;
    edtProvCmp: TRzNumericEdit;
    edtProvDesdeCmp: TRzDateTimeEdit;
    edtProvHastaCmp: TRzDateTimeEdit;
    gCompras: TwwDBGrid;
    tsAnticipos: TRzTabSheet;
    pnlAnticipos: TRzPanel;
    lblDesdeAN: TLabel;
    lblHastaAN: TLabel;
    edtDesdeAN: TRzDateTimeEdit;
    edtHastaAN: TRzDateTimeEdit;
    btnAnticiposCCP: TRzBitBtn;
    btnExportarAnt: TRzBitBtn;
    lblCualProvG: TLabel;
    edtCualProvG: TRzNumericEdit;
    lblCualPro: TLabel;
    lblCualCta: TLabel;
    btnModPreciosProd: TRzBitBtn;
    gAnticipos: TwwDBGrid;
    btnPrdPenPro: TRzBitBtn;
    TreePCtas: TClientDataSet;
    dsTreePCtas: TDataSource;
    TreePCtasParentId: TIntegerField;
    TreePCtasExpanded: TBooleanField;
    TreePCtasText: TStringField;
    TreePCtasId: TIntegerField;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edtProveedorGTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GastosNewRecord(DataSet: TDataSet);
    procedure edtProveedorGTEnter(Sender: TObject);
    procedure btnPagosGTClick(Sender: TObject);
    procedure GastosProveedorValidate(Sender: TField);
    procedure GastosPeriodoGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure GastosPeriodoSetText(Sender: TField; const Text: String);
    procedure GastosTipoFacturaValidate(Sender: TField);
    procedure edtComprobanteGTExit(Sender: TObject);
    procedure GT_CompImputableTimer(Sender: TObject);
    procedure cbxConIvaGTClick(Sender: TObject);
    procedure btnImprimirPCClick(Sender: TObject);
    procedure btnSalirEgresosClick(Sender: TObject);
    procedure pcGastosChanging(Sender: TObject; var AllowChange: Boolean);
    procedure btnCancelGTClick(Sender: TObject);
    procedure edtFechaFGTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtTotalGTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtDescripcionCentroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbTipoCompGTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPeriodoGTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtTotalGTKeyPress(Sender: TObject; var Key: Char);
    procedure edtPeriodoGTEnter(Sender: TObject);
    procedure cbxConIvaGTEnter(Sender: TObject);
    procedure cbxConIvaGTExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gMovGastosUpdateFooter(Sender: TObject);
    procedure btnExp_InformeClick(Sender: TObject);
    procedure btnImp_InformeClick(Sender: TObject);
    procedure btnCal_InformeClick(Sender: TObject);
    procedure edtCualCtaExit(Sender: TObject);
    procedure edtCualCtaEnter(Sender: TObject);
    procedure edtCualCtaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GastosBonificacionChange(Sender: TField);
    procedure GastosTotalChange(Sender: TField);
    procedure gMovGastosDblClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure GastosRetGanChange(Sender: TField);
    procedure GastosPeriodoValidate(Sender: TField);
    procedure cbSucurCentrosPCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GastosFechaFValidate(Sender: TField);
    procedure btnCalcTotClick(Sender: TObject);
    procedure gCentrosUpdateFooter(Sender: TObject);
    procedure btnExpTotClick(Sender: TObject);
    procedure btnCalcNIClick(Sender: TObject);
    procedure gNoImpUpdateFooter(Sender: TObject);
    procedure gNoImpDblClick(Sender: TObject);
    procedure pcInfGtosTabClick(Sender: TObject);
    procedure btnCalcIClick(Sender: TObject);
    procedure gEstadoDePagosUpdateFooter(Sender: TObject);
    procedure gEstadoDePagosDblClick(Sender: TObject);
    procedure btnExpIClick(Sender: TObject);
    procedure gEstadoDePagosCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnProveedoresClick(Sender: TObject);
    procedure edtPeriodoFCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ItemsFCTipoImpIntValidate(Sender: TField);
    procedure ItemsFCAfterDelete(DataSet: TDataSet);
    procedure ItemsFCNewRecord(DataSet: TDataSet);
    procedure FacComNewRecord(DataSet: TDataSet);
    procedure ItemsFCCantidadChange(Sender: TField);
    procedure gFacCEnter(Sender: TObject);
    procedure btnGrabarRemXClick(Sender: TObject);
    procedure btnPagosFCClick(Sender: TObject);
    procedure edtProvFCExit(Sender: TObject);
    procedure gFacCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtProvFCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gFacCColEnter(Sender: TObject);
    procedure edtProvFCEnter(Sender: TObject);
    procedure gFacCColExit(Sender: TObject);
    procedure FacComProveedorValidate(Sender: TField);
    procedure FacComPeriodoGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure FacComPeriodoSetText(Sender: TField; const Text: String);
    procedure FacComTipoFacturaValidate(Sender: TField);
    procedure FacComTipoFacturaChange(Sender: TField);
    procedure edtComprobanteFCExit(Sender: TObject);
    procedure gFacCKeyPress(Sender: TObject; var Key: Char);
    procedure ItemsFCIdArticuloValidate(Sender: TField);
    procedure ItemsFCIdArticuloSetText(Sender: TField; const Text: String);
    procedure cbCompRefFCExit(Sender: TObject);
    procedure gFacCCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure edtNetoUIFCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtNetoUIFCKeyPress(Sender: TObject; var Key: Char);
    procedure btnAceptarIFCClick(Sender: TObject);
    procedure btnCancelarIFCClick(Sender: TObject);
    procedure btnSearchCompClick(Sender: TObject);
    procedure FacComCompRefChange(Sender: TField);
    procedure cbTCompFCChange(Sender: TObject);
    procedure cbCompRefFCEnter(Sender: TObject);
    procedure FacComNetoChange(Sender: TField);
    procedure gFacCUpdateFooter(Sender: TObject);
    procedure btnPrintFCClick(Sender: TObject);
    procedure FacComFechaFValidate(Sender: TField);
    procedure FacComPeriodoValidate(Sender: TField);
    procedure ItemsFCTalleGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure ItemsFCTalleSetText(Sender: TField; const Text: String);
    procedure gbDiscriminacionItemsEnter(Sender: TObject);
    procedure ItemsFCUPrecioNetoValidate(Sender: TField);
    procedure btnAddCompraClick(Sender: TObject);
    procedure btnAddRemitoClick(Sender: TObject);
    procedure btnAddGtoClick(Sender: TObject);
    procedure FacComNroFacturaValidate(Sender: TField);
    procedure btnCancelFCClick(Sender: TObject);
    procedure ItemsFCAfterPost(DataSet: TDataSet);
    procedure FacComPrcBonifChange(Sender: TField);
    procedure edtSubTotalFCKeyPress(Sender: TObject; var Key: Char);
    procedure ItemsGTNewRecord(DataSet: TDataSet);
    procedure gItemsGTCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure gItemsGTColEnter(Sender: TObject);
    procedure gItemsGTColExit(Sender: TObject);
    procedure gItemsGTEnter(Sender: TObject);
    procedure gItemsGTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gItemsGTKeyPress(Sender: TObject; var Key: Char);
    procedure gItemsGTUpdateFooter(Sender: TObject);
    procedure ItemsGTAfterDelete(DataSet: TDataSet);
    procedure ItemsGTAfterPost(DataSet: TDataSet);
    procedure ItemsGTIdCuentaSetText(Sender: TField; const Text: String);
    procedure qCuentasAfterInsert(DataSet: TDataSet);
    procedure qCuentasAfterPost(DataSet: TDataSet);
    procedure qCuentasBeforeEdit(DataSet: TDataSet);
    procedure qCuentasBeforePost(DataSet: TDataSet);
    procedure qCuentasNewRecord(DataSet: TDataSet);
    procedure qCentrosAfterInsert(DataSet: TDataSet);
    procedure qCentrosBeforeDelete(DataSet: TDataSet);
    procedure qCentrosBeforeEdit(DataSet: TDataSet);
    procedure qCentrosNewRecord(DataSet: TDataSet);
    procedure btnGestBancosClick(Sender: TObject);
    procedure ItemsGTIdCuentaValidate(Sender: TField);
    procedure ItemsGTPrcCtaChange(Sender: TField);
    procedure gbGTImputacionesEnter(Sender: TObject);
    procedure btnSaldosAFechaClick(Sender: TObject);
    procedure btnInformeSdoAFechaClick(Sender: TObject);
    procedure btnExportarSdoAFechaClick(Sender: TObject);
    procedure edtCualProvEnter(Sender: TObject);
    procedure edtCualProvExit(Sender: TObject);
    procedure edtDesdeCCPExit(Sender: TObject);
    procedure btnInformeCCPClick(Sender: TObject);
    procedure gMovCCPCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure gMovCCPDblClick(Sender: TObject);
    procedure ModificarCCPClick(Sender: TObject);
    procedure ExportarCCPClick(Sender: TObject);
    procedure btnExportarCCPClick(Sender: TObject);
    procedure btnDescuentosClick(Sender: TObject);
    procedure btnPagosCCPClick(Sender: TObject);
    procedure btnAntiposCCPClick(Sender: TObject);
    procedure btnSdoInicialClick(Sender: TObject);
    procedure btnAceptarOPClick(Sender: TObject);
    procedure btnCancelarOPClick(Sender: TObject);
    procedure btnPagarProClick(Sender: TObject);
    procedure btnSalirPagoClick(Sender: TObject);
    procedure gPagoMultipleProvMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
    procedure gOrdenesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure gOrdenesDblClick(Sender: TObject);
    procedure gItemsOPDblClick(Sender: TObject);
    procedure gMovAjtCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure gMovAjtDblClick(Sender: TObject);
    procedure RelacionNCClick(Sender: TObject);
    procedure ExportarRelNCClick(Sender: TObject);
    procedure btnCerrarRelNCClick(Sender: TObject);
    procedure edtCualProvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gSaldosDblClick(Sender: TObject);
    procedure edtFecOrdPagoExit(Sender: TObject);
    procedure edtTotalOPExit(Sender: TObject);
    procedure btnExportarOPClick(Sender: TObject);
    procedure btnVerOPsClick(Sender: TObject);
    procedure gViewFComDblClick(Sender: TObject);
    procedure gViewGtosDblClick(Sender: TObject);
    procedure btnPreOPClick(Sender: TObject);
    procedure gSaldosUpdateFooter(Sender: TObject);
    procedure cbPreOPsChange(Sender: TObject);
    procedure cbPreOPsExit(Sender: TObject);
    procedure btnBuscarPreOPClick(Sender: TObject);
    procedure btnPreciosProdClick(Sender: TObject);
    procedure gbGTImputacionesExit(Sender: TObject);
    procedure gViewGtosUpdateFooter(Sender: TObject);
    procedure gViewFComUpdateFooter(Sender: TObject);
    procedure ItemsFCUNetoDolarValidate(Sender: TField);
    procedure edtTotalOPKeyPress(Sender: TObject; var Key: Char);
    procedure ItemsFCPFinalPublicoValidate(Sender: TField);
    procedure edtAlcIvaIFCEnter(Sender: TObject);
    procedure tvPlanDeCtasChange(Sender: TObject; Node: TTreeNode);
    procedure gItemsPgOPDblClick(Sender: TObject);
    procedure cbAlcIvaItmGTEnter(Sender: TObject);
    procedure gItemsGTExit(Sender: TObject);
    procedure ItemsGTAlcIvaChange(Sender: TField);
    procedure cbCCEmpreChange(Sender: TObject);
    procedure edtTotalOPEnter(Sender: TObject);
    procedure edtTotalRetGanEnter(Sender: TObject);
    procedure edtTotalRetIBEnter(Sender: TObject);
    procedure edtTotalRetIVAEnter(Sender: TObject);
    procedure edtMtoRetSSEnter(Sender: TObject);
    procedure pcCCPClick(Sender: TObject);
    procedure cbPagoEmpExit(Sender: TObject);
    procedure cbPagoEmpChange(Sender: TObject);
    procedure btnCalcularAIClick(Sender: TObject);
    procedure btnExportarAIClick(Sender: TObject);
    procedure cbCCEmpreExit(Sender: TObject);
    procedure edtProvCmpEnter(Sender: TObject);
    procedure edtProvCmpExit(Sender: TObject);
    procedure edtProvCmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnProvCmpClick(Sender: TObject);
    procedure btnExpProvCmpClick(Sender: TObject);
    procedure btnAnticiposCCPClick(Sender: TObject);
    procedure gAnticiposUpdateFooter(Sender: TObject);
    procedure gAnticiposDblClick(Sender: TObject);
    procedure btnExportarAntClick(Sender: TObject);
    procedure pcInfGtosClose(Sender: TObject; var AllowClose: Boolean);
    procedure GastosAfterPost(DataSet: TDataSet);
    procedure GastosAlcPercepChange(Sender: TField);
    procedure cbGTDetEmpEnter(Sender: TObject);
    procedure cbFCDetEmpEnter(Sender: TObject);
    procedure edtCualProvGEnter(Sender: TObject);
    procedure edtCualProvGExit(Sender: TObject);
    procedure edtCualProvGKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gComprasDblClick(Sender: TObject);
    procedure btnPrdPenProClick(Sender: TObject);
    procedure FacComBeforePost(DataSet: TDataSet);
    procedure FacComIdEmpresaValidate(Sender: TField);
    procedure btnExpNIClick(Sender: TObject);
    procedure pnlCtaDblClick(Sender: TObject);
    procedure tvPlanDeCtasDblClick(Sender: TObject);
  private
    { Private declarations }
    FieldListPC: TStringList;
    //------------------ Gastos ----------------------
    DiscriminandoGT, IniDate: Boolean;
    Actual, CualCuenta, TotalItems: Integer;
    TotInfEgr, TotalGastos, TotalNeto, TotalIva,
    TTot, TNet, TIva, TNoImp, TInforme, TISaldo,
    Total_Fac, Total_Dto, Total_Prc, Total_Net, Total_ViewGto: Currency;
    //------------------ COMPRAS ----------------------
    GrabarFacCom, Cargando_Remito, Nota_Credito_EG,
    DiscriminandoFC, Calculando_PFinal: Boolean;
    Total_ViewCom: Currency;

    TipoOperCmp: Integer; // 0 = Compras  1 = Remito  // 2 = Gastos
    //------------------ Cta Cte ----------------------
    IdPreOp, CantP, CualCCP, Tipo_Operacion,
    CualPro, Id_Empresa, NProv, GProv: Integer;
    DesdeCP: TDate;
    SdoAntP, SumaFT, SumaNC, SaldoCCP,
    MontoOP, MontoRI, MontoRG, MontoRB,
    MontoRH, MontoRS, MontoNT, SaldoNT,
    TNPCmp, TTotal, DefinitivoOP, TotAnt: Currency;

    PrcRI, PrcRG, PrcRB, PrcRH, PrcRS,
    CoefImpInt: Double;

    procedure Pedidos;
    procedure Remitos;
    procedure Print_FacCom;
    procedure Print_RotulosFC(ItemsFactura: TBody_Fiscal);
    procedure Check_FechaFC;
    procedure Discriminar_ItemsFC;
    procedure CalculoDiscriminacionFC;
    procedure HabilitarTotalesFC(Habilitar: Boolean);
    procedure UpdateTotalsFacC;
    procedure VaciarTablasFC(W: Integer);
    procedure CargarRegistroFC;
    procedure Open_ViewFCom(D, H: TDate);

    //----------------------------------------
    procedure Rearmar_PlanDeCuentas;
    procedure Reparar_PlanDeCuentas;
    function Get_Cuenta(IdCta: Integer; Var C: TDatos_PlanCta): Integer;
    //----------------------------------------
    procedure UpdateTotalsGastos;
    procedure HabilitarTotalesGT(Habilitar: Boolean);
    procedure VaciarTablasGT(W: Integer);
    procedure Check_FechaGT;
    procedure CalculoDiscriminacionGT;
    procedure Open_ViewGtos(D, H: TDate);
    //----------------------------------------
    function Check_CompIng(IdP, TpF: Integer; NrF:St13): Boolean;
    procedure Ver_MovCuentas;
    procedure Compras_By_Periodo(Desde, Hasta: TDate; IdProv: Integer);
    //----------------------------------------
    procedure SaldosP(Hasta: TDate; Empr: Integer);
    procedure Cancelacion_CCP(Paga: Currency; var DP: TDatosPagos);
    procedure CuentaP;
    procedure Calculo_Retenciones(IdEmp: Integer; Fecha: TDate; Monto: Currency);
    function Retenciones_PreOP(Fecha: TDate; Monto: Currency): Currency;
    procedure Open_OrdenesDePago(D, H: TDate);
  public
    { Public declarations }
    Ver_OP: Boolean;
  end;

var
  frmEgresos: TfrmEgresos;

implementation

uses udmGestion, udmSaveFile, uProveedores, uBuscaCta, uFormasDePago, TreeFunc,
     uViewFacV, uViewFacC, uClaveMod, uViewOrdP, uPedidosProv, uConfiguracion,
     uABMArticulos, uListaSelectTalles, uGestBcos, uModCCP, uViewFacT,
     uChangePrice, uImpCodBar, uModMovBco, uSearchProd, uRemitosProv;

{$R *.DFM}

Const
   AllGto = 0;
   CoefAB = 0.98;

procedure TfrmEgresos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qCentros.Close;
  qCuentas.Close;
  Action := caFree;
end;

procedure TfrmEgresos.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  try
    LockWindowUpDate(Handle);
    edtDesdeIC.Date := StartOfTheMonth(Date);
    edtHastaIC.Date := Date;
    edtEPDesde.Date := StartOfTheMonth(Date);
    edtEPHasta.Date := Date;
    edtNIDesde.Date := StartOfTheMonth(Date);
    edtNIHasta.Date := Date;
    edtToDesde.Date := StartOfTheMonth(Date);
    edtToHasta.Date := Date;

    edtProvDesdeCmp.Date := StartOfTheMonth(Date);
    edtProvHastaCmp.Date := Date;

    edtDesdeAI.Date := StartOfTheMonth(Date);
    edtHastaAI.Date := Date;
    edtDesdeAN.Date := StartOfTheMonth(Date);
    edtHastaAN.Date := Date;

    qCentros.Open;
    qCuentas.Open;

    VaciarTablasGT(1);
    VaciarTablasFC(3);

    lblCualProv.Caption := ' ';
    edtDesdeOP.Date := Date;
    edtHastaOP.Date := Date;
    Open_OrdenesDePago(edtDesdeOP.Date, edtHastaOP.Date);
    Open_ViewFCom(StartOfTheMonth(Date), Date);
    Open_ViewGtos(StartOfTheMonth(Date), Date);
    edtFSaldo.Date := Date;
    SaldosP(Date, NoEncontrado);

    with dmGestion do
    begin
      cbAlcIvaItmGT.Items.Clear;
      cbAlcIvaItmGT.Items.Add('Sin Iva'+#9+'0');
      Alicuotas.Open;
      Alicuotas.First;
      while not Alicuotas.Eof do
      begin
        cbAlcIvaItmGT.Items.Add(AlicuotasDescAlicuota.AsString+#9+AlicuotasIdAlicuota.AsString);
        Alicuotas.Next;
      end;
      Empresas.Open;
      Empresas.First;
      cbCCEmpre.Items.Clear;
      cbPagoEmp.Items.Clear;
      cbCCEmpre.Items.AddObject('<Agrupadas>', TObject(-1));
      cbCCEmpre.Items.AddObject('<Separadas>', TObject(0));
      while not Empresas.Eof do
      begin
        cbCCEmpre.Items.AddObject(EmpresasNOMBREEMPRESA.AsString, TObject(EmpresasIdEmpresa.AsInteger));
        cbPagoEmp.Items.AddObject(EmpresasNOMBREEMPRESA.AsString, TObject(EmpresasIdEmpresa.AsInteger));
        Empresas.Next;
      end;
    end;
    Id_Empresa := 0;
    cbCCEmpre.ItemIndex := 0;
    cbPagoEmp.ItemIndex := 0;
    cbAlcIvaItmGT.MapList := True;
    cbAlcIvaItmGT.ApplyList;
    Ver_OP := True;
    lblNomProvCmp.Caption := Vacio;
    lblCualPro.Caption := Vacio;
    lblCualCta.Caption := Vacio;
    NProv := 0;
    GProv := 0;
    TotAnt:= 0;
  finally
    LockWindowUpDate(0);
  end;
end;

procedure TfrmEgresos.FormShow(Sender: TObject);
begin
  FieldListPC := TStringList.Create;
  tvPlanDeCtas.Items.BeginUpdate;

  (*
  Select C.Codigo, C.Descripcion, T.DetalleCentro,
             C.Centro, C.Nivel, C.Codigo
  From PlanCtas C
  Join PlanCtas T
    on T.Centro = C.Codigo
  Where (C.Nivel = 0) and
              (C.IdCuenta <> T.IdCuenta)
  *)

  qPlanCtas.Open;
  qPlanCtas.First;
  if TreePCtas.Active then
    TreePCtas.EmptyDataSet
  else
    TreePCtas.CreateDataSet;
  while not qPlanCtas.Eof do
  begin
    TreePCtas.Append;
    TreePCtasId.AsInteger := qPlanCtasCODIGO.AsInteger;
    TreePCtasParentId.AsInteger := qPlanCtasCENTRO.AsInteger;
    TreePCtasText.AsString := qPlanCtasDETALLECENTRO.AsString;
    TreePCtas.Post;
    TreeAddItem(tvPlanDeCtas, Tree_GetFieldList(FieldListPC, 'Descripcion;DetalleCentro', qPlanCtas), qPlanCtas.getBookmark, False);
    qPlanCtas.Next;
  end;
  TreePCtas.First;
  FieldListPC.Clear;
  tvPlanDeCtas.items.EndUpdate;
  btnAddRemito.Enabled := PermitirRem_DeProv;
  btnPrdPenPro.Enabled := PermitirRem_DeProv;
end;

procedure TfrmEgresos.gAnticiposDblClick(Sender: TObject);
begin
  Get_OP(qAnticiposCCPIdComprobante.AsInteger);
end;

procedure TfrmEgresos.gAnticiposUpdateFooter(Sender: TObject);
begin
  gAnticipos.ColumnByName('Haber').FooterValue := Format('%10.2m',[TotAnt]);
end;

procedure TfrmEgresos.tvPlanDeCtasChange(Sender: TObject; Node: TTreeNode);
begin
  dsqPlanCtas.enabled := Node.data <> nil;
  if dsqPlanCtas.enabled then
    qPlanCtas.gotobookmark(node.data);
end;

procedure TfrmEgresos.tvPlanDeCtasDblClick(Sender: TObject);
begin
  if qPlanCtas.Locate('Centro;Nivel;Codigo',
                    VarArrayOf([qPlanCtasCENTRO.AsInteger,
                                qPlanCtasNIVEL.AsInteger,
                                qPlanCtasCODIGO.AsInteger]), []) then
  begin
    if qCentros.Locate(qCentrosCENTRO.FieldName, qPlanCtasCENTRO.AsInteger, []) then
    begin
      if not qCuentas.Locate('Nivel;Codigo',
                          VarArrayOf([qPlanCtasNIVEL.AsInteger,
                                      qPlanCtasCODIGO.AsInteger]), []) then
      begin
        ShowMessage(Format('Cuenta %d %d %d No Ubicada ',
                            [qPlanCtasCENTRO.AsInteger,
                             qPlanCtasNIVEL.AsInteger,
                             qPlanCtasCODIGO.AsInteger]))
      end;
    end;
  end;
end;

procedure TfrmEgresos.Compras_By_Periodo(Desde, Hasta: TDate; IdProv: Integer);
var
  q: TMDOQuery;
begin
  try
    TNPCmp := 0;
    TTotal := 0;
    Screen.Cursor := crSQLWait;
    qCmpByPro.Close;
    qCmpByPro.ParamByName('Desde').AsDate := Desde;
    qCmpByPro.ParamByName('Hasta').AsDate := Hasta;
    qCmpByPro.ParamByName('IdPro').AsInteger := IdProv;
    qCmpByPro.Open;
    if not qCmpByPro.IsEmpty then
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := qCmpByPro.Database;
        q.Transaction := qCmpByPro.Transaction;
        q.SQL.Add('Select Sum(Neto) as TNeto, ');
        q.SQL.Add('       Sum(Total) as Total ');
        q.SQL.Add('From PROVEEDORES_COMPRAS(:Desde, :Hasta, :IdPro) ');
        q.ParamByName('Desde').AsDate := Desde;
        q.ParamByName('Hasta').AsDate := Hasta;
        q.ParamByName('IdPro').AsInteger := IdProv;
        q.Open;
        TNPCmp := q.FieldByName('TNeto').AsCurrency;
        TTotal := q.FieldByName('Total').AsCurrency;
        q.Close;
      finally
        q.Free;
      end;
      btnExpProvCmp.Enabled := True;
    end;
  finally
    Screen.Cursor := crDefault;
    gCompras.ColumnByName('Neto').FooterValue := Format('%m',[TNPCmp]);
    gCompras.ColumnByName('Total').FooterValue:= Format('%m',[TTotal]);
  end;
end;

procedure TfrmEgresos.pcCCPClick(Sender: TObject);
begin
  Case pcCCP.ActivePageIndex of
    0: cbCCEmpre.SetFocus;
    1: edtCualProv.SetFocus;
  End;
end;

procedure TfrmEgresos.pcGastosChanging(Sender: TObject; var AllowChange: Boolean);
begin
  if (Gastos.State in dsEditModes) or
     (FacCom.State in dsEditModes) then
  begin
    AllowChange := False;
    Application.MessageBox('Debe cancelar el comprobante primero', 'Comprobante abierto', MB_ICONERROR);
  end;
end;

function TfrmEgresos.Check_CompIng(IdP, TpF: Integer; NrF:St13): Boolean;
var
  q: TMDOQuery;
begin
  Result := False;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.dbGestion;
    q.Transaction := dmGestion.trProc;
    q.SQL.Add('Select Count(F.IdFactura) as CantFact ');
    q.SQL.Add('From FacCom F ');
    q.SQL.Add('Where (F.Proveedor = :IdP) And ');
    q.SQL.Add('      (F.NroFactura = :NrF) And ');
    q.SQL.Add('      (F.TipoFactura = :TpF) And ');
    q.SQL.Add('      (F.State = 0) ');
    q.ParamByName('IdP').AsInteger:= IdP;
    q.ParamByName('NrF').AsString := NrF;
    q.ParamByName('TpF').AsInteger:= TpF;
    q.Open;
    Result := (q.FieldByName('CantFact').AsInteger > 0);
    q.Close;
  finally
    q.Free;
  end;
end;

procedure TfrmEgresos.btnSalirEgresosClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEgresos.btnCalcClick(Sender: TObject);
begin
  Calculadora(Handle);
end;

procedure TfrmEgresos.btnProvCmpClick(Sender: TObject);
begin
  Compras_By_Periodo(edtProvDesdeCmp.Date, edtProvHastaCmp.Date, NProv);
end;

procedure TfrmEgresos.btnProveedoresClick(Sender: TObject);
begin
  frmProveedores := TfrmProveedores.Create(Self);
  frmProveedores.ShowModal;
end;

procedure TfrmEgresos.btnSearchCompClick(Sender: TObject);
begin
  Get_FacC(NoEncontrado, IdBranch, IdSalesPoint);
end;

//*****************************************************************************
//************************************** COMPRAS ******************************
//****************************************************************************

procedure TfrmEgresos.HabilitarTotalesFC(Habilitar: Boolean);
begin
  lblBonifFC.Enabled := Habilitar;
  edtPrcBonifFC.Enabled := Habilitar;
  edtBonifFC.Enabled := Habilitar;
  lblNetoFC.Enabled := Habilitar;
  edtNetoFC.Enabled := Habilitar;

  lblIINCFC.Enabled := Habilitar;
  edtIINCFC.Enabled := Habilitar;
  lblMtoExtFC.Enabled := Habilitar;
  edtMtoExtFC.Enabled := Habilitar;

  lblIvaFC1.Enabled := Habilitar;
  edtIvaFC1.Enabled := Habilitar;

  lblIvaFC2.Enabled := Habilitar;
  edtIvaFC2.Enabled := Habilitar;

  lblIvaFC3.Enabled := Habilitar;
  edtIvaFC3.Enabled := Habilitar;

  lblPercFC.Enabled := Habilitar;
  edtNroRegPercFC.Enabled := Habilitar;
  edtPercFC.Enabled := Habilitar;
  edtMtoPercFC.Enabled := Habilitar;
end;

procedure TfrmEgresos.VaciarTablasFC(W: Integer);
begin
  Total_Fac := 0;
  Total_Dto := 0;
  Nota_Credito_EG := False;
  Cargando_Remito := False;
  pnlTipoCompFC.Caption := '?';
  gbDiscriminacionItems.Visible := False;

  if dmGestion.EmpresasCoefImpInt.AsFloat <> 0 then
    CoefImpInt := dmGestion.EmpresasCoefImpInt.AsFloat
  else
    CoefImpInt := 20.4819;

  Open_ViewFCom(StartOfTheMonth(Date), Date);

  case W of
    0:begin
        ItemsFC.Close;
        FacCom.Close;
        if ItemsFC.Active then
          ItemsFC.EmptyDataSet
        else
          ItemsFC.CreateDataSet;
        if FacCom.Active then
          FacCom.EmptyDataSet
        else
          FacCom.CreateDataSet;
        FacComProveedor.ValidChars := CodChars;
        ItemsFCIdArticulo.ValidChars := CodChars;
        ItemsFCTalle.ValidChars := CodChars;
        gFacC.FixedCols := 1;
        gFacC.Selected.Clear;
        gFacC.Selected.Add('IdItem'#9'3'#9'Nº'#9'F'#9'Producto');
        gFacC.Selected.Add('IdArticulo'#9'6'#9'Código'#9'F'#9'Producto');
        if Control_Talles then
          gFacC.Selected.Add('Talle'#9'4'#9'Talle'#9'F');
        gFacC.Selected.Add('Producto'#9'27'#9'Descripción'#9'F'#9'Producto');
        gFacC.Selected.Add('Cantidad'#9'5'#9'#'#9'F'#9'Producto');
        gFacC.Selected.Add('UPrecioNeto'#9'9'#9'Costo Neto'#9'F'#9'Precios');
        gFacC.Selected.Add('UBonifItem'#9'8'#9'Descuento'#9'F'#9'Precios');
        gFacC.Selected.Add('UPrecioFinal'#9'10'#9'Final'#9'F'#9'Precios');
        gFacC.Selected.Add('TPrecioFinal'#9'11'#9'Total'#9'F'#9'Precios');
        btnGrabarRemX.Visible := False;
        btnPagosFC.Visible := True;
        btnPagosFC.Enabled := True;
        btnAddRemito.Enabled := PermitirRem_DeProv;
        btnAddCompra.Enabled := True;
      end;
    1:begin
        if FacCom.Active then
          FacCom.EmptyDataSet
        else
          FacCom.CreateDataSet;
        if ItemsFC.Active then
          ItemsFC.EmptyDataSet
        else
          ItemsFC.CreateDataSet;
        FacComProveedor.ValidChars := CodChars;
        ItemsFCIdArticulo.ValidChars := CodChars;
        ItemsFCTalle.ValidChars := CodChars;
        gFacC.FixedCols := 1;
        gFacC.Selected.Clear;
        lblPeriodoFC.Visible := False;
        edtPeriodoFC.Visible := False;
        lblCompRefFC.Visible := False;
        cbCompRefFC.Visible  := False;
        cbTCompFC.Enabled := False;
        btnGrabarRemX.Visible := True;
        btnGrabarRemX.Enabled := True;
        btnPagosFC.Visible := False;
        gFacC.Selected.Add('IdItem'#9'4'#9'Nº'#9'F'#9'Producto');
        gFacC.Selected.Add('IdArticulo'#9'8'#9'Código'#9'F'#9'Producto');
        if Control_Talles then
          gFacC.Selected.Add('Talle'#9'4'#9'Talle'#9'F');
        gFacC.Selected.Add('Producto'#9'45'#9'Descripción'#9'F'#9'Producto');
        gFacC.Selected.Add('Cantidad'#9'10'#9'#'#9'F'#9'Producto');
        btnAddCompra.Enabled := False;
      end;
    3:begin
        btnGrabarRemX.Enabled := False;
        btnPagosFC.Enabled := False;
      end;
    4:begin
        btnAddRemito.Enabled := True;
        btnAddCompra.Enabled := True;
        btnGrabarRemX.Visible := False;
        btnPagosFC.Visible := False;
      end;
  end;
  gFacC.RefreshDisplay;
  if not qCentros.Active then
  begin
    qCentros.Open;
    qCuentas.Open;
  end;
end;

procedure TfrmEgresos.UpdateTotalsFacC;
var
  TempTo, TempEx, TempNc,
  TempNt, TempSt, TempI1,
  TempI2, TempI3, TempBf, TempFN: Currency;
  PrevRecord: TBookmark;
begin
  if (not Cargando_Remito) then
  begin
    try
      ItemsFC.DisableControls;
      DiscriminandoFC := True;
      PrevRecord := ItemsFC.GetBookmark;
      try
        TempTo := 0;
        TempSt := 0;
        TempEx := 0;
        TempNc := 0;
        TempI1 := 0;
        TempI2 := 0;
        TempI3 := 0;
        TempNt := 0;
        TempBf := 0;
        TempFN := 0;
        TotalItems := 0;
        ItemsFC.First;
        while not ItemsFC.Eof do
        begin
          TempTo := TempTo + ItemsFCTPrecioFinal.AsCurrency;
          TempNc := TempNc + ItemsFCTImpInt.AsCurrency;
          TempNt := TempNt + ItemsFCTPrecioNeto.AsCurrency;
          TempBf := TempBf + ItemsFCTBonifItem.AsCurrency;
          TempST := TempST + (ItemsFCTPrecioNeto.AsCurrency + ItemsFCTBonifItem.AsCurrency);
          case ItemsFCAlcIva.AsInteger of
            1: TempI1 := TempI1 + ItemsFCTMontoIva.AsCurrency;
            2: TempI2 := TempI2 + ItemsFCTMontoIva.AsCurrency;
            3: TempI3 := TempI3 + ItemsFCTMontoIva.AsCurrency;
          end;
          Inc(TotalItems);
          ItemsFC.Next;
        end;
        FacCom.Edit;
        Case TipoOperCmp of
          0:begin
              FacComBonificacion.AsCurrency := TempBf;
              FacComExento.AsCurrency := TempEx;
              FacComNoComp.AsCurrency := TempNc;
              FacComIvaAlicuota1.AsCurrency := TempI1;
              FacComIvaAlicuota2.AsCurrency := TempI2;
              FacComIvaOtAlc.AsCurrency := TempI3;
              FacComNeto.AsCurrency := TempNt;
              FacComSubTotal.AsCurrency := TempST;
              FacComTotal.AsCurrency := TempTo;
              FacComCantArtic.AsInteger := TotalItems;
              FacCom.Post;
              FacCom.Edit;
              FacComTotal.AsCurrency := FacComNeto.AsCurrency +
                                        FacComNoComp.AsCurrency +
                                        FacComExento.AsCurrency +
                                        FacComIvaAlicuota1.AsCurrency +
                                        FacComIvaAlicuota2.AsCurrency +
                                        FacComIvaOtAlc.AsCurrency;
          end;
          1:begin
              FacComBonificacion.AsCurrency := 0;
              FacComExento.AsCurrency := 0;
              FacComNoComp.AsCurrency := 0;
              FacComIvaAlicuota1.AsCurrency := 0;
              FacComIvaAlicuota2.AsCurrency := 0;
              FacComIvaOtAlc.AsCurrency := 0;
              FacComNeto.AsCurrency := 0;
              FacComSubTotal.AsCurrency := 0;
              FacComTotal.AsCurrency := 0;
              FacComCantArtic.AsInteger := TotalItems;
              FacComTotal.AsCurrency := 0;
          end;
        End;
        FacCom.Post;
      except
        if PrevRecord <> nil then
        begin
          ItemsFC.GotoBookmark(PrevRecord);
          ItemsFC.FreeBookmark(PrevRecord);
        end;
        Exit;
      end;
      if PrevRecord <> nil then
      begin
        ItemsFC.GotoBookmark(PrevRecord);
        ItemsFC.FreeBookmark(PrevRecord);
      end;
    finally
      Total_Dto := FacComBonificacion.AsCurrency;
      Total_Fac := FacComTotal.AsCurrency;
      Case TipoOperCmp of
        0:begin
            gFacC.ColumnByName('Producto').FooterValue := 'Totales ';
            gFacC.ColumnByName('Cantidad').FooterValue := Format(' %d', [TotalItems]);
            gFacC.ColumnByName('UBonifItem').FooterValue := Format('%m', [Total_Dto]);
            gFacC.ColumnByName('TPrecioFinal').FooterValue := Format('%m', [Total_Fac]);
          end;
        1:begin
            gFacC.ColumnByName('Producto').FooterValue := 'Productos recibidos';
            gFacC.ColumnByName('Cantidad').FooterValue := Format(' %d', [TotalItems]);
          end;
      end;
      DiscriminandoFC := False;
      ItemsFC.EnableControls;
    end;
  end;
end;

procedure TfrmEgresos.gFacCUpdateFooter(Sender: TObject);
begin
  Case TipoOperCmp of
    0:begin
        gFacC.ColumnByName('Producto').FooterValue := 'Totales ';
        gFacC.ColumnByName('Cantidad').FooterValue := Format(' %d', [TotalItems]);
        gFacC.ColumnByName('UBonifItem').FooterValue := Format('%m', [Total_Dto]);
        gFacC.ColumnByName('TPrecioFinal').FooterValue := Format('%m', [Total_Fac]);
      end;
    1:begin
        gFacC.ColumnByName('Producto').FooterValue := 'Productos recibidos';
        gFacC.ColumnByName('Cantidad').FooterValue := Format(' %d', [TotalItems]);
      end;
  end;
end;

procedure TfrmEgresos.Discriminar_ItemsFC;
var
  AuxEX, AuxII, AuxIV, AuxNT,
  AuxPB, AuxPF, Dscto, PrecioFP: Currency;
  CftMU: Double;
begin
  try
    Dscto := 0;
    AuxEX := 0;
    AuxII := 0;
    AuxIV := 0;
    AuxNT := 0;
    AuxPF := 0;
    AuxPB := 0;
    if (TipoOperCmp = 0) and
       (ItemsFCUPrecioNeto.AsCurrency > 0) and
       (not DiscriminandoFC) then
    begin
      DiscriminandoFC := True;
      AuxNT := ItemsFCUPrecioNeto.AsCurrency;
      AuxEX := ItemsFCExento.AsFloat;
      if ItemsFCPrcBonif.AsFloat > 0 then
        Dscto := ((AuxNT * ItemsFCPrcBonif.AsFloat) / 100)
      else begin
        if (ItemsFCUBonifItem.AsCurrency <> 0) then
          Dscto := ItemsFCUBonifItem.AsCurrency;
      end;

      if FacComTipoIva.AsInteger = RI then
      begin
        Case ItemsFCTipoImpInt.AsInteger of
          0: begin // Impuestos internos incluidos en el precio unitario
               AuxII := ((AuxNT - Dscto - AuxEX) * CoefImpInt)/100;
               AuxPB := (AuxNT - Dscto - AuxEX) - AuxII
             end;
          1: begin // Impuestos internos discriminados por producto
               AuxII := ((AuxNT - Dscto - AuxEX) * CoefImpInt)/100;
               AuxPB := (AuxNT - Dscto - AuxEX);
             end;
          2: begin // Sin Impuestos Internos
               AuxII := 0;
               AuxPB := (AuxNT - Dscto - AuxEX);
               AuxNT := AuxPB;
             end;
        end;
        AuxIV := (AuxPB * GetAlcIva(ItemsFCAlcIva.AsInteger)) / 100;
        AuxPF := AuxPB; // AuxPF := AuxPB + AuxIV + AuxII;
      end
      else begin
        AuxPB := (AuxNT - Dscto);
        AuxIV := 0;
        AuxII := 0;
        AuxPF := AuxPB;
      end;

      If AuxII > 0 then
        CftMU := ((1+(ItemsFCMarkUp.AsFloat/100)) * CoefAB)
      else
        CftMU := ((1+(ItemsFCMarkUp.AsFloat/100)));

      ItemsFCUBonifItem.AsCurrency := Dscto;
      ItemsFCTBonifItem.AsCurrency := Dscto * ItemsFCCantidad.AsFloat;

      ItemsFCUMontoIva.AsCurrency  := AuxIV;
      ItemsFCTMontoIva.AsCurrency  := AuxIV * ItemsFCCantidad.AsFloat;

      ItemsFCUImpInt.AsCurrency    := AuxII;
      ItemsFCTImpInt.AsCurrency    := AuxII * ItemsFCCantidad.AsFloat;

      ItemsFCUPrecioNeto.AsCurrency:= AuxNT;
      ItemsFCTPrecioNeto.AsCurrency:= AuxNT * ItemsFCCantidad.AsFloat;

      ItemsFCUPrecioFinal.AsCurrency:= AuxPF;
      ItemsFCTPrecioFinal.AsCurrency:= AuxPF * ItemsFCCantidad.AsFloat;

      // Calculo precio de venta al publico
      if not Incluir_CostoConII then
      begin
        PrecioFP := ((AuxPB)* (1+(ItemsFCMarkUp.AsFloat/100))) *
                    (1+(GetAlcIva(ItemsFCAlcIva.AsInteger)/100)) + AuxII;
      end
      else begin  // Actual Insolito
        PrecioFP := ((AuxPF + AuxII)*CftMU)*(1+(GetAlcIva(ItemsFCAlcIva.AsInteger)/100));
      end;
      if Nota_Credito_EG then
        PrecioFP := 0;
      ItemsFCPFinalPublico.AsCurrency := PrecioFP;
    end;
  finally
    DiscriminandoFC := False;
  end;
end;

procedure TfrmEgresos.CalculoDiscriminacionFC;
var
  GTotal, GBonif, GTNeto, GMTIva,
  GPPCta, SubTtl, NoComp, Exento: Currency;
begin
  if (TipoOperCmp = 0) and
     (not DiscriminandoFC) then
  begin
    try
      DiscriminandoFC := True;
      GTotal := 0;
      GBonif := 0;
      GTNeto := 0;
      GPPCta := 0;
      GMTIva := 0;
      SubTtl := 0;
      NoComp := 0;
      Exento := 0;
      if FacComTipoIva.AsInteger = RI then
      begin
        SubTtl := FacComSubTotal.AsCurrency;
        NoComp := FacComNoComp.AsCurrency;
        Exento := FacComExento.AsCurrency;
        if FacComPrcBonif.AsFloat > 0 then
          GBonif := ((SubTtl * FacComPrcBonif.AsFloat) / 100)
        else begin
          if FacComBonificacion.AsCurrency <> 0 then
            GBonif := FacComBonificacion.AsCurrency
          else
            GBonif := 0;
        end;
        GTNeto := SubTtl - GBonif;
        if FacComAlcPercep.AsFloat > 0 then
          GPPCta := (GTNeto * FacComAlcPercep.AsFloat)/100
        else begin
          if FacComPPACuenta.AsCurrency <> 0 then
            GPPCta := FacComPPACuenta.AsCurrency
          else
            GPPCta := 0;
        end;
        GMTIva := FacComIvaAlicuota1.AsCurrency +
                  FacComIvaAlicuota2.AsCurrency +
                  FacComIvaOtAlc.AsCurrency;
      end
      else begin
        SubTtl := FacComTotal.AsCurrency;
        NoComp := 0;
        Exento := 0;
        if FacComPrcBonif.AsFloat > 0 then
          GBonif := ((SubTtl * FacComPrcBonif.AsFloat) / 100)
        else begin
          if FacComBonificacion.AsCurrency <> 0 then
            GBonif := FacComBonificacion.AsCurrency
          else
            GBonif := 0;
        end;
        GTNeto := SubTtl - GBonif;
        GPPCta := 0;
        GMTIva := 0;
      end;
      GTotal := GTNeto + GPPCta + GMTIva + NoComp + Exento;
      FacComTotal.AsCurrency := GTotal;
      FacComSubTotal.AsCurrency := SubTtl;
      FacComBonificacion.AsCurrency := GBonif;
      FacComNeto.AsCurrency := GTNeto;
      FacComPPACuenta.AsCurrency := GPPCta;
      FacComTotal.AsCurrency := GTotal;
      FacComNoComp.AsCurrency := NoComp;
      FacComPPACuenta.AsCurrency := GPPCta;
      FacComExento.AsCurrency := Exento;
    finally
      DiscriminandoFC := False;
    end;
  end;
end;

procedure TfrmEgresos.Check_FechaFC;
var
  Anio, Mes, Dia,
  Year, Month, Day: Word;
begin
  if (TipoOperCmp = 0) and
     (IniDate = False) and
     (not btnSalirEgresos.Focused) then
  begin
    DecodeDate(FacComFechaF.Value, Anio, Mes, Dia);
    DecodeDate(FacComPeriodo.Value, Year, Month, Day);
    if (((Anio = Year) and (Month <> Mes)) or ((Year <> Anio) and (Month = Mes))) and (Anio > CurrentYear) then
    begin
      case MessageDlg(Format('Comprobante de fecha: %s procesado en periodo: %d/%d ', [edtFechaFFC.Text, Month, Year]), mtInformation, [mbOK, mbCancel], 0) of
        IdCancel: raise EUsuario.Create('Fecha mal ingresada.-');
        IdOk:     if not Check_Seg(Nivel_Mod, 'Fecha FC', AutorDto) then
                    raise EUsuario.Create('No esta autorizado.-');
      end;
    end;
  end;
end;

procedure TfrmEgresos.btnAddCompraClick(Sender: TObject);
begin
  TipoOperCmp := 0;
  VaciarTablasFC(TipoOperCmp);
  FacCom.Append;
  edtPeriodoFC.SetFocus;
end;

procedure TfrmEgresos.btnAddRemitoClick(Sender: TObject);
begin
  TipoOperCmp := 1;
  VaciarTablasFC(TipoOperCmp);
  FacCom.Append;
  edtFechaFFC.SetFocus;
end;

procedure TfrmEgresos.btnCancelFCClick(Sender: TObject);
begin
  VaciarTablasFC(0);
  btnAddCompra.SetFocus;
end;

procedure TfrmEgresos.edtPeriodoFCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  Case Key of
    VK_ESCAPE: btnCancelFC.SetFocus;
    VK_F5: Calculadora(Handle);
    else {$INCLUDE IyC_NextEdit.Inc}
  end;
end;

procedure TfrmEgresos.ItemsFCTipoImpIntValidate(Sender: TField);
begin
  Case ItemsFCTipoImpInt.AsInteger of
    0,
    1: begin
         lblImpIntIFC.Enabled := True;
         edtImpIntIFCUni.Enabled := True;
         edtImpIntIFCTot.Enabled := True;
       end;
    2: begin
         lblImpIntIFC.Enabled := False;
         edtImpIntIFCUni.Enabled := False;
         edtImpIntIFCTot.Enabled := False;
       end;
  end;
end;

procedure TfrmEgresos.ItemsFCAfterPost(DataSet: TDataSet);
begin
  UpdateTotalsFacC;
end;

procedure TfrmEgresos.FacComPrcBonifChange(Sender: TField);
begin
  CalculoDiscriminacionFC;
end;

procedure TfrmEgresos.edtSubTotalFCKeyPress(Sender: TObject;  var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmEgresos.Pedidos;
var
  i: integer;
begin
  if (not DiscriminandoFC) And
     (TipoOperCmp = 0) then
  begin
    frmPedProv := TfrmPedProv.Create(Self);
    if (frmPedProv.Pendientes(FacComProveedor.AsInteger, FacComIdEmpresa.AsInteger)) and
       (Application.MessageBox('Hay pedidos al proveedor' + #13 + '¿Desea verlos?', 'pedidos pendientes', MB_ICONEXCLAMATION + MB_YESNO) = ID_YES) then
    begin
      if frmPedProv.ShowModal = mrOK then
      begin
        try
          with frmPedProv do
          begin
            try
              DiscriminandoFC := True;
              gPedidos.DataSource.DataSet.DisableControls;
              for i := 0 to gPedidos.SelectedList.Count-1 do
              begin
                gPedidos.DataSource.DataSet.GotoBookmark(gPedidos.SelectedList.items[i]);
                ItemsFC.Append;
                ItemsFCIdArticulo.AsInteger := gPedidos.DataSource.DataSet.FieldByName('IdArticulo').AsInteger;
                ItemsFCCantidad.AsFloat := gPedidos.DataSource.DataSet.FieldByName('CantidadP').AsFloat;
                ItemsFCUPrecioNeto.AsCurrency := gPedidos.DataSource.DataSet.FieldByName('PrecioN').AsCurrency;
                ItemsFCEnPedido.AsInteger := Verdadero;
                ItemsFCIdOrdPed.AsInteger := gPedidos.DataSource.DataSet.FieldByName('IdOrdCmp').AsInteger;
                ItemsFCIdItmPed.AsInteger := gPedidos.DataSource.DataSet.FieldByName('IdItemOC').AsInteger;
              end;
              gPedidos.SelectedList.clear;
            finally
              DiscriminandoFC := False;
              gPedidos.DataSource.DataSet.EnableControls;
            end;
          end;
        finally
          frmPedProv := nil;
        end;
      end;
    end;
  end;
end;

procedure TfrmEgresos.Remitos;
var
  i: integer;
begin
  if (not DiscriminandoFC) And
     (TipoOperCmp = 0) then
  begin
    frmRemProv := TfrmRemProv.Create(Self);
    if (frmRemProv.Recibidos(FacComProveedor.AsInteger, RemitoR, FacComIdEmpresa.AsInteger)) and
       (Application.MessageBox('Hay Remitos con mercadería del proveedor sin Facturar' + #13 + '¿Desea verlos?', 'Remitos pendientes', MB_ICONEXCLAMATION + MB_YESNO) = ID_YES) then
    begin
      if frmRemProv.ShowModal = mrOK then
      begin
        try
          with frmRemProv do
          begin
            try
              DiscriminandoFC := True;
              gRecibidos.DataSource.DataSet.DisableControls;
              For i := 0 to gRecibidos.SelectedList.Count-1 do
              begin
                gRecibidos.DataSource.DataSet.GotoBookmark(gRecibidos.SelectedList.items[i]);
                ItemsFC.Append;
                ItemsFCIdArticulo.AsInteger := gRecibidos.DataSource.DataSet.FieldByName('IdArticulo').AsInteger;
                ItemsFCCantidad.AsFloat := gRecibidos.DataSource.DataSet.FieldByName('Cant_Rem').AsFloat;
                ItemsFCEnRemito.AsInteger := Verdadero;
                ItemsFCIdRemPen.AsInteger := gRecibidos.DataSource.DataSet.FieldByName('IdFactura').AsInteger;
                ItemsFCIdRemSuc.AsInteger := gRecibidos.DataSource.DataSet.FieldByName('IdSucursal').AsInteger;
                ItemsFCIdRemPto.AsInteger := gRecibidos.DataSource.DataSet.FieldByName('IdPuntoVenta').AsInteger;
                ItemsFCIdRemItm.AsInteger := gRecibidos.DataSource.DataSet.FieldByName('IdItem').AsInteger;
              end;
              gRecibidos.SelectedList.Clear;
            finally
              DiscriminandoFC := False;
              gRecibidos.DataSource.DataSet.EnableControls;
            end;
          end;
        finally
          frmRemProv := nil;
        end;
      end;
    end;
  end;
end;

procedure TfrmEgresos.Print_FacCom;
begin
  try
    Print_Form(Factura, ItemsFiscal);
  except
    raise EUsuario.Create('No se puede imprimir el comprobante');
  end;
end;

procedure TfrmEgresos.Print_RotulosFC(ItemsFactura: TBody_Fiscal);
begin
  frmImpCodBar := TfrmImpCodBar.Create(Self);
  frmImpCodBar.CodProd := 0;
  frmImpCodBar.CantStk := 0;
  frmImpCodBar.ElTalle := 0;
  frmImpCodBar.IC := ItemsFactura;
  frmImpCodBar.ShowModal;
end;

procedure TfrmEgresos.CargarRegistroFC;
begin
  FillChar(Factura, SizeOf(TFactura), 0);
  FillChar(ItemsFiscal, SizeOf(TBody_Fiscal), 0);
  with Factura do
  begin
    Case TipoOperCmp of
      0 :begin
           TipoOp := Compra;
           TipoOper := fcCompra; // Compra
         end;
      1 :begin
           TipoOp := Remito;
           TipoOper := fcRemito; // Compra
         end;
    end;
    IdSucursal := IdBranch;
    IdPuntoVenta := IdSalesPoint;
    IdEmpresa := FacComIdEmpresa.AsInteger;
    IdRemito := FacComIdRemito.AsInteger;
    FechaF := FacComFechaF.AsDateTime;
    Periodo := FacComPeriodo.AsDateTime;
    FechaI := FacComFechaF.AsDateTime;
    TipoFactura := FacComTipoFactura.AsInteger;
    TipoFacStr := GetText_Comprobante(FacComTipoFactura.AsInteger, 1);
    NroFactura := FacComNroFactura.AsString;
    CompRef := FacComCompRef.AsString;
    IdCompRef := FacComIdCompRef.AsInteger;
    CaiProv := FacComCaiProv.AsString;
    Entidad := FacComProveedor.AsInteger;
    GetDatosEnt(FacComProveedor.AsInteger, IdBranch, 2, Datos_Ent);
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
    TipoIva := FacComTipoIva.AsInteger;
    PrcDscto := FacComPrcBonif.AsFloat;
    Descuento := FacComBonificacion.AsCurrency;
    Neto := FacComNeto.AsCurrency;
    Exento := FacComExento.AsCurrency;
    NoComputables := FacComNoComp.AsCurrency;
    AlicuotaIva1 := GetAlcIva(1);
    IvaAlicuota1 := FacComIvaAlicuota1.AsCurrency;
    AlicuotaIva2 := GetAlcIva(2);
    IvaAlicuota2 := FacComIvaAlicuota2.AsCurrency;
    IvaOtAlc := FacComIvaOtAlc.AsCurrency;
    AlcPercep := FacComAlcPercep.AsFloat;
    PPCuenta := FacComPPACuenta.AsCurrency;
    Total := FacComTotal.AsCurrency;
    Detalle := FacComDetalle.AsString;

    Empleado := Usuario;
    NombreEmpleado := NombreUsuario;
    CantArtic := FacComCantArtic.AsInteger;
    Imprimir_Totales := True;

    //Pagos
    Contado := DatosPago.PagosContado;
    CtaCte := DatosPago.PagosCtaCte.TotalCtaCte;
    Tarjeta := DatosPago.PagosTarjeta.TotalTarjeta;
    Credito := 0;
    ChequeProp := DatosPago.PagosCheques.TotalValores;
    ChequeTer := DatosPago.PagosValores.TotalValores ;
    OtrosPagos := DatosPago.PagosBonosTk;
  end;

  ItemsFC.First;
  Actual := 0;
  while not ItemsFC.Eof do
  begin
    Inc(Actual);
    with ItemsFiscal[Actual] do
    begin
      IdProducto := ItemsFCIdArticulo.AsInteger;
      CodProd := ItemsFCIdArticulo.AsString;
      IdSucursal := IdBranch;
      IdPuntoVenta := IdSalesPoint;
      Talle := ItemsFCTalle.AsInteger;
      Marca := ItemsFCMarca.AsString;
      Detalle := ItemsFCDetalle.AsString;
      Color := ItemsFCColor.AsString;
      DescProd := ItemsFCProducto.AsString;
      FechaF := Factura.FechaF;
      Cantidad := ItemsFCCantidad.AsFloat;
      // Llego pedido proveedor
      EnPedido := ItemsFCEnPedido.AsInteger;
      IdOrdPedido := ItemsFCIdOrdPed.AsInteger;
      IdItmPedido := ItemsFCIdItmPed.AsInteger;
      // Llego Fact del Remito
      EnRemito := ItemsFCEnRemito.AsInteger;
      IdFacDomRem := ItemsFCIdRemPen.AsInteger;
      IdSucDomRem := ItemsFCIdRemSuc.AsInteger;
      IdPtoDomRem := ItemsFCIdRemPto.AsInteger;
      IdItmDomRem := ItemsFCIdRemItm.AsInteger;

      Combustible := False;
      EsKit := False;
      Bonificacion := ItemsFCPrcBonif.AsFloat;
      Descuento := ItemsFCTBonifItem.AsCurrency;
      PrecioNetoT := ItemsFCTPrecioNeto.AsCurrency;
      PrecioNetoU := ItemsFCUPrecioNeto.AsCurrency - ItemsFCUBonifItem.AsCurrency;
      PrecioPublico := ItemsFCPFinalPublico.AsCurrency;
      PrecioFinal := ItemsFCUPrecioFinal.AsCurrency;
      PrecioTotal := ItemsFCTPrecioFinal.AsCurrency;
      NoComputable := ItemsFCTImpInt.AsCurrency;
      IdMarkUp := ItemsFCIdMarkUp.AsInteger;
      CoefMarkUp := ItemsFCMarkUp.AsInteger;
      TipoImpInt := ItemsFCTipoImpInt.AsInteger;
      Exento := ItemsFCExento.AsCurrency;
      IdAlcIva := ItemsFCAlcIva.AsInteger;
      AlicuotaIva := GetAlcIva(ItemsFCAlcIva.AsInteger);
      MtoIva := ItemsFCTMontoIva.AsCurrency;
      TIvaEnt := FacComTipoIva.AsInteger;
      Servicio := False;
    end;
    ItemsFC.Next;
  end;
  Factura.CantArtic := Actual;
end;

procedure TfrmEgresos.ItemsFCAfterDelete(DataSet: TDataSet);
begin
  UpdateTotalsFacC;
end;

procedure TfrmEgresos.ItemsFCNewRecord(DataSet: TDataSet);
begin
  ItemsFCIdFactura.AsInteger := FacComIdFactura.AsInteger;
  if VarIsNull(ItemsFCMaxIdItem.Value) then
    ItemsFCIdItem.AsInteger := 1
  else
    ItemsFCIdItem.AsInteger := ItemsFCMaxIdItem.Value + 1;

  if FacComProvConVDolar.AsBoolean then
  begin
    with dmGestion do
    begin
      if not Empresas.Active then
        Empresas.Open;
      if Empresas.Locate(EmpresasIDEMPRESA.FieldName, FacComIdEmpresa.AsInteger, []) then
      begin
        if (EmpresasVALORDOLAR.AsCurrency > 0) then
          ItemsFCValorDolar.AsCurrency := EmpresasVALORDOLAR.AsCurrency
        else
          ItemsFCValorDolar.AsCurrency := 4.00;
      end
      else
        ItemsFCValorDolar.AsCurrency := 4.00;
    end;
  end;

  ItemsFCAlcIva.AsInteger := 1;
  ItemsFCCantidad.Value := 1;
  ItemsFCUPrecioNeto.AsCurrency := 0;
  ItemsFCTPrecioNeto.AsCurrency := 0;
  ItemsFCUImpInt.AsCurrency := 0;
  ItemsFCTImpInt.AsCurrency := 0;
  ItemsFCUPrecioFinal.AsCurrency := 0;
  ItemsFCTPrecioFinal.AsCurrency := 0;
  ItemsFCPrcBonif.AsFloat := 0;
  ItemsFCUBonifItem.AsCurrency := 0;
  ItemsFCTBonifItem.AsCurrency := 0;
  ItemsFCEnPedido.AsInteger := Falso;
  ItemsFCEnRemito.AsInteger := Falso;
  ItemsFCTieneTalle.AsInteger := Falso;
  ItemsFCTalle.AsInteger := SIN_DETALLE_TALLE;
  ItemsFCTipoImpInt.AsInteger := 2;
  ItemsFCValorDolar.AsCurrency := 0;
  ItemsFCUNetoDolar.AsCurrency := 0;
  gbDiscriminacionItems.Visible := False;
  FillChar(Elegido, SizeOf(TSearchArt), NoEncontrado);
end;

procedure TfrmEgresos.FacComNewRecord(DataSet: TDataSet);
begin
  FacComIdRemito.AsInteger := 0;
  try
    IniDate := True;
    FacComFechaF.AsDateTime := Date;
    FacComPeriodo.AsDateTime := Date;
  finally
    IniDate := False;
  end;
  if TipoOperCmp = 1 then
    FacComTipoFactura.AsInteger := RemitoX;
  FacComCompRef.AsString := '0000-00000000';
  FacComTotal.AsCurrency := 0;
  FacComNeto.AsCurrency := 0;
  FacComNoComp.AsCurrency := 0;
  FacComExento.AsCurrency := 0;
  FacComIvaAlicuota1.AsCurrency := 0;
  FacComIvaAlicuota2.AsCurrency := 0;
  FacComIvaOtAlc.AsCurrency := 0;
  FacComAlcPercep.AsCurrency := 0;
  FacComPPACuenta.AsCurrency := 0;
  FacComPrcBonif.AsCurrency := 0;
  FacComBonificacion.AsCurrency := 0;
  FacComSubTotal.AsCurrency := 0;
end;

procedure TfrmEgresos.ItemsFCCantidadChange(Sender: TField);
begin
  if not DiscriminandoFC then
  begin
    if Sender.FieldName = ItemsFCUPrecioNeto.FieldName then
    begin
      ItemsFCPrcBonif.AsFloat := 0;
      ItemsFCUBonifItem.AsCurrency := 0;
    end;
    Discriminar_ItemsFC;
  end;
end;

procedure TfrmEgresos.gFacCEnter(Sender: TObject);
begin
  if FacCom.State in dsEditModes then
    FacCom.Post;
  FacCom.Edit;
  if (not ItemsFC.IsEmpty) and
     (TipoOperCmp = 1) then
    ItemsFC.First;
end;

procedure TfrmEgresos.ItemsFCPFinalPublicoValidate(Sender: TField);
var
  FinalCalculado,
  FinalReal,
  Variacion: Currency;
begin
  if (not Calculando_PFinal) and
     (not DiscriminandoFC) and
     (not btnCancelarIFC.Focused) then
  begin
    try
      Calculando_PFinal := True;
      FinalReal := 0;
      Variacion := 0;
      FinalCalculado := ItemsFCPFinalPublico.AsCurrency;
      if ItemsFCVarPFinal.AsFloat <> 0 then
      begin
        if not Incluir_CostoConII then
        begin
          if FacComTipoIva.AsInteger = RI then
          begin
            FinalReal := ((((ItemsFCUPrecioNeto.AsCurrency -
                        ItemsFCUBonifItem.AsCurrency))*
                        (1+(ItemsFCMarkUp.AsFloat/100)))*
                        (1+(GetAlcIva(ItemsFCAlcIva.AsInteger)/100)))+
                        (ItemsFCUImpInt.AsCurrency)
          end
          else begin
            FinalReal := (ItemsFCUPrecioNeto.AsCurrency -
                         ItemsFCUBonifItem.AsCurrency) *
                         (1+(ItemsFCMarkUp.AsFloat/100));
          end;
        end
        else begin // Actual Insolito
          if FacComTipoIva.AsInteger = RI then
          begin
            if ItemsFCUImpInt.AsCurrency <> 0 then
            begin
              FinalReal := ((((ItemsFCUPrecioNeto.AsCurrency -
                          ItemsFCUBonifItem.AsCurrency))*
                          (1+(ItemsFCMarkUp.AsFloat/100)) * CoefAB) *
                          (1+(GetAlcIva(ItemsFCAlcIva.AsInteger)/100)))+
                          (ItemsFCUImpInt.AsCurrency)
            end
            else begin
              FinalReal := ((((ItemsFCUPrecioNeto.AsCurrency -
                          ItemsFCUBonifItem.AsCurrency))*
                          (1+(ItemsFCMarkUp.AsFloat/100))) *
                          (1+(GetAlcIva(ItemsFCAlcIva.AsInteger)/100)))
            end
          end
          else begin
            FinalReal := (ItemsFCUPrecioNeto.AsCurrency -
                         ItemsFCUBonifItem.AsCurrency) *
                         (1+(ItemsFCMarkUp.AsFloat/100));
          end;
        end;
        Variacion := (FinalReal * ItemsFCVarPFinal.AsFloat)/100;
        if ItemsFCPFinalPublico.AsCurrency < FinalReal then
        begin
          if ((FinalReal - ItemsFCPFinalPublico.AsCurrency) > Variacion) then
          begin
            ItemsFC.Edit;
            ItemsFCPFinalPublico.AsCurrency := FinalCalculado;
            if gbDiscriminacionItems.Visible then
            begin
              edtFinalIFC.SetFocus;
              raise EUsuario.Create('No se puede disminuir tanto el precio al publico.-');
            end;
          end;
        end;
      end;
    finally
      Calculando_PFinal := False;
    end;
  end;
end;

procedure TfrmEgresos.btnGrabarRemXClick(Sender: TObject);
begin
  FillChar(DatosPago, SizeOf(TDatosPagos), 0);
  CargarRegistroFC;
  if dmSaveFile.GrabarComprobanteEgresos(DatosPago, Factura, ItemsFiscal) then
    ShowMessage('El remito fue correctamente grabado');
  VaciarTablasFC(4);
end;

procedure TfrmEgresos.Open_ViewFCom(D, H: TDate);
begin
  ViewFCom.Close;
  ViewFCom.Params.ParamByName('Desde').AsDate := D;
  ViewFCom.Params.ParamByName('Hasta').AsDate := H;
  ViewFCom.Open;
  if not ViewFCom.IsEmpty then
    Total_ViewCom := ViewFComTotalPer.Value
  else
    Total_ViewCom := 0;
  gViewFCom.ColumnByName('Total').FooterValue := Format('%10.2f',[Total_ViewCom]);
end;

procedure TfrmEgresos.gViewFComUpdateFooter(Sender: TObject);
begin
  gViewFCom.ColumnByName('Total').FooterValue := Format('%10.2f',[Total_ViewCom]);
end;

procedure TfrmEgresos.Open_ViewGtos(D, H: TDate);
begin
  ViewGtos.Close;
  ViewGtos.Params.ParamByName('Desde').AsDate := D;
  ViewGtos.Params.ParamByName('Hasta').AsDate := H;
  ViewGtos.Open;
  if not ViewGtos.IsEmpty then
    Total_ViewGto := ViewGtosTotalPer.Value
  else
    Total_ViewGto := 0;
  gViewGtos.ColumnByName('Total').FooterValue := Format('%10.2f',[Total_ViewGto]);
end;

procedure TfrmEgresos.gViewGtosUpdateFooter(Sender: TObject);
begin
  gViewGtos.ColumnByName('Total').FooterValue := Format('%10.2f',[Total_ViewGto]);
end;

procedure TfrmEgresos.btnPagosFCClick(Sender: TObject);
var
  ComoPago: TAccionPago;
begin
  FillChar(DatosPago, SizeOf(TDatosPagos), 0);

  if (ItemsFC.State in [dsEdit, dsInsert]) and
     (ItemsFCIdArticulo.AsInteger > 0) then
    ItemsFC.Post
  else
    ItemsFC.Cancel;

  if FacComIdEmpresa.AsInteger <= 0 then
    raise EUsuario.Create('El comprobante debe estar asignado a una empresa.');
  Factura.IdEmpresa := FacComIdEmpresa.AsInteger;
  Factura.DtEmpresa := Get_DetEmp(FacComIdEmpresa.AsInteger);
  if ItemsFC.IsEmpty then
    raise EUsuario.Create('No hay productos cargados.');

  with DatosPago do
  begin
    TotalPagos := FacComTotal.AsCurrency;
    IdEntidad := FacComProveedor.AsInteger;
    IdPuntoVenta := IdSalesPoint;
    IdEmpresa := FacComIdEmpresa.AsInteger;
    DatosPago.NomEntidad := FacComNombreProveedor.AsString;
    TipoComprobante := FacComTipoFactura.AsInteger;
    FechaOp := FacComFechaF.AsDateTime;
    FechaOr := FacComFechaF.AsDateTime;
    TipoOperacion := Compra;
    NroComprobante := FacComNroFactura.AsString;
    NroOrdDePago := dmGestion.EmpresasNOrdPago.AsString;
    IdCompRef := FacComIdCompRef.AsInteger;
    CantidadCuotas := 1;
    ComoPago := DoPago(DatosPago, False);

    if ComoPago in [apPago] then
    begin
      GrabarFacCom := True;
      if RestaPagar < 0 then
        RestaPagar := -1 * RestaPagar;
    end
    else
      GrabarFacCom := False;
  end;

  if GrabarFacCom then
  begin
    if (FacCom.State in [dsEdit, dsInsert]) then
      FacCom.Post;
    CargarRegistroFC;
    if dmSaveFile.GrabarComprobanteEgresos(DatosPago, Factura, ItemsFiscal) then
    begin
      SaldosP(Date, NoEncontrado);
      ShowMessage('El comprobante fue correctamente grabado.');
      if Application.MessageBox('¿Imprime el Comprobante?', 'Compras',MB_ICONQUESTION+MB_YESNO) = ID_YES then
        Print_FacCom;
      if (not Nota_Credito_EG) and
         (Application.MessageBox('¿Imprime los Rotulos p/ los productos?', 'Compras', MB_ICONQUESTION+MB_YESNO) = ID_YES) then
        Print_RotulosFC(ItemsFiscal);
    end;
    VaciarTablasFC(4);
  end
  else begin
    VaciarTablasFC(0);
  end;
end;

procedure TfrmEgresos.edtProvFCExit(Sender: TObject);
begin
  if (Trim(edtProvFC.Text) = Vacio) or
     (edtProvFC.Text = '0') then
  begin
    if (Application.MessageBox('¿Desea cancelar el comprobante?', 'Compras',MB_ICONQUESTION+MB_YESNO) = ID_YES) then
    begin
      FacCom.EmptyDataSet;
      ItemsFC.EmptyDataSet;
      btnAddCompra.SetFocus;
    end
    else begin
      edtProvFC.SetFocus;
      raise EUsuario.Create('Debe ingresar un código de Proveedor. F3 = Buscar. F1 = Crear.');
    end;
  end;
end;

procedure TfrmEgresos.gFacCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  FillChar(Elegido, SizeOf(Elegido), NoEncontrado);
  if Shift = [] then
  begin
    case Key of
      VK_RIGHT,
      VK_RETURN,
      VK_TAB : Atras := False;
      VK_LEFT: Atras := True;
      VK_F3: Elegido := Search_Prod(Vacio, Tarea);
      VK_F5: Calculadora(Handle);
      VK_ESCAPE: begin
        case TipoOperCmp of
          0: edtSubTotalFC.SetFocus;
          1: edtDetObsFV.SetFocus;
        end;
      end;
      else
        inherited KeyDown(Key, Shift);
    end;
    if Elegido.IdArticulo <> NoEncontrado then
    begin
      ItemsFC.Edit;
      ItemsFCIdArticulo.AsInteger := Elegido.IdArticulo;
    end;
  end;
end;

procedure TfrmEgresos.edtProvFCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F1: FacComProveedor.AsInteger := AltaProveedor;
    VK_F3: FacComProveedor.AsInteger := Busca_Pro;
    VK_ESCAPE: btnCancelFC.SetFocus;
    else begin
      {$INCLUDE IyC_NextEdit.Inc}
    end
  end;
end;

procedure TfrmEgresos.gFacCColEnter(Sender: TObject);
begin
  if (gFacC.SelectedField.FieldName = 'Producto') then
  begin
    if Atras then
      gFacC.SelectedIndex := gFacC.SelectedIndex - 1
    else
      gFacC.SelectedIndex := gFacC.SelectedIndex + 1;
  end;
  if Control_Talles then
  begin
    if (gFacC.SelectedField.FieldName = 'Talle') and
       (ItemsFCTieneTalle.AsInteger = Falso) then
    begin
      if Atras then
        gFacC.SelectedIndex := gFacC.SelectedIndex - 1
      else
        gFacC.SelectedIndex := gFacC.SelectedIndex + 1;
    end;
  end;
  if (gFacC.Columns[gFacC.SelectedIndex].FieldName = 'UPrecioNeto') and
     (not ItemsFCIdArticulo.IsNull) and
     (ItemsFCCantidad.AsFloat > 0) and
     (TipoOperCmp = 0) then
  begin
    gbDiscriminacionItems.Visible := True;
    gbDiscriminacionItems.SetFocus;
  end;
  if (gFacC.Columns[gFacC.SelectedIndex].FieldName = 'UPrecioNeto') and
     (TipoOperCmp = 0) then
  begin
    if Atras then
      gFacC.SelectedIndex := gFacC.SelectedIndex - 1
    else
      gFacC.SelectedIndex := gFacC.SelectedIndex + 1;
  end;
end;

procedure TfrmEgresos.edtProvFCEnter(Sender: TObject);
begin
  edtProvFC.SelectAll;
end;

procedure TfrmEgresos.gFacCColExit(Sender: TObject);
begin
  if (gFacC.SelectedIndex >= 0) and
     (gFacC.Columns[gFacC.SelectedIndex].FieldName = 'IdArticulo') then
  begin
    if ItemsFCIdArticulo.IsNull then
    begin
      Elegido := Search_Prod(Vacio, Tarea);
      if Elegido.IdArticulo > NoEncontrado then
      begin
        ItemsFC.Edit;
        ItemsFCIdArticulo.AsInteger := Elegido.IdArticulo;
      end
    end
    else begin
      if (ItemsFCTieneTalle.AsInteger = Verdadero) and
         (ItemsFCIdArticulo.AsInteger > 0) then
      begin
        ItemsFC.Edit;
        ItemsFCTalle.AsInteger := GetTalles(ItemsFCIdArticulo.AsInteger);
      end;
    end;
  end
  else begin
    if (gFacC.SelectedIndex >= 0) and
       (gFacC.Columns[gFacC.SelectedIndex].FieldName = 'Cantidad') then
    begin
      if ItemsFCCantidad.Value <= 0 then
      begin
        gFacC.SelectedIndex := 1;
        raise EUsuario.Create('El valor para la cantidad debe ser mayor de cero');
      end;
    end;
  end;
end;

procedure TfrmEgresos.FacComPeriodoGetText(Sender: TField; var Text: String; DisplayText: Boolean);
var
  Anio, Mes, Dia: Word;
begin
  try
    DecodeDate(Sender.Value, Anio, Mes, Dia);
    Text := IntToStr(Mes) + '/' + IntToStr(Anio);
  except
    Text := Vacio;
  end;
end;

procedure TfrmEgresos.FacComPeriodoSetText(Sender: TField; const Text: String);
begin
  try
    Sender.Value := StrToDate('01/' + Text);
  except
    Sender.Clear;
  end;
end;

procedure TfrmEgresos.FacComPeriodoValidate(Sender: TField);
begin
  Check_FechaFC;
end;

procedure TfrmEgresos.FacComFechaFValidate(Sender: TField);
begin
  Check_FechaFC;
end;

procedure TfrmEgresos.FacComIdEmpresaValidate(Sender: TField);
begin
  if (Multi_Empresas) And
     (FacComIdEmpresa.AsInteger = 0) And
     (not btnCancelFC.Focused) And
     (not btnSalirEgresos.Focused) then
  begin
    cbFCDetEmp.SetFocus;
    ShowMessage('Error: No se puede ingresar un comprobante sin asignar una Empresa');
  end
  else begin
    Pedidos;
    if PermitirRem_DeProv then
      Remitos;
  end;
end;

procedure TfrmEgresos.FacComProveedorValidate(Sender: TField);
begin
  if GetDatosEnt(FacComProveedor.AsInteger, IdBranch, 2, Datos_Ent) then
  begin
    FacComNombreProveedor.AsString := Datos_Ent.Nombre+' '+
                                      Datos_Ent.DetIva+' '+
                                      Datos_Ent.DetDoc+' '+
                                      Datos_Ent.Documento;
    FacComTipoIva.AsInteger := Datos_Ent.TipoIva;
    FacComProvConVDolar.AsBoolean := Datos_Ent.ConValorDolar;
    if TipoOperCmp = 0 then
    begin
      if Datos_Ent.PERCEPCIONES then
      begin
        FacComNroRegPerc.AsString := Datos_Ent.NROREGPERCP;
        edtNroRegPercFC.Enabled := True;
        edtPercFC.Enabled := True;
        edtMtoPercFC.Enabled := True;
      end
      else begin
        FacComNroRegPerc.AsString := Vacio;
        edtNroRegPercFC.Enabled := False;
        edtPercFC.Enabled := False;
        edtMtoPercFC.Enabled := False;
      end;
      case FacComTipoIva.AsInteger of
        RI: begin
          if Nota_Credito_EG then
            FacComTipoFactura.AsInteger := CreA
          else begin
            FacComTipoFactura.AsInteger := FacA;
          end;
          pnlTipoCompFC.Caption := 'A';
          HabilitarTotalesFC(True);
        end;
        RNI, Ex, RMT: begin
          pnlTipoCompFC.Caption := 'C';
          HabilitarTotalesFC(False);
          if Nota_Credito_EG then
            FacComTipoFactura.AsInteger := CreC
          else
            FacComTipoFactura.AsInteger := uTools.FacC;
        end;
      end;
    end
    else begin
      pnlTipoCompFC.Caption := 'R';
      FacComTipoFactura.AsInteger := RemitoR;
      HabilitarTotalesFC(False);
      edtNroRegPercFC.Enabled := False;
      edtPercFC.Enabled := False;
      edtMtoPercFC.Enabled := False;
    end;
  end
  else begin
    ShowMessage('El Proveedor no existe');
  end;
end;

procedure TfrmEgresos.FacComTipoFacturaValidate(Sender: TField);
begin
  if TipoOperCmp = 0 then
  begin
    if (FacComTipoIva.AsInteger = RI) and
       (not(Sender.AsInteger in [FacA, DebA, CreA, RecA, DcAd, ODV])) then
      raise EUsuario.Create('Documento no válido para condición de iva del proveedor')
    else begin
      if (not Sender.AsInteger in [uTools.FacC, DebC, CreC, RecC]) then
        raise EUsuario.Create('Documento no válido para condición de iva del proveedor')
    end;
  end;
end;

procedure TfrmEgresos.FacComTipoFacturaChange(Sender: TField);
begin
  if TipoOperCmp = 0 then
  begin
    if Sender.AsInteger in [CreA, CreC] then
      Nota_Credito_EG := True
    else
      Nota_Credito_EG := False;
    if Nota_Credito_EG then
    begin
      cbCompRefFC.Enabled := True;
      if FacComProveedor.AsInteger > 0 then
      begin
        qFacProv.Close;
        qFacProv.ParamByName('Proveedor').AsInteger := FacComProveedor.AsInteger;
        qFacProv.Open;
        if qFacProv.IsEmpty then
          ShowMessage('El Proveedor no registra movimientos');
      end;
    end
    else begin
      cbCompRefFC.Enabled := False;
    end;
  end;
end;

procedure TfrmEgresos.edtComprobanteFCExit(Sender: TObject);
Var
  Part1, Part2: Integer;
begin
  Part1 := 0;
  Part2 := 0;
  if (not btnCancelFC.Focused) And
     (not btnSalirEgresos.Focused) then
  begin
    try
      Part1 := StrToInt(Trim(Copy(edtComprobanteFC.Text,1,Pos('-',edtComprobanteFC.Text)-1)));
    except
      on E: EConvertError do
      begin
        edtComprobanteFC.SetFocus;
        edtComprobanteFC.SelStart := 0;
        edtComprobanteFC.SelLength := 3;
        raise EUsuario.Create('Error en el Pto. de Venta del comprobante');
      end;
    end;

    try
      Part2 := StrToInt(Trim(Copy(edtComprobanteFC.Text,Pos('-',edtComprobanteFC.Text)+1,Length(edtComprobanteFC.Text))));
    except
      on E: EConvertError do
      begin
        edtComprobanteFC.SetFocus;
        edtComprobanteFC.SelStart := 5;
        edtComprobanteFC.SelLength := 8;
        raise EUsuario.Create('Error en el Nº de comprobante');
      end;
    end;
  end;
  FacComNroFactura.AsString := Format('%.4d-%.8d', [Part1, Part2]);
end;

procedure TfrmEgresos.FacComNroFacturaValidate(Sender: TField);
begin
  if (not FacComNroFactura.IsNull) and
     (FacComNroFactura.AsString <> '0000-00000000' ) and
     (FacComProveedor.AsInteger > 0) then
  begin
    if Check_CompIng(FacComProveedor.AsInteger, FacComTipoFactura.AsInteger, FacComNroFactura.AsString) then
    begin
      edtComprobanteFC.SetFocus;
      raise EUsuario.Create('el comprobante de compras ya ha si ingresado al sistema.-')
    end;
  end;
end;

procedure TfrmEgresos.FacComBeforePost(DataSet: TDataSet);
begin
  if FacComIdEmpresa.AsInteger = 0 then
  begin
    ShowMessage('El comprobante no tiene una empresa asignada.');
    cbFCDetEmp.SetFocus;
  end;
end;

procedure TfrmEgresos.FacComCompRefChange(Sender: TField);
begin
  if FacComCompRef.AsString = '0000-00000000' then
    FacComIdCompRef.AsInteger := 0
  else
    FacComIdCompRef.AsInteger := qFacProvIdFactura.AsInteger;
end;

procedure TfrmEgresos.FacComNetoChange(Sender: TField);
begin
  CalculoDiscriminacionFC;
end;

procedure TfrmEgresos.gFacCKeyPress(Sender: TObject; var Key: Char);
begin
  if (gFacC.SelectedField.DataType in [ftFloat, ftCurrency]) and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

procedure TfrmEgresos.ItemsFCIdArticuloValidate(Sender: TField);
begin
  if GetDatosArt(ItemsFCIdArticulo.AsInteger, Vacio, Datos_Art) then
  begin
    ItemsFCProducto.AsString := Datos_Art.DetProd;
    ItemsFCMarca.AsString := Datos_Art.Marca;
    ItemsFCDetalle.AsString := Datos_Art.Detalle;
    ItemsFCTieneTalle.AsInteger := Datos_Art.TieneTalle;
    ItemsFCColor.AsString := Datos_Art.Color;
    ItemsFCCostoActual.AsCurrency := Datos_Art.Costo;
    ItemsFCFinalActual.AsCurrency := Datos_Art.Precio;
    ItemsFCVarPFinal.AsFloat := Datos_Art.MaxRndPre;
    ItemsFCUImpInt.AsCurrency := Datos_Art.ImpInt;
    ItemsFCAlcIva.AsInteger := Datos_Art.IdAlcI;
    ItemsFCPFinalPublico.AsCurrency := 0;
    ItemsFCIdMarkUp.AsInteger := Datos_Art.IdMarkUp;
    ItemsFCMarkUp.AsFloat := Datos_Art.CoefMarkUp;
  end
  else
    raise EUsuario.Create('El producto no existe')
end;

procedure TfrmEgresos.ItemsFCIdArticuloSetText(Sender: TField; const Text: String);
var
  V, Err: Integer;
  Searched: String;
begin
  Searched := Text;
  if GetDatosArt(0, Searched, Datos_Art) then
    Sender.AsInteger := Datos_Art.IdArticulo
  else begin
    Val(Searched, V, Err);
    if Err = 0 then
    begin
      if GetDatosArt(V, Vacio, Datos_Art) then
        Sender.AsInteger := Datos_Art.IdArticulo
      else begin
        Elegido := Search_Prod(Searched, Tarea);
        if Elegido.IdArticulo > NoEncontrado then
          Sender.AsInteger := Elegido.IdArticulo
        else
          raise Exception.Create('No se encontró el producto');
      end;
    end
    else begin
      Elegido := Search_Prod(Searched, Tarea);
      if Elegido.IdArticulo > NoEncontrado then
        Sender.AsInteger := Elegido.IdArticulo
      else
        raise Exception.Create('No se encontró el producto');
    end;
  end;
end;

procedure TfrmEgresos.cbCompRefFCExit(Sender: TObject);
Var
  Part1, Part2: Integer;
begin
  Part1 := 0;
  Part2 := 0;
  if Trim(cbCompRefFC.Text) > Cero then
  begin
    try
      Part1 := StrToInt(Trim(Copy(cbCompRefFC.Text,1,Pos('-',cbCompRefFC.Text)-1)));
    except
      on E: EConvertError do
      begin
        cbCompRefFC.SetFocus;
        cbCompRefFC.SelStart := 0;
        cbCompRefFC.SelLength := 3;
        raise EUsuario.Create('Error en el Punto de Venta del comprobante');
      end;
    end;
    try
      Part2 := StrToInt(Trim(Copy(cbCompRefFC.Text,Pos('-',cbCompRefFC.Text)+1,Length(cbCompRefFC.Text))));
    except
      on E: EConvertError do
      begin
        cbCompRefFC.SetFocus;
        cbCompRefFC.SelStart := 5;
        cbCompRefFC.SelLength := 8;
        raise EUsuario.Create('Error en el Nº de comprobante');
      end;
    end;
  end;
  FacComCompRef.AsString := Format('%.4d-%.8d',[Part1, Part2]);
end;

procedure TfrmEgresos.cbFCDetEmpEnter(Sender: TObject);
begin
  cbFCDetEmp.DropDown;
end;

procedure TfrmEgresos.cbGTDetEmpEnter(Sender: TObject);
begin
  cbGTDetEmp.DropDown; 
end;

procedure TfrmEgresos.gFacCCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if Highlight then
  begin
    if State = [gdSelected, gdFocused] then
      AFont.Color := clWhite
    else
      AFont.Color := clBlack;
  end
end;

procedure TfrmEgresos.edtNetoUIFCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  Case Key of
    VK_F5: Calculadora(Handle);
    VK_ESCAPE: begin
        gbDiscriminacionItems.Visible := False;
        gFacC.SelectedField := ItemsFCIdArticulo;
        gFacC.SetFocus;
      end
    else begin
      {$INCLUDE IyC_NextEdit.Inc}
    end;
  end;
end;

procedure TfrmEgresos.edtNetoUIFCKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmEgresos.ItemsFCUNetoDolarValidate(Sender: TField);
begin
  if (FacComProvConVDolar.AsBoolean) and
     (ItemsFCValorDolar.AsCurrency > 0) and
     (Sender.AsCurrency <> 0) then
  begin
    ItemsFCUPrecioNeto.AsCurrency := ItemsFCValorDolar.AsCurrency * ItemsFCUNetoDolar.AsCurrency
  end;
end;

procedure TfrmEgresos.btnAceptarIFCClick(Sender: TObject);
begin
  gbDiscriminacionItems.Visible := False;
  gFacC.SetFocus;
end;

procedure TfrmEgresos.btnCancelarIFCClick(Sender: TObject);
begin
  gbDiscriminacionItems.Visible := False;
  gFacC.SelectedField := ItemsFCIdArticulo;
  ItemsFC.Cancel;
  gFacC.SetFocus;
end;

procedure TfrmEgresos.cbTCompFCChange(Sender: TObject);
begin
  if StrToInt(cbTCompFC.LookupValue) in [CreA, CreC] then
    cbCompRefFC.Enabled := True;
end;

procedure TfrmEgresos.cbAlcIvaItmGTEnter(Sender: TObject);
begin
  cbAlcIvaItmGT.DropDown;
end;

procedure TfrmEgresos.cbCCEmpreChange(Sender: TObject);
begin
  try
    Id_Empresa := Integer(cbCCEmpre.Items.Objects[cbCCEmpre.ItemIndex]);
  except
    Id_Empresa := 0;
  end;
end;

procedure TfrmEgresos.cbCCEmpreExit(Sender: TObject);
begin
  try
    Id_Empresa := Integer(cbCCEmpre.Items.Objects[cbCCEmpre.ItemIndex]);
  except
    Id_Empresa := 0;
  end;
end;

procedure TfrmEgresos.cbCompRefFCEnter(Sender: TObject);
begin
  cbCompRefFC.DropDown;
end;

procedure TfrmEgresos.btnPrintFCClick(Sender: TObject);
begin
  CargarRegistroFC;
  Print_FacCom;
end;

procedure TfrmEgresos.ItemsFCTalleGetText(Sender: TField; var Text: String; DisplayText: Boolean);
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

procedure TfrmEgresos.ItemsFCTalleSetText(Sender: TField; const Text: String);
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

procedure TfrmEgresos.gbDiscriminacionItemsEnter(Sender: TObject);
begin
  pnlFootDiscArt.Caption := ItemsFCIdArticulo.AsString+' '+
                            ItemsFCProducto.AsString;
  lblFinalIFC.Enabled := not Nota_Credito_EG;
  edtFinalIFC.Enabled := not Nota_Credito_EG;
  lblValorDolar.Enabled := (FacComProvConVDolar.AsBoolean = True);
  edtValorDolar.Enabled := (FacComProvConVDolar.AsBoolean = True);
  lblNetoUDolar.Enabled := (FacComProvConVDolar.AsBoolean = True);
  edtNetoUDolar.Enabled := (FacComProvConVDolar.AsBoolean = True);
  edtAlcIvaIFC.SetFocus;
end;

procedure TfrmEgresos.edtAlcIvaIFCEnter(Sender: TObject);
begin
  edtAlcIvaIFC.SelectAll;
end;

procedure TfrmEgresos.ItemsFCUPrecioNetoValidate(Sender: TField);
begin
  if (Sender.AsCurrency <= 0) and
     (ItemsFCIdArticulo.AsInteger > 0) and
     (FacComTipoIva.AsInteger = RI) and
     (not DiscriminandoFC) then
    raise EUsuario.Create('El precio debe ser mayor que Cero');
end;

//******************************************************************************
//******************************************** GASTOS **************************
//******************************************************************************

function TfrmEgresos.Get_Cuenta(IdCta: Integer; Var C: TDatos_PlanCta): Integer;
var
  q: TMDOQuery;
begin
  Result := NoEncontrado;
  FillChar(C, SizeOf(TDatos_PlanCta), 0);
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.dbGestion;
    q.Transaction := dmGestion.trProc;
    q.SQL.Add('Select IdCuenta, Descripcion, ');
    q.SQL.Add('       DetalleCentro, CodigoContable ');
    q.SQL.Add('From PlanCtas ');
    q.SQL.Add('Where (Nivel = 1) and (IdCuenta =:IdCta) ');
    q.ParamByName('IdCta').AsInteger := IdCta;
    q.Open;
    if not q.IsEmpty then
    begin
      Result := IdCta;
      C.IdCuenta := q.FieldByName('IdCuenta').AsInteger;
      C.Descripcion := q.FieldByName('Descripcion').AsString;
      C.DetalleCtro := q.FieldByName('DetalleCentro').AsString;
      C.CodigoCon := q.FieldByName('CodigoContable').AsString;
    end;
  finally
    q.Free;
  end;
end;

procedure TfrmEgresos.CalculoDiscriminacionGT;
var
  GTotal, GSubTot, GBonif, GNeto, GMIva, GPPCta, GTotRet: Currency;
begin
  if not DiscriminandoGT then
  begin
    try
      DiscriminandoGT := True;
      if cbxConIvaGT.Checked = True then
      begin
        if GastosTipoIva.AsInteger = RI then
        begin
          try
            GTotal := 0;
            GSubTot:= 0;
            GBonif := 0;
            GNeto  := 0;
            GPPCta := 0;
            GMIva  := 0;
            GTotRet:= 0;
            try
              GTotRet := GastosNoComputables.AsCurrency +
                         GastosExento.AsCurrency +
                         GastosRetGan.AsCurrency +
                         GastosRetIBt.AsCurrency +
                         GastosRetLH.AsCurrency;

              GSubTot := GastosTotal.AsCurrency - GTotRet;
              if GastosPrcBonif.AsFloat > 0 then
                GBonif := ((GSubTot * GastosPrcBonif.AsFloat) / 100)
              else
                GBonif := GastosBonificacion.AsCurrency;
              GSubTot := GSubTot - GBonif;
              GMIva  := GTotal - GSubTot;
              if GastosAlcPercep.AsFloat > 0 then
                GPPCta := (GSubTot * GastosAlcPercep.AsFloat) / 100
              else begin
                if GastosRetIva.AsCurrency <> 0 then
                  GPPCta := GastosRetIva.AsCurrency
                else
                  GPPCta := 0;
              end;
              GSubTot := GSubTot - GPPCta;
              GNeto  := GSubTot;
            finally
              GastosSubTotal.AsCurrency := GSubTot;
              GastosBonificacion.AsCurrency := GBonif;
              GastosNeto.AsCurrency := GNeto;
              GastosRetIva.AsCurrency := GPPCta;
              GastosMtoIvaAlc1.AsCurrency := 0;
              GastosMtoIvaAlc2.AsCurrency := 0;
              GastosMtoIvaOAlc.AsCurrency := 0;
            end;
          except
            raise EUsuario.Create('Algún valor ingresado no es válido')
          end
        end
        else begin
          GastosSubTotal.AsCurrency := GastosTotal.AsCurrency;
          GastosNeto.AsCurrency := GastosTotal.AsCurrency;
        end;
      end
      else begin
        GastosSubTotal.AsCurrency := GastosTotal.AsCurrency;
        GastosNeto.AsCurrency := GastosTotal.AsCurrency;
        GastosBonificacion.AsCurrency := 0;
        GastosNoComputables.AsCurrency := 0;
        GastosExento.AsCurrency := 0;
        GastosMtoIvaAlc1.AsCurrency := 0;
        GastosMtoIvaAlc2.AsCurrency := 0;
        GastosMtoIvaOAlc.AsCurrency := 0;
        GastosDevQDtos.AsCurrency := 0;
        GastosRetIva.AsCurrency := 0;
        GastosRetGan.AsCurrency := 0;
        GastosRetIBt.AsCurrency := 0;
        GastosRetLH.AsCurrency := 0;
      end;

      if GastosTipoFactura.AsInteger in [CreA, CreB, CreC] then
        GastosDevQDtos.AsCurrency := GastosTotal.AsCurrency +
                                     GastosBonificacion.AsCurrency
      else
        edtDevQDtosGT.Enabled := False;
    finally
      DiscriminandoGT := False;
    end;
  end;
end;

procedure TfrmEgresos.ItemsGTPrcCtaChange(Sender: TField);
Var
  AuxNt, AuxIv: Currency;
begin
  AuxNt := 0;
  AuxIv := 0;
  if (Sender.AsFloat > 0.0) and
     (Sender.AsFloat <= 100.0) and
     (ItemsGTIdCuenta.AsInteger > 0) then
  begin
    if GastosTipoIva.AsInteger = RI then
    begin
      AuxNt := ((GastosSubTotal.AsCurrency * Sender.AsFloat) / 100) /
               (1+(GetAlcIva(ItemsGTIdAlcIva.AsInteger)/100));
      AuxIv := (AuxNt * GetAlcIva(ItemsGTIdAlcIva.AsInteger))/100;
    end
    else begin
      AuxNt := ((GastosSubTotal.AsCurrency * Sender.AsFloat) / 100);
      AuxIv := 0;
    end;
  end;
  ItemsGTMontoCta.AsCurrency := AuxNt;
  ItemsGTMontoIva.AsCurrency := AuxIv;
end;

procedure TfrmEgresos.UpdateTotalsGastos;
var
  TempTo, TempPr,
  TempN0, TempN1,
  TempN2, TempN3,
  TempI1, TempI2,
  TempI3: Currency;
  PrevRecord: TBookmark;
  CantItems: Integer;
begin
  if not DiscriminandoGT then
  begin
    try
      Total_Prc := 0;
      Total_Net := 0;
      ItemsGt.DisableControls;
      DiscriminandoGT := True;
      PrevRecord := ItemsGt.GetBookmark;
      try
        CantItems := 0;
        TempTo := 0;
        TempPr := 0;

        TempN0 := 0;
        TempN1 := 0;
        TempN2 := 0;
        TempN3 := 0;

        TempI1 := 0;
        TempI2 := 0;
        TempI3 := 0;
        ItemsGt.First;
        while not ItemsGt.Eof do
        begin
          if ItemsGTPrcCta.AsFloat > 0 then
          begin
             case ItemsGtAlcIva.AsInteger of
               0: TempN0 := TempN0 + ItemsGTMontoCta.AsCurrency;
               1: begin
                    TempN1 := TempN1 + ItemsGTMontoCta.AsCurrency;
                    TempI1 := TempI1 + ItemsGTMontoIva.AsCurrency;
                  end;
               2: begin
                    TempN2 := TempN2 + ItemsGTMontoCta.AsCurrency;
                    TempI2 := TempI2 + ItemsGTMontoIva.AsCurrency;
                  end;
               3: begin
                    TempN3 := TempN3 + ItemsGTMontoCta.AsCurrency;
                    TempI3 := TempI3 + ItemsGTMontoIva.AsCurrency;
                  end;
             end;
          end;
          Inc(CantItems);
          TempTo := TempTo + ItemsGTMontoCta.AsCurrency;
          TempPr := TempPr + ItemsGTPrcCta.AsFloat;
          ItemsGt.Next;
        end;
        Gastos.Edit;
        GastosMtoIvaAlc1.AsCurrency := TempI1;
        GastosMtoIvaAlc2.AsCurrency := TempI2;
        GastosMtoIvaOAlc.AsCurrency := TempI3;
        Total_Net := TempN0 +
                     TempN1 +
                     TempN2 +
                     TempN3;
        GastosNeto.AsCurrency := Total_Net;
        GastosTotPrcAlc.AsFloat := TempPr;
        GastosCantItm.AsInteger := CantItems;
        Gastos.Post;
      except
        if PrevRecord <> nil then
        begin
          ItemsGt.GotoBookmark(PrevRecord);
          ItemsGt.FreeBookmark(PrevRecord);
        end;
        Exit;
      end;

      if PrevRecord <> nil then
      begin
        ItemsGt.GotoBookmark(PrevRecord);
        ItemsGt.FreeBookmark(PrevRecord);
      end;
    finally
      Total_Prc := TempPr;
      if Total_Prc > 100.00 then
        ShowMessage('Los porcentaje de imputación superan el total del Comprobante.');
      gItemsGT.ColumnByName('DetCuenta').FooterValue := 'Totales';
      gItemsGT.ColumnByName('MontoCta').FooterValue := Format('%m',[Total_Net]);
      gItemsGT.ColumnByName('PrcCta').FooterValue := Format('%10.2f%%',[Total_Prc]);
      DiscriminandoGT := False;
      ItemsGt.EnableControls;
    end;
  end;
end;

procedure TfrmEgresos.gItemsGTUpdateFooter(Sender: TObject);
begin
  gItemsGT.ColumnByName('DetCuenta').FooterValue := 'Totales';
  gItemsGT.ColumnByName('MontoCta').FooterValue := Format('%m',[Total_Net]);
  gItemsGT.ColumnByName('PrcCta').FooterValue := Format('%10.2f%%',[Total_Prc]);
end;

procedure TfrmEgresos.gItemsGTExit(Sender: TObject);
Var
  TempTo,
  TempN0, TempN1,
  TempN2, TempN3,
  TempI1, TempI2,
  TempI3: Currency;
  CantItems: Integer;
begin

  (*
  if not DiscriminandoGT then
  begin
    if ItemsGT.State in dsEditModes then
      ItemsGT.Post;
    try
      CantItems := 0;
      TempTo := 0;
      TempN0 := 0;
      TempN1 := 0;
      TempN2 := 0;
      TempN3 := 0;
      TempI1 := 0;
      TempI2 := 0;
      TempI3 := 0;
      ItemsGT.DisableControls;
      ItemsGT.First;
      while not ItemsGt.Eof do
      begin
        case ItemsGtAlcIva.AsInteger of
          0: TempN0 := TempN0 + ItemsGTMontoCta.AsCurrency;
          1: begin
               TempN1 := TempN1 + ItemsGTMontoCta.AsCurrency;
               TempI1 := TempI1 + ItemsGTMontoIva.AsCurrency;
             end;
          2: begin
               TempN2 := TempN2 + ItemsGTMontoCta.AsCurrency;
               TempI2 := TempI2 + ItemsGTMontoIva.AsCurrency;
             end;
          3: begin
               TempN3 := TempN3 + ItemsGTMontoCta.AsCurrency;
               TempI3 := TempI3 + ItemsGTMontoIva.AsCurrency;
             end;
        end;
        Inc(CantItems);
        TempTo := TempTo +
                  ItemsGTMontoCta.AsCurrency;
        ItemsGT.Next;
      end;
      Gastos.Edit;
      GastosNeto.AsCurrency := TempTo;
      GastosMtoIvaAlc1.AsCurrency := TempI1;
      GastosMtoIvaAlc2.AsCurrency := TempI2;
      GastosMtoIvaOAlc.AsCurrency := TempI3;
      GastosCantItm.AsInteger := CantItems;
      Gastos.Post;
    finally
      ItemsGT.EnableControls
    end;
  end;
  *)
end;

procedure TfrmEgresos.HabilitarTotalesGT(Habilitar: Boolean);
begin
  lblBonifGT.Enabled := Habilitar;
  edtPrcBonifGT.Enabled := Habilitar;
  edtBonificacionGT.Enabled := Habilitar;
  lblIvaTGGT.Enabled := Habilitar;
  edtIvaTGGT.Enabled := Habilitar;
  lblIvaTDGT.Enabled := Habilitar;
  edtIvaTDGT.Enabled := Habilitar;
  lblIvaOTGT.Enabled := Habilitar;
  edtIvaOTGT.Enabled := Habilitar;
  lblPPCuentaGT.Enabled := Habilitar;
  edtPPCuentaGT.Enabled := Habilitar;
  edtAlcPercepGT.Enabled := Habilitar;
  edtNroRegPerGT.Enabled := Habilitar;
  lblNoCompGT.Enabled := Habilitar;
  edtNoCompGT.Enabled := Habilitar;
  lblExentoGT.Enabled := Habilitar;
  edtExentoGT.Enabled := Habilitar;
  (*
  lblNetoGT.Enabled := Habilitar;
  edtNetoGT.Enabled := Habilitar;
  *)
  lblDevQDtosGT.Enabled := Habilitar;
  edtDevQDtosGT.Enabled := Habilitar;
  lblRetGanGT.Enabled := Habilitar;
  edtRetGanGT.Enabled := Habilitar;
  lblRetIBtGT.Enabled := Habilitar;
  edtRetIBtGT.Enabled := Habilitar;
  lblRetLHGT.Enabled := Habilitar;
  edtRetLHGT.Enabled := Habilitar;
end;

procedure TfrmEgresos.VaciarTablasGT(W: Integer);
begin
  DiscriminandoGT := True;
  cbxConIvaGT.Checked := True;
  pnlTipoCompGT.Caption := '?';
  btnPagosGT.Enabled := False;
  Open_ViewGtos(StartOfTheMonth(Date), Date);
  Case W of
    1: begin
         Total_Prc := 0;
         ItemsGt.Close;
         Gastos.Close;
         if Gastos.Active then
           Gastos.EmptyDataSet
         else
           Gastos.CreateDataSet;
         if ItemsGt.Active then
           ItemsGt.EmptyDataSet
         else
           ItemsGt.CreateDataSet;
         GastosProveedor.ValidChars := CodChars;
       end;
    2: begin
         btnPagosGT.Enabled := False;
       end;
  end;
  DiscriminandoGT := False;
  if not qCentros.Active then
  begin
    qCentros.Open;
    qCuentas.Open;
  end;
end;

procedure TfrmEgresos.Check_FechaGT;
var
  Anio, Mes, Dia,
  Year, Month, Day: Word;
begin
  if (IniDate = False) and
     (IniDate = False) and
     (not btnSalirEgresos.Focused) then
  begin
    DecodeDate(GastosFechaF.Value, Anio, Mes, Dia);
    DecodeDate(GastosPeriodo.Value, Year, Month, Day);
    if (((Anio = Year) and (Month <> Mes)) or ((Year <> Anio) and (Month = Mes))) and (Anio <= CurrentYear) then
    begin
      case MessageDlg(Format('Comprobante de fecha: %s procesado en periodo: %d/%d', [edtFechaFGT.Text, Month, Year]), mtInformation, [mbOK, mbCancel], 0) of
        IdCancel: raise EUsuario.Create('fecha mal ingresada.-');
        IdOk:     if not Check_Seg(Nivel_Con, 'Fecha GT', AutorDto) then
                    raise EUsuario.Create('No esta autorizado.-');
      end;
    end;
  end;
end;

procedure TfrmEgresos.gbGTImputacionesEnter(Sender: TObject);
begin
  pnlFootGtos.Caption := 'Ingrese código de Cuentas <F3> Buscar. <Esc> Fin Imputaciones.';
  gItemsGT.SetFocus
end;

procedure TfrmEgresos.gbGTImputacionesExit(Sender: TObject);
begin
  pnlFootGtos.Caption := ' ';
end;

procedure TfrmEgresos.GastosNewRecord(DataSet: TDataSet);
begin
  try
    DiscriminandoGT := True;
    try
      IniDate := True;
      GastosFechaF.AsDateTime := Date;
      GastosPeriodo.AsDateTime := Date;
    finally
      IniDate := False;
    end;
    GastosIdFactura.AsInteger := 1;
    GastosCantItm.AsInteger := 0;
    GastosTotal.AsCurrency := 0;
    GastosPrcBonif.AsFloat := 0;
    GastosBonificacion.AsCurrency := 0;
    GastosNeto.AsCurrency := 0;
    GastosMtoIvaAlc1.AsCurrency := 0;
    GastosMtoIvaAlc2.AsCurrency := 0;
    GastosMtoIvaOAlc.AsCurrency := 0;
    GastosNoComputables.AsCurrency := 0;
    GastosExento.AsCurrency := 0;
    GastosAlcPercep.AsFloat := 0;
    GastosRetIva.AsCurrency := 0;
    GastosDevQDtos.AsCurrency := 0;
    GastosRetGan.AsCurrency := 0;
    GastosRetIBt.AsCurrency := 0;
    GastosRetLH.AsCurrency := 0;
    GastosIdEmpresa.AsInteger := 0;
  finally
    DiscriminandoGT := False;
  end;
end;

procedure TfrmEgresos.btnAddGtoClick(Sender: TObject);
begin
  VaciarTablasGT(1);
  tCompImputable.Enabled := True;
  Gastos.Append;
  edtPeriodoGT.SetFocus;
end;

procedure TfrmEgresos.edtProveedorGTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  AuxPro: Integer;
begin
  AuxPro := NoEncontrado;
  case Key of
    VK_F1: begin
             AuxPro := AltaProveedor;
             if AuxPro = NoEncontrado then
               raise EUsuario.Create('Proveedor mal ingresado');
           end;
    VK_F3: begin
             AuxPro := Busca_Pro;
             if AuxPro = NoEncontrado then
               raise EUsuario.Create('Proveedor no encontrado');
           end;
    else begin
      {$INCLUDE IyC_NextEdit.INC}
    end;
  end;
  if AuxPro > NoEncontrado then
    GastosProveedor.AsInteger := AuxPro;
end;

procedure TfrmEgresos.edtProvCmpEnter(Sender: TObject);
begin
  NProv := 0;
  btnExpProvCmp.Enabled := False;
  lblNomProvCmp.Caption := Vacio;
end;

procedure TfrmEgresos.edtProvCmpExit(Sender: TObject);
begin
  try
    NProv := edtProvCmp.IntValue;
  except
    NProv := 0;
  end;
  if NProv = 0 then
    lblNomProvCmp.Caption := '<TODOS>'
  else begin
    if GetDatosEnt(NProv, IdBranch, 2, Datos_Ent) then
    begin
      lblNomProvCmp.Caption := Datos_Ent.Nombre;
      edtProvCmp.IntValue := NProv;
    end;
  end;
end;

procedure TfrmEgresos.edtProvCmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  NProv := 0;
  case Key of
    VK_F3: begin
      NProv := Busca_Pro;
      if GetDatosEnt(NProv, IdBranch, 2, Datos_Ent) then
      begin
        lblNomProvCmp.Caption := Datos_Ent.Nombre;
        edtProvCmp.IntValue := NProv;
      end;
    end;
    VK_ESCAPE: btnSalirEgresos.SetFocus;
  end;
end;

procedure TfrmEgresos.edtProveedorGTEnter(Sender: TObject);
begin
  edtProveedorGT.SelectAll;
end;

procedure TfrmEgresos.btnPagosGTClick(Sender: TObject);
Var
  DifTotales: Currency;
  Mensaje: String;
begin
  DifTotales := 0;
  DifTotales := Abs(GastosTotal.AsCurrency) -
                Abs(GastosNeto.AsCurrency + GastosExento.AsCurrency + {GastosBonificacion.AsCurrency +}
                GastosNoComputables.AsCurrency + GastosMtoIvaAlc1.AsCurrency +
                GastosMtoIvaAlc2.AsCurrency + GastosMtoIvaOAlc.AsCurrency +
                GastosRetGan.AsCurrency + GastosRetIBt.AsCurrency +
                GastosRetLH.AsCurrency + GastosRetIva.AsCurrency);
                (*and (not dmGestion.EmpresasTipoIva.AsInteger = RMT "deberia ser asi" *)

  if (DifTotales <> 0) then
  begin
    Mensaje := Format('Total comprobante: %m ' + #10#13 +
                      '______________________________'+ #10#13 +
                      'Monto Neto: %m ' + #10#13 +
                      'Monto Exento: %m ' + #10#13 +
                      'Bonificación: %m ' + #10#13 +
                      'No computables: %m ' + #10#13 +
                      'Totales IVA: %m ' + #10#13 +
                      'Percepción IVA: %m ' + #10#13 +
                      'Ret. Ganancias: %m ' + #10#13 +
                      'Ret. Ing. Brutos: %m ' + #10#13 +
                      'Ret. Lote Hogar: %m ' + #10#13 +
                      '______________________________' + #10#13 +
                      'Diferencia: %m ', [GastosTotal.AsCurrency, GastosNeto.AsCurrency ,
                       GastosExento.AsCurrency , GastosBonificacion.AsCurrency ,
                       GastosNoComputables.AsCurrency , (GastosMtoIvaAlc1.AsCurrency  +
                       GastosMtoIvaAlc2.AsCurrency + GastosMtoIvaOAlc.AsCurrency),
                       GastosRetIva.AsCurrency , GastosRetGan.AsCurrency ,
                       GastosRetIBt.AsCurrency , GastosRetLH.AsCurrency , DifTotales]);

    if (Application.MessageBox(PChar(Mensaje), 'Diferencia en suma', MB_ICONEXCLAMATION + MB_YESNO) = ID_NO) then
    begin
      edtNetoGT.SetFocus;
    end;
  end;

  tCompImputable.Enabled := False;
  FillChar(DatosPago, SizeOf(TDatosPagos), 0);
  FillChar(Factura, SizeOf(TFactura), 0);
  FillChar(ItemsFiscal, SizeOf(TBody_Fiscal), 0);
  if (Gastos.State in [dsEdit, dsInsert]) then
    Gastos.Post;

  DatosPago.TotalPagos := GastosTotal.AsCurrency;
  DatosPago.IdEntidad  := GastosProveedor.AsInteger;
  DatosPago.IdEmpresa  := GastosIdEmpresa.AsInteger;
  DatosPago.IdPuntoVenta := IdSalesPoint;
  DatosPago.NroComprobante := GastosNroFactura.AsString;
  DatosPago.TipoOperacion := uTools.Gastos;
  DatosPago.FechaOp := GastosFechaF.AsDateTime;
  DatosPago.FechaOr := GastosFechaF.AsDateTime;
  DatosPago.TipoComprobante := GastosTipoFactura.AsInteger;
  DatosPago.Aplicar_RIB := GastosAplicar_RetIBLH.AsBoolean;

  if (GastosAplicar_RetIBLH.AsBoolean) And
     (GastosTotal.AsCurrency <= 499.99)  then
    DatosPago.Aplicar_RIB := False;

  if GastosTotPrcAlc.AsFloat < 100.00 then
  begin
    gItemsGT.SetFocus;
    raise EUsuario.Create('Porcentajes de aplicación mal ingresados');
  end;

  if DoPago(DatosPago, False) in [apPago] then
  begin
    if DatosPago.RestaPagar < 0 then // Vuelto
      DatosPago.RestaPagar := -1 * DatosPago.RestaPagar;
    DatosPago.IdEntidad := GastosProveedor.AsInteger;
    with Factura do
    begin
      TipoOp := uTools.Gastos;
      TipoOper := fcGastos; // Gasto
      TipoFactura := GastosTipoFactura.AsInteger;
      NroFactura := GastosNroFactura.AsString;
      CaiProv := GastosCaiProv.AsString;
      IdPuntoVenta := IdSalesPoint;
      IdSucursal := IdBranch;
      IdEmpresa := GastosIdEmpresa.AsInteger;
      DtEmpresa := Get_DetEmp(GastosIdEmpresa.AsInteger);
      PuntoVta := 0;
      Periodo := GastosPeriodo.AsDateTime;
      FechaF := GastosFechaF.AsDateTime;
      TipoFactura := GastosTipoFactura.AsInteger;
      Entidad := GastosProveedor.AsInteger;
      TipoIva := GastosTipoIva.AsInteger;
      Neto := GastosNeto.AsCurrency;
      Exento := GastosExento.AsCurrency;
      NoComputables := GastosNoComputables.AsCurrency;
      IvaAlicuota1 := GastosMtoIvaAlc1.AsCurrency;
      IvaAlicuota2 := GastosMtoIvaAlc2.AsCurrency;
      IvaOtAlc := GastosMtoIvaOAlc.AsCurrency;
      Total := GastosTotal.AsCurrency;
      AlcPercep := GastosAlcPercep.AsCurrency;
      PPCuenta := GastosRetIva.AsCurrency;
      PrcDscto := GastosPrcBonif.AsCurrency;
      Descuento := GastosBonificacion.AsCurrency;
      RetGan := GastosRetGan.AsCurrency;
      RetIBt := GastosRetIBt.AsCurrency;
      RetLH  := GastosRetLH.AsCurrency;
      Detalle := GastosDetalle.AsString;
    end;

    ItemsGt.First;
    Actual := 0;
    while not ItemsGt.Eof do
    begin
      Inc(Actual);
      with ItemsFiscal[Actual] do
      begin
        IdProducto := ItemsGTIdCuenta.AsInteger;
        CodProd := ItemsGTIdCuenta.AsString;
        IdSucursal := IdBranch;
        IdPuntoVenta := IdSalesPoint;
        Talle := 0;
        DescProd := ItemsGTDetCuenta.AsString;
        Color := Vacio;
        FechaF := Factura.FechaF;
        Cantidad := ItemsGTPrcCta.AsFloat;
        EnRemito := Falso;
        EnPedido := Falso;
        IdOrdPedido := 0;
        IdItmPedido := 0;
        Bonificacion := 0;
        Descuento := 0;
        PrecioNetoT := ItemsGTMontoCta.AsCurrency;
        PrecioNetoU := 0;
        PrecioPublico := 0;
        PrecioFinal := 0;
        IdFacDomRem := 0;
        IdSucDomRem := 0;
        IdPtoDomRem := 0;
        IdItmDomRem := 0;
        PrecioTotal := (ItemsGTMontoCta.AsCurrency + ItemsGtMontoIva.AsCurrency);
        NoComputable := 0;
        IdMarkUp := 0;
        CoefMarkUp := 0;
        TipoImpInt := 0;
        Exento := 0;
        IdAlcIva := ItemsGtAlcIva.AsInteger;
        AlicuotaIva := GetAlcIva(ItemsGtAlcIva.AsInteger);
        MtoIva := ItemsGtMontoIva.AsCurrency;
        TIvaEnt := GastosTipoIva.AsInteger;;
        Servicio := False;
      end;
      ItemsGt.Next;
    end;
    Factura.CantArtic := Actual;
    if dmSaveFile.GrabarComprobanteEgresos(DatosPago, Factura, ItemsFiscal) then
    begin
      ShowMessage('El comprobante de gastos fue correctamente grabado');
      SaldosP(Date, NoEncontrado);
    end;
  end;
  VaciarTablasGT(2);
end;

procedure TfrmEgresos.GastosProveedorValidate(Sender: TField);
begin
  if GetDatosEnt(Sender.AsInteger, IdBranch, 2, Datos_Ent) then
  begin
    GastosNombreProveedor.AsString := Datos_Ent.Nombre+' '+Datos_Ent.DetIva+' '+
                                      Datos_Ent.DetDoc+' '+Datos_Ent.Documento;
    GastosTipoIva.AsInteger := Datos_Ent.TipoIva;
    if (Datos_Ent.MONTORETENCION_B > 0) And
       (Datos_Ent.PRCRETENCION_B1 > 0) then
      GastosAplicar_RetIBLH.AsBoolean := True
    else
      GastosAplicar_RetIBLH.AsBoolean := False;

    GastosAlcPercep.AsFloat := 0;
    GastosNreRegPrc.AsString := Datos_Ent.NROREGPERCP;
    case GastosTipoIva.AsInteger of
      RI: begin
            pnlTipoCompGT.Caption := 'A';
            HabilitarTotalesGT(True);
            GastosTipoFactura.AsInteger := FacA
          end;
      RNI, Ex, RMT, NC: begin
            pnlTipoCompGT.Caption := 'C';
            HabilitarTotalesGT(False);
            GastosTipoFactura.AsInteger := FacC;
          end
      else begin
        edtProveedorGT.SetFocus;
        raise EUsuario.Create('La Condición de Iva del Proveedor no es valida');
      end;
    end;
  end
  else begin
    edtProveedorGT.SetFocus;
    raise EUsuario.Create('El Proveedor no existe');
  end;
end;

procedure TfrmEgresos.GastosPeriodoGetText(Sender: TField; var Text: String; DisplayText: Boolean);
var
  Anio, Mes, Dia: Word;
begin
  try
    DecodeDate(Sender.Value, Anio, Mes, Dia);
    Text := IntToStr(Mes) + '/' + IntToStr(Anio);
  except
    Text := Vacio;
  end;
end;

procedure TfrmEgresos.GastosPeriodoSetText(Sender: TField; const Text: String);
begin
  try
    Sender.Value := StrToDate('01/' + Text);
  except
    Sender.Clear;
    raise;
  end;
end;

procedure TfrmEgresos.GastosTipoFacturaValidate(Sender: TField);
begin
  if (GastosTipoIva.AsInteger = RI) and (cbxConIvaGT.Checked) then
  begin
    if (not Sender.AsInteger in [FacA, DebA, CreA, RecA, DcAd, ODV]) then
    begin
      edtProveedorGT.SetFocus;
      raise Exception.Create('Documento no válido para condición de IVA del proveedor');
    end;
  end
  else begin
    if (not Sender.AsInteger in [FacC, DebC, CreC, RecC, NoImputable]) then
    begin
      edtProveedorGT.SetFocus;
      raise Exception.Create('Documento no válido para condición de IVA del proveedor');
    end;
  end;
end;

procedure TfrmEgresos.edtComprobanteGTExit(Sender: TObject);
Var
  Part1, Part2: Integer;
begin
  try
    Part1 := StrToInt(Trim(Copy(edtComprobanteGT.Text,1,Pos('-',edtComprobanteGT.Text)-1)));
  except
    on E: EConvertError do
    begin
      edtComprobanteGT.SetFocus;
      edtComprobanteGT.SelStart := 0;
      edtComprobanteGT.SelLength := 3;
      raise EUsuario.Create('Error en el Pto. de Venta del comprobante');
    end;
  end;
  try
    Part2:= StrToInt(Trim(Copy(edtComprobanteGT.Text,Pos('-',edtComprobanteGT.Text)+1,Length(edtComprobanteGT.Text))));
  except
    on E: EConvertError do
    begin
      edtComprobanteGT.SetFocus;
      edtComprobanteGT.SelStart := 5;
      edtComprobanteGT.SelLength := 8;
      raise EUsuario.Create('Error en el Nº de comprobante');
    end;
  end;
  GastosNroFactura.AsString := Format('%.4d-%.8d', [Part1, Part2]);
end;

procedure TfrmEgresos.GT_CompImputableTimer(Sender: TObject);
begin
  if cbxConIvaGT.Font.Color = clBlack then
    cbxConIvaGT.Font.Color := clRed
  else
    cbxConIvaGT.Font.Color := clBlack;
end;

procedure TfrmEgresos.cbxConIvaGTClick(Sender: TObject);
begin
  HabilitarTotalesGT(cbxConIvaGT.Checked = True);
  if (cbxConIvaGT.Checked = False) then
    GastosTipoFactura.AsInteger := NoImputable;
  CalculoDiscriminacionGT;
end;

procedure TfrmEgresos.btnCancelGTClick(Sender: TObject);
begin
  ItemsGt.Cancel;
  Gastos.Cancel;
  Gastos.EmptyDataSet;
  ItemsGt.EmptyDataSet;
  btnAddGto.SetFocus;
end;

procedure TfrmEgresos.edtFechaFGTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmEgresos.edtTotalGTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F5 then
      Calculadora(Handle)
  else
    {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmEgresos.edtDescripcionCentroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmEgresos.cbTipoCompGTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmEgresos.edtPeriodoGTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Escape then
    Close
  else begin
   {$INCLUDE IyC_NextEdit.INC}
  end;
end;

procedure TfrmEgresos.edtTotalGTKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmEgresos.edtPeriodoGTEnter(Sender: TObject);
begin
  edtPeriodoGT.SelectAll;
end;

procedure TfrmEgresos.cbxConIvaGTEnter(Sender: TObject);
begin
  (Sender As TRzCheckBox).Color := clGreen;
end;

procedure TfrmEgresos.cbxConIvaGTExit(Sender: TObject);
begin
  (Sender As TRzCheckBox).Color := clMoneyGreen;
end;

procedure TfrmEgresos.GastosAfterPost(DataSet: TDataSet);
begin
  if GastosIdEmpresa.AsInteger = 0 then
  begin
    ShowMessage('El comprobante no tiene una empresa asignada.');
    cbGTDetEmp.SetFocus;
  end;
end;

procedure TfrmEgresos.GastosAlcPercepChange(Sender: TField);
begin
  CalculoDiscriminacionGT
end;

procedure TfrmEgresos.GastosBonificacionChange(Sender: TField);
begin
  CalculoDiscriminacionGT;
end;

procedure TfrmEgresos.GastosTotalChange(Sender: TField);
begin
  if GastosTotal.AsCurrency <> 0 then
  begin
    btnPagosGT.Enabled := True;
    if (GastosProveedor.AsInteger > 0) and
       (not GastosNroFactura.IsNull) then
    begin
      if Check_CompIng(GastosProveedor.AsInteger,
                       GastosTipoFactura.AsInteger,
                       GastosNroFactura.AsString) then
      begin
        edtComprobanteGT.SetFocus;
        raise EUsuario.Create('El comprobante ya fue ingresado.');
      end;
    end;
    CalculoDiscriminacionGT;
  end;
end;

procedure TfrmEgresos.GastosRetGanChange(Sender: TField);
begin
  CalculoDiscriminacionGT;
end;

procedure TfrmEgresos.GastosPeriodoValidate(Sender: TField);
begin
  Check_FechaGT;
end;

procedure TfrmEgresos.GastosFechaFValidate(Sender: TField);
begin
  Check_FechaGT;
end;

procedure TfrmEgresos.ItemsGTNewRecord(DataSet: TDataSet);
begin
  try
    DiscriminandoGT := True;
    ItemsGtIdFactura.AsInteger := GastosIdFactura.AsInteger;
    if ItemsFCMaxIdItem.IsNull then
      ItemsGtIdItem.AsInteger := 1
    else
      ItemsGtIdItem.AsInteger := ItemsGtMaxIdItem.Value + 1;

    case GastosTipoIva.AsInteger of
      RI: ItemsGTIdAlcIva.AsInteger := 1;
      RNI, Ex, RMT, NC: ItemsGTIdAlcIva.AsInteger := 0;
    end;

    ItemsGTPrcCta.AsFloat := 0.0;
    ItemsGTMontoCta.AsCurrency := 0;
    ItemsGTMontoIva.AsCurrency := 0;
  finally
    DiscriminandoGT := False;
  end;
end;

procedure TfrmEgresos.gItemsGTCalcCellColors(Sender: TObject;
          Field: TField; State: TGridDrawState; Highlight: Boolean;
          AFont: TFont; ABrush: TBrush);
begin
  if Highlight then
  begin
    if State = [gdSelected, gdFocused] then
      AFont.Color := clYellow
    else
      AFont.Color := clBlack;
  end
end;

procedure TfrmEgresos.gItemsGTColEnter(Sender: TObject);
begin
  if (gItemsGT.SelectedField.FieldName = 'DetCuenta') then
  begin
    if Atras then
      gItemsGT.SelectedIndex := gItemsGT.SelectedIndex - 1
    else
      gItemsGT.SelectedIndex := gItemsGT.SelectedIndex + 1;
  end;
end;

procedure TfrmEgresos.gItemsGTColExit(Sender: TObject);
begin
  if gItemsGT.SelectedIndex >= 0 then
  begin
    if gItemsGT.Columns[gItemsGT.SelectedIndex].FieldName = 'IdCuenta' then
    begin
      if ItemsGTIdCuenta.IsNull then
      begin
        if Search_Cuenta(Vacio, Datos_Cta) > NoEncontrado then
        begin
          ItemsGT.Edit;
          ItemsGTIdCuenta.AsInteger := Datos_Cta.IdCuenta;
        end;
      end
    end;

    if gItemsGT.Columns[gItemsGT.SelectedIndex].FieldName = 'AlcIva' then
    begin
      if (ItemsGTAlcIva.AsInteger > 0) and
         ((GastosTipoFactura.AsInteger = NoImputable) or
          (GastosTipoIva.AsInteger in [RNI, RMT, EX, NC, NR])) then
        raise EUsuario.Create('Alícuota no aplicable.-');
    end;

    if gItemsGT.Columns[gItemsGT.SelectedIndex].FieldName = 'PrcCta' then
    begin
      if ItemsGTPrcCta.AsFloat < 0.0 then
        raise EUsuario.Create('El porcentaje de imputación debe ser mayor de cero.-');
      if ItemsGTPrcCta.AsFloat > 100.0 then
        raise EUsuario.Create('El porcentaje de imputación debe ser menor o igual Cien.-');
    end;
  end;
end;

procedure TfrmEgresos.gItemsGTEnter(Sender: TObject);
begin
  if Gastos.State in dsEditModes then
    Gastos.Post;
  Gastos.Edit;
end;

procedure TfrmEgresos.gItemsGTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Cual_Cta: Integer;
begin
  Cual_Cta := NoEncontrado;
  if Shift = [] then
  begin
    case Key of
      VK_RIGHT,
      VK_RETURN,
      VK_TAB : Atras := False;
      VK_LEFT: Atras := True;
      VK_F3  : Cual_Cta := Search_Cuenta(Vacio, Datos_Cta);
      VK_F5  : Calculadora(Handle);
      VK_ESCAPE: begin
        pnlFootGtos.Caption := Vacio;
        UpdateTotalsGastos;
        if (GastosTipoFactura.AsInteger in
            [FacC, DebC, CreC, RecC, NoImputable]) then
          btnPagosGT.SetFocus
        else
          edtNetoGT.SetFocus;
      end;
      else
        inherited KeyDown(Key, Shift);
    end;
    if Cual_Cta > NoEncontrado then
    begin
      ItemsGT.Edit;
      ItemsGTIdCuenta.AsInteger := Cual_Cta;
    end;
  end;
end;

procedure TfrmEgresos.gItemsGTKeyPress(Sender: TObject; var Key: Char);
begin
  if (gItemsGT.SelectedField.DataType in [ftFloat, ftCurrency]) and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

procedure TfrmEgresos.ItemsGTAfterDelete(DataSet: TDataSet);
begin
  UpdateTotalsGastos;
end;

procedure TfrmEgresos.ItemsGTAfterPost(DataSet: TDataSet);
begin
  UpdateTotalsGastos
end;

procedure TfrmEgresos.ItemsGTAlcIvaChange(Sender: TField);
begin
  try
    ItemsGTIdAlcIva.AsInteger := StrToInt(cbAlcIvaItmGT.Value);
  except
    ItemsGTIdAlcIva.AsInteger := 2;
  end;
end;

procedure TfrmEgresos.ItemsGTIdCuentaSetText(Sender: TField; const Text: String);
var
  C, Err: Integer;
  Searched: String;
begin
  Searched := Text;
  Val(Searched, C, Err);
  if Err = 0 then
  begin
    if Get_Cuenta(C, Datos_Cta) > NoEncontrado then
      ItemsGTIdCuenta.AsInteger := Datos_Cta.IdCuenta
    else begin
      if Search_Cuenta(Searched, Datos_Cta) > NoEncontrado then
        Sender.AsInteger := Datos_Cta.IdCuenta
      else
        raise Exception.Create('No se encontró la Cuenta');
    end;
  end;
end;

procedure TfrmEgresos.ItemsGTIdCuentaValidate(Sender: TField);
begin
  if Get_Cuenta(ItemsGTIdCuenta.AsInteger, Datos_Cta) > NoEncontrado then
    ItemsGTDetCuenta.AsString := Datos_Cta.DetalleCtro
  else
    raise EUsuario.Create('La Cuenta no existe')
end;

//------------------------------------------------------------------------------
//------------------------------PLAN DE CUENTAS---------------------------------
//------------------------------------------------------------------------------

(*
Centros
Select CENTRO, CODIGO, NIVEL, IDCUENTA, IDSUCURSAL,
       DESCRIPCION, CODIGOCONTABLE, DETALLECENTRO
From PlanCtas
Where Nivel = 0


Cuentas
Select CENTRO, CODIGO, NIVEL, IDCUENTA, IDSUCURSAL,
           DESCRIPCION, CODIGOCONTABLE, DETALLECENTRO
From PlanCtas
Where Nivel = 1 And Centro =:Codigo

*)

procedure TfrmEgresos.btnImprimirPCClick(Sender: TObject);
begin
  try
    qCuentas.DisableControls;
    lblTitPlanCtas.Caption := OwnerName + ' Plan de Cuentas de Gastos ';
    rpPlanCtas.Print;
  finally
    qCuentas.EnableControls;
  end;
end;

procedure TfrmEgresos.cbSucurCentrosPCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmEgresos.qCuentasAfterInsert(DataSet: TDataSet);
begin
  edtDescripcionCta.SetFocus;
end;

procedure TfrmEgresos.qCuentasAfterPost(DataSet: TDataSet);
begin
  if not dmGestion.trGestion.InTransaction then
    dmGestion.trGestion.StartTransaction;
  try
    dmGestion.trGestion.Commit;
  except
    dmGestion.trGestion.Rollback;
    raise;
  end;
  qCentros.Open;
  qCuentas.Open;
end;

procedure TfrmEgresos.qCuentasBeforeEdit(DataSet: TDataSet);
begin
  if qCentros.State in dsEditModes then
    qCentros.Post;
  edtDescripcionCta.SetFocus;
end;

procedure TfrmEgresos.qCuentasBeforePost(DataSet: TDataSet);
begin
  qCuentasDetalleCentro.AsString := Format('[%d.%d.%.2d]- %s [%s]',
                                    [qCuentasCentro.AsInteger,
                                     qCuentasNivel.AsInteger,
                                     qCuentasCodigo.AsInteger,
                                     qCuentasDescripcion.AsString,
                                     qCentrosDESCRIPCION.AsString]);
end;

procedure TfrmEgresos.Rearmar_PlanDeCuentas;
begin
  try // Desactivar transacciones antes de ejecutar
    Screen.Cursor := crHourGlass;
    try
      if not qCentros.Transaction.InTransaction then
        qCentros.Transaction.StartTransaction;
      qCentros.Open;
      qCuentas.Open;
      qCentros.First;
      while not qCentros.Eof do
      begin
        qCuentas.First;
        while not qCuentas.Eof do
        begin
          qCuentas.Edit;
          qCuentasDETALLECENTRO.Clear;
          qCuentas.Post;
          qCuentas.Next;
        end;
        qCentros.Next;
      end;
      qCentros.Transaction.Commit;
    except
      on E:Exception do
      begin
        qCentros.Transaction.Rollback;
        raise EUsuario.Create(E.Message);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    ShowMessage('Finalizado rearmado plan de cuentas');
  end;
end;

procedure TfrmEgresos.Reparar_PlanDeCuentas;
var
  i,c,s: Integer;
begin
  with dmGestion do
  begin
    try
      Screen.Cursor := crHourGlass;
      i := 1;
      PlanCtas.Open;
      PlanCtas.First;
      While not PlanCtas.Eof do
      begin
        if PlanCtasNIVEL.AsInteger = 0 then
        begin
          c := PlanCtasCODIGO.AsInteger;
          s := PlanCtasIDSUCURSAL.AsInteger;
        end;
        if PlanCtasCENTRO.AsInteger = c then
        begin
          PlanCtas.Edit;
          PlanCtasIDSUCURSAL.AsInteger := s;
          PlanCtasDETALLECENTRO.AsString := Format('[%d.%d.%.2d] > %s', [PlanCtasCentro.AsInteger, PlanCtasNivel.AsInteger, PlanCtasCodigo.AsInteger, PlanCtasDescripcion.AsString]);
          PlanCtas.Post;
        end;
        PlanCtas.Edit;
        PlanCtasIDCUENTA.AsInteger := i;
        PlanCtas.Post;
        Inc(i);
        PlanCtas.Next;
      end;
    finally
      Screen.Cursor := crDefault;
      ShowMessage('Finalizado rearmado plan de cuentas');
    end;
  end;
end;

procedure TfrmEgresos.pnlCtaDblClick(Sender: TObject);
begin
  if Tarea = 0 then
  begin
    //Rearmar_PlanDeCuentas;
    Reparar_PlanDeCuentas;
  end;
end;

procedure TfrmEgresos.qCuentasNewRecord(DataSet: TDataSet);
var
  q : TMDOQuery;
begin
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.dbGestion;
    q.Transaction := dmGestion.trGestion;
    q.SQL.Add('Select Max(Codigo) As Ultimo ');
    q.SQL.Add('From PlanCtas ');
    q.SQL.Add('Where Nivel = 1 And Centro = '+ IntToStr(qCentrosCodigo.AsInteger));
    q.Open;
    qCuentasCodigo.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
    qCuentasNivel.AsInteger := 1;
    qCuentasCentro.AsInteger := qCentrosCodigo.AsInteger;
  finally
    q.Free;
  end;

  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.dbGestion;
    q.Transaction := dmGestion.trGestion;
    q.SQL.Add('Select Max(IdCuenta) As Ultimo ');
    q.SQL.Add('From PlanCtas');
    q.Open;
    qCuentasIdCuenta.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
  finally
    q.Free;
  end;
  qCuentasIDSUCURSAL.AsInteger := qCentrosIdSucursal.AsInteger;
end;

procedure TfrmEgresos.qCentrosAfterInsert(DataSet: TDataSet);
begin
  edtDescripcionCentro.SetFocus
end;

procedure TfrmEgresos.qCentrosBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox(PChar('¿Borra el Centro "' + qCentrosDescripcion.AsString + '" y todas sus cuentas asociadas?'), 'Cuidado', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = ID_YES then
  begin
    qCuentas.DisableControls;
    try
      qCuentas.First;
      while not qCuentas.Eof do
        qCuentas.Delete;
    finally
      qCuentas.EnableControls;
    end;
  end
  else
    Abort;
end;

procedure TfrmEgresos.qCentrosBeforeEdit(DataSet: TDataSet);
begin
  if qCuentas.State in dsEditModes then
    qCuentas.Post;
  edtDescripcionCentro.SetFocus;
end;

procedure TfrmEgresos.qCentrosNewRecord(DataSet: TDataSet);
var
  q : TMDOQuery;
begin
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.dbGestion;
    q.Transaction := dmGestion.trProc;
    q.SQL.Add('Select Max(Codigo) As Ultimo ');
    q.SQL.Add('From PlanCtas Where Nivel = 0 ');
    q.Open;
    qCentrosNivel.AsInteger := 0;
    qCentrosCodigo.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
    qCentrosCentro.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
  finally
    q.Free;
  end;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.dbGestion;
    q.Transaction := dmGestion.trProc;
    q.SQL.Add('Select Max(IdCuenta) As Ultimo ');
    q.SQL.Add('From PlanCtas');
    q.Open;
    qCentrosIdCuenta.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
  finally
    q.Free;
  end;
end;

//------------------------------------------------------------------------------
//------------------------------INFORMES----------------------------------------
//------------------------------------------------------------------------------

procedure TfrmEgresos.btnCal_InformeClick(Sender: TObject);
begin
  Ver_MovCuentas;
end;

procedure TfrmEgresos.edtCualCtaExit(Sender: TObject);
begin
  if Trim(edtCualCta.Text) > Cero then
  begin
    try
      CualCuenta := StrToInt(edtCualCta.Text);
    except
      raise EUsuario.Create('Cuenta mal Ingresada')
    end;
    if CualCuenta = AllGto then
      lblCualCta.Caption := 'Todas las Cuentas'
    else begin
      if Get_Cuenta(CualCuenta, Datos_Cta) > AllGto then
        lblCualCta.Caption := Datos_Cta.DetalleCtro;
    end;
  end;
end;

procedure TfrmEgresos.edtCualCtaEnter(Sender: TObject);
begin
  CualCuenta := AllGto;
  edtCualCta.Text := '0';
  edtCualCta.SelectAll;
  lblCualCta.Caption := 'Todas las Cuentas'
end;

procedure TfrmEgresos.edtCualCtaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F3 then
    edtCualCta.Text := IntToStr(Search_Cuenta(Vacio, Datos_Cta));
end;

procedure TfrmEgresos.gMovGastosDblClick(Sender: TObject);
begin
  Get_FacC(qInfCuentasIdFactura.AsInteger,
           qInfCuentasIdSucursal.AsInteger,
           qInfCuentasIdPuntoVenta.AsInteger);
end;

procedure TfrmEgresos.Ver_MovCuentas;
Const
  MovCta = 'Select I.IdArticulo, I.PrecioNeto, I.PrecioTotal, '+
           '       I.MtoIva, I.Cantidad, I.AlicuotaIva, I.FechaF, '+
           '       F.IdFactura, F.IdSucursal, F.IdPuntoVenta, '+
           '       F.IdEmpresa, F.NroFactura, T.DescCorta, '+
           '       P.DetalleCentro as Cuenta, S.DetSuc, D.DetEmp, '+
           '       E.Nombre '+
           'From FacCom F '+
           'Join ItemsFC I '+
           '  on I.IdFactura = F.IdFactura And '+
           '     I.IdSucursal = F.IdSucursal And '+
           '     I.IdPuntoVenta = F.IdPuntoVenta '+
           'Join Proveedores E '+
           '  on E.IdProveedor = F.Proveedor '+
           'Join PlanCtas P '+
           '  on (P.Codigo = I.IdArticulo) And '+
           '     (P.Nivel = 1) '+
           'Join TiposComp T '+
           '  on T.IdComprobante = F.TipoFactura '+
           'Join DatosSis D '+
           '  on D.IdEmpresa = F.IdEmpresa '+
           'Join Sucursales S '+
           '  on S.IdSucursal = F.IdSucursal '+
           'Where (F.FechaF between :Desde and :Hasta) And '+
           '      (F.State = 0) and (F.TipoOP = 2) <Cond> '+
           'Order By I.IdArticulo ';

  TotCta = 'Select Sum(I.PrecioNeto) as TNeto, '+
           '       Sum(I.PrecioTotal) as Total, '+
           '       Sum(I.MtoIva) As TIva '+
           'From FacCom F '+
           'Join ItemsFC I '+
           '  on I.IdFactura = F.IdFactura And '+
           '     I.IdSucursal = F.IdSucursal And '+
           '     I.IdPuntoVenta = F.IdPuntoVenta '+
           'Join PlanCtas P '+
           '  on (P.Codigo = I.IdArticulo) And (P.Nivel = 1) '+
           'Where (F.FechaF between :Desde and :Hasta) and '+
           '      (F.TipoOP = 2) and (F.State = 0) <Cond> ';
var
  q: TMDOQuery;
  C,G,T: String;

(*
Select I.IdArticulo, I.PrecioNeto, I.PrecioTotal, I.MtoIva,
       I.Cantidad, I.AlicuotaIva, I.FechaF, F.IdFactura,
       F.IdSucursal, F.IdEmpresa, F.NroFactura, T.DescCorta,
       P.DetalleCentro as Cuenta, S.DetSuc, D.DetEmp, E.Nombre
From FacCom F
Join ItemsFC I
  on I.IdFactura = F.IdFactura And I.IdSucursal = F.IdSucursal
Join Proveedores E
  on E.IdProveedor = F.Proveedor
Join PlanCtas P
  on P.IdCuenta = I.IdArticulo
Join TiposComp T
  on T.IdComprobante = F.TipoFactura
Left Outer Join DatosSis D
  on D.IdEmpresa = F.IdEmpresa
Join Sucursales S
  on S.IdSucursal = F.IdSucursal
Where (F.FechaF between :Desde and :Hasta) and
      (F.State = 0) and (F.TipoOP = 2) and (I.IdArticulo = 8)
Order By I.IdArticulo
*)

begin
  gMovGastos.Visible := False;
  if (edtDesdeIC.Date > edtHastaIC.Date) then
  begin
    edtCualCta.SetFocus;
    raise EUsuario.Create('Periodo mal Ingresado');
  end;

  try
    Screen.cursor := crHourGlass;
    TotalGastos := 0;
    TotalNeto := 0;
    TotalIva := 0;
    qInfCuentas.Close;
    qInfCuentas.SQL.Clear;
    C := Vacio;
    T := Vacio;
    G := Vacio;

    if (CualCuenta > AllGto) then
      C := ' and (I.IdArticulo = '+IntToStr(CualCuenta)+')';

    if GProv > 0 then
    begin
      if Trim(C) > Vacio then
        C := C + ' and (F.Proveedor = '+IntToStr(GProv)+')'
      else
        C := ' and (F.Proveedor = '+IntToStr(GProv)+')';
    end;
    G := StringReplace(MovCta, '<Cond>', C, [rfReplaceAll]);
    T := StringReplace(TotCta, '<Cond>', C, [rfReplaceAll]);

    qInfCuentas.SQL.Text := G;
    qInfCuentas.ParamByName('Desde').AsDate := edtDesdeIC.Date;
    qInfCuentas.ParamByName('Hasta').AsDate := edtHastaIC.Date;
    qInfCuentas.Open;
    if not qInfCuentas.IsEmpty then
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := qInfCuentas.Database;
        q.Transaction := qInfCuentas.Transaction;
        q.SQL.Text := T;
        q.ParamByName('Desde').AsDate := edtDesdeIC.Date;
        q.ParamByName('Hasta').AsDate := edtHastaIC.Date;
        q.Open;
        TotalGastos := q.FieldByName('Total').AsCurrency;
        TotalNeto := q.FieldByName('TNeto').AsCurrency;
        TotalIva := q.FieldByName('TIva').AsCurrency;
        q.Close;
      finally
        q.Free;
      end;
      qInfCuentas.First;
      gMovGastos.GroupFieldName := 'NOMBRE';
      gMovGastos.Visible := True;
      btnExp_Informe.Enabled := True;
      btnImp_Informe.Enabled := True;
    end;
  finally
    gMovGastos.ColumnByName('PrecioNeto').FooterValue := Format('%10.2m',[TotalNeto]);
    gMovGastos.ColumnByName('MtoIva').FooterValue := Format('%10.2m',[TotalIva]);
    gMovGastos.ColumnByName('PrecioTotal').FooterValue:= Format('%10.2m',[TotalGastos]);
    gMovGastos.RefreshDisplay;
    Screen.cursor := crDefault;
  end;
end;

procedure TfrmEgresos.gMovGastosUpdateFooter(Sender: TObject);
begin
  gMovGastos.ColumnByName('PrecioNeto').FooterValue := Format('%10.2m',[TotalNeto]);
  gMovGastos.ColumnByName('MtoIva').FooterValue := Format('%10.2m',[TotalIva]);
  gMovGastos.ColumnByName('PrecioTotal').FooterValue:= Format('%10.2m',[TotalGastos]);
end;

procedure TfrmEgresos.btnExp_InformeClick(Sender: TObject);
begin
  if (qInfCuentas.Active) and (not qInfCuentas.IsEmpty) then
  begin
    dmGestion.IyC_Exp.DataSet := qInfCuentas;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmEgresos.btnImp_InformeClick(Sender: TObject);
begin
  try
    qInfCuentas.DisableControls;
    lblTitInfGto.Caption := Format(' %s  - Informe de Cuentas desde %s al %s ', [OwnerName, DateToStr(edtDesdeIC.Date), DateToStr(edtHastaIC.Date)]);
    rpInfCtas.Print;
  finally
    qInfCuentas.EnableControls;
  end;
end;

procedure TfrmEgresos.btnCalcTotClick(Sender: TObject);
(*
Const
  TCentro = 'Select C.Centro, C.Descripcion, Sum(I.PrecioNeto) as TNeto, '+
            '       Sum(I.PrecioTotal) as Total, Sum(I.MtoIva) As TIva '+
            'From ItemsFC I '+
            'Join FacCom F '+
            '  on F.IdFactura = I.IdFactura And F.IdSucursal = I.IdSucursal '+
            'Join PlanCtas P '+
            '  on P.IdCuenta = I.IdArticulo '+
            'Join PlanCtas C '+
            '  on C.Centro = P.Centro and C.Nivel = 0 '+
            'Where I.FechaF between :Desde and :Hasta and F.TipoOP = 2 '+
            'Group By C.Centro, C.Descripcion ';
*)

begin
  TTot := 0;
  TNet := 0;
  TIva := 0;
  btnExpTot.Enabled := False;
  try
    Screen.Cursor := crHourGlass;
    qInfCentros.Close;
    qInfCentros.ParamByName('Desde').AsDate := edtToDesde.Date;
    qInfCentros.ParamByName('Hasta').AsDate := edtToHasta.Date;
    qInfCentros.Open;

    if not qInfCentros.IsEmpty then
    begin
      qInfCentros.First;
      qInfCentros.DisableControls;
      while not qInfCentros.Eof do
      begin
        TTot := TTot + qInfCentrosTOTAL.AsCurrency;
        TNet := TNet + qInfCentrosTNETO.AsCurrency;
        TIva := TIva + qInfCentrosTIVA.AsCurrency;
        qInfCentros.Next;
      end;
      qInfCentros.EnableControls;
      qInfCentros.First;
      btnExpTot.Enabled := True;
    end;
  finally
    gCentros.ColumnByName('TNeto').FooterValue := Format('%10.2m',[TNet]);
    gCentros.ColumnByName('TIva').FooterValue := Format('%10.2m',[TIva]);
    gCentros.ColumnByName('Total').FooterValue := Format('%10.2m',[TTot]);
    gCentros.RefreshDisplay;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmEgresos.btnCalcularAIClick(Sender: TObject);
begin
  qMovAjt.Close;
  qMovAjt.ParamByName('Desde').AsDate := edtDesdeAI.Date;
  qMovAjt.ParamByName('Hasta').AsDate := edtHastaAI.Date;
  qMovAjt.Open;
end;

procedure TfrmEgresos.gCentrosUpdateFooter(Sender: TObject);
begin
  gCentros.ColumnByName('TNeto').FooterValue := Format('%10.2m',[TNet]);
  gCentros.ColumnByName('TIva').FooterValue := Format('%10.2m',[TIva]);
  gCentros.ColumnByName('Total').FooterValue := Format('%10.2m',[TTot]);
end;

procedure TfrmEgresos.gComprasDblClick(Sender: TObject);
begin
  Get_FacC(qCmpByProIdFactura.AsInteger,
           qCmpByProIdSucursal.AsInteger,
           qCmpByProIdPuntoVenta.AsInteger);
end;

procedure TfrmEgresos.btnExpTotClick(Sender: TObject);
begin
  if (qInfCentros.Active) and (not qInfCentros.IsEmpty) then
  begin
    dmGestion.IyC_Exp.DataSet := qInfCentros;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmEgresos.btnCalcNIClick(Sender: TObject);
Const
   VerNI = 'Select F.IdFactura, F.IdSucursal, F.IdPuntoVenta, F.FechaF, '+
           '       F.NroFactura, F.Total, P.Nombre, P.Documento, '+
           '       T.Documento as TDoc, E.DetEmp '+
           'From FacCom F '+
           'Join Proveedores P '+
           '  on P.IdProveedor = F.Proveedor '+
           'Join TipoDoc T '+
           '  on T.TipoDoc = P.TipoDoc '+
           'Left Outer Join DatosSis E '+
           '  on E.IdEmpresa = F.IdEmpresa '+
           'Where (FechaF between :Desde and :Hasta) And '+
           '      (TipoFactura = 18) '+
           'Order By F.FechaF ';
var
  q: TMDOQuery;
begin
  TNoImp := 0;
  btnExpNI.Enabled := False;
  if edtNIDesde.Date <= edtNIHasta.Date then
  begin
    qNoImp.Close;
    try
      Screen.cursor := crHourGlass;
      qNoImp.ParamByName('Desde').AsDate := edtNIDesde.Date;
      qNoImp.ParamByName('Hasta').AsDate := edtNIHasta.Date;
      qNoImp.Open;
      if not qNoImp.IsEmpty then
      begin
        try
          q := TMDOQuery.Create(nil);
          q.Database := qNoImp.Database;
          q.Transaction := qNoImp.Transaction;
          q.SQL.Add('Select Sum(Total) as Total ');
          q.SQL.Add('From FacCom ');
          q.SQL.Add('Where (TipoFactura = 18) And ');
          q.SQL.Add('      (FechaF between :Desde and :Hasta) ');
          q.ParamByName('Desde').AsDate := edtNIDesde.Date;
          q.ParamByName('Hasta').AsDate := edtNIHasta.Date;
          q.Open;
          TNoImp := q.FieldByName('Total').AsCurrency;
          q.Close;
        finally
          q.Free;
        end;
        qNoImp.First;
        gNoImp.ColumnByName('Total').FooterValue := Format('%m',[TNoImp]);
        btnExpNI.Enabled := True;
      end;
    finally
      Screen.cursor := crDefault;
    end;
  end;
end;

procedure TfrmEgresos.gNoImpUpdateFooter(Sender: TObject);
begin
  gNoImp.ColumnByName('Total').FooterValue := Format('%m',[TNoImp]);
end;

procedure TfrmEgresos.gNoImpDblClick(Sender: TObject);
begin
  Get_FacC(qNoImpIdFactura.AsInteger,
           qNoImpIdSucursal.AsInteger,
           qNoImpIdPuntoVenta.AsInteger);
end;

procedure TfrmEgresos.pcInfGtosClose(Sender: TObject; var AllowClose: Boolean);
begin
  Close;
end;

procedure TfrmEgresos.pcInfGtosTabClick(Sender: TObject);
begin
  if pcInfGtos.ActivePage = tsOperGastos then
  begin
    lblCualCta.Caption := 'Todas';
    edtCualCta.Text := '0';
    edtCualCta.SetFocus;
    btnCal_Informe.Enabled := True;
    btnExp_Informe.Enabled := False;
    btnImp_Informe.Enabled := False;
    gMovGastos.Visible := False;
  end;

  if pcInfGtos.ActivePage = tsTotales then
  begin
    edtToDesde.SetFocus;
    btnExpTot.Enabled := False;
  end;
end;

procedure TfrmEgresos.btnCalcIClick(Sender: TObject);
begin
  btnExpI.Enabled := False;
  gEstadoDePagos.GroupFieldName := 'Nombre';
  TInforme := 0;
  TISaldo := 0;
  qInformeEP.Close;
  if edtEPDesde.Date <= edtEPHasta.Date then
  begin
    try
      Screen.cursor := crHourGlass;
      qInformeEP.ParamByName('Desde').AsDate := edtEPDesde.Date;
      qInformeEP.ParamByName('Hasta').AsDate := edtEPHasta.Date;
      qInformeEP.Open;
      if not qInformeEP.IsEmpty then
      begin
        try
          qInformeEP.DisableControls;
          qInformeEP.First;
          while not qInformeEP.Eof do
          begin
            TInforme:= TInforme + qInformeEPImporte.AsCurrency;
            TISaldo := TISaldo + qInformeEPSaldoMov.AsCurrency;
            qInformeEP.Next;
          end;
        finally
          qInformeEP.First;
          qInformeEP.EnableControls;
          gEstadoDePagos.ColumnByName('Importe').FooterValue  := Format('%m',[TInforme]);
          gEstadoDePagos.ColumnByName('SaldoMov').FooterValue := Format('%m',[TISaldo]);
        end;
        btnExpI.Enabled := True;
      end;
    finally
      Screen.cursor := crDefault;
    end;
  end;
end;

procedure TfrmEgresos.gEstadoDePagosUpdateFooter(Sender: TObject);
begin
  gEstadoDePagos.ColumnByName('Importe').FooterValue := Format('%m',[TInforme]);
  gEstadoDePagos.ColumnByName('SaldoMov').FooterValue := Format('%m',[TISaldo]);
end;

procedure TfrmEgresos.gEstadoDePagosDblClick(Sender: TObject);
begin
  if gEstadoDePagos.SelectedField.FieldName = 'NroFactura' then
  begin
    Get_FacC(qInformeEPIdFactura.AsInteger,
             qInformeEPIdSucursal.AsInteger,
             qInformeEPIdPuntoVenta.AsInteger);
  end;
  if gEstadoDePagos.SelectedField.FieldName = 'Comprobante' then
    Get_OP(qInformeEPIdOrdPago.AsInteger);
end;

procedure TfrmEgresos.btnExpIClick(Sender: TObject);
begin
  if (qInformeEP.Active) and (not qInformeEP.IsEmpty) then
  begin
    dmGestion.IyC_Exp.DataSet := qInformeEP;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmEgresos.btnExpNIClick(Sender: TObject);
begin
  if (qNoImp.Active) and (not qNoImp.IsEmpty) then
  begin
    dmGestion.IyC_Exp.DataSet := qNoImp;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmEgresos.gEstadoDePagosCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (Field = qInformeEPNroFactura) or (Field = qInformeEPComprobante) then
    ABrush.Color := gEstadoDePagos.TitleColor;
end;

procedure TfrmEgresos.btnGestBancosClick(Sender: TObject);
begin
  frmGestBco := TfrmGestBco.Create(Self);
  frmGestBco.ShowModal;
end;

//---------------------------------------- Ctas Ctes --------------------------

procedure TfrmEgresos.SaldosP(Hasta: TDate; Empr: Integer);
begin
  (* Chequo de diferencia de saldos
     ==============================
  Select Entidad, NroMovimiento, Fecha, Sum(Debe) - sum(Haber)
  From CCProv
  Where (IdEmpresa is Null) And (State = 0)
  *)
  try
    SaldoCCP := 0;
    Screen.Cursor := crHourGlass;
    try
      qSaldos.Close;
      qSaldos.ParamByName('AHoy').AsDate := Hasta;
      qSaldos.ParamByName('IDEMP').AsInteger := Empr;
      qSaldos.Open;
      if not qSaldos.IsEmpty then
      begin
        qSaldos.Last;
        SaldoCCP := qSaldosSaldoA.AsCurrency;
        qSaldos.First;
      end;
    except
      on E:Exception do
      begin
        raise EUsuario.Create('Error: '+E.Message);
        qSaldos.Close;
        SaldoCCP := 0;
      end;
    end;
  finally
    gSaldos.RefreshDisplay;
    Screen.Cursor := crDefault;
    gSaldos.ColumnByName('Saldo').FooterValue := Format('%m',[SaldoCCP]);
  end;
end;

procedure TfrmEgresos.gSaldosUpdateFooter(Sender: TObject);
begin
  gSaldos.ColumnByName('Saldo').FooterValue := Format('%m',[SaldoCCP]);
end;

procedure TfrmEgresos.CuentaP;
begin
  try
    Screen.Cursor := crHourGlass;
    qCuentaP.Close;
    qCuentaP.ParamByName('Fecha').AsDate := DesdeCP;
    qCuentaP.ParamByName('Prove').AsInteger := CualCCP;
    qCuentaP.Prepare;
    qCuentaP.Open;

    if not qCuentaP.IsEmpty then
    begin
      if CCP.Active then
        CCP.EmptyDataSet
      else
        CCP.CreateDataSet;
      qSdoAntCCP.Close;
      qSdoAntCCP.ParamByName('Fecha').AsDate := DesdeCP;
      qSdoAntCCP.ParamByName('Prove').AsInteger := CualCCP;
      qSdoAntCCP.Open;
      SdoAntP := qSdoAntCCPSaldoP.AsCurrency;
      qCuentaP.First;
      try
        Screen.Cursor := crHourGlass;
        CCP.DisableControls;
        CCP.Append;
        CCPFecha.AsDateTime := DesdeCP;
        CCPIdComprobante.AsInteger := 0;
        CCPIdPuntoVenta.AsInteger := 0;
        CCPComprobante.AsString := ' Anterior';
        CCPDebe.AsCurrency := 0;
        CCPHaber.AsCurrency := 0;
        CCPSaldo.AsCurrency := SdoAntP;
        CCPTC.AsString := 'Saldo';
        CCPTipoMov.AsInteger:= 0;
        CCPNroMov.AsInteger := 0;
        CCPEstado.AsInteger := 0;
        CCPFechaOrg.AsDateTime := DesdeCP;
        CCPMontoOrg.AsCurrency := 0;
        CCPIdEmpresa.AsInteger := 0;
        CCP.Post;
        qCuentaP.First;
        while not qCuentaP.Eof do
        begin
          CCP.Append;
          CCPFecha.AsDateTime := qCuentaPFecha.AsDateTime;
          CCPIdComprobante.AsInteger := qCuentaPIdComprobante.AsInteger;
          CCPIdSucursal.AsInteger := qCuentaPIdSucursal.AsInteger;
          CCPIdPuntoVenta.AsInteger := qCuentaPIDPUNTOVENTA.AsInteger;
          CCPTC.AsString := qCuentaPTC.AsString;
          CCPComprobante.AsString := qCuentaPComprobante.AsString;

          if qCuentaPDebe.AsCurrency > 0 then
            CCPDebe.AsCurrency := qCuentaPDebe.AsCurrency;
          if qCuentaPHaber.AsCurrency > 0 then
            CCPHaber.AsCurrency := qCuentaPHaber.AsCurrency;
          CCPPagoACta.AsCurrency := qCuentaPPagoActa.AsCurrency;
          CCPSaldoMov.AsCurrency := qCuentaPSaldoMov.AsCurrency;

          SdoAntP := SdoAntP + (qCuentaPDebe.AsCurrency - qCuentaPHaber.AsCurrency);
          CCPSaldo.AsCurrency := SdoAntP;

          CCPTipoMov.Value := qCuentaPTComp.AsInteger;
          CCPNroMov.AsInteger := qCuentaPNroMovimiento.AsInteger;
          CCPEstado.AsInteger := qCuentaPEstado.AsInteger;
          CCPFechaOrg.AsDateTime := qCuentaPFechaOrg.AsDateTime;

          if qCuentaPTComp.AsInteger in [33,34,50,51,52] then
            CCPMontoOrg.AsCurrency := qCuentaPMONTOORGCP.AsCurrency
          else
            CCPMontoOrg.AsCurrency := qCuentaPMONTOORGFC.AsCurrency;

          CCPIdEmpresa.AsInteger := qCuentaPIDEMPRESA.AsInteger;
          CCPDetEmp.AsString := qCuentaPDetEmp.AsString;

          if qCuentaPEstado.AsInteger = ccPagada then
            CCPDetEst.AsString := 'Paga'
          else
            CCPDetEst.AsString := ' - ';
          CCP.Post;
          qCuentaP.Next;
        end;
      finally
        Screen.Cursor := crDefault;
        CCP.EnableControls;
        gMovCCP.SetFocus;
      end
    end
    else begin
      edtCualProv.SetFocus;
      raise EUsuario.Create('No tiene movimientos');
    end;
  finally
    Screen.Cursor := crDefault;
    Tipo_Operacion := 0;
  end;
end;

procedure TfrmEgresos.gSaldosDblClick(Sender: TObject);
begin
  DesdeCP := StrToDate('01/01/'+IntToStr(YearOf(Date)));
  CualCCP := qSaldosEntidad.AsInteger;
  if (CualCCP > 0) and
     (DesdeCP > 0) then
  begin
    edtDesdeCCP.Date := DesdeCP;
    edtCualProv.IntValue := CualCCP;
    if qSaldos.Locate(qSaldosEntidad.FieldName, CualCCP, []) then
      lblCualProv.Caption := qSaldosNombre.AsString;
    pcCCP.ActivePage := tsCuentas;
    pcCCP.ActivePage.Show;
    CuentaP;
  end;
end;

procedure TfrmEgresos.btnSaldosAFechaClick(Sender: TObject);
begin
  (*
   Select Entidad, IdEmpresa, Nombre, Saldo, SaldoA, DetEmp
   From PROVEEDORES_SALDOS('TODAY', 1) Where Entidad = 8
  *)
  SaldosP(edtFSaldo.Date, Id_Empresa);
end;

procedure TfrmEgresos.btnInformeSdoAFechaClick(Sender: TObject);
begin
  try
    SaldosP(edtFSaldo.Date, Id_Empresa);
    qSaldos.DisableControls;
    qSaldos.First;
    lblTituloIS1.Caption := OwnerName;
    lblTituloIS2.Caption := 'Informe de saldos de proveedores';
    rpInformeSaldos.Print;
  finally
    qSaldos.EnableControls;
  end;
end;

procedure TfrmEgresos.btnExportarSdoAFechaClick(Sender: TObject);
begin
  dmGestion.IyC_Exp.DataSet := gSaldos.DataSource.DataSet;
  dmGestion.IyC_Exp.Select;
end;

procedure TfrmEgresos.btnExpProvCmpClick(Sender: TObject);
begin
  if (qCmpByPro.Active) and (not qCmpByPro.IsEmpty) then
  begin
    try
      qCmpByPro.DisableControls;
      dmGestion.IyC_Exp.DataSet := qCmpByPro;
      dmGestion.IyC_Exp.Select;
    finally
      qCmpByPro.EnableControls;
    end;
  end;
end;

procedure TfrmEgresos.edtCualProvEnter(Sender: TObject);
begin
  lblCualProv.Caption := Cero;
  edtCualProv.SelectAll;
end;

procedure TfrmEgresos.edtCualProvExit(Sender: TObject);
begin
  try
    CualCCP := edtCualProv.IntValue;
  except
    CualCCP := 0;
  end;
  if CualCCP > 0 then
  begin
    if GetDatosEnt(CualCCP, IdBranch, 2, Datos_Ent) then
    begin
      lblCualProv.Caption := Datos_Ent.Nombre;
    end
    else begin
      CualCCP := 0;
      lblCualProv.Caption := '';
      edtCualProv.SetFocus;
    end;

    if Trim(edtDesdeCCP.Text) <= Vacio then
    begin
      DesdeCP := StrToDate('01/01/'+IntToStr(YearOf(Date)));
      edtDesdeCCP.Date := DesdeCP;
    end;
    Application.ProcessMessages;
  end;
end;

procedure TfrmEgresos.edtCualProvGEnter(Sender: TObject);
begin
  GProv := 0;
  lblCualPro.Caption := Vacio;
end;

procedure TfrmEgresos.edtCualProvGExit(Sender: TObject);
begin
  try
    GProv := edtCualProvG.IntValue;
  except
    GProv := 0;
  end;
  if GProv = 0 then
    lblCualPro.Caption := '<TODOS>'
  else begin
    if GetDatosEnt(GProv, IdBranch, 2, Datos_Ent) then
    begin
      lblCualPro.Caption := Datos_Ent.Nombre;
      edtCualProvG.IntValue := GProv;
    end;
  end;
end;

procedure TfrmEgresos.edtCualProvGKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  GProv := 0;
  case Key of
    VK_F3: begin
      GProv := Busca_Pro;
      if GetDatosEnt(GProv, IdBranch, 2, Datos_Ent) then
      begin
        lblCualPro.Caption := Datos_Ent.Nombre;
        edtCualProvG.IntValue := GProv;
      end;
    end;
    VK_ESCAPE: btnSalirEgresos.SetFocus;
  end;
end;

procedure TfrmEgresos.edtCualProvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F3: begin
      CualPro := Busca_Pro;
      if CualPro > NoEncontrado then
      begin
        if GetDatosEnt(CualPro, IdBranch, 2, Datos_Ent) then
        begin
          edtCualProv.IntValue := CualPro;
          lblCualProv.Caption := Datos_Ent.Nombre;
          CualCCP := CualPro;
        end
        else begin
          lblCualProv.Caption := '';
          CualPro := 0;
          CualCCP := 0;
          edtCualProv.IntValue := 0;
          edtCualProv.SetFocus;
        end;
      end;
      edtCualProv.SetFocus;
    end;
    VK_ESCAPE: begin
      pcCCP.ActivePage := tsSaldos;
      //tsSaldos.Show;
    end;
  end;
end;

procedure TfrmEgresos.edtDesdeCCPExit(Sender: TObject);
begin
  if (Trim(edtDesdeCCP.Text) <> Cero) and
     (edtDesdeCCP.Date > Ano_2000) then
  begin
    DesdeCP := edtDesdeCCP.Date;
    if (CualCCP > 0) and
       (DesdeCP > Ano_2000) then
      CuentaP;
  end
  else begin
    edtDesdeCCP.SetFocus;
  end;
end;

procedure TfrmEgresos.btnInformeCCPClick(Sender: TObject);
begin
  if not CCP.IsEmpty then
  begin
    lblTituloCCP1.Caption := 'Estado de Cuenta del Proveedor: ' + lblCualProv.Caption;
    lblTituloCCP2.Caption := 'Movimientos desde el '+DateToStr(DesdeCP);
    rpEstadoP.Print;
  end;
end;

procedure TfrmEgresos.gMovCCPCalcCellColors(Sender: TObject; Field: TField;
   State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if Field = CCPSaldo then
  begin
    ABrush.Color := clWhite;
    if Highlight then
    begin
      AFont.Color := clRed;
      AFont.Style := [fsBold];
    end
    else
      AFont.Color := clBlack;
  end
  else begin
    if not Highlight then
    begin
      if CCPEstado.AsInteger = ccPagada then
      begin
        Case CCPTipoMov.AsInteger of
          OrdenDePago: ABrush.Color := $00D7D7FF;
          Anticipos  : ABrush.Color := $00D7D7DD;
          Descuento_B,
          Descuento_D: ABrush.Color := clMoneyGreen;
          else ABrush.Color := $00E3E1C6;
        end;
      end;
      // pendientes
      if CCPEstado.AsInteger = ccPendiente then
      begin
        if CCPTipoMov.AsInteger in [Descuento_B, Descuento_D] then
          ABrush.Color := clMoneyGreen;
        ABrush.Color := $0085E6FE;
      end;
    end;
  end;
end;

procedure TfrmEgresos.gMovCCPDblClick(Sender: TObject);
var
  MovAct: Integer;
begin
  try
    MovAct := CCPNroMov.AsInteger;
    if CCPIdComprobante.AsInteger > 0 then
    begin
      Case CCPTipoMov.AsInteger of
        FacA, FacB,
        FacC, CreA,
        CreB, CreC,
        CreditoAjuste,
        DebitoAjuste,
        DebA, DebB, DebC,
        NoImputable: Get_FacC(CCPIdComprobante.AsInteger,
                              CCPIdSucursal.AsInteger,
                              CCPIdPuntoVenta.AsInteger);

        OrdenDePago,
        Anticipos  : Get_OP(CCPIdComprobante.AsInteger);
        Descuento_D: Get_FacS(CCPTipoMov.AsInteger,
                              CCPIdComprobante.AsInteger,
                              CCPIdSucursal.AsInteger,
                              CCPIdPuntoVenta.AsInteger);
      end;
      CuentaP;
    end
    else begin
      if CCPTipoMov.AsInteger = Descuento_B then
        Get_MovCCP(CCPNroMov.AsInteger)
    end;
  finally
    CuentaP;
    if MovAct > 0 then
      CCP.Locate(CCPNroMov.FieldName, MovAct, []);
  end;
end;

procedure TfrmEgresos.ModificarCCPClick(Sender: TObject);
begin
  if not Check_Seg(Nivel_Mod, 'CC Prov', AutorDto) then
    raise EUsuario.Create('No esta habilitado para esta función');
  Get_MovCCP(CCPNroMov.AsInteger);
  CuentaP;
end;

procedure TfrmEgresos.ExportarCCPClick(Sender: TObject);
begin
  if not CCP.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := gMovCCP.DataSource.DataSet;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmEgresos.btnExportarAIClick(Sender: TObject);
begin
  if not qMovAjt.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qMovAjt;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmEgresos.btnExportarAntClick(Sender: TObject);
begin
  if not qAnticiposCCP.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qAnticiposCCP;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmEgresos.btnExportarCCPClick(Sender: TObject);
begin
  if not CCP.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := gMovCCP.DataSource.DataSet;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmEgresos.btnDescuentosClick(Sender: TObject);
begin
  Tipo_Operacion := Descuento_B;
  edtTotalOP.Value := 0;
  edtFecOrdPago.Date := Date;
  gbOrdenDePagos.Caption := ' Descuentos ';
  gbOrdenDePagos.Color := $00CEDEFF;
  gbOrdenDePagos.Visible := True;
  edtTotalOP.ReadOnly := False;
  cbPagoEmp.SetFocus;
end;

procedure TfrmEgresos.btnPagosCCPClick(Sender: TObject);
Const
  PMP = 'Select C.NroMovimiento, C.IdComprobante, C.IdSucursal, C.IdPuntoVenta, '+
        '       C.Entidad, C.TComp, C.Fecha, C.Comprobante, C.Debe, C.PagoACta, '+
        '       C.SaldoMov, C.Estado, C.ImpNeto,  C.MontoRetI, C.IdEmpresa, '+
        '       C.MontoRetG, C.MontoRetB, T.DescCorta as DetComp, D.DetEmp '+
        'From CCProv C '+
        'Join TiposComp T '+
        '  on T.IdComprobante = C.TComp '+
        'Join DatosSis D '+
        '  on D.IdEmpresa = C.IdEmpresa '+
        'Where (C.Estado = 1) And '+
        '      (C.SaldoMov > 0) And  '+
        '      (C.TComp in (1, 2, 3, 6, 7, 8, 11, 12, 13, 18, 31, 32, 33, 34, 47, 51, 52, 53, 54, 55)) And '+
        '      (C.Entidad =:IdProveedor) And '+
        '      (C.State = 0) '+
        'Order By C.Fecha ';

begin
  Id_Empresa := NoEncontrado;
  Ver_OP := True;
  SumaFT := 0;
  SumaNC := 0;
  CantP := 0;
  MontoOP := 0;
  MontoNT := 0;
  SaldoNT := 0;
  DefinitivoOP := 0;
  edtTotalOP.Value := 0;
  edtTotalRetGan.Value := 0;
  edtTotalRetIB.Value := 0;
  edtTotalRetIVA.Value := 0;
  edtMtoRetSS.Value := 0;
  IdPreOp := 0;

  cbPreOPs.Items.Clear;
  qPreOP.Close;
  qPreOP.ParamByName('P').AsInteger := CualCCP;
  qPreOP.Open;
  if qPreOP.IsEmpty then
    pnlPreOPs.Enabled := False
  else begin
    pnlPreOPs.Enabled := True;
    qPreOP.First;
    while not qPreOP.Eof do
    begin
      cbPreOPs.AddObject(Format('POPº %d Cant OP %d Total %m ', [qPreOPIDNROPREOP.AsInteger, qPreOPCANPO.AsInteger, qPreOPTOTPO.AsCurrency]), TObject(qPreOPIDNROPREOP.AsInteger));
      qPreOP.Next;
    end;
    qPreOP.First;
  end;

  cbPreOPs.ItemIndex := 0;
  qPagoMultipleProv.Close;
  qPagoMultipleProv.SQL.Clear;
  qPagoMultipleProv.SQL.Text := PMP;
  qPagoMultipleProv.ParamByName('IdProveedor').AsInteger := CualCCP;
  qPagoMultipleProv.Open;

  if qPagoMultipleProv.IsEmpty then
  begin
    qPagoMultipleProv.Close;
    ShowMessage('No hay movimientos a Cancelar.-');
    gbPagoMultipleProv.Visible := False;
  end
  else begin
    gbPagoMultipleProv.Visible := True;
    gPagoMultipleProv.SelectedList.Clear;
    gPagoMultipleProv.RefreshDisplay;
    CuentaP;
    SaldosP(Date, NoEncontrado);
  end;
end;

procedure TfrmEgresos.cbPagoEmpChange(Sender: TObject);
begin
  try
    Id_Empresa := Integer(cbPagoEmp.Items.Objects[cbPagoEmp.ItemIndex]);
  except
    Id_Empresa := 0;
  end;
end;

procedure TfrmEgresos.cbPagoEmpExit(Sender: TObject);
begin
  try
    Id_Empresa := Integer(cbPagoEmp.Items.Objects[cbPagoEmp.ItemIndex]);
  except
    Id_Empresa := 0;
  end;
end;

procedure TfrmEgresos.cbPreOPsChange(Sender: TObject);
begin
  try
    IdPreOp := Integer(cbPreOPs.Items.Objects[cbPreOPs.ItemIndex]);
  except
    IdPreOp := 0;
  end;
end;

procedure TfrmEgresos.cbPreOPsExit(Sender: TObject);
begin
  try
    IdPreOp := Integer(cbPreOPs.Items.Objects[cbPreOPs.ItemIndex]);
  except
    IdPreOp := 0;
  end;
end;

procedure TfrmEgresos.btnBuscarPreOPClick(Sender: TObject);
Const
  PMP = 'Select C.NroMovimiento, C.IdComprobante, C.IdSucursal, C.IdEmpresa, '+
        '       C.Entidad, C.TComp, C.Fecha, C.Comprobante, C.Debe, '+
        '       C.PagoACta, C.SaldoMov, C.Estado, C.ImpNeto, C.MontoRetI, '+
        '       C.MontoRetG, C.MontoRetB, T.DescCorta as DetComp, D.DetEmp '+
        'From CCProv C '+
        'Join TiposComp T '+
        '  on T.IdComprobante = C.TComp '+
        'Join DatosSis D '+
        '  on D.IdEmpresa = C.IdEmpresa '+
        'Where (C.Estado = 1) And '+
        '      (C.SaldoMov > 0) And  '+
        '      (C.TComp in (1, 2, 3, 6, 7, 8, 11, 12, 13, 18, 31, 32, 33, 34, 47, 51, 52, 53, 54, 55)) And '+
        '      (C.Entidad = :IdProveedor) <Cond> '+
        'Order By C.Fecha ';
begin
  qPagoMultipleProv.Close;
  qPagoMultipleProv.SQL.Clear;
  qPagoMultipleProv.SQL.Text := StringReplace(PMP, '<Cond>', ' and (IDNROPREOP = '+IntToStr(IdPreOp)+')', [rfReplaceAll]);
  qPagoMultipleProv.ParamByName('IdProveedor').AsInteger := CualCCP;
  qPagoMultipleProv.Open;

  if qPagoMultipleProv.IsEmpty then
  begin
    qPagoMultipleProv.Close;
    ShowMessage('No hay movimientos en esa Pre Orden.-');
    gbPagoMultipleProv.Visible := False;
  end
  else begin
    gbPagoMultipleProv.Visible := True;
    gPagoMultipleProv.SelectedList.Clear;
    gPagoMultipleProv.RefreshDisplay;
    CuentaP;
//  SaldosP(Date, NoEncontrado);
  end;
end;

procedure TfrmEgresos.btnAnticiposCCPClick(Sender: TObject);
var
  q: TMDOQuery;
begin
  TotAnt := 0;
  btnExportarAnt.Enabled := False;
  qAnticiposCCP.Close;
  qAnticiposCCP.ParamByName('Desde').AsDate := edtDesdeAN.Date;
  qAnticiposCCP.ParamByName('Hasta').AsDate := edtHastaAN.Date;
  qAnticiposCCP.Open;
  if not qAnticiposCCP.IsEmpty then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmSaveFile.trSaveComp;
      q.SQL.Add('Select Sum(Haber) as TotAnt ');
      q.SQL.Add('From CCProv ');
      q.SQL.Add('Where (TComp = 34) And ');
      q.SQL.Add('      (Fecha between :Desde And :Hasta) And ');
      q.SQL.Add('      (State = 0) ');
      q.ParamByName('Desde').AsDate := edtDesdeAN.Date;
      q.ParamByName('Hasta').AsDate := edtHastaAN.Date;
      q.Open;
      TotAnt := q.FieldByName('TotAnt').AsCurrency;
      q.Close;
    finally
      q.Free;
    end;
    gAnticipos.ColumnByName('Haber').FooterValue := Format('%10.2m',[TotAnt]);
    btnExportarAnt.Enabled := True;
  end;
end;

procedure TfrmEgresos.btnAntiposCCPClick(Sender: TObject);
begin
  Ver_OP := True;
  Tipo_Operacion := Anticipos;
  MontoOP := 0;
  MontoNT := 0;
  SaldoNT := 0;
  DefinitivoOP := 0;
  edtTotalOP.Value := 0;
  edtTotalRetGan.Value := 0;
  edtTotalRetIB.Value := 0;
  edtTotalRetIVA.Value := 0;
  edtFecOrdPago.Date := Date;
  gbOrdenDePagos.Caption := ' Anticipos ';
  gbOrdenDePagos.Color := clSkyBlue;
  gbOrdenDePagos.Visible := True;
  edtTotalOP.ReadOnly := False;
  cbPagoEmp.SetFocus;
end;

procedure TfrmEgresos.btnSdoInicialClick(Sender: TObject);
begin
  Ver_OP := True;
  Tipo_Operacion := SaldoInicial;
  edtTotalOP.Value := 0;
  edtFecOrdPago.Date := Date;
  gbOrdenDePagos.Caption := ' Saldo Inicial ';
  gbOrdenDePagos.Color := clMoneyGreen;
  gbOrdenDePagos.Visible := True;
  edtTotalOP.ReadOnly := False;
  cbPagoEmp.SetFocus;
end;

procedure TfrmEgresos.btnAceptarOPClick(Sender: TObject);
begin
  if Id_Empresa <= 0 then
  begin
    cbPagoEmp.SetFocus;
    raise EUsuario.Create('Debe elegir una empresa.- ');
  end;
  DatosPago.IdEmpresa := Id_Empresa;
  DatosPago.IdPuntoVenta := IdSalesPoint;
  Cancelacion_CCP(DefinitivoOP, DatosPago);
end;

procedure TfrmEgresos.btnCancelarOPClick(Sender: TObject);
begin
  qPagoMultipleProv.Close;
  gbPagoMultipleProv.Visible := False;
  gbOrdenDePagos.Visible := False;
end;

procedure TfrmEgresos.btnPagarProClick(Sender: TObject);
begin
  dmGestion.Empresas.Refresh;
  Tipo_Operacion := OrdenDePago;
  if gPagoMultipleProv.SelectedList.Count = 0 then
    Exit;
  cbPagoEmp.ItemIndex := cbPagoEmp.Items.IndexOfObject(TObject(Id_Empresa));
  edtFecOrdPago.Date := Date;
  edtTotalOP.Value := MontoOP;
  gbOrdenDePagos.Caption := ' Ordenes ';
  gbOrdenDePagos.Color := clCream;
  gbOrdenDePagos.Visible := True;
  Calculo_Retenciones(Id_Empresa, Date, MontoOP);
  edtFecOrdPago.SetFocus;
end;

procedure TfrmEgresos.btnSalirPagoClick(Sender: TObject);
begin
  qPagoMultipleProv.Close;
  gbPagoMultipleProv.Visible := False;
  gbOrdenDePagos.Visible := False;
end;

procedure TfrmEgresos.Cancelacion_CCP(Paga: Currency; var DP: TDatosPagos);
begin
  try
    Case Tipo_Operacion of
      OrdenDePago: begin
        if Paga <= 0 then
        begin
          edtTotalOP.SetFocus;
          raise EUsuario.Create('Importe incorrecto');
        end;
        qPagoMultipleProv.Close;
        gbPagoMultipleProv.Visible := False;
        if DoPago(DP, False) in [apPago] then
        begin
          if Application.MessageBox('¿Confirma grabar Pagos de Cuenta Corriente?', 'Proveedores',MB_ICONQUESTION+MB_YESNO) = ID_YES then
            dmSaveFile.Grabar_PagosCuentaProv(DP, Ver_OP);
        end
        else
          ShowMessage('No se registro ningun pago.-');
      end;

      Anticipos: begin
        if Paga <= 0 then
        begin
          edtTotalOP.SetFocus;
          raise EUsuario.Create('Importe incorrecto');
        end;
        if DoPago(DatosPago, False) in [apPago] then
        begin
          if Application.MessageBox('¿Confirma grabar el Anticipo en Cuenta Corriente?', 'Proveedores',MB_ICONQUESTION+MB_YESNO) = ID_YES then
            dmSaveFile.Grabar_PagosCuentaProv(DatosPago, Ver_OP)
          else
            ShowMessage('No se registro ningún anticipo.-');
        end
        else
          ShowMessage('No se registro ningún anticipo.-');
      end;

      Descuento_B: begin
        if Paga <= 0 then
        begin
          edtTotalOP.SetFocus;
          raise EUsuario.Create('Importe incorrecto');
        end;
        if Application.MessageBox('¿Confirma grabar descuento por bonificación en Cuenta Corriente?', 'Proveedores',MB_ICONQUESTION+MB_YESNO) = ID_YES then
          dmSaveFile.Grabar_MovsCuentaProv(DP)
        else
          ShowMessage('No se registro ningún Descuento.-');
      end;

      SaldoInicial: begin
        if Paga <= 0 then
        begin
          edtTotalOP.SetFocus;
          raise EUsuario.Create('Importe incorrecto');
        end;
        if Application.MessageBox('¿Confirma grabar Saldo Inicial en Cuenta Corriente?', 'Proveedores',MB_ICONQUESTION+MB_YESNO) = ID_YES then
          dmSaveFile.Grabar_MovsCuentaProv(DP)
        else
          ShowMessage('No se registro ningún movimiento.-');
      end;
      else
        ShowMessage('ERROR: Operación no contemplada. No se registro ningún movimiento.-');
    end;
  finally
    gbOrdenDePagos.Visible := False;
    CuentaP;
    SaldosP(Date, NoEncontrado);
    gMovCCP.SetFocus;
  end;
end;

procedure TfrmEgresos.Calculo_Retenciones(IdEmp: Integer; Fecha: TDate; Monto: Currency);
var
  q: TMDOQuery;
  i, e: Integer;
  DifPag, NetoOP, M, Sdo_II,
  RetIOP, RetBOP, RetHOP, RetGOP,
  Min_RG, Min_RB, Min_RI, Min_RS: Currency;
  Corresponde_RG, Corresponde_RB,
  Corresponde_RI, Corresponde_RS: Boolean;
begin
  if (IdEmp <= 0) then
    raise EUsuario.Create('Empresa no asignada.-');
  if (Monto > 0) then
  begin
    SaldoNT:= 0;
    Sdo_II := 0;
    RetIOP := 0;
    RetGOP := 0;
    RetBOP := 0;
    RetHOP := 0;
    NetoOP := 0;
    Min_RG := 0;
    Min_RB := 0;
    Min_RI := 0;
    Min_RS := 0;
    M := 0;
    DifPag := 0;
    Corresponde_RG := False;
    Corresponde_RB := False;
    Corresponde_RI := False;
    Corresponde_RS := False;

    with dmGestion do
    begin
      if Empresas.Locate(EmpresasIDEMPRESA.FieldName, IdEmp, []) then
      begin
        Corresponde_RG := (EmpresasPRACT_RETG.AsInteger = Verdadero);
        Corresponde_RB := (EmpresasPRACT_RETB.AsInteger = Verdadero);
        Corresponde_RI := (EmpresasPRACT_RETI.AsInteger = Verdadero);
        Corresponde_RS := (EmpresasPRACT_RETS.AsInteger = Verdadero);
        Min_RG := EmpresasMINNOIMPGAN.AsCurrency;
        Min_RB := EmpresasMINNOIMPIBT.AsCurrency;
        Min_RI := EmpresasMINNOIMPIVA.AsCurrency;
        Min_RS := 0;
      end;
    end;

    if GetDatosEnt(CualCCP, IdBranch, 2, Datos_Ent) then
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := dmSaveFile.trSaveComp;
        q.SQL.Add('Select Sum(ImpNeto) as NetoOP, ');
        q.SQL.Add('       Sum(ImpNCom) as ImInOP, ');
        q.SQL.Add('       Sum(MontoRetI) as RetIOP, ');
        q.SQL.Add('       Sum(MontoRetG) as RetGOP, ');
        q.SQL.Add('       Sum(MontoRetB) as RetBOP, ');
        q.SQL.Add('       Sum(MontoRetH) as RetHOP ');
        q.SQL.Add('From CCProv ');
        q.SQL.Add('Where (TComp in (34, 50)) And ');
        q.SQL.Add('      (Entidad = :Prv) And ');
        q.SQL.Add('      (Extract(Month From FechaPago)=:Mes) And ');
        q.SQL.Add('      (Extract(Year From FechaPago) =:Ano) ');
        q.ParamByName('Prv').AsInteger := CualCCP;
        q.ParamByName('Mes').AsInteger := MonthOf(Fecha);
        q.ParamByName('Ano').AsInteger := YearOf(Fecha);
        q.Open;

        SaldoNT:= q.FieldByName('NetoOP').AsCurrency;
        Sdo_II := q.FieldByName('ImInOP').AsCurrency;
        RetIOP := q.FieldByName('RetIOP').AsCurrency;
        RetGOP := q.FieldByName('RetGOP').AsCurrency;
        RetBOP := q.FieldByName('RetBOP').AsCurrency;
        RetHOP := q.FieldByName('RetHOP').AsCurrency;
        q.Close;
      finally
        q.Free;
      end;

      try
        if Tipo_Operacion = Anticipos then
        begin
          if Datos_Ent.TipoIva in [RI, Ex] then
            MontoNT := Monto / 1.21
          else
            MontoNT := Monto;
        end;

        FillChar(DatosPago, SizeOf(TDatosPagos), 0);
        if RoundTo(Monto, -2) < RoundTo(MontoOP, -2) then
        begin
          DifPag  := 100 - ((Monto * 100) / MontoOP);
          MontoNT := MontoNT - ((MontoNT * DifPag) / 100);
        end;

        NetoOP := (SaldoNT + MontoNT);

        if dmSaveFile.CompOP.Active then
          dmSaveFile.CompOP.EmptyDataSet
        else
          dmSaveFile.CompOP.CreateDataSet;

        // Retenciones Ganancias
        if (Datos_Ent.NORETENCION_G) And (Corresponde_RG) And
           (Datos_Ent.VALIEDEZNORET_G <= edtFecOrdPago.Date) then
        begin
          lblMontoRtGan.Enabled := False;
          edtTotalRetGan.Enabled := False;
          MontoRG := 0;
          PrcRG := 0;
        end
        else begin
          if (Datos_Ent.PRCRETENCION_G > 0) And
             (Corresponde_RG) And
             (Datos_Ent.MONTORETENCION_G > 0) then
          begin
            M := NetoOP - Datos_Ent.MONTORETENCION_G;
            if (M > 0) and (M > Min_RG) then
            begin
              PrcRG := Datos_Ent.PRCRETENCION_G;
              MontoRG := ((M * Datos_Ent.PRCRETENCION_G) / 100) - RetGOP;
              lblMontoRtGan.Enabled := True;
              edtTotalRetGan.Enabled := True;
            end
            else begin
              lblMontoRtGan.Enabled := False;
              edtTotalRetGan.Enabled := False;
              MontoRG := 0;
              PrcRG := 0;
            end;
          end
          else begin
            lblMontoRtGan.Enabled := False;
            edtTotalRetGan.Enabled := False;
            MontoRG := 0;
            PrcRG := 0;
          end;
        end;
        edtTotalRetGan.Value := MontoRG;

        // Retenciones Iva
        if (Datos_Ent.NORETENCION_I) And
           (Corresponde_RI) And
           (Datos_Ent.VALIEDEZNORET_I <= edtFecOrdPago.Date) then
        begin
          lblMontoRtIVA.Enabled := False;
          edtTotalRetIVA.Enabled := False;
          MontoRI := 0;
          PrcRI := 0;
        end
        else begin
          if (Datos_Ent.PRCRETENCION_I > 0) And
             (Corresponde_RI) And
             (Datos_Ent.MONTORETENCION_I > 0) then
          begin
            M := NetoOP - Datos_Ent.MONTORETENCION_I;
            if (M > 0) and (M > Min_RI) then
            begin
              PrcRI := Datos_Ent.PRCRETENCION_I;
              MontoRI := ((M * Datos_Ent.PRCRETENCION_I) / 100) - RetIOP;
              lblMontoRtIVA.Enabled := True;
              edtTotalRetIVA.Enabled := True;
            end
            else begin
              lblMontoRtIVA.Enabled := False;
              edtTotalRetIVA.Enabled := False;
              MontoRI := 0;
              PrcRI := 0;
            end;
          end
          else begin
            lblMontoRtIVA.Enabled := False;
            edtTotalRetIVA.Enabled := False;
            MontoRI := 0;
            PrcRI := 0;
          end;
        end;
        edtTotalRetIVA.Value := MontoRI;

        // Retenciones Ing. Brutos
        if (Datos_Ent.MONTORETENCION_B = 0) or
           (Datos_Ent.PRCRETENCION_B1 <= 0) or
           (Datos_Ent.PRCRETENCION_B2 <= 0) And
           (Corresponde_RB) then
        begin
          lblMontoRtIB.Enabled := False;
          edtTotalRetIB.Enabled := False;
          MontoRB := 0;
          MontoRH := 0;
          PrcRB := 0;
          PrcRH := 0;
        end
        else begin
          if (Datos_Ent.PRCRETENCION_B1 > 0) And
             (Corresponde_RB) And
             (Datos_Ent.MONTORETENCION_B > 0) then
          begin
            M := NetoOP - Datos_Ent.MONTORETENCION_B;
            if (M > 0) and (M > Min_RB)  then
            begin
              PrcRB := Datos_Ent.PRCRETENCION_B1;
              PrcRH := Datos_Ent.PRCRETENCION_B2;
              MontoRB := ((NetoOP * Datos_Ent.PRCRETENCION_B1) / 100) - RetBOP;
              MontoRH := ((((NetoOP * Datos_Ent.PRCRETENCION_B1) / 100) * Datos_Ent.PRCRETENCION_B2) / 100) - RetHOP;
              lblMontoRtIB.Enabled := True;
              edtTotalRetIB.Enabled := True;
            end
            else begin
              lblMontoRtIB.Enabled := False;
              edtTotalRetIB.Enabled := False;
              MontoRB := 0;
              MontoRH := 0;
              PrcRB := 0;
              PrcRH := 0;
            end;
          end
          else begin
            lblMontoRtIB.Enabled := False;
            edtTotalRetIB.Enabled := False;
            MontoRB := 0;
            MontoRH := 0;
            PrcRB := 0;
            PrcRH := 0;
          end;
        end;
        edtTotalRetIB.Value := (MontoRB + MontoRH);

        // Retenciones Seg. Social
        MontoRS := 0;
        PrcRS := 0;
        if (Corresponde_RS) And
           (Datos_Ent.MONTORETENCION_S > 0) then
        begin
          lblMtoRetSS.Enabled := False;
          edtMtoRetSS.Enabled := False;
        end
        else begin
          lblMtoRetSS.Enabled := False;
          edtMtoRetSS.Enabled := False;
        end;
      finally
        DefinitivoOP := Monto - (MontoRI + MontoRG + MontoRB + MontoRH + MontoRS);
      end;

      Case Tipo_Operacion of
        OrdenDePago: begin
          try
            qPagoMultipleProv.DisableControls;
            qPagoMultipleProv.First;
            e := NoEncontrado;
            for i := 0 to gPagoMultipleProv.SelectedList.Count-1 do
            begin
              gPagoMultipleProv.DataSource.DataSet.GotoBookmark(gPagoMultipleProv.SelectedList.Items[i]);
              if qPagoMultipleProv.Locate(qPagoMultipleProvNroMovimiento.FieldName,
                 gPagoMultipleProv.DataSource.DataSet.FieldByName('NroMovimiento').AsInteger, []) then
              begin
                if e = NoEncontrado then
                  e := qPagoMultipleProvIDEMPRESA.AsInteger
                else begin
                  if e <> qPagoMultipleProvIDEMPRESA.AsInteger then
                    raise EUsuario.Create('ERROR: Esta cancelando comprobantes de Empresas diferentes.-');
                end;
                dmSaveFile.CompOP.Append;
                dmSaveFile.CompOPIdFactura.AsInteger := qPagoMultipleProvIdComprobante.AsInteger;
                dmSaveFile.CompOPIdSucursal.AsInteger := qPagoMultipleProvIdSucursal.AsInteger;
                dmSaveFile.CompOPIdPuntoVenta.AsInteger := qPagoMultipleProvIdPuntoVenta.AsInteger;
                dmSaveFile.CompOPNroMovCC.AsInteger := qPagoMultipleProvNroMovimiento.AsInteger;
                dmSaveFile.CompOPTipoMov.AsInteger := qPagoMultipleProvTComp.AsInteger;
                dmSaveFile.CompOPEntidad.AsInteger := qPagoMultipleProvEntidad.AsInteger;
                dmSaveFile.CompOPNroComp.AsString := qPagoMultipleProvComprobante.AsString;
                dmSaveFile.CompOPMontoOrg.AsCurrency := qPagoMultipleProvSaldoMov.AsCurrency;
                dmSaveFile.CompOPFechaOr.AsDateTime := qPagoMultipleProvFecha.AsDateTime;
                dmSaveFile.CompOPFechaPg.AsDateTime := edtFecOrdPago.Date;

                if qPagoMultipleProvTComp.AsInteger in [FacA, FacB, FacC, DebA,
                      DebB, DebC, DebitoAjuste, FacM, NoImputable, SaldoInicial] then
                begin
                  DatosPago.TipoOperacion := Pagos;
                  if Monto >= qPagoMultipleProvSaldoMov.AsCurrency then
                    dmSaveFile.CompOPImporte.AsCurrency := qPagoMultipleProvSaldoMov.AsCurrency
                  else
                    dmSaveFile.CompOPImporte.AsCurrency := Monto;
                  Monto := Monto - qPagoMultipleProvSaldoMov.AsCurrency;
                end;
                (*
                if qPagoMultipleProvTComp.AsInteger in [PresentacionTM, LiquidacionA, LiquidacionC] then
                begin
                  DatosPago.TipoOperacion := PreLiq;
                  if Monto >= qPagoMultipleProvSaldoMov.AsCurrency then
                    dmSaveFile.CompOPImporte.AsCurrency := qPagoMultipleProvSaldoMov.AsCurrency
                  else begin
                    dmSaveFile.CompOPImporte.AsCurrency := Monto;
                  end;
                  Monto := Monto + qPagoMultipleProvSaldoMov.AsCurrency;
                end;
                *)
                if qPagoMultipleProvTComp.AsInteger in [CreA, CreB, CreC, CreditoAjuste, Descuento_B, Descuento_D] then
                begin
                  DatosPago.TipoOperacion := Pagos;
                  if Monto >= qPagoMultipleProvSaldoMov.AsCurrency then
                    dmSaveFile.CompOPImporte.AsCurrency := qPagoMultipleProvSaldoMov.AsCurrency
                  else begin
                    dmSaveFile.CompOPImporte.AsCurrency := SumaNC;
                  end;
                  Monto := Monto + qPagoMultipleProvSaldoMov.AsCurrency;
                end;
                dmSaveFile.CompOPSaldoMov.AsCurrency := qPagoMultipleProvSaldoMov.AsCurrency - dmSaveFile.CompOPImporte.AsCurrency;
                dmSaveFile.CompOPSaldoNeto.AsCurrency := 0;
                dmSaveFile.CompOPSaldoImpInt.AsCurrency := 0;
                dmSaveFile.CompOPIdEmpresa.AsInteger := e;
                dmSaveFile.CompOP.Post;
              end;
            end;
          finally
            DatosPago.FechaOr := Date;
            DatosPago.IdEmpresa := e;
            DatosPago.IdPuntoVenta := IdSalesPoint;
            DatosPago.TipoComprobante := OrdenDePago;
            DatosPago.IdEntidad := CualCCP;
            DatosPago.NomEntidad := lblCualProv.Caption;
            DatosPago.NroOrdDePago := '0000-00000000';
            DatosPago.FechaOp := edtFecOrdPago.Date;
            DatosPago.Bonificacion := 0;
            DatosPago.ImpNeto := NetoOP;
            DatosPago.ImpNComp := 0;
            DatosPago.ImpRetIva := MontoRI;
            DatosPago.PrcRetIva := PrcRI;
            DatosPago.ImpRetGan := MontoRG;
            DatosPago.PrcRetGan := PrcRG;
            DatosPago.ImpRetIB1 := MontoRB;
            DatosPago.PrcRetIB1 := PrcRB;
            DatosPago.ImpRetIB2 := MontoRH;
            DatosPago.PrcRetIB2 := PrcRH;
            DatosPago.ImpRetSS  := MontoRS;
            DatosPago.PrcRetSS  := PrcRS;
            DatosPago.PagosReten:= MontoRI+MontoRG+MontoRB+MontoRH+MontoRS;
            DatosPago.TotalPagos:= DefinitivoOP;
            DatosPago.Total_Oper:= DatosPago.TotalPagos + DatosPago.PagosReten;
            DatosPago.CantOper := dmSaveFile.CompOP.RecordCount;
            qPagoMultipleProv.EnableControls;
          end;
        end;

        Anticipos: begin
          dmSaveFile.CompOP.Append;
          dmSaveFile.CompOPIdFactura.AsInteger := 0;
          dmSaveFile.CompOPIdSucursal.AsInteger := 0;
          dmSaveFile.CompOPIdPuntoVenta.AsInteger := 0;
          dmSaveFile.CompOPNroMovCC.AsInteger := 0;
          dmSaveFile.CompOPTipoMov.AsInteger := Anticipos;
          dmSaveFile.CompOPEntidad.AsInteger := CualCCP;
          dmSaveFile.CompOPMontoOrg.AsCurrency := 0;
          dmSaveFile.CompOPImporte.AsCurrency := Monto;
          dmSaveFile.CompOPSaldoMov.AsCurrency := Monto;
          dmSaveFile.CompOPFechaOr.AsDateTime := edtFecOrdPago.Date;
          dmSaveFile.CompOPFechaPg.AsDateTime := edtFecOrdPago.Date;
          dmSaveFile.CompOPSaldoNeto.AsCurrency := Monto;
          dmSaveFile.CompOPSaldoImpInt.AsCurrency := 0;
          dmSaveFile.CompOP.Post;

          DatosPago.FechaOr := Date;
          DatosPago.TipoOperacion := Pagos;
          DatosPago.TipoComprobante := Anticipos;
          DatosPago.IdEntidad := CualCCP;
          DatosPago.IdPuntoVenta := IdSalesPoint;
          DatosPago.NomEntidad := lblCualProv.Caption;
          DatosPago.FechaOp := edtFecOrdPago.Date;
          DatosPago.ImpNeto := NetoOP;
          DatosPago.ImpNComp := 0;
          DatosPago.ImpRetIva := MontoRI;
          DatosPago.PrcRetIva := PrcRI;
          DatosPago.ImpRetGan := MontoRG;
          DatosPago.PrcRetGan := PrcRG;
          DatosPago.ImpRetIB1 := MontoRB;
          DatosPago.PrcRetIB1 := PrcRB;
          DatosPago.ImpRetIB2 := MontoRH;
          DatosPago.PrcRetIB2 := PrcRH;
          DatosPago.ImpRetSS  := MontoRS;
          DatosPago.PrcRetSS  := PrcRS;
          DatosPago.PagosReten:= MontoRI+MontoRG+MontoRB+MontoRH+MontoRS;
          DatosPago.TotalPagos:= DefinitivoOP;
          DatosPago.Total_Oper:= DatosPago.TotalPagos + DatosPago.PagosReten;
          DatosPago.CantOper := 1;
        end;

        Descuento_B: begin
          dmSaveFile.CompOP.Append;
          dmSaveFile.CompOPIdFactura.AsInteger := 0;
          dmSaveFile.CompOPIdSucursal.AsInteger := 0;
          dmSaveFile.CompOPIdPuntoVenta.AsInteger := 0;
          dmSaveFile.CompOPNroMovCC.AsInteger := 0;
          dmSaveFile.CompOPTipoMov.AsInteger := Descuento_B;
          dmSaveFile.CompOPEntidad.AsInteger := CualCCP;
          dmSaveFile.CompOPMontoOrg.AsCurrency := 0;
          dmSaveFile.CompOPImporte.AsCurrency := Monto;
          dmSaveFile.CompOPSaldoMov.AsCurrency := Monto;
          dmSaveFile.CompOPFechaOr.AsDateTime := edtFecOrdPago.Date;
          dmSaveFile.CompOPFechaPg.AsDateTime := edtFecOrdPago.Date;
          dmSaveFile.CompOPSaldoNeto.AsCurrency := Monto;
          dmSaveFile.CompOPSaldoImpInt.AsCurrency := 0;
          dmSaveFile.CompOP.Post;

          DatosPago.IdSucursal := IdBranch;
          DatosPago.IdComprobante := 0;
          DatosPago.IdPuntoVenta := IdSalesPoint;
          DatosPago.FechaOr := edtFecOrdPago.Date;
          DatosPago.TipoOperacion := Pagos;
          DatosPago.TipoComprobante := Descuento_B;
          DatosPago.IdEntidad := CualCCP;
          DatosPago.NomEntidad := lblCualProv.Caption;
          DatosPago.FechaOp := edtFecOrdPago.Date;
          DatosPago.ImpRetIva := 0;
          DatosPago.PrcRetIva := 0;
          DatosPago.ImpRetGan := 0;
          DatosPago.PrcRetGan := 0;
          DatosPago.ImpRetIB1 := 0;
          DatosPago.PrcRetIB1 := 0;
          DatosPago.ImpRetIB2 := 0;
          DatosPago.PrcRetIB2 := 0;
          DatosPago.ImpRetSS  := 0;
          DatosPago.PrcRetSS  := 0;
          DatosPago.TotalPagos := DefinitivoOP;
          DatosPago.CantOper := 1;
        end;

        SaldoInicial: begin
          dmSaveFile.CompOP.Append;
          dmSaveFile.CompOPIdFactura.AsInteger := 0;
          dmSaveFile.CompOPIdSucursal.AsInteger := 0;
          dmSaveFile.CompOPIdPuntoVenta.AsInteger := 0;
          dmSaveFile.CompOPNroMovCC.AsInteger := 0;
          dmSaveFile.CompOPTipoMov.AsInteger := SaldoInicial;
          dmSaveFile.CompOPEntidad.AsInteger := CualCCP;
          dmSaveFile.CompOPMontoOrg.AsCurrency := 0;
          dmSaveFile.CompOPImporte.AsCurrency := Monto;
          dmSaveFile.CompOPSaldoMov.AsCurrency := Monto;
          dmSaveFile.CompOPFechaOr.AsDateTime := edtFecOrdPago.Date;
          dmSaveFile.CompOPFechaPg.AsDateTime := edtFecOrdPago.Date;
          dmSaveFile.CompOPSaldoNeto.AsCurrency := Monto;
          dmSaveFile.CompOPSaldoImpInt.AsCurrency := 0;
          dmSaveFile.CompOP.Post;

          DatosPago.IdSucursal := IdBranch;
          DatosPago.IdComprobante := 0;
          DatosPago.IdPuntoVenta := IdSalesPoint;
          DatosPago.FechaOr := edtFecOrdPago.Date;
          DatosPago.TipoOperacion := Pagos;
          DatosPago.TipoComprobante := SaldoInicial;
          DatosPago.IdEntidad := CualCCP;
          DatosPago.NomEntidad := lblCualProv.Caption;
          DatosPago.FechaOp := edtFecOrdPago.Date;
          DatosPago.ImpRetIva := 0;
          DatosPago.PrcRetIva := 0;
          DatosPago.ImpRetGan := 0;
          DatosPago.PrcRetGan := 0;
          DatosPago.ImpRetIB1 := 0;
          DatosPago.PrcRetIB1 := 0;
          DatosPago.ImpRetIB2 := 0;
          DatosPago.PrcRetIB2 := 0;
          DatosPago.ImpRetSS  := 0;
          DatosPago.PrcRetSS  := 0;
          DatosPago.TotalPagos := Monto;
          DatosPago.CantOper := 1;
        end;
      end;
    end;
  end;
end;

function TfrmEgresos.Retenciones_PreOP(Fecha: TDate; Monto: Currency): Currency;
var
  q: TMDOQuery;
  N, M, Sdo_NT,
  AntIOP, AntBOP, AntHOP, AntGOP,
  RetIOP, RetBOP, RetHOP, RetGOP: Currency;
begin
  Sdo_NT := 0;
  N := 0;
  M := 0;

  RetIOP := 0;
  RetBOP := 0;
  RetHOP := 0;
  RetGOP := 0;

  AntIOP := 0;
  AntBOP := 0;
  AntHOP := 0;
  AntGOP := 0;

  if GetDatosEnt(CualCCP, IdBranch, 2, Datos_Ent) then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmSaveFile.trSaveComp;
      q.SQL.Add('Select Sum(ImpNeto) as NetoOP, ');
      q.SQL.Add('       Sum(MontoRetI) as RetIOP, ');
      q.SQL.Add('       Sum(MontoRetG) as RetGOP, ');
      q.SQL.Add('       Sum(MontoRetB) as RetBOP, ');
      q.SQL.Add('       Sum(MontoRetH) as RetHOP ');
      q.SQL.Add('From CCProv ');
      q.SQL.Add('Where (TComp in (34, 50)) And ');
      q.SQL.Add('      (Entidad =:Prv) And ');
      q.SQL.Add('      (Extract(Month From FechaPago) =:Mes) And ');
      q.SQL.Add('      (Extract(Year From FechaPago) =:Ano) ');
      q.ParamByName('Prv').AsInteger := CualCCP;
      q.ParamByName('Mes').AsInteger := MonthOf(Fecha);
      q.ParamByName('Ano').AsInteger := YearOf(Fecha);
      q.Open;
      Sdo_NT := q.FieldByName('NetoOP').AsCurrency;
      AntIOP := q.FieldByName('RetIOP').AsCurrency;
      AntGOP := q.FieldByName('RetGOP').AsCurrency;
      AntBOP := q.FieldByName('RetBOP').AsCurrency;
      AntHOP := q.FieldByName('RetHOP').AsCurrency;
      q.Close;
    finally
      q.Free;
    end;

    N := (Sdo_NT + Monto);

    try // Retenciones Ganancias
      if (Datos_Ent.NORETENCION_G) And
         (Datos_Ent.VALIEDEZNORET_G <= edtFecOrdPago.Date) then
        RetGOP := 0
      else begin
        if (Datos_Ent.PRCRETENCION_G > 0) And
           (Datos_Ent.MONTORETENCION_G > 0) then
        begin
          M := N - Datos_Ent.MONTORETENCION_G;
          if M > 0 then
            RetGOP := ((M * Datos_Ent.PRCRETENCION_G) / 100) - AntGOP
          else
            RetGOP := 0;
        end
        else
          RetGOP := 0;
      end;
      // Retenciones Iva
      if (Datos_Ent.NORETENCION_I) And
         (Datos_Ent.VALIEDEZNORET_I <= edtFecOrdPago.Date) then
        RetIOP := 0
      else begin
        if (Datos_Ent.PRCRETENCION_I > 0) And
           (Datos_Ent.MONTORETENCION_I > 0) then
        begin
          M := N - Datos_Ent.MONTORETENCION_I;
          if M > 0 then
            RetIOP := ((M * Datos_Ent.PRCRETENCION_I) / 100) - AntIOP
          else
            RetIOP := 0;
        end
        else
          RetIOP := 0;
      end;

      // Retenciones Ing. Brutos
      if (Datos_Ent.MONTORETENCION_B = 0) or
         (Datos_Ent.PRCRETENCION_B1 <= 0) or
         (Datos_Ent.PRCRETENCION_B2 <= 0) then
      begin
        RetBOP := 0;
        RetHOP := 0;
      end
      else begin
        if (Datos_Ent.PRCRETENCION_B1 > 0) And
           (Datos_Ent.MONTORETENCION_B > 0) then
        begin
          M := N;// - Datos_Ent.MONTORETENCION_B;
          if M > 0 then
          begin
            RetBOP := ((M * Datos_Ent.PRCRETENCION_B1) / 100) - AntBOP;
            RetHOP := ((((M * Datos_Ent.PRCRETENCION_B1) / 100) * Datos_Ent.PRCRETENCION_B2) / 100) - AntHOP;
          end
          else begin
            RetBOP := 0;
            RetHOP := 0;
          end;
        end
        else begin
          RetBOP := 0;
          RetHOP := 0;
        end;
      end;
      // Retenciones Seg. Social
      // Falta hacer
    finally
      Result := (RetIOP + RetBOP + RetHOP + RetGOP);
    end;
  end;
end;

procedure TfrmEgresos.edtFecOrdPagoExit(Sender: TObject);
begin
  Calculo_Retenciones(Id_Empresa, edtFecOrdPago.Date, MontoOP);
end;

procedure TfrmEgresos.edtMtoRetSSEnter(Sender: TObject);
begin
  edtMtoRetSS.SelectAll;
end;

procedure TfrmEgresos.edtTotalOPEnter(Sender: TObject);
begin
  edtTotalOP.SelectAll;
end;

procedure TfrmEgresos.edtTotalOPExit(Sender: TObject);
begin
  if Tipo_Operacion = Anticipos then
  begin
    MontoOP := edtTotalOP.Value;
  end;
  Calculo_Retenciones(Id_Empresa, edtFecOrdPago.Date, edtTotalOP.Value);
end;

procedure TfrmEgresos.edtTotalOPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmEgresos.edtTotalRetGanEnter(Sender: TObject);
begin
  edtTotalRetGan.SelectAll;
end;

procedure TfrmEgresos.edtTotalRetIBEnter(Sender: TObject);
begin
  edtTotalRetIB.SelectAll;
end;

procedure TfrmEgresos.edtTotalRetIVAEnter(Sender: TObject);
begin
  edtTotalRetIva.SelectAll;
end;

procedure TfrmEgresos.gPagoMultipleProvMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
begin
  if Selecting then
  begin
    Inc(CantP);
    if Id_Empresa = NoEncontrado then
      Id_Empresa := qPagoMultipleProvIDEMPRESA.AsInteger
    else begin
      if Id_Empresa <> qPagoMultipleProvIDEMPRESA.AsInteger then
        raise EUsuario.Create('ERROR: Esta cancelando comprobantes de Empresas diferentes.-');
    end;

    Case qPagoMultipleProvTComp.AsInteger of
      FacA, FacB, FacC, DebA, DebB, DebC, FacM,
      DebitoAjuste, NoImputable, SaldoInicial,
      PresentacionTM, LiquidacionA, LiquidacionC:
      begin
        SumaFT := SumaFT  + qPagoMultipleProvSaldoMov.AsCurrency;
        MontoNT:= MontoNT + qPagoMultipleProvIMPNETO.AsCurrency;
      end;
      CreA, CreB, CreC, Anticipos,
      CreditoAjuste, Descuento_B,
      Descuento_D:
      begin
        SumaNC := SumaNC  + qPagoMultipleProvSaldoMov.AsCurrency;
        MontoNT:= MontoNT - qPagoMultipleProvIMPNETO.AsCurrency;
      end;
    end;
  end
  else begin
    Dec(CantP);
    Case qPagoMultipleProvTComp.AsInteger of
      FacA, FacB, FacC, DebA, DebB, DebC, FacM,
      DebitoAjuste, NoImputable, SaldoInicial:
      begin
        SumaFT := SumaFT  - qPagoMultipleProvSaldoMov.AsCurrency;
        MontoNT:= MontoNT - qPagoMultipleProvIMPNETO.AsCurrency;
      end;
      CreA, CreB, CreC, Anticipos,
      CreditoAjuste, Descuento_B, Descuento_D:
      begin
        SumaNC := SumaNC  - qPagoMultipleProvSaldoMov.AsCurrency;
        MontoNT:= MontoNT + qPagoMultipleProvIMPNETO.AsCurrency;
      end;
    end;

    if CantP = 0 then
      Id_Empresa := NoEncontrado;
  end;
  MontoOP := SumaFT - SumaNC;
  MontoRI := 0;
  MontoRG := 0;
  MontoRB := 0;
  pnlBtnPMCC.Caption := Format(' Cª %d  Neto %m  Total %m ',[CantP, MontoNT, MontoOP]);
  Application.ProcessMessages;
end;

//---------------------------------------- Ordenes ----------------------------
procedure TfrmEgresos.Open_OrdenesDePago(D, H: TDate);
begin
  with dmSaveFile do
  begin
    try
      Screen.Cursor := crSQLWait;
      qOrdenes.Close;
      qOrdenes.SelectSQL.Text := Ordenes +
                                 ' Where (O.FECHAOP between :D And :H) '+
                                 ' Order By O.FechaOP Desc ';
      qOrdenes.ParamByName('D').AsDate := D;
      qOrdenes.ParamByName('H').AsDate := H;
      qOrdenes.Open;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmEgresos.gOrdenesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if not Highlight then
  begin
    if dmSaveFile.qOrdenesEstado.AsInteger > 0 then
    begin // Borrada
      AFont.Style := AFont.Style + [fsStrikeOut];
      ABrush.Color := $005C5C2E;
    end;
  end;
end;

procedure TfrmEgresos.gOrdenesDblClick(Sender: TObject);
begin
  Get_OP(gOrdenes.DataSource.DataSet.FieldByName('IdOrden').AsInteger);
  Open_OrdenesDePago(edtDesdeOP.Date, edtHastaOP.Date);
end;

procedure TfrmEgresos.gItemsOPDblClick(Sender: TObject);
begin
  Get_FacC(dmSaveFile.qItemsOPIdFactura.AsInteger,
           dmSaveFile.qItemsOPIdSucursal.AsInteger,
           dmSaveFile.qItemsOPIdPuntoVenta.AsInteger);
end;

procedure TfrmEgresos.gItemsPgOPDblClick(Sender: TObject);
begin
  with dmSaveFile do
  begin
    if (qItemsPGTIPOPAGO.AsInteger = 3) and
       (qItemsPGIDMOVIMIENTO.AsInteger > 0) then
      Get_ModBco(qItemsPGIDMOVIMIENTO.AsInteger)
  end;
end;

procedure TfrmEgresos.btnVerOPsClick(Sender: TObject);
begin
  Open_OrdenesDePago(edtDesdeOP.Date, edtHastaOP.Date);
end;

procedure TfrmEgresos.btnExportarOPClick(Sender: TObject);
begin
  dmGestion.IyC_Exp.DataSet := gOrdenes.DataSource.DataSet;
  dmGestion.IyC_Exp.Select;
end;
//---------------------------------------- Ajustes ----------------------------
procedure TfrmEgresos.gMovAjtCalcCellColors(Sender: TObject; Field: TField;
          State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if qMovAjtTComp.AsInteger = Descuento_B then
    AFont.Color := clNavy;
  if (not Highlight) then
  begin
    if (qMovAjtEstado.AsInteger = ccPagada) then
      ABrush.Color := $00D7D7FF
  end
  else begin
    AFont.Color := clWhite;
    ABrush.Color := clNavy;
  end;
end;

procedure TfrmEgresos.gMovAjtDblClick(Sender: TObject);
begin
  if (qMovAjtTComp.AsInteger = Descuento_D) and
     (qMovAjtIdComprobante.AsInteger > 0) then
    Get_FacS(qMovAjtTComp.AsInteger,
             qMovAjtIdComprobante.AsInteger,
             qMovAjtIdSucursal.AsInteger,
             qMovAjtIdPuntoVenta.AsInteger)
  else begin
    if qMovAjtNroMovimiento.AsInteger > 0 then
    begin
      frmModCCP := TfrmModCCP.Create(Self);
      frmModCCP.NroMov := qMovAjtNroMovimiento.AsInteger;
      frmModCCP.ShowModal;
    end;
  end;
end;

procedure TfrmEgresos.RelacionNCClick(Sender: TObject);
begin
  qRelAjt.Close;
  qRelAjt.ParamByName('Prov').AsInteger := qMovAjtEntidad.AsInteger;
  qRelAjt.Open;
  if not qRelAjt.IsEmpty then
  begin
    gbRelNC.Visible := True;
    gRelMov.SetFocus;
  end
  else begin
    ShowMessage('el proveedor no tiene notas de creditos ingresadas.-')
  end;
end;

procedure TfrmEgresos.ExportarRelNCClick(Sender: TObject);
begin
  dmGestion.IyC_Exp.DataSet := gMovAjt.DataSource.DataSet;
  dmGestion.IyC_Exp.Select;
end;

procedure TfrmEgresos.btnCerrarRelNCClick(Sender: TObject);
begin
  qRelAjt.Close;
  gbRelNC.Visible := False;
end;

procedure TfrmEgresos.gViewFComDblClick(Sender: TObject);
begin
  Get_FacC(ViewFComIDFACTURA.AsInteger,
           ViewFComIDSUCURSAL.AsInteger,
           ViewFComIdPuntoVenta.AsInteger);
  Open_ViewFCom(StartOfTheMonth(Date), Date);
end;

procedure TfrmEgresos.gViewGtosDblClick(Sender: TObject);
begin
  Get_FacC(ViewGtosIDFACTURA.AsInteger,
           ViewGtosIDSUCURSAL.AsInteger,
           ViewGtosIDPUNTOVENTA.AsInteger);
  Open_ViewGtos(StartOfTheMonth(Date), Date);
end;

procedure TfrmEgresos.btnPreOPClick(Sender: TObject);
var
  i, u, e: Integer;
  q: TMDOQuery;
  r: Currency;
begin
  if gPagoMultipleProv.SelectedList.Count = 0 then
    Exit;
  r := 0.0;
  qPagoMultipleProv.DisableControls;
  qPagoMultipleProv.First;
  e := NoEncontrado;
  if PreOrdPag.Active then
    PreOrdPag.EmptyDataSet
  else
    PreOrdPag.CreateDataSet;

  for i := 0 to gPagoMultipleProv.SelectedList.Count-1 do
  begin
    gPagoMultipleProv.DataSource.DataSet.GotoBookmark(gPagoMultipleProv.SelectedList.Items[i]);
    if qPagoMultipleProv.Locate(qPagoMultipleProvNroMovimiento.FieldName,
       gPagoMultipleProv.DataSource.DataSet.FieldByName('NroMovimiento').AsInteger, []) then
    begin
      if e = NoEncontrado then
        e := qPagoMultipleProvIDEMPRESA.AsInteger
      else begin
        if e <> qPagoMultipleProvIDEMPRESA.AsInteger then
          raise EUsuario.Create('ERROR: Esta cancelando comprobantes de Empresas diferentes.-');
      end;
      PreOrdPag.Append;
      PreOrdPagDetComp.AsString := qPagoMultipleProvDetComp.AsString;
      PreOrdPagComprobante.AsString := qPagoMultipleProvComprobante.AsString;
      PreOrdPagFecha.AsDateTime := qPagoMultipleProvFecha.AsDateTime;
      PreOrdPagImporte.AsCurrency := qPagoMultipleProvSALDOMOV.AsCurrency;
      PreOrdPagNroMovimiento.AsInteger := qPagoMultipleProvNroMovimiento.AsInteger;
      PreOrdPagEntidad.AsInteger := qPagoMultipleProvEntidad.AsInteger;
      PreOrdPag.Post;
    end;
  end;

  if not PreOrdPag.IsEmpty then
  begin
    r := Retenciones_PreOP(Date, MontoNT);
    if r <> 0.000 then
    begin
      PreOrdPag.Append;
      PreOrdPagDetComp.AsString := 'Ret.';
      PreOrdPagComprobante.AsString := 'Impuestos';
      PreOrdPagFecha.AsDateTime := Date;
      PreOrdPagImporte.AsCurrency := -r;
      PreOrdPagNroMovimiento.AsInteger := 0;
      PreOrdPagEntidad.AsInteger := qPagoMultipleProvEntidad.AsInteger;
      PreOrdPag.Post;
    end;

    PreOrdPag.First;
    lblTituloPO1.Caption := OwnerName + ' Definición de Pago a Proveedores: Comprobantes para Liquidación ';
    lblTituloPO2.Caption := 'Proveedor: '+lblCualProv.Caption+' Fecha: '+DateToStr(Date);
    rpPreOrdPago.Print;

    u := 0;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmSaveFile.trSaveComp;
      q.SQL.Add('Select Max(IDNROPREOP) as Ultimo ');
      q.SQL.Add('From CCProv ');
      q.SQL.Add('Where not (IDNROPREOP is Null) ');
      q.Open;
      u := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;

    try
      if not dmSaveFile.trSaveComp.InTransaction then
        dmSaveFile.trSaveComp.StartTransaction;

      PreOrdPag.First; // marcar comprobantes con nro de pre op
      while not PreOrdPag.Eof do
      begin
        if (PreOrdPagNroMovimiento.AsInteger > 0) then
        begin
          try
            q := TMDOQuery.Create(nil);
            q.Database := dmGestion.dbGestion;
            q.Transaction := dmSaveFile.trSaveComp;
            q.SQL.Add('UpDate CCProv ');
            q.SQL.Add('Set IDNROPREOP = :u ');
            q.SQL.Add('Where NroMovimiento = :n ');
            q.ParamByName('u').AsInteger := u;
            q.ParamByName('n').AsInteger := PreOrdPagNroMovimiento.AsInteger;
            q.ExecSQL;
          finally
            q.Free;
          end;
        end;
        PreOrdPag.Next;
      end;
      dmSaveFile.trSaveComp.Commit;
    except
      dmSaveFile.trSaveComp.Rollback;
      raise;
    end;
  end;
  qPagoMultipleProv.Close;
  gbPagoMultipleProv.Visible := False;
end;

procedure TfrmEgresos.btnPrdPenProClick(Sender: TObject);
begin
  frmRemProv := TfrmRemProv.Create(Self);
  frmRemProv.ShowModal;
end;

procedure TfrmEgresos.btnPreciosProdClick(Sender: TObject);
begin
  frmChangePrice := TfrmChangePrice.Create(Self);
  frmChangePrice.ShowModal;
end;

end.
