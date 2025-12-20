unit uABMArticulos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ComCtrls, DBCtrls, Mask, ExtCtrls, Buttons, Db,
  Variants, wwSpeedButton, wwDBNavigator, wwclearpanel, wwDialog, Wwfltdlg, wwidlg,
  Wwlocate, wwdblook, Wwdbigrd, Wwdbgrid, wwdbdatetimepicker, wwdbedit, Wwdotdot,
  Wwdbcomb, wwclearbuttongroup, wwradiogroup, wwcheckbox, ImgList, RzTabs, RzButton,
  RzPanel, RzBmpBtn, RzRadGrp, RzDBRGrp, MDOTable, MDOCustomDataSet, MDOQuery, uTools,
  Menus, RzRadChk, RzDBChk, RzBorder, MDODatabase, RzEdit, RzCmboBx, ppDB, ppDBPipe,
  ppCtrls, ppBands, ppClass, ppVar, Math, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppStrtch, ppSubRpt, Provider, DBClient, DateUtils, RzDBEdit,
  RzBtnEdt, Series, TeEngine, TeeProcs, Chart, DbChart, Wwdbspin, RzLabel, RzSpnEdt,
  ShellApi, RzTreeVw, RzSplit;

type
  TfrmABMArticulos = class(TForm)
    trArticulos: TMDOTransaction;

    dsqGrupos: TDataSource;
    qGrupos: TMDOQuery;
    qGruposIDAREA: TIntegerField;
    qGruposIdGrupo: TIntegerField;
    qGruposGrupo: TStringField;

    dsqSubGrupos: TDataSource;
    qSubGrupos: TMDOQuery;
    qSubGruposIDAREA: TIntegerField;
    qSubGruposIdGrupo: TIntegerField;
    qSubGruposIdSubGrupo: TIntegerField;
    qSubGruposSubGrupo: TStringField;

    dsqArticulos: TDataSource;
    qArticulos: TMDODataSet;
    qArticulosIDAREA: TIntegerField;
    qArticulosIDARTICULO: TIntegerField;
    qArticulosIDGRUPO: TIntegerField;
    qArticulosIDSUBGRUPO: TIntegerField;
    qArticulosMARCA: TMDOStringField;
    qArticulosDETALLE: TMDOStringField;
    qArticulosCODBARRA: TMDOStringField;
    qArticulosIDCOLOR: TSmallintField;
    qArticulosACTIVO: TSmallintField;
    qArticulosTIENETALLE: TSmallintField;
    qArticulosOFERTA: TSmallintField;
    qArticulosDUROFERTA: TDateField;
    qArticulosESTILOFAC: TIntegerField;
    qArticulosSERVICIO: TSmallintField;
    qArticulosCOSTO: TMDOBCDField;
    qArticulosCOSTOANT: TMDOBCDField;
    qArticulosPNETO: TMDOBCDField;
    qArticulosPBASE: TMDOBCDField;
    qArticulosGANANCIA: TMDOBCDField;
    qArticulosPRECIO: TMDOBCDField;
    qArticulosPRECIOANT: TMDOBCDField;
    qArticulosALCIVA: TIntegerField;
    qArticulosALCIB: TIntegerField;
    qArticulosIMPINT: TMDOBCDField;
    qArticulosEXENTO: TMDOBCDField;
    qArticulosFECHAALTA: TDateField;
    qArticulosIDMARKUP: TIntegerField;
    qArticulosTSINSTOCK: TSmallintField;
    qArticulosUSUARIO: TIntegerField;
    qArticulosNOMUSUARIO: TMDOStringField;
    qArticulosCOLOR: TMDOStringField;
    qArticulosDETALLEAREA: TMDOStringField;
    qArticulosDETALLEGRUPO: TMDOStringField;
    qArticulosDETALLESUBGR: TMDOStringField;
    qArticulosCOEFMARKUP: TMDOBCDField;
    qArticulosESKIT: TSmallintField;
    qArticulosFECHAMOD: TDateField;
    qArticulosIDEMPRESA: TIntegerField;

    dsqProvByArt: TDataSource;
    qProvByArt: TMDOQuery;
    qProvByArtIDPROV: TIntegerField;
    qProvByArtNOMPRO: TMDOStringField;
    qProvByArtDETART: TMDOStringField;
    qProvByArtULTCMP: TDateField;
    qProvByArtPRECIO: TMDOBCDField;
    qProvByArtDESCUENTO: TMDOBCDField;
    qProvByArtCANTIDAD: TMDOBCDField;
    qProvByArtIDFACTURA: TIntegerField;
    qProvByArtIDSUCURSAL: TIntegerField;
    qProvByArtIDPUNTOVTA: TIntegerField;
    qProvByArtIDEMPRESA: TIntegerField;

    dsqStockArt: TDataSource;
    qStock: TMDOQuery;
    qStockIDSTOCK: TIntegerField;
    qStockACTUAL: TMDOBCDField;
    qStockNOMBRESUC: TMDOStringField;

    dsqStkInv: TDataSource;
    qStkInv: TMDOQuery;
    qStkInvSTKAINV: TMDOBCDField;
    qStkInvFECHAINV: TDateField;
    qStkInvNOMBRESUC: TMDOStringField;

    dsqStockArtTalles: TDataSource;
    qStockArtTalles: TMDOQuery;
    qStockArtTallesACTUAL: TMDOBCDField;
    qStockArtTallesTALLE: TIntegerField;

    dsqOfertas: TDataSource;
    qOfertas: TMDOQuery;
    qOfertasIDARTICULO: TIntegerField;
    qOfertasCANTCTAS: TIntegerField;
    qOfertasIDSUCURSAL: TIntegerField;
    qOfertasFECHAALTA: TDateField;
    qOfertasFECHAFIN: TDateField;
    qOfertasPRECIO: TMDOBCDField;
    qOfertasVALORCTAS: TMDOBCDField;
    qOfertasDETART: TMDOStringField;
    qOfertasDETSUC: TMDOStringField;

    qExpProd: TMDOQuery;
    qExpProdIDARTICULO: TIntegerField;
    qExpProdMARCA: TMDOStringField;
    qExpProdDETALLE: TMDOStringField;
    qExpProdCOSTO: TMDOBCDField;
    qExpProdPNETO: TMDOBCDField;
    qExpProdPRECIO: TMDOBCDField;
    qExpProdIMPINT: TMDOBCDField;
    qExpProdCODBARRA: TMDOStringField;
    qExpProdEXENTO: TMDOBCDField;
    qExpProdDETMARKUP: TMDOStringField;
    qExpProdGANANCIA: TMDOBCDField;
    qExpProdCOEFALICUOTA: TMDOBCDField;
    qExpProdCOEFIB: TMDOBCDField;
    qExpProdAREA: TMDOStringField;
    qExpProdGRUPO: TMDOStringField;
    qExpProdSUBGRUPO: TMDOStringField;

    dsDetTalles: TDataSource;
    tDet_Talles: TMDOTable;
    tDet_TallesIdValorTalle: TIntegerField;
    tDet_TallesDescripcion: TStringField;

    dspDetTalles: TDataSetProvider;
    Det_Talles: TClientDataSet;
    Det_TallesIdValorTalle: TIntegerField;
    Det_TallesDescripcion: TStringField;

    dsMarcas: TDataSource;
    tMarcas: TMDOTable;
    tMarcasMarca: TStringField;
    tMarcasIDMARCA: TIntegerField;

    dspMarcas: TDataSetProvider;
    Marcas: TClientDataSet;
    MarcasMarca: TStringField;
    MarcasIDMARCA: TIntegerField;

    dsColores: TDataSource;
    tColores: TMDOTable;
    tColoresColor: TStringField;
    tColoresIDCOLOR: TIntegerField;

    dspColores: TDataSetProvider;
    Colores: TClientDataSet;
    ColoresColor: TStringField;
    ColoresIDCOLOR: TIntegerField;

    dsqViewArt: TDataSource;
    qViewArt: TMDOQuery;
    qViewArtIDARTICULO: TIntegerField;
    qViewArtMARCA: TMDOStringField;
    qViewArtDETALLE: TMDOStringField;
    qViewArtPRECIO: TMDOBCDField;
    qViewArtCODBARRA: TMDOStringField;
    qViewArtOFERTA: TSmallintField;
    qViewArtCOLOR: TMDOStringField;
    qViewArtACTIVO: TSmallintField;
    qViewArtACTUAL: TMDOBCDField;

    qChkCodBar: TMDOQuery;
    qChkCodBarCantCod: TIntegerField;

    qLastArt: TMDOQuery;
    qLastArtUltimo: TIntegerField;

    qSetMarkUp: TMDOQuery;
    qSetMarkUpIdMarkUp: TIntegerField;

    dsArtTalles: TDataSource;
    tArtTalles: TMDOTable;
    tArtTallesIdArticulo: TIntegerField;
    tArtTallesTalle: TIntegerField;

    dspArtTalles: TDataSetProvider;
    ArtTalles: TClientDataSet;
    ArtTallesIdArticulo: TIntegerField;
    ArtTallesTalle: TIntegerField;

    dsArtModPrc: TDataSource;
    qArtModPrc: TMDOQuery;
    qArtModPrcNROREMITO: TMDOStringField;
    qArtModPrcFECHAR: TDateField;
    qArtModPrcDIAHORA: TDateTimeField;
    qArtModPrcCOSTOOLD: TMDOBCDField;
    qArtModPrcCOSTONEW: TMDOBCDField;
    qArtModPrcPRECIOOLD: TMDOBCDField;
    qArtModPrcPRECIONEW: TMDOBCDField;
    qArtModPrcDESCCORTA: TMDOStringField;
    qArtModPrcNOMBRE: TMDOStringField;

    dsqAreas: TDataSource;
    qAreas: TMDOQuery;
    qAreasIDAREA: TIntegerField;
    qAreasAREA: TMDOStringField;

    dsqLstPrecios: TDataSource;
    qLstPrecios: TMDOQuery;
    qLstPreciosIDARTICULO: TIntegerField;
    qLstPreciosPRECIO: TMDOBCDField;
    qLstPreciosMARCA: TMDOStringField;
    qLstPreciosDETALLE: TMDOStringField;
    qLstPreciosCODBARRA: TMDOStringField;
    qLstPreciosAREA: TMDOStringField;
    qLstPreciosGRUPO: TMDOStringField;
    qLstPreciosCOLOR: TMDOStringField;
    qLstPreciosSUBGRUPO: TMDOStringField;

    qLstMarcas: TMDOQuery;
    qLstMarcasMARCA: TMDOStringField;

    qLstAreas: TMDOQuery;
    qLstAreasIDAREA: TIntegerField;
    qLstAreasAREA: TMDOStringField;

    qLstGrupos: TMDOQuery;
    qLstGruposIDAREA: TIntegerField;
    qLstGruposIDGRUPO: TIntegerField;
    qLstGruposGRUPO: TMDOStringField;

    qLstSubGr: TMDOQuery;
    qLstSubGrIDAREA: TIntegerField;
    qLstSubGrIDGRUPO: TIntegerField;
    qLstSubGrIDSUBGRUPO: TIntegerField;
    qLstSubGrSUBGRUPO: TMDOStringField;

    dsModPrc: TDataSource;
    qModPrecios: TMDOQuery;

    ModItemsP: TClientDataSet;
    ModItemsPIdArticulo: TIntegerField;
    ModItemsPCodBarra: TStringField;
    ModItemsPDescripcion: TStringField;
    ModItemsPMarca: TStringField;
    ModItemsPColor: TStringField;
    ModItemsPGrupoSubGrupo: TStringField;
    ModItemsPPrecioFinal: TMDOBCDField;
    ModItemsPCodArt: TStringField;
    ModItemsPCantidad: TIntegerField;
    ModItemsPTalle: TIntegerField;

    ModPrc: TClientDataSet;
    ModPrcIDARTICULO: TIntegerField;
    ModPrcMARCA: TStringField;
    ModPrcDETALLE: TStringField;
    ModPrcCOSTO: TBCDField;
    ModPrcFECHAALTA: TDateField;
    ModPrcEXENTO: TBCDField;
    ModPrcIMPINT: TBCDField;
    ModPrcALCIVA: TIntegerField;
    ModPrcIDMARKUP: TIntegerField;
    ModPrcGANANCIA: TBCDField;
    ModPrcPNETO: TBCDField;
    ModPrcPRECIO: TBCDField;
    ModPrcCODBARRA: TStringField;
    ModPrcCOEFMARKUP: TBCDField;
    ModPrcAREA: TStringField;
    ModPrcGRUPO: TStringField;
    ModPrcSUBGRUPO: TStringField;
    ModPrcCOLOR: TStringField;
    ModPrcPRECIOANT: TBCDField;

    dsqLstStk: TDataSource;

    qLstProv: TMDOQuery;
    qLstProvIDPROVEEDOR: TIntegerField;
    qLstProvNOMBRE: TMDOStringField;
    qLstProvNOMBREFANTASIA: TMDOStringField;
    dsqAreasVStk: TDataSource;
    qAreasVStk: TMDOQuery;
    qAreasVStkAREA: TMDOStringField;
    qAreasVStkGRUPO: TMDOStringField;
    qAreasVStkSUBGRUPO: TMDOStringField;
    qAreasVStkNOMBRESUC: TMDOStringField;
    qAreasVStkIDAREA: TIntegerField;
    qAreasVStkIDGRUPO: TIntegerField;
    qAreasVStkIDSUBGRUPO: TIntegerField;

    dsqLstVStk: TDataSource;
    qLstVStk: TMDOQuery;

    qLstStk: TMDOQuery;
    qLstStkIdArticulo: TIntegerField;
    qLstStkMarca: TStringField;
    qLstStkDetalle: TStringField;
    qLstStkCodBarra: TStringField;
    qLstStkAREA: TMDOStringField;
    qLstStkGrupo: TStringField;
    qLstStkSubGrupo: TStringField;
    qLstStkColor: TStringField;
    qLstStkUEnvio: TDateField;
    qLstStkPRECIO: TMDOBCDField;
    qLstStkACTUAL: TMDOBCDField;
    qLstStkUVENTA: TDateField;

    dsqProdComprados: TDataSource;
    qProdComprados: TMDOQuery;
    qProdCompradosGRUPO: TMDOStringField;
    qProdCompradosSUBGRUPO: TMDOStringField;
    qProdCompradosNOMBRE: TMDOStringField;
    qProdCompradosFECHAF: TDateField;
    qProdCompradosTCOMP: TMDOStringField;
    qProdCompradosNROFACTURA: TMDOStringField;
    qProdCompradosIDARTICULO: TIntegerField;
    qProdCompradosCANTIDAD: TMDOBCDField;
    qProdCompradosPRECIOFINAL: TMDOBCDField;
    qProdCompradosIDSUCURSAL: TIntegerField;
    qProdCompradosIDFACTURA: TIntegerField;
    qProdCompradosIDPUNTOVENTA: TIntegerField;
    qProdCompradosAREA: TMDOStringField;
    qProdCompradosMARCA: TMDOStringField;
    qProdCompradosDETALLE: TMDOStringField;
    qProdCompradosCOLOR: TMDOStringField;
    qProdCompradosIDPROVEEDOR: TIntegerField;
    qProdCompradosTOTCANT: TMDOBCDField;
    qProdCompradosTOTCOMP: TMDOBCDField;

    dsqItemsTotales: TDataSource;
    qItemsTotales: TMDOQuery;
    qItemsTotalesAREA: TMDOStringField;
    qItemsTotalesGRUPO: TMDOStringField;
    qItemsTotalesSUBGRUPO: TMDOStringField;
    qItemsTotalesIDARTICULO: TIntegerField;
    qItemsTotalesMARCA: TMDOStringField;
    qItemsTotalesDETALLE: TMDOStringField;
    qItemsTotalesCOLOR: TMDOStringField;
    qItemsTotalesCANTIDAD: TMDOBCDField;
    qItemsTotalesTOTAL: TMDOBCDField;
    qItemsTotalesDETSUC: TMDOStringField;

    qItemsDetallado: TMDOQuery;
    qItemsDetalladoAREA: TMDOStringField;
    qItemsDetalladoGRUPO: TMDOStringField;
    qItemsDetalladoSUBGRUPO: TMDOStringField;
    qItemsDetalladoIDARTICULO: TIntegerField;
    qItemsDetalladoMARCA: TMDOStringField;
    qItemsDetalladoDETALLE: TMDOStringField;
    qItemsDetalladoCOLOR: TMDOStringField;
    qItemsDetalladoCANTIDAD: TMDOBCDField;
    qItemsDetalladoPRECIOTOTAL: TMDOBCDField;
    qItemsDetalladoNROFACTURA: TMDOStringField;
    qItemsDetalladoNOMBRE: TMDOStringField;
    qItemsDetalladoOFERTA: TIntegerField;
    qItemsDetalladoIDPUNTOVENTA: TIntegerField;
    qItemsDetalladoIDSUCURSAL: TIntegerField;
    qItemsDetalladoIDFACTURA: TIntegerField;
    qItemsDetalladoDETSUC: TMDOStringField;
    qItemsDetalladoFECHAF: TDateField;

    dsqItemsEnvios: TDataSource;
    qItemsEnvios: TMDOQuery;
    qItemsEnviosIdArticulo: TIntegerField;
    qItemsEnviosIdSucursalD: TIntegerField;
    qItemsEnviosMarca: TStringField;
    qItemsEnviosDetalle: TStringField;
    qItemsEnviosGrupo: TStringField;
    qItemsEnviosSubGrupo: TStringField;
    qItemsEnviosCANTIDAD: TMDOBCDField;
    qItemsEnviosPRECIOTOTAL: TMDOBCDField;
    qItemsEnviosIDSUCURSALO: TIntegerField;
    qItemsEnviosFECHAF: TDateField;
    qItemsEnviosSUCORI: TMDOStringField;
    qItemsEnviosSUCDES: TMDOStringField;
    qItemsEnviosIDFACTURA: TIntegerField;
    qItemsEnviosIDSUCURSAL: TIntegerField;

    dstAreas: TDataSource;
    tAreas: TMDOTable;
    tAreasIDAREA: TIntegerField;
    tAreasAREA: TMDOStringField;

    dspAreasGruposSubGrupos: TDataSetProvider;
    dsAreas: TDataSource;
    Areas: TClientDataSet;
    AreasIDAREA: TIntegerField;
    AreasAREA: TStringField;
    AreastGrupos: TDataSetField;

    dstGrupos: TDataSource;
    tGrupos: TMDOTable;
    tGruposIDAREA: TIntegerField;
    tGruposIDGRUPO: TIntegerField;
    tGruposGRUPO: TMDOStringField;

    dsGrupos: TDataSource;
    Grupos: TClientDataSet;
    GruposGrupo: TStringField;
    GruposIDGRUPO: TIntegerField;
    GruposIDAREA: TIntegerField;
    GrupostSubGrupos: TDataSetField;

    qLastGr: TMDOQuery;
    qLastGrULTIMO: TIntegerField;

    dsSubGrupo: TDataSource;
    SubGrupos: TClientDataSet;
    SubGruposSubGrupo: TStringField;
    SubGruposIDAREA: TIntegerField;
    SubGruposIDGRUPO: TIntegerField;
    SubGruposIdSubGrupo: TIntegerField;
    SubGruposIdMarkUp: TIntegerField;
    SubGruposDetMarkUp: TStringField;
    SubGruposMAXDTOCDO: TBCDField;
    SubGruposMAXRNDPRE: TBCDField;
    SubGruposCoefMarkUp: TFloatField;
    SubGruposCOMISION1: TBCDField;
    SubGruposCOMISION2: TBCDField;

    tSubGrupos: TMDOTable;
    tSubGruposIDAREA: TIntegerField;
    tSubGruposIDGRUPO: TIntegerField;
    tSubGruposIDSUBGRUPO: TIntegerField;
    tSubGruposSUBGRUPO: TMDOStringField;
    tSubGruposIDMARKUP: TIntegerField;
    tSubGruposMAXDTOCDO: TMDOBCDField;
    tSubGruposMAXRNDPRE: TMDOBCDField;
    tSubGruposCOMISION1: TMDOBCDField;
    tSubGruposCOMISION2: TMDOBCDField;

    qLastSG: TMDOQuery;
    qLastSGULTIMO: TIntegerField;

    tMarkUp: TMDOTable;
    tMarkUpIDMARKUP: TIntegerField;
    tMarkUpDetMarkUp: TStringField;
    tMarkUpCOEFMARKUP: TMDOBCDField;
    dspMarkUp: TDataSetProvider;
    dsMarkUp: TDataSource;
    MarkUp: TClientDataSet;
    MarkUpIDMARKUP: TIntegerField;
    MarkUpDetMarkUp: TStringField;
    MarkUpCOEFMARKUP: TBCDField;

    qArtModPrcDETALLE: TMDOStringField;
    qArtModPrcCANTCTAS: TSmallintField;
    qArtModPrcIDSUCURSAL: TIntegerField;
    qArtModPrcFECHAALTA: TDateField;
    qArtModPrcFECHAFIN: TDateField;
    qArtModPrcVALORCTAS: TMDOBCDField;

    pmExpProd: TPopupMenu;
    ExpProductos: TMenuItem;
    ExpHistorialPrecios: TMenuItem;
    ExpOfertasVigentes: TMenuItem;
    pcABMProductos: TRzPageControl;
    tsPrd_DatosProd: TRzTabSheet;
    tsPrd_InfStock: TRzTabSheet;
    dbLstPre: TppDBPipeline;
    lstPrecios: TppReport;
    hbPrecios: TppHeaderBand;
    lblTitulo: TppLabel;
    lblEmpresa: TppLabel;
    dbPSubGr: TppDetailBand;
    lblCodBar: TppDBText;
    lblDetMarca: TppDBText;
    lblDetArt: TppDBText;
    lblPrecio: TppDBText;
    lblColor: TppDBText;
    lblIdArt: TppDBText;
    fbPrecios: TppFooterBand;
    lblEmision: TppSystemVariable;
    lblPagina: TppSystemVariable;
    lblPie: TppLabel;
    grGrupo: TppGroup;
    ghbGrupos: TppGroupHeaderBand;
    lblDetGrp: TppDBText;
    gfbGrp: TppGroupFooterBand;
    lnGrp: TppLine;
    grSubGr: TppGroup;
    ghbSubGrp: TppGroupHeaderBand;
    shPSubGrp: TppShape;
    lblDetSubGrp: TppDBText;
    lblCodArt: TppLabel;
    lblPMarArt: TppLabel;
    lblDetalle: TppLabel;
    lblPrec: TppLabel;
    gfbSGrp: TppGroupFooterBand;
    lnSGrp: TppLine;
    dpAreas: TppDBPipeline;
    dpAreasIDAREA: TppField;
    dpAreasAREA: TppField;
    dpGrupos: TppDBPipeline;
    rbppGruposIdGrupo: TppField;
    rbppGruposGrupo: TppField;
    dpSubGr: TppDBPipeline;
    rbppSubGrIdGrupo: TppField;
    rbppSubGrSubGrupo: TppField;
    rbppSubGrIdSubGrupo: TppField;
    rbppSubGrIdMarkUp: TppField;
    rbppSubGrCoefMarkUp: TppField;
    rbppSubGrDetMarkUp: TppField;
    rbppSubGrMaxDtoCdo: TppField;
    rbppSubGrMaxRndPre: TppField;
    lstOrganizacion: TppReport;
    rbbTitulo: TppHeaderBand;
    rbshTitulos: TppShape;
    rblPropietario: TppLabel;
    rblTitulo: TppLabel;
    qrlEmision: TppSystemVariable;
    lblMUp: TppLabel;
    lblDctoCdo: TppLabel;
    lblRndPrc: TppLabel;
    lblGrp: TppLabel;
    lblSubGrp: TppLabel;
    ppLabel2: TppLabel;
    dbGrupos: TppDetailBand;
    shpGrp: TppShape;
    rblIdAreaA: TppDBText;
    lblAreaA: TppDBText;
    srGrupos: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    shGrupos: TppShape;
    lblIdGrupoGr: TppDBText;
    lblGrupoGr: TppDBText;
    lblIdAreaGr: TppDBText;
    rbsdSubGr: TppSubReport;
    rdsdSubGrupo: TppChildReport;
    dbSubGr: TppDetailBand;
    rbshSubGrupos: TppShape;
    lblIdGrupoSG: TppDBText;
    rblSubGrupoSG: TppDBText;
    lblIdSubGrupoSG: TppDBText;
    lblCoefMU: TppDBText;
    lblDctoC: TppDBText;
    lblRdn: TppDBText;
    lblIdAreaSG: TppDBText;
    tsPrd_TareasUtiles: TRzTabSheet;
    gbHeadMP: TRzGroupBox;
    lblModGrupo: TLabel;
    lblModSubGr: TLabel;
    lblProveedor: TLabel;
    bvlMod1: TBevel;
    bvlMod2: TBevel;
    bvlMod3: TBevel;
    lblModDesde: TLabel;
    lblModCantProd: TLabel;
    lblModDifMrk: TLabel;
    lblBusMar: TLabel;
    lblModArea: TLabel;
    cbModGrupos: TRzComboBox;
    cbModSubGrupos: TRzComboBox;
    btnModBuscar: TRzBitBtn;
    btnGrabarModificaciones: TRzBitBtn;
    btnModExportar: TRzBitBtn;
    cbModProv: TRzComboBox;
    btnModChangePrecios: TRzBitBtn;
    gbModPrc: TRzGroupBox;
    edtModPrc: TRzNumericEdit;
    btnModPrcPrecios: TRzBitBtn;
    btnModCodBar: TRzBitBtn;
    btnModImprimir: TRzBitBtn;
    cbModMarca: TRzComboBox;
    cbModArea: TRzComboBox;
    gModPrecios: TwwDBGrid;
    dspModPrc: TDataSetProvider;
    ppNewPrec: TppDBPipeline;
    rpNewPrec: TppReport;
    ppHeaderBand1: TppHeaderBand;
    shpNP1: TppShape;
    lblTituloNP: TppLabel;
    lblCodigoNP: TppLabel;
    lblProductoNP: TppLabel;
    lbPrecioProd: TppLabel;
    ppDetailBand3: TppDetailBand;
    lblNPCodigo: TppDBText;
    lblNPMarca: TppDBText;
    lblNPDetArt: TppDBText;
    lblNPPreAnt: TppDBText;
    lblNPColArt: TppDBText;
    lnDetProd: TppLine;
    ppFooterBand1: TppFooterBand;
    shpPie: TppShape;
    ppSystemVariable1: TppSystemVariable;
    pnlHeadStk: TRzPanel;
    lblStkDeposito: TLabel;
    lblStkNDep: TLabel;
    lblStkGrupo: TLabel;
    lblStkSubGr: TLabel;
    lblStkMarca: TLabel;
    lblStkArea: TLabel;
    btnStkCalcular: TRzBitBtn;
    cbStkDeposito: TRzComboBox;
    rgStkCant: TRzRadioGroup;
    rgStkTalles: TRzRadioGroup;
    btnStkMovStk: TRzBitBtn;
    cbStkGrupos: TRzComboBox;
    cbStkSubGrupos: TRzComboBox;
    cbStkMarca: TRzComboBox;
    cbStkArea: TRzComboBox;
    dbLstStk: TppDBPipeline;
    lstStock: TppReport;
    hbLstStk: TppHeaderBand;
    lblStkTitulo: TppLabel;
    lblStkEmpresa: TppLabel;
    dbArts: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    lblActual: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    lblActualT: TppDBText;
    lblTalle: TppDBText;
    lblFUltE: TppDBText;
    shpAudit: TppShape;
    fbLstStk: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppGroup3: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    lblDetGrupo: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    lnLstStk2: TppLine;
    ppGroup4: TppGroup;
    ghbArts: TppGroupHeaderBand;
    shpLstStk: TppShape;
    lblDetSubG: TppDBText;
    lblTCodArt: TppLabel;
    lblTMarca: TppLabel;
    lblTDetalle: TppLabel;
    lblTPrecio: TppLabel;
    lblTStock: TppLabel;
    lblTN: TppLabel;
    lblStkTN: TppLabel;
    lblFUEnv: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    lnLstStk1: TppLine;
    grArea: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    gfbPAreas: TppGroupFooterBand;
    lblDetArea: TppDBText;
    shPArea: TppShape;
    ppGroup6: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape2: TppShape;
    lblDetAreaStk: TppDBText;
    ppLine1: TppLine;
    cbxModConStk: TRzCheckBox;
    tsPrd_InfoVrs: TRzTabSheet;
    pcInfProd: TRzPageControl;
    tsInfComprados: TRzTabSheet;
    tsInfVendidos: TRzTabSheet;
    pnlInfComprados: TRzPanel;
    lblDesdeCom: TLabel;
    lblHastaCom: TLabel;
    lblProdCom: TLabel;
    lblDetProdCom: TLabel;
    edtDesdeCom: TRzDateTimeEdit;
    edtHastaCom: TRzDateTimeEdit;
    btnCalcularCom: TRzBitBtn;
    btnExportarCom: TRzBitBtn;
    edtPrdCom: TRzEdit;
    pnlInf_Vta: TRzPanel;
    lblSucVta: TLabel;
    edtDesdeVta: TRzDateTimeEdit;
    edtHastaVta: TRzDateTimeEdit;
    lblDesdeVta: TLabel;
    lblHastaVta: TLabel;
    btnExpVta: TRzBitBtn;
    btnCalcularVta: TRzBitBtn;
    cbSucVta: TRzComboBox;
    btnInfVta: TRzBitBtn;
    lblCualAreaVta: TLabel;
    cbAreasVta: TRzComboBox;
    pcInfPrdVta: TRzPageControl;
    tsVtaTotales: TRzTabSheet;
    gInfPrdVta: TwwDBGrid;
    tsVtaDetallado: TRzTabSheet;
    gInfDetVta: TwwDBGrid;
    rpInfProdVtas: TppReport;
    ppHeaderBandIV: TppHeaderBand;
    lblTituloVta1: TppLabel;
    lblTituloVta2: TppLabel;
    lblEmisionVta: TppSystemVariable;
    lblPagVta: TppSystemVariable;
    ppDetailBandIV: TppDetailBand;
    lblCodVta: TppDBText;
    lblMarVta: TppDBText;
    lblCantVta: TppDBText;
    lblTotVen: TppDBText;
    lblColorVta: TppDBText;
    lblCodBVta: TppDBText;
    lblDetVta: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBandIV: TppSummaryBand;
    ppShapeIV3: TppShape;
    lblTotalVta: TppLabel;
    ppGroup7: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppShapeIV1: TppShape;
    lblGrupoVta: TppDBText;
    lblTotGrpVta: TppDBCalc;
    lblGrpVta: TppLabel;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppShapeIV2: TppShape;
    lblSubGrupoVta: TppDBText;
    lblTotSGrpVta: TppDBCalc;
    lblSGrVta: TppLabel;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppProdVta: TppDBPipeline;
    dsqItemsDetallado: TDataSource;
    tsInfTranferidos: TRzTabSheet;
    pnlTransTop: TRzPanel;
    lblDesdeTrf: TLabel;
    lblHastaTrf: TLabel;
    lblSucTrf: TLabel;
    btnCalcularTrf: TRzBitBtn;
    btnImpTrf: TRzBitBtn;
    btnExpTrf: TRzBitBtn;
    edtDesdeTrf: TRzDateTimeEdit;
    edtHastaTrf: TRzDateTimeEdit;
    gEnvios: TwwDBGrid;
    ppTransferencias: TppReport;
    ppHBTranf: TppHeaderBand;
    ppShape4: TppShape;
    lblTitTransf1: TppLabel;
    lblTitTransf2: TppLabel;
    lblPaginaTransf: TppSystemVariable;
    ppDBTransf: TppDetailBand;
    ppFBTransf: TppFooterBand;
    lblEmisionTransf: TppSystemVariable;
    dbpTransferencias: TppDBPipeline;
    cbSucTrf: TRzComboBox;
    qItemsEnviosAREA: TMDOStringField;
    ppGroup9: TppGroup;
    ppGHBTransf: TppGroupHeaderBand;
    ppGFBTransf: TppGroupFooterBand;
    lblSucTransf: TppDBText;
    lblCodeTransf: TppDBText;
    lblMarTransf: TppDBText;
    lblDetTransf: TppDBText;
    lblCantTransf: TppDBText;
    lblPrecTransf: TppDBText;
    lblTotalSucTransf: TppDBCalc;
    ppShape3: TppShape;
    lblTotTransSuc: TppLabel;
    ppLine2: TppLine;
    ppGroup10: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    lblAreaVta: TppDBText;
    lblTotAreaVta: TppDBCalc;
    ppShape5: TppShape;
    pnlFootProd: TRzPanel;
    btnSalirProd: TRzBitBtn;
    pcInfStk: TRzPageControl;
    tsStkPorSucursal: TRzTabSheet;
    tsStkValorizado: TRzTabSheet;
    tsStkAreasVal: TRzTabSheet;
    gLstStk: TwwDBGrid;
    lstVStock: TppReport;
    hbTVStk: TppHeaderBand;
    lblTVTitulo: TppLabel;
    lblTVEmpresa: TppLabel;
    lblVNPagina: TppSystemVariable;
    dbProd: TppDetailBand;
    lblVMarArt: TppDBText;
    lblVDetArt: TppDBText;
    lblPreArt: TppDBText;
    lblVActual: TppDBText;
    ppDBText16: TppDBText;
    lblVCodArt: TppDBText;
    lblVCto: TppDBText;
    lblVNet: TppDBText;
    lblFinal: TppDBText;
    lblCosto: TppDBText;
    lblGanancia: TppDBText;
    sbVStk: TppSummaryBand;
    shVStock4: TppShape;
    lblTotCosto: TppDBCalc;
    lblTotVNeto: TppDBCalc;
    lblTotVFinal: TppDBCalc;
    lblTValor: TppLabel;
    lblVEmision: TppSystemVariable;
    ppGroup11: TppGroup;
    ghbGrp: TppGroupHeaderBand;
    lblVGrupo: TppDBText;
    gbbSubGr: TppGroupFooterBand;
    pplTGrp: TppLine;
    lblTGrFinal: TppDBCalc;
    lblTGrNeto: TppDBCalc;
    lblTGrCosto: TppDBCalc;
    lblTGrActual: TppDBCalc;
    lblTGrp: TppLabel;
    ppGroup12: TppGroup;
    ghbSubGR: TppGroupHeaderBand;
    lblVSubGr: TppDBText;
    lblVCod: TppLabel;
    lblVMar: TppLabel;
    llblVDet: TppLabel;
    lblVPreArt: TppLabel;
    lblVStk: TppLabel;
    lblVCosto: TppLabel;
    lblVNeto: TppLabel;
    lblPFinal: TppLabel;
    lblValorizacion: TppLabel;
    lblVDetMU: TppDBText;
    lblVCoefMU: TppDBText;
    lblVPrcPub: TppLabel;
    lblVPCosto: TppLabel;
    gfbSubGr: TppGroupFooterBand;
    lblTSGFinal: TppDBCalc;
    lblTSGNeto: TppDBCalc;
    lblTSGCosto: TppDBCalc;
    lblTSGActual: TppDBCalc;
    lblTSubG: TppLabel;
    gVStock: TwwDBGrid;
    gTotStk: TwwDBGrid;
    ppVStk: TppDBPipeline;
    pmLstStk: TPopupMenu;
    btnImprimirStk: TRzMenuButton;
    lblPrdInfVta: TLabel;
    edtPrdVta: TRzEdit;
    lblDetProdVen: TLabel;
    LstStockGeneral: TMenuItem;
    LstStockValorizado: TMenuItem;
    ppGroup13: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    lblVArea: TppDBText;
    shVStock1: TppShape;
    lblTArCosto: TppDBCalc;
    lblTArNeto: TppDBCalc;
    lblTArFinal: TppDBCalc;
    lblTDetGrupo: TppDBText;
    lblTDetSubGr: TppDBText;
    shVStock2: TppShape;
    lblTArActual: TppDBCalc;
    shVStock3: TppShape;
    ppShape6: TppShape;
    lnArea: TppLine;
    shPreciosPie: TppShape;
    lblMarcaVta: TLabel;
    cbMarcaVta: TRzComboBox;
    edtModDifMrk: TRzNumericEdit;
    edtModFecNuevos: TRzDateTimeEdit;
    ppGroup1: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    lblAltaModNP: TppLabel;
    lblFechaAltaNP: TppDBText;
    btnSubDepositos: TRzBitBtn;
    lblProvCom: TLabel;
    lblMarcasCom: TLabel;
    cbMarcaCom: TRzComboBox;
    lblSoloOff: TLabel;
    cbVtaSoloOff: TRzComboBox;
    pcProdComprados: TRzPageControl;
    tsCompras: TRzTabSheet;
    gProdComprados: TwwDBGrid;
    InformedeControlStk: TMenuItem;
    btnExportarStk: TRzBitBtn;
    tsStkDistribuido: TRzTabSheet;
    lblNPPrecio: TppDBText;
    lblPrecioAntNP: TppLabel;
    cbxSoloActivos: TRzCheckBox;
    tsPendientesEntrega: TRzTabSheet;
    OrganizacionDeProductos: TMenuItem;
    tsVtaTecnico: TRzTabSheet;
    gProdTec: TwwDBGrid;
    gStkGeneral: TwwDBGrid;

    qStkGral: TMDOQuery;
    dsqStkGral: TDataSource;
    qStkGralIDSTOCK: TIntegerField;
    qStkGralIDARTICULO: TIntegerField;
    qStkGralIDAREA: TIntegerField;
    qStkGralIDGRUPO: TIntegerField;
    qStkGralIDSUBGRUPO: TIntegerField;
    qStkGralMARCA: TMDOStringField;
    qStkGralDETALLE: TMDOStringField;
    qStkGralPRECIO: TMDOBCDField;
    qStkGralCODBUS: TMDOStringField;
    qStkGralACTUAL: TMDOBCDField;

    StkGral: TClientDataSet;

    qPedidos: TMDOQuery;
    qPedidosIdOrdCmp: TIntegerField;
    qPedidosEntidad: TIntegerField;
    qPedidosFechaOC: TDateField;
    qPedidosIdArticulo: TIntegerField;
    qPedidosDetProd: TStringField;
    qPedidosNomEntidad: TStringField;
    qPedidosPRECION: TMDOBCDField;
    qPedidosCANTIDADP: TMDOBCDField;
    qPedidosIMPINT: TMDOBCDField;
    qPedidosPRECIOTOTAL: TMDOBCDField;
    qPedidosPRCBONIF: TMDOBCDField;
    dsqPedidos: TDataSource;
    gPendEntrega: TwwDBGrid;

    qExplorador: TMDOQuery;
    prExplorador: TDataSetProvider;

    dsExplorador: TDataSource;
    Explorador: TClientDataSet;
    ExploradorIDAREA: TIntegerField;
    ExploradorAREA: TStringField;
    ExploradorIDGRUPO: TIntegerField;
    ExploradorGRUPO: TStringField;
    ExploradorIDSUBGRUPO: TIntegerField;
    ExploradorSUBGRUPO: TStringField;

    qBranch: TMDOQuery;
    qBranchNOMBRESUC: TMDOStringField;
    qBranchIDSUCURSAL: TIntegerField;

    dsqTProdVend: TDataSource;
    qTProdVend: TMDOQuery;
    qTProdVendFECHAF: TDateField;
    qTProdVendNROFACTURA: TMDOStringField;
    qTProdVendIDFACTURA: TIntegerField;
    qTProdVendIDSUCURSAL: TIntegerField;
    qTProdVendIDPUNTOVENTA: TIntegerField;
    qTProdVendIDARTICULO: TIntegerField;
    qTProdVendCANTIDAD: TMDOBCDField;
    qTProdVendNROCTAS: TIntegerField;
    qTProdVendOFERTA: TIntegerField;
    qTProdVendMARCA: TMDOStringField;
    qTProdVendDETALLE: TMDOStringField;
    qTProdVendAREA: TMDOStringField;
    qTProdVendGRUPO: TMDOStringField;
    qTProdVendSUBGRUPO: TMDOStringField;
    qTProdVendDETSUC: TMDOStringField;

    qLstVStkIDSTOCK: TIntegerField;
    qLstVStkACTUAL: TMDOBCDField;
    qLstVStkSTKAINV: TMDOBCDField;
    qLstVStkSACTUAL: TMDOBCDField;
    qLstVStkAREA: TMDOStringField;
    qLstVStkGRUPO: TMDOStringField;
    qLstVStkSUBGRUPO: TMDOStringField;
    qLstVStkIDARTICULO: TIntegerField;
    qLstVStkMARCA: TMDOStringField;
    qLstVStkDETALLE: TMDOStringField;
    qLstVStkCOLOR: TMDOStringField;
    qLstVStkNOMBRESUC: TMDOStringField;
    qLstVStkTCOSTO: TMDOBCDField;
    qLstVStkTNETO: TMDOBCDField;
    qLstVStkTPRECIO: TMDOBCDField;
    qLstVStkIDAREA: TIntegerField;
    qLstVStkIDGRUPO: TIntegerField;
    qLstVStkIDSUBGRUPO: TIntegerField;

    qAreasVStkTACOSTO: TMDOBCDField;
    qAreasVStkTANETO: TMDOBCDField;
    qAreasVStkTAPRECIO: TMDOBCDField;
    qAreasVStkTACTUAL: TMDOBCDField;

    qLstStkIDSTOCK: TIntegerField;
    qLstStkIDAREA: TIntegerField;
    qLstStkIDGRUPO: TIntegerField;
    qLstStkIDSUBGRUPO: TIntegerField;
    qLstStkSTKAINV: TMDOBCDField;
    qLstStkSACTUAL: TMDOBCDField;
    qLstStkTALLE: TIntegerField;

    cbxValorizados: TRzCheckBox;

    qItemsDetalladoCODBUSCLI: TMDOStringField;
    qItemsEnviosENCARGADO: TMDOStringField;

    qTProdVendIDAREA: TIntegerField;
    qTProdVendIDGRUPO: TIntegerField;
    qTProdVendIDSUBGRUPO: TIntegerField;
    qTProdVendTCOMP: TMDOStringField;
    qTProdVendPRCBONIFICACION: TMDOBCDField;
    qTProdVendIVAIN: TMDOBCDField;
    qTProdVendDESCUENTO: TMDOBCDField;
    qTProdVendPCOSTO: TMDOBCDField;
    qTProdVendPLISTA: TMDOBCDField;
    qTProdVendDIFFIN: TMDOBCDField;
    qTProdVendPRECIONETO: TMDOBCDField;
    qTProdVendPRECIOTOTAL: TMDOBCDField;
    qTProdVendEXENTO: TMDOBCDField;
    qTProdVendIMPINT: TMDOBCDField;

    pmMenuProd: TPopupMenu;
    cbxSoloInActivos: TRzCheckBox;
    lblEncargadoTransf: TppDBText;
    ppShape1: TppShape;
    qArticulosPRECIO_PP: TMDOBCDField;
    qLstStkDETSUC: TMDOStringField;
    pmProductos: TPopupMenu;
    pcDatosProductos: TRzPageControl;
    tsDef_Prd: TRzTabSheet;
    tsDef_Org: TRzTabSheet;
    gbProducto: TRzGroupBox;
    gProductos: TwwDBGrid;
    pnlNavProd: TRzPanel;
    btnPriorProd: TRzBitBtn;
    btnAgregarProd: TRzBitBtn;
    btnSaveProd: TRzBitBtn;
    btnCopiarProd: TRzBitBtn;
    btnCancelProd: TRzBitBtn;
    btnLastProd: TRzBitBtn;
    btnBuscarProd: TRzBitBtn;
    btnNextProd: TRzBitBtn;
    btnFirstProd: TRzBitBtn;
    btnEditProd: TRzBitBtn;
    btnActualizar: TRzBitBtn;
    btnPrecios: TRzBitBtn;
    btnExportar: TRzMenuButton;
    btnRefrescarMod: TRzBitBtn;
    btnPrdNuevos: TRzBitBtn;
    tsDef_Prm: TRzTabSheet;
    gbParamsProd: TRzGroupBox;
    gMarcas: TwwDBGrid;
    gColores: TwwDBGrid;
    gDefTalles: TwwDBGrid;
    pnlTopOrgArt: TRzPanel;
    gAreas: TwwDBGrid;
    gGrupos: TwwDBGrid;
    gSubGrupos: TwwDBGrid;
    cbDetMarkUp: TwwDBLookupCombo;
    tsInfPrecios: TRzTabSheet;
    pnlSelecLstPre: TRzPanel;
    lblLstGrupo: TLabel;
    lblLstNotaPie: TLabel;
    lblLstSubGr: TLabel;
    lblLstMarArt: TLabel;
    lblLstArea: TLabel;
    lblLstProv: TLabel;
    cbLstGrupos: TRzComboBox;
    btnImprimirLista: TRzBitBtn;
    edtLstPie: TRzEdit;
    cbLstSubGrupos: TRzComboBox;
    btnExportarLista: TRzBitBtn;
    btnArmarLista: TRzBitBtn;
    cbLstMarca: TRzComboBox;
    cbLstArea: TRzComboBox;
    cbLstProv: TRzComboBox;
    gPrecios: TwwDBGrid;
    tsDef_Historial: TRzTabSheet;
    gbHisCamPre: TRzGroupBox;
    gModPrec: TwwDBGrid;
    btnEtiqueta: TRzBitBtn;
    edtProvCmp: TRzNumericEdit;
    lblNomProvCmp: TLabel;
    lblProVta: TLabel;
    edtProVta: TRzNumericEdit;
    qItemsTotalesIDPROVEEDOR: TIntegerField;
    lblNomProvVta: TLabel;
    qItemsDetalladoIDPROVEEDOR: TIntegerField;
    qItemsDetalladoNOMBREPROV: TMDOStringField;
    qItemsTotalesNOMBREPROV: TMDOStringField;
    qTProdVendIDPROVEEDOR: TIntegerField;
    qTProdVendNOMBREPROV: TMDOStringField;
    qItemsEnviosIDPUNTOVENTA: TIntegerField;
    qStockArtTallesIDSTOCK: TIntegerField;
    tsInfVendByCant: TRzTabSheet;
    gProdCant: TwwDBGrid;
    qProdByCant: TMDOQuery;
    dsqProdByCant: TDataSource;
    qProdByCantIDARTICULO: TIntegerField;
    qProdByCantMARCA: TMDOStringField;
    qProdByCantDETALLE: TMDOStringField;
    qProdByCantGRUPO: TMDOStringField;
    qProdByCantSUBGRUPO: TMDOStringField;
    qProdByCantCANTTOTAL: TMDOBCDField;
    qProdByCantAREA: TMDOStringField;
    ModPrcACTUAL: TBCDField;
    ModPrcACTIVO: TSmallintField;
    gbOrgProd: TRzGroupBox;
    spOrgOfe: TSplitter;
    gbProdPfertas: TRzGroupBox;
    gOfertas: TwwDBGrid;
    tvExplorador: TTreeView;
    HistorialDeCompras: TMenuItem;
    gMarkUp: TwwDBGrid;
    qStockFECHACON: TDateField;
    qStockArtTallesNOMBRESUC: TMDOStringField;
    qStockArtTallesFECHACON: TDateField;
    pnlProds: TRzPanel;
    pcProductos: TRzPageControl;
    tsADatosProd: TRzTabSheet;
    gbOrganizacion: TRzGroupBox;
    lblGrupos: TLabel;
    lblSubGrupos: TLabel;
    lblCodBus: TLabel;
    lblArea: TLabel;
    cbGrupos: TwwDBLookupCombo;
    cbSubGrupos: TwwDBLookupCombo;
    edtCodArt: TwwDBEdit;
    edtCodBus: TwwDBEdit;
    cbAreas: TwwDBLookupCombo;
    gbDefinicion: TRzGroupBox;
    lblMarca: TLabel;
    lblDescripcion: TLabel;
    lblPresentacion: TLabel;
    edtDetalle: TwwDBEdit;
    cbMarca: TwwDBLookupCombo;
    cbColores: TwwDBLookupCombo;
    gbImpArt: TRzGroupBox;
    lblAlcIva: TLabel;
    lblImpInt: TLabel;
    lblAlcIB: TLabel;
    lblExento: TLabel;
    lblPreFin: TLabel;
    cbAlcIva: TwwDBLookupCombo;
    edtExento: TwwDBEdit;
    edtImpInt: TwwDBEdit;
    cbAlcIB: TwwDBLookupCombo;
    edtPreFin: TwwDBEdit;
    tsAStockProd: TRzTabSheet;
    gbDefTalles: TRzGroupBox;
    gTalles: TwwDBGrid;
    gbStock: TRzGroupBox;
    gStock: TwwDBGrid;
    ebTalles: TwwExpandButton;
    pnlStkTalles: TRzPanel;
    gStkTalles: TwwDBGrid;
    cbxTalles: TRzDBCheckBox;
    btnMovStk: TRzBitBtn;
    btnPrnCodBar: TRzBitBtn;
    tsAControlProd: TRzTabSheet;
    gbControlArt: TRzGroupBox;
    brDatosArt2: TRzBorder;
    lblGanProd: TLabel;
    lblPreCosto: TLabel;
    lblMarkUp: TLabel;
    lblCtoConIva: TLabel;
    lblCostoConImp: TDBText;
    lblBaseVta: TDBText;
    lblPrcBase: TLabel;
    lblTsinStk: TLabel;
    lblFAlta: TLabel;
    lblUsuario: TDBText;
    lblFecAlta: TDBText;
    lblPreVta: TLabel;
    lblDurOf: TDBText;
    lblPActivo: TLabel;
    lblServicio: TLabel;
    lblOferta: TLabel;
    edtGanancia: TwwDBEdit;
    edtCosto: TwwDBEdit;
    cbMarkUp: TwwDBLookupCombo;
    gbAnteriores: TRzGroupBox;
    lblCtoAnt: TLabel;
    lblPreAnt: TLabel;
    lblCostoAnterior: TDBText;
    lblPrecioAnt: TDBText;
    brDatosArt1: TRzBorder;
    edtPreVta: TwwDBEdit;
    cbActivo: TwwDBComboBox;
    cbServicio: TwwDBComboBox;
    cbOferta: TwwDBComboBox;
    cbTVSinStk: TwwDBComboBox;
    tsAInventarios: TRzTabSheet;
    gbInventario: TRzGroupBox;
    gInventario: TwwDBGrid;
    tsAProvProd: TRzTabSheet;
    gbProvByArt: TRzGroupBox;
    gProveedores: TwwDBGrid;
    qItemsEnviosFLETERO: TMDOStringField;
    qMarArt: TMDOQuery;
    dsqMarArt: TDataSource;
    qMarArtIDMARKUP: TIntegerField;
    qMarArtDETMARKUP: TMDOStringField;
    qMarArtCOEFMARKUP: TMDOBCDField;
    InformeEnTXT: TMenuItem;
    qLstStkTxt: TMDOQuery;
    qLstStkTxtIDARTICULO: TIntegerField;
    qLstStkTxtMARCA: TMDOStringField;
    qLstStkTxtDETALLE: TMDOStringField;
    qLstStkTxtGRUPO: TMDOStringField;
    qLstStkTxtSUBGRUPO: TMDOStringField;
    qLstStkTxtACTUAL: TMDOBCDField;
    qLstStkTxtTALLE: TIntegerField;
    qLstStkTxtPRECIO: TMDOBCDField;
    cbxDistribucion: TRzCheckBox;
    btnCalcArt: TRzBitBtn;
    qProdCompradosDIAHORA: TDateTimeField;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbMarcaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbGruposEnter(Sender: TObject);
    procedure cbSubGruposEnter(Sender: TObject);
    procedure cbMarcaEnter(Sender: TObject);
    procedure edtDetalleEnter(Sender: TObject);
    procedure edtCostoEnter(Sender: TObject);
    procedure edtImpIntEnter(Sender: TObject);
    procedure edtExentoEnter(Sender: TObject);
    procedure cbAlcIvaEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsqArticulosDataChange(Sender: TObject; Field: TField);
    procedure cbAlcIBEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbMarcaExit(Sender: TObject);
    procedure gProveedoresEnter(Sender: TObject);
    procedure gStockEnter(Sender: TObject);
    procedure cbColoresEnter(Sender: TObject);
    procedure gTallesEnter(Sender: TObject);
    procedure tsAControlProdEnter(Sender: TObject);
    procedure edtPreFinEnter(Sender: TObject);
    procedure edtGananciaEnter(Sender: TObject);
    procedure btnMovStkClick(Sender: TObject);
    procedure tsStocksShow(Sender: TObject);
    procedure ebTallesAfterExpand(Sender: TObject);
    procedure gStockDblClick(Sender: TObject);
    procedure edtCostoKeyPress(Sender: TObject; var Key: Char);
    procedure qArticulosIDSUBGRUPOChange(Sender: TField);
    procedure qArticulosIDMARKUPChange(Sender: TField);
    procedure qArticulosIMPINTChange(Sender: TField);
    procedure qArticulosEXENTOValidate(Sender: TField);
    procedure qArticulosAfterScroll(DataSet: TDataSet);
    procedure qArticulosBeforeEdit(DataSet: TDataSet);
    procedure qArticulosNewRecord(DataSet: TDataSet);
    procedure qArticulosBeforePost(DataSet: TDataSet);
    procedure edtCodBusEnter(Sender: TObject);
    procedure gProductosCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure gProductosDblClick(Sender: TObject);
    procedure qStockArtTallesTALLEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure qStockArtTallesTALLESetText(Sender: TField; const Text: String);
    procedure qArticulosAfterPost(DataSet: TDataSet);
    procedure btnCancelProdClick(Sender: TObject);
    procedure btnBuscarProdClick(Sender: TObject);
    procedure btnCopiarProdClick(Sender: TObject);
    procedure btnPreciosClick(Sender: TObject);
    procedure btnFirstProdClick(Sender: TObject);
    procedure btnPriorProdClick(Sender: TObject);
    procedure btnNextProdClick(Sender: TObject);
    procedure btnLastProdClick(Sender: TObject);
    procedure qArticulosAfterOpen(DataSet: TDataSet);
    procedure ExpProductosClick(Sender: TObject);
    procedure ExpHistorialPreciosClick(Sender: TObject);
    procedure btnActualizarClick(Sender: TObject);
    procedure ExpOfertasVigentesClick(Sender: TObject);
    procedure qArticulosAfterClose(DataSet: TDataSet);
    procedure btnAgregarProdClick(Sender: TObject);
    procedure btnEditProdClick(Sender: TObject);
    procedure btnSaveProdClick(Sender: TObject);
    procedure qArticulosBeforeOpen(DataSet: TDataSet);
    procedure gProductosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gOfertasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qArticulosBeforeInsert(DataSet: TDataSet);
    procedure gOfertasDblClick(Sender: TObject);
    procedure gDefListasKeyPress(Sender: TObject; var Key: Char);
    procedure gSubGruposKeyPress(Sender: TObject; var Key: Char);
    procedure gSubGruposColEnter(Sender: TObject);
    procedure cbLstAreaChange(Sender: TObject);
    procedure cbLstAreaEnter(Sender: TObject);
    procedure cbLstGruposEnter(Sender: TObject);
    procedure btnImprimirListaClick(Sender: TObject);
    procedure btnExportarListaClick(Sender: TObject);
    procedure btnArmarListaClick(Sender: TObject);
    procedure gPreciosDblClick(Sender: TObject);
    procedure cbModGruposEnter(Sender: TObject);
    procedure cbModAreaChange(Sender: TObject);
    procedure cbModAreaEnter(Sender: TObject);
    procedure edtModPrcEnter(Sender: TObject);
    procedure edtModPrcKeyPress(Sender: TObject; var Key: Char);
    procedure btnModPrcPreciosClick(Sender: TObject);
    procedure gModPreciosKeyPress(Sender: TObject; var Key: Char);
    procedure btnGrabarModificacionesClick(Sender: TObject);
    procedure btnModExportarClick(Sender: TObject);
    procedure gModPreciosCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure gModPreciosColEnter(Sender: TObject);
    procedure gModPreciosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gModPreciosDblClick(Sender: TObject);
    procedure btnModChangePreciosClick(Sender: TObject);
    procedure btnModCodBarClick(Sender: TObject);
    procedure btnModImprimirClick(Sender: TObject);
    procedure dspModPrcBeforeUpdateRecord(Sender: TObject;
       SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure ModPrcReconcileError(DataSet: TCustomClientDataSet;
       E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure ModPrcCOSTOChange(Sender: TField);
    procedure ModPrcGANANCIAChange(Sender: TField);
    procedure ModPrcPRECIOChange(Sender: TField);
    procedure btnModBuscarClick(Sender: TObject);
    procedure cbStkGruposChange(Sender: TObject);
    procedure btnStkCalcularClick(Sender: TObject);
    procedure qLstStkCTTalleGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure gLstStkUpdateFooter(Sender: TObject);
    procedure gLstStkDblClick(Sender: TObject);
    procedure lblTalleGetText(Sender: TObject; var Text: String);
    procedure btnStkMovStkClick(Sender: TObject);
    procedure cbStkAreaChange(Sender: TObject);
    procedure cbStkAreaEnter(Sender: TObject);
    procedure cbLstGruposChange(Sender: TObject);
    procedure cbStkGruposEnter(Sender: TObject);
    procedure cbModGruposChange(Sender: TObject);
    procedure btnCalcularComClick(Sender: TObject);
    procedure btnExportarComClick(Sender: TObject);
    procedure gProdCompradosUpdateFooter(Sender: TObject);
    procedure edtPrdComKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPrdComExit(Sender: TObject);
    procedure gProdCompradosDblClick(Sender: TObject);
    procedure btnCalcularVtaClick(Sender: TObject);
    procedure btnExpVtaClick(Sender: TObject);
    procedure edtDesdeVtaEnter(Sender: TObject);
    procedure gInfPrdVtaUpdateFooter(Sender: TObject);
    procedure gInfDetVtaUpdateFooter(Sender: TObject);
    procedure btnInfVtaClick(Sender: TObject);
    procedure qItemsDetalladoTALLEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure gInfDetVtaDblClick(Sender: TObject);
    procedure qItemsDetalladoOFERTAGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure btnImpTrfClick(Sender: TObject);
    procedure edtDesdeTrfEnter(Sender: TObject);
    procedure btnCalcularTrfClick(Sender: TObject);
    procedure btnExpTrfClick(Sender: TObject);
    procedure gVStockDblClick(Sender: TObject);
    procedure gVStockUpdateFooter(Sender: TObject);
    procedure edtPrdVtaExit(Sender: TObject);
    procedure edtPrdVtaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure LstStockGeneralClick(Sender: TObject);
    procedure LstStockValorizadoClick(Sender: TObject);
    procedure AreasAfterPost(DataSet: TDataSet);
    procedure GruposAfterEdit(DataSet: TDataSet);
    procedure GruposAfterPost(DataSet: TDataSet);
    procedure GruposNewRecord(DataSet: TDataSet);
    procedure SubGruposBeforePost(DataSet: TDataSet);
    procedure SubGruposCalcFields(DataSet: TDataSet);
    procedure SubGruposNewRecord(DataSet: TDataSet);
    procedure SubGruposAfterPost(DataSet: TDataSet);
    procedure MarkUpAfterPost(DataSet: TDataSet);
    procedure gProdCompradosTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure gInfDetVtaTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure gInfPrdVtaTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure gEnviosDblClick(Sender: TObject);
    procedure gEnviosTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure gLstStkTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure MarcasAfterPost(DataSet: TDataSet);
    procedure ColoresAfterPost(DataSet: TDataSet);
    procedure MarcasBeforePost(DataSet: TDataSet);
    procedure ColoresBeforePost(DataSet: TDataSet);
    procedure ArtTallesTalleGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure ArtTallesTalleSetText(Sender: TField; const Text: String);
    procedure ArtTallesAfterPost(DataSet: TDataSet);
    procedure ArtTallesBeforePost(DataSet: TDataSet);
    procedure ArtTallesNewRecord(DataSet: TDataSet);
    procedure MarkUpBeforePost(DataSet: TDataSet);
    procedure MarkUpReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cbColoresExit(Sender: TObject);
    procedure btnSubDepositosClick(Sender: TObject);
    procedure qArticulosIDARTICULOGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure btnCalculadoraClick(Sender: TObject);
    procedure btnPrdNuevosClick(Sender: TObject);
    procedure cbAreasEnter(Sender: TObject);
    procedure InformedeControlStkClick(Sender: TObject);
    procedure btnExportarStkClick(Sender: TObject);
    procedure qArticulosDUROFERTAGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure gTotStkUpdateFooter(Sender: TObject);
    procedure gPreciosTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure OrganizacionDeProductosClick(Sender: TObject);
    procedure tvExploradorChange(Sender: TObject; Node: TTreeNode);
    procedure gProdTecUpdateFooter(Sender: TObject);
    procedure gProdTecDblClick(Sender: TObject);
    procedure qOfertasDETSUCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qTProdVendOFERTAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure pcABMProductosClose(Sender: TObject; var AllowClose: Boolean);
    procedure qArticulosPRECIO_PPGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnPrnCodBarClick(Sender: TObject);
    procedure edtProvCmpEnter(Sender: TObject);
    procedure edtProvCmpExit(Sender: TObject);
    procedure edtProvCmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtProVtaEnter(Sender: TObject);
    procedure edtProVtaExit(Sender: TObject);
    procedure edtProVtaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPrdVtaEnter(Sender: TObject);
    procedure gStockKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gInventarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gProveedoresKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gProdTecTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure gProdCantTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure tvExploradorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnEtiquetaClick(Sender: TObject);
    procedure cbxSoloActivosClick(Sender: TObject);
    procedure cbxSoloInActivosClick(Sender: TObject);
    procedure HistorialDeComprasClick(Sender: TObject);
    procedure gProveedoresDblClick(Sender: TObject);
    procedure ExploradorAfterScroll(DataSet: TDataSet);
    procedure pcProductosChange(Sender: TObject);
    procedure pcDatosProductosChange(Sender: TObject);
    procedure cbMarkUpEnter(Sender: TObject);
    procedure qArticulosBeforeScroll(DataSet: TDataSet);
    procedure InformeEnTXTClick(Sender: TObject);
    procedure qLstStkTxtMARCAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qLstStkTxtTALLEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cbStkDepositoChange(Sender: TObject);
    procedure btnCalcArtClick(Sender: TObject);
    procedure btnRefrescarModClick(Sender: TObject);
  private
    { Private declarations }
    IdSucPrdVta, IdAreaVta, IdProvCom, IdProdCom, IdProvVen,
    CantProd, CantUnid, IdProdVen, Deposito, Search_InAct, Nivel_OP: Integer;
    TVCosto, TVNeto, TVFinal,
    TotalVta, TotProdCom, Costo_Kit: Currency;
    Buscando_Producto, New_Art, Out_Art,
    SoloOfertas, ModCosto, ModFinal, ModGan,
    ModExt, ModII, In_Art: Boolean;
    CanProdCom: Double;
    Cond_Stk: String;

    FNetoGrupos, FTotal: Currency;
    FCantGrupos: Double;

    PTotNt, PTotIv, PTotDt, PTotDf, PTotII,
    PTotEx, PTotPd, PTotPl, PTotCt: Currency;

    FieldListExplorador: TStringList;

    procedure Open_Tablas;
    procedure Plantar_Arbol(Semilla: Integer);
    procedure Open_Art;
    procedure Open_ViewArt(A, G, S: Integer);
    procedure Habilitar_Mod;
    procedure Que_Se_Puede_Ver;
    procedure List_Prod_Precios(AOrder: String);
    procedure Grabar_Productos_Modificados;
    procedure Buscar_Productos_AModificar;
    procedure Calcular_Stock(AOrder: String);
    procedure Informe_Prod_Comprados(AOrder: String);
    procedure Informe_Prod_Vendidos(AOrder: String);
    procedure Informe_Prod_Transferidos(AOrder: String);

    procedure ArmarTabla_StkGral;
    procedure LlenarTabla_StkGral;
    procedure Ver_Stock_General;

    function ArticulosLast: Integer;
    function ArticulosNext(Act: Integer): Integer;
    function ArticulosPrior(Act: Integer): Integer;
    function ArticulosFirst: Integer;

  public
    { Public declarations }
    Cual_Art: Integer;
  end;

var
  frmABMArticulos: TfrmABMArticulos;

implementation

uses udmGestion, uMovStk, uClaveMod, uChangePrice, uConfiguracion, uImpCodBar,
     udmSaveFile, uViewFacC, uViewFacV, uGestSucursales, uViewFacT, uInfSubDep,
     uNewPrec, uBuscaEmp, uListaSelectTalles, uRecalcularStock, TreeFunc,
     uProveedores, uSearchProd;
(*

Const
  Wiew_Art = 'Select A.IdArticulo, A.Marca, A.Detalle, A.CodBarra, '+
             '       A.Precio, A.Oferta, A.Activo, C.Color, S.Actual '+
             'From Articulos A '+
             'Left outer Join Colores C '+
             '  on C.IdColor = A.IdColor '+
             'Left outer Join StockArt S '+
             '  on S.IdArticulo = A.IdArticulo <CondStk> '+
             'Where (A.IdArea = :IdArea) and '+
             '      (A.IdGrupo = :IdGrupo) And '+
             '      (A.IdSubGrupo = :IdSubGrupo) <CondAct> '+
             'Order By A.IdArea, A.IdGrupo, A.IdSubGrupo, A.Marca, A.Detalle ';

Select A.IdArticulo, A.Marca, A.Detalle, A.CodBarra,
       A.Precio, A.Oferta, A.Activo, C.Color, S.Actual
From Articulos A
Left outer Join Colores C
 on C.IdColor = A.IdColor
Left outer Join StockArt S
 on S.IdArticulo = A.IdArticulo And S.IdStock =
Where (A.IdArea = :IdArea) and
     (A.IdGrupo = :IdGrupo) And
     (A.IdSubGrupo = :IdSubGrupo) <CondAct>
Order By A.IdArea, A.IdGrupo, A.IdSubGrupo, A.Marca, A.Detalle
*)


Type
  TCopyArt = record
    FieldName: String;
    Value: Variant;
  end;

{$R *.DFM}

procedure TfrmABMArticulos.Plantar_Arbol(Semilla: Integer);
var
  i: Integer;
begin
  if Semilla > NoEncontrado then
  begin
    qArticulos.Close;
    qArticulos.ParamByName('IdArticulo').AsInteger := Semilla;
    qArticulos.Open;
    if qArticulos.Locate(qArticulosIDARTICULO.FieldName, Semilla, []) then
    begin
      if not Explorador.Active then
      begin
        Explorador.Open;
        Explorador.First;
      end;

      if not Explorador.IsEmpty then  // Actualizando Arbol de A, G Y S
      begin
        if Explorador.Locate('IdArea;IdGrupo;IdSubGrupo',
                  VarArrayOf([qArticulosIDAREA.AsInteger,
                             qArticulosIDGRUPO.AsInteger,
                             qArticulosIDSUBGRUPO.AsInteger]), []) then
        begin
          For i := 0 to tvExplorador.Items.Count - 1 do
          begin
            if tvExplorador.Items[i].Text = ExploradorSUBGRUPO.AsString then
              tvExplorador.Selected := tvExplorador.Items[i]
          end;
        end;
        tvExplorador.Refresh;
        gProductos.DataSource.DataSet.Locate(gProductos.DataSource.DataSet.FieldByName('IdArticulo').FieldName, Cual_Art, []);
        gProductos.RefreshDisplay;
        Open_ViewArt(qArticulosIDAREA.AsInteger,
                     qArticulosIDGRUPO.AsInteger,
                     qArticulosIDSUBGRUPO.AsInteger);
      end;
    end;
  end;
end;

procedure TfrmABMArticulos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Out_Art := True;
  qArticulos.Close;
  Explorador.Close;
  FieldListExplorador.Free;
  Action := caFree;
end;

procedure TfrmABMArticulos.Habilitar_Mod;
var
  Habilitar: Boolean;
begin
  Habilitar := (Tarea <= Nivel_Mod);
  cbTVSinStk.ReadOnly := Habilitar;
  cbActivo.Visible := Habilitar;
  btnEditProd.Enabled := Habilitar;
  btnCopiarProd.Enabled := Habilitar;
  btnSaveProd.Enabled := Habilitar;
  btnAgregarProd.Enabled := Habilitar;
  btnActualizar.Enabled := (Habilitar and EsRemota);
  btnPrecios.Enabled := Habilitar;
  btnExportar.Enabled := Habilitar;
  btnActualizar.Enabled := EsRemota;
  gStock.ReadOnly := True;
  gStkTalles.ReadOnly := True;
  gProveedores.ReadOnly := True;
  if Tarea <= 1 then
  begin
    edtPreFin.ReadOnly := False;
    edtCosto.ReadOnly := False;
    cbMarkUp.ReadOnly := False;
    edtGanancia.ReadOnly := False;
    cbOferta.ReadOnly := False;
  end
  else begin
    if not New_Art then
      edtPreFin.ReadOnly := True;
    edtCosto.ReadOnly := True;
    cbMarkUp.ReadOnly := True;
    edtGanancia.ReadOnly := True;
    cbOferta.ReadOnly := True;
  end;
  pcProductos.ActivePage := tsADatosProd;
end;

procedure TfrmABMArticulos.HistorialDeComprasClick(Sender: TObject);
begin
  if not qProvByArt.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qProvByArt;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmABMArticulos.Que_Se_Puede_Ver;
var
  Q_Ver: Boolean;
begin
  Nivel_OP := Tarea;
  Q_Ver := (Nivel_OP <= Nivel_Mod);

  tsPrd_DatosProd.TabVisible := True;
    tsADatosProd.TabVisible := True;
      tsDef_Prd.TabVisible := True;
      tsDef_Org.TabVisible := Q_Ver;
      tsDef_Prm.TabVisible := Q_Ver;
      tsDef_Historial.TabVisible := Q_Ver;

    tsAStockProd.TabVisible := True;
    tsAProvProd.TabVisible := Q_Ver;
    tsAControlProd.TabVisible := Q_Ver;
    tsAInventarios.TabVisible := Q_Ver;

  tsPrd_InfStock.TabVisible := True;
    tsStkPorSucursal.TabVisible := True;
    tsStkDistribuido.TabVisible := True;
    cbxValorizados.Visible := Q_Ver;
    tsStkValorizado.TabEnabled := False;
    tsStkAreasVal.TabEnabled := False;

  tsPrd_TareasUtiles.TabVisible := Q_Ver;

  tsPrd_InfoVrs.TabVisible := Q_Ver;
    tsInfVendidos.TabVisible := True;
      tsVtaDetallado.TabVisible := True;
      tsVtaTotales.TabVisible := True;
      tsVtaTecnico.TabVisible := Q_Ver;
    tsInfPrecios.TabVisible := True;
    tsInfTranferidos.TabVisible := True;

    tsInfComprados.TabVisible := Q_Ver;
    tsPendientesEntrega.TabVisible := Q_Ver;
end;

procedure TfrmABMArticulos.FormShow(Sender: TObject);
begin
  if Control_Talles then
  begin
    rgStkTalles.Visible := True;
    ArtTallesTalle.ValidChars := CodChars;
    ebTalles.Enabled := True;
  end
  else begin
    rgStkTalles.Visible := False;
    cbxTalles.Visible := False;
    gbDefTalles.Visible := False;
    ebTalles.Enabled := False;
    pnlStkTalles.Enabled := False;
  end;
  gProductos.Selected.Clear;
  gProductos.Selected.Add('IDARTICULO'#9'5'#9'Código'#9'F');
  gProductos.Selected.Add('MARCA'#9'10'#9'Marca'#9'F');
  gProductos.Selected.Add('DETALLE'#9'35'#9'Detalle'#9'F');
  gProductos.Selected.Add('PRECIO'#9'11'#9'Precio'#9'F');
  gProductos.Selected.Add('ACTUAL'#9'4'#9'Stock'#9'F');

  gPendEntrega.GroupFieldName := 'NomEntidad';
  cbLstArea.Items.Clear;
  cbLstArea.Items.AddObject('<TODOS>', TObject(0));
  cbModArea.Items.Clear;
  cbModArea.Items.AddObject('<TODOS>', TObject(0));
  cbStkArea.Items.Clear;
  cbStkArea.Items.AddObject('<TODOS>', TObject(0));
  cbAreasVta.Items.Clear;
  cbAreasVta.Items.AddObject('<TODOS>', TObject(0));

  qLstAreas.Open;
  qLstAreas.First;
  while not qLstAreas.Eof do
  begin
    cbLstArea.Items.AddObject(qLstAreasAREA.AsString, TObject(qLstAreasIDAREA.AsInteger));
    cbModArea.Items.AddObject(qLstAreasAREA.AsString, TObject(qLstAreasIDAREA.AsInteger));
    cbStkArea.Items.AddObject(qLstAreasAREA.AsString, TObject(qLstAreasIDAREA.AsInteger));
    cbAreasVta.Items.AddObject(qLstAreasAREA.AsString, TObject(qLstAreasIdAREA.AsInteger));
    qLstAreas.Next;
  end;

  cbLstMarca.Items.Clear;
  cbLstMarca.Items.Add('<TODAS>');
  cbMarcaVta.Items.Clear;
  cbMarcaVta.Items.Add('<TODAS>');
  cbMarcaCom.Items.Clear;
  cbMarcaCom.Items.Add('<TODAS>');
  cbModMarca.Items.Clear;
  cbModMarca.Items.Add('<TODAS>');
  cbStkMarca.Items.Clear;
  cbStkMarca.Items.Add('<TODAS>');
  qLstMarcas.Open;
  qLstMarcas.First;
  while not qLstMarcas.Eof do
  begin
    cbLstMarca.Items.Add(qLstMarcasMARCA.AsString);
    cbMarcaCom.Items.Add(qLstMarcasMARCA.AsString);
    cbMarcaVta.Items.Add(qLstMarcasMARCA.AsString);
    cbModMarca.Items.Add(qLstMarcasMARCA.AsString);
    cbStkMarca.Items.Add(qLstMarcasMARCA.AsString);
    qLstMarcas.Next;
  end;

  qLstProv.Close;
  cbLstProv.Items.Clear;
  cbLstProv.Items.AddObject('<TODOS>', TObject(0));
  cbModProv.Items.Clear;
  cbModProv.Items.AddObject('<TODOS>', TObject(0));
  qLstProv.Open;
  qLstProv.First;
  while not qLstProv.Eof do
  begin
    cbLstProv.Items.AddObject(qLstProvNOMBRE.AsString+' '+qLstProvNOMBREFANTASIA.AsString, TObject(qLstProvIDPROVEEDOR.AsInteger));
    cbModProv.Items.AddObject(qLstProvNOMBRE.AsString+' '+qLstProvNOMBREFANTASIA.AsString, TObject(qLstProvIDPROVEEDOR.AsInteger));
    qLstProv.Next;
  end;

  edtLstPie.Text := 'Precios válidos desde ' + DateToStr(Date);
  gPrecios.GroupFieldName := 'Grupo';
  qLstPrecios.Close;
  qLstStk.Close;
  btnExportarStk.Enabled := False;
  btnImprimirStk.Enabled := False;

  TotProdCom := 0;
  edtPrdCom.Text := '0';
  edtDesdeCom.Date := StartOfTheMonth(Date);
  edtHastaCom.Date := Date;
  cbMarcaCom.ItemIndex := 0;
  IdProvCom := 0;
  IdProvVen := 0;

  qProdComprados.Close;
  lblDetProdCom.Caption := ' <TODOS>';

  lblNomProvCmp.Caption := '<TODOS>';
  lblNomProvVta.Caption := '<TODOS>';

  IdSucPrdVta := 0;
  cbAreasVta.ItemIndex := 0;
  IdAreaVta := 0;
  edtDesdeVta.Date := StartOfTheMonth(Date);
  edtHastaVta.Date := Date;
  SoloOfertas := False;
  lblDetProdVen.Caption := ' <TODOS>';
  cbMarcaVta.ItemIndex := 0;

  edtDesdeTrf.Date := StartOfTheMonth(Date);
  edtHastaTrf.Date := Date;
  qItemsEnvios.Close;

  cbLstArea.ItemIndex := 0;
  cbLstGrupos.ItemIndex := 0;
  cbLstSubGrupos.ItemIndex := 0;
  cbLstMarca.ItemIndex := 0;
  cbLstProv.ItemIndex := 0;

  cbModProv.ItemIndex := 0;
  cbModArea.ItemIndex := 0;
  cbModGrupos.ItemIndex := 0;
  cbModSubGrupos.ItemIndex := 0;
  cbModMarca.ItemIndex := 0;
  edtModDifMrk.Text := '0.00';

  cbStkArea.ItemIndex := 0;
  cbStkGrupos.ItemIndex := 0;
  cbStkSubGrupos.ItemIndex := 0;
  cbStkMarca.ItemIndex := 0;
  cbStkDeposito.ItemIndex := 0;
  cbxValorizados.State := cbUnchecked;

  Deposito := IdBranch;
  cbSucVta.Items.Clear;
  cbSucVta.Items.AddObject('<TODAS>', TObject(0));

  cbSucTrf.Items.Clear;
  cbSucTrf.Items.AddObject('<TODAS>', TObject(0));
  cbStkDeposito.Items.Clear;
  cbStkDeposito.Items.AddObject('<TODAS>', TObject(0));

  qBranch.Open;
  qBranch.First;
  while not qBranch.Eof do
  begin
    cbSucVta.Items.AddObject(qBranchNombreSuc.AsString, TObject(qBranchIdSucursal.AsInteger));
    cbSucTrf.Items.AddObject(qBranchNombreSuc.AsString, TObject(qBranchIdSucursal.AsInteger));
    cbStkDeposito.Items.AddObject(qBranchNombreSuc.AsString, TObject(qBranchIdSucursal.AsInteger));
    qBranch.Next;
  end;
  gTotStk.GroupFieldName := 'NombreSuc';
  gVStock.GroupFieldName := 'NombreSuc';
  gEnvios.GroupFieldName := 'NombreSuc';
  gPrecios.GroupFieldName:= 'Grupo';

  qArticulosCosto.DisplayFormat := StringDisplay;
  qArticulosCosto.EditFormat := StringEdit;
  qArticulosPrecio.DisplayFormat := StringDisplay;
  qArticulosPrecio.EditFormat := StringEdit;
  qArticulosPNeto.DisplayFormat := StringDisplay;
  qArticulosPNeto.EditFormat := StringEdit;
  qArticulosPBase.DisplayFormat := StringDisplay;
  qArticulosPBase.EditFormat := StringEdit;
  qArticulosMARCA.ValidChars := CodChars;
  qArticulosDETALLE.ValidChars := CodChars;
  qArticulosCODBARRA.ValidChars := CodChars;

  cbSucVta.ItemIndex := 0;
  cbSucTrf.ItemIndex := 0;
  Open_Art;
end;

procedure TfrmABMArticulos.FormCreate (Sender: TObject);
begin
  qArticulos.Close;
  Buscando_Producto := False;
  Out_Art := False;
  try
    In_Art := True;
    FieldListExplorador := TStringList.Create;
    tvExplorador.Items.BeginUpdate;
    Explorador.Open;
    Explorador.First;
    while not Explorador.Eof do
    begin
      TreeAddItem(tvExplorador, Tree_GetFieldList(FieldListExplorador, 'Area;Grupo;SubGrupo', Explorador), Explorador.getBookmark, False);
      Explorador.Next;
    end;
    FieldListExplorador.Clear;
    tvExplorador.Items.EndUpdate;
  finally
    Que_Se_Puede_Ver;
    In_Art := False;
  end;
end;

procedure TfrmABMArticulos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F3: begin
        if qArticulos.State in dsEditModes then
          qArticulos.Post;
        Cual_Art := Search_Prod(Vacio, Tarea).IdArticulo;
        if Cual_Art > NoEncontrado then
        begin
          Plantar_Arbol(Cual_Art);
        end;
      end;
    VK_F5: Calculadora(Handle);
  end;
end;

procedure TfrmABMArticulos.Open_Tablas;
begin
  New_Art := False;
  if (not btnSalirProd.Focused) or
     (not Out_Art) then
  begin
    try
      if Control_Talles then
      begin
        if not ArtTalles.Active then
          ArtTalles.Open;
        if not Det_Talles.Active then
          Det_Talles.Open;
      end;

      if not qAreas.Active then
        qAreas.Open;
      if not qGrupos.Active then
        qGrupos.Open;
      if not qSubGrupos.Active then
        qSubGrupos.Open;

      if not Colores.Active then
        Colores.Open;

      qOfertas.Close;
      qOfertas.ParamByName('IdSuc').AsInteger := IdBranch;
      qOfertas.Open;
      if qOfertas.IsEmpty then
      begin
        qOfertas.Close;
        gOfertas.Enabled := False;
      end;
    except
      on E:Exception do
        raise EUsuario.Create('Productos: '+E.Message);
    end;
  end;
end;

procedure TfrmABMArticulos.Open_ViewArt(A, G, S: Integer);
begin
  if Not In_Art then
  begin
    qViewArt.Close;
    qViewArt.ParamByName('IdArea').AsInteger := A;
    qViewArt.ParamByName('IdGrupo').AsInteger := G;
    qViewArt.ParamByName('IdSubGrupo').AsInteger := S;
    qViewArt.ParamByName('IdStock').AsInteger := IdBranch;
    if Nivel_OP <= Nivel_Mod then
      qViewArt.ParamByName('In_Act').AsInteger := 0
    else
      qViewArt.ParamByName('In_Act').AsInteger := 1;
    qViewArt.Open;
  end;
end;

procedure TfrmABMArticulos.Open_Art;
begin
  try
    Screen.Cursor := crSQLWait;
    if Cual_Art = 0 then
      Cual_Art := 1;
    qArticulos.Close;
    qArticulos.ParamByName('IdArticulo').AsInteger := Cual_Art;
    qArticulos.Open;
    Plantar_Arbol(Cual_Art);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmABMArticulos.tvExploradorChange(Sender: TObject; Node: TTreeNode);
begin
  dsExplorador.Enabled := (Node.data <> nil);
  if dsExplorador.Enabled then
    Explorador.GotoBookmark(node.data);
end;

procedure TfrmABMArticulos.tvExploradorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F3: begin
        if qArticulos.State in dsEditModes then
          qArticulos.Post;
        Cual_Art := Search_Prod(Vacio, Tarea).IdArticulo;
        if Cual_Art > NoEncontrado then
          Plantar_Arbol(Cual_Art);
      end;
    VK_F5: Calculadora(Handle);
  end;
end;

function TfrmABMArticulos.ArticulosLast: Integer;
var
  q: TMDOQuery;
begin
  Result := 1;
  try
    q := TMDOQuery.Create(nil);
    q.Database := qArticulos.Database;
    q.Transaction := qArticulos.Transaction;
    q.SQL.Add('Select Max(IDARTICULO) ');
    q.SQL.Add('From ARTICULOS ');
    q.Open;
    Result := q.Fields[0].AsInteger;
  finally
    q.Free;
  end;
end;

function TfrmABMArticulos.ArticulosNext(Act: Integer): Integer;
var
  q: TMDOQuery;
begin
  Result := 1;
  try
    q := TMDOQuery.Create(nil);
    q.Database := qArticulos.Database;
    q.Transaction := qArticulos.Transaction;
    q.SQL.Add('Select Min(IDARTICULO) ');
    q.SQL.Add('From ARTICULOS ');
    q.SQL.Add('Where IDARTICULO > :Act ');
    q.ParamByName('Act').AsInteger := Act;
    q.Open;
    if q.Fields[0].AsInteger = 0 then
      Result := Act
    else
      Result := q.Fields[0].AsInteger;
  finally
    q.Free;
  end;
end;

function TfrmABMArticulos.ArticulosPrior(Act: Integer): Integer;
var
  q: TMDOQuery;
begin
  Result := 1;
  try
    q := TMDOQuery.Create(nil);
    q.Database := qArticulos.Database;
    q.Transaction := qArticulos.Transaction;
    q.SQL.Add('Select Max(IDARTICULO) ');
    q.SQL.Add('From ARTICULOS ');
    q.SQL.Add('Where IDARTICULO < :Act ');
    q.ParamByName('Act').AsInteger := Act;
    q.Open;
    if q.Fields[0].AsInteger = 0 then
      Result := Act
    else
      Result := q.Fields[0].AsInteger;
  finally
    q.Free;
  end;
end;

function TfrmABMArticulos.ArticulosFirst: Integer;
var
  q: TMDOQuery;
begin
  Result := 1;
  try
    q := TMDOQuery.Create(nil);
    q.Database := qArticulos.Database;
    q.Transaction := qArticulos.Transaction;
    q.SQL.Add('Select Min(IDARTICULO) ');
    q.SQL.Add('From ARTICULOS ');
    q.Open;
    Result := q.Fields[0].AsInteger;
  finally
    q.Free;
  end;
end;

procedure TfrmABMArticulos.cbMarcaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F3: begin
        if qArticulos.State in dsEditModes then
          qArticulos.Post;
        Cual_Art := Search_Prod(Vacio, Tarea).IdArticulo;
        if Cual_Art > NoEncontrado then
          Plantar_Arbol(Cual_Art);
      end;
    VK_F5: Calculadora(Handle);
    else begin
      {$INCLUDE IyC_NextEdit.INC}
    end;
  end;
end;

procedure TfrmABMArticulos.cbMarkUpEnter(Sender: TObject);
begin
  if not qMarArt.Active then
    qMarArt.Open;
  pnlFootProd.Caption := 'Set de Ganancia del Producto';
end;

procedure TfrmABMArticulos.cbAreasEnter(Sender: TObject);
begin
  pnlFootProd.Caption := 'Area del producto';
end;

procedure TfrmABMArticulos.cbGruposEnter(Sender: TObject);
begin
  pnlFootProd.Caption := 'Grupo del producto';
end;

procedure TfrmABMArticulos.cbSubGruposEnter(Sender: TObject);
begin
  pnlFootProd.Caption := 'Sub_Grupo del producto';
end;

procedure TfrmABMArticulos.cbxSoloActivosClick(Sender: TObject);
begin
  if cbxSoloActivos.State = cbChecked then
    cbxSoloInActivos.Checked := False;
end;

procedure TfrmABMArticulos.cbxSoloInActivosClick(Sender: TObject);
begin
  if cbxSoloInActivos.State = cbChecked then
  begin
    cbxSoloActivos.Checked := False;
  end;
end;

procedure TfrmABMArticulos.cbMarcaEnter(Sender: TObject);
begin
  if not Marcas.Active then
    Marcas.Open;
  pnlFootProd.Caption := 'Marca del producto';
end;

procedure TfrmABMArticulos.edtDetalleEnter(Sender: TObject);
begin
  pnlFootProd.Caption := 'Descripción / detalle del producto';
end;

procedure TfrmABMArticulos.edtCostoEnter(Sender: TObject);
begin
  edtCosto.SelectAll;
  pnlFootProd.Caption := 'Precio de Costo';
end;

procedure TfrmABMArticulos.edtImpIntEnter(Sender: TObject);
begin
  pnlFootProd.Caption := 'Valor Fijo en moneda del Impuesto Interno';
end;

procedure TfrmABMArticulos.edtExentoEnter(Sender: TObject);
begin
  pnlFootProd.Caption := 'Porcentaje de Exento';
end;

procedure TfrmABMArticulos.cbAlcIvaEnter(Sender: TObject);
begin
  pnlFootProd.Caption := 'Tasa de Impuesto al valor agregado (I.V.A.)';
end;

procedure TfrmABMArticulos.edtCodBusEnter(Sender: TObject);
begin
  edtCodBus.SelectAll;
  pnlFootProd.Caption := 'Código de barra utilizado igual al número del producto';
end;

procedure TfrmABMArticulos.cbAlcIBEnter(Sender: TObject);
begin
  pnlFootProd.Caption := 'Alícuota de Impuesto a los Ingresos Brutos';
end;

procedure TfrmABMArticulos.dsqArticulosDataChange(Sender: TObject; Field: TField);
begin
  cbGrupos.RefreshDisplay;
  cbSubGrupos.RefreshDisplay;
  cbColores.RefreshDisplay;
  if qArticulosActivo.AsInteger = Verdadero then
    pnlFootProd.Caption := 'Activo'
  else
    pnlFootProd.Caption := 'Inactivo';
  if qArticulosOferta.AsInteger = Verdadero then
    pnlFootProd.Caption := ' OFERTA '
  else
    pnlFootProd.Caption := Vacio;
  if (Control_Talles) and
     (qArticulosTieneTalle.AsInteger = Verdadero) then
  begin
    pnlFootProd.Caption := pnlFootProd.Caption +' c/T';
    gStock.ControlType.Add('NombreSuc;CustomEdit;ebTalles;F');
  end
  else begin
    gStock.ControlType.Clear;
  end;
  gStock.RefreshDisplay;
end;

procedure TfrmABMArticulos.cbMarcaExit(Sender: TObject);
begin
  if (Trim(cbMarca.Text) > Cero) And
     (qArticulos.State in dsEditModes) then
  begin
    if (not Marcas.Locate(MarcasMarca.FieldName, cbMarca.Text, [])) and
       (Application.MessageBox(PChar(Format('La marca "%s", no existe. ¿La agrega a la base?', [cbMarca.Text])), 'Marcas', MB_ICONQUESTION + MB_YESNO)= IDYES) then
    begin
      Marcas.Append;
      MarcasMarca.AsString := cbMarca.Text;
      Marcas.Post;
    end;
  end;
end;

procedure TfrmABMArticulos.gProveedoresDblClick(Sender: TObject);
begin
  Get_FacC(qProvByArtIDFACTURA.AsInteger,
           qProvByArtIDSUCURSAL.AsInteger,
           qProvByArtIDPUNTOVTA.AsInteger);
end;

procedure TfrmABMArticulos.gProveedoresEnter(Sender: TObject);
begin
  pnlFootProd.Caption := 'Proveedores. ';
end;

procedure TfrmABMArticulos.gProveedoresKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F3: begin
        if qArticulos.State in dsEditModes then
          qArticulos.Post;
        Cual_Art := Search_Prod(Vacio, Tarea).IdArticulo;
        if Cual_Art > NoEncontrado then
          Plantar_Arbol(Cual_Art);
        gProveedores.SetFocus;  
      end;
    VK_F5: Calculadora(Handle);
  end;
end;

procedure TfrmABMArticulos.gStockEnter(Sender: TObject);
begin
  pnlFootProd.Caption := 'Stock por Deposito. ';
end;

procedure TfrmABMArticulos.gStockKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F3: begin
        if qArticulos.State in dsEditModes then
          qArticulos.Post;
        Cual_Art := Search_Prod(Vacio, Tarea).IdArticulo;
        if Cual_Art > NoEncontrado then
          Plantar_Arbol(Cual_Art);
        gStock.SetFocus;
      end;
    VK_F5: Calculadora(Handle);
  end;
end;

procedure TfrmABMArticulos.cbColoresEnter(Sender: TObject);
begin
  pnlFootProd.Caption := 'Colores';
end;

procedure TfrmABMArticulos.gTallesEnter(Sender: TObject);
begin
  pnlFootProd.Caption := 'Talles. Ctrl + Supr - Para borrar registro';
end;

procedure TfrmABMArticulos.tsAControlProdEnter(Sender: TObject);
begin
  pnlFootProd.Caption := 'Precios';
  if qArticulos.State in [dsInsert] then
    qArticulos.Post;
end;

procedure TfrmABMArticulos.edtPreFinEnter(Sender: TObject);
begin
  edtPreFin.SelectAll;
  pnlFootProd.Caption := 'Precio final al publico';
end;

procedure TfrmABMArticulos.edtProvCmpEnter(Sender: TObject);
begin
  edtProvCmp.SelectAll;
  lblNomProvCmp.Caption := '<TODOS>';
  IdProvCom := 0;
end;

procedure TfrmABMArticulos.edtProvCmpExit(Sender: TObject);
begin
  try
    IdProvCom := edtProvCmp.IntValue;
  except
    IdProvCom := 0;
  end;
  if IdProvCom = 0 then
    lblNomProvCmp.Caption := '<TODOS>'
  else begin
    if GetDatosEnt(IdProvCom, IdBranch, 2, Datos_Ent) then
    begin
      lblNomProvCmp.Caption := Datos_Ent.Nombre;
      edtProvCmp.IntValue := IdProvCom;
    end;
  end;
end;

procedure TfrmABMArticulos.edtProvCmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  IdProvCom := 0;
  case Key of
    VK_F3: begin
      IdProvCom := Busca_Pro;
      if GetDatosEnt(IdProvCom, IdBranch, 2, Datos_Ent) then
      begin
        lblNomProvCmp.Caption := Datos_Ent.Nombre;
        edtProvCmp.IntValue := IdProvCom;
      end;
    end;
    VK_ESCAPE: btnCalcularCom.SetFocus;
  end;
end;

procedure TfrmABMArticulos.edtProVtaEnter(Sender: TObject);
begin
  IdProvVen := 0;
  edtProVta.SelectAll;
  lblNomProvVta.Caption := '<TODOS>';
end;

procedure TfrmABMArticulos.edtProVtaExit(Sender: TObject);
begin
  lblNomProvVta.Caption := '<TODOS>';
  try
    IdProvVen := edtProVta.IntValue;
  except
    IdProvVen := 0;
  end;
  if IdProvVen > 0 then
  begin
    if GetDatosEnt(IdProvVen, IdBranch, 2, Datos_Ent) then
    begin
      lblNomProvVta.Caption := Datos_Ent.Nombre;
      edtProVta.IntValue := IdProvVen;
    end;
  end;
  Application.ProcessMessages;
end;

procedure TfrmABMArticulos.edtProVtaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  IdProvVen := 0;
  case Key of
    VK_F3: begin
      IdProvVen := Busca_Pro;
      if GetDatosEnt(IdProvVen, IdBranch, 2, Datos_Ent) then
      begin
        edtProVta.IntValue := IdProvVen;
        lblNomProvVta.Caption := Datos_Ent.Nombre;
      end;
    end;
    VK_ESCAPE: btnCalcularCom.SetFocus;
  end;
end;

procedure TfrmABMArticulos.edtGananciaEnter(Sender: TObject);
begin
  edtGanancia.SelectAll;
  pnlFootProd.Caption := 'Margen de Ganancia';
end;

procedure TfrmABMArticulos.btnMovStkClick(Sender: TObject);
begin
  if Check_Seg(Nivel_Mod, 'Ver Mov', AutorDto) then
    Get_MStk(qArticulosIdArticulo.AsInteger, 0);
end;

procedure TfrmABMArticulos.tsStocksShow(Sender: TObject);
begin
  gStock.SetFocus;
end;

procedure TfrmABMArticulos.gStockDblClick(Sender: TObject);
begin
  if Check_Seg(Nivel_Mod, 'Ver Mov', AutorDto) then
    Get_MStk(qArticulosIdArticulo.AsInteger, qStockIdStock.AsInteger);
end;

procedure TfrmABMArticulos.gProductosCalcCellColors(Sender: TObject;
          Field: TField; State: TGridDrawState; Highlight: Boolean;
          AFont: TFont; ABrush: TBrush);
begin
  if gProductos.DataSource.DataSet.FieldByName('Oferta').AsInteger = Verdadero then
    ABrush.Color := clYellow;
  if gProductos.DataSource.DataSet.FieldByName('Activo').AsInteger = Falso then
    AFont.Style := AFont.Style + [fsStrikeOut]
  else
    AFont.Style := AFont.Style - [fsStrikeOut];
  if (Field.Name = 'qViewArtIDARTICULO') or
     (Field.Name = 'qViewArtMARCA') or
     (Field.Name = 'qViewArtACTUAL') then
  begin
    AFont.Style := AFont.Style + [fsBold];
    AFont.Size := 7;
  end
  else begin
    AFont.Style := AFont.Style - [fsBold];
    AFont.Size := 9;
  end;
end;

procedure TfrmABMArticulos.gProductosDblClick(Sender: TObject);
begin
  Cual_Art := gProductos.DataSource.DataSet.FieldByName('IdArticulo').AsInteger;
  qArticulos.Close;
  qArticulos.ParamByName('IdArticulo').AsInteger := Cual_Art;
  qArticulos.Open;
  Plantar_Arbol(Cual_Art);
end;

procedure TfrmABMArticulos.gProductosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  Case Key of
    VK_Return: begin
      Cual_Art := gProductos.DataSource.DataSet.FieldByName('IdArticulo').AsInteger;
      qArticulos.Close;
      qArticulos.ParamByName('IdArticulo').AsInteger := Cual_Art;
      qArticulos.Open;
      Plantar_Arbol(Cual_Art);
    end;
    VK_F5: Calculadora(Handle);
    VK_F3: begin
      if qArticulos.State in dsEditModes then
        qArticulos.Post;
      Cual_Art := Search_Prod(Vacio, Tarea).IdArticulo;
      if Cual_Art > NoEncontrado then
        Plantar_Arbol(Cual_Art);
      gProductos.SetFocus;
    end;
  end;
end;

procedure TfrmABMArticulos.edtCostoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmABMArticulos.qArticulosIDSUBGRUPOChange(Sender: TField);
begin
  qSetMarkUp.Close;
  qSetMarkUp.ParamByName('Area').AsInteger  := qArticulosIdArea.AsInteger;
  qSetMarkUp.ParamByName('Grupo').AsInteger := qArticulosIdGrupo.AsInteger;
  qSetMarkUp.ParamByName('SubGr').AsInteger := qArticulosIdSubGrupo.AsInteger;
  qSetMarkUp.Open;
  if qSetMarkUpIdMarkUp.AsInteger > 0 then
    qArticulosIdMarkUp.AsInteger := qSetMarkUpIdMarkUp.AsInteger
  else begin
    qArticulosIdMarkUp.AsInteger := 0;
    raise EUsuario.Create('No hay MarkUp Asignado');
  end;
end;

procedure TfrmABMArticulos.qArticulosIDMARKUPChange(Sender: TField);
begin
  if not qMarArt.Active then
    qMarArt.Open;
  if not MarkUp.Active then
    MarkUp.Open;
  if MarkUp.Locate(MarkUpIdMarkUp.FieldName, Sender.AsInteger, []) then
  begin
    qArticulosGanancia.AsFloat := MarkUpCoefMarkUp.AsFloat;
    // preguntar por el coefmarkup
  end;
end;

procedure TfrmABMArticulos.qArticulosIMPINTChange(Sender: TField);
var
  AuxIva, CftIva: Double;
begin
  if (not Sender.IsNull) and (Not ModificaCosto) then
  begin
    try
      ModificaCosto := True;
      qArticulosFechaAlta.AsDateTime := Date;
      qArticulosUsuario.AsInteger := Usuario;
      qArticulosGanancia.AsFloat := qArticulosCoefMarkUp.AsFloat;
      qArticulosPNeto.AsCurrency := qArticulosCosto.AsCurrency +
                                    ((qArticulosCosto.AsCurrency * qArticulosGanancia.AsFloat)/100);
      qArticulosPBase.AsCurrency := qArticulosCosto.AsCurrency +
                                    ((qArticulosCosto.AsCurrency * qArticulosGanancia.AsFloat)/100);
      CftIva := (GetAlcIva(qArticulosAlcIva.AsInteger)-
                ((GetAlcIva(qArticulosAlcIva.AsInteger)*qArticulosExento.AsFloat)/100));
      AuxIva := (qArticulosPNeto.AsCurrency * CftIva)/100;
      qArticulosPrecioAnt.AsCurrency := qArticulosPrecio.AsCurrency;
      qArticulosPrecio.AsCurrency := qArticulosPNeto.AsCurrency + AuxIva + qArticulosImpInt.AsCurrency;
    finally
      ModificaCosto := False;
    end;
  end;
end;

procedure TfrmABMArticulos.qArticulosEXENTOValidate(Sender: TField);
begin
  if (Sender.AsFloat > 100) and
     (Sender.AsFloat < 0) then
    raise Exception.Create('El porcentaje de "EXENTO" debe estar entre 0 y 100');
end;

procedure TfrmABMArticulos.qArticulosAfterScroll(DataSet: TDataSet);
var
  DetArt: String;
begin
  Habilitar_Mod;
  DetArt := Format('Pº %d - %s %s ',[qArticulosIDARTICULO.AsInteger,
                   qArticulosMARCA.AsString, qArticulosDETALLE.AsString]);

  gbStock.Caption := 'Unidades por Deposito '+DetArt;
  gbInventario.Caption := 'Stk Ult.Inventario '+DetArt;
  gbControlArt.Caption := 'Datos de Control '+DetArt;
  gbProvByArt.Caption := DetArt;
  gbHisCamPre.Caption := 'Modificaciones de Precios/Ofertas y Costos '+DetArt;
end;

procedure TfrmABMArticulos.qArticulosBeforeScroll(DataSet: TDataSet);
begin
  if not qMarArt.Active then
    qMarArt.Open;
end;

procedure TfrmABMArticulos.qArticulosBeforeEdit(DataSet: TDataSet);
begin
  Habilitar_Mod;
  try
    qAreas.Close;
    qGrupos.Close;
    qSubGrupos.Close;
    qMarArt.Close;
  finally
    qAreas.Open;
    qGrupos.Open;
    qSubGrupos.Open;
    qMarArt.Open;
  end;
end;

procedure TfrmABMArticulos.qArticulosNewRecord(DataSet: TDataSet);
begin
  qArticulosIDARTICULO.AsInteger := NUEVO_REGISTRO;
  qArticulosActivo.AsInteger := Verdadero;
  qArticulosEstiloFac.AsInteger := PedirTodo;
  qArticulosCosto.AsCurrency := 0.01;
  qArticulosPrecio.AsCurrency := 0.01;
  qArticulosPrecioAnt.AsCurrency := 0.01;
  qArticulosPBase.AsCurrency := 0.01;
  qArticulosCostoAnt.AsCurrency := 0.01;
  qArticulosCodBarra.AsString := ' ';
  qArticulosAlcIva.AsInteger := 1;
  qArticulosAlcIB.AsInteger := 1;
  qArticulosIdColor.AsInteger := 0;
  qArticulosExento.AsFloat := 0;
  qArticulosImpInt.AsCurrency := 0;
  qArticulosOferta.AsInteger := Falso;
  qArticulosTSinStock.AsInteger := Falso;
  qArticulosServicio.AsInteger := Falso;
  qArticulosTieneTalle.AsInteger := Falso;
  qArticulosESKIT.AsInteger := Falso;
  qArticulosFechaAlta.AsDateTime := Date;
  qArticulosUsuario.AsInteger := Usuario;
end;

procedure TfrmABMArticulos.qArticulosPRECIO_PPGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := Format(' %m', [qArticulosPRECIO_PP.AsCurrency]);
end;

procedure TfrmABMArticulos.qArticulosIDARTICULOGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if Sender.AsInteger = NUEVO_REGISTRO then
    Text := 'NUEVO'
  else
    Text := Sender.AsString;
end;

procedure TfrmABMArticulos.qArticulosBeforePost(DataSet: TDataSet);
begin
  if qArticulos.State in dsEditModes then
  begin
    if New_Art then
    begin
      try
        qLastArt.Close;
        qLastArt.Open;
        if qLastArtUltimo.IsNull then
          qArticulosIdArticulo.AsInteger := 1
        else
          qArticulosIdArticulo.AsInteger := qLastArtUltimo.AsInteger+1;
      finally
        qLastArt.Close;
      end;
    end;
    qArticulosFECHAALTA.AsDateTime := Date;
    Cual_Art := qArticulosIdArticulo.AsInteger;
    if (qArticulosIDAREA.AsInteger = 0) or
       (qArticulosIdGrupo.AsInteger = 0) or
       (qArticulosIdSubGrupo.AsInteger = 0) or
       (Trim(qArticulosDetalle.AsString) <= Vacio) then
     raise EUsuario.Create('No se puede grabar un producto sin area, grupo, subgrupo o detalle vacios');

    if (Trim(qArticulosCodBarra.AsString) = Vacio) or
       (Trim(qArticulosCodBarra.AsString) = '0') then
      qArticulosCodBarra.AsString := qArticulosIdArticulo.AsString;

    // Chequear Código de Busqueda repetido
    qChkCodBar.Close;
    qChkCodBar.ParamByName('CodBarra').AsString := qArticulosCodBarra.AsString;
    qChkCodBar.ParamByName('IdArticulo').AsInteger := qArticulosIdArticulo.AsInteger;
    qChkCodBar.Open;
    if qChkCodBarCantCod.AsInteger > 0 then
    begin
      Application.MessageBox(PChar('Código de busqueda '+ qArticulosCodBarra.AsString + ' ya ingresado en otro Producto'), 'Código Repetido', MB_IconError);
    end;
    if (qArticulosCOSTO.AsCurrency <= 0.05) and
       (qArticulosCOSTOANT.AsCurrency <= 0.05) then
    begin
      if qArticulosPRECIO.AsCurrency > 1.00 then
      begin
        // asignar costo
      end;
    end;
  end;
end;

procedure TfrmABMArticulos.ebTallesAfterExpand(Sender: TObject);
begin
  ebTalles.GridIndents.Y := -(ebTalles.Top+15);
  ebTalles.GridIndents.X := ebTalles.Width;
end;

procedure TfrmABMArticulos.ArtTallesTalleGetText(Sender: TField; var Text: String; DisplayText: Boolean);
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

procedure TfrmABMArticulos.ArtTallesTalleSetText(Sender: TField; const Text: String);
begin
  if Control_Talles then
  begin
    try
      Sender.Value := SetTextTalle(Text);
    except
      on E: Exception do
      begin
        Application.MessageBox(PChar(E.Message), 'Error ingresando talles', MB_ICONERROR);
      end;
    end;
  end;
end;

procedure TfrmABMArticulos.ArtTallesAfterPost(DataSet: TDataSet);
begin
  if Control_Talles then
  begin
    qArticulos.DisableControls;
    try
      qArticulos.Edit;
      if (not ArtTalles.IsEmpty) then
        qArticulosTieneTalle.AsInteger := Verdadero
      else
        qArticulosTieneTalle.AsInteger := Falso;
      qArticulos.Post;
    finally
      qArticulos.EnableControls;
    end;
  end;
end;

procedure TfrmABMArticulos.ArtTallesBeforePost(DataSet: TDataSet);
begin
  if (ArtTallesIdArticulo.AsInteger <= 0) or (ArtTallesTalle.AsInteger <= 0) And (Control_Talles) then
    raise EUsuario.Create('Talles Error. Entrada invalida.-');
  ArtTalles.ApplyUpdates(0);
end;

procedure TfrmABMArticulos.ArtTallesNewRecord(DataSet: TDataSet);
begin
  if Control_Talles then
  begin
    ArtTallesIdArticulo.AsInteger := qArticulosIdArticulo.AsInteger;
    ArtTallesTalle.AsInteger := 0;
  end;
end;

procedure TfrmABMArticulos.qStockArtTallesTALLEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
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

procedure TfrmABMArticulos.qStockArtTallesTALLESetText(Sender: TField; const Text: String);
begin
  if Control_Talles then
  begin
    try
      Sender.Value := SetTextTalle(Text);
    except
      on E: Exception do
      begin
        Application.MessageBox(PChar(E.Message), 'Error ingresando talles', MB_ICONERROR);
      end;
    end;
  end;
end;

procedure TfrmABMArticulos.qTProdVendOFERTAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if qTProdVendOferta.AsInteger = Verdadero then
    Text := 'Si'
  else
    Text := 'No';
end;

procedure TfrmABMArticulos.btnCancelProdClick(Sender: TObject);
begin
  if qArticulos.State in dsEditModes then
  begin
    qArticulos.Cancel;
    if Control_Talles then
    begin
      if ArtTalles.State in dsEditModes then
        ArtTalles.Cancel;
    end;
  end;
end;

procedure TfrmABMArticulos.btnBuscarProdClick(Sender: TObject);
begin
  if qArticulos.State in dsEditModes then
    qArticulos.Post;
  Cual_Art := Search_Prod(Vacio, Tarea).IdArticulo;
  if Cual_Art > NoEncontrado then
    Plantar_Arbol(Cual_Art);
end;

procedure TfrmABMArticulos.btnCopiarProdClick(Sender: TObject);
Var
  ArtArr: Array of TCopyArt;
  TalArr: Variant;
  i,j: Integer;

begin
  if Application.MessageBox('¿Desea hacer una copia del producto actual?', 'Copia de productos', MB_ICONQUESTION + MB_YESNO)=IDYes then
  begin
    SetLength(ArtArr, qArticulos.FieldCount);
    TalArr := VarArrayCreate([0,ArtTalles.FieldCount-1,0,ArtTalles.RecordCount-1],varVariant);
    try
      try
        if not trArticulos.InTransaction then
          trArticulos.StartTransaction;
        //llenando buffers
        for i := 0 to qArticulos.FieldCount-1 do
        begin
          try
            if qArticulos.Fields[i].FieldKind = fkData then
            begin
              ArtArr[i].FieldName := qArticulos.Fields[i].FieldName;
              ArtArr[i].Value := qArticulos.Fields[i].Value;
            end;
          except
            ArtArr[i].FieldName := qArticulos.Fields[i].FieldName;
            ArtArr[i].Value := Null;
          end;
        end;

        if Control_Talles then
        begin
          j := 0;
          ArtTalles.First;
          while not ArtTalles.Eof do
          begin
            For i := 0 to ArtTalles.FieldCount-1 do
              if ArtTalles.Fields[i].FieldKind = fkData then
                TalArr[i,j] := ArtTalles.Fields[i].Value;
            ArtTalles.Next;
            Inc(j);
          end;
        end;

        //agregando nuevo articulo
        qArticulos.Insert;
        try
          try
            qLastArt.Close;
            qLastArt.Open;
            if qLastArtUltimo.IsNull then
              qArticulosIdArticulo.AsInteger := 1
            else
              qArticulosIdArticulo.AsInteger := qLastArtUltimo.AsInteger + 1;
          finally
            qLastArt.Close;
          end;
          for i := 0 to qArticulos.FieldCount - 1 do
          begin
            if (qArticulos.Fields[i].FieldKind = fkData) and (Trim(ArtArr[i].FieldName) > ' ') and
               (qArticulos.Fields[i].FieldName <> qArticulosIdArticulo.FieldName) and
               (qArticulos.Fields[i].FieldName <> qArticulosCodBarra.FieldName) and (ArtArr[i].Value <> null) then
            begin
              qArticulos.FieldByName(ArtArr[i].FieldName).Value := ArtArr[i].Value;
            end;
          end;
          qArticulosCodBarra.AsString := qArticulosIdArticulo.AsString;
          qArticulos.Post;
        except
          qArticulos.Cancel;
          raise;
        end;

        if (Control_Talles) then //agregando Talles del nuevo articulo
        begin
          if (qArticulosTIENETALLE.AsInteger = Verdadero) then
          begin
            for j := 0 to VarArrayHighBound(TalArr,2) do
            begin
              ArtTalles.Insert;
              try
                for i := 0 to ArtTalles.FieldCount - 1 do
                  if ArtTalles.Fields[i].FieldKind = fkData then
                    ArtTalles.Fields[i].Value := TalArr[i,j];
                ArtTalles.Post;
              except
                on E:Exception do
                begin
                  ArtTalles.Cancel;
                  raise EUsuario.Create('Talles: '+E.Message);
                end;
              end;
            end;
          end;
        end;
        trArticulos.Commit;
      except
        trArticulos.Rollback;
      end;
    finally
      ArtArr := nil;
      TalArr := UnAssigned;
      cbGrupos.RefreshDisplay;
    end;
  end;
end;

procedure TfrmABMArticulos.btnPreciosClick(Sender: TObject);
begin
  if Check_Seg(Nivel_Mod, 'Precios', AutorDto) then
  begin
    Cual_Art := qArticulosIDARTICULO.AsInteger;
    frmChangePrice := TfrmChangePrice.Create(Self);
    frmChangePrice.ShowModal;
    Open_Art;
  end;
end;

procedure TfrmABMArticulos.btnPrdNuevosClick(Sender: TObject);
begin
  Ver_PreciosNuevos(Date-1);
end;

procedure TfrmABMArticulos.btnFirstProdClick(Sender: TObject);
begin
  qArticulos.Close;
  qArticulos.ParamByName('IdArticulo').AsInteger := ArticulosFirst;
  qArticulos.Open;
end;

procedure TfrmABMArticulos.btnPriorProdClick(Sender: TObject);
var
  Act: Integer;
begin
  Act := ArticulosPrior(qArticulosIDARTICULO.AsInteger);
  qArticulos.Close;
  qArticulos.ParamByName('IDARTICULO').AsInteger := Act;
  qArticulos.Open;
end;

procedure TfrmABMArticulos.btnPrnCodBarClick(Sender: TObject);
begin
  if Application.MessageBox('¿Imprime el código de barras del producto actual?',
     'Código de Barras', MB_ICONQUESTION + MB_YESNO) = ID_YES then
  begin
    frmImpCodBar := TfrmImpCodBar.Create(Self);
    frmImpCodBar.CodProd := qArticulosIdArticulo.AsInteger;
    if (qArticulosTieneTalle.AsInteger = Verdadero) and
       (Control_Talles) then
    begin
      frmImpCodBar.CantStk := qStockArtTallesActual.AsInteger;
      frmImpCodBar.ElTalle := ArtTallesTalle.AsInteger;
    end
    else begin
      frmImpCodBar.CantStk := qStockACTUAL.AsInteger;
    end;
    frmImpCodBar.ShowModal;
  end;
end;

procedure TfrmABMArticulos.btnRefrescarModClick(Sender: TObject);
var
  Act: Integer;
begin
  if Application.MessageBox('¿Forzar producto para que se reactualice en todas las sucursales?',
     'Actualizar en Sucursal', MB_ICONQUESTION + MB_YESNO) = ID_YES then
  begin
    try
      LockWindowUpdate(Handle);
      pcProductos.ActivePage := tsADatosProd;
      Act := qArticulosIDARTICULO.AsInteger;
      qArticulos.Edit;
      qArticulosFECHAMOD.AsDateTime := Date;
      qArticulos.Post;
      qArticulos.Close;
      qArticulos.ParamByName('IDARTICULO').AsInteger := Act;
      qArticulos.Open;
    finally
      LockWindowUpdate(0);
    end;
  end;
end;

procedure TfrmABMArticulos.btnNextProdClick(Sender: TObject);
var
  Act: Integer;
begin
  try
    LockWindowUpdate(Handle);
    Act := ArticulosNext(qArticulosIDARTICULO.AsInteger);
    qArticulos.Close;
    qArticulos.ParamByName('IDARTICULO').AsInteger := Act;
    qArticulos.Open;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfrmABMArticulos.btnEtiquetaClick(Sender: TObject);
begin
  if Application.MessageBox('¿Imprime una etiqueta del producto actual?',
     'Etiqueta', MB_ICONQUESTION + MB_YESNO) = ID_YES then
  begin
    frmImpCodBar := TfrmImpCodBar.Create(Self);
    frmImpCodBar.CodProd := qArticulosIdArticulo.AsInteger;
    if (qArticulosTieneTalle.AsInteger = Verdadero) and
       (Control_Talles) then
      frmImpCodBar.ElTalle := ArtTallesTalle.AsInteger;
    frmImpCodBar.CantStk := 1;
    frmImpCodBar.ShowModal;
  end;
end;

procedure TfrmABMArticulos.btnLastProdClick(Sender: TObject);
begin
  qArticulos.Close;
  qArticulos.ParamByName('IDARTICULO').AsInteger := ArticulosLast;
  qArticulos.Open;
end;

procedure TfrmABMArticulos.qArticulosAfterOpen(DataSet: TDataSet);
begin
  Open_ViewArt(qArticulosIDAREA.AsInteger,
               qArticulosIDGRUPO.AsInteger,
               qArticulosIDSUBGRUPO.AsInteger);
  gProductos.DataSource.DataSet.Locate(gProductos.DataSource.DataSet.FieldByName('IdArticulo').FieldName, qArticulosIDARTICULO.AsInteger, []);
  gProductos.RefreshDisplay;
  Habilitar_Mod;
end;

procedure TfrmABMArticulos.qArticulosAfterPost(DataSet: TDataSet);
begin
  if (Control_Talles) And
     (qArticulosTIENETALLE.AsInteger = Verdadero) then
  begin
    if ArtTalles.State in dsEditModes then
      ArtTalles.Post;
    if Det_Talles.State in dsEditModes then
      Det_Talles.Post;
  end;

  if Marcas.State in dsEditModes then
    Marcas.Post;
  if Colores.State in dsEditModes then
    Colores.Post;
  try
    if not trArticulos.InTransaction then
      trArticulos.StartTransaction;
    trArticulos.Commit;
  except
    trArticulos.Rollback
  end;
  UpDate_DatosSistema(0, 1);
  Open_Art;
end;

procedure TfrmABMArticulos.pcProductosChange(Sender: TObject);
begin
  Case pcProductos.ActivePageIndex of
    0: begin
         if not Marcas.Active then
           Marcas.Open;
         if not Colores.Active then
           Colores.Open;
       end;
    1: begin
         if not qStock.Active then
         begin
           qStock.ParamByName('IdStk').AsInteger := IdBranch;
           qStock.ParamByName('IdArt').AsInteger := qArticulosIDARTICULO.AsInteger;
           qStock.Open;
         end;
         if Control_Talles then
         begin
           if not qStockArtTalles.Active then
             qStockArtTalles.ParamByName('IdStk').AsInteger := IdBranch;
             qStockArtTalles.ParamByName('IdArt').AsInteger := qArticulosIDARTICULO.AsInteger;
             qStockArtTalles.Open;
         end;
       end;
    2: begin
         if not qMarArt.Active then
           qMarArt.Open;
       end;
    3: begin
         if not qStkInv.Active then
         begin
           qStkInv.ParamByName('IdStk').AsInteger := IdBranch;
           qStkInv.ParamByName('IdArt').AsInteger := qArticulosIDARTICULO.AsInteger;
           qStkInv.Open;
         end;
       end;
    4: begin
         if (IdBranch = 1) And (not qProvByArt.Active) then
         begin
           qProvByArt.ParamByName('IdArt').AsInteger := qArticulosIDARTICULO.AsInteger;
           qProvByArt.Open;
         end;
       end;
  End;
end;

procedure TfrmABMArticulos.pcDatosProductosChange(Sender: TObject);
begin
  Case pcDatosProductos.ActivePageIndex of
    0: begin
         pcDatosProductos.ActivePage := tsADatosProd;
       end;
    1: begin
         if not qArtModPrc.Active then
         begin
           qArtModPrc.ParamByName('IdArt').AsInteger := qArticulosIDARTICULO.AsInteger;
           qArtModPrc.Open;
         end;
       end;
    2: begin
         if not Areas.Active then
           Areas.Open;
         if not Grupos.Active then
           Grupos.Open;
         if not SubGrupos.Active then
           SubGrupos.Open;
       end;
    3: begin
         if not Marcas.Active then
           Marcas.Open;
         if not Colores.Active then
           Colores.Open;
       end;
  end;
end;

procedure TfrmABMArticulos.pcABMProductosClose(Sender: TObject; var AllowClose: Boolean);
begin
  ModalResult := mrOk;
end;

procedure TfrmABMArticulos.ExpProductosClick(Sender: TObject);
begin
  try
    qExpProd.Open;
    if not qExpProd.IsEmpty then
    begin
      dmGestion.IyC_Exp.DataSet := qExpProd;
      dmGestion.IyC_Exp.Select;
    end;
  finally
    qExpProd.Close;
  end;
end;

procedure TfrmABMArticulos.OrganizacionDeProductosClick(Sender: TObject);
begin
  rblPropietario.Caption := OwnerName;
  lstOrganizacion.Print;
end;

procedure TfrmABMArticulos.ExpHistorialPreciosClick(Sender: TObject);
begin
  if not qArtModPrc.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qArtModPrc;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmABMArticulos.ExploradorAfterScroll(DataSet: TDataSet);
begin
  Open_ViewArt(ExploradorIDAREA.AsInteger,
               ExploradorIDGRUPO.AsInteger,
               ExploradorIDSUBGRUPO.AsInteger);
end;

procedure TfrmABMArticulos.btnActualizarClick(Sender: TObject);
begin
  try
    Cual_Art := qArticulosIDARTICULO.AsInteger;
    pnlFootProd.Caption := 'Espere. Actualizando datos desde Servidor Central... ';
    Screen.Cursor := crSQLWait;
    Application.ProcessMessages;
    btnActualizar.Enabled := False;
    if EsRemota then
    begin
      try
        UpDater_Prod(IdBranch);
      except
        on E:Exception do
        begin
          raise EUsuario.Create(E.Message);
        end;
      end;
    end;
  finally
    pnlFootProd.Caption := OwnerName + ' Actualizado... ';
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
    btnActualizar.Enabled := True;
    qArticulos.Close;
    qArticulos.ParamByName('IdArticulo').AsInteger := Cual_Art;
    qArticulos.Open;
  end;
end;

procedure TfrmABMArticulos.ExpOfertasVigentesClick(Sender: TObject);
begin
  if not qOfertas.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qOfertas;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmABMArticulos.qArticulosAfterClose(DataSet: TDataSet);
begin
  MarkUp.Close;
  Areas.Close;
  Grupos.Close;
  SubGrupos.Close;
  Colores.Close;
  ArtTalles.Close;

  qProvByArt.Close;
  qArtModPrc.Close;
  qStock.Close;
  qStkInv.Close;
  qStockArtTalles.Close;
  qStock.Close;

  qAreas.Close;
  qGrupos.Close;
  qSubGrupos.Close;
  qViewArt.Close;
  //Open_Tablas;
end;

procedure TfrmABMArticulos.btnAgregarProdClick(Sender: TObject);
begin
  pcProductos.ActivePage := tsADatosProd;
  cbAreas.SetFocus;
  edtPreFin.TabStop  := True;
  edtPreFin.ReadOnly := False;
  New_Art := True;
  qArticulos.Insert;
end;

procedure TfrmABMArticulos.btnEditProdClick(Sender: TObject);
begin
  pcProductos.ActivePage := tsADatosProd;
  cbAreas.SetFocus;
  qArticulos.Edit;
end;

procedure TfrmABMArticulos.btnSaveProdClick(Sender: TObject);
begin
  if qArticulos.State in dsEditModes then
    qArticulos.Post;
end;

procedure TfrmABMArticulos.qArticulosBeforeOpen(DataSet: TDataSet);
begin
  Open_Tablas;
end;

procedure TfrmABMArticulos.gOfertasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F3: begin
      if qArticulos.State in dsEditModes then
        qArticulos.Post;
      Cual_Art := Search_Prod(Vacio, Tarea).IdArticulo;
      if Cual_Art > NoEncontrado then
        Plantar_Arbol(Cual_Art);
    end;
    VK_F5: ShellExecute(Handle, 'Open', PChar(PasoWin + 'Calc.Exe'), nil, nil, sw_ShowNormal);
    else begin
      {$INCLUDE IyC_NextEdit.INC}
    end;
  end;
end;

procedure TfrmABMArticulos.qArticulosBeforeInsert(DataSet: TDataSet);
begin
  try
    qAreas.Close;
    qGrupos.Close;
    qSubGrupos.Close;
    qMarArt.Close;
  finally
    qAreas.Open;
    qGrupos.Open;
    qSubGrupos.Open;
    qMarArt.Open;
  end;
end;

procedure TfrmABMArticulos.gOfertasDblClick(Sender: TObject);
begin
  Cual_Art := qOfertasIdArticulo.AsInteger;
  if (not qOfertas.IsEmpty) And
     (Cual_Art > 0) then
  begin
    qArticulos.Close;
    qArticulos.ParamByName('IdArticulo').AsInteger := Cual_Art;
    qArticulos.Open;
  end;
end;
//****************************************  ORGANIZACION ********************
procedure TfrmABMArticulos.gDefListasKeyPress(Sender: TObject; var Key: Char);
begin
  if (gMarkUp.SelectedField.DataType in [ftFloat, ftCurrency, ftBCD])and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

procedure TfrmABMArticulos.gSubGruposKeyPress(Sender: TObject; var Key: Char);
begin
  if (gSubGrupos.SelectedField.DataType in [ftFloat, ftCurrency, ftBCD])and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

procedure TfrmABMArticulos.gSubGruposColEnter(Sender: TObject);
begin
  if (gSubGrupos.SelectedField.FieldName = 'MaxDtoCdo') and
     (gSubGrupos.ColumnByName('MaxDtoCdo').ReadOnly = True) then
  begin
    if Atras then
      gSubGrupos.SelectedIndex := gSubGrupos.SelectedIndex - 1
    else
      gSubGrupos.SelectedIndex := gSubGrupos.SelectedIndex + 1;
  end;

  if (gSubGrupos.SelectedField.FieldName = 'MaxRndPre') and
     (gSubGrupos.ColumnByName('MaxRndPre').ReadOnly = True) then
  begin
    if Atras then
      gSubGrupos.SelectedIndex := gSubGrupos.SelectedIndex - 1
    else
      gSubGrupos.SelectedIndex := gSubGrupos.SelectedIndex + 1;
  end;
end;
//****************************************  ORGANIZACION **********************


//****************************************  PRECIOS  **************************
procedure TfrmABMArticulos.List_Prod_Precios(AOrder: String);
const
  LstPre = 'Select A.IdArticulo, A.CodBarra, A.Precio, A.Marca, '+
           '       A.Detalle, R.Area, G.Grupo, S.SubGrupo, C.Color '+
           'From Articulos A '+
           'Join Areas R '+
           '  on R.IdArea = A.IdArea '+
           'Join Grupos G '+
           '  on G.IdArea = A.IdArea And G.IdGrupo = A.IdGrupo '+
           'Join SubGrupos S '+
           '  on S.IdArea = A.IdArea And '+
           '     S.IdGrupo = A.IdGrupo and '+
           '     S.IdSubGrupo = A.IdSubGrupo '+
           'Left Outer Join Colores C '+
           '  on C.IdColor = A.IdColor '+
           'Left Outer Join ProvByArt P '+
           '  on P.IdArticulo = A.IdArticulo '+
           'Where <Cond> ';

  LOrden = 'Order By R.Area, G.Grupo, S.SubGrupo, A.Marca ';
var
  Filtro: String;
begin
  try
    btnImprimirLista.Enabled := False;
    btnExportarLIsta.Enabled := False;
    gPrecios.Visible := False;
    gPrecios.GroupFieldName := 'Grupo';
    Screen.Cursor := crHourGlass;
    qLstPrecios.Close;
    qLstPrecios.SQL.Clear;
    Filtro := '(A.Activo = 1) And (A.Servicio = 0)';
    if (cbLstArea.Text <> Vacio) and (Pos('<TODOS>', cbLstArea.Text) = 0) then
    begin
      Filtro := Filtro+' And (A.IdArea = '+IntToStr(Integer(cbLstArea.Items.Objects[cbLstArea.ItemIndex]))+')';
      if (cbLstGrupos.Text <> Vacio) and (Pos('<TODOS>', cbLstGrupos.Text) = 0) then
      begin
        Filtro := Filtro+' And (A.IdGrupo = '+IntToStr(Integer(cbLstGrupos.Items.Objects[cbLstGrupos.ItemIndex]))+')';
        if (cbLstSubGrupos.Text <> Vacio) and (Pos('<TODOS>', cbLstSubGrupos.Text) = 0) then
          Filtro := Filtro + ' And (A.IdSubGrupo = '+IntToStr(Integer(cbLstSubGrupos.Items.Objects[cbLstSubGrupos.ItemIndex]))+')';
      end;
    end;
    if (Trim(cbLstMarca.Text) > Vacio) and (Pos('<TODAS>', cbLstMarca.Text) = 0) then
      Filtro := Filtro + ' And (A.Marca Starting with '''+cbLstMarca.Text+''''+')';
    if (Trim(cbLstProv.Text) > Vacio) and (Pos('<TODOS>', cbLstProv.Text) = 0) then
      Filtro := Filtro+' And (P.IdProveedor = '+IntToStr(Integer(cbLstProv.Items.Objects[cbLstProv.ItemIndex]))+')';

    if AOrder > Vacio then
      qLstPrecios.SQL.Text := StringReplace(LstPre, '<Cond>', Filtro, [rfReplaceAll]) + AOrder
    else
      qLstPrecios.SQL.Text := StringReplace(LstPre, '<Cond>', Filtro, [rfReplaceAll]) + LOrden;
    qLstPrecios.Open;
  finally
    if not qLstPrecios.IsEmpty then
    begin
      btnImprimirLista.Enabled := True;
      btnExportarLista.Enabled := True;
      gPrecios.Visible := True;
    end;
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
  end;
end;

procedure TfrmABMArticulos.cbLstAreaChange(Sender: TObject);
begin
  if Pos('<TODOS>', cbLstArea.Text) = 0 then
  begin
    qLstGrupos.Close;
    qLstGrupos.ParamByName('IdArea').AsInteger := Integer(cbLstArea.Items.Objects[cbLstArea.ItemIndex]);
    qLstGrupos.Open;
    qLstGrupos.First;
    cbLstGrupos.Items.Clear;
    cbLstGrupos.Items.AddObject('<TODOS>', TObject(0));
    while not qLstGrupos.Eof do
    begin
      cbLstGrupos.Items.AddObject(qLstGruposGrupo.AsString, TObject(qLstGruposIdGrupo.AsInteger));
      qLstGrupos.Next;
    end;
    cbLstGrupos.Enabled := True;
  end;
end;

procedure TfrmABMArticulos.cbLstAreaEnter(Sender: TObject);
begin
  cbLstGrupos.Items.Clear;
  cbLstGrupos.Enabled := False;
  cbLstSubGrupos.Enabled := False;
end;

procedure TfrmABMArticulos.cbLstGruposEnter(Sender: TObject);
begin
  cbLstSubGrupos.Items.Clear;
  cbLstSubGrupos.Enabled := False;
end;

procedure TfrmABMArticulos.cbLstGruposChange(Sender: TObject);
begin
  if Pos('<TODOS>', cbLstGrupos.Text) = 0 then
  begin
    qLstSubGr.Close;
    qLstSubGr.ParamByName('IdArea').AsInteger  := Integer(cbLstArea.Items.Objects[cbLstArea.ItemIndex]);
    qLstSubGr.ParamByName('IdGrupo').AsInteger := Integer(cbLstGrupos.Items.Objects[cbLstGrupos.ItemIndex]);
    qLstSubGr.Open;
    qLstSubGr.First;
    cbLstSubGrupos.Items.Clear;
    cbLstSubGrupos.Items.AddObject('<TODOS>', TObject(0));
    while not qLstSubGr.Eof do
    begin
      cbLstSubGrupos.Items.AddObject(qLstSubGrSubGrupo.AsString, TObject(qLstSubGrIdSubGrupo.AsInteger));
      qLstSubGr.Next;
    end;
    cbLstSubGrupos.Enabled := True;
  end;
end;

procedure TfrmABMArticulos.btnImprimirListaClick(Sender: TObject);
begin
  try
    gPrecios.DataSource.DataSet.DisableControls;
    lblTitulo.Caption := 'Lista de Precios';
    lblEmpresa.Caption := OwnerName;
    lblPie.Caption := edtLstPie.Text;
    lstPrecios.Print;
  finally
    gPrecios.DataSource.DataSet.EnableControls;
  end;
end;

procedure TfrmABMArticulos.btnExportarListaClick(Sender: TObject);
begin
  if not qLstPrecios.IsEmpty then
  begin
    qLstPrecios.First;
    dmGestion.IyC_Exp.DataSet := qLstPrecios;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmABMArticulos.btnArmarListaClick(Sender: TObject);
begin
  List_Prod_Precios(Vacio);
end;

procedure TfrmABMArticulos.gPreciosTitleButtonClick(Sender: TObject; AFieldName: String);
begin
  if AFieldName = 'IDARTICULO' then
    List_Prod_Precios(' Order By A.IdArticulo ');
  if AFieldName = 'PRECIO' then
    List_Prod_Precios(' Order By A.Precio ');
  if AFieldName = 'MARCA' then
    List_Prod_Precios(' Order By A.Marca ');
  if AFieldName = 'DETALLE' then
    List_Prod_Precios(' Order By A.Detalle ');
  if AFieldName = 'GRUPO' then
    List_Prod_Precios(' Order By G.Grupo ');
  if AFieldName = 'SUBGRUPO' then
    List_Prod_Precios(' Order By S.SubGrupo ');
  if AFieldName = 'COLOR' then
    List_Prod_Precios(' Order By C.Color ');
end;

procedure TfrmABMArticulos.gPreciosDblClick(Sender: TObject);
begin
  pcABMProductos.ActivePage := tsPrd_DatosProd;
  qArticulos.Close;
  qArticulos.ParamByName('IdArticulo').AsInteger := qLstPreciosIDARTICULO.AsInteger;
  qArticulos.Open;
end;
//****************************************  PRECIOS  **************************

//****************************************  UTILES   **************************
procedure TfrmABMArticulos.cbModGruposEnter(Sender: TObject);
begin
  cbModGrupos.SelectAll;
  cbModSubGrupos.Items.Clear;
  cbModSubGrupos.Enabled := True;
end;

procedure TfrmABMArticulos.cbModGruposChange(Sender: TObject);
begin
  if Pos('<TODOS>', cbModGrupos.Text) = 0 then
  begin
    qLstSubGr.Close;
    qLstSubGr.ParamByName('IdArea').AsInteger  := Integer(cbModArea.Items.Objects[cbModArea.ItemIndex]);
    qLstSubGr.ParamByName('IdGrupo').AsInteger := Integer(cbModGrupos.Items.Objects[cbModGrupos.ItemIndex]);
    qLstSubGr.Open;
    qLstSubGr.First;
    cbModSubGrupos.Items.Clear;
    cbModSubGrupos.Items.AddObject('<TODOS>', TObject(0));
    while not qLstSubGr.Eof do
    begin
      cbModSubGrupos.Items.AddObject(qLstSubGrSubGrupo.AsString, TObject(qLstSubGrIdSubGrupo.AsInteger));
      qLstSubGr.Next;
    end;
    cbModSubGrupos.Enabled := True;
  end;
end;

procedure TfrmABMArticulos.cbModAreaChange(Sender: TObject);
begin
  if Pos('<TODOS>', cbModArea.Text) = 0 then
  begin
    qLstGrupos.Close;
    cbLstGrupos.Items.Clear;
    cbModGrupos.Items.AddObject('<TODOS>', TObject(0));
    qLstGrupos.ParamByName('IdArea').AsInteger := Integer(cbModArea.Items.Objects[cbModArea.ItemIndex]);
    qLstGrupos.Open;
    qLstGrupos.First;
    while not qLstGrupos.Eof do
    begin
      cbModGrupos.Items.AddObject(qLstGruposGrupo.AsString, TObject(qLstGruposIdGrupo.AsInteger));
      qLstGrupos.Next;
    end;
    cbModGrupos.Enabled := True;
  end;
end;

procedure TfrmABMArticulos.cbModAreaEnter(Sender: TObject);
begin
  cbModGrupos.Enabled := False;
  cbModArea.SelectAll;
end;

procedure TfrmABMArticulos.edtModPrcEnter(Sender: TObject);
begin
  edtModPrc.SelectAll;
end;

procedure TfrmABMArticulos.edtModPrcKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmABMArticulos.btnModPrcPreciosClick(Sender: TObject);
var
  PFinal, PNeto, PCosto, CftIva, PrcGan: Currency;
  TRnd: TFPURoundingMode;
begin
  try
    Screen.Cursor := crHourGlass;
    try
      PrcGan := edtModPrc.Value;
    except
      PrcGan := 0;
    end;
    if PrcGan <> 0 then
    begin
      TRnd := GetRoundMode;
      SetRoundMode(rmNearest);
      ModPrc.First;
      while not ModPrc.Eof do
      begin
        if (not ModFinal) and
           (not ModGan) and
           (not ModCosto) and
           (not ModExt) and
           (not ModII) then
        begin
          ModFinal := True;
          ModGan := True;
          ModCosto := True;
          ModExt := True;
          ModII  := True;
          PFinal := 0;
          PNeto  := 0;
          PCosto := 0;
          CftIva := 0;
          CftIva := (GetAlcIva(ModPrcAlcIva.AsInteger) - ((GetAlcIva(ModPrcAlcIva.AsInteger) * ModPrcExento.AsFloat)/100));
          PFinal := RoundTo(ModPrcPrecio.AsCurrency + ((ModPrcPrecio.AsCurrency * PrcGan)/100), 0);
          PNeto  := (PFinal - ModPrcImpInt.AsCurrency) / (1 + (CftIva/100));
          PCosto := ModPrcCosto.AsCurrency;

          ModPrc.Edit;
          ModPrcPrecio.AsCurrency := PFinal;
          ModPrcPNeto.AsCurrency := PNeto;
          try
            ModPrcGanancia.AsFloat := ((PNeto / PCosto) - 1)*100
          except
            ModPrcGanancia.AsFloat := 0;
          end;
          ModPrcFechaAlta.AsDateTime := Date;
          ModPrc.Post;

          ModFinal := False;
          ModGan := False;
          ModCosto := False;
          ModExt := False;
          ModII  := False;
        end;
        ModPrc.Next;
      end;
      gbModPrc.Enabled := False;
  end;
  finally
    gModPrecios.RefreshDisplay;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmABMArticulos.Grabar_Productos_Modificados;
begin
  if ModPrc.State in [dsEdit] then
    ModPrc.Post;
  if (Application.MessageBox('¿Grabar las modificaciones de Productos realizadas?', 'Modificaciones', MB_ICONQUESTION + MB_YESNO) = ID_YES) then
  begin
    try
      if not dmSaveFile.trSaveComp.InTransaction then
        dmSaveFile.trSaveComp.StartTransaction;
      ModPrc.First;
      if ModPrc.ApplyUpdates(0) > 0 then
        Abort;
      dmSaveFile.trSaveComp.Commit;
    except
      if frmABMArticulos.trArticulos.InTransaction then
        frmABMArticulos.trArticulos.Rollback;
      dmSaveFile.trSaveComp.Rollback;
      raise;
    end;
  end;
end;

procedure TfrmABMArticulos.Buscar_Productos_AModificar;
Const
   Mod_Prod = 'Select distinct A.IdArticulo, A.Marca, A.Detalle, A.Costo, '+
              '       A.FechaAlta, A.CodBarra, A.Exento, A.ImpInt, A.AlcIva, ' +
              '       A.IdMarkUp, A.Ganancia, A.PNeto, A.Precio, A.PrecioAnt, ' +
              '       A.Activo, M.CoefMarkUp, R.Area, G.Grupo, S.SubGrupo, '+
              '       C.Color, K.Actual ' +
              'From Articulos A '+
              'Left Outer Join MarkUp M ' +
              '  on M.IdMarkUp = A.IdMarkUp ' +
              'Left Outer Join Areas R '+
              '   on R.IdArea = A.IdArea '+
              'Left Outer Join Grupos G '+
              '   on G.IdArea = A.IdArea And '+
              '      G.IdGrupo = A.IdGrupo '+
              'Left Outer Join SubGrupos S '+
              '   on S.IdArea = A.IdArea And '+
              '      S.IdGrupo = A.IdGrupo and '+
              '      S.IdSubGrupo = A.IdSubGrupo '+
              'Left Outer Join Colores C '+
              '   on C.IdColor = A.IdColor '+
              'Left Outer Join StockArt K '+
              '   on K.IdArticulo = A.IdArticulo And '+
              '      K.IdStock = 1 '+
              'Left Outer Join ProvByArt P '+
              '   on P.IdArticulo = A.IdArticulo '+
              'Where <Cond> ' +
              'Order By R.Area, G.Grupo, S.SubGrupo, A.Marca ';
var
  PrcGan: Double;
  Filtro: String;
begin
  lblModCantProd.Caption := '0';
  PrcGan := 0;
  Filtro := Vacio;
  btnModCodBar.Enabled := False;
  btnModExportar.Enabled := False;
  btnGrabarModificaciones.Enabled := False;
  btnModChangePrecios.Enabled := False;
  btnModImprimir.Enabled := False;

  qModPrecios.Close;
  qModPrecios.SQL.Clear;
  ModPrc.Close;
  if cbxSoloActivos.Checked then
    Filtro := '(A.Activo = 1) ';
  if cbxSoloInActivos.Checked then
    Filtro := '(A.Activo = 0) ';

  try
    PrcGan := edtModDifMrk.Value;
  except
    PrcGan := 0;
  end;

  if PrcGan <> 0 then
  begin
    PrcGan := 1 + (PrcGan / 100);
    Filtro := Filtro +'And ((A.Ganancia * '+FloatToStr(PrcGan)+') < M.CoefMarkUp) ';
    Filtro := StringReplace(Filtro, ',', '.', [rfReplaceAll]);
  end;

  if Trim(DateToStr(edtModFecNuevos.Date)) > Vacio  then
    Filtro := Filtro + ' And ((A.FechaAlta >= '''+FormatDateTime('yyyy/mm/dd',edtModFecNuevos.Date)+
                       ''') or(A.FechaMod >= '''+FormatDateTime('yyyy/mm/dd',edtModFecNuevos.Date)+'''))';

  if cbxModConStk.Checked then
    Filtro := Filtro + ' And (K.Actual > 0) ';

  if (cbModArea.Text <> Vacio) and
     (Pos('<TODOS>', cbModArea.Text) = 0) then
  begin
    Filtro := Filtro+' And (A.IdArea = '+IntToStr(Integer(cbModArea.Items.Objects[cbModArea.ItemIndex]))+')';
    if (cbModGrupos.Text <> Vacio) And
       (Pos('<TODOS>', cbModGrupos.Text) = 0) then
    begin
      Filtro := Filtro+' And (A.IdGrupo = '+IntToStr(Integer(cbModGrupos.Items.Objects[cbModGrupos.ItemIndex]))+')';
      if (cbModSubGrupos.Text <> Vacio) and (Pos('<TODOS>', cbModSubGrupos.Text) = 0) then
        Filtro := Filtro + ' And (A.IdSubGrupo = '+IntToStr(Integer(cbModSubGrupos.Items.Objects[cbModSubGrupos.ItemIndex]))+')';
    end
  end;

  if (Trim(cbModMarca.Text) > Vacio) And
     (Pos('<TODAS>', cbModMarca.Text) = 0) then
    Filtro := Filtro + ' And (A.Marca Starting with '''+Trim(cbModMarca.Text)+''')';

  if Pos('<TODOS>', cbModProv.Text) = 0 then
    Filtro := Filtro+' And (P.IdProveedor = '+IntToStr(Integer(cbModProv.Items.Objects[cbModProv.ItemIndex]))+')';
  qModPrecios.SQL.Text := StringReplace(Mod_Prod, '<Cond>', Filtro, [rfReplaceAll]);
  try
    Screen.Cursor := crSQLWait;
    try
      ModPrc.Open;
    except
      on E:Exception do
      begin
        Screen.Cursor := crDefault;
        raise EUsuario.Create('Error al ejecutar busqueda: '+E.Message);
      end;
    end;
    if not ModPrc.IsEmpty then
    begin
      lblModCantProd.Caption := IntToStr(ModPrc.RecordCount);
      gModPrecios.Visible := True;
      btnModCodBar.Enabled := True;
      btnModExportar.Enabled := True;
      btnGrabarModificaciones.Enabled := True;
      btnModChangePrecios.Enabled := True;
      btnModImprimir.Enabled := True;
      gModPrecios.SetFocus;
    end
    else begin
      lblModCantProd.Caption := '0';
      gModPrecios.Visible := False;
      Screen.Cursor := crDefault;
      raise EUsuario.Create('No existen productos con esas caracteristicas.-');
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmABMArticulos.gModPreciosKeyPress(Sender: TObject; var Key: Char);
begin
  if (gModPrecios.SelectedField.DataType in [ftFloat, ftCurrency]) and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

procedure TfrmABMArticulos.btnGrabarModificacionesClick(Sender: TObject);
begin
  Grabar_Productos_Modificados;
end;

procedure TfrmABMArticulos.btnModExportarClick(Sender: TObject);
begin
  if not ModPrc.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := ModPrc;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmABMArticulos.gModPreciosCalcCellColors(Sender: TObject;
          Field: TField; State: TGridDrawState; Highlight: Boolean;
          AFont: TFont; ABrush: TBrush);
begin
  if (Field = ModPrcCoefMarkUp) or
     (Field = ModPrcCosto) or
     (Field = ModPrcCoefMarkUp) then
  begin
    ABrush.Color := clMoneyGreen;
    if Highlight then
      AFont.Color := clNavy;
  end;
end;

procedure TfrmABMArticulos.gModPreciosColEnter(Sender: TObject);
begin
  if (gModPrecios.SelectedField.FieldName = 'CoefMarkUp') or
     (gModPrecios.SelectedField.FieldName = 'Costo') or
     (gModPrecios.SelectedField.FieldName = 'PrecioAnt') then
  begin
    if Atras then
      gModPrecios.SelectedIndex := gModPrecios.SelectedIndex - 1
    else
      gModPrecios.SelectedIndex := gModPrecios.SelectedIndex + 1;
  end;
end;

procedure TfrmABMArticulos.gModPreciosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RIGHT,
    VK_RETURN,
    VK_TAB    : Atras := False;
    VK_LEFT   : Atras := True;
    VK_ESCAPE : btnGrabarModificaciones.SetFocus;
  end;
end;

procedure TfrmABMArticulos.gModPreciosDblClick(Sender: TObject);
begin
  pcABMProductos.ActivePage := tsPrd_DatosProd;
  qArticulos.Close;
  qArticulos.ParamByName('IdArticulo').AsInteger := ModPrcIDARTICULO.AsInteger;
  qArticulos.Open;
end;

procedure TfrmABMArticulos.btnModChangePreciosClick(Sender: TObject);
begin
  if not ModPrc.IsEmpty then
  begin
    gbModPrc.Enabled := True;
    edtModPrc.Text := '0.00%';
    edtModPrc.SetFocus;
  end;
end;

procedure TfrmABMArticulos.btnModCodBarClick(Sender: TObject);
var
  CantStk: Integer;
begin
  if Application.MessageBox('¿Imprime los códigos de barra de los productos modificados?',
     'Códigos de Barra', MB_ICONQUESTION + MB_YESNO) = ID_YES then
  begin
    if ModItemsP.Active then
      ModItemsP.EmptyDataSet
    else
      ModItemsP.CreateDataSet;
    ModPrc.First;
    while not ModPrc.Eof do
    begin
      CantStk := Get_Stock(ModPrcIdArticulo.AsInteger, 0, 0, False);
      if CantStk <= 0 then
        CantStk := 1;
      if CantStk > 0 then
      begin
        ModItemsP.Append;
        ModItemsPIdArticulo.AsInteger := ModPrcIdArticulo.AsInteger;
        ModItemsPCodBarra.AsString := ModPrcCodBarra.AsString;
        ModItemsPCantidad.AsInteger := CantStk;
        ModItemsPTalle.AsInteger := 0;
        ModItemsPDescripcion.AsString := ModPrcDetalle.AsString;
        ModItemsPMarca.AsString := ModPrcMarca.AsString;
        ModItemsPColor.AsString := ModPrcColor.AsString;
        ModItemsPPrecioFinal.AsCurrency := ModPrcPrecio.AsCurrency;
        ModItemsPGrupoSubGrupo.AsString := ModPrcGrupo.AsString+' '+ModPrcSubGrupo.AsString;
        ModItemsP.Post;
      end;
      ModPrc.Next;
    end;
    if not ModItemsP.IsEmpty then
      Print_CodeB(ModItemsP);
  end;
end;

procedure TfrmABMArticulos.btnModImprimirClick(Sender: TObject);
begin
  if Trim(DateToStr(edtModFecNuevos.Date)) > Vacio then
    lblTituloNP.Caption := OwnerName + ' - Productos con precio Nuevos desde el: ' + DateToStr(edtModFecNuevos.Date)
  else
    lblTituloNP.Caption := OwnerName;
  rpNewPrec.PrintReport;
end;

procedure TfrmABMArticulos.dspModPrcBeforeUpdateRecord(
          Sender: TObject; SourceDS: TDataSet;
          DeltaDS: TCustomClientDataSet;
          UpdateKind: TUpdateKind; var Applied: Boolean);
var
  q: TMDOQuery;
  i: Integer;
  Cambio_Precio: Boolean;
begin
  if UpdateKind = ukModify then
  begin
    Cambio_Precio := False;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmSaveFile.trSaveComp;
      q.SQL.Text := 'UpDate Articulos '+
                    'Set CodBarra = :CodBarra, Marca = :Marca, Detalle = :Detalle, '+
                    '    ImpInt = :ImpInt, Ganancia = :Ganancia, PBase = :PBase, '+
                    '    PrecioAnt = :PrecioAnt, Precio = :Precio, Activo = :Activo, ' +
                    '    FechaAlta = :FechaAlta, Usuario =:Usuario '+
                    'Where IdArticulo = :Old_IdArticulo ';

      if DeltaDs.FieldByName('CodBarra').NewValue = Unassigned then
        q.ParamByName('CodBarra').AsString := VarToStr(DeltaDs.FieldByName('CodBarra').OldValue)
      else
        q.ParamByName('CodBarra').AsString := VarToStr(DeltaDs.FieldByName('CodBarra').Value);

      if DeltaDs.FieldByName('Marca').NewValue = Unassigned then
        q.ParamByName('Marca').AsString := VarToStr(DeltaDs.FieldByName('Marca').OldValue)
      else
        q.ParamByName('Marca').AsString := VarToStr(DeltaDs.FieldByName('Marca').Value);

      if DeltaDs.FieldByName('Detalle').NewValue = Unassigned then
        q.ParamByName('Detalle').AsString := VarToStr(DeltaDs.FieldByName('Detalle').OldValue)
      else
        q.ParamByName('Detalle').AsString := VarToStr(DeltaDs.FieldByName('Detalle').Value);

      if DeltaDs.FieldByName('ImpInt').NewValue = Unassigned then
        q.ParamByName('ImpInt').AsCurrency := DeltaDs.FieldByName('ImpInt').OldValue
      else begin
        q.ParamByName('ImpInt').AsCurrency := DeltaDs.FieldByName('ImpInt').Value;
        Cambio_Precio := True;
      end;

      if DeltaDs.FieldByName('Ganancia').NewValue = Unassigned then
        q.ParamByName('Ganancia').AsFloat := DeltaDs.FieldByName('Ganancia').OldValue
      else begin
        q.ParamByName('Ganancia').AsFloat := DeltaDs.FieldByName('Ganancia').Value;
        Cambio_Precio := True;
      end;

      if DeltaDs.FieldByName('PNeto').NewValue = Unassigned then
        q.ParamByName('PBase').AsCurrency := DeltaDs.FieldByName('PNeto').OldValue
      else begin
        q.ParamByName('PBase').AsCurrency := DeltaDs.FieldByName('PNeto').Value;
        Cambio_Precio := True;
      end;

      if VarIsNull(DeltaDs.FieldByName('Precio').OldValue) then
        q.ParamByName('PrecioAnt').AsCurrency := 0
      else
        q.ParamByName('PrecioAnt').AsCurrency := DeltaDs.FieldByName('Precio').OldValue;

      if DeltaDs.FieldByName('Precio').NewValue = Unassigned then
        q.ParamByName('Precio').AsCurrency:= DeltaDs.FieldByName('Precio').OldValue
      else begin
        q.ParamByName('Precio').AsCurrency:= DeltaDs.FieldByName('Precio').Value;
        Cambio_Precio := True;
      end;

      if (not VarIsNull(DeltaDs.FieldByName('Activo').NewValue)) And
         (DeltaDs.FieldByName('Activo').NewValue <> UnAssigned) then
      begin
        if DeltaDs.FieldByName('Activo').NewValue <>
           DeltaDs.FieldByName('Activo').OldValue then
        begin
          if DeltaDs.FieldByName('Activo').NewValue = Falso then
            q.ParamByName('Activo').AsInteger := Falso
          else
            q.ParamByName('Activo').AsInteger := Verdadero;
        end
        else begin
          q.ParamByName('Activo').AsInteger := DeltaDs.FieldByName('Activo').OldValue;
        end
      end
      else begin
        if (DeltaDs.FieldByName('Activo').NewValue = UnAssigned) And
           (VarIsEmpty((DeltaDs.FieldByName('Activo').NewValue))) then
        begin
          q.ParamByName('Activo').AsInteger := DeltaDs.FieldByName('Activo').OldValue;
        end
        else begin
          if DeltaDs.FieldByName('Activo').NewValue <>
             DeltaDs.FieldByName('Activo').OldValue then
          begin
            if DeltaDs.FieldByName('Activo').NewValue = Falso then
              q.ParamByName('Activo').AsInteger := Falso
            else
              q.ParamByName('Activo').AsInteger := Verdadero;
          end
        end;
      end;

      q.ParamByName('FechaAlta').AsDate := Date;
      q.ParamByName('Usuario').AsInteger:= Usuario;
      q.ParamByName('Old_IdArticulo').AsInteger := DeltaDs.FieldByName('IdArticulo').OldValue;
      try
        q.ExecSQL;
      except
        on E: Exception do
          raise EUsuario.Create(E.Message + ' - Actualizando Modificación de Productos ');
      end;
    finally
      q.Free;
    end;

    if Cambio_Precio then
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := dmSaveFile.trSaveComp;
        i := dmSaveFile.Get_Ultimos(RegPrc);
        q.SQL.Add('INSERT INTO ARTMODPRC ');
        q.SQL.Add('  (IDREMMOD, IDARTICULO, TIPOCOMP, NROREMITO, FECHAR, DIAHORA, USUARIO, ');
        q.SQL.Add('   COSTOOLD, COSTONEW, PRECIOOLD, PRECIONEW, DETALLE, CANTCTAS, IDSUCURSAL, ');
        q.SQL.Add('   FECHAALTA, FECHAFIN, VALORCTAS) ');
        q.SQL.Add('VALUES ');
        q.SQL.Add('  (:IDREMMOD, :IDARTICULO, :TIPOCOMP, :NROREMITO, :FECHAR, :DIAHORA, :USUARIO, ');
        q.SQL.Add('   :COSTOOLD, :COSTONEW, :PRECIOOLD, :PRECIONEW, :DETALLE, :CANTCTAS, :IDSUCURSAL, ');
        q.SQL.Add('   :FECHAALTA, :FECHAFIN, :VALORCTAS) ');
        q.ParamByName('IDREMMOD').AsInteger := i;
        q.ParamByName('IDARTICULO').AsInteger := DeltaDs.FieldByName('IdArticulo').OldValue;
        q.ParamByName('TIPOCOMP').AsInteger := RemitoPrecios;
        q.ParamByName('NROREMITO').AsString := Format('%.4d-%.8d',[IdBranch, i]);
        q.ParamByName('FECHAR').AsDate := Date;
        q.ParamByName('DIAHORA').AsDateTime := Now;
        q.ParamByName('USUARIO').AsInteger := Usuario;
        if VarIsNull(DeltaDs.FieldByName('Costo').OldValue) then
          q.ParamByName('CostoOld').AsCurrency := 0
        else
          q.ParamByName('CostoOld').AsCurrency := DeltaDs.FieldByName('Costo').OldValue;
        if DeltaDs.FieldByName('Costo').NewValue = Unassigned then
          q.ParamByName('CostoNew').AsCurrency:= DeltaDs.FieldByName('Costo').OldValue
        else
          q.ParamByName('CostoNew').AsCurrency:= DeltaDs.FieldByName('Costo').Value;
        if VarIsNull(DeltaDs.FieldByName('Costo').OldValue) then
          q.ParamByName('PrecioOld').AsCurrency := 0
        else begin
          if DeltaDs.FieldByName('Costo').NewValue = Unassigned then
            q.ParamByName('PrecioOld').AsCurrency := DeltaDs.FieldByName('Costo').OldValue
          else
            q.ParamByName('PrecioOld').AsCurrency := DeltaDs.FieldByName('Costo').Value;
        end;
        if DeltaDs.FieldByName('Precio').NewValue = Unassigned then
          q.ParamByName('PrecioNew').AsCurrency:= DeltaDs.FieldByName('Precio').OldValue
        else
          q.ParamByName('PrecioNew').AsCurrency:= DeltaDs.FieldByName('Precio').Value;
        q.ParamByName('DETALLE').AsString := 'Modificación General del ' + DateToStr(Date);
        q.ParamByName('CANTCTAS').AsInteger := 0;
        q.ParamByName('IDSUCURSAL').AsInteger := 0;
        q.ParamByName('FECHAALTA').Clear;
        q.ParamByName('FECHAFIN').Clear;
        q.ParamByName('VALORCTAS').AsCurrency := 0;
        try
          q.ExecSQL;
        except
          on E: Exception do
          begin
            raise EUsuario.Create(E.Message + ' - Agregando registro de modificaciones de precios');
          end;
        end;
      finally
        q.Free;
      end;
    end;
  end;
  Applied := True;
end;

procedure TfrmABMArticulos.ModPrcReconcileError(
                           DataSet: TCustomClientDataSet; E: EReconcileError;
                           UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ApplicationShowException(E);
end;

procedure TfrmABMArticulos.ModPrcCOSTOChange(Sender: TField);
var
  AuxIva: Currency;
  CftIva: Double;
begin
  AuxIva := 0;
  CftIva := 0;
  if not ModFinal then
  begin
    ModFinal := True;
    ModCosto := True;
    CftIva := (GetAlcIva(ModPrcAlcIva.AsInteger) -
              ((GetAlcIva(ModPrcAlcIva.AsInteger) * ModPrcExento.AsFloat)/100));
    ModPrcPNeto.AsCurrency := Sender.Value + ((Sender.Value * ModPrcGanancia.AsCurrency)/100);
    AuxIva := (ModPrcPNeto.AsCurrency * CftIva)/100;
    ModPrcPrecio.AsCurrency := ModPrcPNeto.AsCurrency + AuxIva + ModPrcImpInt.AsCurrency;
    ModFinal := False;
    ModCosto := False;
  end;
  gModPrecios.RefreshDisplay;
end;

procedure TfrmABMArticulos.ModPrcGANANCIAChange(Sender: TField);
var
  AuxIva: Currency;
  CftIva: Double;
begin
  AuxIva := 0;
  CftIva := 0;
  if (ModPrcGanancia.AsFloat <> 0) and (not ModFinal) then
  begin
    ModFinal := True;
    ModGan := True;
    CftIva := (GetAlcIva(ModPrcAlcIva.AsInteger) - ((GetAlcIva(ModPrcAlcIva.AsInteger) * ModPrcExento.AsFloat)/100));
    ModPrcPNeto.AsCurrency := ModPrcCosto.AsCurrency + ((ModPrcCosto.AsCurrency * Sender.Value)/100);
    AuxIva := (ModPrcPNeto.AsCurrency * CftIva) / 100;
    ModPrcPrecio.AsCurrency := ModPrcPNeto.AsCurrency + AuxIva + ModPrcImpInt.AsCurrency;
    ModFinal := False;
    ModGan := False;
  end;
  gModPrecios.RefreshDisplay;
end;

procedure TfrmABMArticulos.ModPrcPRECIOChange(Sender: TField);
var
  PrecioNeto, PrecioCosto, CftIva: Currency;
begin
  if (not ModFinal) and
     (not ModGan) and
     (not ModCosto) and
     (not ModExt) and
     (not ModII) then
  begin
    ModFinal := True;
    ModGan := True;
    ModCosto := True;
    ModExt := True;
    ModII := True;
    PrecioNeto := 0;
    PrecioCosto := 0;
    CftIva := 0;
    CftIva := (GetAlcIva(ModPrcAlcIva.AsInteger) - ((GetAlcIva(ModPrcAlcIva.AsInteger) * ModPrcExento.AsFloat)/100));
    PrecioNeto  := (Sender.Value - ModPrcImpInt.AsCurrency) / (1 + (CftIva/100));
    PrecioCosto := ModPrcCosto.AsCurrency;
    ModPrcPNeto.AsCurrency := PrecioNeto;
    try
      ModPrcGanancia.AsFloat := ((PrecioNeto/PrecioCosto) - 1)*100
    except
      ModPrcGanancia.AsFloat := 0;
    end;
    ModFinal := False;
    ModGan := False;
    ModCosto := False;
    ModExt := False;
    ModII := False;
    gModPrecios.RefreshDisplay;
  end;
end;

procedure TfrmABMArticulos.btnModBuscarClick(Sender: TObject);
begin
  Buscar_Productos_AModificar;
end;
//****************************************  UTILES   **************************

//**************************************** Stock General **************************
procedure TfrmABMArticulos.ArmarTabla_StkGral;
var
  i: Integer;
begin
  gStkGeneral.Visible := False;
  i := StkGral.FieldCount;
  While i > 0 do
  begin
    StkGral.FieldDefs.Delete(i-1);
    Dec(i)
  end;
  StkGral.Active := False;
  StkGral.FieldDefs.Add('IdArea', ftInteger);
  StkGral.FieldDefs.Add('IdGrupo', ftInteger);
  StkGral.FieldDefs.Add('IdSubGrupo', ftInteger);
  StkGral.FieldDefs.Add('IdArticulo', ftInteger);
  StkGral.FieldDefs.Add('Marca', ftString, 20);
  StkGral.FieldDefs.Add('Detalle', ftString, 50);
  StkGral.FieldDefs.Add('StkAll', ftFloat);
  if not dmGestion.Sucursales.Active then
    dmGestion.Sucursales.Open;
  dmGestion.Sucursales.First;
  while not dmGestion.Sucursales.Eof do
  begin
    if (dmGestion.SucursalesACTIVA.AsInteger = Verdadero) then
    begin
      try
        StkGral.Fields.CheckFieldName('Stk_C' + dmGestion.SucursalesIdSucursal.AsString);
        StkGral.FieldDefs.Add('Stk_C' + dmGestion.SucursalesIdSucursal.AsString, ftFloat);
      except
      end;
    end;
    dmGestion.Sucursales.Next;
  end;

  if StkGral.Active then
    StkGral.EmptyDataSet
  else
    StkGral.CreateDataSet;

  // Titulos Columnas
  StkGral.Open;
  gStkGeneral.UseTFields := False;
  gStkGeneral.Selected.Clear;
  gStkGeneral.Selected.Add('IdArticulo'+#9+'6'#9+'Código'+#9+'F');
  gStkGeneral.Selected.Add('Marca'+#9+'12'+#9+'Marca'+#9+'F');
  gStkGeneral.Selected.Add('Detalle'+#9+'40'+#9+'Producto'+#9+'F');
  gStkGeneral.Selected.Add('StkAll'+#9+'8'+#9+'Total'+#9+'F');
  StkGral.FieldByName('StkAll').DisplayWidth := 9;
  TFloatField(StkGral.FieldByName('StkAll')).DisplayFormat := '0;(0)';
  StkGral.FieldByName('StkAll').Alignment := taCenter;

  dmGestion.Sucursales.First;
  while not dmGestion.Sucursales.Eof do
  begin
    if (Trim(dmGestion.SucursalesNombreSuc.AsString) > Vacio) and
       (dmGestion.SucursalesACTIVA.AsInteger = Verdadero) then
    begin
      StkGral.FieldByName('Stk_C' + dmGestion.SucursalesIdSucursal.AsString).DisplayLabel := dmGestion.SucursalesDetSuc.AsString;
      StkGral.FieldByName('Stk_C' + dmGestion.SucursalesIdSucursal.AsString).DisplayWidth := 8;
      TFloatField(StkGral.FieldByName('Stk_C' + dmGestion.SucursalesIdSucursal.AsString)).DisplayFormat := '0;(0)';
      StkGral.FieldByName('Stk_C' + dmGestion.SucursalesIdSucursal.AsString).Alignment := taCenter;
      gStkGeneral.Selected.Add('Stk_C'+ dmGestion.SucursalesIdSucursal.AsString+#9+'6'+#9+dmGestion.SucursalesDetSuc.AsString+#9+'F');
    end;
    dmGestion.Sucursales.Next;
  end;
  StkGral.FieldByName('IdArea').Visible := False;
  StkGral.FieldByName('IdGrupo').Visible := False;
  StkGral.FieldByName('IdSubGrupo').Visible := False;
  gStkGeneral.FixedCols := 2;
end;

procedure TfrmABMArticulos.LlenarTabla_StkGral;
const
  StkGl = 'Select IdStock, IdArticulo, IdArea, IdGrupo, IdSubGrupo, ' +
          '       CodBus, Marca, Detalle, Precio, Actual  '+
          'From STOCK_DEPOSITOS(:IDBRANCH) ';
begin
  try
    qStkGral.Close;
    qStkGral.SQL.Clear;
    if Trim(Cond_Stk) > Vacio then
      qStkGral.SQL.Text := StkGl + Cond_Stk + ' Order By Marca'
    else
      qStkGral.SQL.Text := StkGl + ' Order By Marca';
    qStkGral.ParamByName('IDBRANCH').AsInteger := Deposito;
    qStkGral.Prepare;
    qStkGral.Open;
  except
    on E:Exception do
      raise EUsuario.Create('Error en Stk por Depositos: '+E.Message);
  end;
  if not qStkGral.IsEmpty then
  begin
    try
      qStkGral.DisableControls;
      qStkGral.First;
      while not qStkGral.Eof do
      begin
        if qStkGralIdStock.AsInteger > 0 then
        begin
          if StkGral.Locate(StkGral.FieldByName('IdArticulo').FieldName, qStkGralIdArticulo.AsInteger, []) then
          begin
            StkGral.Edit;
            StkGral.FieldByName('Stk_C'+qStkGralIdStock.AsString).AsFloat := StkGral.FieldByName('Stk_C'+qStkGralIdStock.AsString).AsFloat + qStkGralActual.AsFloat;
            StkGral.FieldByName('StkAll').AsFloat := StkGral.FieldByName('StkAll').AsFloat + qStkGralActual.AsFloat;
            StkGral.Post;
          end
          else begin
            StkGral.Insert;
            StkGral.FieldByName('IdArea').AsInteger := qStkGralIdArea.AsInteger;
            StkGral.FieldByName('IdGrupo').AsInteger := qStkGralIdGrupo.AsInteger;
            StkGral.FieldByName('IdSubGrupo').AsInteger := qStkGralIdSubGrupo.AsInteger;
            StkGral.FieldByName('IdArticulo').AsInteger := qStkGralIdArticulo.AsInteger;
            StkGral.FieldByName('Marca').AsString := qStkGralMarca.AsString;
            StkGral.FieldByName('Detalle').AsString := qStkGralDetalle.AsString;
            StkGral.FieldByName('StkAll').AsFloat := qStkGralActual.AsFloat;
            StkGral.FieldByName('Stk_C'+qStkGralIdStock.AsString).AsFloat := qStkGralActual.AsFloat;
            StkGral.Post;
          end;
        end;
        qStkGral.Next;
      end;
    finally
      StkGral.IndexFieldNames := StkGral.FieldByName('Marca').FieldName+';'+
                                 StkGral.FieldByName('Detalle').FieldName;
      (*
      StkGral.IndexFieldNames := StkGral.FieldByName('IdArea').FieldName+';'+
                                 StkGral.FieldByName('IdGrupo').FieldName+';'+
                                 StkGral.FieldByName('IdSubGrupo').FieldName;
      *)
      if StkGral.IsEmpty then
        gStkGeneral.Visible := False
      else begin
        gStkGeneral.Visible := True;
        StkGral.First;
        StkGral.EnableControls;
      end;
    end;
  end;
end;

procedure TfrmABMArticulos.Ver_Stock_General;
begin
  ArmarTabla_StkGral;
  LlenarTabla_StkGral;
end;

//****************************************  STOCKS   **************************
procedure TfrmABMArticulos.Calcular_Stock(AOrder: String);
const
  StkGr = 'Select IDSTOCK, IDAREA, IDGRUPO, IDSUBGRUPO, IDARTICULO, MARCA, '+
          '       DETALLE, CODBARRA, PRECIO, AREA, GRUPO, TALLE, SUBGRUPO, '+
          '       ACTUAL, STKAINV, SACTUAL, UVENTA, UENVIO, COLOR, DETSUC '+
          'From Stock_Cantidades(:IDBRANCH, :CON_TALLES) ';

  Orden = 'IdArticulo, IdArea, IdGrupo, IdSubGrupo, Marca, Talle ';

  CantS = 'Select Count(IdArticulo) as CantProd, '+
          '       Sum(Actual) as CantUnid '+
          'From Stock_Cantidades(:IDBRANCH, :CON_TALLES) ';

  StTXT = 'Select IDARTICULO, MARCA, DETALLE, GRUPO, '+
          '       SUBGRUPO, ACTUAL, TALLE, PRECIO  '+
          'From Stock_Cantidades(:IDBRANCH, :CON_TALLES) ';

  (*
  Select IDSTOCK, IDAREA, IDGRUPO, IDSUBGRUPO, IDARTICULO, MARCA,
         DETALLE, CODBARRA, PRECIO, AREA, GRUPO, TALLE, SUBGRUPO,
         ACTUAL, STKAINV, SACTUAL, UVENTA, UENVIO, COLOR, DETSUC
  From Stock_Cantidades(0, 0)
  *)

  procedure Calcular_VStock;
  const
    Stk_V = 'Select NombreSuc, Area, Grupo, SubGrupo, IdArticulo, Marca, '+
            '       Detalle, Color, Actual, StkAInv, SActual, TCosto, '+
            '       TNeto, TPrecio, IdStock, IdArea, IdGrupo, IdSubGrupo '+
            'From STOCK_VALORIZADOS(:IdBranch) '+
            '<Cond> '+
            'Order By NombreSuc, Area, Grupo, SubGrupo, Marca ';

    Tot_S = 'Select Sum(TCosto) as TVCosto, '+
            '       Sum(TNeto) as TVNeto, '+
            '       Sum(TPrecio) as TVFinal '+
            'From STOCK_VALORIZADOS(:IdBranch) ';

    VArea = 'Select NombreSuc, Area, Grupo, SubGrupo, '+
            '       IdArea, IdGrupo, IdSubGrupo, '+
            '       Sum(Actual) as TActual, '+
            '       Sum(TCosto) as TACosto, '+
            '       Sum(TNeto) as TANeto, '+
            '       Sum(TPrecio) as TAPrecio '+
            'From STOCK_VALORIZADOS(:IdBranch) '+
            '<Cond> '+
            'Group By NombreSuc, Area, Grupo, SubGrupo, '+
            '         IdArea, IdGrupo, IdSubGrupo '+
            'Order By NombreSuc, Area, Grupo, SubGrupo ';


    procedure Totales;
    var
      q: TMDOQuery;
    begin
      tsStkValorizado.TabEnabled := True;
      tsStkAreasVal.TabEnabled := True;
      qAreasVStk.SQL.Clear;
      qAreasVStk.SQL.Text := StringReplace(VArea, '<Cond>', Cond_Stk, [rfReplaceAll]);
      qAreasVStk.ParamByName('IdBranch').AsInteger := Deposito;
      qAreasVStk.Open;
      try
        q := TMDOQuery.Create(nil);
        q.Database := qAreasVStk.Database;
        q.Transaction := qAreasVStk.Transaction;
        q.SQL.Text := Tot_S + Cond_Stk;
        q.ParamByName('IdBranch').AsInteger := Deposito;
        q.Open;
        TVCosto := q.FieldByName('TVCOSTO').AsCurrency;
        TVNeto  := q.FieldByName('TVNeto').AsCurrency;
        TVFinal := q.FieldByName('TVFinal').AsCurrency;
        q.Close;
      finally
        q.Free;
      end;
    end;

  begin
    try
      TVCosto := 0;
      TVNeto := 0;
      TVFinal := 0;
      qLstVStk.Close;
      qAreasVStk.Close;
      qLstVStk.SQL.Clear;
      qLstVStk.SQL.Text := StringReplace(Stk_V, '<Cond>', Cond_Stk, [rfReplaceAll]);
      qLstVStk.ParamByName('IdBranch').AsInteger := Deposito;
      qLstVStk.Open;
      if not qLstVStk.IsEmpty then
      begin
        Totales;
        qLstVStk.First;
      end;
    finally
      gVStock.RefreshDisplay;
      gVStock.ColumnByName('TCosto').FooterValue := Format('%12.2f',[TVCosto]);
      gVStock.ColumnByName('TNeto').FooterValue  := Format('%12.2f',[TVNeto]);
      gVStock.ColumnByName('TPrecio').FooterValue:= Format('%12.2f',[TVFinal]);

      gTotStk.RefreshDisplay;
      gTotStk.ColumnByName('TACosto').FooterValue := Format('%12.2f',[TVCosto]);
      gTotStk.ColumnByName('TANeto').FooterValue  := Format('%12.2f',[TVNeto]);
      gTotStk.ColumnByName('TAPrecio').FooterValue:= Format('%12.2f',[TVFinal]);
    end;
  end;

var
  A, G, S,
  Cual_Talle,
  Cual_Cant: Integer;
  M, C: String;
  q: TMDOQuery;
begin
  Cond_Stk := Vacio;
  CantProd := 0;
  CantUnid := 0;
  try
    Screen.Cursor := crSQLWait;
    Application.ProcessMessages;

    InformeEnTXT.Enabled := False;
    tsStkDistribuido.TabEnabled := False;
    tsStkValorizado.TabEnabled := False;
    tsStkAreasVal.TabEnabled := False;
    Cual_Talle := rgStkTalles.ItemIndex;
    Cual_Cant  := rgStkCant.ItemIndex;
    btnExportarStk.Enabled := False;
    btnImprimirStk.Enabled := False;
    gLstStk.Visible := False;
    qLstStk.Close;
    qLstStkTxt.Close;
    try
      Deposito := Integer(cbStkDeposito.Items.Objects[cbStkDeposito.ItemIndex]);
    except
      Deposito := 0;
    end;
    try
      A := Integer(cbStkArea.Items.Objects[cbStkArea.ItemIndex]);
    except
      A := 0;
    end;
    try
      G := Integer(cbStkGrupos.Items.Objects[cbStkGrupos.ItemIndex]);
    except
      G := 0;
    end;
    try
      S := Integer(cbStkSubGrupos.Items.Objects[cbStkSubGrupos.ItemIndex]);
    except
      S := 0;
    end;

    try
      if (Trim(cbStkMarca.Text) > Vacio) and
         (Trim(cbStkMarca.Text) <> '<TODAS>') then
        M := cbStkMarca.Text;
    except
      M := Vacio;
    end;

    if A > 0 then
    begin
      if Trim(Cond_Stk) = Vacio then
        Cond_Stk := ' Where ';
      Cond_Stk := Cond_Stk +' (IdArea = ' + IntToStr(A)+')';
      if G > 0 then
      begin
        Cond_Stk := Cond_Stk +' And (IdGrupo = ' + IntToStr(G)+')';
        if S > 0 then
          Cond_Stk := Cond_Stk+' And (IdSubGrupo = ' + IntToStr(S)+')';
      end;
    end;

    if Trim(M) > Vacio then
    begin
      if Trim(Cond_Stk) = Vacio then
        Cond_Stk := ' Where (Marca Starting with '''+M+''')';
      if Trim(Cond_Stk) > 'Where' then
        Cond_Stk := Cond_Stk+' And (Marca Starting with '''+M+''')';
    end;

    C := Vacio;
    case TCantidades(Cual_Cant) of
      cConStock : C := ' (Actual > 0) ';
      cTodas    : C := ' (Actual Is not Null) ';
      cFaltantes: C := ' (Actual < 0) ';
      cSinVta   : C := ' (UVenta Is Null) ';
    end;

    if Trim(C) > Vacio then
    begin
      if Trim(Cond_Stk) = Vacio then
        Cond_Stk := ' Where ' + C;
      if Trim(Cond_Stk) > 'Where' then
        Cond_Stk := Cond_Stk+' And '+C;
    end;

    gLstStk.Selected.Clear;
    Case TTalles(Cual_Talle) of
      conTalles: begin
        if Control_Talles then
        begin
          gLstStk.Font.Style := [];
          gLstStk.Selected.Add('DetSuc'#9'2'#9'Sª'#9'F'#9);
          gLstStk.Selected.Add('IdArticulo'#9'5'#9'Código'#9'F'#9);
          gLstStk.Selected.Add('Marca'#9'10'#9'Marca'#9'F');
          gLstStk.Selected.Add('Detalle'#9'28'#9'Detalle'#9'F');
          gLstStk.Selected.Add('Actual'#9'7'#9'Actual'#9'F'#9);
          gLstStk.Selected.Add('Talle'#9'4'#9'Talle'#9'F');
          gLstStk.Selected.Add('ActualT'#9'5'#9'Stk/T'#9'F');
          gLstStk.Selected.Add('Precio'#9'10'#9'Precio'#9'F');
          gLstStk.Selected.Add('UEnvio'#9'10'#9'Ult.Envio'#9'F');
          gLstStk.Selected.Add('UVenta'#9'10'#9'Ult.Venta'#9'F');
        end;
      end;
      SinTalles: begin
        gLstStk.Font.Style := [fsBold];
        gLstStk.Selected.Add('DetSuc'#9'2'#9'Sª'#9'F'#9);
        gLstStk.Selected.Add('IdArticulo'#9'6'#9'Código'#9'F'#9);
        gLstStk.Selected.Add('Marca'#9'15'#9'Marca'#9'F');
        gLstStk.Selected.Add('Detalle'#9'30'#9'Detalle'#9'F');
        gLstStk.Selected.Add('Actual'#9'7'#9'Actual'#9'F'#9);
        gLstStk.Selected.Add('Precio'#9'10'#9'Precio'#9'F');
        gLstStk.Selected.Add('UEnvio'#9'10'#9'Ult.Envio'#9'F');
        gLstStk.Selected.Add('UVenta'#9'10'#9'Ult.Venta'#9'F');
      end;
    end;
    lblStkNDep.Caption := Format('Nº Dep %d ', [Deposito]);
    qLstStk.SQL.Clear;
    if Trim(AOrder) = Vacio then
      AOrder := Orden;
    qLstStk.SQL.Text := StkGr + Cond_Stk + ' Order By '+AOrder;
    qLstStk.ParamByName('IDBRANCH').AsInteger := Deposito;
    qLstStk.ParamByName('CON_TALLES').AsInteger := Cual_Talle;
    qLstStk.Prepare;
    qLstStk.Open;

    if not qLstStk.IsEmpty then
    begin
      qLstStkTxt.SQL.Text := StkGr + Cond_Stk + ' Order By '+AOrder;
      qLstStkTxt.ParamByName('IDBRANCH').AsInteger := Deposito;
      qLstStkTxt.ParamByName('CON_TALLES').AsInteger := Cual_Talle;
      qLstStkTxt.Prepare;
      qLstStkTxt.Open;
      if not qLstStkTxt.IsEmpty then
        InformeEnTXT.Enabled := True;
      gLstStk.Visible := True;

      if cbxDistribucion.State = cbChecked then
      begin
        tsStkDistribuido.TabEnabled := True;
        Ver_Stock_General;
      end;

      btnExportarStk.Enabled := True;
      btnImprimirStk.Enabled := True;
      try
        q := TMDOQuery.Create(nil);
        q.Database := qLstStk.Database;
        q.Transaction := qLstStk.Transaction;
        q.SQL.Text := CantS + Cond_Stk;
        q.ParamByName('IDBRANCH').AsInteger := Deposito;
        q.ParamByName('CON_TALLES').AsInteger := Cual_Talle;
        q.Open;
        CantProd := q.FieldByName('CantProd').AsInteger;
        CantUnid := q.FieldByName('CantUnid').AsInteger;
      finally
        q.Free;
      end;
      if cbxValorizados.Checked then
        Calcular_VStock;
    end;
  finally
    gLstStk.ColumnByName('Detalle').FooterValue := Format('ºItems %d / ºUnidades %d ',[CantProd, CantUnid]);
    gLstStk.RefreshDisplay;
    Screen.Cursor := crDefault;
  end;
  (* Select IDSTOCK, IDAREA, IDGRUPO, IDSUBGRUPO, IDARTICULO, MARCA,
          DETALLE, CODBARRA, PRECIO, AREA, GRUPO, TALLE, SUBGRUPO,
          ACTUAL, STKAINV, SACTUAL, UVENTA, UENVIO, COLOR, DETSUC
   From Stock_Cantidades(9, 0)
   Where (IdArea = 2) and (IdGrupo = 1) and
         (IdSubGrupo = 1) and (Actual > 0)
   Order By IdArea, IdGrupo, IdSubGrupo, Marca, Talle *)
end;

procedure TfrmABMArticulos.gLstStkUpdateFooter(Sender: TObject);
begin
  gLstStk.ColumnByName('Detalle').FooterValue := Format('ºItems %d / ºUnidades %d ',[CantProd, CantUnid]);
end;

procedure TfrmABMArticulos.gVStockUpdateFooter(Sender: TObject);
begin
  gVStock.ColumnByName('TCosto').FooterValue := Format('%12.2f',[TVCosto]);
  gVStock.ColumnByName('TNeto').FooterValue  := Format('%12.2f',[TVNeto]);
  gVStock.ColumnByName('TPrecio').FooterValue:= Format('%12.2f',[TVFinal]);
end;

procedure TfrmABMArticulos.gTotStkUpdateFooter(Sender: TObject);
begin
  gTotStk.ColumnByName('TACosto').FooterValue := Format('%12.2f',[TVCosto]);
  gTotStk.ColumnByName('TANeto').FooterValue  := Format('%12.2f',[TVNeto]);
  gTotStk.ColumnByName('TAPrecio').FooterValue:= Format('%12.2f',[TVFinal]);
end;

procedure TfrmABMArticulos.gVStockDblClick(Sender: TObject);
begin
  Get_MStk(gVStock.DataSource.DataSet.FieldByName('IdArticulo').AsInteger, Deposito);
end;

procedure TfrmABMArticulos.cbStkGruposChange(Sender: TObject);
begin
  if Pos('<TODOS>', cbStkGrupos.Text) = 0 then
  begin
    qLstSubGr.Close;
    qLstSubGr.ParamByName('IdArea').AsInteger  := Integer(cbStkArea.Items.Objects[cbStkArea.ItemIndex]);
    qLstSubGr.ParamByName('IdGrupo').AsInteger := Integer(cbStkGrupos.Items.Objects[cbStkGrupos.ItemIndex]);
    qLstSubGr.Open;
    qLstSubGr.First;
    cbStkSubGrupos.Items.Clear;
    cbStkSubGrupos.Items.AddObject('<TODOS>', TObject(0));
    while not qLstSubGr.Eof do
    begin
      cbStkSubGrupos.Items.AddObject(qLstSubGrSubGrupo.AsString, TObject(qLstSubGrIdSubGrupo.AsInteger));
      qLstSubGr.Next;
    end;
    cbStkSubGrupos.Enabled := True;
  end
  else begin
    cbStkSubGrupos.ItemIndex := 0;
  end;
end;

procedure TfrmABMArticulos.btnStkCalcularClick(Sender: TObject);
begin
  Calcular_Stock(Vacio);
end;

procedure TfrmABMArticulos.gLstStkTitleButtonClick(Sender: TObject; AFieldName: String);
begin
  try
    Calcular_Stock(AFieldName);
  except
    Calcular_Stock(Vacio);
  end;
end;

procedure TfrmABMArticulos.qLstStkCTTalleGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  try
    Text := GetTextTalle(Sender.AsInteger);
  except
    Text := Sender.AsString;
  end;
end;

procedure TfrmABMArticulos.qLstStkTxtMARCAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Trim(qLstStkTxtMARCA.AsString) = Vacio then
    Text := 'NO POSEE'
  else
    Text := qLstStkTxtMARCA.AsString;
end;

procedure TfrmABMArticulos.qLstStkTxtTALLEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if (qLstStkTxtTalle.AsInteger = SIN_DETALLE_TALLE) or
     (qLstStkTxtTalle.AsInteger = 0) then
    Text := 'NO'
  else begin
    try
      Text := GetTextTalle(Sender.AsInteger);
    except
      Text := Sender.AsString;
    end;
  end;
end;

procedure TfrmABMArticulos.qOfertasDETSUCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if qOfertasIdSucursal.AsInteger = 0 then
    Text := 'T'
  else
    Text := qOfertasDETSUC.AsString
end;

procedure TfrmABMArticulos.gLstStkDblClick(Sender: TObject);
begin
  if Check_Seg(Nivel_Con,'Stocks', AutorDto) then
    Get_MStk(gLstStk.DataSource.DataSet.FieldByName('IdArticulo').AsInteger, Deposito);
end;

procedure TfrmABMArticulos.lblTalleGetText(Sender: TObject; var Text: String);
begin
  try
    Text := GetTextTalle(StrToInt(Text));
  except
    Text := ' ';
  end;
end;

procedure TfrmABMArticulos.btnStkMovStkClick(Sender: TObject);
begin
  Get_MStk(0, 0);
end;

procedure TfrmABMArticulos.cbStkAreaChange(Sender: TObject);
begin
  if Pos('<TODOS>', cbStkArea.Text) = 0 then
  begin
    qLstGrupos.Close;
    qLstGrupos.ParamByName('IdArea').AsInteger := Integer(cbStkArea.Items.Objects[cbStkArea.ItemIndex]);
    qLstGrupos.Open;
    qLstGrupos.First;
    cbStkGrupos.Items.Clear;
    cbStkGrupos.Items.AddObject('<TODOS>', TObject(0));
    while not qLstGrupos.Eof do
    begin
      cbStkGrupos.Items.AddObject(qLstGruposGrupo.AsString, TObject(qLstGruposIdGrupo.AsInteger));
      qLstGrupos.Next;
    end;
    cbStkGrupos.Enabled := True;
  end
  else begin
    cbStkGrupos.ItemIndex := 0;
  end;
end;

procedure TfrmABMArticulos.cbStkAreaEnter(Sender: TObject);
begin
  cbStkGrupos.Items.Clear;
  cbStkGrupos.Items.AddObject('<TODOS>', TObject(0));
  cbStkGrupos.ItemIndex := 0;
  cbStkGrupos.Enabled := False;
  cbStkMarca.ItemIndex := 0;
  cbStkDeposito.ItemIndex := 0;
end;

procedure TfrmABMArticulos.cbStkDepositoChange(Sender: TObject);
begin
  try
    Deposito := Integer(cbStkDeposito.Items.Objects[cbStkDeposito.ItemIndex]);
  except
    Deposito := 0;
  end;
  if Deposito = 0 then // Solo en Todos
    cbxDistribucion.Enabled := True
  else
    cbxDistribucion.Enabled := False;
end;

procedure TfrmABMArticulos.cbStkGruposEnter(Sender: TObject);
begin
  cbStkSubGrupos.Items.Clear;
  cbStkSubGrupos.Items.AddObject('<TODOS>', TObject(0));
  cbStkSubGrupos.ItemIndex := 0;
  cbStkSubGrupos.Enabled := False;
end;
//****************************************    STOCKS   ************************

//****************************************  Valorizados ***********************
procedure TfrmABMArticulos.LstStockGeneralClick(Sender: TObject);
begin
  try
    gLstStk.DataSource.DataSet.DisableControls;
    lblStkEmpresa.Caption := OwnerName;
    lblStkTitulo.Caption := 'Informe de Stocks Sucursal: ' + cbStkDeposito.Text;
    lblTalle.Visible := (Control_Talles) And (rgStkTalles.ItemIndex = 1);
    lblTN.Visible := (Control_Talles) And (rgStkTalles.ItemIndex = 1);
    lblStkTN.Visible := (Control_Talles) And (rgStkTalles.ItemIndex = 1);
    lblActualT.Visible := (Control_Talles) And (rgStkTalles.ItemIndex = 1);
    shpAudit.Visible := False;
    lblActual.Visible := True;
    lblActualT.Visible := (Control_Talles) And (rgStkTalles.ItemIndex = 1);
    lstStock.Print;
  finally
    gLstStk.DataSource.DataSet.EnableControls;
  end;
end;

procedure TfrmABMArticulos.InformedeControlStkClick(Sender: TObject);
begin
  try
    gLstStk.DataSource.DataSet.DisableControls;
    lblStkEmpresa.Caption := OwnerName;
    lblStkTitulo.Caption := 'Control de Stocks para sucursal:  ' + cbStkDeposito.Text;
    lblTalle.Visible := (Control_Talles) And (rgStkTalles.ItemIndex = 1);
    lblTN.Visible := (Control_Talles) And (rgStkTalles.ItemIndex = 1);
    lblStkTN.Visible := (Control_Talles) And (rgStkTalles.ItemIndex = 1);
    lblActualT.Visible := (Control_Talles) And (rgStkTalles.ItemIndex = 1);
    shpAudit.Visible := True;
    lblActual.Visible := False;
    lblActualT.Visible := False;
    lstStock.Print;
  finally
    gLstStk.DataSource.DataSet.EnableControls;
  end;
end;

procedure TfrmABMArticulos.InformeEnTXTClick(Sender: TObject);
begin
  if not qLstStkTxt.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qLstStkTxt;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmABMArticulos.LstStockValorizadoClick(Sender: TObject);
begin
  try
    gVStock.DataSource.DataSet.DisableControls;
    lblTVTitulo.Caption := 'Stock valorizado. Sucursal: '+cbStkDeposito.Text;
    lblTVEmpresa.Caption := OwnerName;
    lstVStock.Print;
  finally
    gVStock.DataSource.DataSet.EnableControls;
  end;
end;

procedure TfrmABMArticulos.btnExportarStkClick(Sender: TObject);
begin
  Case pcInfStk.ActivePageIndex of
    0: dmGestion.IyC_Exp.DataSet := gLstStk.DataSource.DataSet;
    1: dmGestion.IyC_Exp.DataSet := gStkGeneral.DataSource.DataSet;
    2: dmGestion.IyC_Exp.DataSet := gVStock.DataSource.DataSet;
    3: dmGestion.IyC_Exp.DataSet := gTotStk.DataSource.DataSet;
  end;
  dmGestion.IyC_Exp.Select;
end;

//**************************************** Comprados **************************
procedure TfrmABMArticulos.Informe_Prod_Comprados(AOrder: String);
const
   ProdC = 'Select Nombre, Area, Grupo, SubGrupo, Marca, Detalle, '+
           '       Color, Cantidad, PrecioFinal, FechaF, TComp, '+
           '       NroFactura, IdArticulo, IdFactura, IdSucursal, '+
           '       IdPuntoVenta, IdProveedor, TotCant, TotComp, '+
           '       DiaHora '+
           'From PRODUCTOS_COMPRADOS(:Desde, :Hasta) ';

   Order = 'Order By Nombre, FechaF ';

   ProdT = 'Select Sum(PrecioFinal) as Total, '+
           '       Sum(Cantidad) as Cantidad '+
           'From PRODUCTOS_COMPRADOS(:Desde, :Hasta) ';
var
  q: TMDOQuery;
  c, p: String;
begin
  if (edtDesdeCom.Date > edtHastaCom.Date) then
  begin
    edtDesdeCom.SetFocus;
    raise EUsuario.Create('Periodo mal ingresado');
  end;
  c := Vacio;
  TotProdCom := 0;
  CanProdCom := 0;
  qProdComprados.Close;
  qProdComprados.Sql.Clear;

  //Por productos
  if IdProdCom > 0 then
  begin
    if Trim(c) > Vacio then
      c := c + ' IdArticulo = '+IntToStr(IdProdCom)
    else
      c := ' Where IdArticulo = '+IntToStr(IdProdCom);
  end;

  //Por Proveedor
  if IdProvCom > 0 then
  begin
    if Trim(c) > Vacio then
       c := c + ' IdProveedor = '+IntToStr(IdProvCom)
    else
       c := ' Where IdProveedor = '+IntToStr(IdProvCom);
  end;

  // Por Marca
  if (Trim(cbMarcaCom.Text) > Vacio) and (Pos('<TODAS>', cbMarcaCom.Text) = 0) then
  begin
    if Trim(c) > Vacio then
      c := c + ' And Marca Starting with '''+Trim(cbMarcaCom.Text)+''''
    else
      c := ' Where Marca Starting with '''+Trim(cbMarcaCom.Text)+''''
  end;

  //Orden
  if Trim(AOrder) > Vacio then
    p := ProdC + c + AOrder
  else
    p := ProdC + c + Order;

  qProdComprados.Sql.Text := p;
  qProdComprados.ParamByName('Desde').AsDate := edtDesdeCom.Date;
  qProdComprados.ParamByName('Hasta').AsDate := edtHastaCom.Date;
  qProdComprados.Open;

  if not qProdComprados.IsEmpty then
  begin
    try
      Screen.Cursor := crHourGlass;
      try
        q := TMDOQuery.Create(nil);
        q.Database := qProdComprados.Database;
        q.Transaction := qProdComprados.Transaction;
        q.SQL.Text := ProdT + c;
        q.ParamByName('Desde').AsDate := edtDesdeCom.Date;
        q.ParamByName('Hasta').AsDate := edtHastaCom.Date;
        q.Open;
        TotProdCom := q.FieldByName('Total').AsCurrency;
        CanProdCom := q.FieldByName('Cantidad').AsFloat;
        q.Close;
      finally
        q.Free;
      end;
    finally
      qProdComprados.First;
      Screen.Cursor := crDefault;
    end;
  end;
  gProdComprados.ColumnByName('Cantidad').FooterValue := Format('%8.2f', [CanProdCom]);
  gProdComprados.ColumnByName('PrecioFinal').FooterValue := Format('%m', [TotProdCom]);
  gProdComprados.RefreshDisplay;
  qPedidos.Open;
end;

procedure TfrmABMArticulos.gProdCompradosUpdateFooter(Sender: TObject);
begin
  gProdComprados.ColumnByName('Cantidad').FooterValue := Format('%8.2f', [CanProdCom]);
  gProdComprados.ColumnByName('PrecioFinal').FooterValue := Format('%m', [TotProdCom]);
end;

procedure TfrmABMArticulos.gProdCompradosTitleButtonClick(Sender: TObject; AFieldName: String);
begin
  try
    Informe_Prod_Comprados('Order By '+AFieldName);
  except
    Informe_Prod_Comprados(Vacio);
  end;
end;

procedure TfrmABMArticulos.btnExportarComClick(Sender: TObject);
begin
  if qProdComprados.Active then
  begin
    dmGestion.IyC_Exp.DataSet := qProdComprados;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmABMArticulos.edtPrdComKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and
     (Key = VK_F3) then
  begin
    Elegido := Search_Prod(Vacio, Tarea);
    edtPrdCom.Text := IntToStr(Elegido.IdArticulo);
  end
end;

procedure TfrmABMArticulos.edtPrdComExit(Sender: TObject);
begin
  if Trim(edtPrdCom.Text) > Cero then
  begin
    try
      IdProdCom := StrToInt(edtPrdCom.Text);
    except
      IdProdCom := 0;
      edtPrdCom.SetFocus;
      raise EUSuario.Create('Producto invalido');
    end;
  end;
  if GetDatosArt(IdProdCom, Vacio, Datos_Art) then
  begin
    edtPrdCom.Text := IntToStr(IdProdCom);
    lblDetProdCom.Caption := Datos_Art.DetProd;
  end
  else
    lblDetProdCom.Caption := ' <TODOS>';
  Application.ProcessMessages;
end;

procedure TfrmABMArticulos.gProdCantTitleButtonClick(Sender: TObject; AFieldName: string);
begin
  try
    Informe_Prod_Vendidos('Order By '+AFieldName);
  except
    Informe_Prod_Vendidos(Vacio);
  end;
end;

procedure TfrmABMArticulos.gProdCompradosDblClick(Sender: TObject);
begin
  Get_FacC(qProdCompradosIDFACTURA.AsInteger,
           qProdCompradosIDSUCURSAL.AsInteger,
           qProdCompradosIDPUNTOVENTA.AsInteger);
end;

procedure TfrmABMArticulos.btnCalcularComClick(Sender: TObject);
begin
  Informe_Prod_Comprados(Vacio);
end;
//**************************************** Comprados **************************

//****************************************  Vendidos **************************
procedure TfrmABMArticulos.Informe_Prod_Vendidos(AOrder: String);
Const
  VtaTot = 'Select IdArticulo, Marca, Detalle, Area, Grupo, '+
           '       SubGrupo, DetSuc, Color, Cantidad, Total, '+
           '       IdProveedor, NombreProv '+
           'From PRODUCTOS_VENDIDOS(:Desde, :Hasta) ';

  TotVta = 'Select Sum(Total) as TotalVta '+
           'From PRODUCTOS_VENDIDOS(:Desde, :Hasta) ';

  VtaDet = 'Select IdFactura, IdSucursal, IdPuntoVenta, '+
           '       IdArticulo, Oferta, Marca, Detalle,  '+
           '       Color, Area, Grupo, SubGrupo, Cantidad, '+
           '       PrecioTotal, NroFactura, FechaF, DetSuc, '+
           '       Nombre, CodBusCli, IdProveedor, NombreProv '+
           'From PRODUCTOS_VENDIDOS_DETALLADOS(:Desde, :Hasta) ';

  VOrden = 'Order By Area, Grupo, SubGrupo, Marca ';

  PrdTec = 'Select FechaF, NroFactura, IdFactura, IdSucursal, '+
           '       IdPuntoVenta, IdArticulo, IdArea, IdGrupo, '+
           '       IdSubGrupo, Cantidad, NroCtas, PrcBonificacion, '+
           '       IvaIN, Descuento, PCosto, PLista, DifFin, '+
           '       PrecioNeto, PrecioTotal, Exento, ImpInt, '+
           '       Oferta, Marca, Detalle, Area, Grupo, SubGrupo, '+
           '       DetSuc, TComp, IdProveedor, NombreProv '+
           'FROM PRODUCTOS_VENDIDOS_TECNICO(:Desde, :Hasta) ';

  TotTec = 'Select Sum(PCosto) as TCosto, '+
           '       Sum(PLista) as TLista, '+
           '       Sum(DifFin) as TDifFin, '+
           '       Sum(Descuento) as TDescuento, '+
           '       Sum(PrecioNeto) as TNeto, '+
           '       Sum(IvaIn) as TotIva, '+
           '       Sum(PrecioTotal) as TTotal, '+
           '       Sum(Exento) as TExento, '+
           '       Sum(ImpInt) as TImpInt '+
           'From PRODUCTOS_VENDIDOS_TECNICO(:Desde, :Hasta) ';

  PrdCan = 'Select IdArticulo, Marca, Detalle, Area, Grupo, '+
           '       SubGrupo, Sum(Cantidad) as CantTotal '+
           'From PRODUCTOS_VENDIDOS_DETALLADOS(:Desde, :Hasta) ';

  PrdGrp = 'Group By IdArticulo, Marca, Detalle, Area, Grupo, SubGrupo ';

  GArea  = 'Select * From GANANCIAS_POR_AREA(:Desde, :Hasta) ';
var
  Cond: String;
  q: TMDOQuery;
begin
  SoloOfertas := False;
  PTotNt := 0;
  PTotDt := 0;
  PTotCt := 0;
  PTotIv := 0;
  PTotDf := 0;
  PTotII := 0;
  PTotEx := 0;
  PTotPd := 0;
  PTotPl := 0;

  qTProdVend.Close;
  qTProdVend.SQL.Clear;

  try
    IdSucPrdVta := Integer(cbSucVta.Items.Objects[cbSucVta.ItemIndex]);
  except
    IdSucPrdVta := 0;
  end;
  SoloOfertas := (cbVtaSoloOff.Text = 'Si');

  try
    IdAreaVta := Integer(cbAreasVta.Items.Objects[cbAreasVta.ItemIndex]);
  except
    IdAreaVta := 0;
  end;

  btnExpVta.Enabled := False;
  btnInfVta.Enabled := False;

  if not (edtDesdeVta.Date <= edtHastaVta.Date) then
  begin
    edtDesdeVta.SetFocus;
    raise EUsuario.Create('Rango de Fechas invalido');
  end;
  Cond := Vacio;
  qItemsTotales.Close;
  qItemsDetallado.Close;


  if IdSucPrdVta > 0 then
    Cond := ' Where (IdSucursal = ' + IntToStr(IdSucPrdVta)+')';

  if (Trim(cbMarcaVta.Text) > Vacio) and
     (Pos('<TODAS>', cbMarcaVta.Text) = 0) then
  begin
    if Trim(Cond) > Vacio then
      Cond := Cond + ' And (Marca Starting with '''+Trim(cbMarcaVta.Text)+''')'
    else
      Cond := ' Where (Marca Starting with '''+Trim(cbMarcaVta.Text)+''')'
  end
  else begin
    if IdProdVen > 0 then
    begin
      if Trim(Cond) > Vacio then
        Cond := Cond + ' And (IdArticulo = '+IntToStr(IdProdVen)+')'
      else
        Cond := ' Where (IdArticulo = '+IntToStr(IdProdVen)+')'
    end
    else begin
      if IdAreaVta > 0 then
      begin
        if Trim(Cond) > Vacio then
          Cond := Cond + ' And (IdArea = ' + IntToStr(IdAreaVta)+')'
        else
          Cond := ' Where (IdArea = ' + IntToStr(IdAreaVta)+')'
      end;
    end;
  end;

  // Ofertas
  if SoloOfertas then
  begin
    if Trim(Cond) > Vacio then
      Cond := Cond + ' And (Oferta = 1)'
    else
      Cond := 'Where (Oferta = 1) '
  end;

  //Por Proveedor
  if IdProvVen > 0 then
  begin
    if Trim(Cond) > Vacio then
       Cond := Cond + ' And (IdProveedor = '+IntToStr(IdProvVen)+')'
    else
       Cond := ' Where (IdProveedor = '+IntToStr(IdProvVen)+')';
  end;

  try
    Screen.Cursor := crHourGlass;
    qItemsTotales.SQL.Clear;
    if Trim(AOrder) > Vacio then
      qItemsTotales.SQL.Text := VtaTot + Cond + AOrder
    else
      qItemsTotales.SQL.Text := VtaTot + Cond + VOrden;
    qItemsTotales.ParamByName('Desde').AsDate := edtDesdeVta.Date;
    qItemsTotales.ParamByName('Hasta').AsDate := edtHastaVta.Date;
    qItemsTotales.Open;

    if not qItemsTotales.IsEmpty then
    begin
      if Trim(AOrder) > Vacio then
        qItemsDetallado.SQL.Text := VtaDet + Cond + AOrder
      else
        qItemsDetallado.SQL.Text := VtaDet + Cond + VOrden;
      qItemsDetallado.ParamByName('Desde').AsDate := edtDesdeVta.Date;
      qItemsDetallado.ParamByName('Hasta').AsDate := edtHastaVta.Date;
      qItemsDetallado.Open;
      try
        TotalVta := 0;
        try
          q := TMDOQuery.Create(nil);
          q.Database := qItemsTotales.Database;
          q.Transaction := qItemsTotales.Transaction;
          q.SQL.Text := TotVta + Cond;
          q.ParamByName('Desde').AsDate := edtDesdeVta.Date;
          q.ParamByName('Hasta').AsDate := edtHastaVta.Date;
          q.Open;
          TotalVta := q.FieldByName('TotalVta').AsCurrency;
          q.Close;
        finally
          q.Free;
        end;

        if Trim(AOrder) > Vacio then
          qTProdVend.SQL.Text := PrdTec + Cond + AOrder
        else
          qTProdVend.SQL.Text := PrdTec + Cond + VOrden;
        qTProdVend.ParamByName('Desde').AsDate := edtDesdeVta.Date;
        qTProdVend.ParamByName('Hasta').AsDate := edtHastaVta.Date;
        qTProdVend.Open;
        if not qTProdVend.IsEmpty then
        begin
          try
            q := TMDOQuery.Create(nil);
            q.Database := qItemsTotales.Database;
            q.Transaction := qItemsTotales.Transaction;
            q.SQL.Text := TotTec + Cond;
            q.ParamByName('Desde').AsDate := edtDesdeVta.Date;
            q.ParamByName('Hasta').AsDate := edtHastaVta.Date;
            q.Open;
            PTotNt := q.FieldByName('TNeto').AsCurrency;
            PTotCt := q.FieldByName('TCosto').AsCurrency;
            PTotIv := q.FieldByName('TotIva').AsCurrency;
            PTotDt := q.FieldByName('TDescuento').AsCurrency;
            PTotDf := q.FieldByName('TDifFin').AsCurrency;
            PTotII := q.FieldByName('TImpInt').AsCurrency;
            PTotEx := q.FieldByName('TExento').AsCurrency;
            PTotPd := q.FieldByName('TTotal').AsCurrency;
            PTotPl := q.FieldByName('TLista').AsCurrency;
            q.Close;
          finally
            q.Free;
          end;
          qTProdVend.First;
        end;

        if Trim(AOrder) > Vacio then
          qProdByCant.SQL.Text := PrdCan + Cond + PrdGrp + AOrder
        else
          qProdByCant.SQL.Text := PrdCan + Cond + PrdGrp + VOrden;
        qProdByCant.ParamByName('Desde').AsDate := edtDesdeVta.Date;
        qProdByCant.ParamByName('Hasta').AsDate := edtHastaVta.Date;
        qProdByCant.Open;

      finally
        qItemsTotales.First;
        qItemsTotales.EnableControls;
        btnExpVta.Enabled := True;
        btnInfVta.Enabled := True;
        gInfPrdVta.ColumnByName('Total').FooterValue := Format('%n', [TotalVta]);
        gInfDetVta.ColumnByName('PrecioTotal').FooterValue := Format('%n', [TotalVta]);
        gProdTec.ColumnByName('PrecioNeto').FooterValue := Format('%n',[PTotNt]);
        gProdTec.ColumnByName('PCosto').FooterValue := Format('%n',[PTotCt]);
        gProdTec.ColumnByName('Descuento').FooterValue := Format('%n',[PTotDt]);
        gProdTec.ColumnByName('IvaIn').FooterValue := Format('%n',[PTotIv]);
        gProdTec.ColumnByName('DifFin').FooterValue := Format('%n',[PTotDf]);
        gProdTec.ColumnByName('ImpInt').FooterValue := Format('%n',[PTotII]);
        gProdTec.ColumnByName('PLista').FooterValue := Format('%n',[PTotPl]);
        gProdTec.ColumnByName('PrecioTotal').FooterValue := Format('%n',[PTotPd]);
      end;
    end
    else begin
      edtDesdeVta.SetFocus;
      ShowMessage('no hay movimientos en ese periodo');
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmABMArticulos.gProdTecDblClick(Sender: TObject);
begin
  Get_FacV(qTProdVendIdFactura.AsInteger,
           qTProdVendIdSucursal.AsInteger,
           qTProdVendIDPUNTOVENTA.AsInteger);
end;

procedure TfrmABMArticulos.gProdTecTitleButtonClick(Sender: TObject; AFieldName: string);
begin
  try
    Informe_Prod_Vendidos('Order By '+AFieldName);
  except
    Informe_Prod_Vendidos(Vacio);
  end;
end;

procedure TfrmABMArticulos.gProdTecUpdateFooter(Sender: TObject);
begin
  gProdTec.ColumnByName('PrecioNeto').FooterValue := Format('%n',[PTotNt]);
  gProdTec.ColumnByName('PCosto').FooterValue := Format('%n',[PTotCt]);
  gProdTec.ColumnByName('Descuento').FooterValue := Format('%n',[PTotDt]);
  gProdTec.ColumnByName('IvaIn').FooterValue := Format('%n',[PTotIv]);
  gProdTec.ColumnByName('DifFin').FooterValue := Format('%n',[PTotDf]);
  gProdTec.ColumnByName('ImpInt').FooterValue := Format('%n',[PTotII]);
  gProdTec.ColumnByName('PLista').FooterValue := Format('%n',[PTotPl]);
  gProdTec.ColumnByName('PrecioTotal').FooterValue := Format('%n',[PTotPd]);
end;

procedure TfrmABMArticulos.edtPrdVtaEnter(Sender: TObject);
begin
  edtPrdVta.SelectAll;
  IdProdVen := 0;
  lblDetProdVen.Caption := ' <TODOS>';
end;

procedure TfrmABMArticulos.edtPrdVtaExit(Sender: TObject);
begin
  lblDetProdVen.Caption := ' <TODOS>';
  if Trim(edtPrdVta.Text) > Cero then
  begin
    try
      IdProdVen := StrToInt(edtPrdVta.Text);
    except
      IdProdVen := 0;
      edtPrdVta.SetFocus;
      raise EUSuario.Create('Código de Producto invalido');
    end;
  end;
  if GetDatosArt(IdProdVen, Vacio, Datos_Art) then
  begin
    edtPrdVta.Text := IntToStr(IdProdVen);
    lblDetProdVen.Caption := Datos_Art.Marca+' '+Datos_Art.Detalle;
  end;
  Application.ProcessMessages;
end;

procedure TfrmABMArticulos.edtPrdVtaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and
     (Key = VK_F3) then
  begin
    Elegido := Search_Prod(Vacio, Tarea);
    edtPrdVta.Text := IntToStr(Elegido.IdArticulo);
    if GetDatosArt(IdProdVen, Vacio, Datos_Art) then
      lblDetProdVen.Caption := Datos_Art.Marca+' '+Datos_Art.Detalle;
    Application.ProcessMessages;
  end;
end;

procedure TfrmABMArticulos.btnCalcularVtaClick(Sender: TObject);
begin
  Informe_Prod_Vendidos(Vacio);
end;

procedure TfrmABMArticulos.gInfPrdVtaTitleButtonClick(Sender: TObject; AFieldName: String);
begin
  try
    Informe_Prod_Vendidos('Order By '+AFieldName);
  except
    Informe_Prod_Vendidos(Vacio);
  end;
end;

procedure TfrmABMArticulos.gInfDetVtaTitleButtonClick(Sender: TObject; AFieldName: String);
begin
  try
    Informe_Prod_Vendidos('Order By '+AFieldName);
  except
    Informe_Prod_Vendidos(Vacio);
  end;
end;

procedure TfrmABMArticulos.btnExpVtaClick(Sender: TObject);
begin
  Case pcInfPrdVta.ActivePageIndex of
    0: dmGestion.IyC_Exp.DataSet := qItemsTotales;
    1: dmGestion.IyC_Exp.DataSet := qItemsDetallado;
    2: dmGestion.IyC_Exp.DataSet := qTProdVend;
    3: dmGestion.IyC_Exp.DataSet := qProdByCant;
  end;
  dmGestion.IyC_Exp.Select;
end;

procedure TfrmABMArticulos.edtDesdeVtaEnter(Sender: TObject);
begin
  edtDesdeVta.SelectAll;
  qItemsTotales.Close;
  qItemsDetallado.Close;
  IdSucPrdVta := 0;
  IdAreaVta := 0;
  btnExpVta.Enabled := False;
  btnInfVta.Enabled := False;
  SoloOfertas := False;
end;

procedure TfrmABMArticulos.gInfPrdVtaUpdateFooter(Sender: TObject);
begin
  gInfPrdVta.ColumnByName('Total').FooterValue := Format('%n', [TotalVta]);
end;

procedure TfrmABMArticulos.gInventarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F3: begin
        if qArticulos.State in dsEditModes then
          qArticulos.Post;
        if qArticulos.State in dsEditModes then
          qArticulos.Post;
        Cual_Art := Search_Prod(Vacio, Tarea).IdArticulo;
        if Cual_Art > NoEncontrado then
          Plantar_Arbol(Cual_Art);
        gInventario.SetFocus;
      end;
    VK_F5: Calculadora(Handle);
  end;
end;

procedure TfrmABMArticulos.gInfDetVtaUpdateFooter(Sender: TObject);
begin
  gInfDetVta.ColumnByName('PrecioTotal').FooterValue := Format('%n', [TotalVta]);
end;

procedure TfrmABMArticulos.btnInfVtaClick(Sender: TObject);
begin
  lblTituloVta1.Caption := OwnerName;
  if SoloOfertas then
    lblTituloVta2.Caption := 'Ofertas vendidas entre el '+DateToStr(edtDesdeVta.Date)+' hasta el '+DateToStr(edtHastaVta.Date)
  else
    lblTituloVta2.Caption := 'Ventas de Productos entre el '+DateToStr(edtDesdeVta.Date)+' hasta el '+DateToStr(edtHastaVta.Date);
  if IdSucPrdVta > 0 then
    lblTituloVta2.Caption := lblTituloVta2.Caption + ' - Sucursal: ' + cbSucVta.Text;
  lblTotalVta.Caption := Format('Total vendido en el periodo %m', [TotalVta]);
  try
    qItemsTotales.DisableControls;
    rpInfProdVtas.Print;
  finally
    qItemsTotales.EnableControls;
  end;
end;

procedure TfrmABMArticulos.qItemsDetalladoTALLEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
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

procedure TfrmABMArticulos.gInfDetVtaDblClick(Sender: TObject);
begin
  Get_FacV(qItemsDetalladoIdFactura.AsInteger,
           qItemsDetalladoIdSucursal.AsInteger,
           qItemsDetalladoIDPUNTOVENTA.AsInteger);
end;

procedure TfrmABMArticulos.qItemsDetalladoOFERTAGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if qItemsDetalladoOferta.AsInteger = 1 then
    Text := 'Si'
  else
    Text := 'No';
end;
//****************************************  Vendidos **************************

//**************************************** Transferidos ***********************
procedure TfrmABMArticulos.Informe_Prod_Transferidos(AOrder: String);
Const
  Itm_T = 'Select FechaF, IdArticulo, Marca, Detalle, Area, Grupo, '+
          '       SubGrupo, Cantidad, PrecioTotal, SucOri, SucDes, '+
          '       Encargado, Fletero, IdFactura, IdSucursal,  '+
          '       IdPuntoVenta, IdSucursalD, IdSucursalO '+
          'From PRODUCTOS_TRANSFERIDOS(:Desde, :Hasta) ';
  Orden =  'Order By FechaF, Marca, Detalle ';
var
  Cond: String;
  IdTrf: Integer;
begin
  Cond := Vacio;
  try
    IdTrf := Integer(cbSucTrf.Items.Objects[cbSucTrf.ItemIndex]);
  except
    IdTrf := 0;
  end;
  btnExpTrf.Enabled := False;
  btnImpTrf.Enabled := False;
  if edtDesdeTrf.Date <= edtHastaTrf.Date then
  begin
    qItemsEnvios.Close;
    if IdTrf > 0 then
      Cond := ' Where ((IdSucursalD = '+IntToStr(IdTrf)+
              ') or (IdSucursalO = '+IntToStr(IdTrf)+'))'
    else
      Cond := Vacio;
    try
      Screen.Cursor := crHourGlass;
      qItemsEnvios.SQL.Clear;
      if Trim(AOrder) > Vacio then
        qItemsEnvios.SQL.Text := Itm_T + Cond + AOrder
      else
        qItemsEnvios.SQL.Text := Itm_T + Cond + Orden;
      qItemsEnvios.ParamByName('Desde').AsDate := edtDesdeTrf.Date;
      qItemsEnvios.ParamByName('Hasta').AsDate := edtHastaTrf.Date;
      qItemsEnvios.Open;
      if not qItemsEnvios.IsEmpty then
      begin
        btnExpTrf.Enabled := True;
        btnImpTrf.Enabled := True;
      end
      else begin
        edtDesdeTrf.SetFocus;
        ShowMessage('no hay movimientos en ese periodo');
        qItemsEnvios.Close;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  end
  else
    ShowMessage('Periodo de Fechas invalido');
end;

procedure TfrmABMArticulos.btnImpTrfClick(Sender: TObject);
begin
  lblTitTransf1.Caption := OwnerName;
  lblTitTransf2.Caption := 'Envios a Sucursales entre el '+DateToStr(edtDesdeTrf.Date)+' hasta el '+DateToStr(edtHastaTrf.Date);
  qItemsEnvios.DisableControls;
  ppTransferencias.Print;
  qItemsEnvios.EnableControls;
end;

procedure TfrmABMArticulos.edtDesdeTrfEnter(Sender: TObject);
begin
  qItemsEnvios.Close;
end;

procedure TfrmABMArticulos.btnCalcularTrfClick(Sender: TObject);
begin
  Informe_Prod_Transferidos(Vacio);
end;

procedure TfrmABMArticulos.gEnviosDblClick(Sender: TObject);
begin
  Get_FacS(RemitoTraspaso,
           qItemsEnviosIDFACTURA.AsInteger,
           qItemsEnviosIDSUCURSAL.AsInteger,
           qItemsEnviosIDPUNTOVENTA.AsInteger);
end;

procedure TfrmABMArticulos.gEnviosTitleButtonClick(Sender: TObject; AFieldName: String);
begin
  try
    Informe_Prod_Transferidos('Order By '+AFieldName);
  except
    Informe_Prod_Transferidos(Vacio);
  end;
end;

procedure TfrmABMArticulos.btnExpTrfClick(Sender: TObject);
begin
  dmGestion.IyC_Exp.DataSet := qItemsEnvios;
  dmGestion.IyC_Exp.Select;
end;
//**************************************** Transferidos ***********************

//----------------------------------------------------------------------------
//-----------------------------------  Organizacion --------------------------
//----------------------------------------------------------------------------

procedure TfrmABMArticulos.AreasAfterPost(DataSet: TDataSet);
begin
  if not trArticulos.InTransaction then
    trArticulos.StartTransaction;
  try
    TClientDataSet(DataSet).ApplyUpdates(0);
    trArticulos.Commit;
  except
    trArticulos.Rollback;
  end;
  UpDate_DatosSistema(0, 2);
end;

procedure TfrmABMArticulos.GruposAfterEdit(DataSet: TDataSet);
begin
  Old_Area := GruposIDAREA.AsInteger;
end;

procedure TfrmABMArticulos.GruposAfterPost(DataSet: TDataSet);
begin
  if not trArticulos.InTransaction then
    trArticulos.StartTransaction;
  try
    TClientDataSet(DataSet).ApplyUpdates(0);
    trArticulos.Commit;
  except
    trArticulos.Rollback;
  end;
  UpDate_DatosSistema(0, 2);

  if Old_Area <> GruposIDAREA.AsInteger then
    Grupos.First;
end;

procedure TfrmABMArticulos.GruposNewRecord(DataSet: TDataSet);
begin
  GruposIDAREA.AsInteger := AreasIDAREA.AsInteger;
  qLastGr.Close;
  try
    qLastGr.ParamByName('IdArea').AsInteger := AreasIDAREA.AsInteger;
    qLastGr.Open;
    if qLastGrUltimo.IsNull then
      GruposIdGrupo.AsInteger := 1
    else
      GruposIdGrupo.AsInteger := qLastGrUltimo.AsInteger + 1;
  finally
    qLastGr.Close;
  end;
end;

procedure TfrmABMArticulos.SubGruposBeforePost(DataSet: TDataSet);
begin
  if SubGruposIdMarkUp.AsInteger = 0 then
    raise EUsuario.Create('Debe asignar un MarkUp al SubGrupo.-');
  if SubGruposMAXDTOCDO.AsFloat = 0 then
    raise EUsuario.Create('Debe ingresar el tope maximo de descuento al SubGrupo.-')
end;

procedure TfrmABMArticulos.SubGruposCalcFields(DataSet: TDataSet);
begin
  if not MarkUp.Active then
    MarkUp.Open;
  if MarkUp.Locate(MarkUpIdMarkUp.FieldName, SubGruposIdMarkUp.AsInteger, []) then
    SubGruposCoefMarkUp.AsFloat := MarkUpCoefMarkUp.AsFloat
  else
    SubGruposCoefMarkUp.AsFloat := 0;
end;

procedure TfrmABMArticulos.SubGruposNewRecord(DataSet: TDataSet);
begin
  SubGruposIdGrupo.AsInteger := GruposIdGrupo.AsInteger;
  qLastSG.Close;
  try
    qLastSG.ParamByName('IdGrupo').AsInteger := GruposIdGrupo.AsInteger;
    qLastSG.Open;
    if qLastSGUltimo.IsNull then
      SubGruposIdSubGrupo.AsInteger := 1
    else
      SubGruposIdSubGrupo.AsInteger := qLastSGUltimo.AsInteger + 1;
  finally
    qLastSG.Close;
  end;
  SubGruposMAXDTOCDO.AsFloat := 0;
  SubGruposMaxRndPre.AsFloat := 0.5;
  SubGruposCoefMarkUp.AsFloat:= 0;
  SubGruposCOMISION1.AsFloat := 1;
  SubGruposCOMISION2.AsFloat := 0;
end;

procedure TfrmABMArticulos.SubGruposAfterPost(DataSet: TDataSet);
begin
  if not trArticulos.InTransaction then
    trArticulos.StartTransaction;
  try
    TClientDataSet(DataSet).ApplyUpdates(0);
    trArticulos.Commit;
  except
    trArticulos.Rollback;
  end;
  UpDate_DatosSistema(0, 2);
end;
//------------------------------- FIN  SUBGRUPOS / MARKUP ---------------------

procedure TfrmABMArticulos.MarkUpBeforePost(DataSet: TDataSet);
var
  s: TMDOQuery;
begin
  if MarkUp.State in [dsInsert] then
  begin
    try
      s := TMDOQuery.Create(nil);
      s.Database := dmGestion.dbGestion;
      s.Transaction := tMarkUp.Transaction;
      s.SQL.Add('Select MAX(IdMarkUp) As Ultimo ');
      s.SQL.Add('From MarkUp ');
      s.Open;
      MarkUpIdMarkUp.AsInteger := s.FieldByName('Ultimo').AsInteger + 1;
      s.Close;
    finally
      s.Free;
    end;
  end;
end;

procedure TfrmABMArticulos.MarkUpAfterPost(DataSet: TDataSet);
begin
  if Application.MessageBox('¿Desea cambiar y actualizar, el coeficiente y precio en todos los productos? ',
                            'Actualización', MB_ICONINFORMATION+MB_YESNO) = IDYes then
  begin
    MarkUp.ApplyUpdates(0);
    try
      if not trArticulos.InTransaction then
        trArticulos.StartTransaction;
      trArticulos.Commit;
    except
      on E:Exception do
      begin
        trArticulos.Rollback;
        raise EUsuario.Create(E.Message);
      end;
    end;
    Open_Art;
  end;
end;

procedure TfrmABMArticulos.MarcasAfterPost(DataSet: TDataSet);
begin
  Marcas.ApplyUpdates(0);
end;

procedure TfrmABMArticulos.MarcasBeforePost(DataSet: TDataSet);
var
  s: TMDOQuery;
begin
  if Marcas.State in [dsInsert] then
  begin
    try
      s := TMDOQuery.Create(nil);
      s.Database := dmGestion.dbGestion;
      s.Transaction := tMarcas.Transaction;
      s.SQL.Add('Select MAX(IdMarca) As Ultimo ');
      s.SQL.Add('From Marcas ');
      s.Open;
      MarcasIdMarca.AsInteger := s.FieldByName('Ultimo').AsInteger + 1;
      s.Close;
    finally
      s.Free;
    end;
  end;
end;

procedure TfrmABMArticulos.cbColoresExit(Sender: TObject);
begin
  if (Trim(cbColores.Text) > Cero) And
     (qArticulos.State in dsEditModes) then
  begin
    if (not Colores.Locate(ColoresColor.FieldName, cbColores.Text, [])) then
    begin
      Colores.Insert;
      ColoresColor.AsString := cbColores.Text;
      Colores.Post;
    end;
  end;
end;

procedure TfrmABMArticulos.ColoresAfterPost(DataSet: TDataSet);
begin
  Colores.ApplyUpdates(0);
end;

procedure TfrmABMArticulos.ColoresBeforePost(DataSet: TDataSet);
var
  s: TMDOQuery;
begin
  if Colores.State in [dsInsert] then
  begin
    try
      s := TMDOQuery.Create(nil);
      s.Database := dmGestion.dbGestion;
      s.Transaction := tColores.Transaction;
      s.SQL.Add('Select MAX(IdColor) As Ultimo ');
      s.SQL.Add('From Colores ');
      s.Open;
      ColoresIdColor.AsInteger := s.FieldByName('Ultimo').AsInteger + 1;
      s.Close;
    finally
      s.Free;
    end;
  end;
end;

procedure TfrmABMArticulos.MarkUpReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError;
                                                UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ApplicationShowException(E);
end;

procedure TfrmABMArticulos.btnSubDepositosClick(Sender: TObject);
begin
  frmInfSubDep := TfrmInfSubDep.Create(Self);
  frmInfSubDep.ShowModal;
end;

procedure TfrmABMArticulos.btnCalcArtClick(Sender: TObject);
begin
  Calculadora(Handle);
end;

procedure TfrmABMArticulos.btnCalculadoraClick(Sender: TObject);
begin
 //
end;

procedure TfrmABMArticulos.qArticulosDUROFERTAGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if (qArticulosDUROFERTA.IsNull) or
     (qArticulosDUROFERTA.AsDateTime < Date_Old) then
    Text := '-'
  else
    Text := DateToStr(qArticulosDUROFERTA.AsDateTime);
end;

end.
