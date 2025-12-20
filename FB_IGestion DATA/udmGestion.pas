unit udmGestion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, extctrls, uTools, ImgList, mxExport, Variants, ppDB, ppVar, ppDBPipe,
  ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, IniFiles, Registry, Math, MDOTable, MDOQuery, MDOCustomDataSet,
  MDODatabase, Provider, DBClient;

type
  TdmGestion = class(TDataModule)
    dbGestion: TMDODatabase;

    trGestion: TMDOTransaction;
    trProc: TMDOTransaction;
    trUpDateArt: TMDOTransaction;

    IyC_Exp: TmxDataSetExport;
    imgMain: TImageList;

    Areas: TMDOTable;
    AreasIDAREA: TIntegerField;
    AreasAREA: TMDOStringField;
    AreasFECHAMOD: TDateField;

    Grupos: TMDOTable;
    GruposIDAREA: TIntegerField;
    GruposIDGRUPO: TIntegerField;
    GruposGrupo: TStringField;
    GruposFECHAMOD: TDateField;

    SubGrupos: TMDOTable;
    SubGruposIDAREA: TIntegerField;
    SubGruposIDGRUPO: TIntegerField;
    SubGruposIdSubGrupo: TIntegerField;
    SubGruposSubGrupo: TStringField;
    SubGruposIdMarkUp: TIntegerField;
    SubGruposMAXDTOCDO: TMDOBCDField;
    SubGruposMAXRNDPRE: TMDOBCDField;
    SubGruposCOMISION1: TMDOBCDField;
    SubGruposCOMISION2: TMDOBCDField;
    SubGruposFECHAMOD: TDateField;

    tBancos: TMDOTable;
    tBancosIDBANCO: TIntegerField;
    tBancosBanco: TStringField;
    tBancosNroCta: TStringField;
    tBancosDirBanco: TStringField;
    tBancosTelBanco: TStringField;
    tBancosGerenteBco: TStringField;
    tBancosTelGteBco: TStringField;
    tBancosOficialCta: TStringField;
    tBancosTelOficialCta: TStringField;
    tBancosWebBco: TStringField;
    tBancosTOTALACUERDOS: TMDOBCDField;
    tBancosNROCHQDESDE: TIntegerField;
    tBancosNROCHQHASTA: TIntegerField;
    tBancosMODNAME: TMDOStringField;
    tBancosREPORTE: TBlobField;
    tBancosULTIMACONCILIACION: TIntegerField;
    tBancosIMPRESORA_ASIGNADA: TIntegerField;
    tBancosIDEMPRESA: TIntegerField;

    dspBancos: TDataSetProvider;
    dsBancos: TDataSource;
    Bancos: TClientDataSet;
    BancosIDBANCO: TIntegerField;
    BancosBanco: TStringField;
    BancosNroCta: TStringField;
    BancosDirBanco: TStringField;
    BancosTelBanco: TStringField;
    BancosGerenteBco: TStringField;
    BancosTelGteBco: TStringField;
    BancosOficialCta: TStringField;
    BancosTelOficialCta: TStringField;
    BancosWebBco: TStringField;
    BancosTOTALACUERDOS: TBCDField;
    BancosNROCHQDESDE: TIntegerField;
    BancosNROCHQHASTA: TIntegerField;
    BancosMODNAME: TStringField;
    BancosREPORTE: TBlobField;
    BancosCantChq: TIntegerField;
    BancosULTIMACONCILIACION: TIntegerField;
    BancosIMPRESORA_ASIGNADA: TIntegerField;
    BancosIDEMPRESA: TIntegerField;

    qTipoMovBco: TMDOQuery;
    qTipoMovBcoIDMOVBCO: TIntegerField;
    qTipoMovBcoTIPOMOVBCO: TMDOStringField;
    qTipoMovBcoSUMA_RESTA: TSmallintField;
    qTipoMovBcoCONTRAMOV: TIntegerField;

    dsTipoIva: TDataSource;
    tTipoIva: TMDOTable;
    tTipoIvaTipoIva: TSmallintField;
    tTipoIvaIvaCorto: TStringField;
    tTipoIvaIvaLargo: TStringField;
    tTipoIvaNroHasar: TSmallintField;
    tTipoIvaNroEpson: TStringField;

    dsAlicuotas: TDataSource;
    tAlicuotas: TMDOTable;
    tAlicuotasIdAlicuota: TIntegerField;
    tAlicuotasDescAlicuota: TStringField;
    tAlicuotasCOEFALICUOTA: TMDOBCDField;

    dsTipoDoc: TDataSource;
    tTipoDoc: TMDOTable;
    tTipoDocTipoDoc: TSmallintField;
    tTipoDocDocumento: TStringField;
    tTipoDocNroHasar: TSmallintField;
    tTipoDocNroEpson: TStringField;

    tPlanCtas: TMDOTable;
    tPlanCtasCENTRO: TIntegerField;
    tPlanCtasCODIGO: TIntegerField;
    tPlanCtasNIVEL: TSmallintField;
    tPlanCtasIDCUENTA: TIntegerField;
    tPlanCtasIDSUCURSAL: TIntegerField;
    tPlanCtasDESCRIPCION: TMDOStringField;
    tPlanCtasCODIGOCONTABLE: TMDOStringField;
    tPlanCtasDETALLECENTRO: TMDOStringField;

    dspPlanCtas: TDataSetProvider;
    PlanCtas: TClientDataSet;
    PlanCtasCENTRO: TIntegerField;
    PlanCtasCODIGO: TIntegerField;
    PlanCtasNIVEL: TSmallintField;
    PlanCtasIDCUENTA: TIntegerField;
    PlanCtasIDSUCURSAL: TIntegerField;
    PlanCtasDESCRIPCION: TStringField;
    PlanCtasCODIGOCONTABLE: TStringField;
    PlanCtasDETALLECENTRO: TStringField;

    dsIngBrutos: TDataSource;
    tIngBruto: TMDOTable;
    tIngBrutoIdIngBru: TIntegerField;
    tIngBrutoDetalleIB: TStringField;
    tIngBrutoCOEFIB: TMDOBCDField;

    dsTipoComp: TDataSource;
    tTipoComp: TMDOTable;
    tTipoCompIdComprobante: TIntegerField;
    tTipoCompDescripcion: TStringField;
    tTipoCompDescCorta: TStringField;
    tTipoCompIP1: TIntegerField;
    tTipoCompIP2: TIntegerField;
    tTipoCompIP3: TIntegerField;
    tTipoCompIP4: TIntegerField;
    tTipoCompIP5: TIntegerField;
    tTipoCompIP6: TIntegerField;
    tTipoCompIP7: TIntegerField;
    tTipoCompIP8: TIntegerField;
    tTipoCompIP9: TIntegerField;
    tTipoCompIP10: TIntegerField;

    dsCF: TDataSource;
    tCF: TMDOTable;
    tCFIDCONTROLADOR: TIntegerField;
    tCFNombreModelo: TStringField;
    tCFCodigoControlador: TIntegerField;

    dspCF: TDataSetProvider;
    CF: TClientDataSet;
    CFIDCONTROLADOR: TIntegerField;
    CFNombreModelo: TStringField;
    CFCodigoControlador: TIntegerField;

    dsFunciones: TDataSource;
    tFunciones: TMDOTable;
    tFuncionesIdFuncion: TIntegerField;
    tFuncionesFuncion: TStringField;

    qChkRepEmp: TMDOQuery;
    qChkRepEmpIdEntidad: TIntegerField;

    dsProvincias: TDataSource;
    tProvincias: TMDOTable;
    tProvinciasIdProvincia: TIntegerField;
    tProvinciasProvincia: TStringField;
    tProvinciasCodProvincia: TStringField;

    dspProvincias: TDataSetProvider;
    Provincias: TClientDataSet;
    ProvinciasProvincia: TStringField;
    ProvinciasIdProvincia: TIntegerField;
    ProvinciasCodProvincia: TStringField;

    dsAccesos: TDataSource;
    tMPAccesos: TMDOTable;
    tMPAccesosIDMENU: TIntegerField;
    tMPAccesosMenuText: TStringField;
    tMPAccesosAccesoStr: TStringField;
    tMPAccesosAcceso: TIntegerField;
    tMPAccesosNivel: TSmallintField;
    tMPAccesosTag: TIntegerField;

    dspMPAccesos: TDataSetProvider;
    MPAccesos: TClientDataSet;
    MPAccesosIDMENU: TIntegerField;
    MPAccesosMenuText: TStringField;
    MPAccesosAccesoStr: TStringField;
    MPAccesosAcceso: TIntegerField;
    MPAccesosNivel: TSmallintField;
    MPAccesosTag: TIntegerField;

    dsFVAccesos: TDataSource;
    tFVAccesos: TMDOTable;
    tFVAccesosIDMENU: TIntegerField;
    tFVAccesosMenuText: TStringField;
    tFVAccesosAccesoStr: TStringField;
    tFVAccesosAcceso: TIntegerField;
    tFVAccesosNivel: TSmallintField;
    tFVAccesosTag: TIntegerField;

    dspFVAccesos: TDataSetProvider;
    FVAccesos: TClientDataSet;
    FVAccesosIDMENU: TIntegerField;
    FVAccesosMenuText: TStringField;
    FVAccesosAccesoStr: TStringField;
    FVAccesosAcceso: TIntegerField;
    FVAccesosNivel: TSmallintField;
    FVAccesosTag: TIntegerField;

    tTipoMovBco: TMDOTable;
    tTipoMovBcoIDMOVBCO: TIntegerField;
    tTipoMovBcoSuma_Resta: TSmallintField;
    tTipoMovBcoTipoMovBco: TStringField;
    tTipoMovBcoContraMov: TIntegerField;

    dsDptos: TDataSource;
    tDptos: TMDOTable;
    tDptosIDDEPARTAMENTO: TIntegerField;
    tDptosDepartamento: TStringField;

    tSucursales: TMDOTable;
    tSucursalesIDSUCURSAL: TIntegerField;
    tSucursalesNombreSuc: TStringField;
    tSucursalesDireccionSuc: TStringField;
    tSucursalesLocalidadSuc: TStringField;
    tSucursalesProvinciaSuc: TStringField;
    tSucursalesCoPostalSuc: TStringField;
    tSucursalesTelefonoSuc: TStringField;
    tSucursalesDirectorio: TStringField;
    tSucursalesRemota: TSmallintField;
    tSucursalesDetSuc: TStringField;
    tSucursalesFechaInicio: TDateField;
    tSucursalesFechaTInv: TDateField;
    tSucursalesNroRemitoT: TStringField;
    tSucursalesNroRemitoI: TStringField;
    tSucursalesHostName: TStringField;
    tSucursalesConSubDep: TSmallintField;
    tSucursalesULTIMA_ACT: TDateField;
    tSucursalesULTIMA_ACT_ORG: TDateField;
    tSucursalesIDBANCOT: TIntegerField;
    tSucursalesIDBANCOB: TIntegerField;
    tSucursalesIDBANCOE: TIntegerField;
    tSucursalesIDBANCOP: TIntegerField;
    tSucursalesEMPRESA: TMDOStringField;
    tSucursalesDOCEMPRE: TMDOStringField;
    tSucursalesACTIVA: TSmallintField;
    tSucursalesIDEMPRESA: TIntegerField;
    tSucursalesTIEMPOEL: TIntegerField;
    tSucursalesPROXIMA_LECT: TTimeField;
    tSucursalesCON_MEDIDAS: TSmallintField;
    tSucursalesULTIMA_ACT_PRE: TDateTimeField;
    tSucursalesTACTIVIDAD: TSmallintField;

    dspSucursales: TDataSetProvider;
    Sucursales: TClientDataSet;
    SucursalesIDSUCURSAL: TIntegerField;
    SucursalesNombreSuc: TStringField;
    SucursalesDetSuc: TStringField;
    SucursalesFechaInicio: TDateField;
    SucursalesFechaTInv: TDateField;
    SucursalesDireccionSuc: TStringField;
    SucursalesLocalidadSuc: TStringField;
    SucursalesProvinciaSuc: TStringField;
    SucursalesCoPostalSuc: TStringField;
    SucursalesTelefonoSuc: TStringField;
    SucursalesDirectorio: TStringField;
    SucursalesRemota: TSmallintField;
    SucursalesNroRemitoT: TStringField;
    SucursalesHostName: TStringField;
    SucursalesNroRemitoI: TStringField;
    SucursalesConSubDep: TSmallintField;
    SucursalesEMPRESA: TStringField;
    SucursalesDOCEMPRE: TStringField;
    SucursalesULTIMA_ACT: TDateField;
    SucursalesULTIMA_ACT_ORG: TDateField;
    SucursalesIDBANCOT: TIntegerField;
    SucursalesIDBANCOB: TIntegerField;
    SucursalesIDBANCOE: TIntegerField;
    SucursalesIDBANCOP: TIntegerField;
    SucursalesACTIVA: TSmallintField;
    SucursalesIDEMPRESA: TIntegerField;
    SucursalesTIEMPOEL: TIntegerField;
    SucursalesPROXIMA_LECT: TTimeField;
    SucursalesCON_MEDIDAS: TSmallintField;
    SucursalesULTIMA_ACT_PRE: TDateTimeField;
    SucursalesTACTIVIDAD: TSmallintField;

    tEstMovTer: TMDOTable;
    tEstMovTerIdEstado: TIntegerField;
    tEstMovTerEstado: TStringField;

    dsEstMovBcoTer: TDataSource;
    dspEstMovTer: TDataSetProvider;
    EstMovTer: TClientDataSet;
    EstMovTerIdEstado: TIntegerField;
    EstMovTerEstado: TStringField;

    tArtOfertas: TMDOTable;
    tArtOfertasIDARTICULO: TIntegerField;
    tArtOfertasCANTCTAS: TIntegerField;
    tArtOfertasIDSUCURSAL: TIntegerField;
    tArtOfertasFECHAALTA: TDateField;
    tArtOfertasFECHAFIN: TDateField;
    tArtOfertasPNETO: TMDOBCDField;
    tArtOfertasPRECIO: TMDOBCDField;
    tArtOfertasGANANCIAO: TMDOBCDField;
    tArtOfertasVALORCTAS: TMDOBCDField;

    qChkAcc: TMDOQuery;
    qChkAccPASSW: TMDOStringField;

    MarkUp: TMDOTable;
    MarkUpIDMARKUP: TIntegerField;
    MarkUpDetMarkUp: TStringField;
    MarkUpCOEFMARKUP: TMDOBCDField;

    dsMotivosAJ: TDataSource;
    tMotivosAJ: TMDOTable;
    tMotivosAJMotivo: TStringField;
    tMotivosAJIDMOTIVO: TIntegerField;

    dsMotivosNC: TDataSource;
    tMotivosNC: TMDOTable;
    tMotivosNCMotivoNC: TStringField;
    tMotivosNCIDMOTNC: TIntegerField;

    tSectores: TMDOTable;
    tSectoresIdSector: TIntegerField;
    tSectoresSector: TStringField;

    dsSubDep: TDataSource;
    tSubDep: TMDOTable;
    tSubDepIDSUBDEP: TIntegerField;
    tSubDepDetSubDep: TStringField;
    tSubDepIdSucursal: TIntegerField;

    dspSubDep: TDataSetProvider;
    SubDep: TClientDataSet;
    SubDepIDSUBDEP: TIntegerField;
    SubDepDetSubDep: TStringField;
    SubDepIdSucursal: TIntegerField;

    qTerminales: TMDODataSet;
    qTerminalesIDPUNTOVENTA: TSmallintField;
    qTerminalesIDSUCURSAL: TIntegerField;
    qTerminalesSECTOR: TIntegerField;
    qTerminalesFANTASY1: TMDOStringField;
    qTerminalesFANTASY2: TMDOStringField;
    qTerminalesDIRECCION: TMDOStringField;
    qTerminalesLOCALIDAD: TMDOStringField;
    qTerminalesPROVINCIA: TMDOStringField;
    qTerminalesCODPOSTAL: TMDOStringField;
    qTerminalesTELEFONO: TMDOStringField;
    qTerminalesMAILWEB: TMDOStringField;
    qTerminalesPIECOMPROBANTE: TMDOStringField;
    qTerminalesCENTAVOS: TSmallintField;
    qTerminalesCENTAVOSPRECIOS: TSmallintField;
    qTerminalesCONTROLSTOCK: TSmallintField;
    qTerminalesCONTROLADOR_IMPRESORA: TSmallintField;
    qTerminalesIMPRIMEENCONTROLADOR: TSmallintField;
    qTerminalesCAJONDINERO: TSmallintField;
    qTerminalesCIERREAUTOMATICO: TSmallintField;
    qTerminalesSERVIDORFISCAL: TSmallintField;
    qTerminalesTIEMPOFISCAL: TIntegerField;
    qTerminalesHORACIERRE: TTimeField;
    qTerminalesIMPRIMEENLINEA: TSmallintField;
    qTerminalesCONTROLADORLOCAL: TSmallintField;
    qTerminalesPUERTOCONTROLADOR: TSmallintField;
    qTerminalesVELOCIDADCONTROLADOR: TMDOStringField;
    qTerminalesMARCACONTROLADOR: TMDOStringField;
    qTerminalesMODELOCONTROLADOR: TSmallintField;
    qTerminalesTIPOCONTROLADOR: TSmallintField;
    qTerminalesCONTROLADORCONLOGO: TSmallintField;
    qTerminalesNROPTOVTACONTROLADOR: TMDOStringField;
    qTerminalesAVISARSTOCKMINIMO: TSmallintField;
    qTerminalesPEDIRVENDEDOR: TSmallintField;
    qTerminalesPEDIRDESCUENTO: TSmallintField;
    qTerminalesPEDIRLISTAPRECIO: TSmallintField;
    qTerminalesLISTAPRECIOSOFERTAS: TIntegerField;
    qTerminalesHACERNOTACREDITO: TSmallintField;
    qTerminalesCONTROL_TALLES: TSmallintField;
    qTerminalesMOSTRARSALDOSCC: TSmallintField;
    qTerminalesPEDIRSUBDET: TSmallintField;
    qTerminalesHACERREMITOS: TSmallintField;
    qTerminalesCONTROLREMITOS: TSmallintField;
    qTerminalesNFCTACTE: TSmallintField;
    qTerminalesNFTARJETA: TSmallintField;
    qTerminalesNFCHEQUE: TSmallintField;
    qTerminalesNFPENDIENTE: TSmallintField;
    qTerminalesNFCREDITO: TSmallintField;
    qTerminalesCOMPA: TMDOStringField;
    qTerminalesNOTCREDA: TMDOStringField;
    qTerminalesCOMPB: TMDOStringField;
    qTerminalesNOTCREDB: TMDOStringField;
    qTerminalesCOMPT: TMDOStringField;
    qTerminalesRECX: TMDOStringField;
    qTerminalesREMX: TMDOStringField;
    qTerminalesREMITOT: TMDOStringField;
    qTerminalesPRESUPUESTO: TMDOStringField;
    qTerminalesNOTAPEDIDO: TMDOStringField;
    qTerminalesDNOFS: TMDOStringField;
    qTerminalesDOCINTERNOS: TMDOStringField;
    qTerminalesAVISOSMORA: TMDOStringField;
    qTerminalesINVERTIRCANTIDAD: TSmallintField;
    qTerminalesMODIFICARIMPERSONAL: TSmallintField;
    qTerminalesCANTIDADPRODUCTOS: TSmallintField;
    qTerminalesIMPRIMIRMARCO: TSmallintField;
    qTerminalesIMPRIMIRTRIPLICADO: TSmallintField;
    qTerminalesCONTROLCOMPROBANTES: TSmallintField;
    qTerminalesPTOISSERVER: TSmallintField;
    qTerminalesMODIMPRESORA: TIntegerField;
    qTerminalesULTIMOSPRECIOS: TDateField;
    qTerminalesIDEMPRESA: TIntegerField;
    qTerminalesACUERDOEXJ: TMDOStringField;

    qClientes: TMDODataSet;
    qClientesIDCLIENTE: TIntegerField;
    qClientesNOMBRE: TMDOStringField;
    qClientesDIRECCION: TMDOStringField;
    qClientesLOCALIDAD: TMDOStringField;
    qClientesPROVINCIA: TMDOStringField;
    qClientesCODPOSTAL: TMDOStringField;
    qClientesTELEFONOS: TMDOStringField;
    qClientesTELFAX: TMDOStringField;
    qClientesTIPOIVA: TSmallintField;
    qClientesTIPODOC: TSmallintField;
    qClientesDOCUMENTO: TMDOStringField;
    qClientesINGBRUTOS: TMDOStringField;
    qClientesDETDOC: TMDOStringField;
    qClientesDETIVA: TMDOStringField;
    qClientesFECHANAC: TDateField;
    qClientesESTADOCIVIL: TSmallintField;
    qClientesNCONYUGE: TMDOStringField;
    qClientesEMPLEADOR: TMDOStringField;
    qClientesDOMICILIOE: TMDOStringField;
    qClientesANTIGUEDADE: TSmallintField;
    qClientesINGRESOSE: TMDOBCDField;
    qClientesCARGO: TMDOStringField;
    qClientesNROJUBILADO: TMDOStringField;
    qClientesRAMO: TMDOStringField;
    qClientesDOMICILIOP: TMDOStringField;
    qClientesANTIGUEDADP: TSmallintField;
    qClientesINGRESOSP: TMDOBCDField;
    qClientesTIPOPROP: TMDOStringField;
    qClientesUBICPROP: TMDOStringField;
    qClientesREFERENCIAS: TMDOStringField;
    qClientesTIPOCLI: TSmallintField;
    qClientesIDSUCURSAL: TIntegerField;
    qClientesNOMGARANTE1: TMDOStringField;
    qClientesDOCGARANTE1: TMDOStringField;
    qClientesNOMGARANTE2: TMDOStringField;
    qClientesDOCGARANTE2: TMDOStringField;
    qClientesCODIGOCC: TIntegerField;
    qClientesCODBUSCLI: TMDOStringField;

    qEmpleados: TMDODataSet;
    qEmpleadosIDEMPLEADO: TIntegerField;
    qEmpleadosNOMBRE: TMDOStringField;
    qEmpleadosDIRECCION: TMDOStringField;
    qEmpleadosLOCALIDAD: TMDOStringField;
    qEmpleadosPROVINCIA: TMDOStringField;
    qEmpleadosCODPOSTAL: TMDOStringField;
    qEmpleadosTELEFONOS: TMDOStringField;
    qEmpleadosTIPOIVA: TSmallintField;
    qEmpleadosTIPODOC: TSmallintField;
    qEmpleadosDOCUMENTO: TMDOStringField;
    qEmpleadosSALDO: TMDOBCDField;
    qEmpleadosACTIVO: TSmallintField;
    qEmpleadosPASSW: TMDOStringField;
    qEmpleadosAUTORIZADESCUENTO: TSmallintField;
    qEmpleadosIDTAREAFUNCION: TIntegerField;
    qEmpleadosFUNCION: TMDOStringField;
    qEmpleadosDETDOC: TMDOStringField;
    qEmpleadosDETIVA: TMDOStringField;
    qEmpleadosALTAMOD: TDateField;

    dspSectores: TDataSetProvider;
    Sectores: TClientDataSet;
    SectoresSector: TStringField;
    SectoresIdSector: TIntegerField;

    dspTipoDoc: TDataSetProvider;
    TipoDoc: TClientDataSet;
    TipoDocTipoDoc: TSmallintField;
    TipoDocDocumento: TStringField;
    TipoDocNroHasar: TSmallintField;
    TipoDocNroEpson: TStringField;

    TipoIva: TClientDataSet;
    dspTipoIva: TDataSetProvider;
    TipoIvaIvaLargo: TStringField;
    TipoIvaTipoIva: TSmallintField;
    TipoIvaIvaCorto: TStringField;
    TipoIvaNroHasar: TSmallintField;
    TipoIvaNroEpson: TStringField;

    dspTipoComp: TDataSetProvider;
    TipoComp: TClientDataSet;
    TipoCompDescripcion: TStringField;
    TipoCompDescCorta: TStringField;
    TipoCompIdComprobante: TIntegerField;
    TipoCompIP1: TIntegerField;
    TipoCompIP2: TIntegerField;
    TipoCompIP3: TIntegerField;
    TipoCompIP4: TIntegerField;
    TipoCompIP5: TIntegerField;
    TipoCompIP6: TIntegerField;
    TipoCompIP7: TIntegerField;
    TipoCompIP8: TIntegerField;
    TipoCompIP9: TIntegerField;
    TipoCompIP10: TIntegerField;

    dspAlicuotas: TDataSetProvider;
    Alicuotas: TClientDataSet;
    AlicuotasDescAlicuota: TStringField;
    AlicuotasIdAlicuota: TIntegerField;
    AlicuotasCOEFALICUOTA: TBCDField;

    dspMotivosNC: TDataSetProvider;
    MotivosNC: TClientDataSet;
    MotivosNCIDMOTNC: TIntegerField;
    MotivosNCMotivoNC: TStringField;

    dspMotivosAJ: TDataSetProvider;
    MotivosAJ: TClientDataSet;
    MotivosAJIDMOTIVO: TIntegerField;
    MotivosAJMotivo: TStringField;

    dspMotivosBJ: TDataSetProvider;
    tMotivosBJ: TMDOTable;
    tMotivosBJIDMOTBJ: TIntegerField;
    tMotivosBJMOTIVOBJ: TMDOStringField;

    dsMotivosBJ: TDataSource;
    MotivosBJ: TClientDataSet;
    MotivosBJIDMOTBJ: TIntegerField;
    MotivosBJMOTIVOBJ: TStringField;

    dspFunciones: TDataSetProvider;
    Funciones: TClientDataSet;
    FuncionesFuncion: TStringField;
    FuncionesIdFuncion: TIntegerField;

    dspDptos: TDataSetProvider;
    Dptos: TClientDataSet;
    DptosDepartamento: TStringField;
    DptosIDDEPARTAMENTO: TIntegerField;

    dspIngBrutos: TDataSetProvider;
    IngBruto: TClientDataSet;
    IngBrutoDetalleIB: TStringField;
    IngBrutoIdIngBru: TIntegerField;
    IngBrutoCOEFIB: TBCDField;

    dspTipoMovBco: TDataSetProvider;
    TipoMovBco: TClientDataSet;
    TipoMovBcoTipoMovBco: TStringField;
    TipoMovBcoSuma_Resta: TSmallintField;
    TipoMovBcoContraMov: TIntegerField;
    TipoMovBcoIDMOVBCO: TIntegerField;

    dspArtOfertas: TDataSetProvider;
    ArtOfertas: TClientDataSet;
    ArtOfertasIDARTICULO: TIntegerField;
    ArtOfertasCANTCTAS: TIntegerField;
    ArtOfertasIDSUCURSAL: TIntegerField;
    ArtOfertasFECHAALTA: TDateField;
    ArtOfertasFECHAFIN: TDateField;
    ArtOfertasPNETO: TBCDField;
    ArtOfertasPRECIO: TBCDField;
    ArtOfertasGANANCIAO: TBCDField;
    ArtOfertasVALORCTAS: TBCDField;

    qProveedores: TMDODataSet;
    qProveedoresIDPROVEEDOR: TIntegerField;
    qProveedoresIDSUCURSAL: TIntegerField;
    qProveedoresNOMBRE: TMDOStringField;
    qProveedoresNOMBREFANTASIA: TMDOStringField;
    qProveedoresDIRECCION: TMDOStringField;
    qProveedoresLOCALIDAD: TMDOStringField;
    qProveedoresPROVINCIA: TMDOStringField;
    qProveedoresCODPOSTAL: TMDOStringField;
    qProveedoresTELEFONOS: TMDOStringField;
    qProveedoresTELFAX: TMDOStringField;
    qProveedoresMAIL: TMDOStringField;
    qProveedoresWEB: TMDOStringField;
    qProveedoresTIPOIVA: TSmallintField;
    qProveedoresTIPODOC: TSmallintField;
    qProveedoresDOCUMENTO: TMDOStringField;
    qProveedoresINGBRUTOS: TMDOStringField;
    qProveedoresCONTACTO: TMDOStringField;
    qProveedoresTELCONTACTO: TMDOStringField;
    qProveedoresCODCTACON: TIntegerField;
    qProveedoresAUTORIZADO: TMDOStringField;
    qProveedoresDOCAUTOR: TMDOStringField;
    qProveedoresPERCEPCIONES: TSmallintField;
    qProveedoresNROREGPERCP: TMDOStringField;
    qProveedoresNORETENCION_I: TSmallintField;
    qProveedoresNROREGRETEN_I: TMDOStringField;
    qProveedoresVALIDEZNORET_I: TDateField;
    qProveedoresMONTORETENCION_I: TMDOBCDField;
    qProveedoresPRCRETENCION_I: TMDOBCDField;
    qProveedoresNORETENCION_G: TSmallintField;
    qProveedoresVALIDEZNORET_G: TDateField;
    qProveedoresNROREGRETEN_G: TMDOStringField;
    qProveedoresMONTORETENCION_G: TMDOBCDField;
    qProveedoresPRCRETENCION_G: TMDOBCDField;
    qProveedoresMONTORETENCION_B: TMDOBCDField;
    qProveedoresPRCRETENCION_B1: TMDOBCDField;
    qProveedoresPRCRETENCION_B2: TMDOBCDField;
    qProveedoresPROVSERVICIOS: TSmallintField;
    qProveedoresMTORETENCION_SS: TMDOBCDField;
    qProveedoresDETREGIMEN_G: TMDOStringField;
    qProveedoresACTIVO: TSmallintField;
    qProveedoresFACTURAENDOLAR: TSmallintField;

    qProvider: TMDOQuery;
    qProviderIDPROVEEDOR: TIntegerField;
    qProviderIDSUCURSAL: TIntegerField;
    qProviderNOMBRE: TMDOStringField;
    qProviderNOMBREFANTASIA: TMDOStringField;
    qProviderDIRECCION: TMDOStringField;
    qProviderLOCALIDAD: TMDOStringField;
    qProviderPROVINCIA: TMDOStringField;
    qProviderCODPOSTAL: TMDOStringField;
    qProviderTELEFONOS: TMDOStringField;
    qProviderTELFAX: TMDOStringField;
    qProviderMAIL: TMDOStringField;
    qProviderWEB: TMDOStringField;
    qProviderTIPOIVA: TSmallintField;
    qProviderTIPODOC: TSmallintField;
    qProviderDOCUMENTO: TMDOStringField;
    qProviderINGBRUTOS: TMDOStringField;
    qProviderCONTACTO: TMDOStringField;
    qProviderTELCONTACTO: TMDOStringField;
    qProviderCODCTACON: TIntegerField;
    qProviderAUTORIZADO: TMDOStringField;
    qProviderDOCAUTOR: TMDOStringField;
    qProviderPERCEPCIONES: TSmallintField;
    qProviderNROREGPERCP: TMDOStringField;
    qProviderNORETENCION_I: TSmallintField;
    qProviderNROREGRETEN_I: TMDOStringField;
    qProviderVALIDEZNORET_I: TDateField;
    qProviderMONTORETENCION_I: TMDOBCDField;
    qProviderPRCRETENCION_I: TMDOBCDField;
    qProviderNORETENCION_G: TSmallintField;
    qProviderVALIDEZNORET_G: TDateField;
    qProviderNROREGRETEN_G: TMDOStringField;
    qProviderMONTORETENCION_G: TMDOBCDField;
    qProviderPRCRETENCION_G: TMDOBCDField;
    qProviderMONTORETENCION_B: TMDOBCDField;
    qProviderPRCRETENCION_B1: TMDOBCDField;
    qProviderPRCRETENCION_B2: TMDOBCDField;
    qProviderPROVSERVICIOS: TSmallintField;
    qProviderMTORETENCION_SS: TMDOBCDField;
    qProviderDETREGIMEN_G: TMDOStringField;
    qProviderFACTURAENDOLAR: TSmallintField;
    qProviderACTIVO: TSmallintField;

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
    qTarjetasFECHAMOD: TDateField;

    tRegImp: TMDOTable;
    tRegImpIDREGIMEN: TIntegerField;
    tRegImpDETREGIMEN: TMDOStringField;

    dspRegImp: TDataSetProvider;
    dsRegImp: TDataSource;
    RegImp: TClientDataSet;
    RegImpIDREGIMEN: TIntegerField;
    RegImpDETREGIMEN: TStringField;

    TiposCompCmp: TClientDataSet;
    TiposCompCmpDetalle: TStringField;
    TiposCompCmpTipoCom: TSmallintField;

    dsTiposCompVta: TDataSource;
    TiposCompVta: TClientDataSet;
    TiposCompVtaDetalle: TStringField;
    TiposCompVtaTipoCom: TSmallintField;

    tEmpresas: TMDOTable;
    tEmpresasIDEMPRESA: TIntegerField;
    tEmpresasDOCUEMP: TMDOStringField;
    tEmpresasINGBRUTEMP: TMDOStringField;
    tEmpresasDETIMPPROVINCIAL: TMDOStringField;
    tEmpresasALCIMPPROVINCIAL: TMDOBCDField;
    tEmpresasDESCUENTOINGBTOS: TMDOBCDField;
    tEmpresasCOEFIMPINT: TMDOBCDField;
    tEmpresasNOMBREEMPRESA: TMDOStringField;
    tEmpresasPROPIETARIO: TMDOStringField;
    tEmpresasDIRECCION: TMDOStringField;
    tEmpresasLOCALIDAD: TMDOStringField;
    tEmpresasPROVINCIA: TMDOStringField;
    tEmpresasCODPOSTAL: TMDOStringField;
    tEmpresasTELEFONO: TMDOStringField;
    tEmpresasIDARTCUOTA: TIntegerField;
    tEmpresasIDARTMORA: TIntegerField;
    tEmpresasIDARTBONIF: TIntegerField;
    tEmpresasAREACONSIGNACION: TIntegerField;
    tEmpresasGRUPOCONSIGNACION: TIntegerField;
    tEmpresasNIVEL_DEL: TIntegerField;
    tEmpresasNIVEL_CON: TIntegerField;
    tEmpresasNIVEL_DTO: TIntegerField;
    tEmpresasNIVEL_MOD: TIntegerField;
    tEmpresasNOSOTROS: TMDOStringField;
    tEmpresasNORDPAGO: TMDOStringField;
    tEmpresasREMITOTR: TMDOStringField;
    tEmpresasNORDCOMPRA: TMDOStringField;
    tEmpresasREMITOAJ: TMDOStringField;
    tEmpresasCUENTACOMPRAS: TIntegerField;
    tEmpresasINTMORADIARIO: TMDOBCDField;
    tEmpresasMAXBONCANCRED: TMDOBCDField;
    tEmpresasNROLIQPRES: TMDOStringField;
    tEmpresasIDARTCOBMUTTAR: TIntegerField;
    tEmpresasCERT_RETG: TMDOStringField;
    tEmpresasCERT_RETI: TMDOStringField;
    tEmpresasCERT_RETB: TMDOStringField;
    tEmpresasCERT_RETS: TMDOStringField;
    tEmpresasDCTOPRODCII: TMDOBCDField;
    tEmpresasCONCREDITOS: TSmallintField;
    tEmpresasCONLISTAS: TSmallintField;
    tEmpresasVALORDOLAR: TMDOBCDField;
    tEmpresasDETEMP: TMDOStringField;
    tEmpresasMINNOIMPGAN: TMDOBCDField;
    tEmpresasMINNOIMPIBT: TMDOBCDField;
    tEmpresasMINNOIMPIVA: TMDOBCDField;
    tEmpresasCANTSUC: TSmallintField;
    tEmpresasTRANF_EN_FACT: TSmallintField;
    tEmpresasII_INC_EN_COSTO: TSmallintField;
    tEmpresasPRACT_RETI: TSmallintField;
    tEmpresasPRACT_RETB: TSmallintField;
    tEmpresasPRACT_RETG: TSmallintField;
    tEmpresasPRACT_RETS: TSmallintField;
    tEmpresasIDARTRECARGO: TIntegerField;
    tEmpresasULTIMAACTDATOS: TDateTimeField;
    tEmpresasCONSENASCRED: TSmallintField;
    tEmpresasCONREMPROV: TSmallintField;

    dspEmpresas: TDataSetProvider;
    Empresas: TClientDataSet;
    EmpresasIDEMPRESA: TIntegerField;
    EmpresasDOCUEMP: TStringField;
    EmpresasINGBRUTEMP: TStringField;
    EmpresasDETIMPPROVINCIAL: TStringField;
    EmpresasALCIMPPROVINCIAL: TBCDField;
    EmpresasDESCUENTOINGBTOS: TBCDField;
    EmpresasCOEFIMPINT: TBCDField;
    EmpresasNOMBREEMPRESA: TStringField;
    EmpresasPROPIETARIO: TStringField;
    EmpresasDIRECCION: TStringField;
    EmpresasLOCALIDAD: TStringField;
    EmpresasPROVINCIA: TStringField;
    EmpresasCODPOSTAL: TStringField;
    EmpresasTELEFONO: TStringField;
    EmpresasIDARTCUOTA: TIntegerField;
    EmpresasIDARTMORA: TIntegerField;
    EmpresasIDARTBONIF: TIntegerField;
    EmpresasAREACONSIGNACION: TIntegerField;
    EmpresasGRUPOCONSIGNACION: TIntegerField;
    EmpresasNIVEL_DEL: TIntegerField;
    EmpresasNIVEL_CON: TIntegerField;
    EmpresasNIVEL_DTO: TIntegerField;
    EmpresasNIVEL_MOD: TIntegerField;
    EmpresasNOSOTROS: TStringField;
    EmpresasNORDPAGO: TStringField;
    EmpresasREMITOTR: TStringField;
    EmpresasNORDCOMPRA: TStringField;
    EmpresasREMITOAJ: TStringField;
    EmpresasCUENTACOMPRAS: TIntegerField;
    EmpresasINTMORADIARIO: TBCDField;
    EmpresasMAXBONCANCRED: TBCDField;
    EmpresasNROLIQPRES: TStringField;
    EmpresasIDARTCOBMUTTAR: TIntegerField;
    EmpresasCERT_RETG: TStringField;
    EmpresasCERT_RETI: TStringField;
    EmpresasCERT_RETB: TStringField;
    EmpresasCERT_RETS: TStringField;
    EmpresasDCTOPRODCII: TBCDField;
    EmpresasCONCREDITOS: TSmallintField;
    EmpresasCONLISTAS: TSmallintField;
    EmpresasVALORDOLAR: TBCDField;
    EmpresasDETEMP: TStringField;
    EmpresasMINNOIMPGAN: TBCDField;
    EmpresasMINNOIMPIBT: TBCDField;
    EmpresasMINNOIMPIVA: TBCDField;
    EmpresasCANTSUC: TSmallintField;
    EmpresasPRACT_RETI: TSmallintField;
    EmpresasPRACT_RETB: TSmallintField;
    EmpresasPRACT_RETG: TSmallintField;
    EmpresasPRACT_RETS: TSmallintField;
    EmpresasTRANF_EN_FACT: TSmallintField;
    EmpresasII_INC_EN_COSTO: TSmallintField;
    EmpresasDetArtCuota: TStringField;
    EmpresasDetArtMora: TStringField;
    EmpresasDetArtBonif: TStringField;
    EmpresasDetArtTjMut: TStringField;
    EmpresasDetArtAreaC: TStringField;
    EmpresasDetArtGrupC: TStringField;
    EmpresasIDARTRECARGO: TIntegerField;
    EmpresasULTIMAACTDATOS: TDateTimeField;
    EmpresasDetArtRecar: TStringField;
    EmpresasCONSENASCRED: TSmallintField;
    EmpresasCONREMPROV: TSmallintField;

    tPCL_TarMut: TMDOTable;
    tPCL_TarMutIDLIQUIDACION: TIntegerField;
    tPCL_TarMutIDENTIDAD: TIntegerField;
    tPCL_TarMutIDPROVEEDOR: TIntegerField;
    tPCL_TarMutFECHA: TDateField;
    tPCL_TarMutCANTOP: TSmallintField;
    tPCL_TarMutTOTAL: TMDOBCDField;
    tPCL_TarMutNETO: TMDOBCDField;
    tPCL_TarMutCOMISION: TMDOBCDField;
    tPCL_TarMutIDFACTURA: TIntegerField;
    tPCL_TarMutIDSUCURSAL: TIntegerField;
    tPCL_TarMutIDPUNTOVENTA: TIntegerField;
    tPCL_TarMutTIPOOP: TSmallintField;
    tPCL_TarMutUSUARIO: TIntegerField;
    tPCL_TarMutSTATE: TSmallintField;
    tPCL_TarMutNROOPERACION: TMDOStringField;
    tPCL_TarMutESTADO: TSmallintField;
    tPCL_TarMutIDORDPAGO: TIntegerField;
    tPCL_TarMutIDEMPRESA: TIntegerField;

    dsPCL_TarMut: TDataSource;
    dspPCL_TarMut: TDataSetProvider;
    PCL_TarMut: TClientDataSet;
    PCL_TarMutIDLIQUIDACION: TIntegerField;
    PCL_TarMutIDENTIDAD: TIntegerField;
    PCL_TarMutIDPROVEEDOR: TIntegerField;
    PCL_TarMutFECHA: TDateField;
    PCL_TarMutCANTOP: TSmallintField;
    PCL_TarMutTOTAL: TBCDField;
    PCL_TarMutNETO: TBCDField;
    PCL_TarMutCOMISION: TBCDField;
    PCL_TarMutIDFACTURA: TIntegerField;
    PCL_TarMutIDSUCURSAL: TIntegerField;
    PCL_TarMutIDPUNTOVENTA: TIntegerField;
    PCL_TarMutTIPOOP: TSmallintField;
    PCL_TarMutUSUARIO: TIntegerField;
    PCL_TarMutSTATE: TSmallintField;
    PCL_TarMutNROOPERACION: TStringField;
    PCL_TarMutESTADO: TSmallintField;
    PCL_TarMutIDORDPAGO: TIntegerField;
    PCL_TarMutIDEMPRESA: TIntegerField;

    tEstadosMov: TMDOTable;
    tEstadosMovIDESTADO: TIntegerField;
    tEstadosMovESTADO: TMDOStringField;
    dspEstadosMov: TDataSetProvider;

    dsEstadosMov: TDataSource;
    EstadosMov: TClientDataSet;
    EstadosMovIDESTADO: TIntegerField;
    EstadosMovESTADO: TStringField;
    tEmpresasREMITODOMICILIO: TSmallintField;
    EmpresasREMITODOMICILIO: TSmallintField;

    procedure Save_Safe(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);

    procedure MPAccesosAccesoStrChange(Sender: TField);
    procedure FVAccesosAccesoStrChange(Sender: TField);

    procedure TipoMovBcoNewRecord(DataSet: TDataSet);
    procedure BancosCalcFields(DataSet: TDataSet);
    procedure BancosBeforePost(DataSet: TDataSet);
    procedure BancosCantChqGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure TipoMovBcoContraMovGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure ProvinciasBeforePost(DataSet: TDataSet);
    procedure DptosBeforePost(DataSet: TDataSet);
    procedure AlicuotasBeforePost(DataSet: TDataSet);
    procedure MotivosNCBeforePost(DataSet: TDataSet);
    procedure MotivosBJBeforePost(DataSet: TDataSet);
    procedure MotivosAJBeforePost(DataSet: TDataSet);
    procedure TipoMovBcoBeforePost(DataSet: TDataSet);
    procedure IngBrutoBeforePost(DataSet: TDataSet);
    procedure SubDepBeforePost(DataSet: TDataSet);
    procedure MPAccesosBeforePost(DataSet: TDataSet);
    procedure FVAccesosBeforePost(DataSet: TDataSet);
    procedure RegImpBeforePost(DataSet: TDataSet);
    procedure SucursalesAfterPost(DataSet: TDataSet);
    procedure EmpresasReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure EmpresasNewRecord(DataSet: TDataSet);
    procedure EmpresasIDEMPRESAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure EmpresasBeforePost(DataSet: TDataSet);
    procedure EmpresasAfterPost(DataSet: TDataSet);
    procedure EmpresasCalcFields(DataSet: TDataSet);
    procedure EstMovTerBeforePost(DataSet: TDataSet);
    procedure BancosNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Loaded; override;
  public
    { Public declarations }
    procedure AbrirGestion;
    procedure CerrarGestion;
  end;

var
  dmGestion: TdmGestion;

implementation

uses uMain, uSelecUsuario, ActnList, uParamSis, uClaveMod, uNewPrec;

procedure TdmGestion.Save_Safe(DataSet: TDataSet);
begin
  if not trGestion.InTransaction then
    trGestion.StartTransaction;
  try
    if TClientDataSet(DataSet).ApplyUpdates(0) > 0 then
      Abort;
    trGestion.Commit;
  except
    trGestion.Rollback;
  end;
end;

{$R *.DFM}

procedure TdmGestion.AbrirGestion;
begin
  Funciones.Open;
  Empresas.Open;
  Empresas.Open;
  MPAccesos.Open;
  FVAccesos.Open;
  Sucursales.Open;
  Sectores.Open;
  SubDep.Open;
  IngBruto.Open;
  TipoIva.Open;
  CF.Open;
  Alicuotas.Open;
  TipoComp.Open;
  TipoDoc.Open;
  Provincias.Open;
  TipoMovBco.Open;
  Dptos.Open;
  EstMovTer.Open;
  EstadosMov.Open;
  MotivosAJ.Open;
  MotivosBJ.Open;
  MotivosNC.Open;
  Areas.Open;
  Grupos.Open;
  SubGrupos.Open;
  ArtOfertas.Open;
  Bancos.Open;
  MarkUp.Open;
  RegImp.Open;
  qTarjetas.Open;
end;

procedure TdmGestion.CerrarGestion;
begin
  IngBruto.Close;
  TipoIva.Close;
  CF.Close;
  Alicuotas.Close;
  TipoComp.Close;
  TipoDoc.Close;
  Provincias.Close;
  TipoMovBco.Close;
  Dptos.Close;
  EstMovTer.Close;
  EstadosMov.Close;
  MotivosAJ.Close;
  MotivosNC.Close;
  MotivosBJ.Close;
  Empresas.Close;
  MPAccesos.Close;
  FVAccesos.Close;
  Funciones.Close;
  Sucursales.Close;
  Sectores.Close;
  SubDep.Close;
  Areas.Close;
  Grupos.Close;
  SubGrupos.Close;
  ArtOfertas.Close;
  Bancos.Close;
  MarkUp.Close;
  RegImp.Close;
  qTarjetas.Close;
  qTerminales.Close;
end;

procedure TdmGestion.Loaded;
begin
  inherited Loaded;
  dbGestion.Connected := False;
  trGestion.Active := False;
end;

procedure TdmGestion.DataModuleDestroy(Sender: TObject);
begin
  TiposCompVta.Close;
  TiposCompCmp.Close;
  Set_Terminal(IdSalesPoint, IdBranch, Usuario, 0);
end;

procedure TdmGestion.DataModuleCreate(Sender: TObject);
var
  i: Integer;
  Reg: TIniFile;
begin
  Control_Talles := False;
  ConSubDep  := False;
  EsRemota   := False;
  NameBranch := Cero;
  Max_Suc := 0;
  MaxDtoArtII := 0;
  Incluir_CostoConII := False;
  PermitirRem_DeProv := False;
  Multi_Empresas := True;

  PasoExe := ExtractFilePath(Application.ExeName);
  DataDirectory := Cero;
  BranchConfig := Cero;
  PointConfig := Cero;

    (*
     CONFIGURACION
     User = sysdba
     Pass = mastekey
     [FBICfg]  Locacion=192.168.90.101:c:\
    *)

  Application.ProcessMessages;
  Reg := TIniFile.Create(PasoExe + 'CfgBase.ini');
  try
    DataDirectory:= Reg.ReadString('FBICfg', 'Locacion', '');
    BranchConfig := Reg.ReadString('FBICfg', 'Sucursal', '');
    PointConfig  := Reg.ReadString('FBICfg', 'Terminal', '');
    if (Trim(DataDirectory) = Vacio) or
       (Trim(BranchConfig) = Vacio) or
       (Trim(PointConfig) = Vacio) then
    begin
      frmParametrosSistema := TfrmParametrosSistema.Create(Application);
      frmParametrosSistema.UbicData := DataDirectory;
      frmParametrosSistema.Sucursal := BranchConfig;
      frmParametrosSistema.Terminal := PointConfig;
      if frmParametrosSistema.ShowModal = mrOK then
      begin
        DataDirectory := frmParametrosSistema.UbicData;
        Reg.WriteString('FBICfg', 'Locacion', DataDirectory);
        DataDirectory := frmParametrosSistema.Sucursal;
        Reg.WriteString('FBICfg', 'Sucursal', BranchConfig);
        DataDirectory := frmParametrosSistema.Terminal;
        Reg.WriteString('FBICfg', 'Terminal', PointConfig);
      end
      else
        Application.Terminate;
    end;
  finally
    Reg.Free;
  end;
  trGestion.Active := False;
  dbGestion.Connected := False;
  dbGestion.DatabaseName := DataDirectory;
  dbGestion.Params.Clear;
  dbGestion.Params.Add('user_name=sysdba');
  dbGestion.Params.Add('password=masterkey');
  dbGestion.Connected := True;
  trGestion.Active := True;
  Id_Cia := 0;
  try
    Screen.Cursor := crHourGlass;
    try // Punto de Venta
      IdSalesPoint := StrToInt(PointConfig);
    except
      raise EUsuario.Create('Punto mal configurado');
    end;

    try  // Sucursal
      IdBranch := StrToInt(BranchConfig);
    except
      raise EUsuario.Create('Sucursal mal configurado');
    end;

    qTerminales.Close; //  Leyendo Configuracion del Punto de Venta
    qTerminales.ParamByName('IdSucursal').AsInteger := IdBranch;
    qTerminales.ParamByName('IdPuntoVenta').AsInteger := IdSalesPoint;
    qTerminales.Open;
    if not qTerminales.IsEmpty then
    begin
      IsServer := (qTerminalesPTOISSERVER.AsInteger = Verdadero);                    // La terminal es servidor
      ServidorFiscal := (qTerminalesServidorFiscal.AsInteger = Verdadero);           // Servidor de Controlador Fiscal
      ControladorLocal := (qTerminalesControladorLocal.AsInteger = Verdadero);       // ControladorLocal = False, imprime en Servidor Fiscal
      SectorSistema := qTerminalesSector.AsInteger;                                  // Sector
      Text_PieComprobante := qTerminalesPieComprobante.AsString;                     // Texto pie Comprobantes
      Control_Talles := (qTerminalesControl_Talles.AsInteger = Verdadero);           // Administracion de Talles
      ImprimirEnControlador := (qTerminalesImprimeEnControlador.AsInteger = Verdadero);
      ImprimirEnLinea := (qTerminalesImprimeEnLinea.AsInteger = Verdadero);
      Tipo_Estacion := (qTerminalesTipoControlador.AsInteger = ControladorTipoEstacion);
      Tipo_Factura := (qTerminalesTipoControlador.AsInteger = ControladorTipoFactura);
      Tipo_FacNC := (qTerminalesTipoControlador.AsInteger = ControladorTktFact_NC);
      IF_Modelo := qTerminalesModeloControlador.AsInteger;
      if qTerminalesIMPRIMEENCONTROLADOR.AsInteger = Verdadero then                  //  Leyendo tipo de dispositivo de Impresion
        IF_Modelo := qTerminalesModeloControlador.AsInteger
      else
        IF_Modelo := Con_Impresora;
      if qTerminalesCentavos.AsInteger > 0 then                                       // Seteo de centavos
        Decimales := qTerminalesCentavos.AsInteger
      else
        Decimales := CurrencyDecimals;
      if qTerminalesCentavosPrecios.AsInteger > 0 then
        CentavosP := qTerminalesCentavosPrecios.AsInteger
      else
        CentavosP := CurrencyDecimals;
      StringDisplay := CurrencyString + ' 0.';
      StringEdit := '0.';
      for i := 1 to CentavosP do
        Insert('0', StringDisplay, Length(StringDisplay)+1);
      for i := 1 to CentavosP do
        Insert('0', StringEdit, Length(StringEdit)+1);
      Id_Cia := qTerminalesIDEMPRESA.AsInteger;
    end
    else begin
      qTerminales.Close;
      ShowMessage('Terminal mal configurada ');
      Application.Terminate;
    end;

    try
      AbrirGestion;
      Max_Suc := Sucursales.RecordCount;  // Cantidad de sucursales
      if Sucursales.Locate(SucursalesIdSucursal.FieldName, IdBranch, []) then
      begin
        NameBranch := SucursalesNombreSuc.AsString;
        ConSubDep  := (SucursalesConSubDep.AsInteger = Verdadero);
        EsRemota   := (SucursalesRemota.AsInteger = Verdadero);
        Control_Talles := (SucursalesCON_MEDIDAS.AsInteger = Verdadero);
        Id_Cia     := SucursalesIDEMPRESA.AsInteger;
      end;

      if Empresas.Locate(EmpresasIDEMPRESA.FieldName, Id_Cia, []) then
      begin
        OwnerName := EmpresasNombreEmpresa.AsString;
        OwnerAddres := EmpresasDireccion.AsString+' '+EmpresasLocalidad.AsString;
        OwnerState := EmpresasProvincia.AsString+' ('+EmpresasCodPostal.AsString+')';
        Owner_ID := EmpresasDocuEmp.AsString;
        MaxDtoArtII := EmpresasDCTOPRODCII.AsFloat;
        Incluir_CostoConII := (EmpresasII_INC_EN_COSTO.AsInteger = Verdadero);
        PermitirRem_DeProv := (EmpresasCONREMPROV.AsInteger = Verdadero);
        Nivel_Adm := EmpresasNivel_Del.AsInteger;
        Nivel_Mod := EmpresasNivel_Mod.AsInteger;
        Nivel_Con := EmpresasNivel_Con.AsInteger;
        Nivel_Dto := EmpresasNivel_Dto.AsInteger;
      end;
    except
      on E:Exception do
      begin
        Max_Suc := 1;
        Id_Cia := 0;
        OwnerName := 'ERROR';
        OwnerAddres := 'Dirección';
        OwnerState := 'San Juan';
        Owner_ID := '00-00000000-0';
        MaxDtoArtII := 0.00;
        NameBranch := 'Sucursal';
        ConSubDep  := False;
        EsRemota   := False;
        Control_Talles := False;
        raise EUsuario.Create('Error al Abrir Datos: '+E.Message);
      end;
    end;

    if TiposCompVta.Active then
      TiposCompVta.EmptyDataSet
    else
      TiposCompVta.CreateDataSet;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Facturas A  ';
    TiposCompVtaTipoCom.AsInteger:=  FacA;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Facturas B  ';
    TiposCompVtaTipoCom.AsInteger:=  FacB;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Tickets T  ';
    TiposCompVtaTipoCom.AsInteger:=  Tkt;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'N.Débito A  ';
    TiposCompVtaTipoCom.AsInteger:=  DebA;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'N.Débito B  ';
    TiposCompVtaTipoCom.AsInteger:=  DebB;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'N.Crédito A  ';
    TiposCompVtaTipoCom.AsInteger:=  CreA;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'N.Crédito B  ';
    TiposCompVtaTipoCom.AsInteger:=  CreB;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Remitos X  ';
    TiposCompVtaTipoCom.AsInteger:=  RemitoX;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Presupuesto ';
    TiposCompVtaTipoCom.AsInteger:=  Presupuesto;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Recibo X  ';
    TiposCompVtaTipoCom.AsInteger:=  ReciboX;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Recibo Seña';
    TiposCompVtaTipoCom.AsInteger:=  Cobro_Sena;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Recibo SaF ';
    TiposCompVtaTipoCom.AsInteger:=  SaldoAFavor;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Cancelados A';
    TiposCompVtaTipoCom.AsInteger:=  CanceladoA;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Cancelados B  ';
    TiposCompVtaTipoCom.AsInteger:=  CanceladoB;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Cancelados T ';
    TiposCompVtaTipoCom.AsInteger:=  CanceladoT;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Consignación';
    TiposCompVtaTipoCom.AsInteger:=  Venta_Consig;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Aviso Mora 1';
    TiposCompVtaTipoCom.AsInteger:=  AvisoMora_1;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Aviso Mora 2';
    TiposCompVtaTipoCom.AsInteger:=  AvisoMora_2;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Aviso Mora 3';
    TiposCompVtaTipoCom.AsInteger:=  AvisoMora_3;
    TiposCompVta.Post;
    TiposCompVta.Append;
    TiposCompVtaDetalle.AsString := 'Acuerdo Ex.J';
    TiposCompVtaTipoCom.AsInteger:=  AcuerdoExJud;
    TiposCompVta.Post;
    TiposCompVta.First;

    if TiposCompCmp.Active then
      TiposCompCmp.EmptyDataSet
    else
      TiposCompCmp.CreateDataSet;
    TiposCompCmp.Append;
    TiposCompCmpDetalle.AsString := 'Facturas A  ';
    TiposCompCmpTipoCom.AsInteger:=  FacA;
    TiposCompCmp.Post;
    TiposCompCmp.Append;
    TiposCompCmpDetalle.AsString := 'Facturas C  ';
    TiposCompCmpTipoCom.AsInteger:=  FacC;
    TiposCompCmp.Post;
    TiposCompCmp.Append;
    TiposCompCmpDetalle.AsString := 'N.Débito A  ';
    TiposCompCmpTipoCom.AsInteger:=  DebA;
    TiposCompCmp.Post;
    TiposCompCmp.Append;
    TiposCompCmpDetalle.AsString := 'N.Débito C  ';
    TiposCompCmpTipoCom.AsInteger:=  DebC;
    TiposCompCmp.Post;
    TiposCompCmp.Append;
    TiposCompCmpDetalle.AsString := 'N.Crédito A  ';
    TiposCompCmpTipoCom.AsInteger:=  CreA;
    TiposCompCmp.Post;
    TiposCompCmp.Append;
    TiposCompCmpDetalle.AsString := 'N.Crédito C  ';
    TiposCompCmpTipoCom.AsInteger:=  CreC;
    TiposCompCmp.Post;
    TiposCompCmp.Append;
    TiposCompCmpDetalle.AsString := 'Remitos X  ';
    TiposCompCmpTipoCom.AsInteger:=  RemitoX;
    TiposCompCmp.Post;
    TiposCompCmp.Append;
    TiposCompCmpDetalle.AsString := 'No Imputables ';
    TiposCompCmpTipoCom.AsInteger:=  NoImputable;
    TiposCompCmp.Post;
    TiposCompCmp.Append;
    TiposCompCmpDetalle.AsString := 'Presentacion TM';
    TiposCompCmpTipoCom.AsInteger:=  PresentacionTM;
    TiposCompCmp.Post;
    TiposCompCmp.Append;
    TiposCompCmpDetalle.AsString := 'Liquidación A';
    TiposCompCmpTipoCom.AsInteger:=  LiquidacionA;
    TiposCompCmp.Post;
    TiposCompCmp.Append;
    TiposCompCmpDetalle.AsString := 'Liquidación C';
    TiposCompCmpTipoCom.AsInteger:=  LiquidacionC;
    TiposCompCmp.Post;
    TiposCompCmp.Append;
    TiposCompCmpDetalle.AsString := 'Recibo X';
    TiposCompCmpTipoCom.AsInteger:=  ReciboX;
    TiposCompCmp.Post;
    TiposCompCmp.Append;
    TiposCompCmpDetalle.AsString := 'Acd.Ex.Jud.';
    TiposCompCmpTipoCom.AsInteger:=  AcuerdoExJud;
    TiposCompCmp.Post;

    TiposCompCmp.First;
    Check_Oferta;
  finally
    Screen.Cursor := crDefault;
  end;
end;

//----------------------------------------------------------------------------
//-------------------------ACCESOS  / CONFIGURACION PUNTO---------------------
//----------------------------------------------------------------------------

procedure TdmGestion.MPAccesosAccesoStrChange(Sender: TField);
begin
  if (not Funciones.Active) then
    Funciones.Open;
  if Funciones.Locate(FuncionesFuncion.FieldName, Sender.Value, []) then
    MPAccesosAcceso.AsInteger := FuncionesIdFuncion.AsInteger
  else
    MPAccesosAcceso.AsInteger := AccesoLibre;
end;

procedure TdmGestion.FVAccesosAccesoStrChange(Sender: TField);
begin
  if (not Funciones.Active) then
    Funciones.Open;
  if Funciones.Locate(FuncionesFuncion.FieldName, Sender.Value, []) then
    FVAccesosAcceso.AsInteger := FuncionesIdFuncion.AsInteger
  else
    FVAccesosAcceso.AsInteger := AccesoLibre;
end;
//--------------------------- FIN PUNTO/ACCESO -------------------------------

procedure TdmGestion.TipoMovBcoNewRecord(DataSet: TDataSet);
begin
  TipoMovBcoSuma_Resta.AsInteger := Falso;
  TipoMovBcoContraMov.AsInteger := 0;
  TipoMovBcoTipoMovBco.AsString := ' ';
end;

procedure TdmGestion.TipoMovBcoContraMovGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not qTipoMovBco.Active then
    qTipoMovBco.Open;
  if qTipoMovBco.Locate(qTipoMovBcoIDMOVBCO.FieldName, Sender.AsInteger, []) then
    Text := qTipoMovBcoTIPOMOVBCO.AsString
  else
    Text := Sender.AsString;
end;

procedure TdmGestion.BancosCalcFields(DataSet: TDataSet);
begin
  if (BancosNROCHQDESDE.AsInteger > 0) And
     (BancosNROCHQHASTA.AsInteger > 0) then
    BancosCantChq.AsInteger := BancosNROCHQHASTA.AsInteger -
                               BancosNROCHQDESDE.AsInteger
  else
    BancosCantChq.AsInteger := 0;
end;

procedure TdmGestion.BancosBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if Bancos.State in [dsInsert] then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbGestion;
      q.Transaction := tBancos.Transaction;
      q.SQL.Add('Select Max(IdBanco) as Ultimo ');
      q.SQL.Add('From Bancos ');
      q.Open;
      BancosIDBANCO.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;
  (*
  if BancosMODNAME.IsNull then
    BancosMODNAME.AsString := BancosIDBANCO.AsString;
  *)
end;

procedure TdmGestion.TipoMovBcoBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  try
    if TipoMovBco.State in [dsInsert] then
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbGestion;
        q.Transaction := tTipoMovBco.Transaction;
        q.SQL.Add('Select Max(IdMovBco) as Ultimo ');
        q.SQL.Add('From TipoMovBco ');
        q.Open;
        TipoMovBcoIdMovBco.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
        q.Close;
      finally
        q.Free;
      end;
    end;
  except
    on E:Exception do
    begin
      raise EUSuario.Create('Error '+E.Message);
    end;
  end;
end;

procedure TdmGestion.BancosCantChqGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := Format('Stk Cheques: %d ',[Sender.AsInteger]);
end;

procedure TdmGestion.BancosNewRecord(DataSet: TDataSet);
begin
  BancosMODNAME.AsString := null;
end;

procedure TdmGestion.EmpresasAfterPost(DataSet: TDataSet);
begin
  if not trGestion.InTransaction then
    trGestion.StartTransaction;
  try
    if Empresas.ApplyUpdates(0) > 0 then
      Abort;
    trGestion.Commit;
  except
    on E:Exception do
    begin
      raise EUsuario.Create(E.Message);
      trGestion.Rollback;
    end;
  end;
end;

procedure TdmGestion.EmpresasBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if Trim(EmpresasDETEMP.AsString) = Vacio then
  begin
    raise EUsuario.Create('debe ingresar una denominación de hasta 4 letras para la Empresa.-');
  end;

  if (Empresas.State in [dsInsert]) And
     (EmpresasIDEMPRESA.AsInteger = NUEVO_REGISTRO) then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := tEmpresas.Transaction;
      q.SQL.Add('Select Max(IdEmpresa) as Ultimo ');
      q.SQL.Add('From DatosSis ');
      q.Open;
      EmpresasIdEmpresa.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;
end;

procedure TdmGestion.EmpresasCalcFields(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if EmpresasConCreditos.AsInteger = Verdadero then
  begin
    if GetDatosArt(EmpresasIDARTMORA.AsInteger,'', Datos_Art) then
      EmpresasDetArtMora.AsString := Datos_Art.DetProd
    else
      EmpresasDetArtMora.AsString := 'Sin Asignar';

    if GetDatosArt(EmpresasIDARTBONIF.AsInteger,'', Datos_Art) then
      EmpresasDetArtBonif.AsString := Datos_Art.DetProd
    else
      EmpresasDetArtBonif.AsString := 'Sin Asignar';

    if GetDatosArt(EmpresasIDARTCOBMUTTAR.AsInteger,'', Datos_Art) then
      EmpresasDetArtTjMut.AsString := Datos_Art.DetProd
    else
      EmpresasDetArtTjMut.AsString := 'Sin Asignar';

    if GetDatosArt(EmpresasIDARTRECARGO.AsInteger,'', Datos_Art) then
      EmpresasDetArtRecar.AsString := Datos_Art.DetProd
    else
      EmpresasDetArtRecar.AsString := 'Sin Asignar';
  end;

  if GetDatosArt(EmpresasIDARTCUOTA.AsInteger,'', Datos_Art) then
    EmpresasDetArtCuota.AsString := Datos_Art.DetProd
  else
    EmpresasDetArtCuota.AsString := 'Sin Asignar';

  //  Definicion consignaciones
  if EmpresasAREACONSIGNACION.AsInteger > 0 then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.trGestion;
      q.SQL.Add('Select Area From AREAS ');
      q.SQL.Add('Where IdArea =:A ');
      q.ParamByName('A').AsInteger := EmpresasAREACONSIGNACION.AsInteger;
      q.Open;
      if not q.IsEmpty then
        EmpresasDetArtAreaC.AsString := q.FieldByName('Area').AsString
      else
        EmpresasDetArtAreaC.AsString := 'Sin Asignar';
      q.Close;
    finally
      q.Free;
    end;

    if EmpresasGRUPOCONSIGNACION.AsInteger > 0 then
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := dmGestion.trGestion;
        q.SQL.Add('Select Grupo From GRUPOS ');
        q.SQL.Add('Where IdArea =:A And IdGrupo =:G ');
        q.ParamByName('A').AsInteger := EmpresasAREACONSIGNACION.AsInteger;
        q.ParamByName('G').AsInteger := EmpresasGRUPOCONSIGNACION.AsInteger;
        q.Open;
        if not q.IsEmpty then
          EmpresasDetArtGrupC.AsString := q.FieldByName('Grupo').AsString
        else
          EmpresasDetArtGrupC.AsString := 'Sin Asignar';
        q.Close;
      finally
        q.Free;
      end;
    end;
  end;
  Application.ProcessMessages;
end;

procedure TdmGestion.EmpresasIDEMPRESAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
 if EmpresasIDEMPRESA.AsInteger = NUEVO_REGISTRO then
   Text := 'Alta'
 else
   Text := IntToStr(EmpresasIDEMPRESA.AsInteger);
end;

procedure TdmGestion.EmpresasNewRecord(DataSet: TDataSet);
begin
  EmpresasIdEmpresa.AsInteger := NUEVO_REGISTRO;
end;

procedure TdmGestion.EmpresasReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ApplicationShowException(E);
end;

procedure TdmGestion.EstMovTerBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if EstMovTer.State in [dsInsert] then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbGestion;
      q.Transaction := tEstMovTer.Transaction;
      q.SQL.Add('Select Max(IdEstado) as Ultimo ');
      q.SQL.Add('From EstadosMovTer ');
      q.Open;
      EstMovTerIdEstado.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;
end;

//----------------------------------------------------------------------------
//----------------------------------- DATOS SISTEMA --------------------------
//----------------------------------------------------------------------------

procedure TdmGestion.ProvinciasBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if Provincias.State in [dsInsert] then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbGestion;
      q.Transaction := tProvincias.Transaction;
      q.SQL.Add('Select Max(IdProvincia) as Ultimo ');
      q.SQL.Add('From Provincias ');
      q.Open;
      ProvinciasIdProvincia.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;
end;

procedure TdmGestion.DptosBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if Dptos.State in [dsInsert] then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbGestion;
      q.Transaction := tDptos.Transaction;
      q.SQL.Add('Select Max(IdDepartamento) as Ultimo ');
      q.SQL.Add('From Departamentos ');
      q.Open;
      DptosIDDEPARTAMENTO.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;  
end;

procedure TdmGestion.AlicuotasBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if Alicuotas.State in [dsInsert] then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbGestion;
      q.Transaction := tAlicuotas.Transaction;
      q.SQL.Add('Select Max(IdAlicuota) as Ultimo ');
      q.SQL.Add('From Alicuotas ');
      q.Open;
      AlicuotasIdAlicuota.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;  
end;

procedure TdmGestion.MotivosNCBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if MotivosNC.State in [dsInsert] then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbGestion;
      q.Transaction := tMotivosNC.Transaction;
      q.SQL.Add('Select Max(IDMOTNC) as Ultimo ');
      q.SQL.Add('From MotivosNC ');
      q.Open;
      MotivosNCIDMOTNC.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;
end;

procedure TdmGestion.MotivosBJBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if MotivosBJ.State in [dsInsert] then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbGestion;
      q.Transaction := tMotivosBJ.Transaction;
      q.SQL.Add('Select Max(IDMOTBJ) as Ultimo ');
      q.SQL.Add('From MotivosBJ ');
      q.Open;
      MotivosBJIDMOTBJ.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;
end;

procedure TdmGestion.MotivosAJBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if MotivosAJ.State in [dsInsert] then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbGestion;
      q.Transaction := tMotivosAJ.Transaction;
      q.SQL.Add('Select Max(IDMOTIVO) as Ultimo ');
      q.SQL.Add('From MotivosAJ ');
      q.Open;
      MotivosAJIDMOTIVO.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;
end;

procedure TdmGestion.IngBrutoBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if IngBruto.State in [dsInsert] then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbGestion;
      q.Transaction := tIngBruto.Transaction;
      q.SQL.Add('Select Max(IdIngBru) as Ultimo ');
      q.SQL.Add('From IngBruto ');
      q.Open;
      IngBrutoIdIngBru.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;
end;

procedure TdmGestion.SubDepBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if SubDep.State in [dsInsert] then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbGestion;
      q.Transaction := tSubDep.Transaction;
      q.SQL.Add('Select Max(IDSUBDEP) as Ultimo ');
      q.SQL.Add('From SubDep ');
      q.Open;
      SubDepIDSUBDEP.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;
end;

procedure TdmGestion.SucursalesAfterPost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if Sucursales.State in [dsInsert] then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := tSucursales.Transaction;
      q.SQL.Add('Select Max(IdSucursal) as Ultimo ');
      q.SQL.Add('From Sucursales ');
      q.Open;
      SucursalesIdSucursal.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;

  if (SucursalesRemota.AsInteger = Verdadero) and
     (Trim(SucursalesDetSuc.AsString) = Vacio) then
  begin
    raise EUsuario.Create('debe ingresar una denominación de 2 letras para la sucursal.-');
  end;

  if not trGestion.InTransaction then
    trGestion.StartTransaction;
  try
    if Sucursales.ApplyUpdates(0) > 0 then
      Abort;
    trGestion.Commit;
  except
    trGestion.Rollback;
  end;
end;

procedure TdmGestion.MPAccesosBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if MPAccesos.State in [dsInsert] then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbGestion;
      q.Transaction := tMPAccesos.Transaction;
      q.SQL.Add('Select Max(IDMENU) as Ultimo ');
      q.SQL.Add('From MenuAcces ');
      q.Open;
      MPAccesosIDMENU.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;
end;

procedure TdmGestion.FVAccesosBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if FVAccesos.State in [dsInsert] then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbGestion;
      q.Transaction := tFVAccesos.Transaction;
      q.SQL.Add('Select Max(IDMENU) as Ultimo ');
      q.SQL.Add('From FVenAcces ');
      q.Open;
      FVAccesosIDMENU.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;
end;

procedure TdmGestion.RegImpBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if RegImp.State in [dsInsert] then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbGestion;
      q.Transaction := tRegImp.Transaction;
      q.SQL.Add('Select Max(IDREGIMEN) as Ultimo ');
      q.SQL.Add('From REGIMENIMP');
      q.Open;
      RegImpIDREGIMEN.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
  end;
end;

end.
