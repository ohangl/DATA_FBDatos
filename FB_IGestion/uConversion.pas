unit uConversion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, RzButton, ExtCtrls, RzPanel, RzTabs,
  DB, MDOCustomDataSet, DBClient, RzShellDialogs, dbisamtb, MDOQuery, StdCtrls,
  Mask, FileCtrl, RzFilSys, RzCommon, RzSelDir, MDOTable, ComCtrls, RzTreeVw,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWGrids,
  IWDBGrids, RzEdit, Menus, MDODatabase, mxExport, IniFiles, uTools;

type
  TfrmConversion = class(TForm)
    pcConversiones: TRzPageControl;
    tsDismar: TRzTabSheet;
    tsInsolito: TRzTabSheet;
    lblPaso: TLabel;

    mmPorDonde: TMemo;
    odDatosCli: TRzOpenDialog;
    odDatosCre: TRzOpenDialog;
    odDatosCta: TRzOpenDialog;
    odDatosPag: TRzOpenDialog;
    odDatosPro: TRzOpenDialog;
    odDatosFac: TRzOpenDialog;
    btnAuxProds: TRzBitBtn;
    btnPasaVtas: TRzBitBtn;
    btnPasaMTar: TRzBitBtn;
    btnPasaInv: TRzBitBtn;
    btnPasaVarios: TRzBitBtn;
    btnPasaCC_OP: TRzBitBtn;
    btnPasaBcos: TRzBitBtn;
    btnPasaCompras: TRzBitBtn;
    btnPasaArts: TRzBitBtn;
    tsGestion32: TRzTabSheet;
    dbInsolito: TDBISAMDatabase;
    sInsolito: TDBISAMSession;
    sfdDBIsam: TRzSelectFolderDialog;
    btnUbicDB_Isam: TRzBitBtn;
    pmExportar: TPopupMenu;
    ExportarClientes: TMenuItem;
    ExportarComprobantes: TMenuItem;
    ExportarCreditos: TMenuItem;
    ExportarProductos: TMenuItem;
    ExportarCuotas: TMenuItem;
    ExportarPagos: TMenuItem;
    pnlBtnConv: TRzPanel;
    btnSalir: TRzBitBtn;
    pmGrabar: TPopupMenu;
    SaveFac: TMenuItem;
    SaveCre: TMenuItem;
    SaveCli: TMenuItem;

    dsClientes: TDataSource;
    DClientes: TClientDataSet;
    DClientesIDCLI: TIntegerField;
    DClientesIdCliente: TIntegerField;
    DClientesTIPOIVA: TSmallintField;
    DClientesTIPODOC: TSmallintField;
    DClientesTIPOCLI: TSmallintField;
    DClientesIDSUCURSAL: TIntegerField;
    DClientesNombre: TStringField;
    DClientesCodPostal: TStringField;
    DClientesTelFax: TStringField;
    DClientesIngBrutos: TStringField;
    DClientesLocalidad: TStringField;
    DClientesProvincia: TStringField;
    DClientesTelefonos: TStringField;
    DClientesDireccion: TStringField;
    DClientesDocumento: TStringField;

    dsCreditos: TDataSource;
    Creditos: TClientDataSet;
    CreditosIdSucursal: TIntegerField;
    CreditosIdCliente: TIntegerField;
    CreditosIdFactura: TIntegerField;
    CreditosIdRecord: TIntegerField;
    CreditosTDeuda: TStringField;
    CreditosNomCli: TStringField;
    CreditosFechaF: TDateField;
    CreditosMonto: TCurrencyField;
    CreditosPadron: TIntegerField;
    CreditosCentro: TIntegerField;
    CreditosNroAfiliado: TIntegerField;
    CreditosNombreAfi: TStringField;
    CreditosOrden: TIntegerField;
    CreditosGarante1: TIntegerField;
    CreditosCuotas: TSmallintField;
    CreditosEstado: TStringField;

    Cuotas: TClientDataSet;
    CuotasIdSucursal: TIntegerField;
    CuotasIdFactura: TIntegerField;
    CuotasIdCliente: TIntegerField;
    CuotasTDeuda: TStringField;
    CuotasNroCuota: TSmallintField;
    CuotasVencimiento: TDateField;
    CuotasMtoCuota: TCurrencyField;
    CuotasMtoPagado: TCurrencyField;
    CuotasUltimoPago: TDateField;
    CuotasIdRecord: TIntegerField;
    dsCuotas: TDataSource;

    dsPagos: TDataSource;
    Pagos: TClientDataSet;
    PagosIdRecord: TIntegerField;
    PagosIdSucursal: TIntegerField;
    PagosTDeuda: TStringField;
    PagosIdCliente: TIntegerField;
    PagosIdFactura: TIntegerField;
    PagosNroCuota: TSmallintField;
    PagosNroRecibo: TStringField;
    PagosFechaPago: TDateField;
    PagosMtoCuota: TCurrencyField;

    dsProds: TDataSource;
    ItemsV: TClientDataSet;
    ItemsVIdRecord: TIntegerField;
    ItemsVIdSucursal: TIntegerField;
    ItemsVSerie: TStringField;
    ItemsVIdFactura: TIntegerField;
    ItemsVIdItem: TSmallintField;
    ItemsVIdArticulo: TIntegerField;
    ItemsVCantidad: TFloatField;
    ItemsVUnidades: TIntegerField;
    ItemsVPrecioUnitario: TCurrencyField;
    ItemsVDescripcion: TStringField;
    ItemsVBulto: TIntegerField;
    ItemsVIdLista: TSmallintField;
    ItemsVImpuesto1: TCurrencyField;
    ItemsVImpuesto2: TCurrencyField;
    ItemsVImpuesto3: TCurrencyField;
    ItemsVImpuesto4: TCurrencyField;
    ItemsVImpuesto5: TCurrencyField;
    ItemsVImpuesto6: TCurrencyField;
    ItemsVImpuesto7: TCurrencyField;
    ItemsVImpuesto8: TCurrencyField;
    ItemsVImpuesto9: TCurrencyField;
    ItemsVImpuesto10: TCurrencyField;
    ItemsVBonif: TFloatField;
    ItemsVCosto: TCurrencyField;
    ItemsVIdDeposito: TSmallintField;
    ItemsVTipoFact: TSmallintField;

    dsFacV: TDataSource;
    FacV: TClientDataSet;
    FacVIdRecord: TIntegerField;
    FacVIdSucursal: TIntegerField;
    FacVIdFactura: TIntegerField;
    FacVIdPuntoVenta: TIntegerField;
    FacVIdCliente: TIntegerField;
    FacVTipoFact: TSmallintField;
    FacVNombre: TStringField;
    FacVDomicilio: TStringField;
    FacVLocalidad: TStringField;
    FacVTDocCli: TSmallintField;
    FacVFechaF: TDateField;
    FacVIdEmpleado: TIntegerField;
    FacVDocumento: TStringField;
    FacVCodMov: TIntegerField;
    FacVCod1: TIntegerField;
    FacVImp1: TCurrencyField;
    FacVCod2: TIntegerField;
    FacVImp2: TCurrencyField;
    FacVCod3: TIntegerField;
    FacVImp3: TCurrencyField;
    FacVCod4: TIntegerField;
    FacVImp4: TCurrencyField;
    FacVNumFis: TIntegerField;
    FacVTotalF: TCurrencyField;
    FacVTIvaCli: TSmallintField;
    FacVSerie: TStringField;
    FacVNroFactura: TStringField;

    Grupos: TDBISAMTable;
    GruposIdGrupo: TIntegerField;
    GruposGrupo: TStringField;

    SubGrupos: TDBISAMTable;
    SubGruposIdGrupo: TIntegerField;
    SubGruposIdSubGrupo: TIntegerField;
    SubGruposSubGrupo: TStringField;
    SubGruposIdMarkUp: TIntegerField;
    SubGruposMaxDtoCdo: TFloatField;
    SubGruposMaxCtaDto: TSmallintField;
    SubGruposMaxDtoTar: TFloatField;
    SubGruposIdTarDcto: TIntegerField;
    SubGruposMaxRndPre: TFloatField;

    Articulos: TDBISAMTable;
    ArticulosIdArticulo: TIntegerField;
    ArticulosIdGrupo: TIntegerField;
    ArticulosIdSubGrupo: TIntegerField;
    ArticulosMarca: TStringField;
    ArticulosDetalle: TStringField;
    ArticulosCodBarra: TStringField;
    ArticulosIdColor: TSmallintField;
    ArticulosActivo: TBooleanField;
    ArticulosTieneTalle: TBooleanField;
    ArticulosOferta: TBooleanField;
    ArticulosDuracionOferta: TDateField;
    ArticulosEstiloFac: TIntegerField;
    ArticulosConsignacion: TBooleanField;
    ArticulosServicio: TBooleanField;
    ArticulosCosto: TFloatField;
    ArticulosCostoAnt: TCurrencyField;
    ArticulosPNeto: TCurrencyField;
    ArticulosPBase: TCurrencyField;
    ArticulosGanancia: TFloatField;
    ArticulosPrecio: TCurrencyField;
    ArticulosPrecioAnt: TCurrencyField;
    ArticulosAlcIva: TIntegerField;
    ArticulosAlcIB: TIntegerField;
    ArticulosImpInt: TFloatField;
    ArticulosExento: TFloatField;
    ArticulosFechaAlta: TDateField;
    ArticulosIdMarkUp: TIntegerField;
    ArticulosUsuario: TIntegerField;

    Colores: TDBISAMTable;
    ColoresIdPresentacion: TAutoIncField;
    ColoresPresentacion: TStringField;

    Marcas: TDBISAMTable;
    MarcasIdMarca: TAutoIncField;
    MarcasMarca: TStringField;

    BancoProp: TDBISAMTable;
    BancoPropIdMov: TAutoIncField;
    BancoPropIdBanco: TIntegerField;
    BancoPropIdOrdPago: TIntegerField;
    BancoPropTipoMov: TSmallintField;

    BancoPropNroCheque: TStringField;
    BancoPropFechaEmision: TDateField;
    BancoPropFechaVencimiento: TDateField;
    BancoPropFechaResumen: TDateField;
    BancoPropIdEntidad: TIntegerField;
    BancoPropDetalleMov: TStringField;
    BancoPropMonto: TFloatField;
    BancoPropDebe: TCurrencyField;
    BancoPropHaber: TCurrencyField;
    BancoPropUsuario: TIntegerField;
    BancoPropIdFactura: TIntegerField;
    BancoPropIdSucursal: TIntegerField;

    Bancos: TDBISAMTable;
    BancosIdBanco: TAutoIncField;
    BancosBanco: TStringField;
    BancosNroCta: TStringField;
    BancosDirBanco: TStringField;
    BancosTelBanco: TStringField;
    BancosGerenteBco: TStringField;
    BancosTelGteBco: TStringField;
    BancosOficialCta: TStringField;
    BancosTelOficialCta: TStringField;
    BancosWebBco: TStringField;
    BancosTotalAcuerdos: TCurrencyField;

    BancoTer: TDBISAMTable;
    BancoTerIdMov: TAutoIncField;
    BancoTerIdOrdPago: TIntegerField;
    BancoTerNombreBanco: TStringField;
    BancoTerNroCuenta: TStringField;
    BancoTerNroCheque: TIntegerField;
    BancoTerIdTitular: TIntegerField;
    BancoTerTitular: TStringField;
    BancoTerIdEndoso: TIntegerField;
    BancoTerEndoso: TStringField;
    BancoTerIdFactura: TIntegerField;
    BancoTerIdSucursal: TIntegerField;
    BancoTerNroFactura: TStringField;
    BancoTerFechaVencimiento: TDateField;
    BancoTerFechaEntrega: TDateField;
    BancoTerIdEntrega: TIntegerField;
    BancoTerEntrega: TStringField;
    BancoTerMonto: TFloatField;
    BancoTerSituacion: TSmallintField;
    BancoTerFechaIS: TDateField;

    BonifProv: TDBISAMTable;
    BonifProvIdBonifProv: TAutoIncField;
    BonifProvIdFactura: TIntegerField;
    BonifProvIdSucursal: TIntegerField;
    BonifProvEntidad: TIntegerField;
    BonifProvNroComprobante: TStringField;
    BonifProvFechaDesc: TDateField;
    BonifProvMontoDesc: TCurrencyField;
    BonifProvMontoACta: TCurrencyField;
    BonifProvSaldoDesc: TCurrencyField;

    CCProv: TDBISAMTable;
    CCProvNroMovimiento: TIntegerField;
    CCProvIdComprobante: TIntegerField;
    CCProvIdSucursal: TIntegerField;
    CCProvTComp: TSmallintField;
    CCProvEntidad: TIntegerField;
    CCProvFecha: TDateField;
    CCProvFechaOrg: TDateField;
    CCProvComprobante: TStringField;
    CCProvDebe: TCurrencyField;
    CCProvHaber: TCurrencyField;
    CCProvPagoActa: TCurrencyField;
    CCProvSaldoMov: TCurrencyField;
    CCProvSaldo: TCurrencyField;
    CCProvEstado: TSmallintField;

    Clientes: TDBISAMTable;
    ClientesIdCliente: TAutoIncField;
    ClientesNombre: TStringField;
    ClientesDireccion: TStringField;
    ClientesLocalidad: TStringField;
    ClientesProvincia: TStringField;
    ClientesCodPostal: TStringField;
    ClientesTelefonos: TStringField;
    ClientesTelFax: TStringField;
    ClientesTipoIva: TSmallintField;
    ClientesTipoDoc: TSmallintField;
    ClientesDocumento: TStringField;
    ClientesIngBrutos: TStringField;

    Departamentos: TDBISAMTable;
    DepartamentosIdDepartamento: TAutoIncField;
    DepartamentosDepartamento: TStringField;

    DetTalles: TDBISAMTable;
    DetTallesIdValorTalle: TIntegerField;
    DetTallesDescripcion: TStringField;

    Empleados: TDBISAMTable;
    EmpleadosIdEmpleado: TAutoIncField;
    EmpleadosNombre: TStringField;
    EmpleadosDireccion: TStringField;
    EmpleadosLocalidad: TStringField;
    EmpleadosProvincia: TStringField;
    EmpleadosCodPostal: TStringField;
    EmpleadosTelefonos: TStringField;
    EmpleadosTipoIva: TSmallintField;
    EmpleadosTipoDoc: TSmallintField;
    EmpleadosDocumento: TStringField;
    EmpleadosSaldo: TFloatField;
    EmpleadosAutorizaDescuento: TBooleanField;
    EmpleadosIdTareaFuncion: TIntegerField;
    EmpleadosPassWord: TStringField;
    EmpleadosActivo: TBooleanField;

    EstadosMov: TDBISAMTable;
    EstadosMovIdEstado: TIntegerField;
    EstadosMovEstado: TStringField;

    EstadosMovTer: TDBISAMTable;
    EstadosMovTerIdEstado: TIntegerField;
    EstadosMovTerEstado: TStringField;

    FacCom: TDBISAMTable;
    FacComIdFactura: TIntegerField;
    FacComIdSucursal: TIntegerField;
    FacComIdPeriodo: TIntegerField;
    FacComTipoFactura: TSmallintField;
    FacComIdPuntoVenta: TIntegerField;
    FacComDiaHora: TDateTimeField;
    FacComPeriodo: TDateField;
    FacComFechaF: TDateField;
    FacComFechaV: TDateField;
    FacComNroFactura: TStringField;
    FacComCompRef: TStringField;
    FacComIdCompRef: TIntegerField;
    FacComCaiProv: TStringField;
    FacComProveedor: TIntegerField;
    FacComCuenta: TIntegerField;
    FacComTipoIva: TSmallintField;
    FacComCantArtic: TSmallintField;
    FacComPrcBonif: TFloatField;
    FacComBonificacion: TCurrencyField;
    FacComNeto: TFloatField;
    FacComExento: TFloatField;
    FacComNoComputables: TFloatField;
    FacComAlcPercepcion: TFloatField;
    FacComPagPersepCuenta: TFloatField;
    FacComRetGan: TFloatField;
    FacComRetIBto: TFloatField;
    FacComRetLH: TFloatField;
    FacComIvaAlicuota1: TFloatField;
    FacComIvaAlicuota2: TFloatField;
    FacComIvaOtAlc: TFloatField;
    FacComTotal: TFloatField;
    FacComContado: TCurrencyField;
    FacComTickets: TCurrencyField;
    FacComCtaCte: TCurrencyField;
    FacComChequeProp: TCurrencyField;
    FacComChequeTer: TCurrencyField;
    FacComOtrosPagos: TCurrencyField;
    FacComFechaCan: TDateField;
    FacComFechaIS: TDateField;
    FacComUsuario: TIntegerField;

    FacVen: TDBISAMTable;
    FacVenIdFactura: TIntegerField;
    FacVenIdSucursal: TIntegerField;
    FacVenIdPuntoVenta: TIntegerField;
    FacVenTipoFactura: TSmallintField;
    FacVenSector: TIntegerField;
    FacVenIdSubDep: TIntegerField;
    FacVenDiaHora: TDateTimeField;
    FacVenFechaF: TDateField;
    FacVenFechaI: TDateField;
    FacVenPuntoVta: TSmallintField;
    FacVenNroFactura: TStringField;
    FacVenIdCompRef: TIntegerField;
    FacVenCompRef: TStringField;
    FacVenCliente: TIntegerField;
    FacVenTipoIva: TSmallintField;
    FacVenCantArtic: TSmallintField;
    FacVenBonificacion: TCurrencyField;
    FacVenNeto: TCurrencyField;
    FacVenExento: TCurrencyField;
    FacVenNoComputables: TCurrencyField;
    FacVenIvaAlicuota1: TCurrencyField;
    FacVenTotal: TCurrencyField;
    FacVenSituacion: TSmallintField;
    FacVenEntContado: TCurrencyField;
    FacVenContado: TCurrencyField;
    FacVenTarjeta: TCurrencyField;
    FacVenIdTarjeta: TIntegerField;
    FacVenCtaCte: TCurrencyField;
    FacVenNroCtas: TIntegerField;
    FacVenCheque: TCurrencyField;
    FacVenTickets: TCurrencyField;
    FacVenOtrosPagos: TCurrencyField;
    FacVenEmpleado: TIntegerField;
    FacVenImpresa: TSmallintField;
    FacVenFechaIS: TDateField;
    FacVenIdMotNc: TIntegerField;
    FacVenUsuario: TIntegerField;

    MarkUp: TDBISAMTable;
    MarkUpIdMarkUp: TAutoIncField;
    MarkUpDetMarkUp: TStringField;
    MarkUpCoefMarkUp: TFloatField;

    ArtTalles: TDBISAMTable;
    ArtTallesIdArticulo: TIntegerField;
    ArtTallesTalle: TIntegerField;

    Proveedores: TDBISAMTable;
    ProveedoresIdProveedor: TAutoIncField;
    ProveedoresNombre: TStringField;
    ProveedoresNombreFantasia: TStringField;
    ProveedoresDireccion: TStringField;
    ProveedoresLocalidad: TStringField;
    ProveedoresProvincia: TStringField;
    ProveedoresCodPostal: TStringField;
    ProveedoresTelefonos: TStringField;
    ProveedoresTelFax: TStringField;
    ProveedoresMail: TStringField;
    ProveedoresWeb: TStringField;
    ProveedoresTipoIva: TSmallintField;
    ProveedoresTipoDoc: TSmallintField;
    ProveedoresDocumento: TStringField;
    ProveedoresIngBrutos: TStringField;
    ProveedoresViajante: TStringField;
    ProveedoresTelViajante: TStringField;
    ProveedoresContacto: TStringField;
    ProveedoresTelContacto: TStringField;

    ProvByArt: TDBISAMTable;
    ProvByArtIdProveedor: TIntegerField;
    ProvByArtIdArticulo: TIntegerField;
    ProvByArtCodArtProveedor: TStringField;
    ProvByArtPrecioProv: TFloatField;
    ProvByArtUltimaCompra: TDateField;
    ProvByArtCantidad: TFloatField;
    ProvByArtDescuento: TFloatField;

    ItemsFC: TDBISAMTable;
    ItemsFCIdFactura: TIntegerField;
    ItemsFCIdSucursal: TIntegerField;
    ItemsFCIdPuntoVenta: TIntegerField;
    ItemsFCIdItem: TSmallintField;
    ItemsFCIdArticulo: TIntegerField;
    ItemsFCTalle: TIntegerField;
    ItemsFCIdGrupo: TIntegerField;
    ItemsFCIdSubGrupo: TIntegerField;
    ItemsFCIdStock: TIntegerField;
    ItemsFCIdTurno: TIntegerField;
    ItemsFCIdLista: TIntegerField;
    ItemsFCFechaF: TDateField;
    ItemsFCCantidad: TFloatField;
    ItemsFCPrecioNeto: TFloatField;
    ItemsFCPrecioFinal: TFloatField;
    ItemsFCPrecioTotal: TFloatField;
    ItemsFCExento: TFloatField;
    ItemsFCImpInt: TFloatField;
    ItemsFCMtoIva: TFloatField;
    ItemsFCIdAlcIva: TIntegerField;
    ItemsFCAlicuotaIva: TFloatField;
    ItemsFCSector: TIntegerField;
    ItemsFCEstadoFac: TBooleanField;

    PlanCtas: TDBISAMTable;
    PlanCtasCodigo: TIntegerField;
    PlanCtasEsCentro: TSmallintField;
    PlanCtasIdSucursal: TIntegerField;
    PlanCtasDescripcion: TStringField;
    PlanCtasCodigoContable: TStringField;
    PlanCtasCentro: TIntegerField;
    PlanCtasDetalleCentro: TStringField;

    Ordenes: TDBISAMTable;
    OrdenesIdOrden: TIntegerField;
    OrdenesEntidad: TIntegerField;
    OrdenesFechaOP: TDateField;
    OrdenesNroCompOP: TStringField;
    OrdenesCantOp: TSmallintField;
    OrdenesTotalOP: TCurrencyField;
    OrdenesContado: TCurrencyField;
    OrdenesTickets: TCurrencyField;
    OrdenesBancoProp: TCurrencyField;
    OrdenesBancoTer: TCurrencyField;
    OrdenesBonifProv: TCurrencyField;
    OrdenesUsuario: TIntegerField;
    OrdenesEstado: TSmallintField;

    ItemsOP: TDBISAMTable;
    ItemsOPIdOrdPago: TIntegerField;
    ItemsOPIdItemOP: TIntegerField;
    ItemsOPEntidad: TIntegerField;
    ItemsOPFechaOp: TDateField;
    ItemsOPFechaOr: TDateField;
    ItemsOPIdFactura: TIntegerField;
    ItemsOPIdSucursal: TIntegerField;
    ItemsOPImporte: TCurrencyField;
    ItemsOPSaldoMov: TCurrencyField;
    ItemsOPMontoOrg: TCurrencyField;
    ItemsOPTipoMov: TSmallintField;
    ItemsOPComprobante: TStringField;
    ItemsOPNroFactura: TStringField;
    ItemsOPEstado: TSmallintField;

    ItemsPg: TDBISAMTable;
    ItemsPgIdOrden: TIntegerField;
    ItemsPgIdItemPag: TSmallintField;
    ItemsPgEntidad: TIntegerField;
    ItemsPgComprobante: TStringField;
    ItemsPgTipoPago: TStringField;
    ItemsPgFecha: TDateField;
    ItemsPgImporte: TCurrencyField;
    ItemsPgDetalle: TStringField;
    ItemsPgDescripcion: TStringField;
    ItemsPgIdMovimiento: TIntegerField;
    ItemsPgEstado: TSmallintField;

    TransBank: TDBISAMTable;
    TransBankIdTransBank: TIntegerField;
    TransBankIdCtaOrg: TIntegerField;
    TransBankIdMovOrg: TIntegerField;
    TransBankIdCtaDes: TIntegerField;
    TransBankIdMovDes: TIntegerField;
    TransBankMontoT: TCurrencyField;
    TransBankFechaT: TDateField;
    TransBankUsuario: TIntegerField;
    TransBankEstado: TBooleanField;
    TransBankCantMov: TSmallintField;

    ItemsTB: TDBISAMTable;
    ItemsTBIdTransBank: TIntegerField;
    ItemsTBIdItemTB: TIntegerField;
    ItemsTBFecha: TDateField;
    ItemsTBDetalle: TStringField;
    ItemsTBMonto: TCurrencyField;

    Tarjetas: TDBISAMTable;
    TarjetasIdTarjeta: TAutoIncField;
    TarjetasTarjeta: TStringField;
    TarjetasDiaPresentacion: TSmallintField;
    TarjetasTelAutorizacion: TStringField;
    TarjetasCodComercio: TStringField;
    TarjetasCodEntidad: TStringField;
    TarjetasLimite: TCurrencyField;
    TarjetasDomicilio: TStringField;
    TarjetasDepartamento: TStringField;
    TarjetasProvincia: TStringField;
    TarjetasComision: TFloatField;
    TarjetasSaldoVencido: TCurrencyField;
    TarjetasSaldoAVencer: TCurrencyField;

    TarPlan: TDBISAMTable;
    TarPlanIdTarjeta: TIntegerField;
    TarPlanNroCuota: TIntegerField;
    TarPlanIdSucursal: TIntegerField;
    TarPlanCoefPlan: TFloatField;
    TarPlanModoPago: TSmallintField;
    TarPlanMaxDto: TFloatField;
    TarPlanMaxDtoII: TFloatField;

    MovTar: TDBISAMTable;
    MovTarIdMov: TAutoIncField;
    MovTarIdTarjeta: TIntegerField;
    MovTarIdFactura: TIntegerField;
    MovTarIdSucursal: TIntegerField;
    MovTarIdCliente: TIntegerField;
    MovTarCupon: TStringField;
    MovTarLote: TStringField;
    MovTarFechaOp: TDateField;
    MovTarCodTar: TStringField;
    MovTarNroCuota: TSmallintField;
    MovTarImpCuota: TFloatField;
    MovTarIntCuota: TFloatField;
    MovTarTotalOp: TFloatField;
    MovTarAutorizacion: TStringField;
    MovTarEstado: TSmallintField;
    MovTarFechaResumen: TDateField;
    MovTarFechaIS: TDateField;
    MovTarCuotaPag: TIntegerField;
    MovTarNroLiquidacion: TStringField;

    ItemsFV: TDBISAMTable;
    ItemsFVIdFactura: TIntegerField;
    ItemsFVIdSucursal: TIntegerField;
    ItemsFVIdPuntoVenta: TIntegerField;
    ItemsFVIdItem: TSmallintField;
    ItemsFVIdArticulo: TIntegerField;
    ItemsFVTalle: TIntegerField;
    ItemsFVIdGrupo: TIntegerField;
    ItemsFVIdSubGrupo: TIntegerField;
    ItemsFVIdSubDep: TIntegerField;
    ItemsFVFechaF: TDateField;
    ItemsFVCantidad: TFloatField;
    ItemsFVNroCtas: TIntegerField;
    ItemsFVPrcBonificacion: TFloatField;
    ItemsFVEntContado: TCurrencyField;
    ItemsFVDescuento: TCurrencyField;
    ItemsFVPrecioCosto: TCurrencyField;
    ItemsFVPrecioNeto: TCurrencyField;
    ItemsFVPrecioFinal: TCurrencyField;
    ItemsFVPrecioTotal: TCurrencyField;
    ItemsFVValorLista: TCurrencyField;
    ItemsFVExento: TCurrencyField;
    ItemsFVImpInt: TCurrencyField;
    ItemsFVIvaIn: TCurrencyField;
    ItemsFVIdAlcIva: TIntegerField;
    ItemsFVAlicuotaIva: TFloatField;
    ItemsFVIdAlcIB: TIntegerField;
    ItemsFVAlcIB: TFloatField;
    ItemsFVIngBto: TCurrencyField;
    ItemsFVOferta: TIntegerField;
    ItemsFVSubDet: TStringField;

    Inventario: TDBISAMTable;
    InventarioIdFactura: TIntegerField;
    InventarioIdSucursal: TIntegerField;
    InventarioIdStock: TIntegerField;
    InventarioFechaI: TDateField;
    InventarioDiaHora: TDateTimeField;
    InventarioEmpleado: TIntegerField;
    InventarioCantArt: TSmallintField;
    InventarioNroFact: TStringField;
    InventarioPeriodo: TIntegerField;
    InventarioTNeto: TCurrencyField;
    InventarioTFac: TIntegerField;
    InventarioTNoComp: TCurrencyField;
    InventarioTotal: TCurrencyField;
    InventarioTCosto: TCurrencyField;

    ItemsIN: TDBISAMTable;
    ItemsINIdFactura: TIntegerField;
    ItemsINIdSucursal: TIntegerField;
    ItemsINIdStock: TIntegerField;
    ItemsINIdItem: TSmallintField;
    ItemsINPeriodo: TIntegerField;
    ItemsINIdArticulo: TIntegerField;
    ItemsINTalle: TIntegerField;
    ItemsINIdGrupo: TIntegerField;
    ItemsINIdSubGrupo: TIntegerField;
    ItemsINFechaI: TDateField;
    ItemsINCantidad: TFloatField;
    ItemsINCosto: TCurrencyField;
    ItemsININeto: TCurrencyField;
    ItemsININoComp: TCurrencyField;
    ItemsINIPrecio: TCurrencyField;
    ItemsINITotal: TCurrencyField;
    ItemsINTFac: TIntegerField;

    TipoMovBco: TDBISAMTable;
    TipoMovBcoIdMovBco: TAutoIncField;
    TipoMovBcoTipoMovBco: TStringField;
    TipoMovBcoSuma_Resta: TBooleanField;
    TipoMovBcoContraMov: TIntegerField;

    SubDepositos: TDBISAMTable;
    SubDepositosIdSubDep: TAutoIncField;
    SubDepositosDetSubDep: TStringField;
    SubDepositosIdSucursal: TIntegerField;

    Sucursales: TDBISAMTable;
    SucursalesIdSucursal: TIntegerField;
    SucursalesNombreSuc: TStringField;
    SucursalesDireccionSuc: TStringField;
    SucursalesLocalidadSuc: TStringField;
    SucursalesProvinciaSuc: TStringField;
    SucursalesCoPostalSuc: TStringField;
    SucursalesTelefonoSuc: TStringField;
    SucursalesDirectorio: TStringField;
    SucursalesActualizaciones: TStringField;
    SucursalesRemota: TBooleanField;
    SucursalesDetSuc: TStringField;
    SucursalesFechaInicio: TDateField;
    SucursalesFechaTInv: TDateField;
    SucursalesNroRemitoT: TStringField;
    SucursalesNroRemitoI: TStringField;
    SucursalesNEmp: TIntegerField;
    SucursalesNPto: TIntegerField;
    SucursalesTipoFTP: TBooleanField;
    SucursalesHostName: TStringField;
    SucursalesUsuario: TStringField;
    SucursalesPassWord: TStringField;
    SucursalesDirFTPEnvios: TStringField;
    SucursalesDirFTPRecep: TStringField;
    SucursalesConSubDep: TBooleanField;
    SucursalesIdBancoB: TIntegerField;
    SucursalesIdBancoT: TIntegerField;
    SucursalesIdBancoE: TIntegerField;
    SucursalesIdBancoP: TIntegerField;

    R_Rend: TDBISAMTable;
    R_RendIdRend: TIntegerField;
    R_RendIdSuc: TIntegerField;
    R_RendFechaR: TDateField;
    R_RendTVenta: TCurrencyField;
    R_RendTPesos: TCurrencyField;
    R_RendTTickets: TCurrencyField;
    R_RendTTarjeta: TCurrencyField;
    R_RendTCheques: TCurrencyField;
    R_RendTSenas: TCurrencyField;
    R_RendTNCred: TCurrencyField;
    R_RendTGastosE: TCurrencyField;
    R_RendTGastosT: TCurrencyField;
    R_RendDiferencia: TCurrencyField;
    R_RendIdCuenta: TIntegerField;
    R_RendBolDep: TStringField;
    R_RendDeposito: TCurrencyField;
    R_RendIdMovBco: TIntegerField;
    R_RendDepositoT: TCurrencyField;
    R_RendIdMovBcoT: TIntegerField;
    R_RendDepositoE: TCurrencyField;
    R_RendIdMovBcoE: TIntegerField;
    R_RendFechaIS: TDateField;

    Traspaso: TDBISAMTable;
    TraspasoIdFactura: TIntegerField;
    TraspasoIdSucursal: TIntegerField;
    TraspasoIdPuntoVenta: TIntegerField;
    TraspasoTipoFactura: TSmallintField;
    TraspasoIdStOrigen: TIntegerField;
    TraspasoIdStDestino: TIntegerField;
    TraspasoEmpleado: TIntegerField;
    TraspasoDiaHora: TDateTimeField;
    TraspasoFechaF: TDateField;
    TraspasoNroFactura: TStringField;
    TraspasoNroRemSuc: TStringField;
    TraspasoCantArtic: TSmallintField;
    TraspasoTotal: TCurrencyField;
    TraspasoUsuario: TIntegerField;
    TraspasoEstado: TSmallintField;
    TraspasoTipoAj: TSmallintField;
    TraspasoIdSubDepO: TIntegerField;
    TraspasoIdSubDepD: TIntegerField;

    ItemsTR: TDBISAMTable;
    ItemsTRIdFactura: TIntegerField;
    ItemsTRIdSucursal: TIntegerField;
    ItemsTRIdItem: TSmallintField;
    ItemsTRIdSucursalO: TIntegerField;
    ItemsTRIdSucursalD: TIntegerField;
    ItemsTRIdArticulo: TIntegerField;
    ItemsTRTalle: TIntegerField;
    ItemsTRIdGrupo: TIntegerField;
    ItemsTRIdSubGrupo: TIntegerField;
    ItemsTRIdStock: TIntegerField;
    ItemsTRTMov: TIntegerField;
    ItemsTRFechaF: TDateField;
    ItemsTRCantidad: TFloatField;
    ItemsTRTipoAj: TSmallintField;
    ItemsTRPrecioFinal: TFloatField;
    ItemsTRPrecioTotal: TFloatField;

    StockArt: TDBISAMTable;
    StockArtIdArticulo: TIntegerField;
    StockArtIdStock: TIntegerField;
    StockArtIdGrupo: TIntegerField;
    StockArtIdSubGrupo: TIntegerField;
    StockArtActual: TFloatField;
    StockArtIngresos: TFloatField;
    StockArtEgresos: TFloatField;
    StockArtFechaControl: TDateField;
    StockArtStkAInv: TFloatField;
    StockArtFechaInv: TDateField;
    StockArtDifInv: TFloatField;

    StockArtTalles: TDBISAMTable;
    StockArtTallesIdArticulo: TIntegerField;
    StockArtTallesIdStock: TIntegerField;
    StockArtTallesTalle: TIntegerField;
    StockArtTallesIdGrupo: TIntegerField;
    StockArtTallesIdSubGrupo: TIntegerField;
    StockArtTallesActual: TFloatField;
    StockArtTallesIngresos: TFloatField;
    StockArtTallesEgresos: TFloatField;
    StockArtTallesFechaControl: TDateField;
    StockArtTallesStkAInv: TFloatField;
    StockArtTallesFechaInv: TDateField;
    StockArtTallesDifInv: TFloatField;

    ArtModPrc: TDBISAMTable;
    ArtModPrcIdRemMod: TAutoIncField;
    ArtModPrcIdArticulo: TIntegerField;
    ArtModPrcTipoComp: TSmallintField;
    ArtModPrcNroRemito: TStringField;
    ArtModPrcFechaR: TDateField;
    ArtModPrcDiaHora: TDateTimeField;
    ArtModPrcUsuario: TIntegerField;
    ArtModPrcCostoOld: TCurrencyField;
    ArtModPrcCostoNew: TCurrencyField;
    ArtModPrcPrecioOld: TCurrencyField;
    ArtModPrcPrecioNew: TCurrencyField;

    D_Clientes: TMDOTable;
    D_ClientesIDSUCURSAL: TIntegerField;
    D_ClientesIDCLIENTE: TIntegerField;
    D_ClientesNOMBRE: TMDOStringField;
    D_ClientesDIRECCION: TMDOStringField;
    D_ClientesLOCALIDAD: TMDOStringField;
    D_ClientesPROVINCIA: TMDOStringField;
    D_ClientesCODPOSTAL: TMDOStringField;
    D_ClientesTELEFONOS: TMDOStringField;
    D_ClientesTELFAX: TMDOStringField;
    D_ClientesTIPOIVA: TSmallintField;
    D_ClientesTIPODOC: TSmallintField;
    D_ClientesDOCUMENTO: TMDOStringField;
    D_ClientesINGBRUTOS: TMDOStringField;

    MovCred: TMDOTable;
    MovCredIDMOV: TIntegerField;
    MovCredIDSUCURSAL: TIntegerField;
    MovCredIDTARJETA: TIntegerField;
    MovCredIDFACTURA: TIntegerField;
    MovCredIDCLIENTE: TIntegerField;
    MovCredNOMBRE: TMDOStringField;
    MovCredORDEN: TMDOStringField;
    MovCredCODTAR: TMDOStringField;
    MovCredFECHAOP: TDateField;
    MovCredNROCUOTA: TSmallintField;
    MovCredIMPCUOTA: TMDOBCDField;
    MovCredTOTALOP: TMDOBCDField;
    MovCredESTADO: TSmallintField;
    MovCredCUOTASPAGADAS: TSmallintField;

    MovCtas: TMDOTable;
    MovCtasIDMOVCRED: TIntegerField;
    MovCtasNROCUOTA: TSmallintField;
    MovCtasIDFACTURA: TIntegerField;
    MovCtasIDSUCURSAL: TIntegerField;
    MovCtasFECHAV: TDateField;
    MovCtasMONTOCUOTA: TMDOBCDField;
    MovCtasIDCLIENTE: TIntegerField;
    MovCtasFECHAP: TDateField;
    MovCtasIDRECIBO: TIntegerField;
    MovCtasIDSUCREC: TIntegerField;

    Items_FV: TMDOTable;
    Items_FVIDFACTURA: TIntegerField;
    Items_FVIDSUCURSAL: TIntegerField;
    Items_FVIDPUNTOVENTA: TIntegerField;
    Items_FVIDITEM: TSmallintField;
    Items_FVIDARTICULO: TIntegerField;
    Items_FVCANTIDAD: TMDOBCDField;
    Items_FVDETALLE_ART: TMDOStringField;
    Items_FVPRECIONETO: TMDOBCDField;
    Items_FVPRECIOFINAL: TMDOBCDField;
    Items_FVPRECIOTOTAL: TMDOBCDField;
    Items_FVVALORLISTA: TMDOBCDField;
    Items_FVIVAIN: TMDOBCDField;
    Items_FVIDALCIVA: TIntegerField;
    Items_FVALICUOTAIVA: TMDOBCDField;

    Fac_Ven: TMDOTable;
    Fac_VenIDFACTURA: TIntegerField;
    Fac_VenIDSUCURSAL: TIntegerField;
    Fac_VenIDPUNTOVENTA: TIntegerField;
    Fac_VenTIPOFACTURA: TSmallintField;
    Fac_VenFECHAF: TDateField;
    Fac_VenNROFACTURA: TMDOStringField;
    Fac_VenCLIENTE: TIntegerField;
    Fac_VenTIPOIVA: TSmallintField;
    Fac_VenTOTAL: TMDOBCDField;
    Fac_VenCONTADO: TMDOBCDField;
    Fac_VenTARJETA: TMDOBCDField;
    Fac_VenIDTARJETA: TIntegerField;
    Fac_VenCTACTE: TMDOBCDField;
    Fac_VenNROCTAS: TIntegerField;
    Fac_VenCHEQUE: TMDOBCDField;
    Fac_VenTICKETS: TMDOBCDField;
    Fac_VenOTROSPAGOS: TMDOBCDField;
    Fac_VenEMPLEADO: TIntegerField;
    Fac_VenSTATE: TSmallintField;
    Fac_VenTDOCCLI: TSmallintField;
    Fac_VenDOMICILIO: TMDOStringField;
    Fac_VenLOCALIDAD: TMDOStringField;
    Fac_VenNOMBRE: TMDOStringField;
    Fac_VenDOCUMENTO: TMDOStringField;
    Fac_VenPROCESADO: TSmallintField;

    PagCta: TMDOTable;
    PagCtaIDMOVCRED: TIntegerField;
    PagCtaNROCUOTA: TSmallintField;
    PagCtaIDFACTURA: TIntegerField;
    PagCtaIDSUCURSAL: TIntegerField;
    PagCtaMONTOCUOTA: TMDOBCDField;
    PagCtaIDCLIENTE: TIntegerField;
    PagCtaFECHAPAGO: TDateField;
    PagCtaIDRECIBO: TIntegerField;
    PagCtaIDSUCREC: TIntegerField;
    PagCtaNRORECIBO: TMDOStringField;

    trConversion: TMDOTransaction;
    dbConversion: TMDODatabase;
    IyC_Exp: TmxDataSetExport;

    qSaveComp: TMDOQuery;
    qSaveMovTar: TMDOQuery;
    qSaveMovCta: TMDOQuery;
    dsD_Clientes: TDataSource;
    dsMovCred: TDataSource;
    dsMovCtas: TDataSource;
    dsPagCta: TDataSource;
    dsItems_FV: TDataSource;
    dsFac_Ven: TDataSource;
    FacVBonRec: TFloatField;
    FacVCodMon: TSmallintField;
    FacVConcepto: TSmallintField;
    FacVRetencion: TStringField;
    FacVPedido: TIntegerField;
    FacVListaPrecios: TSmallintField;
    FacVEntrega: TStringField;
    FacVCondPago: TIntegerField;
    FacVSitIva: TStringField;
    FacVRemito: TIntegerField;
    FacVIva1: TCurrencyField;
    FacVIva2: TCurrencyField;
    FacVSellado: TCurrencyField;
    FacVInternos: TCurrencyField;
    FacVOtrosImp: TCurrencyField;
    FacVPrecioAb: TStringField;
    FacVBUso: TStringField;
    FacVIngBtos: TCurrencyField;
    ClearFac: TMenuItem;
    Fac_VenBON_REC: TFloatField;
    Items_FVBON_REC: TFloatField;
    trSave_TXT: TMDOTransaction;
    pnlConversLeft: TRzPanel;
    gbConvDatos: TRzGroupBox;
    btnOpenTxtCred: TRzBitBtn;
    btnOpenTxtCtas: TRzBitBtn;
    btnOpenTxtPag: TRzBitBtn;
    btnEnganchar: TRzBitBtn;
    btnDesenganchar: TRzBitBtn;
    btnOpenTxtProds: TRzBitBtn;
    btnOpenTxtFac: TRzBitBtn;
    btnExpTxts: TRzMenuButton;
    btnGrabarTxts: TRzMenuButton;
    gbFiltrosTXT: TRzGroupBox;
    lblFVDesde: TLabel;
    lblFVHasta: TLabel;
    lblEntidad: TLabel;
    lblTxtFiltro: TLabel;
    edtFacVDesde: TRzDateTimeEdit;
    edtFacVHasta: TRzDateTimeEdit;
    btnFiltrarFacV1: TRzBitBtn;
    edtFiltroFVEntidad: TRzNumericEdit;
    btnFiltrarFacV2: TRzBitBtn;
    edtTxtfiltro: TRzEdit;
    btnFacVFiltro: TRzBitBtn;
    btnDesFiltrar: TRzBitBtn;
    pcConvTxt: TRzPageControl;
    tsTXTs: TRzTabSheet;
    pnlViewTxt: TRzPanel;
    spConvDat: TSplitter;
    pnlTopConv: TRzPanel;
    spCredFac: TSplitter;
    gCred: TwwDBGrid;
    gFacV: TwwDBGrid;
    pnlBotConv: TRzPanel;
    spCuotasPagos: TSplitter;
    spPagArt: TSplitter;
    gCuotas: TwwDBGrid;
    gPagos: TwwDBGrid;
    gProds: TwwDBGrid;
    tsTablas: TRzTabSheet;
    spFV: TSplitter;
    pnlTblConvFB: TRzPanel;
    lblTXTTUDesde: TLabel;
    lblTXTTUHasta: TLabel;
    btnOpenTablas: TRzBitBtn;
    btnGeneracion: TRzBitBtn;
    edtTXTTUDesde: TRzDateTimeEdit;
    edtTXTTUHasta: TRzDateTimeEdit;
    pnlFacVen: TRzPanel;
    pnlFVItm: TSplitter;
    gFacVen: TwwDBGrid;
    gItemsFV: TwwDBGrid;
    pnlCreditos: TRzPanel;
    spMCCta: TSplitter;
    spCtaRec: TSplitter;
    gMovCred: TwwDBGrid;
    gMovCtas: TwwDBGrid;
    gRecibos: TwwDBGrid;
    tsClientes: TRzTabSheet;
    pnlClientes: TRzPanel;
    btnOpenTxtCli: TRzBitBtn;
    btnEngancharBycli: TRzBitBtn;
    gConvCli: TwwDBGrid;
    pnlConversRight: TRzPanel;
    mmSave: TMemo;
    GrabarTodoTxt: TMenuItem;
    btnGenerarTodo: TRzBitBtn;
    Items_FVTIPOFACTURA: TSmallintField;
    OrdenesIdEmpresa: TIntegerField;
    btnActulizarDBIsam: TRzBitBtn;
    ItemsVIdPuntoVenta: TIntegerField;
    sfdTxts: TRzSelectFolderDialog;
    btnAllsTxts: TRzBitBtn;
    lblPasoTxt: TLabel;
    btnTodoEl_Proceso: TRzBitBtn;
    btnGenSuc: TRzBitBtn;
    btnActualizarSuc_DbIsam: TRzBitBtn;
    btnActArts: TRzBitBtn;
    btnPasaTransf: TRzBitBtn;
    btnActuDBIsamCompras: TRzBitBtn;
    btnRendiciones: TRzBitBtn;
    CCProvIdEmpresa: TSmallintField;
    btnActArtEsp: TRzBitBtn;
    ArtPreEsp: TDBISAMTable;
    ArtPreEspIdArticulo: TIntegerField;
    ArtPreEspIdSucursal: TIntegerField;
    ArtPreEspPrecio: TCurrencyField;
    ArtPreEspHasta: TDateField;
    btnEmpleados: TRzBitBtn;
    btnActSoloCompras: TRzBitBtn;
    BancoPropParaPasar: TIntegerField;
    btnPasaProvs: TRzBitBtn;
    FacComParaPasar: TIntegerField;
    edtIdFac: TRzNumericEdit;
    edtIdSuc: TRzNumericEdit;
    edtIdPto: TRzNumericEdit;
    btnSaveItemsFac: TRzBitBtn;
    lblIdFac: TLabel;
    lblIdSuc: TLabel;
    lblIdPto: TLabel;
    btnSaveAllItemsFac: TRzBitBtn;

    procedure btnUbicDB_IsamClick(Sender: TObject);
    procedure btnAuxProdsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnOpenTxtCliClick(Sender: TObject);
    procedure btnOpenTxtFacClick(Sender: TObject);
    procedure btnOpenTxtCredClick(Sender: TObject);
    procedure btnOpenTxtCtasClick(Sender: TObject);
    procedure btnOpenTxtPagClick(Sender: TObject);
    procedure btnOpenTxtProdsClick(Sender: TObject);
    procedure btnEngancharClick(Sender: TObject);
    procedure btnDesengancharClick(Sender: TObject);
    procedure DClientesTIPOIVAGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure DClientesTIPODOCGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure FacVTipoFactGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPasaArtsClick(Sender: TObject);
    procedure btnPasaComprasClick(Sender: TObject);
    procedure btnPasaCC_OPClick(Sender: TObject);
    procedure btnPasaBcosClick(Sender: TObject);
    procedure btnPasaVtasClick(Sender: TObject);
    procedure btnPasaMTarClick(Sender: TObject);
    procedure btnPasaInvClick(Sender: TObject);
    procedure btnPasaVariosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFiltrarFacV1Click(Sender: TObject);
    procedure btnFiltrarFacV2Click(Sender: TObject);
    procedure btnDesFiltrarClick(Sender: TObject);
    procedure btnFacVFiltroClick(Sender: TObject);
    procedure FacVTDocCliGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FacVCodMovGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ExportarClientesClick(Sender: TObject);
    procedure ExportarComprobantesClick(Sender: TObject);
    procedure ExportarCreditosClick(Sender: TObject);
    procedure ExportarProductosClick(Sender: TObject);
    procedure ExportarCuotasClick(Sender: TObject);
    procedure ExportarPagosClick(Sender: TObject);
    procedure FacVCod1GetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FacVCod2GetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FacVCod3GetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FacVCod4GetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CreditosTDeudaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CuotasTDeudaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure PagosTDeudaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure SaveFacClick(Sender: TObject);
    procedure SaveCreClick(Sender: TObject);
    procedure btnEngancharBycliClick(Sender: TObject);
    procedure pcConversionesClose(Sender: TObject; var AllowClose: Boolean);
    procedure SaveCliClick(Sender: TObject);
    procedure D_ClientesTIPODOCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnOpenTablasClick(Sender: TObject);
    procedure Fac_VenTIPOFACTURAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnGeneracionClick(Sender: TObject);
    procedure Fac_VenTDOCCLIGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure Fac_VenTIPOIVAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ItemsVTipoFactGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ClearFacClick(Sender: TObject);
    procedure GrabarTodoTxtClick(Sender: TObject);
    procedure btnGenerarTodoClick(Sender: TObject);
    procedure btnGenerarRecPagClick(Sender: TObject);
    procedure btnActulizarDBIsamClick(Sender: TObject);
    procedure btnAllsTxtsClick(Sender: TObject);
    procedure btnTodoEl_ProcesoClick(Sender: TObject);
    procedure btnGenSucClick(Sender: TObject);
    procedure btnActualizarSuc_DbIsamClick(Sender: TObject);
    procedure btnActArtsClick(Sender: TObject);
    procedure btnPasaTransfClick(Sender: TObject);
    procedure btnActuDBIsamComprasClick(Sender: TObject);
    procedure btnRendicionesClick(Sender: TObject);
    procedure btnActArtEspClick(Sender: TObject);
    procedure btnEmpleadosClick(Sender: TObject);
    procedure btnActSoloComprasClick(Sender: TObject);
    procedure btnPasaProvsClick(Sender: TObject);
    procedure btnSaveItemsFacClick(Sender: TObject);
    procedure btnSaveAllItemsFacClick(Sender: TObject);
  private
    { Private declarations }

    NArch, Linea, Paso, PasoTxt: String;
    NroRg, CantC, CantT: Integer;
    ArchT: TextFile;

    procedure CarDoc(Paso: String; Con_Show: Boolean);
    procedure CtaDoc(Paso: String; Con_Show: Boolean);
    procedure PagDoc(Paso: String; Con_Show: Boolean);
    procedure MaeFac(Paso: String; Con_Show: Boolean);
    procedure MovFac(Paso: String; Con_Show: Boolean);

    procedure SaveFac_DesdeTxt(Con_Show: Boolean);
    procedure SaveCre_DesdeTxt(Con_Show: Boolean);

    procedure Save_FacTxt(Desde, Hasta: TDate; Con_Show: Boolean);

    function DoPagoCuota(DatosPago: TDatosPagos; ItemsRec: TBody_Fiscal): Boolean;
    procedure Save_RecPagos;
    function Put_Cliente(IdCli: Integer; Nom, Dom, Loc, Doc: String; TDoc, TIva: SmallInt): Integer;
    procedure DoPagoTarjeta(var DatosPago: TDatosPagos);
    function GrabarComprobanteVenta(var DatosPago: TDatosPagos; var Factura: TFactura; ItemsFactura: TBody_Fiscal): Boolean;

    procedure DBIsam_ConnectDB(Que: SmallInt);
    procedure DBIsam_Pasa_Arts;
    procedure DBIsam_Actualiza_Arts;
    procedure DBIsam_Pasa_AuxProds;
    procedure DBIsam_Pasa_Compras;
    procedure DBIsam_Pasa_Provs;
    procedure DBIsam_Actualiza_Compras;
    procedure DBIsam_Pasa_CC_OP;
    procedure DBIsam_Pasa_Bcos;
    procedure DBIsam_Pasa_Transferencias;
    procedure DBIsam_Pasa_Inventarios;
    procedure DBIsam_Pasa_MovTar;
    procedure DBIsam_Pasa_Ventas;
    procedure DBIsam_Pasa_Com_Ventas(IdF, IdS, IdP: Integer);
    procedure DBIsam_Pasa_Consignaciones;
    procedure DBIsam_Pasa_Rendiciones;
    procedure DBIsam_Pasa_Varios;
    procedure DBIsam_Actualizar_Sucursal;
  public
    { Public declarations }

    function DBIsam_Actualizador(IdB: Integer; PasoDBI: String): String;
    function LeeTXT_Actualizador(IdB: Integer; PasoTXT: String): String;

  end;

  function Actualizador(T, S: Integer; P: String): String;

Const
  ST = 'Insert InTo '+
       'Traspaso(IdFactura, IdSucursal, IdPuntoVenta, IdStOrigen, IdStDestino, DiaHora, TipoFactura, NroRemSuc, FechaF, '+
       '         NroFactura, CantArtic, Total, Empleado, Usuario, TipoAj, Estado, IdSubDepO, IdSubDepD, State) '+
       'Values(:IdFactura, :IdSucursal, :IdPuntoVenta, :IdStOrigen, :IdStDestino, :DiaHora, :TipoFactura, :NroRemSuc, :FechaF, '+
       '       :NroFactura, :CantArtic, :Total, :Empleado, :Usuario, :TipoAj, :Estado, :IdSubDepO, :IdSubDepD, :State) ';

  IT = 'Insert InTo '+
       'ItemsTR(IdFactura, IdSucursal, IdPuntoVenta, IdItem, IdArticulo, Talle, FechaF, Cantidad, TMov, TipoAj, '+
       '        PrecioFinal, PrecioTotal, IdSucursalO, IdSucursalD, Detalle1, Detalle2, Detalle3, Detalle4, State) '+
       'Values(:IdFactura, :IdSucursal, :IdPuntoVenta, :IdItem, :IdArticulo, :Talle, :FechaF, :Cantidad, :TMov, :TipoAj, '+
       '       :PrecioFinal, :PrecioTotal, :IdSucursalO, :IdSucursalD, :Detalle1, :Detalle2, :Detalle3, :Detalle4, :State) ';

  SI = 'Insert InTo ' +
       'Inventario(IdFactura, IdSucursal, IdStock, DiaHora, FechaI, NroFact, '+
       '       CantArt, Periodo, TNeto, TFac, TNoComp, TCosto, Total, Empleado) '+
       'Values(:IdFactura, :IdSucursal, :IdStock, :DiaHora, :FechaI, :NroFact, '+
       '       :CantArt, :Periodo, :TNeto, :TFac, :TNoComp, :TCosto, :Total, :Empleado) ';

  II = 'Insert Into '+
       'ItemsIN(IdFactura, IdSucursal, IdStock, IdItem, Periodo, IdArticulo, Talle, IdGrupo, '+
       '        IdSubGrupo, FechaI, Cantidad, IPrecio, ITotal, Costo, INeto, INoComp, TFac) '+
       'Values(:IdFactura, :IdSucursal, :IdStock, :IdItem, :Periodo, :IdArticulo, :Talle, :IdGrupo, '+
       '       :IdSubGrupo, :FechaI, :Cantidad, :IPrecio, :ITotal, :Costo, :INeto, :INoComp, :TFac) ';

  SK = 'INSERT INTO STOCKART '+
       '       (IDARTICULO, IDSTOCK, ACTUAL, INGRESOS, EGRESOS, FECHACONTROL, STKAINV, FECHAINV, DIFINV) '+
       'VALUES (:IDARTICULO, :IDSTOCK, :ACTUAL, :INGRESOS, :EGRESOS, :FECHACONTROL, :STKAINV, :FECHAINV, :DIFINV)';

  TL = 'INSERT INTO STOCKARTTALLES '+
       '       (IDARTICULO, IDSTOCK, TALLE, ACTUAL, INGRESOS, EGRESOS, FECHACONTROL, STKAINV, FECHAINV, DIFINV) '+
       'VALUES (:IDARTICULO, :IDSTOCK, :TALLE, :ACTUAL, :INGRESOS, :EGRESOS, :FECHACONTROL, :STKAINV, :FECHAINV, :DIFINV) ';

var
  frmConversion: TfrmConversion;


implementation

uses udmGestion, udmSaveFile;

{$R *.dfm}


  function Actualizador(T, S: Integer; P: String): String;
  begin
    try
      frmConversion := TfrmConversion.Create(nil);
      Case T of
        0: frmConversion.ShowModal;
        1: Result := frmConversion.DBIsam_Actualizador(S, P);
        2: Result := frmConversion.LeeTXT_Actualizador(S, P);
      End;
    finally
      frmConversion.Close;
    end;
  end;


procedure TfrmConversion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  trConversion.Active := False;
  dbConversion.Connected := False;
  Action := caFree;
end;

procedure TfrmConversion.FormCreate(Sender: TObject);
begin
  trConversion.Active := False;
  trSave_TXT.Active := False;
  dbConversion.Connected := False;

  dbConversion.DatabaseName := DataDirectory;
  dbConversion.Params.Clear;
  dbConversion.Params.Add('user_name=sysdba');
  dbConversion.Params.Add('password=masterkey');

  dbConversion.Connected := True;
  trConversion.Active := True;

  lblPaso.Caption := Vacio;
  edtFacVDesde.Date := Date;
  edtFacVHasta.Date := Date;
  edtFiltroFVEntidad.Value := 0;
  pnlBtnConv.Caption := Vacio;
  edtTXTTUDesde.Date := EncodeDate(2007, 1, 1);
  edtTXTTUHasta.Date := EncodeDate(2008,12,31);

  odDatosCli.InitialDir := PasoExe;
  odDatosCre.InitialDir := PasoExe;
  odDatosCta.InitialDir := PasoExe;
  odDatosPag.InitialDir := PasoExe;
  odDatosPro.InitialDir := PasoExe;
  odDatosFac.InitialDir := PasoExe;
  mmSave.Lines.Clear;

  Fac_Ven.Close;
  D_Clientes.Close;
  Items_FV.Close;
  MovCred.Close;
  MovCtas.Close;
  PagCta.Close;
end;

procedure TfrmConversion.FormShow(Sender: TObject);
begin
  mmPorDonde.Clear;
end;

procedure TfrmConversion.DoPagoTarjeta(var DatosPago: TDatosPagos);
Const
  HayFin = 'Select '+
           '   C.NroCuota, '+
           '   C.FechaV, '+
           '   C.MontoCuota, '+
           '   C.FechaP, '+
           '   C.IdCliente, '+
           '   C.IdFactura as IdMovOrg, '+
           '   Max(R.FechaPago) as FecPago, '+
           '   Max(R.NroRecibo) as RecPago, '+
           '   Sum(R.MontoCuota) as Pagado '+
           'From TU_MovCta C '+
           'Left Outer Join TU_PagCta R '+
           '  on C.IdFactura = R.IdFactura And '+
           '     C.NroCuota = R.NroCuota '+
           'Where C.IdFactura = :IdFac '+
           'Group By C.NroCuota, C.FechaV, C.MontoCuota, '+
           '         C.FechaP, C.IdCliente, C.IdFactura ';
var
  i, j, CantMov, Pdas: SmallInt;
  IdMovT, NRec: Integer;
  UPag: TDate;
  q, c: TMDOQuery;
begin
  IdMovT := 0;
  try
    q := TMDOQuery.Create(nil);
    q.Database := qSaveMovTar.Database;
    q.Transaction := qSaveMovTar.Transaction;
    q.SQL.Add('Select Max(IdMov) as UltT ');
    q.SQL.Add('From MovTar ');
    q.Open;
    IdMovT := q.FieldByName('UltT').AsInteger;
    q.Close;
  finally
    q.Free;
  end;

  for i := 1 to DatosPago.PagosTarjeta.CantTarjetas do
  begin
    Inc(IdMovT);
    qSaveMovTar.Close;
    Pdas := 0;
    UPag := Ano_2000;
    with DatosPago.PagosTarjeta.Movimientos[i] do
    begin
      try
        c := TMDOQuery.Create(nil);
        c.Database := dbConversion;
        c.Transaction := trSave_TXT;
        c.SQL.Add('Select Max(NroCuota) as Pagadas, ');
        c.SQL.Add('       Max(FechaPago) as UltPago ');
        c.SQL.Add('From TU_PagCta ');
        c.SQL.Add('Where IdFactura =:IdFac ');
        c.ParamByName('IdFac').AsInteger := IdMovTar;
        c.Open;
        Pdas := c.FieldByName('Pagadas').AsInteger;
        UPag := c.FieldByName('UltPago').AsDateTime;
        c.Close;
      finally
        c.Free;
      end;

      // Grabar creditos
      qSaveMovTar.ParamByName('IdMov').AsInteger := IdMovT;
      qSaveMovTar.ParamByName('IdTarjeta').AsInteger := IdTarMut;
      qSaveMovTar.ParamByName('CodTar').AsString := NumTarjeta;
      qSaveMovTar.ParamByName('IdCliente').AsInteger := DatosPago.IdEntidad;
      qSaveMovTar.ParamByName('IdFactura').AsInteger := DatosPago.IdComprobante;
      qSaveMovTar.ParamByName('IdSucursal').AsInteger := DatosPago.IdSucursal;
      qSaveMovTar.ParamByName('Autorizacion').AsString := Autorizacion;
      qSaveMovTar.ParamByName('NroCuota').AsInteger := CantidadCuotas;
      qSaveMovTar.ParamByName('ImpCuota').AsFloat := MontoCuota;
      qSaveMovTar.ParamByName('IntCuota').AsCurrency := InteresCuota;
      qSaveMovTar.ParamByName('TotalOp').AsCurrency := TotalTarj;
      qSaveMovTar.ParamByName('FechaOp').AsDate := DatosPago.FechaOp;
      qSaveMovTar.ParamByName('Cupon').AsString := Cupon;
      qSaveMovTar.ParamByName('Lote').AsString := IntToStr(IdMovTar);
      qSaveMovTar.ParamByName('Estado').AsInteger := 0;
      qSaveMovTar.ParamByName('FechaResumen').AsDate := 0;
      qSaveMovTar.ParamByName('CuotaPag').AsInteger := Pdas;
      qSaveMovTar.ParamByName('State').AsInteger := 0;
      qSaveMovTar.ParamByName('UltimoPago').AsDate := UPag;
      qSaveMovTar.ParamByName('FechaIS').Clear;
      qSaveMovTar.ExecSQL;
      // Generar Movimiento de Cuotas
      if CantidadCuotas > 0 then
      begin
        if TipoEntidad = 1 then
        begin
          CantMov := 1;
          try
            c := TMDOQuery.Create(nil);
            c.Database := dbConversion;
            c.Transaction := trSave_TXT;
            c.SQL.Text := HayFin;
            c.ParamByName('IdFac').AsInteger := IdMovTar;
            c.Open;
            if not c.IsEmpty then
            begin
              try
                NRec := StrToInt(c.FieldByName('RecPago').AsString);
              except
                NRec := c.FieldByName('IdMovOrg').AsInteger;
              end;
              qSaveMovCta.ParamByName('IdMovCred').AsInteger := IdMovT;
              qSaveMovCta.ParamByName('NroCuota').AsInteger := CantMov;
              qSaveMovCta.ParamByName('IdFactura').AsInteger := DatosPago.IdComprobante;
              qSaveMovCta.ParamByName('IdSucursal').AsInteger := DatosPago.IdSucursal;
              qSaveMovCta.ParamByName('FechaV').AsDate := c.FieldByName('FechaV').AsDateTime;
              qSaveMovCta.ParamByName('MontoCuota').AsCurrency := c.FieldByName('MontoCuota').AsCurrency;
              qSaveMovCta.ParamByName('IdCliente').AsInteger := DatosPago.IdEntidad;
              if c.FieldByName('Pagado').AsCurrency > 0 then
              begin
                qSaveMovCta.ParamByName('NroRecPago').AsString := Format('%.4d-%.8d',[DatosPago.IdSucursal, NRec]);
                qSaveMovCta.ParamByName('FechaP').AsDate := q.FieldByName('FecPago').AsDateTime;
                qSaveMovCta.ParamByName('IdRecibo').AsInteger := c.FieldByName('IdMovOrg').AsInteger;
                qSaveMovCta.ParamByName('IdSucRec').AsInteger := c.FieldByName('IdCliente').AsInteger;
                qSaveMovCta.ParamByName('Estado').AsInteger := 1;
                qSaveMovCta.ParamByName('MontoDebito').AsCurrency := c.FieldByName('Pagado').AsCurrency;
                if Round(c.FieldByName('Pagado').AsCurrency) >= Round(c.FieldByName('MontoCuota').AsCurrency) then
                  qSaveMovCta.ParamByName('NroNotaDeb').AsString := 'PAGADA'
                else
                  qSaveMovCta.ParamByName('NroNotaDeb').AsString := 'ACUENTA'
              end
              else begin
                qSaveMovCta.ParamByName('NroRecPago').AsString := '';
                qSaveMovCta.ParamByName('FechaP').AsDate := q.FieldByName('FechaP').AsDateTime;
                qSaveMovCta.ParamByName('IdRecibo').AsInteger := 0;
                qSaveMovCta.ParamByName('IdSucRec').AsInteger := 0;
                qSaveMovCta.ParamByName('Estado').AsInteger := 0;
                qSaveMovCta.ParamByName('MontoDebito').AsCurrency := 0;
                qSaveMovCta.ParamByName('NroNotaDeb').AsString := 'IMPAGA';
              end;
              qSaveMovCta.ParamByName('FechaIS').Clear;
              qSaveMovCta.ExecSQL;
            end;
            c.Close;
          finally
            c.Free;
          end;
        end
        else begin
          CantMov := CantidadCuotas;
          try
            c := TMDOQuery.Create(nil);
            c.Database := dbConversion;
            c.Transaction := trSave_TXT;
            c.SQL.Text := HayFin;
            c.ParamByName('IdFac').AsInteger := IdMovTar;
            c.Open;
            if not c.IsEmpty then
            begin
              c.First;
              while not c.Eof do
              begin
                try
                  NRec := StrToInt(c.FieldByName('RecPago').AsString);
                except
                  NRec := c.FieldByName('IdMovOrg').AsInteger;
                end;
                qSaveMovCta.ParamByName('IdMovCred').AsInteger := IdMovT;
                qSaveMovCta.ParamByName('NroCuota').AsInteger := c.FieldByName('NroCuota').AsInteger;
                qSaveMovCta.ParamByName('IdFactura').AsInteger := DatosPago.IdComprobante;
                qSaveMovCta.ParamByName('IdSucursal').AsInteger := DatosPago.IdSucursal;
                qSaveMovCta.ParamByName('FechaV').AsDate := c.FieldByName('FechaV').AsDateTime;
                qSaveMovCta.ParamByName('MontoCuota').AsCurrency := c.FieldByName('MontoCuota').AsCurrency;
                qSaveMovCta.ParamByName('IdCliente').AsInteger := DatosPago.IdEntidad;
                if c.FieldByName('Pagado').AsCurrency > 0 then
                begin
                  qSaveMovCta.ParamByName('NroRecPago').AsString := Format('%.4d-%.8d',[DatosPago.IdSucursal, NRec]);
                  qSaveMovCta.ParamByName('FechaP').AsDate := q.FieldByName('FecPago').AsDateTime;
                  qSaveMovCta.ParamByName('IdRecibo').AsInteger := c.FieldByName('IdMovOrg').AsInteger;
                  qSaveMovCta.ParamByName('IdSucRec').AsInteger := c.FieldByName('IdCliente').AsInteger;
                  qSaveMovCta.ParamByName('Estado').AsInteger := 1;
                  qSaveMovCta.ParamByName('MontoDebito').AsCurrency := c.FieldByName('Pagado').AsCurrency;
                  if Round(c.FieldByName('Pagado').AsCurrency) >= Round(c.FieldByName('MontoCuota').AsCurrency) then
                    qSaveMovCta.ParamByName('NroNotaDeb').AsString := 'PAGADA'
                  else
                    qSaveMovCta.ParamByName('NroNotaDeb').AsString := 'ACUENTA'
                end
                else begin
                  qSaveMovCta.ParamByName('NroRecPago').AsString := '';
                  qSaveMovCta.ParamByName('FechaP').AsDate := q.FieldByName('FechaP').AsDateTime;
                  qSaveMovCta.ParamByName('IdRecibo').AsInteger := 0;
                  qSaveMovCta.ParamByName('IdSucRec').AsInteger := 0;
                  qSaveMovCta.ParamByName('Estado').AsInteger := 0;
                  qSaveMovCta.ParamByName('MontoDebito').AsCurrency := 0;
                  qSaveMovCta.ParamByName('NroNotaDeb').AsString := 'IMPAGA';
                end;
                qSaveMovCta.ParamByName('FechaIS').Clear;
                qSaveMovCta.ExecSQL;
                c.Next;
              end;
            end;
            c.Close;
          finally
            c.Free;
          end;
        end;
      end;
    end;
  end;
end;

function TfrmConversion.GrabarComprobanteVenta(var DatosPago: TDatosPagos; var Factura: TFactura; ItemsFactura: TBody_Fiscal): Boolean;
Const
  SaveFacV = 'Insert InTo '+
             'FacVen(IdFactura, IdSucursal, IdPuntoVenta, Sector, DiaHora, TipoFactura, Situacion, FechaF, '+
             '       FechaI, PuntoVta, NroFactura, CompRef, IdCompRef, Cliente, TipoIva, CantArtic, Impresa, '+
             '       IdMotNC, Bonificacion, Neto, Exento, NoComputables, IvaAlicuota1, IvaAlicuota2, Total, IdSubDep, '+
             '       Contado, Tarjeta, IdTarjeta, NroCtas, Tickets, CtaCte, Cheque, OtrosPagos, Senas, CobSenas, '+
             '       Usuario, Empleado, Dir_Entrega, State, FechaIS, EntContado) '+
             'Values(:IdFactura, :IdSucursal, :IdPuntoVenta, :Sector, :DiaHora, :TipoFactura, :Situacion, :FechaF, '+
             '       :FechaI, :PuntoVta, :NroFactura, :CompRef, :IdCompRef, :Cliente, :TipoIva, :CantArtic, :Impresa, '+
             '       :IdMotNC, :Bonificacion, :Neto, :Exento, :NoComputables, :IvaAlicuota1, :IvaAlicuota2, :Total, :IdSubDep, '+
             '       :Contado, :Tarjeta, :IdTarjeta, :NroCtas, :Tickets, :CtaCte, :Cheque, :OtrosPagos, :Senas, :CobSenas, '+
             '       :Usuario, :Empleado, :Dir_Entrega, :State, :FechaIS, :EntContado) ';

  SaveItmV = 'Insert InTo '+
             'ItemsFV(IdFactura, IdSucursal, IdPuntoVenta, IdItem, IdArticulo, Talle, SubDet, '+
             '        FechaF, ValorLista, NroCtas, Cantidad, Descuento, PrcBonificacion, PrecioNeto, PrecioFinal, '+
             '        PrecioTotal, Exento, ImpInt, IvaIn, PrecioCosto, ValorLista, IdAlcIva, AlicuotaIva, IdSubDep, '+
             '        IdAlcIB, AlcIB, IngBto, Oferta, DctoStk, State, EntContado) '+
             'Values(:IdFactura, :IdSucursal, :IdPuntoVenta, :IdItem, :IdArticulo, :Talle, :SubDet, '+
             '       :FechaF, :ValorLista, :NroCtas, :Cantidad, :Descuento, :PrcBonificacion, :PrecioNeto, :PrecioFinal, '+
             '       :PrecioTotal, :Exento, :ImpInt, :IvaIn, :PrecioCosto, :ValorLista, :IdAlcIva, :AlicuotaIva, :IdSubDep, '+
             '       :IdAlcIB, :AlcIB, :IngBto, :Oferta, :DctoStk, :State, :EntContado) ';

  SaveDetI = 'INSERT INTO ITEMSFV_DET '+
             ' (IDFACTURA, IDSUCURSAL, IDITEM, DETALLE1, DETALLE2, DETALLE3, DETALLE4) '+
             'VALUES '+
             ' (:IDFACTURA, :IDSUCURSAL, :IDITEM, :DETALLE1, :DETALLE2, :DETALLE3, :DETALLE4) ';

var
  UltFac, NumItems, TC: Integer;
  CoefDcto: Double;
  q: TMDOQuery;
begin
  CoefDcto := 0;
  TC := 1;
  Result := False;
  if Factura.TipoFactura in [CreA, CreB, CreC, CreditoAjuste] then TC := -1;

  try
    UltFac := 0;
    q := TMDOQuery.Create(nil);
    q.Database := qSaveComp.Database;
    q.Transaction := qSaveComp.Transaction;
    q.SQL.Add('Select Max(IdFactura) as Ultimo ');
    q.SQL.Add('From FacVen ');
    q.SQL.Add('Where IdSucursal =:IdSuc ');
    q.ParamByName('IdSuc').AsInteger := IdBranch;
    q.Open;
    UltFac := q.FieldByName('Ultimo').AsInteger + 1;
    q.Close;
  finally
    q.Free;
  end;

  DatosPago.IdComprobante := UltFac;
  Factura.IdFactura := DatosPago.IdComprobante;
  Factura.IdMotivo := DatosPago.IdMotivo;
  Factura.Contado := DatosPago.PagosContado;
  Factura.Tarjeta := DatosPago.PagosTarjeta.TotalTarjeta;
  Factura.IdTarjeta := DatosPago.IdTarjeta;
  Factura.CantCuotas := DatosPago.CantidadCuotas;
  Factura.BonosTkt := DatosPago.PagosBonosTk;
  Factura.CtaCte := DatosPago.PagosCtaCte.TotalCtaCte;
  Factura.ChequeTer := DatosPago.PagosValores.TotalValores;
  Factura.Descuento := -DatosPago.PagosDcto;

  qSaveComp.Close;
  qSaveComp.Sql.Clear;
  qSaveComp.SQL.Text := SaveFacV;
  qSaveComp.ParamByName('IdFactura').AsInteger := UltFac;
  qSaveComp.ParamByName('IdSucursal').AsInteger := IdBranch;
  qSaveComp.ParamByName('IdPuntoVenta').AsInteger := Factura.IdPuntoVenta;
  qSaveComp.ParamByName('Sector').AsInteger := 0;
  qSaveComp.ParamByName('DiaHora').AsDateTime := Now;
  qSaveComp.ParamByName('TipoFactura').AsInteger := Factura.TipoFactura;
  qSaveComp.ParamByName('FechaF').AsDate := Factura.FechaF;
  qSaveComp.ParamByName('PuntoVta').AsInteger := StrToInt(Copy(Factura.NroFactura, 1, 4));
  qSaveComp.ParamByName('NroFactura').AsString := Factura.NroFactura;
  qSaveComp.ParamByName('CompRef').AsString := Factura.CompRef;
  qSaveComp.ParamByName('IdCompRef').AsInteger := Factura.IdCompRef;
  qSaveComp.ParamByName('Cliente').AsInteger := Factura.Entidad;
  qSaveComp.ParamByName('TipoIva').AsInteger := Factura.TipoIva;
  qSaveComp.ParamByName('CantArtic').AsInteger := Factura.CantArtic;
  qSaveComp.ParamByName('IdMotNC').AsInteger := Factura.IdMotivo;
  qSaveComp.ParamByName('Bonificacion').AsCurrency := TC*ABS((Factura.Descuento - ((Factura.Descuento * CoefDcto) / 100)));
  qSaveComp.ParamByName('Neto').AsCurrency := TC*ABS((Factura.Neto-((Factura.Neto * CoefDcto) / 100)));
  qSaveComp.ParamByName('Exento').AsCurrency := TC*ABS((Factura.Exento-((Factura.Exento * CoefDcto) / 100)));
  qSaveComp.ParamByName('NoComputables').AsCurrency:= TC*ABS((Factura.NoComputables-((Factura.NoComputables * CoefDcto) / 100)));
  qSaveComp.ParamByName('IvaAlicuota1').AsCurrency := TC*ABS((Factura.IvaAlicuota1-((Factura.IvaAlicuota1 * CoefDcto) / 100)));
  qSaveComp.ParamByName('IvaAlicuota2').AsCurrency := TC*ABS((Factura.IvaAlicuota2-((Factura.IvaAlicuota2 * CoefDcto) / 100)));
  qSaveComp.ParamByName('Total').AsCurrency := TC*ABS(Factura.Total);
  qSaveComp.ParamByName('IdSubDep').AsInteger := Factura.IdSubDep;
  qSaveComp.ParamByName('Empleado').AsInteger := Factura.Empleado;

  if Factura.TipoFactura in [CreA, CreB, CreC, CreditoAjuste] then
  begin
    qSaveComp.ParamByName('Situacion').AsInteger := DatosPago.OpcionNC;
    qSaveComp.ParamByName('IdTarjeta').AsInteger := Factura.IdTarjeta;
    qSaveComp.ParamByName('Tarjeta').AsCurrency := TC*ABS(DatosPago.PagosTarjeta.TotalTarjeta);
    qSaveComp.ParamByName('NroCtas').AsInteger := Factura.CantCuotas;
    qSaveComp.ParamByName('Contado').AsCurrency := TC*ABS(DatosPago.PagosContado);
    qSaveComp.ParamByName('Tickets').AsCurrency:= TC*ABS(DatosPago.PagosBonosTk);
    qSaveComp.ParamByName('Cheque').AsCurrency := TC*ABS(DatosPago.PagosValores.TotalValores);
    qSaveComp.ParamByName('OtrosPagos').AsCurrency := TC*ABS(DatosPago.SdoAFavor);
    qSaveComp.ParamByName('CobSenas').AsCurrency := TC*ABS(DatosPago.PagosSena);
    qSaveComp.ParamByName('CtaCte').AsCurrency := 0;
    qSaveComp.ParamByName('Senas').AsCurrency := 0;
  end
  else begin
    qSaveComp.ParamByName('Situacion').AsInteger := Factura.Situacion;
    qSaveComp.ParamByName('IdTarjeta').AsInteger := Factura.IdTarjeta;
    qSaveComp.ParamByName('Tarjeta').AsCurrency := DatosPago.PagosTarjeta.TotalTarjeta;
    qSaveComp.ParamByName('NroCtas').AsInteger := Factura.CantCuotas;
    qSaveComp.ParamByName('Contado').AsCurrency := DatosPago.PagosContado;
    qSaveComp.ParamByName('Tickets').AsCurrency:= DatosPago.PagosBonosTk;
    qSaveComp.ParamByName('Cheque').AsCurrency := DatosPago.PagosValores.TotalValores;
    if ABS(DatosPago.PagosNCred.MtoNotaCre) > 0 then
      qSaveComp.ParamByName('OtrosPagos').AsCurrency := ABS(DatosPago.PagosNCred.MtoNotaCre) - DatosPago.SdoAFavor
    else
      qSaveComp.ParamByName('OtrosPagos').AsCurrency := DatosPago.SdoAFavor;
    qSaveComp.ParamByName('CobSenas').AsCurrency := DatosPago.PagosSena;
    qSaveComp.ParamByName('CtaCte').AsCurrency := 0;
    qSaveComp.ParamByName('Senas').AsCurrency := 0;
  end;
  qSaveComp.ParamByName('Usuario').AsInteger := Usuario;
  qSaveComp.ParamByName('Dir_Entrega').AsString := Factura.DomicilioE;
  qSaveComp.ParamByName('State').AsInteger := 0;
  qSaveComp.ParamByName('FechaIS').Clear;
  qSaveComp.ParamByName('FechaI').AsDate := Factura.FechaF;
  qSaveComp.ParamByName('Impresa').AsInteger := Impresa;
  qSaveComp.ParamByName('EntContado').AsCurrency:= Factura.EntContado;

  try
    if not trSave_TXT.InTransaction then
      trSave_TXT.StartTransaction;
    try
      qSaveComp.ExecSQL; //Grabar
    except
      on E:Exception do
        raise EUsuario.Create('El Comprobante Nº '+Factura.NroFactura+' no se puede Grabar '+E.Message);
    end;

    try
      NumItems := 1;
      while NumItems <= Factura.CantArtic do
      begin
        qSaveComp.Close;
        qSaveComp.Sql.Clear;
        qSaveComp.SQL.Text := SaveItmV;
        if ItemsFactura[NumItems].IdProducto > 0 then
        begin
          with ItemsFactura[NumItems] do
          begin
            qSaveComp.ParamByName('IdFactura').AsInteger := Factura.IdFactura;
            qSaveComp.ParamByName('IdSucursal').AsInteger := Factura.IdSucursal;
            qSaveComp.ParamByName('IdPuntoVenta').AsInteger := Factura.IdPuntoVenta;
            qSaveComp.ParamByName('IdItem').AsInteger := NumItems;
            qSaveComp.ParamByName('IdArticulo').AsInteger := IdProducto;
            qSaveComp.ParamByName('Talle').AsInteger := Talle;
            qSaveComp.ParamByName('SubDet').AsString := SubDet;
            qSaveComp.ParamByName('FechaF').AsDate := Factura.FechaF;
            qSaveComp.ParamByName('NroCtas').AsInteger := Factura.CantCuotas;
            qSaveComp.ParamByName('Cantidad').AsFloat := TC*ABS(Cantidad);
            qSaveComp.ParamByName('Descuento').AsCurrency := TC*ABS(Descuento - ((Descuento * CoefDcto) / 100));
            qSaveComp.ParamByName('PrcBonificacion').AsCurrency := TC*ABS(Bonificacion - ((Bonificacion * CoefDcto) / 100));
            qSaveComp.ParamByName('PrecioNeto').AsCurrency :=  TC*ABS(PrecioNeto - ((PrecioNeto * CoefDcto) / 100));
            qSaveComp.ParamByName('PrecioFinal').AsCurrency := TC*ABS(PrecioFinal - ((PrecioFinal * CoefDcto) / 100));
            qSaveComp.ParamByName('PrecioTotal').AsCurrency := TC*ABS(PrecioTotal - ((PrecioTotal * CoefDcto) / 100));
            qSaveComp.ParamByName('Exento').AsCurrency := TC*ABS(Exento - ((Exento * CoefDcto) / 100));
            qSaveComp.ParamByName('ImpInt').AsCurrency := TC*ABS(NoComputable - ((NoComputable * CoefDcto) / 100));
            qSaveComp.ParamByName('IvaIn').AsCurrency := TC*ABS(MtoIva - ((MtoIva * CoefDcto) / 100));
            qSaveComp.ParamByName('PrecioCosto').AsCurrency := TC*ABS(PrecioCosto);
            qSaveComp.ParamByName('ValorLista').AsCurrency := TC*ABS(PrecioLista);
            qSaveComp.ParamByName('IdAlcIva').AsInteger := IdAlcIva;
            qSaveComp.ParamByName('AlicuotaIva').AsFloat := AlicuotaIva;
            qSaveComp.ParamByName('IdSubDep').AsInteger := Factura.IdSubDep;
            qSaveComp.ParamByName('IdAlcIB').AsInteger := IdAlcIB;
            qSaveComp.ParamByName('AlcIB').AsFloat := AlicuotaIB;
            qSaveComp.ParamByName('IngBto').AsCurrency:= TC*ABS(IngBto - ((IngBto * CoefDcto) / 100));
            qSaveComp.ParamByName('Oferta').AsInteger := Falso;
            qSaveComp.ParamByName('DctoStk').AsInteger := Verdadero;
            qSaveComp.ParamByName('State').AsInteger := Falso;
            qSaveComp.ParamByName('EntContado').AsCurrency:= EntContado;
            // Grabar Items
            qSaveComp.ExecSQL;
            if DetalleExtendido then
            begin
              try
                q := TMDOQuery.Create(nil);
                q.Database := qSaveComp.Database;
                q.Transaction := qSaveComp.Transaction;
                q.SQL.Text := SaveDetI;
                q.ParamByName('IDFACTURA').AsInteger := Factura.IdFactura;
                q.ParamByName('IDSUCURSAL').AsInteger:= Factura.IdSucursal;
                q.ParamByName('IDITEM').AsInteger  := NumItems;
                q.ParamByName('DETALLE1').AsString := Trim(DetalleExt[1]);
                q.ParamByName('DETALLE2').AsString := Trim(DetalleExt[2]);
                q.ParamByName('DETALLE3').AsString := Trim(DetalleExt[3]);
                q.ParamByName('DETALLE4').AsString := Trim(DetalleExt[4]);
                q.ExecSQL;
              finally
                q.Free;
              end;
            end;
          end;
        end;
        Inc(NumItems);
      end;
    except
      on E:Exception do
      begin
        mmSave.Lines.Add(Factura.NroFactura+' no se pueden Grabar. '+E.Message+' '+TimeToStr(Time));
        Application.ProcessMessages;
      end;
    end;

    //Registrar tipos de Pagos
    if Factura.TipoFactura in [CreA, CreB, CreC, CreditoAjuste] then
    begin
      try
        if Tarjeta in DatosPago.PagosRealizados then
          DoPagoTarjeta(DatosPago);
      except
        on E:Exception do
        begin
          mmSave.Lines.Add('La anulación de las tarjetas '+Factura.NroFactura+' no se pueden Grabar. '+E.Message+' '+TimeToStr(Time));
          Application.ProcessMessages;
        end;
      end;
    end
    else begin
      try // Registración de pagos con Tarjetas / Mutuales
        if Tarjeta in DatosPago.PagosRealizados then
          DoPagoTarjeta(DatosPago);
      except
        on E:Exception do
        begin
          mmSave.Lines.Add('El pago de las tarjetas '+Factura.NroFactura+' no se pueden Grabar. '+E.Message+' '+TimeToStr(Time));
          Application.ProcessMessages;
        end;
      end;
    end;
    trSave_TXT.Commit;
    Result := True;
  except
    on E:Exception do
    begin
      trSave_TXT.Rollback;
      Result := False;
    end;
  end;
end;

procedure TfrmConversion.ItemsVTipoFactGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  try
    Text := GetText_Comprobante(ItemsVTipoFact.AsInteger, False);
  except
    Text := ItemsVTipoFact.AsString;
  end;
end;

procedure TfrmConversion.PagosTDeudaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  A: String;
begin
  try
    A := PagosTDeuda.AsString;
    Case UpCase(A[1]) of
      'I': Text := 'Incobrable';
      'C': Text := 'Cta. Cte.';
      'D': Text := 'Documentada';
      'L': Text := 'Legales';
      'M': Text := 'Mutuales';
      'T': Text := 'Tarjetas';
      'P': Text := 'Disagro';
      'V': Text := 'Cassab Ahun';
      'R': Text := 'Dismar Rocal';
      'Z': Text := 'Service';
       else Text := A;
    End;
  except
    Text := PagosTDeuda.AsString;
  end;
end;

procedure TfrmConversion.pcConversionesClose(Sender: TObject; var AllowClose: Boolean);
begin
  close;
end;

procedure TfrmConversion.SaveCliClick(Sender: TObject);
var
  CantOp: Integer;
begin
  if not DClientes.IsEmpty then
  begin
    mmSave.Lines.Add('Procesando Clientes '+TimeToStr(Time));
    Application.ProcessMessages;
    DClientes.First;
    D_Clientes.Open;
    CantOp := 1;
    While not DClientes.Eof do
    begin
      if CantOp = 1 then
      begin
        if not trSave_TXT.InTransaction then
           trSave_TXT.StartTransaction;
      end;
      D_Clientes.Append;
      D_ClientesIDSUCURSAL.AsInteger := IdBranch;
      D_ClientesIDCLIENTE.AsInteger := DClientesIdCliente.AsInteger;
      D_ClientesNOMBRE.AsString := DClientesNOMBRE.AsString;
      D_ClientesDIRECCION.AsString := DClientesDIRECCION.AsString;
      D_ClientesLOCALIDAD.AsString := DClientesLOCALIDAD.AsString;
      D_ClientesPROVINCIA.AsString := DClientesPROVINCIA.AsString;
      D_ClientesCODPOSTAL.AsString := DClientesCODPOSTAL.AsString;
      D_ClientesTELEFONOS.AsString := DClientesTELEFONOS.AsString;
      D_ClientesTIPOIVA.AsInteger := DClientesTIPOIVA.AsInteger;
      D_ClientesTIPODOC.AsInteger := DClientesTIPODOC.AsInteger;
      D_ClientesDOCUMENTO.AsString := DClientesDOCUMENTO.AsString;
      D_ClientesINGBRUTOS.AsString := DClientesINGBRUTOS.AsString;
      D_Clientes.Post;
      Inc(CantOP);
      if CantOp = 500 then
      begin
        mmSave.Lines.Add('Grabación Clientes '+TimeToStr(Time));
        CantOp := 1;
        try
          trSave_TXT.Commit;
        except
          trSave_TXT.Rollback;
          raise;
        end;
      end;
      DClientes.Next;
    end;
    mmSave.Lines.Add('Terminado Clientes '+TimeToStr(Time));
    Application.ProcessMessages;
    if trSave_TXT.InTransaction then
    begin
      try
        trSave_TXT.Commit;
      except
        trSave_TXT.Rollback;
        raise;
      end;
    end;
  end;
end;

procedure TfrmConversion.SaveCre_DesdeTxt(Con_Show: Boolean);
var
  a: String;
  CantOp, CantTo : Integer;
begin
  if not Creditos.IsEmpty then
  begin
    If Con_Show then
    begin
      mmSave.Lines.Add('Procesando Creditos '+TimeToStr(Time));
      Application.ProcessMessages;
    end;
    MovCred.Open;
    Creditos.First;
    CantOp := 1;
    CantTo := 0;
    While not Creditos.Eof do
    begin
      if CantOp = 1000 then
      begin
        CantTo := CantTo + CantOp;
        If Con_Show then
        begin
          mmSave.Lines.Add('G.Creditos '+TimeToStr(Time)+' '+IntToStr(CantTo));
          Application.ProcessMessages;
        end;
        CantOp := 1;
        try
          trConversion.Commit;
        except
          trConversion.Rollback;
          raise;
        end;
      end;
      if CantOp = 1 then
      begin
        if not trConversion.InTransaction then
           trConversion.StartTransaction;
      end;
      try
        if not MovCred.Active then
          MovCred.Open;
        MovCred.Append;
        MovCredIDMOV.AsInteger := CreditosIdRecord.AsInteger;
        MovCredIDSUCURSAL.AsInteger := CreditosIdSucursal.AsInteger;
        MovCredIDCLIENTE.AsInteger := CreditosIdCliente.AsInteger;
        MovCredIDFACTURA.AsInteger := CreditosIdFactura.AsInteger;
        try
          a := Trim(CreditosTDeuda.AsString);
          Case UpCase(a[1]) of
            'I' : MovCredIDTARJETA.AsInteger := 33; //''Incobrable';
            'C' : MovCredIDTARJETA.AsInteger :=  1; //'Cta. Cte.';
            'D' : MovCredIDTARJETA.AsInteger :=  1; //''Documentada';
            'L' : MovCredIDTARJETA.AsInteger := 44; //''Legales';
            'M' : MovCredIDTARJETA.AsInteger :=  2; //''Mutuales';
            'T' : MovCredIDTARJETA.AsInteger :=  3; //''Tarjetas';
            'P' : MovCredIDTARJETA.AsInteger :=  1; //''Disagro';
            'V' : MovCredIDTARJETA.AsInteger :=  1; //''Cassab Ahun';
            'R' : MovCredIDTARJETA.AsInteger :=  1; //''Dismar Rocal';
            'Z' : MovCredIDTARJETA.AsInteger := 55; //''Service';
             else MovCredIDTARJETA.AsInteger := 99;
          End;
        except
          MovCredIDTARJETA.AsInteger := 99;
        end;
        MovCredNOMBRE.AsString := CreditosNomCli.AsString;
        MovCredORDEN.AsString := CreditosNombreAfi.AsString;
        MovCredCODTAR.AsString := CreditosNroAfiliado.AsString;
        MovCredFECHAOP.AsDateTime := CreditosFechaF.AsDateTime;
        MovCredNROCUOTA.AsInteger := CreditosCuotas.AsInteger;
        try
          MovCredIMPCUOTA.AsCurrency := CreditosMonto.AsCurrency / CreditosCuotas.AsInteger;
        except
          MovCredIMPCUOTA.AsCurrency := CreditosMonto.AsCurrency;
        end;
        MovCredTOTALOP.AsCurrency := CreditosMonto.AsCurrency;
        MovCredESTADO.AsInteger := 0;
        MovCredCUOTASPAGADAS.AsInteger := 0;
        MovCred.Post;
        Inc(CantOp);
      except
        on E: exception do
        begin
          If Con_Show then
            mmSave.Lines.Add('Creditos'+E.Message+'  '+TimeToStr(Time));
        end;
      end;
      Creditos.Next;
    end;
    If Con_Show then
    begin
      mmSave.Lines.Add('Terminado Creditos '+TimeToStr(Time));
      Application.ProcessMessages;
    end;
    if trConversion.InTransaction then
    begin
      try
        trConversion.Commit;
      except
        on E:Exception do
        begin
          If Con_Show then
            mmSave.Lines.Add('Creditos '+E.Message+'  '+TimeToStr(Time));
          trConversion.Rollback;
        end;
      end;
    end;

    if not Cuotas.IsEmpty then
    begin
      If Con_Show then
      begin
        mmSave.Lines.Add('Proc. Cuotas '+TimeToStr(Time));
        Application.ProcessMessages;
      end;
      MovCtas.Open;
      Cuotas.First;
      CantOp := 1;
      CantTo := 0;
      while not Cuotas.Eof do
      begin
        if CantOp = 100 then
        begin
          CantTo := CantTo + CantOp;
          If Con_Show then
          begin
            mmSave.Lines.Add('G.Cuotas '+TimeToStr(Time)+' '+IntToStr(CantTo));
            Application.ProcessMessages;
          end;
          CantOp := 1;
          try
            trConversion.Commit;
          except
            trConversion.Rollback;
            raise;
          end;
        end;
        if CantOp = 1 then
        begin
          if not trConversion.InTransaction then
             trConversion.StartTransaction;
        end;
        try
          if not MovCtas.Active then
            MovCtas.Open;
          MovCtas.Append;
          MovCtasIdSucursal.AsInteger:= CuotasIDSUCURSAL.AsInteger;
          MovCtasIdFactura.AsInteger := CuotasIDFACTURA.AsInteger;
          MovCtasIdCliente.AsInteger := CuotasIDCLIENTE.AsInteger;
          MovCtasIDMOVCRED.AsInteger := 0;
          MovCtasNROCUOTA.AsInteger := CuotasNroCuota.AsInteger;
          MovCtasFECHAV.AsDateTime := CuotasVencimiento.AsDateTime;
          MovCtasMONTOCUOTA.AsCurrency := CuotasMtoCuota.AsCurrency;
          MovCtasFECHAP.AsDateTime := CuotasUltimoPago.AsCurrency;
          MovCtasIDRECIBO.AsInteger := 0;
          MovCtasIDSUCREC.AsInteger := 0;
          MovCtas.Post;
          Inc(CantOp);
        except
          on E: exception do
          begin
            If Con_Show then
              mmSave.Lines.Add('Cuotas '+E.Message+'  '+TimeToStr(Time));
          end;
        end;
        Cuotas.Next;
      end;
      if trConversion.InTransaction then
      begin
        try
          trConversion.Commit;
        except
          on E: exception do
          begin
            If Con_Show then
              mmSave.Lines.Add('Cuotas '+E.Message+'  '+TimeToStr(Time));
            trConversion.Rollback;
          end;
        end;
      end;
      If Con_Show then
      begin
        mmSave.Lines.Add('Terminado Cuotas '+TimeToStr(Time));
        Application.ProcessMessages;
      end;
    end;

    if not Pagos.IsEmpty then
    begin
      If Con_Show then
      begin
        mmSave.Lines.Add('Procesando Pagos '+TimeToStr(Time));
        Application.ProcessMessages;
      end;
      PagCta.Open;
      Pagos.First;
      CantOp := 1;
      CantTo := 0;
      while not Pagos.Eof do
      begin
        if CantOp = 100 then
        begin
          CantTo := CantTo + CantOp;
          If Con_Show then
          begin
            mmSave.Lines.Add('G. Pagos '+TimeToStr(Time)+' '+IntToStr(CantTo));
            Application.ProcessMessages;
          end;
          CantOp := 1;
          try
            trConversion.Commit;
          except
            trConversion.Rollback;
            raise;
          end;
        end;
        if CantOp = 1 then
        begin
          if not trConversion.InTransaction then
             trConversion.StartTransaction;
        end;
        try
          if not PagCta.Active then
            PagCta.Open;
          PagCta.Append;
          PagCtaIDMOVCRED.AsInteger := 0;
          PagCtaNROCUOTA.AsInteger := PagosNroCuota.AsInteger;
          PagCtaIDFACTURA.AsInteger := PagosIdFactura.AsInteger;
          PagCtaIDSUCURSAL.AsInteger := PagosIdSucursal.AsInteger;
          PagCtaMONTOCUOTA.AsCurrency := PagosMtoCuota.AsCurrency;
          PagCtaIDCLIENTE.AsInteger := PagosIdCliente.AsInteger;
          PagCtaFECHAPAGO.AsDateTime := PagosFechaPago.AsDateTime;
          PagCtaIDRECIBO.AsInteger := 0;
          PagCtaIDSUCREC.AsInteger := 0;
          PagCtaNRORECIBO.AsString := PagosNroRecibo.AsString;
          PagCta.Post;
          Inc(CantOp);
        except
          on E: exception do
          begin
            If Con_Show then
              mmSave.Lines.Add('Pagos '+E.Message+' '+TimeToStr(Time));
          end;
        end;
        Pagos.Next;
      end;
      if trConversion.InTransaction then
      begin
        try
          trConversion.Commit;
        except
          on E: exception do
          begin
            If Con_Show then
              mmSave.Lines.Add('Pagos '+E.Message+' '+TimeToStr(Time));
            trConversion.Rollback;
          end;
        end;
      end;
    end;
    If Con_Show then
    begin
      mmSave.Lines.Add('Terminado Pagos '+TimeToStr(Time));
      Application.ProcessMessages;
    end;
  end;
end;

procedure TfrmConversion.SaveFac_DesdeTxt(Con_Show: Boolean);
var
  CantOp, CantTo: Integer;
begin
  mmSave.Lines.Clear;
  if not FacV.IsEmpty then
  begin
    If Con_Show then
    begin
      mmSave.Lines.Add('P.Facturas '+TimeToStr(Time));
      Application.ProcessMessages;
    end;
    FacV.First;
    Fac_Ven.Open;
    CantOp := 1;
    CantTo := 0;
    While not FacV.Eof do
    begin
      if FacVTipoFact.AsInteger in [FacA, FacB, CreA, CreB, DebA, DebB] then
      begin
        if CantOp = 1000 then
        begin
          CantTo := CantTo + CantOp;
          If Con_Show then
          begin
            mmSave.Lines.Add('G.Facturas '+TimeToStr(Time)+' '+IntToStr(CantTo));
            Application.ProcessMessages;
          end;
          CantOp := 1;
          try
            trConversion.Commit;
          except
            trConversion.Rollback;
            raise;
          end;
        end;
        if CantOp = 1 then
        begin
          if not trConversion.InTransaction then
             trConversion.StartTransaction;
        end;
        try
          if not Fac_Ven.Active then
            Fac_Ven.Open;
          Fac_Ven.Append;
          Fac_VenIDFACTURA.AsInteger := FacVIdFactura.AsInteger;
          Fac_VenIDSUCURSAL.AsInteger := FacVIdSucursal.AsInteger;
          Fac_VenIDPUNTOVENTA.AsInteger := FacVIdPuntoVenta.AsInteger;
          Fac_VenTIPOFACTURA.AsInteger := FacVTipoFact.AsInteger;
          Fac_VenFECHAF.AsDateTime := FacVFechaF.AsDateTime;
          Fac_VenNROFACTURA.AsString := FacVNroFactura.AsString;
          Fac_VenCLIENTE.AsInteger := FacVIdCliente.AsInteger;
          Fac_VenTIPOIVA.AsInteger := FacVTIvaCli.AsInteger;
          Fac_VenTDOCCLI.AsiNTEGER := FacVTDocCli.AsInteger;
          Fac_VenNOMBRE.AsString := FacVNombre.AsString;
          Fac_VenDOMICILIO.AsString := FacVDomicilio.AsString;
          Fac_VenLOCALIDAD.AsString := FacVLocalidad.AsString;
          Fac_VenDOCUMENTO.AsString := FacVDocumento.AsString;
          Fac_VenTOTAL.AsCurrency := FacVTotalF.AsCurrency;
          Fac_VenTARJETA.AsCurrency := 0;
          Fac_VenIDTARJETA.AsInteger:= 0;
          Fac_VenNROCTAS.AsInteger  := 0;
          Fac_VenCONTADO.AsCurrency := 0;

          if FacVCod1.AsInteger = 1 then
            Fac_VenCONTADO.AsCurrency := FacVImp1.AsCurrency;
          if FacVCod2.AsInteger in [3,96,97,99] then
          begin
            Fac_VenTARJETA.AsCurrency := FacVImp2.AsCurrency;
            Fac_VenIDTARJETA.AsInteger:= 1;
            Fac_VenNROCTAS.AsInteger := 0;
          end
          else begin
            if FacVCod2.AsInteger in [4, 5, 6, 7, 8, 9,10,
                                     11,12,13,14,15,16,17,
                                     18,19,21,23] then
            begin
              Fac_VenTARJETA.AsCurrency := FacVImp2.AsCurrency;
              Fac_VenIdTARJETA.AsInteger:= FacVCod2.AsInteger;
              Fac_VenNROCTAS.AsInteger := 0;
            end
            else begin
              if FacVCod3.AsInteger in [4, 5, 6, 7, 8, 9,10,
                                       11,12,13,14,15,16,17,
                                       18,19,21,23] then
              begin
                Fac_VenTARJETA.AsCurrency := FacVImp3.AsCurrency;
                Fac_VenIdTARJETA.AsInteger:= FacVCod3.AsInteger;
                Fac_VenNROCTAS.AsInteger := 0;
              end
              else begin
                Fac_VenTARJETA.AsCurrency := 0;
                Fac_VenIdTARJETA.AsInteger:= 0;
                Fac_VenNROCTAS.AsInteger := 0;
              end;
            end;
          end;
          Fac_VenCTACTE.AsCurrency := 0;
          Fac_VenTICKETS.AsCurrency:= 0;
          Fac_VenCHEQUE.AsCurrency := 0;
          Fac_VenOTROSPAGOS.AsCurrency := 0;
          Fac_VenEMPLEADO.AsInteger:= FacVIdEmpleado.AsInteger;
          Fac_VenSTATE.AsInteger := 0;
          Fac_VenPROCESADO.AsInteger := 0;
          Fac_VenBON_REC.AsFloat := FacVBonRec.AsFloat;
          Fac_Ven.Post;
          Inc(CantOp);
        except
          on E: exception do
          begin
            If Con_Show then
              mmSave.Lines.Add('Error FacV '+E.Message+' '+TimeToStr(Time));
          end;
        end;
      end;
      FacV.Next;
    end;

    if trConversion.InTransaction then
    begin
      try
        trConversion.Commit;
      except
        on E: exception do
        begin
          If Con_Show then
            mmSave.Lines.Add('Error FacV '+E.Message+' '+TimeToStr(Time));
          trConversion.Rollback;
        end;
      end;
    end;

    If Con_Show then
    begin
      mmSave.Lines.Add('Terminado Facturas '+TimeToStr(Time));
      Application.ProcessMessages;
    end;

    if not ItemsV.IsEmpty then
    begin
      If Con_Show then
      begin
        mmSave.Lines.Add('Procesando Items '+TimeToStr(Time));
        Application.ProcessMessages;
      end;
      Items_FV.Open;
      ItemsV.First;
      CantOp := 1;
      CantTo := 0;
      while not ItemsV.Eof do
      begin
        if ItemsVTipoFact.AsInteger in [FacA, FacB, CreA, CreB, DebA, DebB] then
        begin
          CantTo := CantTo + CantOp;
          if CantOp = 100 then
          begin
            If Con_Show then
            begin
              mmSave.Lines.Add('G.ItemsFV '+TimeToStr(Time)+' '+IntToStr(CantTo));
              Application.ProcessMessages;
            end;
            CantOp := 1;
            try
              trConversion.Commit;
            except
              trConversion.Rollback;
              raise;
            end;
          end;
          if CantOp = 1 then
          begin
            if not trConversion.InTransaction then
               trConversion.StartTransaction;
          end;
          if not Items_FV.Active then
            Items_FV.Open;
          Items_FV.Append;
          Items_FVIDFACTURA.AsInteger := ItemsVIdFactura.AsInteger;
          Items_FVIDSUCURSAL.AsInteger := ItemsVIdSucursal.AsInteger;
          Items_FVIDPUNTOVENTA.AsInteger := ItemsVIdPuntoVenta.AsInteger;
          Items_FVIDITEM.AsInteger := ItemsVIdItem.AsInteger;
          Items_FVTIPOFACTURA.AsInteger := ItemsVTipoFact.AsInteger;
          Items_FVIDARTICULO.AsInteger := ItemsVIdArticulo.AsInteger;
          Items_FVCANTIDAD.AsFloat := ItemsVCantidad.AsFloat;
          Items_FVDETALLE_ART.AsString := ItemsVDescripcion.AsString;
          Items_FVPRECIONETO.AsCurrency := ItemsVPrecioUnitario.AsCurrency;
          Items_FVPRECIOFINAL.AsCurrency := ItemsVPrecioUnitario.AsCurrency;
          Items_FVPRECIOTOTAL.AsCurrency := ItemsVPrecioUnitario.AsCurrency;
          Items_FVVALORLISTA.AsCurrency := ItemsVPrecioUnitario.AsCurrency;
          Items_FVBON_REC.AsFloat := ItemsVBonif.AsFloat;
          Items_FVIVAIN.AsCurrency := 0;
          Items_FVIDALCIVA.AsInteger := 0;
          Items_FVALICUOTAIVA.AsFloat := 0;

          if ItemsVImpuesto1.AsCurrency <> 0 then
          begin
            Items_FVIVAIN.AsCurrency := ItemsVImpuesto1.AsCurrency;
            Items_FVIDALCIVA.AsInteger := 1;
            Items_FVALICUOTAIVA.AsFloat := 21;
          end
          else begin
            if ItemsVImpuesto3.AsCurrency <> 0 then
            begin
              Items_FVIVAIN.AsCurrency := ItemsVImpuesto3.AsCurrency;
              Items_FVIDALCIVA.AsInteger := 2;
              Items_FVALICUOTAIVA.AsFloat := 10.5;
            end
            else begin
              Items_FVIVAIN.AsCurrency := 0;
              Items_FVIDALCIVA.AsInteger := 0;
              Items_FVALICUOTAIVA.AsFloat := 0;
            end;
          end;
          Items_FV.Post;
          Inc(CantOp);
        end;
        ItemsV.Next;
      end;
      if trConversion.InTransaction then
      begin
        try
          trConversion.Commit;
        except
          on E: exception do
          begin
            If Con_Show then
              mmSave.Lines.Add('Error Items FV '+E.Message+' '+TimeToStr(Time));
            trConversion.Rollback;
          end;
        end;
      end;
      If Con_Show then
      begin
        mmSave.Lines.Add('Terminado Items '+TimeToStr(Time));
        Application.ProcessMessages;
      end;
    end;
  end
  else begin
    raise EUsuario.Create('Txt´s aun no leidos');
  end;
  If Con_Show then
  begin
    mmSave.Lines.Add('Terminado Facturación '+TimeToStr(Time));
    Application.ProcessMessages;
  end;
end;

procedure TfrmConversion.btnDesFiltrarClick(Sender: TObject);
begin
  try
    FacV.Filter := '';
    FacV.Filtered := True;
  finally
    FacV.Filtered := False;
  end;
end;

procedure TfrmConversion.SaveFacClick(Sender: TObject);
begin
  SaveFac_DesdeTxt(True);
end;

procedure TfrmConversion.SaveCreClick(Sender: TObject);
begin
  SaveCre_DesdeTxt(True);
end;

procedure TfrmConversion.GrabarTodoTxtClick(Sender: TObject);
begin
  SaveFac_DesdeTxt(True);
  SaveCre_DesdeTxt(True);
end;

procedure TfrmConversion.btnUbicDB_IsamClick(Sender: TObject);
begin
  if sfdDBIsam.Execute then
    lblPaso.Caption := sfdDBIsam.SelectedPathName;
end;

procedure TfrmConversion.btnOpenTxtCliClick(Sender: TObject);
var
  AuxSt, AuxDoc: String;
  AuxNr, i, j : Integer;
begin
  if odDatosCli.Execute then
  begin
    pnlBtnConv.Caption := odDatosCli.FileName;
    NArch := odDatosCli.FileName;
    AssignFile(ArchT, NArch);
    Reset(ArchT);
    if DClientes.Active then
      DClientes.EmptyDataSet
    else
      DClientes.CreateDataSet;
    NroRg := 1;
    DClientes.Append;
    DClientesIDCLI.AsInteger := NroRg;
    DClientesIDSUCURSAL.AsInteger := IdBranch;
    DClientesIdCliente.AsInteger := 1;
    DClientesNOMBRE.AsString := 'Impersonal';
    DClientesDIRECCION.AsString := '';
    DClientesLOCALIDAD.AsString := '';
    DClientesPROVINCIA.AsString := 'San Juan';
    DClientesCODPOSTAL.AsString := '0000';
    DClientesTELEFONOS.AsString := '';
    DClientesTELFAX.AsString := '';
    DClientesTIPOIVA.AsInteger := CFi;
    DClientesTIPODOC.AsInteger := Ninguno;
    DClientesDOCUMENTO.AsString := '00000000';
    DClientesINGBRUTOS.AsString := '00000000';
    DClientes.Post;
    while not Eof(ArchT) do
    begin
      Linea := '';
      AuxSt := '';
      AuxNr := 1;
      Readln(ArchT, Linea);
      if Trim(Linea) > '' then
      begin
        Inc(NroRg);
        DClientes.Append;
        DClientesIDCLI.AsInteger := NroRg;
        DClientesIDSUCURSAL.AsInteger := IdBranch;
        AuxSt := Copy(Linea,  1, 6);
        try
          AuxNr := StrToInt(AuxSt);
        except
          AuxNr := 0;
        end;
        DClientesIdCliente.AsInteger := NroRg;

        AuxSt := Copy(Linea,  7,35);
        AuxSt := StringReplace(AuxSt, '~', 'Ñ', [rfReplaceAll]);
        DClientesNOMBRE.AsString := AuxSt;
        AuxSt := Copy(Linea, 42,45);
        AuxSt := StringReplace(AuxSt, '*', 'º', [rfReplaceAll]);
        DClientesDIRECCION.AsString := AuxSt;
        AuxSt := Copy(Linea, 87, 4);
        DClientesCODPOSTAL.AsString := AuxSt;
        AuxSt := Copy(Linea, 91, 3);
        try
          AuxNr := StrToInt(AuxSt);
        except
          AuxNr := 0;
        end;

        Case AuxNr Of
          001: AuxSt := 'CAPITAL';
          002: AuxSt := 'ALBARDON';
          003: AuxSt := 'ALTO DE SIERRA';
          004: AuxSt := 'ANGACO NORTE';
          005: AuxSt := 'ANGACO SUR';
          006: AuxSt := 'BARREAL';
          007: AuxSt := 'BAÑOS DE PISMANTA';
          008: AuxSt := 'CALINGASTA';
          009: AuxSt := 'CARPINTERIA';
          010: AuxSt := 'CAMPO AFUERA';
          011: AuxSt := 'CAUCETE';
          012: AuxSt := 'CONCEPCION';
          013: AuxSt := 'CHIMBAS';
          014: AuxSt := 'IGLESIAS (LAS FLORES)';
          015: AuxSt := 'JACHAL';
          016: AuxSt := 'LAS CASUARINAS';
          017: AuxSt := 'LAS CHACRITAS';
          018: AuxSt := 'LA RINCONADA';
          019: AuxSt := 'MARQUESADO';
          020: AuxSt := 'MEDIA AGUA';
          021: AuxSt := 'MEDANO DE ORO';
          022: AuxSt := 'RIVADAVIA';
          023: AuxSt := 'POCITO';
          024: AuxSt := 'RAWSON';
          025: AuxSt := 'RODEO';
          026: AuxSt := 'SANTA LUCIA';
          027: AuxSt := 'SAN MARTIN';
          028: AuxSt := 'TUPELI';
          029: AuxSt := 'ULLUM';
          030: AuxSt := 'VALLECITO';
          031: AuxSt := 'VALLE FERTIL';
          032: AuxSt := 'VILLA KRAUSE';
          033: AuxSt := 'ZONDA';
          034: AuxSt := '9 DE JULIO';
          035: AuxSt := '25 DE MAYO';
          036: AuxSt := 'DESAMPARADOS';
          037: AuxSt := 'TRINIDAD';
          038: AuxSt := 'Vª DEL CARRIL';
          039: AuxSt := 'SARMIENTO';
          040: AuxSt := 'Vª ABERASTAIN';
          041: AuxSt := 'LOS BERROS';
          042: AuxSt := 'MARAYES';
          043: AuxSt := 'TAMBERIAS';
          044: AuxSt := 'ENCON';
          045: AuxSt := 'PIE DE PALO';
          046: AuxSt := 'GUANDACOL';
          099: AuxSt := 'IQUIQUE';
          100: AuxSt := 'SAN LUIS CAPITAL';
          else AuxSt := '';
        end;
        DClientesLOCALIDAD.AsString := AuxSt;
        AuxSt := Copy(Linea, 94, 3);
        if AuxSt = '010' then
          DClientesPROVINCIA.AsString := 'San Juan';
        AuxSt := Copy(Linea, 97,20);
        if Pos('NO TIENE', AuxSt) = 0 then
          DClientesTELEFONOS.AsString := AuxSt;
        AuxSt := Copy(Linea,172,20);
        if Pos('NO TIENE', AuxSt) = 0 then
          DClientesTELFAX.AsString := AuxSt;
        AuxSt := Copy(Linea,192,1);
        try
          AuxNr := StrToInt(AuxSt);
        except
          AuxNr := 0;
        end;
        Case AuxNr of
          1: DClientesTIPOIVA.AsInteger := 1;
          2: DClientesTIPOIVA.AsInteger := 2;
          3: DClientesTIPOIVA.AsInteger := 3;
          4: DClientesTIPOIVA.AsInteger := 9;
          5: DClientesTIPOIVA.AsInteger := 4;
          6: DClientesTIPOIVA.AsInteger := 7;
          7: DClientesTIPOIVA.AsInteger := 6;
           else
             DClientesTIPOIVA.AsInteger := NoEncontrado;
        end;
        AuxSt := Copy(Linea,193,13);
        if (Pos('NO TIENE', AuxSt) = 0) and
           (Trim(AuxSt) > Vacio) then
          DClientesDOCUMENTO.AsString := AuxSt;
        AuxSt := Copy(Linea,206,12);
        if Pos('NO TIENE', AuxSt) = 0 then
          DClientesINGBRUTOS.AsString := AuxSt;

        // Tipo Doc
        AuxSt := Copy(Linea,224,1);
        try
          AuxNr := StrToInt(AuxSt);
        except
          AuxNr := 0;
        end;
        if DClientesTIPOIVA.AsInteger in [RI, RNI, Ex] then
          DClientesTIPODOC.AsInteger := CUIT
        else begin
          Case AuxNr of
            1: DClientesTIPODOC.AsInteger := LE;
            2: DClientesTIPODOC.AsInteger := LC;
            3: DClientesTIPODOC.AsInteger := DNI;
            4,
            5,
            6,
            7: DClientesTIPODOC.AsInteger := CI;
            else
               DClientesTIPODOC.AsInteger := Ninguno;
          end;
        end;

        j := 0;
        AuxDoc := Vacio;
        AuxSt := Copy(Linea,225,10);
        try
          try
            While AuxSt[1] = '0' do
              Delete(AuxSt, 1, 1);
          except
            AuxST := Vacio;
          end;
          j := Length(AuxSt);
          AuxDoc := Vacio;
          try
            For i:= 1 to j do
            begin
              if AuxSt[i] in ['0'..'9'] then
                AuxDoc := AuxDoc + AuxSt[i]
            end;
          except
            AuxDoc := Vacio;
          end;
          if (Trim(AuxDoc) > Vacio) then
          begin
            if Length(AuxDoc) > 8 then
              DClientesTIPODOC.AsInteger := CUIT
            else begin
              if (not DClientesTIPODOC.AsInteger in [DNI, LC, LE, CI]) then
                DClientesTIPODOC.AsInteger := DNI
              else
                DClientesTIPODOC.AsInteger := DNI;
            end;
            DClientesDOCUMENTO.AsString := AuxDoc;
          end
          else begin
            DClientesTIPODOC.AsInteger := Ninguno;
            DClientesDOCUMENTO.AsString := Vacio;
          end;
        except
          DClientesTIPODOC.AsInteger := Ninguno;
          DClientesDOCUMENTO.AsString := Vacio;
        end;
        DClientes.Post;
      end;
    end;
    CloseFile(ArchT);
    DClientes.IndexFieldNames := 'Nombre';
  end
  else
    ShowMessage('no se eligio ningun archivo ');
end;

(*
  //------------ Tipos Situacion frente al IVA
  RI  = 1;
  RNI = 2;
  CFi = 3;
  EX  = 4;
  RMT = 6;
  NC  = 7;
  BU  = 8;
  NR  = 9;

  //------------- Tipos Documentos Fiscales
  //                               HASAR     EPSON
  CUIT = 1;       //TIPO_CUIT 	   = 67      CUIT
  LC = 2;         //TIPO_LC 	   = 49      LC
  LE = 3;         //TIPO_LE 	   = 48      LE
  DNI = 4;        //TIPO_DNI 	   = 50      DNI
  PASAPORTE = 5;  //TIPO_PASAPORTE = 51      PRTE
  CI = 6;         //TIPO_CI 	   = 52      CI
  NINGUNO = 7;    //TIPO_NINGUNO   = 32      NADA
  CUIL = 8;
*)

procedure TfrmConversion.MaeFac(Paso: String; Con_Show: Boolean);
var
  AuxSt, AuxDoc: String;
  AuxNr, i, j: Integer;
  AuxMn: Currency;
begin
  AssignFile(ArchT, Paso);
  Reset(ArchT);
  if FacV.Active then
    FacV.EmptyDataSet
  else
    FacV.CreateDataSet;
  NroRg := 0;
  CantC := 0;
  CantT := 0;
  If Con_Show then
  begin
    mmSave.Lines.Add('MaeFac '+TimeToStr(Time));
    Application.ProcessMessages;
  end;
  while not Eof(ArchT) do
  begin
    Linea := '';
    AuxSt := '';
    AuxNr := 0;
    AuxMn := 0;
    Readln(ArchT, Linea);
    if CantC > 1000 then
    begin
      CantT := CantT + CantC;
      If Con_Show then
      begin
        mmSave.Lines.Add('MaeFac '+TimeToStr(Time)+' '+IntToStr(CantT));
        Application.ProcessMessages;
      end;
      CantC := 0;
    end
    else Inc(CantC);

    if Trim(Linea) > Vacio then
    begin
      Inc(NroRg);
      FacV.Append;
      FacVIdRecord.AsInteger := NroRg;
      AuxSt := Copy(Linea,  1, 3);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 1;
      end;
      FacVIdPuntoVenta.AsInteger := AuxNr;
      FacVIdSucursal.AsInteger := IdBranch;
      // Serie
      AuxSt := Up_Case(Copy(Linea,  4, 1));
      FacVSerie.AsString := AuxSt;
      Case AuxSt[1] of
        'A': FacVTipoFact.AsInteger := FacA;
        'B': FacVTipoFact.AsInteger := FacB;
        'C': FacVTipoFact.AsInteger := CreA;
        'D': FacVTipoFact.AsInteger := CreB;
        'E': FacVTipoFact.AsInteger := DebA;
        'F': FacVTipoFact.AsInteger := DebB;
        'R': FacVTipoFact.AsInteger := RemitoX;
        'P': FacVTipoFact.AsInteger := Presupuesto
        else FacVTipoFact.AsInteger := StrToInt(AuxSt);
      end;
      // IdFactura
      AuxSt := Copy(Linea,  5, 8);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      FacVIdFactura.AsInteger := AuxNr;
      // Nº de Cliente
      AuxSt := Copy(Linea, 13, 5);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 1;
      end;
      if AuxNr = 0 then
        AuxNr := 1;
      FacVIdCliente.AsInteger := AuxNr;
      // Nombre
      AuxSt := Copy(Linea, 18,30);
      AuxSt := StringReplace(AuxSt, '~', 'Ñ', [rfReplaceAll]);
      FacVNombre.AsString := AuxSt;
      // Direccion
      AuxSt := Copy(Linea, 48,30);
      AuxSt := StringReplace(AuxSt, '*', 'º', [rfReplaceAll]);
      AuxSt := StringReplace(AuxSt, '~', 'Ñ', [rfReplaceAll]);
      FacVDomicilio.AsString := AuxSt;
      // Localidad
      AuxSt := Copy(Linea, 78, 3);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;

      Case AuxNr Of
        000: AuxSt := 'SAN JUAN';
        001: AuxSt := 'CAPITAL';
        002: AuxSt := 'ALBARDON';
        003: AuxSt := 'ALTO DE SIERRA';
        004: AuxSt := 'ANGACO NORTE';
        005: AuxSt := 'ANGACO SUR';
        006: AuxSt := 'BARREAL';
        007: AuxSt := 'BAÑOS DE PISMANTA';
        008: AuxSt := 'CALINGASTA';
        009: AuxSt := 'CARPINTERIA';
        010: AuxSt := 'CAMPO AFUERA';
        011: AuxSt := 'CAUCETE';
        012: AuxSt := 'CONCEPCION';
        013: AuxSt := 'CHIMBAS';
        014: AuxSt := 'IGLESIAS (LAS FLORES)';
        015: AuxSt := 'JACHAL';
        016: AuxSt := 'LAS CASUARINAS';
        017: AuxSt := 'LAS CHACRITAS';
        018: AuxSt := 'LA RINCONADA';
        019: AuxSt := 'MARQUESADO';
        020: AuxSt := 'MEDIA AGUA';
        021: AuxSt := 'MEDANO DE ORO';
        022: AuxSt := 'RIVADAVIA';
        023: AuxSt := 'POCITO';
        024: AuxSt := 'RAWSON';
        025: AuxSt := 'RODEO';
        026: AuxSt := 'SANTA LUCIA';
        027: AuxSt := 'SAN MARTIN';
        028: AuxSt := 'TUPELI';
        029: AuxSt := 'ULLUM';
        030: AuxSt := 'VALLECITO';
        031: AuxSt := 'VALLE FERTIL';
        032: AuxSt := 'VILLA KRAUSE';
        033: AuxSt := 'ZONDA';
        034: AuxSt := '9 DE JULIO';
        035: AuxSt := '25 DE MAYO';
        036: AuxSt := 'DESAMPARADOS';
        037: AuxSt := 'TRINIDAD';
        038: AuxSt := 'Vª DEL CARRIL';
        039: AuxSt := 'SARMIENTO';
        040: AuxSt := 'Vª ABERASTAIN';
        041: AuxSt := 'LOS BERROS';
        042: AuxSt := 'MARAYES';
        043: AuxSt := 'TAMBERIAS';
        044: AuxSt := 'ENCON';
        045: AuxSt := 'PIE DE PALO';
        046: AuxSt := 'GUANDACOL';
        099: AuxSt := 'IQUIQUE';
        100: AuxSt := 'SAN LUIS CAPITAL';
        else AuxSt := '';
      end;
      FacVLocalidad.AsString := AuxSt;
      // TDoc Cliente
      AuxSt := Copy(Linea, 81, 1);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := NoEncontrado;
      end;
      Case AuxNr of
        0: FacVTDocCli.AsInteger := CUIT;
        1: FacVTDocCli.AsInteger := LE;
        2: FacVTDocCli.AsInteger := LC;
        3: FacVTDocCli.AsInteger := DNI;
        4,
        5,
        6,
        7: FacVTDocCli.AsInteger := CI;
        else
          FacVTDocCli.AsInteger := Ninguno;
      end;

      try
        FacVFechaF.AsDateTime := StrToDate(Copy(Linea,82,2)+'/'+
                                           Copy(Linea,84,2)+'/'+
                                           Copy(Linea,86,2));
      except
        FacVFechaF.Clear;
      end;

      AuxSt := Copy(Linea, 88, 3);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      FacVIdEmpleado.AsInteger := AuxNr;

      //concepto 9
      AuxSt := Copy(Linea, 91, 1);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      FacVConcepto.AsInteger := AuxNr;

      AuxSt := Copy(Linea, 92, 2);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      FacVIdPuntoVenta.AsInteger := AuxNr;

      // Bonificacion    9(9),9(4)
      // Signo   X    - Bon o + Recargo
      AuxSt := Copy(Linea, 94, 9)+','+Copy(Linea, 103, 4);
      try
        AuxMn := StrToFloat(AuxSt);
      except
        AuxMn := 0;
      end;

      AuxSt := Copy(Linea,107, 1);
      if Trim(AuxSt) = '+' then
        FacVBonRec.AsFloat := AuxMn
      else
        FacVBonRec.AsFloat := (-1*AuxMn);

      // Moneda  99
      AuxSt := Copy(Linea,108, 2);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      FacVCodMon.AsInteger := AuxNr;

      // Retencion X
      AuxSt := Copy(Linea,110, 1);
      FacVRetencion.AsString := AuxSt;

      // Pedido  9(7)
      AuxSt := Copy(Linea,111, 7);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      FacVPedido.AsInteger := AuxNr;

      // Lista   99
      AuxSt := Copy(Linea,118, 2);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      FacVListaPrecios.AsInteger := AuxNr;

      try
        j := 0;
        AuxDoc := Vacio;
        AuxSt := Copy(Linea,120,13);
        if Length(Trim(AuxSt)) > 0 then
        begin
          try
            While (AuxSt[1] = '0') and (j < 13) do
            begin
              Delete(AuxSt, 1, 1);
              Inc(j);
            end;
          except
            AuxSt := Vacio;
          end;
          j := Length(AuxSt);
          if j > 0 then
          begin
            AuxDoc := Vacio;
            try
              For i := 1 to j do
              begin
                if AuxSt[i] in ['0'..'9'] then
                  AuxDoc := AuxDoc + AuxSt[i]
              end;
            except
              AuxDoc := Vacio;
            end;
            if (Trim(AuxDoc) > Vacio) then
            begin
              if Length(AuxDoc) > 8 then
              begin
                FacVTDocCli.AsInteger := CUIT;
                if FacVTipoFact.AsInteger in [CreA, FacA, DebA] then
                  FacVTIvaCli.AsInteger := RI;
                if FacVTipoFact.AsInteger in [CreB, FacB, DebB] then
                  FacVTIvaCli.AsInteger := RMT;
              end
              else begin
                if (not FacVTDocCli.AsInteger in [DNI, LC, LE, CI]) then
                begin
                  FacVTIvaCli.AsInteger := CFi;
                  FacVTDocCli.AsInteger := DNI
                end
                else begin
                  FacVTIvaCli.AsInteger := CFi;
                  FacVTDocCli.AsInteger := DNI;
                end;
              end;
              FacVDocumento.AsString := AuxDoc;
            end
            else begin
              FacVTDocCli.AsInteger := Ninguno;
              FacVTIvaCli.AsInteger := CFi;
              FacVDocumento.AsString := Vacio;
            end;
          end
          else begin
            FacVTDocCli.AsInteger := Ninguno;
            FacVTIvaCli.AsInteger := CFi;
            FacVDocumento.AsString := Vacio;
          end;
        end;
      except
        FacVTDocCli.AsInteger := Ninguno;
        FacVTIvaCli.AsInteger := CFi;
        FacVDocumento.AsString := Vacio;
      end;

      // Lugar x (60)
      AuxSt := Copy(Linea,133,60);
      FacVEntrega.AsString := AuxSt;

      // Cond de Pago 999
      AuxSt := Copy(Linea,193, 3);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      FacVCondPago.AsInteger := AuxNr;

      // Situacion IVA X
      AuxSt := Copy(Linea,196, 1);
      FacVSitIva.AsString := AuxSt;
      // Codigo Movimiento  99
      AuxSt := Copy(Linea,197, 2);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      FacVCodMov.AsInteger := AuxNr;
      // Codigo de pago 1   99
      AuxSt := Copy(Linea,199, 2);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      FacVCod1.AsInteger := AuxNr;

      // Importe de pago 1   9(9)v9(4)
      AuxSt := Copy(Linea,201, 9)+','+Copy(Linea, 210, 4);
      try
        AuxMn := StrToFloat(AuxSt);
      except
        AuxMn := 0;
      end;
      FacVImp1.AsCurrency := AuxMn;

      // Codigo de pago 2   99
      AuxSt := Copy(Linea,214, 2);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      FacVCod2.AsInteger := AuxNr;

      // Importe de pago 2   9(9)v9(4)
      AuxSt := Copy(Linea,216, 9)+','+Copy(Linea,225, 4);
      try
        AuxMn := StrToFloat(AuxSt);
      except
        AuxMn := 0;
      end;
      FacVImp2.AsCurrency := AuxMn;

      // Codigo de pago 3   99
      AuxSt := Copy(Linea,229, 2);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      FacVCod3.AsInteger := AuxNr;

      // Importe de pago 3   9(9)v9(4)
      AuxSt := Copy(Linea,231, 9)+','+Copy(Linea,240, 4);
      try
        AuxMn := StrToFloat(AuxSt);
      except
        AuxMn := 0;
      end;
      FacVImp3.AsCurrency := AuxMn;

      // Codigo de pago 4   99
      AuxSt := Copy(Linea,244, 2);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      FacVCod4.AsInteger := AuxNr;

      // Importe de pago 4   9(9)v9(4)
      AuxSt := Copy(Linea,246, 9)+','+Copy(Linea, 255, 4);
      try
        AuxMn := StrToFloat(AuxSt);
      except
        AuxMn := 0;
      end;
      FacVImp4.AsCurrency := AuxMn;

      // Remito   9(8)
      AuxSt := Copy(Linea,259, 8);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      FacVRemito.AsInteger := AuxNr;

      // IVA      9(7),9(4)
      AuxSt := Copy(Linea,267, 7)+','+Copy(Linea, 274, 4);
      try
        AuxMn := StrToFloat(AuxSt);
      except
        AuxMn := 0;
      end;
      FacVIva1.AsCurrency := AuxMn;

      // NO IVA   9(7),9(4)
      AuxSt := Copy(Linea,278, 7)+','+Copy(Linea, 285, 4);
      try
        AuxMn := StrToFloat(AuxSt);
      except
        AuxMn := 0;
      end;
      FacVIva2.AsCurrency := AuxMn;

      // Sellado  9(7),9(4)
      AuxSt := Copy(Linea,289, 7)+','+Copy(Linea, 296, 4);
      try
        AuxMn := StrToFloat(AuxSt);
      except
        AuxMn := 0;
      end;
      FacVSellado.AsCurrency := AuxMn;

      // Internos 9(7),9(4)
      AuxSt := Copy(Linea,300, 7)+','+Copy(Linea, 307, 4);
      try
        AuxMn := StrToFloat(AuxSt);
      except
        AuxMn := 0;
      end;
      FacVInternos.AsCurrency := AuxMn;

      // Ot.Impor.9(9),9(4)
      AuxSt := Copy(Linea,311, 9)+','+Copy(Linea, 320, 4);
      try
        AuxMn := StrToFloat(AuxSt);
      except
        AuxMn := 0;
      end;
      FacVOtrosImp.AsCurrency := AuxMn;

      // Pre. Abierto  X
      AuxSt := Copy(Linea,324, 1);
      FacVPrecioAb.AsString := AuxSt;

      AuxSt := Copy(Linea,325, 8);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      FacVNumFis.AsInteger := AuxNr;

      // Bien de Uso   X
      AuxSt := Copy(Linea,333, 1);
      FacVBUso.AsString := AuxSt;

      // Ing.Brutos 9(7),99
      AuxSt := Copy(Linea,334, 7)+','+Copy(Linea,341, 2);
      try
        AuxMn := StrToFloat(AuxSt);
      except
        AuxMn := 0;
      end;
      FacVIngBtos.AsCurrency := AuxMn;
      //Total Factura
      AuxSt := Copy(Linea,343, 9)+','+Copy(Linea,352, 2);
      try
        AuxMn := StrToFloat(AuxSt);
      except
        AuxMn := 0;
      end;
      FacVTotalF.AsCurrency := AuxMn;

      if FacVNumFis.AsInteger <= 0 then
        FacVNroFactura.AsString := Format('%.4d-%.8d',[FacVIdPuntoVenta.AsInteger, FacVIdFactura.AsInteger])
      else
        FacVNroFactura.AsString := Format('%.4d-%.8d',[FacVIdPuntoVenta.AsInteger, FacVNumFis.AsInteger]);
      FacV.Post;
    end;
  end;
  CloseFile(ArchT);
end;

procedure TfrmConversion.btnOpenTxtFacClick(Sender: TObject);
begin
  if odDatosFac.Execute then
  begin
    pnlBtnConv.Caption := odDatosFac.FileName;
    NArch := odDatosFac.FileName;
    MaeFac(NArch, True);
  end
  else
    ShowMessage('no se eligio ningun archivo ');
end;

procedure TfrmConversion.MovFac(Paso: String; Con_Show: Boolean);
var
  AuxSt: String;
  AuxNr: Integer;
  AuxRl: Double;
begin
  AssignFile(ArchT, Paso);
  Reset(ArchT);
  if ItemsV.Active then
    ItemsV.EmptyDataSet
  else
    ItemsV.CreateDataSet;
  NroRg := 0;
  CantC := 0;
  CantT := 0;
  If Con_Show then
  begin
    mmSave.Lines.Add('MovFac '+TimeToStr(Time));
    Application.ProcessMessages;
  end;
  while not Eof(ArchT) do
  begin
    Linea := Vacio;
    AuxSt :=Vacio;
    AuxNr := 0;
    AuxRl := 0;
    Readln(ArchT, Linea);
    if CantC > 1000 then
    begin
      CantT := CantT + CantC;
      If Con_Show then
      begin
        mmSave.Lines.Add('MovFac '+TimeToStr(Time)+' '+IntToStr(CantT));
        Application.ProcessMessages;
      end;
      CantC := 0;
    end
    else Inc(CantC);

    if Trim(Linea) > Vacio then
    begin
      Inc(NroRg);
      ItemsV.Append;
      ItemsVIdRecord.AsInteger := NroRg;
      AuxSt := Copy(Linea,  1, 2);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 1;
      end;
      ItemsVIdPuntoVenta.AsInteger := AuxNr;
      AuxSt := Copy(Linea,  3, 1);

      ItemsVSerie.AsString := AuxSt;
      Case AuxSt[1] of
        'A': ItemsVTipoFact.AsInteger := FacA;
        'B': ItemsVTipoFact.AsInteger := FacB;
        'C': ItemsVTipoFact.AsInteger := CreA;
        'D': ItemsVTipoFact.AsInteger := CreB;
        'E': ItemsVTipoFact.AsInteger := DebA;
        'F': ItemsVTipoFact.AsInteger := DebB;
        'R': ItemsVTipoFact.AsInteger := RemitoX;
        'P': ItemsVTipoFact.AsInteger := Presupuesto
        else ItemsVTipoFact.AsInteger := StrToInt(AuxSt);
      end;

      AuxSt := Copy(Linea,  4, 8);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      ItemsVIdFactura.AsInteger := AuxNr;
      ItemsVIdSucursal.AsInteger := IdBranch;
      AuxSt := Copy(Linea, 12, 2);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      ItemsVIdItem.AsInteger := AuxNr;

      AuxSt := Copy(Linea, 14, 5);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      ItemsVIdArticulo.AsInteger := AuxNr;

      AuxSt := Copy(Linea, 19, 7)+','+Copy(Linea, 26, 4);
      try
        AuxRl := StrToFloat(AuxSt);
      except
        AuxRl := 0;
      end;
      ItemsVCantidad.AsFloat := AuxRl;

      AuxSt := Copy(Linea, 30, 5);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      ItemsVUnidades.AsInteger := AuxNr;

      AuxSt := Copy(Linea, 35, 9)+','+Copy(Linea, 44, 4);
      try
        AuxRl := StrTofloat(AuxSt);
      except
        AuxRl := 0;
      end;
      ItemsVPrecioUnitario.AsCurrency := AuxRl;

      AuxSt := Copy(Linea, 48, 30);
      ItemsVDescripcion.AsString := AuxSt;

      AuxSt := Copy(Linea, 78, 3);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      ItemsVBulto.AsInteger := AuxNr;

      AuxSt := Copy(Linea, 81, 2);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      ItemsVIdLista.AsInteger := AuxNr;

      AuxSt := Copy(Linea, 83, 9)+','+Copy(Linea, 92, 4);
      try
        AuxRl := StrTofloat(AuxSt);
      except
        AuxRl := 0;
      end;
      ItemsVImpuesto1.AsCurrency := AuxRl;

      AuxSt := Copy(Linea, 96, 9)+','+Copy(Linea,105, 4);
      try
        AuxRl := StrTofloat(AuxSt);
      except
        AuxRl := 0;
      end;
      ItemsVImpuesto2.AsCurrency := AuxRl;

      AuxSt := Copy(Linea,109, 9)+','+Copy(Linea,118, 4);
      try
        AuxRl := StrTofloat(AuxSt);
      except
        AuxRl := 0;
      end;
      ItemsVImpuesto3.AsCurrency := AuxRl;

      AuxSt := Copy(Linea,122, 9)+','+Copy(Linea,131, 4);
      try
        AuxRl := StrTofloat(AuxSt);
      except
        AuxRl := 0;
      end;
      ItemsVImpuesto4.AsCurrency := AuxRl;

      AuxSt := Copy(Linea,135, 9)+','+Copy(Linea,144, 4);
      try
        AuxRl := StrTofloat(AuxSt);
      except
        AuxRl := 0;
      end;
      ItemsVImpuesto5.AsCurrency := AuxRl;

      AuxSt := Copy(Linea,148, 9)+','+Copy(Linea,157, 4);
      try
        AuxRl := StrTofloat(AuxSt);
      except
        AuxRl := 0;
      end;
      ItemsVImpuesto6.AsCurrency := AuxRl;

      AuxSt := Copy(Linea,161, 9)+','+Copy(Linea,170, 4);
      try
        AuxRl := StrTofloat(AuxSt);
      except
        AuxRl := 0;
      end;
      ItemsVImpuesto7.AsCurrency := AuxRl;

      AuxSt := Copy(Linea,174, 9)+','+Copy(Linea,183, 4);
      try
        AuxRl := StrTofloat(AuxSt);
      except
        AuxRl := 0;
      end;
      ItemsVImpuesto8.AsCurrency := AuxRl;

      AuxSt := Copy(Linea,187, 9)+','+Copy(Linea,196, 4);
      try
        AuxRl := StrTofloat(AuxSt);
      except
        AuxRl := 0;
      end;
      ItemsVImpuesto9.AsCurrency := AuxRl;

      AuxSt := Copy(Linea,200, 9)+','+Copy(Linea,209, 4);
      try
        AuxRl := StrTofloat(AuxSt);
      except
        AuxRl := 0;
      end;
      ItemsVImpuesto10.AsCurrency := AuxRl;

      AuxSt := Copy(Linea,213, 3)+','+Copy(Linea,216, 4);
      try
        AuxRl := StrTofloat(AuxSt);
      except
        AuxRl := 0;
      end;
      ItemsVBonif.AsCurrency := AuxRl;

      AuxSt := Copy(Linea,220, 8)+','+Copy(Linea,228, 3);
      try
        AuxRl := StrTofloat(AuxSt);
      except
        AuxRl := 0;
      end;
      ItemsVCosto.AsCurrency := AuxRl;

      AuxSt := Copy(Linea,231, 3);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      ItemsVIdDeposito.AsInteger := AuxNr;
      ItemsV.Post;
    end;
  end;
  FacV.IndexFieldNames := 'IdFactura;FechaF;TipoFact;Serie';
  CloseFile(ArchT);
end;

procedure TfrmConversion.btnOpenTxtProdsClick(Sender: TObject);
begin
  if odDatosPro.Execute then
  begin
    pnlBtnConv.Caption := odDatosPro.FileName;
    NArch := odDatosPro.FileName;
    MovFac(NArch, True);
  end;
end;

procedure TfrmConversion.CarDoc(Paso: String; Con_Show: Boolean);
var
  AuxSt: String;
  AuxNr: Integer;
begin
  AssignFile(ArchT, Paso);
  Reset(ArchT);
  if Creditos.Active then
    Creditos.EmptyDataSet
  else
    Creditos.CreateDataSet;
  NroRg := 0;
  If Con_Show then
  begin
    mmSave.Lines.Add('CarDoc '+TimeToStr(Time));
    Application.ProcessMessages;
  end;
  CantC := 0;
  CantT := 0;
  while not Eof(ArchT) do
  begin
    Linea := '';
    AuxSt := '';
    AuxNr := 0;
    Readln(ArchT, Linea);
    if Trim(Linea) > '' then
    begin
      Inc(NroRg);
      if CantC > 1000 then
      begin
        CantT := CantT + CantC;
        If Con_Show then
        begin
          mmSave.Lines.Add('CarDoc '+TimeToStr(Time)+' '+IntToStr(CantT));
          Application.ProcessMessages;
        end;
        CantC := 0;
      end
      else
        Inc(CantC);

      Creditos.Append;
      CreditosIdRecord.AsInteger := NroRg;
      AuxSt := Copy(Linea,  1, 3);
      AuxNr := StrToInt(AuxSt);
      CreditosIDSUCURSAL.AsInteger := IdBranch;
      AuxSt := Copy(Linea,  4, 1);
      CreditosTDeuda.AsString := AuxSt;
      AuxSt := Copy(Linea,  5, 6);
      AuxNr := StrToInt(AuxSt);
      CreditosIDCLIENTE.AsInteger := AuxNr;
      AuxSt := Copy(Linea, 11, 8);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      CreditosIdFactura.AsInteger := AuxNr;
      CreditosFechaF.AsDateTime := StrToDate(Copy(Linea,25,2)+'/'+Copy(Linea,23,2)+'/'+Copy(Linea,19,4));
      AuxSt := Copy(Linea, 27, 9)+','+Copy(Linea, 35, 4);
      CreditosMonto.AsCurrency := StrToFloat(AuxSt);
      AuxSt := Copy(Linea, 40, 1);
      CreditosEstado.AsString := AuxSt;
      AuxSt := Copy(Linea, 41, 2); // Plan
      AuxSt := Copy(Linea, 43, 7);
      AuxNr := StrToInt(AuxSt);
      CreditosPadron.AsInteger := AuxNr;
      AuxSt := Copy(Linea, 50, 7);
      AuxNr := StrToInt(AuxSt);
      CreditosCentro.AsInteger := AuxNr;
      AuxSt := Copy(Linea, 57, 7);
      AuxNr := StrToInt(AuxSt);
      CreditosNroAfiliado.AsInteger := AuxNr;
      AuxSt := Copy(Linea, 64,30);
      AuxSt := StringReplace(AuxSt, '~', 'Ñ', [rfReplaceAll]);
      CreditosNombreAfi.AsString := AuxSt;
      AuxSt := Copy(Linea, 94, 9);
      AuxNr := StrToInt(AuxSt);
      CreditosOrden.AsInteger := AuxNr;
      AuxSt := Copy(Linea, 94, 9);
      AuxNr := StrToInt(AuxSt);
      CreditosOrden.AsInteger := AuxNr;
      AuxSt := Copy(Linea,111, 6);
      AuxNr := StrToInt(AuxSt);
      CreditosGarante1.AsInteger := AuxNr;
      AuxSt := Copy(Linea,141, 3);
      AuxNr := StrToInt(AuxSt);
      CreditosCuotas.AsInteger := AuxNr;
      Creditos.Post;
    end;
  end;
  Creditos.IndexFieldNames := 'IdFactura;IdCliente;FechaF';
  CloseFile(ArchT);
end;

procedure TfrmConversion.btnOpenTxtCredClick(Sender: TObject);
begin
  if odDatosCre.Execute then
  begin
    pnlBtnConv.Caption := odDatosCre.FileName;
    NArch := odDatosCre.FileName;
    CarDoc(NArch, True);
  end;
end;

procedure TfrmConversion.CtaDoc(Paso: String; Con_Show: Boolean);
var
  AuxSt: String;
  AuxNr: Integer;
begin
  AssignFile(ArchT, Paso);
  Reset(ArchT);
  if Cuotas.Active then
    Cuotas.EmptyDataSet
  else
    Cuotas.CreateDataSet;
  NroRg := 0;
  CantC := 0;
  CantT := 0;
  If Con_Show then
  begin
    mmSave.Lines.Add('CtaDoc '+TimeToStr(Time));
    Application.ProcessMessages;
  end;
  while not Eof(ArchT) do
  begin
    if CantC > 1000 then
    begin
      CantT := CantT + CantC;
      If Con_Show then
      begin
        mmSave.Lines.Add('CtaDoc '+TimeToStr(Time)+' '+IntToStr(CantT));
        Application.ProcessMessages;
      end;
      CantC := 0;
    end
    else Inc(CantC);
    Linea := '';
    AuxSt := '';
    AuxNr := 0;
    Readln(ArchT, Linea);
    if Trim(Linea) > '' then
    begin
      Inc(NroRg);
      Cuotas.Append;
      CuotasIdRecord.AsInteger := NroRg;
      AuxSt := Copy(Linea,  1, 3);
      AuxNr := StrToInt(AuxSt);
      CuotasIDSUCURSAL.AsInteger := IdBranch;
      AuxSt := Copy(Linea,  4, 1);
      CuotasTDeuda.AsString := AuxSt;
      AuxSt := Copy(Linea,  5, 6);
      AuxNr := StrToInt(AuxSt);
      CuotasIDCLIENTE.AsInteger := AuxNr;
      AuxSt := Copy(Linea, 11, 8);
      try
        AuxNr := StrToInt(AuxSt);
      except
        AuxNr := 0;
      end;
      CuotasIdFactura.AsInteger := AuxNr;
      AuxSt := Copy(Linea, 19, 3);
      AuxNr := StrToInt(AuxSt);
      CuotasNroCuota.AsInteger := AuxNr;
      try
        CuotasVencimiento.AsDateTime := StrToDate(Copy(Linea,28,2)+'/'+Copy(Linea,26,2)+'/'+Copy(Linea,22,4));
      except
        CuotasVencimiento.Clear;
      end;
      AuxSt := Copy(Linea, 30, 9)+','+Copy(Linea, 39, 3);
      try
        CuotasMtoCuota.AsCurrency := StrToFloat(AuxSt);
      except
        CuotasMtoCuota.AsCurrency := 0;
      end;
      AuxSt := Copy(Linea, 43, 9)+','+Copy(Linea, 52, 3);
      try
        CuotasMtoPagado.AsCurrency := StrToFloat(AuxSt);
      except
        CuotasMtoPagado.AsCurrency := 0;
      end;
      try
        CuotasUltimoPago.AsDateTime := StrToDate(Copy(Linea,62,2)+'/'+Copy(Linea,60,2)+'/'+Copy(Linea,56,4));
      except
        CuotasUltimoPago.Clear;
      end;
      Cuotas.Post;
    end;
  end;
  Cuotas.IndexFieldNames := 'IdFactura;IdCliente;NroCuota';
  CloseFile(ArchT);
end;

procedure TfrmConversion.btnOpenTxtCtasClick(Sender: TObject);
var
  AuxSt: String;
  AuxNr: Integer;
begin
  if odDatosCta.Execute then
  begin
    pnlBtnConv.Caption := odDatosCta.FileName;
    NArch := odDatosCta.FileName;
    CtaDoc(NArch, True);
  end;
end;

procedure TfrmConversion.PagDoc(Paso: String; Con_Show: Boolean);
var
  AuxSt: String;
  AuxNr: Integer;
begin
  AssignFile(ArchT, Paso);
  Reset(ArchT);
  if Pagos.Active then
    Pagos.EmptyDataSet
  else
    Pagos.CreateDataSet;
  NroRg := 0;
  CantC := 0;
  CantT := 0;
  If Con_Show then
  begin
    mmSave.Lines.Add('CarDoc '+TimeToStr(Time));
    Application.ProcessMessages;
  end;
  while not Eof(ArchT) do
  begin
    Linea := '';
    AuxSt := '';
    AuxNr := 0;
    Readln(ArchT, Linea);
    if CantC > 1000 then
    begin
      CantT := CantT + CantC;
      If Con_Show then
      begin
        mmSave.Lines.Add('PagDoc '+TimeToStr(Time)+' '+IntToStr(CantT));
        Application.ProcessMessages;
      end;
      CantC := 0;
    end
    else Inc(CantC);

    if Trim(Linea) > Vacio then
    begin
      Inc(NroRg);
      Pagos.Append;
      PagosIdRecord.AsInteger := NroRg;
      AuxSt := Copy(Linea,  1, 3);
      AuxNr := StrToInt(AuxSt);
      PagosIDSUCURSAL.AsInteger := IdBranch;
      AuxSt := Copy(Linea,  4, 1);
      PagosTDeuda.AsString := AuxSt;
      AuxSt := Copy(Linea,  5, 6);
      AuxNr := StrToInt(AuxSt);
      PagosIDCLIENTE.AsInteger := AuxNr;
      AuxSt := Copy(Linea, 11, 8);
      AuxNr := StrToInt(AuxSt);
      PagosIdFactura.AsInteger := AuxNr;
      AuxSt := Copy(Linea, 19, 3);
      AuxNr := StrToInt(AuxSt);
      PagosNroCuota.AsInteger := AuxNr;
      AuxSt := Copy(Linea, 22, 8);
      PagosNroRecibo.AsString := AuxSt;
      try
        PagosFechaPago.AsDateTime := StrToDate(Copy(Linea,36,2)+'/'+Copy(Linea,34,2)+'/'+Copy(Linea,30,4));
      except
        PagosFechaPago.Clear;
      end;
      AuxSt := Copy(Linea, 41, 9)+','+Copy(Linea, 50, 3);
      try
        PagosMtoCuota.AsCurrency := StrToFloat(AuxSt);
      except
        PagosMtoCuota.AsCurrency := 0;
      end;
      Pagos.Post;
    end;
  end;
  Pagos.IndexFieldNames := 'IdFactura;IdCliente;NroCuota';
  CloseFile(ArchT);
end;

procedure TfrmConversion.btnOpenTxtPagClick(Sender: TObject);
begin
  if odDatosPag.Execute then
  begin
    pnlBtnConv.Caption := odDatosPag.FileName;
    NArch := odDatosPag.FileName;
    PagDoc(NArch, True);
  end;
end;

procedure TfrmConversion.FacVCod1GetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
 Case FacVCod1.AsInteger of
    0: Text := 'Sin Valor';
    1: Text := 'Contado ';
    2: Text := 'Cta.Cte.';
    3: Text := 'Credito ';
    4: Text := 'Cabal   ';
    5: Text := 'Diners';
    6: Text := 'C.Franca';
    7: Text := 'Visa';
    8: Text := 'Argencard';
    9: Text := 'CR.Mutual';
   10: Text := 'American';
   11: Text := 'Vale';
   12: Text := 'Nevada';
   13: Text := 'Credencial';
   14: Text := 'Visa BSJ';
   15: Text := 'Data2000';
   16: Text := 'Data Plan6';
   17: Text := 'Fiel';
   18: Text := 'Aliada';
   19: Text := 'Nativa';
   21: Text := 'Conta-Cred';
   23: Text := 'PreverCred';
   96: Text := 'P.Dismar/Rocal';
   97: Text := 'P.Cassab Ahun';
   99: Text := 'P.Disagro';
   else Text:= InttoStr(FacVCod2.AsInteger);
 End;
end;

procedure TfrmConversion.FacVCod2GetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
 Case FacVCod2.AsInteger of
    0: Text := 'Sin Valor';
    1: Text := 'Contado';
    2: Text := 'Cta.Cte';
    3: Text := 'Credito';
    4: Text := 'Cabal';
    5: Text := 'Diners';
    6: Text := 'C.Franca';
    7: Text := 'Visa';
    8: Text := 'Argencard';
    9: Text := 'CR.Mutual';
   10: Text := 'American';
   11: Text := 'Vale';
   12: Text := 'Nevada';
   13: Text := 'Credencial';
   14: Text := 'Visa BSJ';
   15: Text := 'Data2000';
   16: Text := 'Data Plan6';
   17: Text := 'Fiel';
   18: Text := 'Aliada';
   19: Text := 'Nativa';
   21: Text := 'Cont-Cred';
   23: Text := 'PreverCred';
   96: Text := 'P.Dismar/Rocal';
   97: Text := 'P.Cassab Ahun';
   99: Text := 'P.Disagro';
   else Text:= IntToStr(FacVCod2.AsInteger);
 End;
end;

procedure TfrmConversion.FacVCod3GetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
 Case FacVCod3.AsInteger of
    0: Text := 'Sin Valor';
    1: Text := 'Contado';
    2: Text := 'Cta.Cte';
    3: Text := 'Credito';
    4: Text := 'Cabal';
    5: Text := 'Diners';
    6: Text := 'C.Franca';
    7: Text := 'Visa';
    8: Text := 'Argencard';
    9: Text := 'CR.Mutual';
   10: Text := 'American';
   11: Text := 'Vale';
   12: Text := 'Nevada';
   13: Text := 'Credencial';
   14: Text := 'Visa BSJ';
   15: Text := 'Data2000';
   16: Text := 'Data Plan6';
   17: Text := 'Fiel';
   18: Text := 'Aliada';
   19: Text := 'Nativa';
   21: Text := 'Cont-Cred';
   23: Text := 'PreverCred';
   96: Text := 'P.Dismar/Rocal';
   97: Text := 'P.Cassab Ahun';
   99: Text := 'P.Disagro';
   else Text:= IntToStr(FacVCod3.AsInteger);
 End;
end;

procedure TfrmConversion.FacVCod4GetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
 Case FacVCod4.AsInteger of
    0: Text := 'Sin Valor';
    1: Text := 'Contado';
    2: Text := 'Cta.Cte';
    3: Text := 'Credito';
    4: Text := 'Cabal';
    5: Text := 'Diners';
    6: Text := 'C.Franca';
    7: Text := 'Visa';
    8: Text := 'Argencard';
    9: Text := 'CR.Mutual';
   10: Text := 'American';
   11: Text := 'Vale';
   12: Text := 'Nevada';
   13: Text := 'Credencial';
   14: Text := 'Visa BSJ';
   15: Text := 'Data2000';
   16: Text := 'Data Plan6';
   17: Text := 'Fiel';
   18: Text := 'Aliada';
   19: Text := 'Nativa';
   21: Text := 'Cont-Cred';
   23: Text := 'PreverCred';
   96: Text := 'P.Dismar/Rocal';
   97: Text := 'P.Cassab Ahun';
   99: Text := 'P.Disagro';
   else Text:= IntToStr(FacVCod4.AsInteger);
 End;
end;

procedure TfrmConversion.FacVCodMovGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
 Case FacVCodMov.AsInteger of
    0: Text := 'NSE';
   11: Text := 'N C p/bonificación';
   12: Text := 'C N mueblería';
   51: Text := 'VCD';
   52: Text := 'VEF';
   53: Text := 'VCC';
   54: Text := 'VTJ';
   55: Text := 'VMT';
   58: Text := 'Presupuesto';
   59: Text := 'N Debito p/recargo';
   69: Text := 'Remito';
   70: Text := 'Nada';
   71: Text := 'Remito Service';
   72: Text := 'Remito a Color';
   73: Text := 'Remito a Tucumán';
   74: Text := 'Remito a Gral.Paz';
   75: Text := 'Remito a Rawson';
   76: Text := 'Remito Regalo';
   77: Text := 'Remito Prestamo';
   78: Text := 'Nada';
   79: Text := 'Remito p/vales';
   80: Text := 'FC p/mueblería';
   81: Text := 'Remito a Jáchal';
   82: Text := 'Ajuste p/desvío de mercadería';
   83: Text := 'Nada';
   84: Text := 'Remito a Mendoza';
  else Text := IntToStr(FacVCodMov.AsInteger);
 End;
end;

procedure TfrmConversion.FacVTDocCliGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Case FacVTDocCli.AsInteger of
    1: Text := 'CUIT';
    2: Text := 'LC  ';
    3: Text := 'LE  ';
    4: Text := 'DNI ';
    5: Text := 'PAS ';
    6: Text := 'CI  ';
    7: Text := 'NIN ';
    8: Text := 'CUIL';
   else Text := IntToStr(FacVTDocCli.AsInteger);
  end;
end;

procedure TfrmConversion.FacVTipoFactGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  try
    Text := GetText_Comprobante(FacVTipoFact.AsInteger, False);
  except
    Text := FacVTipoFact.AsString;
  end;
end;

procedure TfrmConversion.Fac_VenTDOCCLIGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Case Fac_VenTDOCCLI.AsInteger of
    1: Text := 'CUIT';
    2: Text := 'LC  ';
    3: Text := 'LE  ';
    4: Text := 'DNI ';
    5: Text := 'PAS ';
    6: Text := 'CI  ';
    7: Text := 'NIN ';
    8: Text := 'CUIL';
   else Text := IntToStr(Fac_VenTDOCCLI.AsInteger);
  End;
end;

procedure TfrmConversion.Fac_VenTIPOFACTURAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  try
    Text := GetText_Comprobante(Fac_VenTIPOFACTURA.AsInteger, False);
  except
    Text := Fac_VenTIPOFACTURA.AsString;
  end;
end;

procedure TfrmConversion.Fac_VenTIPOIVAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Case Fac_VenTIPOIVA.AsInteger of
    1 : Text := 'RI';
    2 : Text := 'RNI';
    3 : Text := 'CF';
    4 : Text := 'Ex';
    5 : Text := 'E/V';
    6 : Text := 'RMT';
    7 : Text := 'NC';
    8 : Text := 'BU';
    9 : Text := 'NR';
    10: Text := 'MS';
    11: Text := 'PCE';
    12: Text := 'PCS';
    else Text := Fac_VenTIPOIVA.AsString;
  End;
end;

procedure TfrmConversion.ClearFacClick(Sender: TObject);
var
  q: TMDOQuery;
begin
  if not trConversion.InTransaction then
    trConversion.StartTransaction;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('DELETE FROM TU_FACVEN ');
    try
      q.ExecSQL;
    except
      on E:Exception do
      begin
        mmPorDonde.Lines.Add('BORRANDO FACTURAS '+E.Message);
      end
    end;
    q.Close;
  finally
    q.Free;
  end;
  try
    trConversion.Commit;
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('BORRANDO FACURAS '+E.Message);
    end
  end;

  if not trConversion.InTransaction then
    trConversion.StartTransaction;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('DELETE FROM TU_ITEMSFV ');
    try
      q.ExecSQL;
    except
      on E:Exception do
      begin
        mmPorDonde.Lines.Add('BORRANDO ITEMS '+E.Message);
      end
    end;
    q.Close;
  finally
    q.Free;
  end;
  try
    trConversion.Commit;
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('BORRANDO ITEMS '+E.Message);
    end
  end;

  if not trConversion.InTransaction then
    trConversion.StartTransaction;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('DELETE FROM TU_MOVCTA ');
    try
      q.ExecSQL;
    except
      on E:Exception do
      begin
        mmPorDonde.Lines.Add('BORRANDO MOVCTA '+E.Message);
      end
    end;
    q.Close;
  finally
    q.Free;
  end;
  try
    trConversion.Commit;
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('BORRANDO MOVCTA '+E.Message);
    end
  end;

  if not trConversion.InTransaction then
    trConversion.StartTransaction;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('DELETE FROM TU_MOVTAR ');
    try
      q.ExecSQL;
    except
      on E:Exception do
      begin
        mmPorDonde.Lines.Add('BORRANDO MOVTAR '+E.Message);
      end
    end;
    q.Close;
  finally
    q.Free;
  end;

  try
    trConversion.Commit;
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('BORRANDO MOVTAR '+E.Message);
    end
  end;

  if not trConversion.InTransaction then
    trConversion.StartTransaction;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('DELETE FROM TU_PAGCTA ');
    try
      q.ExecSQL;
    except
      on E:Exception do
      begin
        mmPorDonde.Lines.Add('BORRANDO PAGCTA '+E.Message);
      end
    end;
    q.Close;
  finally
    q.Free;
  end;
  try
    trConversion.Commit;
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('BORRANDO PAGCTA '+E.Message);
    end
  end;
end;

procedure TfrmConversion.CreditosTDeudaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  A: String;
begin
  try
    A := CreditosTDeuda.AsString;
    Case UpCase(A[1]) of
      'I' : Text := 'Incobrable';
      'C' : Text := 'Cta. Cte.';
      'D' : Text := 'Documentada';
      'L' : Text := 'Legales';
      'M' : Text := 'Mutuales';
      'T' : Text := 'Tarjetas';
      'P' : Text := 'Disagro';
      'V' : Text := 'Cassab Ahun';
      'R' : Text := 'Dismar Rocal';
      'Z' : Text := 'Service';
       else Text := A;
    End;
  except
    Text := CreditosTDeuda.AsString;
  end;
end;

procedure TfrmConversion.CuotasTDeudaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  A: String;
begin
  try
    A := CuotasTDeuda.AsString;
    Case UpCase(A[1]) of
      'I' : Text := 'Incobrable';
      'C' : Text := 'Cta. Cte.';
      'D' : Text := 'Documentada';
      'L' : Text := 'Legales';
      'M' : Text := 'Mutuales';
      'T' : Text := 'Tarjetas';
      'P' : Text := 'Disagro';
      'V' : Text := 'Cassab Ahun';
      'R' : Text := 'Dismar Rocal';
      'Z' : Text := 'Service';
       else Text := A;
    End;
  except
    Text := CuotasTDeuda.AsString;
  end;
end;

procedure TfrmConversion.btnEmpleadosClick(Sender: TObject);
begin
  try
    DBIsam_Pasa_Varios;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Pasa Empleados '+E.Message);
    end
  end;
end;

procedure TfrmConversion.btnEngancharBycliClick(Sender: TObject);
begin
  DClientes.IndexFieldNames := 'Nombre';

  FacV.Filtered :=  False;
  FacV.IndexFieldNames := 'IdFactura;FechaF;TipoFact;Serie';
  FacV.MasterSource := dsClientes;
  FacV.MasterFields := 'Documento';

  ItemsV.IndexFieldNames := 'IdFactura;TipoFact';
  ItemsV.MasterSource := dsFacV;
  ItemsV.MasterFields := 'IdFactura;TipoFact';

  if DClientes.Active then
    pnlBtnConv.Caption := 'Abierto'
  else
    pnlBtnConv.Caption := 'Cerrado';

  Creditos.IndexFieldNames := 'IdFactura;IdCliente;FechaF';
  Creditos.MasterSource := dsFacV;
  Creditos.MasterFields := 'IdFactura;IdCliente';

  Cuotas.IndexFieldNames := 'IdFactura;IdCliente;NroCuota';
  Cuotas.MasterSource := dsCreditos;
  Cuotas.MasterFields := 'IdFactura;IdCliente';

  Pagos.IndexFieldNames := 'IdFactura;IdCliente;NroCuota';
  Pagos.MasterSource := dsCuotas;
  Pagos.MasterFields := 'IdCliente;IdFactura';
end;

procedure TfrmConversion.btnEngancharClick(Sender: TObject);
begin
  FacV.Filtered :=  False;
  FacV.IndexFieldNames := 'FechaF;Nombre;TipoFact;Serie';

  DClientes.IndexFieldNames := 'Nombre';
  DClientes.MasterSource := dsFacV;
  DClientes.MasterFields := 'Nombre';

  ItemsV.IndexFieldNames := 'IdFactura;TipoFact';
  ItemsV.MasterSource := dsFacV;
  ItemsV.MasterFields := 'IdFactura;TipoFact';

  Creditos.IndexFieldNames := 'IdFactura;IdCliente;FechaF';
  Creditos.MasterSource := dsFacV;
  Creditos.MasterFields := 'IdFactura;IdCliente';

  Cuotas.IndexFieldNames := 'IdFactura;IdCliente;NroCuota';
  Cuotas.MasterSource := dsFacV;
  Cuotas.MasterFields := 'IdFactura;IdCliente';

  Pagos.IndexFieldNames := 'IdFactura;IdCliente;NroCuota';
  Pagos.MasterSource := dsCreditos;
  Pagos.MasterFields := 'IdFactura;IdCliente';
end;

procedure TfrmConversion.btnDesengancharClick(Sender: TObject);
begin
  FacV.Filter := '';
  FacV.Filtered := False;
  FacV.IndexFieldNames := 'FechaF;IdCliente;TipoFact';

  ItemsV.IndexFieldNames := 'IdFactura';
  ItemsV.MasterSource := nil;
  ItemsV.MasterFields := '';

  DClientes.IndexFieldNames := 'Nombre';
  DClientes.MasterSource := nil;
  DClientes.MasterFields := '';

  Creditos.IndexFieldNames := 'IdCliente;IdFactura';
  Creditos.MasterSource := nil;
  Creditos.MasterFields := '';

  Cuotas.IndexFieldNames := 'IdFactura;IdCliente';
  Cuotas.MasterSource := nil;
  Cuotas.MasterFields := '';

  Pagos.IndexFieldNames := 'IdCliente;IdFactura;NroCuota';
  Pagos.MasterSource := nil;
  Pagos.MasterFields := '';
end;

procedure TfrmConversion.btnFacVFiltroClick(Sender: TObject);
begin
  if (Trim(edtTxtfiltro.Text) > Vacio) then
  begin
    FacV.Filtered :=  False;
    try
      FacV.Filter := edtTxtFiltro.Text;
      FacV.Filtered := True;
    except
      FacV.Filtered := False;
    end;
  end;
end;

procedure TfrmConversion.btnFiltrarFacV1Click(Sender: TObject);
begin
  if (not FacV.IsEmpty) and
     (edtFacVDesde.Date <= edtFacVHasta.Date) then
  begin
    FacV.Filtered :=  False;
    try
      FacV.Filter := Format('(FechaF >= %s) And (FechaF <= %s) ',
                     [QuotedStr(FormatDateTime('mm/dd/yyyy', edtFacVDesde.Date)),
                      QuotedStr(FormatDateTime('mm/dd/yyyy', edtFacVHasta.Date))]);
      FacV.Filtered := True;
    except
      FacV.Filtered := False;
    end;
  end;
end;

procedure TfrmConversion.btnFiltrarFacV2Click(Sender: TObject);
begin
  if (not FacV.IsEmpty) and
     (edtFiltroFVEntidad.IntValue > 0) then
  begin
    FacV.Filtered :=  False;
    FacV.Filter := Format('IdCliente = %d ', [edtFiltroFVEntidad.IntValue]);
    FacV.Filtered :=  True;
  end;
end;

procedure TfrmConversion.DClientesTIPOIVAGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Case DClientesTIPOIVA.AsInteger of
    1 : Text := 'RI';
    2 : Text := 'RNI';
    3 : Text := 'CF';
    4 : Text := 'Ex';
    5 : Text := 'E/V';
    6 : Text := 'RMT';
    7 : Text := 'NC';
    8 : Text := 'BU';
    9 : Text := 'NR';
    10: Text := 'MS';
    11: Text := 'PCE';
    12: Text := 'PCS';
    else Text := DClientesTIPOIVA.AsString;
  end;
end;

procedure TfrmConversion.D_ClientesTIPODOCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Case D_ClientesTIPODoc.AsInteger of
    1: Text := 'CUIT';
    2: Text := 'LC';
    3: Text := 'LE';
    4: Text := 'DNI';
    5: Text := 'PAS';
    6: Text := 'CI';
    7: Text := 'NIN';
    8: Text := 'CUIL';
    else Text := D_ClientesTIPODoc.AsString;
  end;
end;

procedure TfrmConversion.ExportarClientesClick(Sender: TObject);
begin
  if not DClientes.IsEmpty then
  begin
    IyC_Exp.DataSet := DClientes;
    IyC_Exp.Select;
  end;
end;

procedure TfrmConversion.ExportarComprobantesClick(Sender: TObject);
begin
  if not FacV.IsEmpty then
  begin
    IyC_Exp.DataSet := FacV;
    IyC_Exp.Select;
  end;
end;

procedure TfrmConversion.ExportarCreditosClick(Sender: TObject);
begin
  if not Creditos.IsEmpty then
  begin
    IyC_Exp.DataSet := Creditos;
    IyC_Exp.Select;
  end;
end;

procedure TfrmConversion.ExportarCuotasClick(Sender: TObject);
begin
  if not Cuotas.IsEmpty then
  begin
    IyC_Exp.DataSet := Cuotas;
    IyC_Exp.Select;
  end;
end;

procedure TfrmConversion.ExportarPagosClick(Sender: TObject);
begin
  if not Pagos.IsEmpty then
  begin
    IyC_Exp.DataSet := Pagos;
    IyC_Exp.Select;
  end;
end;

procedure TfrmConversion.ExportarProductosClick(Sender: TObject);
begin
  if not ItemsV.IsEmpty then
  begin
    IyC_Exp.DataSet := ItemsV;
    IyC_Exp.Select;
  end;
end;

procedure TfrmConversion.DClientesTIPODOCGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Case DClientesTIPODoc.AsInteger of
    1: Text := 'CUIT';
    2: Text := 'LC  ';
    3: Text := 'LE  ';
    4: Text := 'DNI ';
    5: Text := 'PAS ';
    6: Text := 'CI  ';
    7: Text := 'NIN ';
    8: Text := 'CUIL';
    else Text := DClientesTIPODoc.AsString;
  end;
end;

procedure TfrmConversion.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConversion.btnSaveAllItemsFacClick(Sender: TObject);
var
  q: TMDOQuery;
  i,j,t: Integer;

begin
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trSave_TXT;
    mmPorDonde.Lines.Add('Calculando...');
    q.SQL.Add('Select NroFactura, IdFactura, IdSucursal, IdPuntoVenta ');
    q.SQL.Add('From MISC_REP_CANTARTIC ');
    q.Open;
    i := 0;
    j := 1;
    t := 0;
    if not q.IsEmpty then
    begin
      mmPorDonde.Lines.Add('Procesando...');
      DBIsam_ConnectDB(1);
      q.First;
      while not q.Eof do
      begin
        if j = 1 then
        begin
          if not trConversion.InTransaction then
            trConversion.StartTransaction;
        end;
        DBIsam_Pasa_Com_Ventas(q.FieldByName('IdFactura').AsInteger,
                               q.FieldByName('IdSucursal').AsInteger,
                               q.FieldByName('IdPuntoVenta').AsInteger);
        Inc(j);
        if j = 10 then
        begin
          t := t + j;
          mmPorDonde.Lines.Add(Format('Grabando %d ',[t]));
          j := 1;
          try
            trConversion.Commit;
          except
            on E:Exception do
            begin
              trConversion.Rollback;
              mmPorDonde.Lines.Add(E.Message);
            end
          end;
        end;
        q.Next;
        Inc(i);
        mmPorDonde.Lines.Add(Format('Fº %s %d ',[q.FieldByName('NroFactura').AsString, i]));
      end;
    end;
    q.Close;
    mmPorDonde.Lines.Add('Fin');
    DBIsam_ConnectDB(2);
  finally
    q.Free;
  end;
end;

procedure TfrmConversion.btnSaveItemsFacClick(Sender: TObject);
begin
  DBIsam_ConnectDB(1);
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    DBIsam_Pasa_Com_Ventas(edtIdFac.IntValue, edtIdSuc.IntValue, edtIdPto.IntValue);
    trConversion.Commit;
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add(E.Message);
    end
  end;
  mmPorDonde.Lines.Add('Ok');
  DBIsam_ConnectDB(2);
end;

function TfrmConversion.LeeTXT_Actualizador(IdB: Integer; PasoTXT: String): String;
begin
  if (PasoTxt > Vacio) then
  begin
    CarDoc(PasoTxt+'\CarDoc.Txt', False);
    CtaDoc(PasoTxt+'\CtaDoc.txt', False);
    PagDoc(PasoTxt+'\PagDoc.Txt', False);
    MaeFac(PasoTxt+'\MaeFac.Txt', False);
    MovFac(PasoTxt+'\MovFac.Txt', False);

    SaveFac_DesdeTxt(False);
    SaveCre_DesdeTxt(False);

    gFacVen.DataSource  := nil;
    gItemsFV.DataSource := nil;
    gMovCred.DataSource := nil;
    gMovCtas.DataSource := nil;
    gRecibos.DataSource := nil;

    D_Clientes.Close;
    Fac_Ven.Close;
    Items_FV.Close;
    MovCred.Close;
    MovCtas.Close;
    PagCta.Close;

    D_Clientes.Open;
    Fac_Ven.Open;
    Items_FV.Open;
    MovCred.Open;
    MovCtas.Open;
    PagCta.Open;

    Save_FacTxt(EncodeDate(2000, 1, 1), EncodeDate(2008,11, 2), False);
  end;end;

procedure TfrmConversion.btnTodoEl_ProcesoClick(Sender: TObject);
begin
  if (PasoTxt > Vacio) then
  begin
    gFacV.DataSource  := nil;
    gProds.DataSource := nil;
    gCred.DataSource := nil;
    gCuotas.DataSource := nil;
    gPagos.DataSource := nil;

    CarDoc(PasoTxt+'\CarDoc.Txt', True);
    CtaDoc(PasoTxt+'\CtaDoc.txt', True);
    PagDoc(PasoTxt+'\PagDoc.Txt', True);
    MaeFac(PasoTxt+'\MaeFac.Txt', True);
    MovFac(PasoTxt+'\MovFac.Txt', True);

    SaveFac_DesdeTxt(True);
    SaveCre_DesdeTxt(True);

    gFacVen.DataSource  := nil;
    gItemsFV.DataSource := nil;
    gMovCred.DataSource := nil;
    gMovCtas.DataSource := nil;
    gRecibos.DataSource := nil;

    D_Clientes.Close;
    Fac_Ven.Close;
    Items_FV.Close;
    MovCred.Close;
    MovCtas.Close;
    PagCta.Close;

    D_Clientes.Open;
    Fac_Ven.Open;
    Items_FV.Open;
    MovCred.Open;
    MovCtas.Open;
    PagCta.Open;

    Save_FacTxt(EncodeDate(2000, 1, 1), EncodeDate(2008,11, 2), True);
  end;
end;

procedure TfrmConversion.btnOpenTablasClick(Sender: TObject);
begin
  edtTXTTUDesde.Date := EncodeDate(2000, 1, 1);
  edtTXTTUHasta.Date := EncodeDate(2008,11,30);
  D_Clientes.Open;
  Fac_Ven.Open;
  Items_FV.Open;
  MovCred.Open;
  MovCtas.Open;
  PagCta.Open;
end;

function TfrmConversion.DoPagoCuota(DatosPago: TDatosPagos; ItemsRec: TBody_Fiscal): Boolean;
Const
  Up_Cred = 'UpDate MovTar Set CuotaPag = CuotaPag + 1, VenCuota =:VenCuota, '+
            '              NroRecPago =:NroRecibo, FechaIS =:FechaIS, UltimoPago =:UltimoPago '+
            'Where IdMov =:IdMov And IdSucursal =:IdSucursal And IdTarjeta =:IdTarjeta ';

  Up_Cuota= 'UpDate MovCuotas Set NroRecPago =:NroRecibo, FechaP =:FecPag, MontoDebito =:MtoDeb, '+
            '       NroNotaDeb =:NotaDeb, IdRecibo =:IdRecibo, IdSucRec =:IdSucRec, Estado = 1, '+
            '       FechaIS =:FechaIS '+
            'Where IdMovCred =:IdMov And IdSucursal =:IdSuc And NroCuota =:NroCta and IdCliente =:IdCliente ';

  SaveRec = 'Insert InTo '+
            'FacVen(IdFactura, IdSucursal, IdPuntoVenta, Sector, DiaHora, TipoFactura, Situacion, FechaF, '+
            '       FechaI, PuntoVta, NroFactura, CompRef, IdCompRef, Cliente, TipoIva, CantArtic, Impresa, '+
            '       IdMotNC, Bonificacion, Neto, Exento, NoComputables, IvaAlicuota1, IvaAlicuota2, Total, '+
            '       IdSubDep, Contado, Tarjeta, IdTarjeta, NroCtas, Tickets, CtaCte, Cheque, OtrosPagos, '+
            '       Senas, CobSenas, Usuario, Empleado, State, FechaIS) '+
            'Values(:IdFactura, :IdSucursal, :IdPuntoVenta, :Sector, :DiaHora, :TipoFactura, :Situacion, :FechaF, '+
            '       :FechaI, :PuntoVta, :NroFactura, :CompRef, :IdCompRef, :Cliente, :TipoIva, :CantArtic, :Impresa, '+
            '       :IdMotNC, :Bonificacion, :Neto, :Exento, :NoComputables, :IvaAlicuota1, :IvaAlicuota2, :Total, '+
            '       :IdSubDep, :Contado, :Tarjeta, :IdTarjeta, :NroCtas, :Tickets, :CtaCte, :Cheque, :OtrosPagos, '+
            '       :Senas, :CobSenas, :Usuario, :Empleado, :State, :FechaIS) ';

  SaveCta = 'Insert InTo '+
            'ItemsFV(IdFactura, IdSucursal, IdPuntoVenta, IdItem, IdArticulo, Talle, SubDet, '+
            '        FechaF, ValorLista, NroCtas, Cantidad, Descuento, PrcBonificacion, PrecioNeto, PrecioFinal, '+
            '        PrecioTotal, Exento, ImpInt, IvaIn, PrecioCosto, ValorLista, IdAlcIva, AlicuotaIva, IdSubDep, '+
            '        IdAlcIB, AlcIB, IngBto, Oferta, State) '+
            'Values(:IdFactura, :IdSucursal, :IdPuntoVenta, :IdItem, :IdArticulo, :Talle, :SubDet, '+
            '       :FechaF, :ValorLista, :NroCtas, :Cantidad, :Descuento, :PrcBonificacion, :PrecioNeto, :PrecioFinal, '+
            '       :PrecioTotal, :Exento, :ImpInt, :IvaIn, :PrecioCosto, :ValorLista, :IdAlcIva, :AlicuotaIva, :IdSubDep, '+
            '       :IdAlcIB, :AlcIB, :IngBto, :Oferta, :State) ';

var
  AuxRec: St13;
  AuxSen: Currency;
  NumItems: SmallInt;
begin
  Result := False;
  AuxSen := 0;
  try
    if not trSave_Txt.InTransaction then
      trSave_Txt.StartTransaction;

    // Actualizar MovTar pago cuota

    // DatosPago.IdComprobante := Get_Ultimos(FacVenta);
    for NumItems := 1 to DatosPago.CuotasPagadas do
    begin
      qSaveComp.Close;
      qSaveComp.Sql.Clear;
      qSaveComp.Transaction := trSave_Txt;
      qSaveComp.SQL.Text := Up_Cred;
      qSaveComp.ParamByName('FechaIS').Clear;
      qSaveComp.ParamByName('NroRecibo').AsString := DatosPago.NroComprobante;
      qSaveComp.ParamByName('VenCuota').AsDate := DatosPago.FechaOr;
      qSaveComp.ParamByName('IdMov').AsInteger := ItemsRec[NumItems].IdSucursal;
      qSaveComp.ParamByName('IdSucursal').AsInteger := ItemsRec[NumItems].IdSucursal;
      qSaveComp.ParamByName('IdTarjeta').AsInteger := DatosPago.IdCompRef;
      qSaveComp.ParamByName('UltimoPago').AsDate := DatosPago.FechaOp;
      qSaveComp.ExecSQL;

      // Pagar Cuota
      qSaveComp.Close;
      qSaveComp.Sql.Clear;
      qSaveComp.Transaction := trSave_Txt;
      qSaveComp.SQL.Text := Up_Cuota;
      qSaveComp.ParamByName('NroRecibo').AsString := DatosPago.NroComprobante;
      qSaveComp.ParamByName('FecPag').AsDate := DatosPago.FechaOp;
      qSaveComp.ParamByName('MtoDeb').AsCurrency := ItemsRec[NumItems].PrecioPublico;
      qSaveComp.ParamByName('NotaDeb').AsString := '0000-00000000';
      qSaveComp.ParamByName('IdMov').AsInteger :=  ItemsRec[NumItems].IdSector;
      qSaveComp.ParamByName('IdSuc').AsInteger :=  ItemsRec[NumItems].IdSucursal;
      qSaveComp.ParamByName('NroCta').AsInteger := ItemsRec[NumItems].Cuota;
      qSaveComp.ParamByName('IdRecibo').AsInteger := DatosPago.IdComprobante;
      qSaveComp.ParamByName('IdSucRec').AsInteger := DatosPago.IdSucursal;
      qSaveComp.ParamByName('IdCliente').AsInteger := DatosPago.IdEntidad;
      qSaveComp.ParamByName('FechaIS').Clear;
      qSaveComp.ExecSQL;
    end;

    //Grabar Recibo X
    qSaveComp.Close;
    qSaveComp.Sql.Clear;
    qSaveComp.Transaction := trSave_Txt;
    qSaveComp.SQL.Text := SaveRec;
    qSaveComp.ParamByName('IdFactura').AsInteger := DatosPago.IdComprobante;
    qSaveComp.ParamByName('IdSucursal').AsInteger := DatosPago.IdSucursal;
    qSaveComp.ParamByName('IdPuntoVenta').AsInteger := IdSalesPoint;
    qSaveComp.ParamByName('Sector').AsInteger := SectorSistema;
    qSaveComp.ParamByName('DiaHora').AsDateTime := Now;
    qSaveComp.ParamByName('TipoFactura').AsInteger := DatosPago.TipoComprobante;
    qSaveComp.ParamByName('FechaF').AsDate := DatosPago.FechaOp;
    qSaveComp.ParamByName('FechaI').AsDate := DatosPago.FechaOr;
    qSaveComp.ParamByName('PuntoVta').AsInteger := StrToInt(Copy(DatosPago.NroComprobante, 1, 4));
    qSaveComp.ParamByName('NroFactura').AsString := DatosPago.NroComprobante;
    qSaveComp.ParamByName('CompRef').AsString := '0000-00000000';
    qSaveComp.ParamByName('IdCompRef').AsInteger := DatosPago.IdMovTar;
    qSaveComp.ParamByName('Cliente').AsInteger := DatosPago.IdEntidad;
    qSaveComp.ParamByName('TipoIva').AsInteger := 0;
    qSaveComp.ParamByName('CantArtic').AsInteger := DatosPago.CuotasPagadas;
    qSaveComp.ParamByName('Impresa').AsInteger := 1;
    qSaveComp.ParamByName('IdMotNC').AsInteger := 0;
    qSaveComp.ParamByName('Bonificacion').AsCurrency := DatosPago.PagosDcto;
    qSaveComp.ParamByName('Neto').AsCurrency := 0;
    qSaveComp.ParamByName('Exento').AsCurrency := 0;
    qSaveComp.ParamByName('NoComputables').AsCurrency := 0;
    qSaveComp.ParamByName('IvaAlicuota1').AsCurrency := 0;
    qSaveComp.ParamByName('IvaAlicuota2').AsCurrency := 0;
    qSaveComp.ParamByName('Situacion').AsInteger := 0;
    qSaveComp.ParamByName('Total').AsCurrency := DatosPago.TotalPagos;
    qSaveComp.ParamByName('IdSubDep').AsInteger := 0;
    qSaveComp.ParamByName('Contado').AsCurrency := DatosPago.PagosContado;
    qSaveComp.ParamByName('Tickets').AsCurrency := DatosPago.PagosBonosTk;
    qSaveComp.ParamByName('Tarjeta').AsCurrency := DatosPago.PagosTarjeta.TotalTarjeta;
    qSaveComp.ParamByName('IdTarjeta').AsInteger := DatosPago.PagosTarjeta.Movimientos[1].IdTarMut;
    qSaveComp.ParamByName('NroCtas').AsInteger := DatosPago.CuotasPagadas;
    qSaveComp.ParamByName('CtaCte').AsCurrency  := 0;
    qSaveComp.ParamByName('Cheque').AsCurrency  := DatosPago.PagosValores.TotalValores;
    qSaveComp.ParamByName('OtrosPagos').AsCurrency := 0;
    qSaveComp.ParamByName('Senas').AsCurrency := 0;

    if (DatosPago.PagosSena + DatosPago.SdoAFavor) >
       (DatosPago.TotalPagos - (DatosPago.PagosContado+DatosPago.PagosTarjeta.TotalTarjeta+DatosPago.PagosBonosTk+DatosPago.PagosValores.TotalValores)) then
    begin
      qSaveComp.ParamByName('CobSenas').AsCurrency := (DatosPago.TotalPagos - (DatosPago.PagosContado+DatosPago.PagosTarjeta.TotalTarjeta+DatosPago.PagosBonosTk+DatosPago.PagosValores.TotalValores));
      AuxSen := (DatosPago.TotalPagos - (DatosPago.PagosContado+DatosPago.PagosTarjeta.TotalTarjeta+DatosPago.PagosBonosTk+DatosPago.PagosValores.TotalValores));
    end
    else begin
      if (DatosPago.PagosSena + DatosPago.SdoAFavor) > 0 then
      begin
        qSaveComp.ParamByName('CobSenas').AsCurrency := (DatosPago.PagosSena + DatosPago.SdoAFavor);
        AuxSen := (DatosPago.PagosSena + DatosPago.SdoAFavor);
      end
      else begin
        qSaveComp.ParamByName('CobSenas').AsCurrency := 0;
        AuxSen := 0;
      end;
    end;
    qSaveComp.ParamByName('Usuario').AsInteger := Usuario;
    qSaveComp.ParamByName('Empleado').AsInteger := DatosPago.IdVendedor;
    qSaveComp.ParamByName('State').AsInteger := 0;
    qSaveComp.ParamByName('FechaIS').Clear;
    qSaveComp.ExecSQL;
    DatosPago.PagosSena := AuxSen;

    try
      NumItems := 1;
      for NumItems := 1 to DatosPago.CuotasPagadas do
      begin
        qSaveComp.Close;
        qSaveComp.Sql.Clear;
        qSaveComp.SQL.Text := SaveCta;
        qSaveComp.ParamByName('IdFactura').AsInteger := DatosPago.IdComprobante;
        qSaveComp.ParamByName('IdSucursal').AsInteger := DatosPago.IdSucursal;
        qSaveComp.ParamByName('IdPuntoVenta').AsInteger := IdSalesPoint;
        qSaveComp.ParamByName('IdItem').AsInteger := NumItems;
        qSaveComp.ParamByName('IdArticulo').AsInteger := ItemsRec[NumItems].IdProducto;
        qSaveComp.ParamByName('Talle').AsInteger := ItemsRec[NumItems].IdSector;
        qSaveComp.ParamByName('SubDet').AsString := '';
        qSaveComp.ParamByName('FechaF').AsDate := DatosPago.FechaOp;
        qSaveComp.ParamByName('NroCtas').AsInteger := ItemsRec[NumItems].Cuota;
        qSaveComp.ParamByName('Cantidad').AsFloat := 1;
        qSaveComp.ParamByName('Descuento').AsCurrency := 0;
        qSaveComp.ParamByName('PrcBonificacion').AsCurrency := 0;
        qSaveComp.ParamByName('PrecioNeto').AsCurrency :=  0;
        qSaveComp.ParamByName('PrecioFinal').AsCurrency := ItemsRec[NumItems].PrecioFinal;
        qSaveComp.ParamByName('PrecioTotal').AsCurrency := ItemsRec[NumItems].PrecioTotal;
        qSaveComp.ParamByName('Exento').AsCurrency := 0;
        qSaveComp.ParamByName('ImpInt').AsCurrency := 0;
        qSaveComp.ParamByName('IvaIn').AsCurrency := 0;
        qSaveComp.ParamByName('PrecioCosto').AsCurrency := ItemsRec[NumItems].PrecioCosto;
        qSaveComp.ParamByName('ValorLista').AsCurrency := ItemsRec[NumItems].PrecioLista;
        qSaveComp.ParamByName('IdAlcIva').AsInteger := 0;
        qSaveComp.ParamByName('AlicuotaIva').AsFloat := 0;
        qSaveComp.ParamByName('IdSubDep').AsInteger := 0;
        qSaveComp.ParamByName('IdAlcIB').AsInteger := 0;
        qSaveComp.ParamByName('AlcIB').AsFloat := 0;
        qSaveComp.ParamByName('IngBto').AsCurrency:= 0;
        qSaveComp.ParamByName('Oferta').AsInteger := Falso;
        qSaveComp.ParamByName('State').AsInteger := Falso;
        // Grabar Items
        qSaveComp.ExecSQL;
      end;
    except
      on E:Exception do
        raise EUsuario.Create('Los Items del Recibo Nº '+Factura.NroFactura+' no se pueden Grabar. '+E.Message);
    end;
    trSave_Txt.Commit;
    Result := True;
  except
    on E: Exception do
    begin
      trSave_Txt.Rollback;
      Result := False;
      raise EUsuario.Create('El Recibo Nº '+DatosPago.NroComprobante+' no se GRABO. ' + E.Message);
    end;
  end;
end;

function TfrmConversion.Put_Cliente(IdCli: Integer; Nom, Dom, Loc, Doc: String; TDoc, TIva: SmallInt): Integer;

Const Alta = 'INSERT INTO CLIENTES '+
             '(IDCLIENTE, IDSUCURSAL, NOMBRE, DIRECCION, LOCALIDAD, PROVINCIA, '+
             ' CODPOSTAL, TELEFONOS, TELFAX, TIPOIVA, TIPODOC, DOCUMENTO, '+
             ' INGBRUTOS, CODBUSCLI, TIPOCLI) '+
             'VALUES '+
             '(:IDCLIENTE, :IDSUCURSAL, :NOMBRE, :DIRECCION, :LOCALIDAD, :PROVINCIA, '+
             ' :CODPOSTAL, :TELEFONOS, :TELFAX, :TIPOIVA, :TIPODOC, :DOCUMENTO, '+
             ' :INGBRUTOS, :CODBUSCLI, :TIPOCLI) ';

Const MaxC = 'Select Max(IdCliente) As U '+
             'From Clientes Where IdSucursal = :S ';

var
  q: TMDOQuery;
  r,u: Integer;
  v: String;
begin
  r := Impersonal;
  if r <= Impersonal then
  begin
    try
      v := '%'+Copy(Doc, 1, 13)+'%';
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trSave_TXT;
        q.SQL.Add('Select IdCliente ');
        q.SQL.Add('From Clientes ');
        q.SQL.Add('Where Documento like :N ');
        q.ParamByName('N').AsString := v;
        q.Open;
        r := q.FieldByName('IdCliente').AsInteger;
        q.Close;
      finally
        q.Free;
      end;
    except
      r := Impersonal;
    end;
  end;

  if r <= Impersonal then
  begin
    try
      try
        v := IntToStr(IdCli);
      except
        v := Vacio;
      end;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trSave_TXT;
        q.SQL.Add('Select IdCliente ');
        q.SQL.Add('From Clientes ');
        q.SQL.Add('Where CodBusCli =:N ');
        q.ParamByName('N').AsString := Trim(v);
        q.Open;
        r := q.FieldByName('IdCliente').AsInteger;
        q.Close;
      finally
        q.Free;
      end;
    except
      r := Impersonal;
    end;
  end;

  if r <= Impersonal then
  begin
    try
      v := Trim('%'+Up_Case(Copy(Nom, 1, 28))+'%');
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trSave_TXT;
        q.SQL.Add('Select IdCliente ');
        q.SQL.Add('From Clientes ');
        q.SQL.Add('Where Nombre like :N ');
        q.ParamByName('N').AsString := v;
        q.Open;
        r := q.FieldByName('IdCliente').AsInteger;
        q.Close;
      finally
        q.Free;
      end;
    except
      r := Impersonal;
    end;
  end;

  if r <= Impersonal then
  begin
    if (Trim(Nom) <> 'IMPERSONAL') And
       (Trim(Nom) > Vacio) then
    begin
      try
        if not trSave_TXT.InTransaction then
           trSave_TXT.StartTransaction;
        try
          q := TMDOQuery.Create(nil);
          q.Database := dbConversion;
          q.Transaction := trSave_TXT;
          q.SQL.Text := MaxC;
          q.ParamByName('S').AsInteger := IdBranch;
          q.Open;
          u := q.FieldByName('U').AsInteger + 1;
          q.Close;
        finally
          q.Free;
        end;

        try
          q := TMDOQuery.Create(nil);
          q.Database := dbConversion;
          q.Transaction := trSave_TXT;
          q.SQL.Text := Alta;
          q.ParamByName('IDCLIENTE').AsInteger := u;
          q.ParamByName('IDSUCURSAL').AsInteger := IdBranch;
          q.ParamByName('NOMBRE').AsString := Copy(Up_Case(Nom), 1, 30);
          q.ParamByName('DIRECCION').AsString := Copy(Up_Case(Dom), 1, 30);
          q.ParamByName('LOCALIDAD').AsString := Copy(Up_Case(Loc), 1, 30);
          q.ParamByName('PROVINCIA').AsString := Vacio;
          q.ParamByName('CODPOSTAL').AsString := Vacio;
          q.ParamByName('TELEFONOS').AsString := Vacio;
          q.ParamByName('TELFAX').AsString := Vacio;
          q.ParamByName('TIPOIVA').AsInteger := TIva;
          q.ParamByName('TIPODOC').AsInteger := TDoc;
          q.ParamByName('DOCUMENTO').AsString := Doc;
          q.ParamByName('INGBRUTOS').AsString := Vacio;
          q.ParamByName('CODBUSCLI').AsString := IntToStr(IdCli);
          q.ParamByName('TIPOCLI').AsInteger := 0;
          q.ExecSql;
        finally
          q.Free;
        end;
        Result := u;
        r := u;
        trSave_TXT.Commit;
      except
        on E:Exception do
        begin
          Result := Impersonal;
          trSave_TXT.Rollback;
          mmSave.Lines.Add('Error cliente '+Nom+' no se grabo');
        end;
      end;
    end;
  end;

  if r <= Impersonal then
  begin
    if Trim(Doc) > Vacio then
    begin
      try
        if not trSave_TXT.InTransaction then
           trSave_TXT.StartTransaction;
        try
          q := TMDOQuery.Create(nil);
          q.Database := dbConversion;
          q.Transaction := trSave_TXT;
          q.SQL.Text := MaxC;
          q.ParamByName('S').AsInteger := IdBranch;
          q.Open;
          u := q.FieldByName('U').AsInteger + 1;
          q.Close;
        finally
          q.Free;
        end;

        try
          q := TMDOQuery.Create(nil);
          q.Database := dbConversion;
          q.Transaction := trSave_TXT;
          q.SQL.Text := Alta;
          q.ParamByName('IDCLIENTE').AsInteger := u;
          q.ParamByName('IDSUCURSAL').AsInteger := IdBranch;
          q.ParamByName('NOMBRE').AsString := Copy(Up_Case(Nom), 1, 30);
          q.ParamByName('DIRECCION').AsString := Copy(Up_Case(Dom), 1, 30);
          q.ParamByName('LOCALIDAD').AsString := Copy(Up_Case(Loc), 1, 30);
          q.ParamByName('PROVINCIA').AsString := Vacio;
          q.ParamByName('CODPOSTAL').AsString := Vacio;
          q.ParamByName('TELEFONOS').AsString := Vacio;
          q.ParamByName('TELFAX').AsString := Vacio;
          q.ParamByName('TIPOIVA').AsInteger := TIva;
          q.ParamByName('TIPODOC').AsInteger := TDoc;
          q.ParamByName('DOCUMENTO').AsString := Doc;
          q.ParamByName('INGBRUTOS').AsString := Vacio;
          q.ParamByName('CODBUSCLI').AsString := IntToStr(IdCli);
          q.ParamByName('TIPOCLI').AsInteger := 0;
          q.ExecSql;
        finally
          q.Free;
        end;
        Result := u;
        r := u;
        trSave_TXT.Commit;
      except
        on E:Exception do
        begin
          Result := Impersonal;
          trSave_TXT.Rollback;
          mmSave.Lines.Add('Error cliente '+Doc+' no se grabo');
        end;
      end;
    end;
    if r <= Impersonal then
      Result := Impersonal
    else
      Result := r;
  end
  else
    Result := r;
end;

procedure TfrmConversion.btnActuDBIsamComprasClick(Sender: TObject);
begin
  mmPorDonde.Lines.Add('Actulización Compras '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Actualiza_Compras;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Actualizacion Compras '+E.Message);
    end
  end;
  mmPorDonde.Lines.Add('Actulización CC_OP '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Pasa_CC_OP;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Actualizacion CC_OP '+E.Message);
    end
  end;
  mmPorDonde.Lines.Add('Actulización Bancos '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Pasa_Bcos;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Actualizacion Bancos '+E.Message);
    end
  end;
end;

procedure TfrmConversion.btnActArtEspClick(Sender: TObject);
var
  q, t: TMDOQuery;
  Esta, CantTran, Save_Tot: Integer;
begin
  DBIsam_ConnectDB(1);
  mmPorDonde.Lines.Add('Productos: Precios Especiales');
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM ARTPREESP ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO Pr. Especiales '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
    mmPorDonde.Lines.Add('Clear Pr.Esp. ');
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('Pre. Especiales '+E.Message);
      raise;
    end
  end;

  ArtPreEsp.Open;
  ArtPreEsp.First;
  CantTran := 1;
  Save_Tot := 0;
  While not ArtPreEsp.Eof do
  begin
    if CantTran >= 10 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación ArtPreEsp '+ IntToStr(Save_Tot));
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('ArtPreEsp '+E.Message);
          raise;
        end
      end;
      CantTran := 1;
    end;

    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO ARTPREESP ');
      q.SQL.Add(' (IDARTICULO, IDSUCURSAL, PRECIOESP, DURACION, FECHAALTA) ');
      q.SQL.Add('VALUES ');
      q.SQL.Add(' (:IDARTICULO, :IDSUCURSAL, :PRECIOESP, :DURACION, :FECHAALTA) ');
      q.ParamByName('IDARTICULO').AsInteger := ArtPreEspIdArticulo.AsInteger;
      q.ParamByName('IDSUCURSAL').AsInteger := ArtPreEspIdSucursal.AsInteger;
      q.ParamByName('PRECIOESP').AsCurrency := ArtPreEspPrecio.AsCurrency;
      q.ParamByName('DURACION').AsDate := ArtPreEspHasta.AsDateTime;
      q.ParamByName('FECHAALTA').AsDate := EncodeDate(2007, 1, 1);
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Pre. Especial '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    ArtPreEsp.Next;
    Inc(CantTran);
  end;
  ArtPreEsp.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación ArtPreEsp '+TimeToStr(Time));
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('ArtPreEsp '+E.Message);
        raise;
      end
    end;
  end;
end;

procedure TfrmConversion.btnActArtsClick(Sender: TObject);
begin
  mmPorDonde.Lines.Add('Actulización Productos '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Actualiza_Arts;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Actualizacion Prods '+E.Message);
    end
  end;
end;

procedure TfrmConversion.btnActSoloComprasClick(Sender: TObject);
begin
  mmPorDonde.Lines.Add('Actulización Compras '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Actualiza_Compras;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Actualizacion Compras '+E.Message);
    end
  end;
end;

procedure TfrmConversion.btnActualizarSuc_DbIsamClick(Sender: TObject);
begin
  mmPorDonde.Lines.Add('Actulización Sucursal '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Actualizar_Sucursal;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Actualizacion Suc '+E.Message);
    end
  end;
end;

procedure TfrmConversion.Save_FacTxt(Desde, Hasta: TDate; Con_Show: Boolean);
var
  AuxCod, CantSave, CantSaveTot : Integer;
  f, m: TMDOQuery;

  function Get_Art(C: String; var A: TDatos_Art): Integer;
  var i: Integer;
  begin
    Result := NoEncontrado;
    if GetDatosArt(0, 'CU'+C, A) then
    begin
      Result := A.IdArticulo;
    end
    else begin
      try
        AuxCod := StrToInt(C);
      except
        AuxCod := 0;
      end;
      if AuxCod > 0 then
      begin
        Case AuxCod of
              1 .. 49999: i := 3896;
          50000 .. 59999: i := 3896;
          60000 .. 69999: i := 3897;
          70000 .. 79999: i := 3898;
          80000 .. 89999: i := 3899;
          90000 .. 99989: i := 3900;
                   99990: i := 2;
          99991 .. 99999: i := 3900;
        end;
        A.IdArticulo := i;
        Result := i;
      end;
    end;
  end;

  function Get_Empleado(NE: Integer): Integer;
  var
    q : TMDOQuery;
  begin
    Result := NoEncontrado;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trSave_TXT;
      q.SQL.Add('Select IdEmpleado ');
      q.SQL.Add('From Empleados ');
      q.SQL.Add('Where AutorizaDescuento = :N ');
      q.ParamByName('N').AsInteger := NE;
      q.Open;
      if not q.IsEmpty then
        Result := q.FieldByName('IdEmpleado').AsInteger
      else
        Result := 0;
      q.Close;
    finally
      q.Free;
    end;
  end;

  function Get_Alicuota(F: TDate; T: Integer): Double;
  var
    q : TMDOQuery;
  begin
    Result := 0;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trSave_TXT;
      q.SQL.Add('Select Prc_Alc ');
      q.SQL.Add('From VAR_ALC_IVA ');
      q.SQL.Add('Where (:F between Desde And Hasta) And ');
      q.SQL.Add('      (Tipo_Iva = :T  )');
      q.ParamByName('F').AsDate := F;
      q.ParamByName('T').AsInteger := T;
      q.Open;
      if not q.IsEmpty then
        Result := q.FieldByName('Prc_Alc').AsFloat;
      q.Close;
    finally
      q.Free;
    end;
  end;

  procedure CargarRegistro;
  var
    Fnc, Actual, Art, Ent, i: Integer;
    A: TDatos_Art;
    Fiva1, Fiva2, Fneto, Ftotf, Fdcto, TTar: Currency;
    Ti: SmallInt;
    CantProd: Double;
  begin
    FillChar(Factura, SizeOf(TFactura), 0);
    FillChar(DatosPago, SizeOf(TDatosPagos), 0);
    FillChar(ItemsFiscal, SizeOf(TBody_Fiscal), 0);
    Fiva1 := 0;
    Fiva2 := 0;
    Fneto := 0;
    Ftotf := 0;
    Fdcto := 0;
    Fnc := 0;
    Art := 0;
    Ent := 0;
    Actual := 0;
    CantProd := 0;
    Items_FV.First;
    while not Items_FV.Eof do
    begin
      Inc(Actual);
      CantProd := 1;
      with ItemsFiscal[Actual] do
      begin
        IdPuntoVenta := Factura.IdPuntoVenta;
        IdSucursal := Factura.IdSucursal;
        Bonificacion := Abs(Fac_VenBON_REC.AsFloat);
        Ti := 1;
        if (Items_FVIVAIN.AsCurrency <> 0) then
        begin
          if (Items_FVIDALCIVA.AsInteger > 0) then
            Ti := Items_FVIDALCIVA.AsInteger
          else
            Ti := 1;
        end;
        IdAlcIva := Ti;
        AlicuotaIva := Get_Alicuota(Fac_VenFECHAF.AsDateTime, Ti);
        CantProd := Items_FVCantidad.AsFloat;
        if Fac_VenBON_REC.AsFloat < 0 then
        begin
          MtoIva := Items_FVIVAIN.AsCurrency -
                   ((Items_FVIVAIN.AsCurrency * Abs(Fac_VenBON_REC.AsFloat)/100));
          PrecioNetoU := Items_FVPRECIOTOTAL.AsCurrency -
                         ((Items_FVPRECIOTOTAL.AsCurrency *
                         Abs(Fac_VenBON_REC.AsFloat)/100));
        end
        else begin
          if Fac_VenBON_REC.AsFloat > 0 then
          begin
            MtoIva := Items_FVIVAIN.AsCurrency +
                      ((Items_FVIVAIN.AsCurrency * Abs(Fac_VenBON_REC.AsFloat)/100));
            PrecioNetoU := Items_FVPRECIOTOTAL.AsCurrency +
                           ((Items_FVPRECIOTOTAL.AsCurrency *
                           Abs(Fac_VenBON_REC.AsFloat)/100));
          end
          else begin
            if Fac_VenBON_REC.AsFloat = 0 then
            begin
              MtoIva := Items_FVIVAIN.AsCurrency;
              PrecioNetoU := Items_FVPRECIOTOTAL.AsCurrency;
            end;
          end;
        end;
        PrecioFinal := PrecioNetoU + MtoIva;
        MtoIva := MtoIva * CantProd;
        PrecioNeto  := PrecioNetoU * CantProd;
        PrecioTotal := PrecioFinal * CantProd;

        Case Ti of
          1: Fiva1 := Fiva1 + MtoIva;
          2: Fiva2 := Fiva2 + MtoIva;
        end;
        Fneto := Fneto + PrecioNeto;

        if (Fac_VenBON_REC.AsFloat < 0) then
        begin
          Descuento := ((Items_FVIVAIN.AsCurrency +
                         Items_FVPRECIOTOTAL.AsCurrency) *
                         CantProd) - PrecioTotal
        end
        else begin
          if (Fac_VenBON_REC.AsFloat > 0) then
            Descuento := PrecioTotal -
                         ((Items_FVIVAIN.AsCurrency +
                           Items_FVPRECIOTOTAL.AsCurrency) *
                         CantProd)
          else begin
            if (Fac_VenBON_REC.AsFloat = 0) then
              Descuento := 0;
          end;
        end;

        Fdcto := Fdcto + Descuento;
        Ftotf := Ftotf + PrecioTotal;
        Exento := 0;
        NoComputable := 0;
        TIvaEnt := Fac_VenTIPOIVA.AsInteger;
        CoefImpInt := 0;
        PrecioCosto := PrecioNetoU;
        PrecioLista := PrecioFinal;
        EnOferta := False;
        IdAlcIB := 1;
        AlicuotaIB := 3.00;
        IngBto := (PrecioNeto * AlicuotaIB) / 100;
        ConDescStk := True;
        Cantidad := CantProd;
        Art := Get_Art(Items_FVIdArticulo.AsString, A);
        if Art > 0 then
        begin
          IdProducto := A.IdArticulo;
          Talle := SIN_DETALLE_TALLE;
          CodProd := A.CodBarra;
          Marca := A.Marca;
          Detalle := A.Detalle;
          DescProd := A.DetProd;
          SubDet := Vacio;
          Color := A.Color;
          Servicio := False;
        end
        else begin
          IdProducto := 3;
          Talle := SIN_DETALLE_TALLE;
          CodProd := 'CU00000';
          Marca := Vacio;
          Detalle  := Vacio;
          DescProd := Vacio;
          SubDet := Items_FVIdArticulo.AsString;
          Color := Vacio;
          Servicio := False;
        end;

        if Length(Trim(Items_FVDetalle_Art.AsString)) > 0 then
        begin
          DetalleExtendido := True;
          DetalleExt[1] := Trim(Items_FVDetalle_Art.AsString);
          DetalleExt[2] := Items_FVIdArticulo.AsString;
          DetalleExt[3] := Cero;
          DetalleExt[4] := Cero;
        end
        else begin
          DetalleExtendido := False;
          DetalleExt[1] := Cero;
          DetalleExt[2] := Cero;
          DetalleExt[3] := Cero;
          DetalleExt[4] := Cero;
          end;
      end;
      Items_FV.Next;
    end;

    with Factura do
    begin
      TipoOp := Venta;
      TipoFactura := Fac_VenTipoFactura.AsInteger;
      TipoFacStr := '';
      FechaF := Fac_VenFechaF.AsDateTime;
      FechaI := Fac_VenFechaF.AsDateTime;
      PuntoVta := Fac_VenIdPuntoVenta.AsInteger;
      IdPuntoVenta := Fac_VenIdPuntoVenta.AsInteger;
      Sector := IdBranch;
      Factura.IdSucursal := IdBranch;
      NroFactura := Fac_VenNroFactura.AsString;
      TipoCompCli := 0;
      CompRef := '0000-00000000';
      IdCompRef := 0;
      IdRemito := 0;
      Ent := Put_Cliente(Fac_VenCliente.AsInteger, Fac_VenNombre.AsString,
                         Fac_VenDomicilio.AsString, Fac_VenLocalidad.AsString,
                         Fac_VenDocumento.AsString, Fac_VenTDocCli.AsInteger,
                         Fac_VenTipoIva.AsInteger);
      if Ent <= 0 then
        Entidad := Impersonal
      else
        Entidad := Ent;
      Empleado := Get_Empleado(Fac_VenEMPLEADO.AsInteger);
      NombreEnt := Vacio;
      Garante1 := 0;
      NomGan1 :=  Vacio;
      Garante2 := 0;
      NomGan1 :=  Vacio;
      TipoIva := Fac_VenTipoIva.AsInteger;
      TipoIvaStr := Vacio;
      TipoDoc := 0;
      TipoDocStr := Vacio;
      NroDocumento := Vacio;
      Direccion := '';
      Localidad := '';
      Provincia := '';
      CodPostal := Vacio;
      Telefono  := Vacio;
      CantArtic := Actual;
      Descuento := 0;
      Exento := 0;
      NoComputables := 0;
      Total := Ftotf;
      Neto  := Fneto;
      AlicuotaIva1 := 0;
      IvaAlicuota1 := Fiva1;
      AlicuotaIva2 := 0;
      IvaAlicuota2 := Fiva2;
      CantArtic := Actual;

      Contado := Fac_VenCONTADO.AsCurrency;
      BonosTkt:= Fac_VenTICKETS.AsCurrency;
      Tarjeta := Fac_VenTARJETA.AsCurrency;
      IdTarjeta := Fac_VenIDTARJETA.AsInteger;
      CantCuotas := Fac_VenNROCTAS.AsInteger;
      CtaCte := Fac_VenCTACTE.AsCurrency;
      ChequeTer := Fac_VenCHEQUE.AsCurrency;
      CobSenas := 0;
      SdoAFavor:= 0;
      NombreEmpleado := Vacio;
      IdSubDep := 0;
      DomicilioE := Vacio;
      EntregarA := Vacio;
      Imprimir_Totales := True;
    end;

    DatosPago.IdEntidad := Factura.Entidad;
    DatosPago.IdPuntoVenta := Factura.IdPuntoVenta;
    DatosPago.IdSucursal := IdBranch;
    DatosPago.FechaOp := Factura.FechaF;
    DatosPago.NomEntidad := Vacio;
    DatosPago.NroComprobante := Factura.NroFactura;
    DatosPago.TipoComprobante := Factura.TipoFactura;
    DatosPago.IdCompRef := 0;
    DatosPago.CompReferencia := '0000-00000000';
    DatosPago.Coeficiente := 0;
    DatosPago.IdVendedor := Factura.Empleado;
    if Fac_VenCONTADO.AsCurrency <> 0 then
    begin
      DatosPago.PagosContado := Fac_VenCONTADO.AsCurrency;
      DatosPago.PagosRealizados := DatosPago.PagosRealizados + [Contado];
    end;
    if Fac_VenTICKETS.AsCurrency <> 0 then
    begin
      DatosPago.PagosBonosTk := Fac_VenTICKETS.AsCurrency;
      DatosPago.PagosRealizados := DatosPago.PagosRealizados + [Bonos];
    end;

    try
      f := TMDOQuery.Create(nil);
      f.Database := dbConversion;
      f.Transaction := trSave_TXT;
      f.SQL.Add('Select IdTarjeta, FechaOP, NroCuota, ');
      f.SQL.Add('       TotalOP, IdCliente ');
      f.SQL.Add('From TU_MovTar ');
      f.SQL.Add('Where IdFactura = :F ');
      f.ParamByName('F').AsInteger := Fac_VenIdFactura.AsInteger;
      f.Open;
      if not f.IsEmpty then
      begin
        f.First;
        i := 1;
        TTar := 0;
        while not f.Eof do
        begin
          if (f.FieldByName('IdTarjeta').AsInteger = 1) then
          begin
            DatosPago.CantidadCuotas := f.FieldByName('NroCuota').AsInteger;
            DatosPago.PagosTarjeta.Movimientos[i].TipoEntidad := 0;
            DatosPago.PagosTarjeta.Movimientos[i].IdTarMut := f.FieldByName('IdTarjeta').AsInteger;
            DatosPago.PagosTarjeta.Movimientos[i].IdMovTar := Fac_VenIdFactura.AsInteger;
            DatosPago.PagosTarjeta.Movimientos[i].Vencimiento := f.FieldByName('FechaOP').AsDateTime;
            if f.FieldByName('NroCuota').AsInteger > 0 then
            begin
              DatosPago.PagosTarjeta.Movimientos[i].CantidadCuotas := f.FieldByName('NroCuota').AsInteger;
              DatosPago.PagosTarjeta.Movimientos[i].MontoCuota := f.FieldByName('TotalOp').AsCurrency / f.FieldByName('NroCuota').AsInteger;
            end
            else begin
              DatosPago.PagosTarjeta.Movimientos[i].CantidadCuotas := 1;
              DatosPago.PagosTarjeta.Movimientos[i].MontoCuota := f.FieldByName('TotalOp').AsCurrency;
            end;
            DatosPago.PagosTarjeta.Movimientos[i].TotalTarj := f.FieldByName('TotalOp').AsCurrency;
          end
          else begin
            DatosPago.CantidadCuotas := f.FieldByName('NroCuota').AsInteger;
            DatosPago.PagosTarjeta.Movimientos[i].TipoEntidad := 0;
            DatosPago.PagosTarjeta.Movimientos[i].IdTarMut := f.FieldByName('IdTarjeta').AsInteger;
            DatosPago.PagosTarjeta.Movimientos[i].IdMovTar := Fac_VenIdFactura.AsInteger;
            DatosPago.PagosTarjeta.Movimientos[i].Vencimiento := f.FieldByName('FechaOP').AsDateTime;
            DatosPago.PagosTarjeta.Movimientos[i].CantidadCuotas := 1;
            DatosPago.PagosTarjeta.Movimientos[i].MontoCuota := f.FieldByName('TotalOp').AsCurrency;
            DatosPago.PagosTarjeta.Movimientos[i].TotalTarj := f.FieldByName('TotalOp').AsCurrency;
          end;
          Inc(i);
          TTar := TTar + f.FieldByName('TotalOp').AsCurrency;
          f.Next;
        end;
        DatosPago.PagosTarjeta.CantTarjetas := i;
        DatosPago.PagosTarjeta.TotalTarjeta := TTar;
        DatosPago.PagosRealizados := DatosPago.PagosRealizados + [Tarjeta];
      end
      else begin
        DatosPago.PagosTarjeta.CantTarjetas := 0;
        DatosPago.PagosTarjeta.TotalTarjeta := 0;
        DatosPago.CantidadCuotas := 0;
      end;
      f.Close;
    finally
      f.Free;
    end;
  end;

begin
  If Con_Show then
  begin
    mmSave.Lines.Clear;
    mmSave.Lines.Add('Inicio: '+TimeToStr(Time));
    Application.ProcessMessages;
  end;

  CantSave := 0;
  CantSaveTot := 0;
  if Fac_Ven.IsEmpty then
    Abort;
  Fac_Ven.IndexName := 'TU_FVFECHAF';
  if Fac_Ven.Locate(Fac_VenFECHAF.FieldName, Desde, []) then
  begin
    mmSave.Lines.Add('Desde Id.'+IntToStr(Fac_VenIDFACTURA.AsInteger));
  end
  else begin
    mmSave.Lines.Add('Desde el principio.');
    Fac_Ven.First;
  end;

  While not Fac_Ven.Eof do
  begin
    if (Fac_VenTipoFactura.AsInteger in [FacA, FacB, CreA, CreB, DebA, DebB]) and
       (Fac_VenProcesado.AsInteger = 0) And
       (Fac_VenFechaF.AsDateTime >= Desde) and
       (Fac_VenFechaF.AsDateTime <= Hasta) then
    begin
      CargarRegistro;
      if GrabarComprobanteVenta(DatosPago, Factura, ItemsFiscal) then
      begin
        try
          if not trSave_TXT.InTransaction then
             trSave_TXT.StartTransaction;
          try
            m := TMDOQuery.Create(nil);
            m.Database := dbConversion;
            m.Transaction := trSave_TXT;
            m.SQL.Add('UpDate TU_FacVen ');
            m.SQL.Add('Set Procesado = 1 ');
            m.SQL.Add('Where IdFactura = :F And ');
            m.SQL.Add('      IdSucursal = :S And ');
            m.SQL.Add('      IdPuntoVenta = :P And ');
            m.SQL.Add('      TipoFactura = :T ');
            m.ParamByName('F').AsInteger := Fac_VenIdFactura.AsInteger;
            m.ParamByName('S').AsInteger := Fac_VenIdSucursal.AsInteger;
            m.ParamByName('P').AsInteger := Fac_VenIdPuntoVenta.AsInteger;
            m.ParamByName('T').AsInteger := Fac_VenTipoFactura.AsInteger;
            m.ExecSQL;
          finally
            m.Free;
          end;
          trSave_TXT.Commit;
        except
          on E: Exception do
          begin
            mmSave.Lines.Add('Error '+TimeToStr(Time)+' Nº '+Factura.NroFactura+' no se marco');
            Application.ProcessMessages;
            trSave_TXT.Rollback;
          end;
        end;
      end
      else begin
        If Con_Show then
        begin
          mmSave.Lines.Add('Error '+TimeToStr(Time)+' Nº '+Factura.NroFactura+' no se grabo');
          Application.ProcessMessages;
        end;
      end;

      if CantSave >= 20 then
      begin
        CantSaveTot := CantSaveTot+CantSave;
        mmSave.Lines.Add(' '+TimeToStr(Time)+' '+IntToStr(CantSaveTot));
        Application.ProcessMessages;
        CantSave := 0;
      end;
      Inc(CantSave);
    end;
    Fac_Ven.Next;
  end;
  Fac_Ven.Close;
  If Con_Show then
  begin
    mmSave.Lines.Add('Finalizado: '+TimeToStr(Time));
    Application.ProcessMessages;
  end;
end;

procedure TfrmConversion.Save_RecPagos;
begin
(*
    FillChar(Factura, SizeOf(TFactura), 0);
    FillChar(DatosPago, SizeOf(TDatosPagos), 0);
    FillChar(ItemsFiscal, SizeOf(ItemsFiscal), 0);
    Rec_Ok := False;

    if Mto_Senas > 0 then
      ShowMessage(Format('El clientes posee Señas o Pagos a cuenta por %m. No olvide incluirlos. ', [Mto_Senas]));
    SdoCta := qMovTarNROCUOTA.AsInteger - (qMovTarCUOTAPAG.AsInteger + 1);
    DiaV := DayOf(qMovTarFECHAOP.AsDateTime);
    MesV := MonthOf(qMovTarFECHAOP.AsDateTime);
    AnoV := YearOf(qMovTarFECHAOP.AsDateTime);
    VtoAct := IncMonth(EncodeDate(AnoV, MesV, 15), qMovTarCUOTAPAG.AsInteger+1);
    VtoSte := IncMonth(VtoAct);
    // Recibo
    GetDatosEnt(NCliente, IdSucurCli, 1, Datos_Ent);
    DatosPago.TipoOperacion := Cobros;
    DatosPago.IdEntidad := NCliente;
    DatosPago.IdCompRef := qMovTarIDTARJETA.AsInteger;
    DatosPago.IdMovTar := qMovTarIDMOV.AsInteger;
    DatosPago.IdPuntoVenta := IdSalesPoint;
    DatosPago.IdSucursal := IdSucurCli;
    DatosPago.FechaOp := edtFechaRec.Date;
    DatosPago.FechaOr := VtoSte;
    DatosPago.NomEntidad := lblNomCli.Caption;
    DatosPago.NroComprobante := edtComprobante.Text;
    DatosPago.TipoComprobante := ReciboX;
    DatosPago.CompReferencia := qMovTarNROFACTURA.AsString;
    DatosPago.Coeficiente := 0;
    DatosPago.IdTarjeta := 0;
    DatosPago.CuotasPagadas := CtasAPagar.RecordCount;
    DatosPago.IdVendedor := Usuario;
    DatosPago.PagosDebitos := edtImpDebito.Value;
    DatosPago.PagosBonif.TotalBonif := MontoBon;
    DatosPago.TotalPagos := edtImportePago.Value;

    ComoPago := DoPago(DatosPago, ImprimirEnLinea);
    case ComoPago of
      apPago: begin
        GrabarComprobante := True;
        if DatosPago.RestaPagar < 0 then // Si hay resto, le cambio el signo para darlo como vuelto
          DatosPago.RestaPagar := -1 * DatosPago.RestaPagar;
      end;
      apCancelo: begin
        GrabarComprobante := False;
      end
      else
        GrabarComprobante := False;
    end;

    if GrabarComprobante then
    begin
      //Encabezado
      with Factura do
      begin
        TipoOp := Cobros;
        TipoFactura := ReciboX;
        TipoFacStr := GetText_Comprobante(Factura.TipoFactura, False);
        NroFactura := edtComprobante.Text;
        FechaF := DatosPago.FechaOp;
        FechaI := DatosPago.FechaOp;
        PuntoVta := 0;
        IdPuntoVenta := DatosPago.IdPuntoVenta;
        Sector := SectorSistema;
        Factura.IdSucursal := DatosPago.IdSucursal;
        TipoCompCli := 0;
        CompRef := '';
        IdCompRef := DatosPago.IdCompRef;
        IdRemito := 0;
        Entidad := DatosPago.IdEntidad;
        NombreEnt := Datos_Ent.Nombre;
        Garante1 := 0;
        NomGan1 :=  '';
        Garante2 := 0;
        NomGan1 :=  '';
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
        Descuento := 0;
        Neto := 0;
        Exento := 0;
        NoComputables := 0;
        AlicuotaIva1 := GetAlcIva(1);
        IvaAlicuota1 := 1;
        Total := edtImportePago.Value;
        Contado := DatosPago.PagosContado;
        BonosTkt := DatosPago.PagosBonosTk;
        Tarjeta := DatosPago.PagosTarjeta.TotalTarjeta;
        IdTarjeta := 0;
        CantCuotas := 0;
        CtaCte := 0;
        ChequeTer := DatosPago.PagosCheques.TotalValores;
        CobSenas := DatosPago.PagosSena;
        SdoAFavor:= DatosPago.SdoAFavor;
        Descuento:= 0;
        Empleado := Usuario;
        NombreEmpleado := NombreUsuario;
        IdSubDep := 0;
        Situacion := 0;
        DomicilioE := Vacio;
        EntregarA := Vacio;
      end;

      CtasAPagar.First;
      i := 0;
      while not CtasAPagar.Eof do
      begin
        if CtasAPagarMtoCta.AsCurrency > 0 then
        begin
          Inc(i);
          GetDatosArt(dmGestion.DatosSisIDARTCUOTA.AsInteger, '', Datos_Art);
          ItemsFiscal[i].IdCredito  := CtasAPagarIdCred.AsInteger;
          ItemsFiscal[i].IdSucursal := CtasAPagarIdSucursal.AsInteger;
          ItemsFiscal[i].IdProducto := Datos_Art.IdArticulo;
          ItemsFiscal[i].IdItem := i;
          ItemsFiscal[i].TIvaEnt := Factura.TipoIva;
          ItemsFiscal[i].IdPuntoVenta := DatosPago.IdPuntoVenta;
          ItemsFiscal[i].IdSucursal := DatosPago.IdSucursal;
          ItemsFiscal[i].IdMarkUp := 0;
          ItemsFiscal[i].Talle := 0;
          ItemsFiscal[i].TipoAj := 0;
          ItemsFiscal[i].FechaF := DatosPago.FechaOp;
          ItemsFiscal[i].CodProd := Datos_Art.CodBarra;
          ItemsFiscal[i].Marca := Datos_Art.Detalle;
          ItemsFiscal[i].Detalle := 'Credito '+CtasAPagarCompOrg.AsString+' C.'+CtasAPagarNroCta.AsString+' Prox.Vto: '+CtasAPagarProxVto.AsString;
          ItemsFiscal[i].DescProd := ItemsFiscal[i].Marca+' '+ItemsFiscal[i].Detalle;
          ItemsFiscal[i].SubDet := '';
          ItemsFiscal[i].Color := 'Vto: '+DateToStr(CtasAPagarVencimiento.AsDateTime);
          ItemsFiscal[i].EnOferta := False;
          ItemsFiscal[i].Consignacion := False;
          ItemsFiscal[i].Combustible := False;
          ItemsFiscal[i].EnRemito := False;
          ItemsFiscal[i].EnPedido := False;
          ItemsFiscal[i].Servicio := True;
          ItemsFiscal[i].EsKit := False;
          ItemsFiscal[i].DetalleExtendido := False;
          ItemsFiscal[i].PrecioCosto := CtasAPagarMtoCta.AsCurrency;
          ItemsFiscal[i].PrecioTotal := CtasAPagarMtoCta.AsCurrency;
          ItemsFiscal[i].PrecioLista := CtasAPagarMtoCta.AsCurrency;
          ItemsFiscal[i].PrecioFinal := CtasAPagarMtoCta.AsCurrency;
          ItemsFiscal[i].PrecioNetoU := 0;
          ItemsFiscal[i].PrecioNeto  := 0;
          ItemsFiscal[i].PrecioPublico := CtasAPagarDebitos.AsCurrency; // Va monto por atraso
          ItemsFiscal[i].PrecioActual := CtasAPagarMtoCta.AsCurrency;
          ItemsFiscal[i].Servicio := True;
          ItemsFiscal[i].NoComputable := 0;
          ItemsFiscal[i].Exento := 0;
          ItemsFiscal[i].MtoIva := 0;
          ItemsFiscal[i].IngBto := 0;
          ItemsFiscal[i].Bonificacion := CtasAPagarCreditos.AsCurrency; // Va monto descuento
          ItemsFiscal[i].Cantidad := 1;
          ItemsFiscal[i].CoefImpInt := 0;
          ItemsFiscal[i].CoefMarkUp := 0;
          ItemsFiscal[i].AlicuotaIva := 0;
          ItemsFiscal[i].AlicuotaIB := 0;
          ItemsFiscal[i].IdAlcIva := 0;
          ItemsFiscal[i].IdAlcIB := 0;
          ItemsFiscal[i].Cuota := CtasAPagarNroCta.AsInteger;
        end;
        CtasAPagar.Next;
      end;
      Factura.CantArtic := i;
      DatosPago.CuotasPagadas := i;

      Rec_Ok := True;
      if Application.MessageBox('¿ Imprime el recibo de Pago ?', 'Recibo', MB_YESNO) = ID_YES then
      begin
        if (ImprimirEnControlador) and (Tipo_Factura or Tipo_Estacion) and (ControladorLocal) then
          Rec_Ok := frmFiscal.ImprimirReciboF(DatosPago, ItemsFiscal, '', '')
        else
          Rec_Ok := Print_Form(Factura, ItemsFiscal); //DatosPago, '', '');
      end;

      if Rec_Ok then
      begin
        if dmSaveFile.DoPagoCuota(DatosPago, ItemsFiscal) then
*)
end;

procedure TfrmConversion.btnGeneracionClick(Sender: TObject);
begin
  if edtTXTTUDesde.Date <= edtTXTTUHasta.Date then
    Save_FacTxt(edtTXTTUDesde.Date, edtTXTTUHasta.Date, True);
end;


procedure TfrmConversion.btnGenerarRecPagClick(Sender: TObject);
begin
  //
end;

procedure TfrmConversion.btnGenerarTodoClick(Sender: TObject);
begin
  if edtTXTTUDesde.Date <= edtTXTTUHasta.Date then
  begin
    SaveFac_DesdeTxt(True);
    SaveCre_DesdeTxt(True);
    Save_FacTxt(edtTXTTUDesde.Date, edtTXTTUHasta.Date, True);
  end;
end;

//*****************************************************************************
//*****************************************************************************
// DBIsam
//*****************************************************************************
//*****************************************************************************

procedure TfrmConversion.DBIsam_ConnectDB(Que: SmallInt);
begin
  if Trim(lblPaso.Caption) > Vacio then
    Paso := lblPaso.Caption
  else
    Paso := Vacio;
  if Trim(Paso) > Vacio then
  begin
    Case Que of
      1: begin
           try
             sInsolito.Active := False;
             sInsolito.PrivateDir := PasoExe;
             sInsolito.RemoteAddress := '127.0.0.1';
             sInsolito.Active := True;
             mmPorDonde.Lines.Add('Abriendo Tablas'+TimeToStr(Time));
             Application.ProcessMessages;
           except
             ShowMessage('Datos remotos. Sin sesión a la Base de Transferencia');
             Application.Terminate;
           end;
           try
             dbInsolito.Connected := False;
             dbInsolito.Directory := Paso;
             dbInsolito.Connected := True;
           except
             ShowMessage('Datos Insolito. Sin conección a la Base de Transferencia');
             Application.Terminate;
           end;
         end;
      2: begin
           mmPorDonde.Lines.Add('Cerrando Tablas'+TimeToStr(Time));
           Application.ProcessMessages;
           dbInsolito.Connected := False;
           sInsolito.Active := False;
         end;
    end;
  end
  else
    raise EUsuario.Create('Paso mal configurado');
end;

procedure TfrmConversion.DBIsam_Pasa_Arts;
var
  q: TMDOQuery;
  CantTran, Save_Tot: Integer;
begin
  DBIsam_ConnectDB(1);
  mmPorDonde.Lines.Add('Productos: Areas');
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM AREAS ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO AREAS '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('BORRADO AREAS '+E.Message);
    end
  end;

  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Insert Into ');
      q.SQL.Add('Areas(IdArea, Area, FechaMod) ');
      q.SQL.Add('Values(:IdArea, :Area, :FechaMod) ');
      q.ParamByName('IdArea').AsInteger := 1;
      q.ParamByName('Area').AsString := 'TAREAS ADMINISTRATIVAS';
      q.ParamByName('FECHAMOD').AsDate := Date;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Areas '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;

    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Insert Into ');
      q.SQL.Add('Areas(IdArea, Area, FechaMod) ');
      q.SQL.Add('Values(:IdArea, :Area, :FechaMod) ');
      q.ParamByName('IdArea').AsInteger := 2;
      q.ParamByName('Area').AsString := 'ELECTROHOGAR';
      q.ParamByName('FECHAMOD').AsDate := Date;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Areas '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;

    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Insert Into ');
      q.SQL.Add('Areas(IdArea, Area, FechaMod) ');
      q.SQL.Add('Values(:IdArea, :Area, :FechaMod) ');
      q.ParamByName('IdArea').AsInteger := 3;
      q.ParamByName('Area').AsString := 'TIENDA: ROPA y CALZADO';
      q.ParamByName('FECHAMOD').AsDate := Date;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Areas '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    trConversion.Rollback;
    raise;
  end;
  //---------------------------------------------------------------------------
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    mmPorDonde.Lines.Add('Productos: Grupos');
    Application.ProcessMessages;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM GRUPOS ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO GRUPOS '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    trConversion.Rollback;
    raise;
  end;

  try
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Insert Into ');
      q.SQL.Add('Grupos(IdArea, IdGrupo, Grupo, FechaMod) ');
      q.SQL.Add('Values(:IdArea, :IdGrupo, :Grupo, :FechaMod) ');
      q.ParamByName('IdArea').AsInteger := 1;
      q.ParamByName('IdGrupo').AsInteger := 1;
      q.ParamByName('Grupo').AsString := 'T.Administrativas';
      q.ParamByName('FECHAMOD').AsDate := Date;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Grupos '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Grupos.Open;
    Grupos.First;
    While not Grupos.Eof do
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('Insert Into ');
        q.SQL.Add('Grupos(IdArea, IdGrupo, Grupo, FechaMod) ');
        q.SQL.Add('Values(:IdArea, :IdGrupo, :Grupo, :FechaMod) ');
        if GruposIdGrupo.AsInteger in [6,7,11,12] then
          q.ParamByName('IdArea').AsInteger := 3
        else
          q.ParamByName('IdArea').AsInteger := 2;
        q.ParamByName('IDGRUPO').AsInteger := GruposIdGrupo.AsInteger;
        q.ParamByName('Grupo').AsString := GruposGrupo.AsString;
        q.ParamByName('FECHAMOD').AsDate := Date;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('Grupos '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;
      Grupos.Next;
    end;
    Grupos.Close;
    trConversion.Commit;
  except
    trConversion.Rollback;
    raise;
  end;

  //---------------------------------------------------------------------------
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    mmPorDonde.Lines.Add('Productos: SubGrupos');
    Application.ProcessMessages;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM SUBGRUPOS ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO SUBGRUPOS '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    trConversion.Rollback;
    raise;
  end;

  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Insert Into ');
      q.SQL.Add('SubGrupos(IdArea, IdGrupo, IdSubGrupo, SubGrupo, FechaMod, ');
      q.SQL.Add('          IdMarkUp, MAXDTOCDO, MAXRNDPRE, COMISION1, COMISION2) ');
      q.SQL.Add('Values(:IdArea, :IdGrupo, :IdSubGrupo, :SubGrupo, :FechaMod, ');
      q.SQL.Add('       :IdMarkUp, :MAXDTOCDO, :MAXRNDPRE, :COMISION1, :COMISION2) ');
      q.ParamByName('IdArea').AsInteger := 1;
      q.ParamByName('IDGRUPO').AsInteger := 1;
      q.ParamByName('IDSUBGRUPO').AsInteger := 1;
      q.ParamByName('SUBGRUPO').AsString :=  'T.Administrativas';
      q.ParamByName('FECHAMOD').AsDate := Date;
      q.ParamByName('IdMarkUp').AsInteger:= 1;
      q.ParamByName('MAXDTOCDO').AsFloat := 1;
      q.ParamByName('MAXRNDPRE').AsFloat := 1;
      q.ParamByName('COMISION1').AsFloat := 0;
      q.ParamByName('COMISION2').AsFloat := 0;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('SubGrupos '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    trConversion.Rollback;
    raise;
  end;

  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    SubGrupos.Open;
    SubGrupos.First;
    While not SubGrupos.Eof do
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('Insert Into ');
        q.SQL.Add('SubGrupos(IdArea, IdGrupo, IdSubGrupo, SubGrupo, FechaMod, ');
        q.SQL.Add('          IdMarkUp, MAXDTOCDO, MAXRNDPRE, COMISION1, COMISION2) ');
        q.SQL.Add('Values(:IdArea, :IdGrupo, :IdSubGrupo, :SubGrupo, :FechaMod, ');
        q.SQL.Add('       :IdMarkUp, :MAXDTOCDO, :MAXRNDPRE, :COMISION1, :COMISION2) ');
        if SubGruposIdGrupo.AsInteger in [6,7,11,12] then
          q.ParamByName('IdArea').AsInteger := 3
        else
          q.ParamByName('IdArea').AsInteger := 2;
        q.ParamByName('IDGRUPO').AsInteger := SubGruposIdGrupo.AsInteger;
        q.ParamByName('IDSUBGRUPO').AsInteger := SubGruposIdSubGrupo.AsInteger;
        q.ParamByName('SUBGRUPO').AsString := SubGruposSubGrupo.AsString;
        q.ParamByName('FECHAMOD').Clear;
        q.ParamByName('IdMarkUp').AsInteger:= SubGruposIdMarkUp.AsInteger;
        q.ParamByName('MAXDTOCDO').AsFloat := SubGruposMaxDtoCdo.AsFloat;
        q.ParamByName('MAXRNDPRE').AsFloat := SubGruposMaxRndPre.AsFloat;
        q.ParamByName('COMISION1').AsFloat := 0;
        q.ParamByName('COMISION2').AsFloat := 0;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('SubGrupos '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;
      SubGrupos.Next;
    end;
    SubGrupos.Close;
    trConversion.Commit;
  except
    trConversion.Rollback;
    raise;
  end;

  mmPorDonde.Lines.Add('Productos: MarkUP');
  Application.ProcessMessages;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('DELETE FROM MARKUP ');
    try
      q.ExecSQL;
    except
      on E:Exception do
      begin
        mmPorDonde.Lines.Add('BORRADO MARKUP '+E.Message);
      end
    end;
    q.Close;
  finally
    q.Free;
  end;

  MarkUp.Open;
  MarkUp.First;
  While not MarkUp.Eof do
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Insert Into ');
      q.SQL.Add('MarkUp(IdMarkUp, DetMarkUp, CoefMarkUp) ');
      q.SQL.Add('Values(:IdMarkUp, :DetMarkUp, :CoefMarkUp) ');
      q.ParamByName('IDMARKUP').AsInteger := MarkUpIdMarkUp.AsInteger;
      q.ParamByName('DetMarkUp').AsString := MarkUpDetMarkUp.AsString;
      q.ParamByName('COEFMARKUP').AsFloat := MarkUpCoefMarkUp.AsFloat;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Mark Up '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    MarkUp.Next;
  end;
  MarkUp.Close;

  try
    trConversion.Commit;
  except
    trConversion.Rollback;
    raise;
  end;

  mmPorDonde.Lines.Add('Productos: Productos');
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM ARTICULOS ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO ARTICULOS '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('BORRADO ARTICULOS '+E.Message);
    end
  end;

  Articulos.Open;
  Articulos.First;
  CantTran := 1;
  Save_Tot := 0;
  While not Articulos.Eof do
  begin
    if CantTran >= 100 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación Productos '+ IntToStr(Save_Tot));
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('Productos '+E.Message);
          raise;
        end
      end;
      CantTran := 1;
    end;
    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO ARTICULOS');
      q.SQL.Add('  (IDARTICULO, IDAREA, IDGRUPO, IDSUBGRUPO, MARCA, DETALLE, CODBARRA, IDCOLOR,');
      q.SQL.Add('   ACTIVO, TIENETALLE, OFERTA, DUROFERTA, ESTILOFAC, TSINSTOCK, SERVICIO,');
      q.SQL.Add('   COSTO, COSTOANT, PNETO, PBASE, GANANCIA, PRECIO, PRECIOANT, PRECIO_PP, ');
      q.SQL.Add('   ALCIVA, ALCIB, IMPINT, EXENTO, FECHAALTA, IDMARKUP, USUARIO, ESKIT, FECHAMOD )');
      q.SQL.Add('VALUES');
      q.SQL.Add('  (:IDARTICULO, :IDAREA, :IDGRUPO, :IDSUBGRUPO, :MARCA, :DETALLE, :CODBARRA, :IDCOLOR,');
      q.SQL.Add('   :ACTIVO, :TIENETALLE, :OFERTA, :DUROFERTA, :ESTILOFAC, :TSINSTOCK, :SERVICIO,');
      q.SQL.Add('   :COSTO, :COSTOANT, :PNETO, :PBASE, :GANANCIA, :PRECIO, :PRECIOANT, :PRECIO_PP, ');
      q.SQL.Add('   :ALCIVA, :ALCIB, :IMPINT, :EXENTO, :FECHAALTA, :IDMARKUP, :USUARIO, :ESKIT, :FECHAMOD) ');
      q.ParamByName('IDARTICULO').AsInteger := ArticulosIdArticulo.AsInteger;
      if ArticulosIdGrupo.AsInteger in [6,7,11,12] then
        q.ParamByName('IdArea').AsInteger := 3
      else
        q.ParamByName('IdArea').AsInteger := 2;
      q.ParamByName('IDGRUPO').AsInteger := ArticulosIdGrupo.AsInteger;
      q.ParamByName('IDSUBGRUPO').AsInteger := ArticulosIdSubGrupo.AsInteger;
      q.ParamByName('MARCA').AsString := ArticulosMarca.AsString;
      q.ParamByName('DETALLE').AsString := ArticulosDetalle.AsString;
      q.ParamByName('CODBARRA').AsString := ArticulosIdArticulo.AsString;
      q.ParamByName('IDCOLOR').AsInteger := ArticulosIdColor.AsInteger;
      if ArticulosActivo.AsBoolean then
        q.ParamByName('ACTIVO').AsInteger := Verdadero
      else
        q.ParamByName('ACTIVO').AsInteger := Falso;
      if ArticulosTieneTalle.AsBoolean then
        q.ParamByName('TIENETALLE').AsInteger := Verdadero
      else
        q.ParamByName('TIENETALLE').AsInteger := Falso;
      if ArticulosOferta.AsBoolean then
        q.ParamByName('OFERTA').AsInteger := Verdadero
      else
        q.ParamByName('OFERTA').AsInteger := Falso;
      q.ParamByName('DUROFERTA').AsDate := ArticulosDuracionOferta.AsDateTime;
      q.ParamByName('ESTILOFAC').AsInteger := ArticulosEstiloFac.AsInteger;
      if ArticulosConsignacion.AsBoolean then
        q.ParamByName('TSINSTOCK').AsInteger := Verdadero
      else
        q.ParamByName('TSINSTOCK').AsInteger := Falso;
      if ArticulosServicio.AsBoolean then
        q.ParamByName('SERVICIO').AsInteger := Verdadero
      else
        q.ParamByName('SERVICIO').AsInteger := Falso;
      q.ParamByName('COSTO').AsCurrency := ArticulosCosto.AsCurrency;
      q.ParamByName('COSTOANT').AsCurrency := ArticulosCostoAnt.AsCurrency;
      q.ParamByName('PNETO').AsCurrency := ArticulosPNeto.AsCurrency;
      q.ParamByName('PBASE').AsCurrency := ArticulosPBase.AsCurrency;
      q.ParamByName('GANANCIA').AsFloat := ArticulosGanancia.AsFloat;
      q.ParamByName('PRECIO').AsCurrency := ArticulosPrecio.AsCurrency;
      q.ParamByName('PRECIOANT').AsCurrency := ArticulosPrecioAnt.AsCurrency;
      q.ParamByName('PRECIO_PP').AsCurrency := 0;
      q.ParamByName('ALCIVA').AsInteger := ArticulosAlcIva.AsInteger;
      q.ParamByName('ALCIB').AsInteger := ArticulosAlcIB.AsInteger;
      q.ParamByName('IMPINT').AsCurrency := ArticulosImpInt.AsCurrency;
      q.ParamByName('EXENTO').AsFloat := ArticulosExento.AsFloat;
      q.ParamByName('FECHAALTA').AsDate := ArticulosFechaAlta.AsDateTime;
      q.ParamByName('IDMARKUP').AsInteger := ArticulosIdMarkUp.AsInteger;
      q.ParamByName('USUARIO').AsInteger := ArticulosUsuario.AsInteger;
      q.ParamByName('ESKIT').AsInteger := Falso;
      q.ParamByName('FECHAMOD').Clear;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Productos '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Inc(CantTran);
    Articulos.Next;
  end;
  Articulos.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación Productos ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('Productos '+E.Message);
        raise;
      end
    end;
  end;

  mmPorDonde.Lines.Add('Productos: ArtModPrc');
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM ARTMODPRC ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO ARTMODPRC '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('BORRADO ARTMODPRC '+E.Message);
      raise;
    end
  end;

  ArtModPrc.Open;
  ArtModPrc.First;
  CantTran := 1;
  Save_Tot := 0;
  While not ArtModPrc.Eof do
  begin
    if CantTran >= 200 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación ArtModPrc'+ IntToStr(Save_Tot));
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('Productos '+E.Message);
          raise;
        end
      end;
      CantTran := 1;
    end;
    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO ARTMODPRC ');
      q.SQL.Add('  (IDREMMOD, IDARTICULO, TIPOCOMP, NROREMITO, FECHAR, DIAHORA, USUARIO, ');
      q.SQL.Add('   COSTOOLD, COSTONEW, PRECIOOLD, PRECIONEW, DETALLE, CANTCTAS, IDSUCURSAL, ');
      q.SQL.Add('   FECHAALTA, FECHAFIN, VALORCTAS) ');
      q.SQL.Add('VALUES ');
      q.SQL.Add('  (:IDREMMOD, :IDARTICULO, :TIPOCOMP, :NROREMITO, :FECHAR, :DIAHORA, :USUARIO, ');
      q.SQL.Add('   :COSTOOLD, :COSTONEW, :PRECIOOLD, :PRECIONEW, :DETALLE, :CANTCTAS, :IDSUCURSAL, ');
      q.SQL.Add('   :FECHAALTA, :FECHAFIN, :VALORCTAS) ');
      q.ParamByName('IDREMMOD').AsInteger := ArtModPrcIdRemMod.AsInteger;
      q.ParamByName('IDARTICULO').AsInteger := ArtModPrcIdArticulo.AsInteger;
      q.ParamByName('TIPOCOMP').AsInteger := ArtModPrcTipoComp.AsInteger;
      q.ParamByName('NROREMITO').AsString := ArtModPrcNroRemito.AsString;
      q.ParamByName('FECHAR').AsDate := ArtModPrcFechaR.AsDateTime;
      q.ParamByName('DIAHORA').AsDateTime := ArtModPrcDiaHora.AsDateTime;
      q.ParamByName('USUARIO').AsInteger := ArtModPrcUsuario.AsInteger;
      q.ParamByName('COSTOOLD').AsCurrency := ArtModPrcCostoOld.AsCurrency;
      q.ParamByName('COSTONEW').AsCurrency := ArtModPrcCostoNew.AsCurrency;
      q.ParamByName('PRECIOOLD').AsCurrency := ArtModPrcPrecioOld.AsCurrency;
      q.ParamByName('PRECIONEW').AsCurrency := ArtModPrcPrecioNew.AsCurrency;
      q.ParamByName('DETALLE').AsString := 'Cambio de Precios '+ DateToStr(ArtModPrcFechaR.AsDateTime);
      q.ParamByName('CANTCTAS').AsInteger := 0;
      q.ParamByName('IDSUCURSAL').AsInteger := 1;
      q.ParamByName('FECHAALTA').AsDate := ArtModPrcFechaR.AsDateTime;
      q.ParamByName('FECHAFIN').AsDate := ArtModPrcFechaR.AsDateTime;
      q.ParamByName('VALORCTAS').AsCurrency := 0;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('ArtModPrc '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Inc(CantTran);
    ArtModPrc.Next;
  end;
  ArtModPrc.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación ArtModPrc ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('ArtModPrc '+E.Message);
        raise;
      end
    end;
  end;
  mmPorDonde.Lines.Add('Finalizado Productos '+TimeToStr(Time));
  Application.ProcessMessages;
  DBIsam_ConnectDB(2);
end;

procedure TfrmConversion.DBIsam_Actualiza_Arts;
var
  q: TMDOQuery;
  CantTran, Save_Tot: Integer;
begin
  DBIsam_ConnectDB(1);
  mmPorDonde.Lines.Add('Actualizacion de Productos '+TimeToStr(Time));
  Application.ProcessMessages;
  Articulos.Open;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('Select Max(IdArticulo) as Ultimo ');
    q.SQL.Add('From Articulos ');
    q.Open;
    if not q.IsEmpty then
    begin
      if not (Articulos.Locate(ArticulosIdArticulo.FieldName,
              q.FieldByName('Ultimo').AsInteger, [])) then
      begin
        Articulos.First;
      end;
      q.Close;
    end
    else begin
      Articulos.First;
    end;
  finally
    q.Free;
  end;
  CantTran := 1;
  Save_Tot := 0;
  While not Articulos.Eof do
  begin
    if CantTran >= 10 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación Productos '+ IntToStr(Save_Tot));
        Application.ProcessMessages;
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('Productos '+E.Message);
          raise;
        end
      end;
      CantTran := 1;
    end;
    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO ARTICULOS');
      q.SQL.Add('  (IDARTICULO, IDAREA, IDGRUPO, IDSUBGRUPO, MARCA, DETALLE, CODBARRA, IDCOLOR,');
      q.SQL.Add('   ACTIVO, TIENETALLE, OFERTA, DUROFERTA, ESTILOFAC, TSINSTOCK, SERVICIO,');
      q.SQL.Add('   COSTO, COSTOANT, PNETO, PBASE, GANANCIA, PRECIO, PRECIOANT, PRECIO_PP, ');
      q.SQL.Add('   ALCIVA, ALCIB, IMPINT, EXENTO, FECHAALTA, IDMARKUP, USUARIO, ESKIT, FECHAMOD )');
      q.SQL.Add('VALUES');
      q.SQL.Add('  (:IDARTICULO, :IDAREA, :IDGRUPO, :IDSUBGRUPO, :MARCA, :DETALLE, :CODBARRA, :IDCOLOR,');
      q.SQL.Add('   :ACTIVO, :TIENETALLE, :OFERTA, :DUROFERTA, :ESTILOFAC, :TSINSTOCK, :SERVICIO,');
      q.SQL.Add('   :COSTO, :COSTOANT, :PNETO, :PBASE, :GANANCIA, :PRECIO, :PRECIOANT, :PRECIO_PP, ');
      q.SQL.Add('   :ALCIVA, :ALCIB, :IMPINT, :EXENTO, :FECHAALTA, :IDMARKUP, :USUARIO, :ESKIT, :FECHAMOD) ');
      q.ParamByName('IDARTICULO').AsInteger := ArticulosIdArticulo.AsInteger;
      if ArticulosIdGrupo.AsInteger in [6,7,11,12] then
        q.ParamByName('IdArea').AsInteger := 3
      else
        q.ParamByName('IdArea').AsInteger := 2;
      q.ParamByName('IDGRUPO').AsInteger := ArticulosIdGrupo.AsInteger;
      q.ParamByName('IDSUBGRUPO').AsInteger := ArticulosIdSubGrupo.AsInteger;
      q.ParamByName('MARCA').AsString := ArticulosMarca.AsString;
      q.ParamByName('DETALLE').AsString := ArticulosDetalle.AsString;
      q.ParamByName('CODBARRA').AsString := ArticulosIdArticulo.AsString;
      q.ParamByName('IDCOLOR').AsInteger := ArticulosIdColor.AsInteger;
      if ArticulosActivo.AsBoolean then
        q.ParamByName('ACTIVO').AsInteger := Verdadero
      else
        q.ParamByName('ACTIVO').AsInteger := Falso;
      if ArticulosTieneTalle.AsBoolean then
        q.ParamByName('TIENETALLE').AsInteger := Verdadero
      else
        q.ParamByName('TIENETALLE').AsInteger := Falso;
      if ArticulosOferta.AsBoolean then
        q.ParamByName('OFERTA').AsInteger := Verdadero
      else
        q.ParamByName('OFERTA').AsInteger := Falso;
      q.ParamByName('DUROFERTA').AsDate := ArticulosDuracionOferta.AsDateTime;
      q.ParamByName('ESTILOFAC').AsInteger := ArticulosEstiloFac.AsInteger;
      if ArticulosConsignacion.AsBoolean then
        q.ParamByName('TSINSTOCK').AsInteger := Verdadero
      else
        q.ParamByName('TSINSTOCK').AsInteger := Falso;
      if ArticulosServicio.AsBoolean then
        q.ParamByName('SERVICIO').AsInteger := Verdadero
      else
        q.ParamByName('SERVICIO').AsInteger := Falso;
      q.ParamByName('COSTO').AsCurrency := ArticulosCosto.AsCurrency;
      q.ParamByName('COSTOANT').AsCurrency := ArticulosCostoAnt.AsCurrency;
      q.ParamByName('PNETO').AsCurrency := ArticulosPNeto.AsCurrency;
      q.ParamByName('PBASE').AsCurrency := ArticulosPBase.AsCurrency;
      q.ParamByName('GANANCIA').AsFloat := ArticulosGanancia.AsFloat;
      q.ParamByName('PRECIO').AsCurrency := ArticulosPrecio.AsCurrency;
      q.ParamByName('PRECIOANT').AsCurrency := ArticulosPrecioAnt.AsCurrency;
      q.ParamByName('PRECIO_PP').AsCurrency := 0;
      q.ParamByName('ALCIVA').AsInteger := ArticulosAlcIva.AsInteger;
      q.ParamByName('ALCIB').AsInteger := ArticulosAlcIB.AsInteger;
      q.ParamByName('IMPINT').AsCurrency := ArticulosImpInt.AsCurrency;
      q.ParamByName('EXENTO').AsFloat := ArticulosExento.AsFloat;
      q.ParamByName('FECHAALTA').AsDate := ArticulosFechaAlta.AsDateTime;
      q.ParamByName('IDMARKUP').AsInteger := ArticulosIdMarkUp.AsInteger;
      q.ParamByName('USUARIO').AsInteger := ArticulosUsuario.AsInteger;
      q.ParamByName('ESKIT').AsInteger := Falso;
      q.ParamByName('FECHAMOD').Clear;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Productos '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Inc(CantTran);
    Articulos.Next;
  end;
  Articulos.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación Productos ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('Productos '+E.Message);
        raise;
      end
    end;
  end;

  mmPorDonde.Lines.Add('Productos: ArtModPrc');
  Application.ProcessMessages;
  ArtModPrc.Open;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('Select Max(IdRemMod) as Ultima ');
    q.SQL.Add('From ArtModPrc ');
    q.Open;
    if not q.IsEmpty then
    begin
      if not (ArtModPrc.Locate(ArtModPrcIdRemMod.FieldName,
              q.FieldByName('Ultima').AsInteger, [])) then
      begin
        ArtModPrc.First;
      end;
      q.Close;
    end
    else begin
      ArtModPrc.First;
    end;
  finally
    q.Free;
  end;
  CantTran := 1;
  Save_Tot := 0;
  While not ArtModPrc.Eof do
  begin
    if CantTran >= 20 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación ArtModPrc'+ IntToStr(Save_Tot));
        Application.ProcessMessages;
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('Productos '+E.Message);
          raise;
        end
      end;
      CantTran := 1;
    end;
    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO ARTMODPRC ');
      q.SQL.Add('  (IDREMMOD, IDARTICULO, TIPOCOMP, NROREMITO, FECHAR, DIAHORA, USUARIO, ');
      q.SQL.Add('   COSTOOLD, COSTONEW, PRECIOOLD, PRECIONEW, DETALLE, CANTCTAS, IDSUCURSAL, ');
      q.SQL.Add('   FECHAALTA, FECHAFIN, VALORCTAS) ');
      q.SQL.Add('VALUES ');
      q.SQL.Add('  (:IDREMMOD, :IDARTICULO, :TIPOCOMP, :NROREMITO, :FECHAR, :DIAHORA, :USUARIO, ');
      q.SQL.Add('   :COSTOOLD, :COSTONEW, :PRECIOOLD, :PRECIONEW, :DETALLE, :CANTCTAS, :IDSUCURSAL, ');
      q.SQL.Add('   :FECHAALTA, :FECHAFIN, :VALORCTAS) ');
      q.ParamByName('IDREMMOD').AsInteger := ArtModPrcIdRemMod.AsInteger;
      q.ParamByName('IDARTICULO').AsInteger := ArtModPrcIdArticulo.AsInteger;
      q.ParamByName('TIPOCOMP').AsInteger := ArtModPrcTipoComp.AsInteger;
      q.ParamByName('NROREMITO').AsString := ArtModPrcNroRemito.AsString;
      q.ParamByName('FECHAR').AsDate := ArtModPrcFechaR.AsDateTime;
      q.ParamByName('DIAHORA').AsDateTime := ArtModPrcDiaHora.AsDateTime;
      q.ParamByName('USUARIO').AsInteger := ArtModPrcUsuario.AsInteger;
      q.ParamByName('COSTOOLD').AsCurrency := ArtModPrcCostoOld.AsCurrency;
      q.ParamByName('COSTONEW').AsCurrency := ArtModPrcCostoNew.AsCurrency;
      q.ParamByName('PRECIOOLD').AsCurrency := ArtModPrcPrecioOld.AsCurrency;
      q.ParamByName('PRECIONEW').AsCurrency := ArtModPrcPrecioNew.AsCurrency;
      q.ParamByName('DETALLE').AsString := 'Cambio de Precios '+ DateToStr(ArtModPrcFechaR.AsDateTime);
      q.ParamByName('CANTCTAS').AsInteger := 0;
      q.ParamByName('IDSUCURSAL').AsInteger := 1;
      q.ParamByName('FECHAALTA').AsDate := ArtModPrcFechaR.AsDateTime;
      q.ParamByName('FECHAFIN').AsDate := ArtModPrcFechaR.AsDateTime;
      q.ParamByName('VALORCTAS').AsCurrency := 0;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('ArtModPrc '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Inc(CantTran);
    ArtModPrc.Next;
  end;
  ArtModPrc.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación ArtModPrc ');
      Application.ProcessMessages;
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('ArtModPrc '+E.Message);
        raise;
      end
    end;
  end;
  mmPorDonde.Lines.Add('Finalizado Actualizacion de productos  ');
  Application.ProcessMessages;
  DBIsam_ConnectDB(2);
end;

procedure TfrmConversion.DBIsam_Pasa_AuxProds;
var
  q,t: TMDOQuery;
  CantTran: Integer;
begin
  if not trConversion.InTransaction then
    trConversion.StartTransaction;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('DELETE FROM COLORES ');
    try
      q.ExecSQL;
    except
      on E:Exception do
      begin
        mmPorDonde.Lines.Add('BORRADO COLORES '+E.Message);
      end
    end;
    q.Close;
  finally
    q.Free;
  end;
  try
    trConversion.Commit;
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('BORRADO COLORES '+E.Message);
      raise;
    end
  end;

  mmPorDonde.Lines.Add('Productos: Colores');
  Application.ProcessMessages;
  Colores.Open;
  Colores.First;
  CantTran := 1;
  While not Colores.Eof do
  begin
    if CantTran >= 200 then
    begin
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación Colores ');
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('Colores '+E.Message);
        end
      end;
      CantTran := 1;
    end;
    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Insert Into ');
      q.SQL.Add('Colores(IdColor, Color) ');
      q.SQL.Add('Values(:IdColor, :Color) ');
      q.ParamByName('IdColor').AsInteger := ColoresIdPresentacion.AsInteger;
      q.ParamByName('Color').AsString := ColoresPresentacion.AsString;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Colores '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Colores.Next;
  end;
  Colores.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación Colores ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('Colores '+E.Message);
        raise;
      end
    end;
  end;

  if not trConversion.InTransaction then
    trConversion.StartTransaction;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('DELETE FROM MARCAS ');
    try
      q.ExecSQL;
    except
      on E:Exception do
      begin
        mmPorDonde.Lines.Add('BORRADO MARCAS '+E.Message);
      end
    end;
    q.Close;
  finally
    q.Free;
  end;
  try
    trConversion.Commit;
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('BORRADO MARCAS '+E.Message);
      raise;
    end
  end;

  mmPorDonde.Lines.Add('Productos: Marcas');
  Application.ProcessMessages;
  Marcas.Open;
  Marcas.First;
  CantTran := 1;
  While not Marcas.Eof do
  begin
    if CantTran >= 200 then
    begin
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación Marcas ');
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add(' '+E.Message);
        end
      end;
      CantTran := 1;
    end;
    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Insert Into ');
      q.SQL.Add('Marcas(IdMarca, Marca) ');
      q.SQL.Add('Values(:IdMarca, :Marca) ');
      q.ParamByName('IdMarca').AsInteger := MarcasIdMarca.AsInteger;
      q.ParamByName('Marca').AsString := MarcasMarca.AsString;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Marcas '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Marcas.Next;
    Inc(CantTran);
  end;
  Marcas.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación Marcas ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('Marcas '+E.Message);
        raise;
      end
    end;
  end;

  ArtTalles.Open;
  ArtTalles.First;
  CantTran := 1;
  While not ArtTalles.Eof do
  begin
    if CantTran >= 200 then
    begin
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación ArtTalles ');
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add(' '+E.Message);
        end
      end;
      CantTran := 1;
    end;
    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Insert Into ');
      q.SQL.Add('ArtTalles(IdArticulo, Talle) ');
      q.SQL.Add('Values(:IdArticulo, :Talle) ');
      q.ParamByName('IdArticulo').AsInteger := ArtTallesIdArticulo.AsInteger;
      q.ParamByName('Talle').AsInteger := ArtTallesTalle.AsInteger;
      q.ExecSQL;
      q.Close;
    finally
      q.Free;
    end;
    ArtTalles.Next;
  end;
  ArtTalles.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación ArtTalles ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('ArtTalles '+E.Message);
        raise;
      end
    end;
  end;

  DetTalles.Open;
  DetTalles.First;
  CantTran := 1;
  While not DetTalles.Eof do
  begin
    if CantTran >= 200 then
    begin
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación DetTalles ');
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add(' '+E.Message);
        end
      end;
      CantTran := 1;
    end;
    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;

    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Insert Into ');
      q.SQL.Add('DetTalles(IdValorTalle, Descripcion) ');
      q.SQL.Add('Values(:IdValorTalle, :Descripcion) ');
      q.ParamByName('IdValorTalle').AsInteger := DetTallesIdValorTalle.AsInteger;
      q.ParamByName('Descripcion').AsString := DetTallesDescripcion.AsString;
      q.ExecSQL;
      q.Close;
    finally
      q.Free;
    end;
    DetTalles.Next;
  end;

  DetTalles.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación DetTalles ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('DetTalles '+E.Message);
        raise;
      end
    end;
  end;
end;

//****************************************************************************
// Proveedores
//****************************************************************************
procedure TfrmConversion.DBIsam_Pasa_Compras;
var
  q, t: TMDOQuery;
  Esta, CantTran, Save_Tot: Integer;
begin
  DBIsam_ConnectDB(1);
  mmPorDonde.Lines.Add('Compras: Proveedores');
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM PROVEEDORES ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO Proveedores '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
    mmPorDonde.Lines.Add('Clear Proveedores ');
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('Proveedores '+E.Message);
      raise;
    end
  end;

  Proveedores.Open;
  Proveedores.First;
  CantTran := 1;
  Save_Tot := 0;
  While not Proveedores.Eof do
  begin
    if CantTran >= 100 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación Proveedores '+ IntToStr(Save_Tot));
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('Proveedores '+E.Message);
          raise;
        end
      end;
      CantTran := 1;
    end;

    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO PROVEEDORES ');
      q.SQL.Add('  (IDPROVEEDOR, IDSUCURSAL, NOMBRE, NOMBREFANTASIA, DIRECCION, LOCALIDAD, ');
      q.SQL.Add('   PROVINCIA, CODPOSTAL, TELEFONOS, TELFAX, MAIL, WEB, TIPOIVA, TIPODOC, ');
      q.SQL.Add('   DOCUMENTO, INGBRUTOS, CONTACTO, TELCONTACTO, IDSUCURSAL, CODCTACON, ');
      q.SQL.Add('   AUTORIZADO, DOCAUTOR, PERCEPCIONES, NROREGPERCP, NROREGRETEN_I, ');
      q.SQL.Add('   PRCRETENCION_I, MONTORETENCION_I, NORETENCION_I, VALIDEZNORET_I, ');
      q.SQL.Add('   NROREGRETEN_G, NORETENCION_G, MONTORETENCION_G, PRCRETENCION_G, ');
      q.SQL.Add('   VALIDEZNORET_G, MONTORETENCION_B, PRCRETENCION_B1, PRCRETENCION_B2, ');
      q.SQL.Add('   PROVSERVICIOS, MTORETENCION_SS, DETREGIMEN_G, FACTURAENDOLAR, ACTIVO) ');
      q.SQL.Add('VALUES ');
      q.SQL.Add('  (:IDPROVEEDOR, :IDSUCURSAL, :NOMBRE, :NOMBREFANTASIA, :DIRECCION, :LOCALIDAD, ');
      q.SQL.Add('   :PROVINCIA, :CODPOSTAL, :TELEFONOS, :TELFAX, :MAIL, :WEB, :TIPOIVA, :TIPODOC, ');
      q.SQL.Add('   :DOCUMENTO, :INGBRUTOS, :CONTACTO, :TELCONTACTO, :IDSUCURSAL, :CODCTACON, ');
      q.SQL.Add('   :AUTORIZADO, :DOCAUTOR, :PERCEPCIONES, :NROREGPERCP, :NROREGRETEN_I, ');
      q.SQL.Add('   :PRCRETENCION_I, :MONTORETENCION_I, :NORETENCION_I, :VALIDEZNORET_I, ');
      q.SQL.Add('   :NROREGRETEN_G, :NORETENCION_G, :MONTORETENCION_G, :PRCRETENCION_G, ');
      q.SQL.Add('   :VALIDEZNORET_G, :MONTORETENCION_B, :PRCRETENCION_B1, :PRCRETENCION_B2, ');
      q.SQL.Add('   :PROVSERVICIOS, :MTORETENCION_SS, :DETREGIMEN_G, :FACTURAENDOLAR, :ACTIVO) ');
      q.ParamByName('IDPROVEEDOR').AsInteger := ProveedoresIdProveedor.AsInteger;
      q.ParamByName('IDSUCURSAL').AsInteger := 1;
      q.ParamByName('NOMBRE').AsString := ProveedoresNombre.AsString;
      q.ParamByName('NOMBREFANTASIA').AsString := ProveedoresNombreFantasia.AsString;
      q.ParamByName('DIRECCION').AsString := ProveedoresDireccion.AsString;
      q.ParamByName('LOCALIDAD').AsString := ProveedoresLocalidad.AsString;
      q.ParamByName('PROVINCIA').AsString := ProveedoresProvincia.AsString;
      q.ParamByName('CODPOSTAL').AsString := ProveedoresCodPostal.AsString;
      q.ParamByName('TELEFONOS').AsString := ProveedoresTelefonos.AsString;
      q.ParamByName('TELFAX').AsString := ProveedoresTelFax.AsString;
      q.ParamByName('MAIL').AsString := ProveedoresMail.AsString;
      q.ParamByName('WEB').AsString := ProveedoresWeb.AsString;
      q.ParamByName('TIPOIVA').AsInteger := ProveedoresTipoIva.AsInteger;
      q.ParamByName('TIPODOC').AsInteger := ProveedoresTipoDoc.AsInteger;
      q.ParamByName('DOCUMENTO').AsString := ProveedoresDocumento.AsString;
      q.ParamByName('INGBRUTOS').AsString := ProveedoresIngBrutos.AsString;
      q.ParamByName('CONTACTO').AsString := ProveedoresContacto.AsString;
      q.ParamByName('TELCONTACTO').AsString := ProveedoresTelContacto.AsString;
      q.ParamByName('IDSUCURSAL').AsInteger := 1;
      q.ParamByName('CODCTACON').AsInteger := 0;
      q.ParamByName('AUTORIZADO').AsString := ProveedoresViajante.AsString;
      q.ParamByName('DOCAUTOR').AsString := ProveedoresTelViajante.AsString;
      q.ParamByName('PERCEPCIONES').AsInteger := Falso;
      q.ParamByName('NROREGPERCP').AsString := '0000';
      q.ParamByName('NROREGRETEN_I').AsString := '0000';
      q.ParamByName('PRCRETENCION_I').AsFloat := 0;
      q.ParamByName('MONTORETENCION_I').AsCurrency := 0;
      q.ParamByName('NORETENCION_I').AsInteger := 0;
      q.ParamByName('VALIDEZNORET_I').Clear;
      q.ParamByName('NROREGRETEN_G').AsString := '0000';
      q.ParamByName('NORETENCION_G').AsInteger := Falso;
      q.ParamByName('MONTORETENCION_G').AsCurrency := 0;
      q.ParamByName('PRCRETENCION_G').AsFloat := 0;
      q.ParamByName('VALIDEZNORET_G').Clear;
      q.ParamByName('MONTORETENCION_B').AsCurrency := 0;
      q.ParamByName('PRCRETENCION_B1').AsFloat := 0;
      q.ParamByName('PRCRETENCION_B2').AsFloat := 0;
      q.ParamByName('PROVSERVICIOS').AsInteger := Falso;
      q.ParamByName('MTORETENCION_SS').AsCurrency := 0;
      q.ParamByName('DETREGIMEN_G').AsString := Vacio;
      q.ParamByName('FACTURAENDOLAR').AsInteger := Falso;
      q.ParamByName('ACTIVO').AsInteger := Verdadero;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Proveedores '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Proveedores.Next;
    Inc(CantTran);
  end;

  Proveedores.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación Proveedores '+TimeToStr(Time));
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('Proveedores '+E.Message);
        raise;
      end
    end;
  end;

  mmPorDonde.Lines.Add('Compras: Facturas e Items'+ TimeToStr(Time));
  Application.ProcessMessages;
  FacCom.Open;
  FacCom.First;
  CantTran := 1;
  Save_Tot := 0;
  While not FacCom.Eof do
  begin
    Esta := 0;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Select Count(IdFactura) as Esta ');
      q.SQL.Add('From FacCom ');
      q.SQL.Add('Where IdFactura =:IdFactura And ');
      q.SQL.Add('      IdSucursal =:IdSucursal And ');
      q.SQL.Add('      IdPuntoVenta =:IdPuntoVenta ');
      q.ParamByName('IdFactura').AsInteger := FacComIdFactura.AsInteger;
      q.ParamByName('IdSucursal').AsInteger := FacComIdSucursal.AsInteger;
      q.ParamByName('IdPuntoVenta').AsInteger := FacComIdPuntoVenta.AsInteger;
      q.Open;
      Esta := q.FieldByName('Esta').AsInteger;
      q.Close;
    finally
      q.Free;
    end;

    if Esta = 0 then
    begin
      if CantTran >= 100 then
      begin
        Save_Tot := Save_Tot + CantTran;
        try
          trConversion.Commit;
          mmPorDonde.Lines.Add('Grabación Compras '+ IntToStr(Save_Tot));
          mmPorDonde.Lines.Add('Grabación ');
        except
          on E:Exception do
          begin
            trConversion.Rollback;
            mmPorDonde.Lines.Add('Compras '+E.Message);
            raise;
          end
        end;
        CantTran := 1;
      end;
      if CantTran = 1 then
      begin
        if not trConversion.InTransaction then
          trConversion.StartTransaction;
      end;
      if CantTran = 1 then
      begin
        if not trConversion.InTransaction then
          trConversion.StartTransaction;
      end;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('Insert InTo ');
        q.SQL.Add('FacCom(IdFactura, IdSucursal, IdPuntoVenta, DiaHora, TipoFactura, Periodo, FechaF, ');
        q.SQL.Add('       NroFactura, CompRef, IdCompRef, CaiProv, Proveedor, TipoIva, CantArtic, PrcBonif, ');
        q.SQL.Add('       AlcPercepcion, Bonificacion, Neto, Exento, NoComputables, RetIva, RetGan, RetIBto, ');
        q.SQL.Add('       RetLH, IvaAlicuota1, IvaAlicuota2, IvaOtAlc, Total, Contado, Tickets, CtaCte, ');
        q.SQL.Add('       ChequeProp, ChequeTer, OtrosPagos, Comision, Usuario, TipoOp, State, FecPreLiqDesde, ');
        q.SQL.Add('       FecPreLiqHasta, IdEmpresa, Detalle) ');
        q.SQL.Add('Values(:IdFactura, :IdSucursal, :IdPuntoVenta, :DiaHora, :TipoFactura, :Periodo, :FechaF, ');
        q.SQL.Add('       :NroFactura, :CompRef, :IdCompRef, :CaiProv, :Proveedor, :TipoIva, :CantArtic, :PrcBonif, ');
        q.SQL.Add('       :AlcPercepcion, :Bonificacion, :Neto, :Exento, :NoComputables, :RetIva, :RetGan, :RetIBto, ');
        q.SQL.Add('       :RetLH, :IvaAlicuota1, :IvaAlicuota2, :IvaOtAlc, :Total, :Contado, :Tickets, :CtaCte, ');
        q.SQL.Add('       :ChequeProp, :ChequeTer, :OtrosPagos, :Comision, :Usuario, :TipoOp, :State, :FecPreLiqDesde, ');
        q.SQL.Add('       :FecPreLiqHasta, :IdEmpresa, :Detalle) ');
        q.ParamByName('IdFactura').AsInteger := FacComIdFactura.AsInteger;
        q.ParamByName('IdSucursal').AsInteger := FacComIdSucursal.AsInteger;
        q.ParamByName('IdPuntoVenta').AsInteger := FacComIdPuntoVenta.AsInteger;
        q.ParamByName('DiaHora').AsDateTime := FacComDiaHora.AsDateTime;
        q.ParamByName('TipoFactura').AsInteger := FacComTipoFactura.AsInteger;
        q.ParamByName('Periodo').AsDate := FacComPeriodo.AsDateTime;
        q.ParamByName('FechaF').AsDate := FacComFechaF.AsDateTime;
        q.ParamByName('NroFactura').AsString := FacComNroFactura.AsString;
        q.ParamByName('CompRef').AsString := FacComCompRef.AsString;
        q.ParamByName('IdCompRef').AsInteger := FacComIdCompRef.AsInteger;
        q.ParamByName('CaiProv').AsString := FacComCaiProv.AsString;
        q.ParamByName('Proveedor').AsInteger := FacComProveedor.AsInteger;
        q.ParamByName('TipoIva').AsInteger := FacComTipoIva.AsInteger;
        q.ParamByName('PrcBonif').AsFloat := FacComPrcBonif.AsFloat;
        q.ParamByName('Bonificacion').AsCurrency := FacComBonificacion.AsCurrency;
        q.ParamByName('Neto').AsCurrency := FacComNeto.AsCurrency;
        q.ParamByName('Exento').AsCurrency := FacComExento.AsCurrency;
        q.ParamByName('NoComputables').AsCurrency := FacComNoComputables.AsCurrency;
        q.ParamByName('AlcPercepcion').AsFloat := FacComAlcPercepcion.AsFloat;
        q.ParamByName('RetIva').AsCurrency := FacComPagPersepCuenta.AsCurrency;
        q.ParamByName('RetGan').AsCurrency := FacComRetGan.AsCurrency;
        q.ParamByName('RetIBto').AsCurrency := FacComRetIBto.AsCurrency;
        q.ParamByName('RetLH').AsCurrency := FacComRetLH.AsCurrency;
        q.ParamByName('IvaAlicuota1').AsCurrency := FacComIvaAlicuota1.AsCurrency;
        q.ParamByName('IvaAlicuota2').AsCurrency := FacComIvaAlicuota2.AsCurrency;
        q.ParamByName('IvaOtAlc').AsCurrency := FacComIvaOtAlc.AsCurrency;
        q.ParamByName('Total').AsCurrency := FacComTotal.AsCurrency;
        q.ParamByName('Contado').AsCurrency := FacComContado.AsCurrency;
        q.ParamByName('Tickets').AsCurrency := FacComTickets.AsCurrency;
        q.ParamByName('CtaCte').AsCurrency := FacComCtaCte.AsCurrency;
        q.ParamByName('ChequeProp').AsCurrency := FacComChequeProp.AsCurrency;
        q.ParamByName('ChequeTer').AsCurrency := FacComChequeTer.AsCurrency;
        q.ParamByName('OtrosPagos').AsCurrency := FacComOtrosPagos.AsCurrency;
        q.ParamByName('Comision').AsCurrency := 0;
        q.ParamByName('Usuario').AsInteger := FacComUsuario.AsInteger;
        q.ParamByName('State').AsInteger := 0;
        q.ParamByName('FecPreLiqDesde').Clear;
        q.ParamByName('FecPreLiqHasta').Clear;
        q.ParamByName('IdEmpresa').AsInteger := FacComIdPeriodo.AsInteger;
        q.ParamByName('Detalle').AsString := ' ';
        if FacComCuenta.AsInteger > 0 then
        begin
          q.ParamByName('TipoOP').AsInteger := fcGastos;
          q.ParamByName('CantArtic').AsInteger := 1;
          try
            t := TMDOQuery.Create(nil);
            t.Database := dbConversion;
            t.Transaction := trConversion;
            t.SQL.Add('Insert InTo ');
            t.SQL.Add('ItemsFC(IdFactura, IdSucursal, IdPuntoVenta, IdItem, ');
            t.SQL.Add('        IdArticulo, FechaF, Talle, Cantidad, PrcDcto, ');
            t.SQL.Add('        Descuento, PrecioNeto, PrecioFinal, PrecioTotal, ');
            t.SQL.Add('        Exento, ImpInt, MtoIva, IdAlcIva, AlicuotaIva, State) ');
            t.SQL.Add('Values(:IdFactura, :IdSucursal, :IdPuntoVenta, :IdItem, ');
            t.SQL.Add('       :IdArticulo, :FechaF, :Talle, :Cantidad, :PrcDcto, ');
            t.SQL.Add('       :Descuento, :PrecioNeto, :PrecioFinal, :PrecioTotal, ');
            t.SQL.Add('       :Exento, :ImpInt, :MtoIva, :IdAlcIva, :AlicuotaIva, :State) ');
            t.ParamByName('IdFactura').AsInteger := FacComIdFactura.AsInteger;
            t.ParamByName('IdSucursal').AsInteger := FacComIdSucursal.AsInteger;
            t.ParamByName('IdPuntoVenta').AsInteger := FacComIdPuntoVenta.AsInteger;
            t.ParamByName('IdItem').AsInteger := 1;
            t.ParamByName('IdArticulo').AsInteger := FacComCuenta.AsInteger;
            t.ParamByName('FechaF').AsDateTime := FacComFechaF.AsDateTime;
            t.ParamByName('Talle').AsInteger := 0;
            t.ParamByName('PrcDcto').AsFloat := 0;
            t.ParamByName('Descuento').AsCurrency := 0;
            t.ParamByName('Cantidad').AsFloat := 100;
            t.ParamByName('PrecioNeto').AsCurrency := FacComNeto.AsCurrency;
            t.ParamByName('PrecioFinal').AsCurrency := 0;
            t.ParamByName('PrecioTotal').AsCurrency := FacComTotal.AsCurrency;
            t.ParamByName('Exento').AsCurrency := 0;
            t.ParamByName('ImpInt').AsCurrency := 0;
            t.ParamByName('MtoIva').AsCurrency := FacComIvaAlicuota1.AsCurrency+ FacComIvaAlicuota2.AsCurrency+ FacComIvaOtAlc.AsCurrency;
            if FacComIvaAlicuota1.AsCurrency <> 0 then
            begin
              t.ParamByName('IdAlcIva').AsInteger := 1;
              t.ParamByName('AlicuotaIva').AsFloat:= GetAlcIva(1);
            end;
            if FacComIvaAlicuota2.AsCurrency <> 0 then
            begin
              t.ParamByName('IdAlcIva').AsInteger := 2;
              t.ParamByName('AlicuotaIva').AsFloat:= GetAlcIva(2);
            end;
            if FacComIvaOtAlc.AsCurrency <> 0 then
            begin
              t.ParamByName('IdAlcIva').AsInteger := 3;
              t.ParamByName('AlicuotaIva').AsFloat:= GetAlcIva(3);
            end;
            t.ParamByName('State').AsInteger := 0;
            try
              t.ExecSQL;
            except
            end;
          finally
            t.Free;
          end;
        end
        else begin
          q.ParamByName('TipoOP').AsInteger := fcCompra;
          q.ParamByName('CantArtic').AsInteger := FacComCantArtic.AsInteger;
          ItemsFC.Close;
          ItemsFC.Filter := 'IdFactura = '+IntToStr(FacComIdFactura.AsInteger)+ ' And '+
                            'IdSucursal = ' +IntToStr(FacComIdSucursal.AsInteger) + 'And '+
                            'IdPuntoVenta = '+IntToStr(FacComIdPuntoVenta.AsInteger);
          ItemsFC.Filtered := True;
          ItemsFC.Open;
          If not ItemsFC.IsEmpty then
          begin
            while not ItemsFC.Eof do
            begin
              try
                t := TMDOQuery.Create(nil);
                t.Database := dbConversion;
                t.Transaction := trConversion;
                t.SQL.Add('Insert InTo ');
                t.SQL.Add('ItemsFC(IdFactura, IdSucursal, IdPuntoVenta, IdItem, IdArticulo, FechaF, Talle, Cantidad, ');
                t.SQL.Add('        PrcDcto, Descuento, PrecioNeto, PrecioFinal, PrecioTotal, Exento, ImpInt, MtoIva, ');
                t.SQL.Add('        IdAlcIva, AlicuotaIva, State) ');
                t.SQL.Add('Values(:IdFactura, :IdSucursal, :IdPuntoVenta, :IdItem, :IdArticulo, :FechaF, :Talle, :Cantidad, ');
                t.SQL.Add('       :PrcDcto, :Descuento, :PrecioNeto, :PrecioFinal, :PrecioTotal, :Exento, :ImpInt, :MtoIva, ');
                t.SQL.Add('       :IdAlcIva, :AlicuotaIva, :State) ');
                t.ParamByName('IdFactura').AsInteger := ItemsFCIdFactura.AsInteger;
                t.ParamByName('IdSucursal').AsInteger := ItemsFCIdSucursal.AsInteger;
                t.ParamByName('IdPuntoVenta').AsInteger := ItemsFCIdPuntoVenta.AsInteger;
                t.ParamByName('IdItem').AsInteger := ItemsFCIdItem.AsInteger;
                t.ParamByName('IdArticulo').AsInteger := ItemsFCIdArticulo.AsInteger;
                t.ParamByName('FechaF').AsDateTime := ItemsFCFechaF.AsDateTime;
                t.ParamByName('Talle').AsInteger := ItemsFCTalle.AsInteger;
                t.ParamByName('PrcDcto').AsFloat := 0;
                t.ParamByName('Descuento').AsCurrency := 0;
                t.ParamByName('Cantidad').AsFloat := ItemsFCCantidad.AsFloat;
                t.ParamByName('PrecioNeto').AsCurrency := ItemsFCPrecioNeto.AsCurrency;
                t.ParamByName('PrecioFinal').AsCurrency := ItemsFCPrecioFinal.AsCurrency;
                t.ParamByName('PrecioTotal').AsCurrency := ItemsFCPrecioTotal.AsCurrency;
                t.ParamByName('Exento').AsCurrency := ItemsFCExento.AsCurrency;
                t.ParamByName('ImpInt').AsCurrency := ItemsFCImpInt.AsCurrency;
                t.ParamByName('MtoIva').AsCurrency := ItemsFCMtoIva.AsCurrency;
                t.ParamByName('IdAlcIva').AsInteger := ItemsFCIdAlcIva.AsInteger;
                t.ParamByName('AlicuotaIva').AsFloat:= GetAlcIva(ItemsFCIdAlcIva.AsInteger);
                t.ParamByName('State').AsInteger := 0;
                try
                  t.ExecSQL;
                except
                  on E:Exception do
                  begin
                    mmPorDonde.Lines.Add('Compras Productos '+E.Message);
                  end
                end;
              finally
                t.Free;
              end;
              ItemsFC.Next;
            end;
          end;
          ItemsFC.Close;
        end;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('Compras '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;
      Inc(CantTran);
    end;
    FacCom.Next;
  end;
  FacCom.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación Compras '+TimeToStr(Time));
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('Compras '+E.Message);
      end
    end;
  end;

  mmPorDonde.Lines.Add('Compras: Prov By Art');
  Application.ProcessMessages;
  ProvByArt.Open;
  ProvByArt.First;
  CantTran := 1;
  Save_Tot := 0;
  While not ProvByArt.Eof do
  begin
    Esta := 0;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Select Count(IdProveedor) as Esta ');
      q.SQL.Add('From ProvByArt ');
      q.SQL.Add('Where IdProveedor =:IdProveedor And ');
      q.SQL.Add('      IdArticulo =:IdArticulo And ');
      q.SQL.Add('      UltimaCompra =:UltimaCompra ');
      q.ParamByName('IdProveedor').AsInteger := ProvByArtIdArticulo.AsInteger;
      q.ParamByName('IdArticulo').AsInteger := ProvByArtIdArticulo.AsInteger;
      q.ParamByName('UltimaCompra').AsDate := ProvByArtUltimaCompra.AsDateTime;
      q.Open;
      Esta := q.FieldByName('Esta').AsInteger;
      q.Close;
    finally
      q.Free;
    end;

    if Esta = 0 then
    begin
      if CantTran >= 100 then
      begin
        Save_Tot := Save_Tot + CantTran;
        try
          trConversion.Commit;
          mmPorDonde.Lines.Add('Grabación ProvByArt '+ IntToStr(Save_Tot));
        except
          on E:Exception do
          begin
            trConversion.Rollback;
            mmPorDonde.Lines.Add('ProvByArt '+E.Message);
          end
        end;
        CantTran := 1;
      end;
      if CantTran = 1 then
      begin
        if not trConversion.InTransaction then
          trConversion.StartTransaction;
      end;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('Insert InTo ');
        q.SQL.Add('ProvByArt(IdProveedor, IdArticulo, UltimaCompra, ');
        q.SQL.Add('          PrecioProv, Descuento, Cantidad) ');
        q.SQL.Add('Values(:IdProveedor, :IdArticulo, :UltimaCompra, ');
        q.SQL.Add('       :PrecioProv, :Descuento, :Cantidad) ');
        q.ParamByName('IdProveedor').AsInteger := ProvByArtIdArticulo.AsInteger;
        q.ParamByName('IdArticulo').AsInteger := ProvByArtIdArticulo.AsInteger;
        q.ParamByName('UltimaCompra').AsDate := ProvByArtUltimaCompra.AsDateTime;
        q.ParamByName('PrecioProv').AsCurrency := ProvByArtPrecioProv.AsCurrency;
        q.ParamByName('Descuento').AsFloat := ProvByArtDescuento.AsFloat;
        q.ParamByName('Cantidad').AsFloat := ProvByArtCantidad.AsFloat;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('Prov By Art '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;
      Inc(CantTran);
    end;
    ProvByArt.Next;
  end;
  ProvByArt.Close;

  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación ProvByArt '+TimeToStr(Time));
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('ProvByArts '+E.Message);
      end
    end;
  end;

  mmPorDonde.Lines.Add('Compras: Plan de Cuentas');
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM PLANCTAS ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('P.DE CUENTAS Borrado '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('Cuentas '+E.Message);
      raise;
    end
  end;

  PlanCtas.Open;
  PlanCtas.First;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    While not PlanCtas.Eof do
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('INSERT INTO PlanCtas ');
        q.SQL.Add('  (CENTRO, CODIGO, NIVEL, IDCUENTA, IDSUCURSAL, ');
        q.SQL.Add('   DESCRIPCION, CODIGOCONTABLE, DETALLECENTRO) ');
        q.SQL.Add('VALUES ');
        q.SQL.Add('  (:CENTRO, :CODIGO, :NIVEL, :IDCUENTA, :IDSUCURSAL, ');
        q.SQL.Add('   :DESCRIPCION, :CODIGOCONTABLE, :DETALLECENTRO) ');
        q.ParamByName('CENTRO').AsInteger := PlanCtasCentro.AsInteger;
        q.ParamByName('CODIGO').AsInteger := PlanCtasCodigo.AsInteger;
        if PlanCtasEsCentro.AsInteger = 0 then
          q.ParamByName('NIVEL').AsInteger := 0
        else
          q.ParamByName('NIVEL').AsInteger := 1;
        q.ParamByName('IDCUENTA').AsInteger := PlanCtasCodigo.AsInteger;
        q.ParamByName('IDSUCURSAL').AsInteger := PlanCtasIdSucursal.AsInteger;
        q.ParamByName('DESCRIPCION').AsString := PlanCtasDescripcion.AsString;
        q.ParamByName('CODIGOCONTABLE').AsString := PlanCtasCodigoContable.AsString;
        q.ParamByName('DETALLECENTRO').AsString := PlanCtasDetalleCentro.AsString;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('Plan Cuentas '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;
      PlanCtas.Next;
    end;
    PlanCtas.Close;
    trConversion.Commit;
  except
    trConversion.Rollback;
    raise;
  end;
  mmPorDonde.Lines.Add('Finalizado Compras '+TimeToStr(Time));
  DBIsam_ConnectDB(2);
end;

procedure TfrmConversion.DBIsam_Pasa_Provs;
var
  q, t: TMDOQuery;
  Esta, CantTran, Save_Tot: Integer;
begin
  DBIsam_ConnectDB(1);
  mmPorDonde.Lines.Add('Compras: Proveedores');
  Application.ProcessMessages;
  Proveedores.Open;
  Proveedores.First;
  CantTran := 1;
  Save_Tot := 0;
  While not Proveedores.Eof do
  begin
    Esta := 0;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Select Count(IdProveedor) as Esta ');
      q.SQL.Add('From Proveedores ');
      q.SQL.Add('Where IdProveedor = :IdProveedor ');
      q.ParamByName('IdProveedor').AsInteger := ProveedoresIdProveedor.AsInteger;
      q.Open;
      Esta := q.FieldByName('Esta').AsInteger;
      q.Close;
    finally
      q.Free;
    end;

    if CantTran >= 10 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación Proveedores '+ IntToStr(Save_Tot));
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('Proveedores '+E.Message);
          raise;
        end
      end;
      CantTran := 1;
    end;

    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;

    if Esta = 0 then
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('INSERT INTO PROVEEDORES ');
        q.SQL.Add('  (IDPROVEEDOR, IDSUCURSAL, NOMBRE, NOMBREFANTASIA, DIRECCION, LOCALIDAD, ');
        q.SQL.Add('   PROVINCIA, CODPOSTAL, TELEFONOS, TELFAX, MAIL, WEB, TIPOIVA, TIPODOC, ');
        q.SQL.Add('   DOCUMENTO, INGBRUTOS, CONTACTO, TELCONTACTO, IDSUCURSAL, CODCTACON, ');
        q.SQL.Add('   AUTORIZADO, DOCAUTOR, PERCEPCIONES, NROREGPERCP, NROREGRETEN_I, ');
        q.SQL.Add('   PRCRETENCION_I, MONTORETENCION_I, NORETENCION_I, VALIDEZNORET_I, ');
        q.SQL.Add('   NROREGRETEN_G, NORETENCION_G, MONTORETENCION_G, PRCRETENCION_G, ');
        q.SQL.Add('   VALIDEZNORET_G, MONTORETENCION_B, PRCRETENCION_B1, PRCRETENCION_B2, ');
        q.SQL.Add('   PROVSERVICIOS, MTORETENCION_SS, DETREGIMEN_G, FACTURAENDOLAR, ACTIVO) ');
        q.SQL.Add('VALUES ');
        q.SQL.Add('  (:IDPROVEEDOR, :IDSUCURSAL, :NOMBRE, :NOMBREFANTASIA, :DIRECCION, :LOCALIDAD, ');
        q.SQL.Add('   :PROVINCIA, :CODPOSTAL, :TELEFONOS, :TELFAX, :MAIL, :WEB, :TIPOIVA, :TIPODOC, ');
        q.SQL.Add('   :DOCUMENTO, :INGBRUTOS, :CONTACTO, :TELCONTACTO, :IDSUCURSAL, :CODCTACON, ');
        q.SQL.Add('   :AUTORIZADO, :DOCAUTOR, :PERCEPCIONES, :NROREGPERCP, :NROREGRETEN_I, ');
        q.SQL.Add('   :PRCRETENCION_I, :MONTORETENCION_I, :NORETENCION_I, :VALIDEZNORET_I, ');
        q.SQL.Add('   :NROREGRETEN_G, :NORETENCION_G, :MONTORETENCION_G, :PRCRETENCION_G, ');
        q.SQL.Add('   :VALIDEZNORET_G, :MONTORETENCION_B, :PRCRETENCION_B1, :PRCRETENCION_B2, ');
        q.SQL.Add('   :PROVSERVICIOS, :MTORETENCION_SS, :DETREGIMEN_G, :FACTURAENDOLAR, :ACTIVO) ');
        q.ParamByName('IDPROVEEDOR').AsInteger := ProveedoresIdProveedor.AsInteger;
        q.ParamByName('IDSUCURSAL').AsInteger := 1;
        q.ParamByName('NOMBRE').AsString := ProveedoresNombre.AsString;
        q.ParamByName('NOMBREFANTASIA').AsString := ProveedoresNombreFantasia.AsString;
        q.ParamByName('DIRECCION').AsString := ProveedoresDireccion.AsString;
        q.ParamByName('LOCALIDAD').AsString := ProveedoresLocalidad.AsString;
        q.ParamByName('PROVINCIA').AsString := ProveedoresProvincia.AsString;
        q.ParamByName('CODPOSTAL').AsString := ProveedoresCodPostal.AsString;
        q.ParamByName('TELEFONOS').AsString := ProveedoresTelefonos.AsString;
        q.ParamByName('TELFAX').AsString := ProveedoresTelFax.AsString;
        q.ParamByName('MAIL').AsString := ProveedoresMail.AsString;
        q.ParamByName('WEB').AsString := ProveedoresWeb.AsString;
        q.ParamByName('TIPOIVA').AsInteger := ProveedoresTipoIva.AsInteger;
        q.ParamByName('TIPODOC').AsInteger := ProveedoresTipoDoc.AsInteger;
        q.ParamByName('DOCUMENTO').AsString := ProveedoresDocumento.AsString;
        q.ParamByName('INGBRUTOS').AsString := ProveedoresIngBrutos.AsString;
        q.ParamByName('CONTACTO').AsString := ProveedoresContacto.AsString;
        q.ParamByName('TELCONTACTO').AsString := ProveedoresTelContacto.AsString;
        q.ParamByName('IDSUCURSAL').AsInteger := 1;
        q.ParamByName('CODCTACON').AsInteger := 0;
        q.ParamByName('AUTORIZADO').AsString := ProveedoresViajante.AsString;
        q.ParamByName('DOCAUTOR').AsString := ProveedoresTelViajante.AsString;
        q.ParamByName('PERCEPCIONES').AsInteger := Falso;
        q.ParamByName('NROREGPERCP').AsString := '0000';
        q.ParamByName('NROREGRETEN_I').AsString := '0000';
        q.ParamByName('PRCRETENCION_I').AsFloat := 0;
        q.ParamByName('MONTORETENCION_I').AsCurrency := 0;
        q.ParamByName('NORETENCION_I').AsInteger := 0;
        q.ParamByName('VALIDEZNORET_I').Clear;
        q.ParamByName('NROREGRETEN_G').AsString := '0000';
        q.ParamByName('NORETENCION_G').AsInteger := Falso;
        q.ParamByName('MONTORETENCION_G').AsCurrency := 0;
        q.ParamByName('PRCRETENCION_G').AsFloat := 0;
        q.ParamByName('VALIDEZNORET_G').Clear;
        q.ParamByName('MONTORETENCION_B').AsCurrency := 0;
        q.ParamByName('PRCRETENCION_B1').AsFloat := 0;
        q.ParamByName('PRCRETENCION_B2').AsFloat := 0;
        q.ParamByName('PROVSERVICIOS').AsInteger := Falso;
        q.ParamByName('MTORETENCION_SS').AsCurrency := 0;
        q.ParamByName('DETREGIMEN_G').AsString := Vacio;
        q.ParamByName('FACTURAENDOLAR').AsInteger := Falso;
        q.ParamByName('ACTIVO').AsInteger := Verdadero;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('Proveedores '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;
    end;
    Proveedores.Next;
    Inc(CantTran);
  end;

  Proveedores.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación Proveedores '+TimeToStr(Time));
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('Proveedores '+E.Message);
        raise;
      end
    end;
  end;
  DBIsam_ConnectDB(2);
end;

procedure TfrmConversion.DBIsam_Actualiza_Compras;
var
  q, t: TMDOQuery;
  Esta, CantTran, Save_Tot, CC_Mov: Integer;
begin
  DBIsam_ConnectDB(1);
  mmPorDonde.Lines.Add('Actualizacion Compras: Facturas e Items'+ TimeToStr(Time));
  Application.ProcessMessages;

  FacCom.Filter := 'ParaPasar = 1';
  FacCom.Filtered := True;
  FacCom.Open;
  FacCom.First;
  CantTran := 1;
  Save_Tot := 0;
  While not FacCom.Eof do
  begin
    Esta := 0;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Select Count(IdFactura) as Esta ');
      q.SQL.Add('From FacCom ');
      q.SQL.Add('Where IdFactura =:IdFactura And ');
      q.SQL.Add('      IdSucursal =:IdSucursal And ');
      q.SQL.Add('      IdPuntoVenta =:IdPuntoVenta ');
      q.ParamByName('IdFactura').AsInteger := FacComIdFactura.AsInteger;
      q.ParamByName('IdSucursal').AsInteger := FacComIdSucursal.AsInteger;
      q.ParamByName('IdPuntoVenta').AsInteger := FacComIdPuntoVenta.AsInteger;
      q.Open;
      Esta := q.FieldByName('Esta').AsInteger;
      q.Close;
    finally
      q.Free;
    end;

    if Esta = 0 then
    begin
      if CantTran >= 10 then
      begin
        Save_Tot := Save_Tot + CantTran;
        try
          trConversion.Commit;
          mmPorDonde.Lines.Add('Grabación Compras '+ IntToStr(Save_Tot));
          Application.ProcessMessages;
        except
          on E:Exception do
          begin
            trConversion.Rollback;
            mmPorDonde.Lines.Add('Compras '+E.Message);
            Application.ProcessMessages;
          end
        end;
        CantTran := 1;
      end;
      if CantTran = 1 then
      begin
        if not trConversion.InTransaction then
          trConversion.StartTransaction;
      end;

      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('Insert InTo ');
        q.SQL.Add('FacCom(IdFactura, IdSucursal, IdPuntoVenta, DiaHora, TipoFactura, Periodo, FechaF, ');
        q.SQL.Add('       NroFactura, CompRef, IdCompRef, CaiProv, Proveedor, TipoIva, CantArtic, PrcBonif, ');
        q.SQL.Add('       AlcPercepcion, Bonificacion, Neto, Exento, NoComputables, RetIva, RetGan, RetIBto, ');
        q.SQL.Add('       RetLH, IvaAlicuota1, IvaAlicuota2, IvaOtAlc, Total, Contado, Tickets, CtaCte, ');
        q.SQL.Add('       ChequeProp, ChequeTer, OtrosPagos, Comision, Usuario, TipoOp, State, FecPreLiqDesde, ');
        q.SQL.Add('       FecPreLiqHasta, IdEmpresa, Detalle) ');
        q.SQL.Add('Values(:IdFactura, :IdSucursal, :IdPuntoVenta, :DiaHora, :TipoFactura, :Periodo, :FechaF, ');
        q.SQL.Add('       :NroFactura, :CompRef, :IdCompRef, :CaiProv, :Proveedor, :TipoIva, :CantArtic, :PrcBonif, ');
        q.SQL.Add('       :AlcPercepcion, :Bonificacion, :Neto, :Exento, :NoComputables, :RetIva, :RetGan, :RetIBto, ');
        q.SQL.Add('       :RetLH, :IvaAlicuota1, :IvaAlicuota2, :IvaOtAlc, :Total, :Contado, :Tickets, :CtaCte, ');
        q.SQL.Add('       :ChequeProp, :ChequeTer, :OtrosPagos, :Comision, :Usuario, :TipoOp, :State, :FecPreLiqDesde, ');
        q.SQL.Add('       :FecPreLiqHasta, :IdEmpresa, :Detalle) ');
        q.ParamByName('IdFactura').AsInteger := FacComIdFactura.AsInteger;
        q.ParamByName('IdSucursal').AsInteger := FacComIdSucursal.AsInteger;
        q.ParamByName('IdPuntoVenta').AsInteger := FacComIdPuntoVenta.AsInteger;
        q.ParamByName('DiaHora').AsDateTime := FacComDiaHora.AsDateTime;
        q.ParamByName('TipoFactura').AsInteger := FacComTipoFactura.AsInteger;
        q.ParamByName('Periodo').AsDate := FacComPeriodo.AsDateTime;
        q.ParamByName('FechaF').AsDate := FacComFechaF.AsDateTime;
        q.ParamByName('NroFactura').AsString := FacComNroFactura.AsString;
        q.ParamByName('CompRef').AsString := FacComCompRef.AsString;
        q.ParamByName('IdCompRef').AsInteger := FacComIdCompRef.AsInteger;
        q.ParamByName('CaiProv').AsString := FacComCaiProv.AsString;
        q.ParamByName('Proveedor').AsInteger := FacComProveedor.AsInteger;
        q.ParamByName('TipoIva').AsInteger := FacComTipoIva.AsInteger;
        q.ParamByName('PrcBonif').AsFloat := FacComPrcBonif.AsFloat;
        q.ParamByName('Bonificacion').AsCurrency := FacComBonificacion.AsCurrency;
        q.ParamByName('Neto').AsCurrency := FacComNeto.AsCurrency;
        q.ParamByName('Exento').AsCurrency := FacComExento.AsCurrency;
        q.ParamByName('NoComputables').AsCurrency := FacComNoComputables.AsCurrency;
        q.ParamByName('AlcPercepcion').AsFloat := FacComAlcPercepcion.AsFloat;
        q.ParamByName('RetIva').AsCurrency := FacComPagPersepCuenta.AsCurrency;
        q.ParamByName('RetGan').AsCurrency := FacComRetGan.AsCurrency;
        q.ParamByName('RetIBto').AsCurrency := FacComRetIBto.AsCurrency;
        q.ParamByName('RetLH').AsCurrency := FacComRetLH.AsCurrency;
        q.ParamByName('IvaAlicuota1').AsCurrency := FacComIvaAlicuota1.AsCurrency;
        q.ParamByName('IvaAlicuota2').AsCurrency := FacComIvaAlicuota2.AsCurrency;
        q.ParamByName('IvaOtAlc').AsCurrency := FacComIvaOtAlc.AsCurrency;
        q.ParamByName('Total').AsCurrency := FacComTotal.AsCurrency;
        q.ParamByName('Contado').AsCurrency := FacComContado.AsCurrency;
        q.ParamByName('Tickets').AsCurrency := FacComTickets.AsCurrency;
        q.ParamByName('CtaCte').AsCurrency := FacComCtaCte.AsCurrency;
        q.ParamByName('ChequeProp').AsCurrency := FacComChequeProp.AsCurrency;
        q.ParamByName('ChequeTer').AsCurrency := FacComChequeTer.AsCurrency;
        q.ParamByName('OtrosPagos').AsCurrency := FacComOtrosPagos.AsCurrency;
        q.ParamByName('Comision').AsCurrency := 0;
        q.ParamByName('Usuario').AsInteger := FacComUsuario.AsInteger;
        q.ParamByName('State').AsInteger := 0;
        q.ParamByName('FecPreLiqDesde').Clear;
        q.ParamByName('FecPreLiqHasta').Clear;
        case FacComIdPeriodo.AsInteger of
          0: q.ParamByName('IdEmpresa').AsInteger := 1;
          1: q.ParamByName('IdEmpresa').AsInteger := 2;
        end;
        q.ParamByName('Detalle').AsString := ' ';
        if (FacComCuenta.AsInteger > 0) and
           (FacComCantArtic.AsInteger = 0) then
        begin
          q.ParamByName('TipoOP').AsInteger := fcGastos;
          q.ParamByName('CantArtic').AsInteger := 1;
          try
            t := TMDOQuery.Create(nil);
            t.Database := dbConversion;
            t.Transaction := trConversion;
            t.SQL.Add('Insert InTo ');
            t.SQL.Add('ItemsFC(IdFactura, IdSucursal, IdPuntoVenta, IdItem, ');
            t.SQL.Add('        IdArticulo, FechaF, Talle, Cantidad, PrcDcto, ');
            t.SQL.Add('        Descuento, PrecioNeto, PrecioFinal, PrecioTotal, ');
            t.SQL.Add('        Exento, ImpInt, MtoIva, IdAlcIva, AlicuotaIva, State) ');
            t.SQL.Add('Values(:IdFactura, :IdSucursal, :IdPuntoVenta, :IdItem, ');
            t.SQL.Add('       :IdArticulo, :FechaF, :Talle, :Cantidad, :PrcDcto, ');
            t.SQL.Add('       :Descuento, :PrecioNeto, :PrecioFinal, :PrecioTotal, ');
            t.SQL.Add('       :Exento, :ImpInt, :MtoIva, :IdAlcIva, :AlicuotaIva, :State) ');
            t.ParamByName('IdFactura').AsInteger := FacComIdFactura.AsInteger;
            t.ParamByName('IdSucursal').AsInteger := FacComIdSucursal.AsInteger;
            t.ParamByName('IdPuntoVenta').AsInteger := FacComIdPuntoVenta.AsInteger;
            t.ParamByName('IdItem').AsInteger := 1;
            t.ParamByName('IdArticulo').AsInteger := FacComCuenta.AsInteger;
            t.ParamByName('FechaF').AsDateTime := FacComFechaF.AsDateTime;
            t.ParamByName('Talle').AsInteger := 0;
            t.ParamByName('PrcDcto').AsFloat := 0;
            t.ParamByName('Descuento').AsCurrency := 0;
            t.ParamByName('Cantidad').AsFloat := 100;
            t.ParamByName('PrecioNeto').AsCurrency := FacComNeto.AsCurrency;
            t.ParamByName('PrecioFinal').AsCurrency := 0;
            t.ParamByName('PrecioTotal').AsCurrency := FacComTotal.AsCurrency;
            t.ParamByName('Exento').AsCurrency := 0;
            t.ParamByName('ImpInt').AsCurrency := 0;
            t.ParamByName('MtoIva').AsCurrency := FacComIvaAlicuota1.AsCurrency+ FacComIvaAlicuota2.AsCurrency+ FacComIvaOtAlc.AsCurrency;
            if FacComIvaAlicuota1.AsCurrency <> 0 then
            begin
              t.ParamByName('IdAlcIva').AsInteger := 1;
              t.ParamByName('AlicuotaIva').AsFloat:= GetAlcIva(1);
            end;
            if FacComIvaAlicuota2.AsCurrency <> 0 then
            begin
              t.ParamByName('IdAlcIva').AsInteger := 2;
              t.ParamByName('AlicuotaIva').AsFloat:= GetAlcIva(2);
            end;
            if FacComIvaOtAlc.AsCurrency <> 0 then
            begin
              t.ParamByName('IdAlcIva').AsInteger := 3;
              t.ParamByName('AlicuotaIva').AsFloat:= GetAlcIva(3);
            end;
            t.ParamByName('State').AsInteger := 0;
            try
              t.ExecSQL;
            except
            end;
          finally
            t.Free;
          end;
        end
        else begin
          q.ParamByName('TipoOP').AsInteger := fcCompra;
          q.ParamByName('CantArtic').AsInteger := FacComCantArtic.AsInteger;
          ItemsFC.Close;
          ItemsFC.Filter := 'IdFactura = '+IntToStr(FacComIdFactura.AsInteger)+ ' And '+
                            'IdSucursal = ' +IntToStr(FacComIdSucursal.AsInteger) + 'And '+
                            'IdPuntoVenta = '+IntToStr(FacComIdPuntoVenta.AsInteger);
          ItemsFC.Filtered := True;
          ItemsFC.Open;
          If not ItemsFC.IsEmpty then
          begin
            ItemsFC.First;
            while not ItemsFC.Eof do
            begin
              try
                t := TMDOQuery.Create(nil);
                t.Database := dbConversion;
                t.Transaction := trConversion;
                t.SQL.Add('Insert InTo ');
                t.SQL.Add('ItemsFC(IdFactura, IdSucursal, IdPuntoVenta, IdItem, ');
                t.SQL.Add('        IdArticulo, FechaF, Talle, Cantidad, PrcDcto, ');
                t.SQL.Add('        Descuento, PrecioNeto, PrecioFinal, PrecioTotal, ');
                t.SQL.Add('        Exento, ImpInt, MtoIva, IdAlcIva, AlicuotaIva, State) ');
                t.SQL.Add('Values(:IdFactura, :IdSucursal, :IdPuntoVenta, :IdItem, ');
                t.SQL.Add('       :IdArticulo, :FechaF, :Talle, :Cantidad, :PrcDcto, ');
                t.SQL.Add('       :Descuento, :PrecioNeto, :PrecioFinal, :PrecioTotal, ');
                t.SQL.Add('       :Exento, :ImpInt, :MtoIva, :IdAlcIva, :AlicuotaIva, :State) ');
                t.ParamByName('IdFactura').AsInteger := ItemsFCIdFactura.AsInteger;
                t.ParamByName('IdSucursal').AsInteger := ItemsFCIdSucursal.AsInteger;
                t.ParamByName('IdPuntoVenta').AsInteger := ItemsFCIdPuntoVenta.AsInteger;
                t.ParamByName('IdItem').AsInteger := ItemsFCIdItem.AsInteger;
                t.ParamByName('IdArticulo').AsInteger := ItemsFCIdArticulo.AsInteger;
                t.ParamByName('FechaF').AsDateTime := ItemsFCFechaF.AsDateTime;
                t.ParamByName('Talle').AsInteger := ItemsFCTalle.AsInteger;
                t.ParamByName('PrcDcto').AsFloat := 0;
                t.ParamByName('Descuento').AsCurrency := 0;
                t.ParamByName('Cantidad').AsFloat := ItemsFCCantidad.AsFloat;
                t.ParamByName('PrecioNeto').AsCurrency := ItemsFCPrecioNeto.AsCurrency;
                t.ParamByName('PrecioFinal').AsCurrency := ItemsFCPrecioFinal.AsCurrency;
                t.ParamByName('PrecioTotal').AsCurrency := ItemsFCPrecioTotal.AsCurrency;
                t.ParamByName('Exento').AsCurrency := ItemsFCExento.AsCurrency;
                t.ParamByName('ImpInt').AsCurrency := ItemsFCImpInt.AsCurrency;
                t.ParamByName('MtoIva').AsCurrency := ItemsFCMtoIva.AsCurrency;
                t.ParamByName('IdAlcIva').AsInteger := ItemsFCIdAlcIva.AsInteger;
                t.ParamByName('AlicuotaIva').AsFloat:= GetAlcIva(ItemsFCIdAlcIva.AsInteger);
                t.ParamByName('State').AsInteger := 0;
                try
                  t.ExecSQL;
                except
                  on E:Exception do
                  begin
                    mmPorDonde.Lines.Add('Compras Productos '+E.Message);
                    Application.ProcessMessages;
                  end
                end;
              finally
                t.Free;
              end;
              ItemsFC.Next;
            end;
          end;
          ItemsFC.Close;
        end;

        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('Compras '+E.Message);
            Application.ProcessMessages;
          end;
        end;
        q.Close;
      finally
        q.Free;
      end;

      // Cuenta corriente
      try
        CC_Mov := 0;
        try
          t := TMDOQuery.Create(nil);
          t.Database := dbConversion;
          t.Transaction := trConversion;
          t.SQL.Add('Select Max(NroMovimiento) as U From CCPROV ');
          t.Open;
          CC_Mov := t.FieldByName('U').AsInteger + 1;
          t.Close;
        finally
          t.Free
        end;

        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('INSERT INTO CCPROV ');
        q.SQL.Add('  (NROMOVIMIENTO, IDCOMPROBANTE, IDSUCURSAL, TCOMP, ENTIDAD, FECHA, FECHAORG, ');
        q.SQL.Add('   COMPROBANTE, DEBE, HABER, PAGOACTA, SALDOMOV, SALDO, ESTADO, STATE, ');
        q.SQL.Add('   IMPNETO, IMPNCOM, SALDONETO, IDORDPAGO, IDSUCORDP, FECHAPAGO, MONTORETI, ');
        q.SQL.Add('   MONTORETG, MONTORETB, MONTORETH, MONTORETS, IDNROPREOP, IDEMPRESA) ');
        q.SQL.Add('VALUES ');
        q.SQL.Add('  (:NROMOVIMIENTO, :IDCOMPROBANTE, :IDSUCURSAL, :TCOMP, :ENTIDAD, :FECHA, ');
        q.SQL.Add('   :FECHAORG, :COMPROBANTE, :DEBE, :HABER, :PAGOACTA, :SALDOMOV, :SALDO, ');
        q.SQL.Add('   :ESTADO, :STATE, :IMPNETO, :IMPNCOM, :SALDONETO, :IDORDPAGO, :IDSUCORDP, ');
        q.SQL.Add('   :FECHAPAGO, :MONTORETI, :MONTORETG, :MONTORETB, :MONTORETH, :MONTORETS, ');
        q.SQL.Add('   :IDNROPREOP, :IDEMPRESA) ');
        q.ParamByName('NROMOVIMIENTO').AsInteger := CC_Mov;
        q.ParamByName('IDCOMPROBANTE').AsInteger := FacComIdFactura.AsInteger;
        q.ParamByName('IDSUCURSAL').AsInteger := FacComIdSucursal.AsInteger;
        q.ParamByName('TCOMP').AsInteger := FacComTipoFactura.AsInteger;
        q.ParamByName('ENTIDAD').AsInteger := FacComProveedor.AsInteger;
        q.ParamByName('FECHA').AsDate := FacComFechaF.AsDateTime;
        q.ParamByName('FECHAORG').AsDate := FacComFechaF.AsDateTime;
        q.ParamByName('COMPROBANTE').AsString := FacComNroFactura.AsString;
        q.ParamByName('DEBE').AsCurrency := CCProvDebe.AsCurrency;
        q.ParamByName('HABER').AsCurrency := CCProvHaber.AsCurrency;
        q.ParamByName('PAGOACTA').AsCurrency := 0;
        q.ParamByName('SALDOMOV').AsCurrency := FacComTotal.AsCurrency;
        q.ParamByName('SALDO').AsCurrency := FacComTotal.AsCurrency;
        q.ParamByName('ESTADO').AsInteger := 0;
        q.ParamByName('STATE').AsInteger := 0;
        q.ParamByName('IMPNETO').AsCurrency := FacComNeto.AsCurrency;
        q.ParamByName('IMPNCOM').AsCurrency := FacComNoComputables.AsCurrency;
        q.ParamByName('SALDONETO').AsCurrency:= 0;
        q.ParamByName('IDORDPAGO').AsInteger := 0;
        q.ParamByName('IDSUCORDP').AsInteger := 0;
        q.ParamByName('FECHAPAGO').Clear;
        q.ParamByName('MONTORETI').AsCurrency:= 0;
        q.ParamByName('MONTORETG').AsCurrency:= 0;
        q.ParamByName('MONTORETB').AsCurrency:= 0;
        q.ParamByName('MONTORETH').AsCurrency:= 0;
        q.ParamByName('MONTORETS').AsCurrency:= 0;
        q.ParamByName('IDNROPREOP').AsCurrency:=0;
        Case FacComIdPeriodo.AsInteger of
          0: q.ParamByName('IDEMPRESA').AsInteger := 1;
          1: q.ParamByName('IDEMPRESA').AsInteger := 2;
        end;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('CC Prov '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;
      Inc(CantTran);
    end;
    FacCom.Next;
  end;
  FacCom.Close;

  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación Compras '+TimeToStr(Time));
      Application.ProcessMessages;
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('Compras '+E.Message);
        Application.ProcessMessages;
      end
    end;
  end;
  mmPorDonde.Lines.Add('Finalizado Compras '+TimeToStr(Time));
  DBIsam_ConnectDB(2);
end;

procedure TfrmConversion.DBIsam_Pasa_CC_OP;
var
  q ,c: TMDOQuery;
  Esta, CantTran, Save_Tot: Integer;
  n, i: Currency;
begin
  DBIsam_ConnectDB(1);
  mmPorDonde.Lines.Add('CCP '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM CCPROV  ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO CC Proveedores '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('BORRADO CC Proveedores '+E.Message);
    end
  end;

  CCProv.Open;
  CCProv.First;
  CantTran := 1;
  Save_Tot := 0;

  While not CCProv.Eof do
  begin
    if CantTran >= 10 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación CCP '+ IntToStr(Save_Tot));
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('CCP '+E.Message);
        end
      end;
      CantTran := 1;
    end;
    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO CCPROV ');
      q.SQL.Add('  (NROMOVIMIENTO, IDCOMPROBANTE, IDSUCURSAL, TCOMP, ENTIDAD, FECHA, FECHAORG, ');
      q.SQL.Add('   COMPROBANTE, DEBE, HABER, PAGOACTA, SALDOMOV, SALDO, ESTADO, STATE, ');
      q.SQL.Add('   IMPNETO, IMPNCOM, SALDONETO, IDORDPAGO, IDSUCORDP, FECHAPAGO, MONTORETI, ');
      q.SQL.Add('   MONTORETG, MONTORETB, MONTORETH, MONTORETS, IDNROPREOP, IDEMPRESA) ');
      q.SQL.Add('VALUES ');
      q.SQL.Add('  (:NROMOVIMIENTO, :IDCOMPROBANTE, :IDSUCURSAL, :TCOMP, :ENTIDAD, :FECHA, ');
      q.SQL.Add('   :FECHAORG, :COMPROBANTE, :DEBE, :HABER, :PAGOACTA, :SALDOMOV, :SALDO, ');
      q.SQL.Add('   :ESTADO, :STATE, :IMPNETO, :IMPNCOM, :SALDONETO, :IDORDPAGO, :IDSUCORDP, ');
      q.SQL.Add('   :FECHAPAGO, :MONTORETI, :MONTORETG, :MONTORETB, :MONTORETH, :MONTORETS, ');
      q.SQL.Add('   :IDNROPREOP, :IDEMPRESA) ');
      q.ParamByName('NROMOVIMIENTO').AsInteger := CCProvNroMovimiento.AsInteger;
      q.ParamByName('IDCOMPROBANTE').AsInteger := CCProvIdComprobante.AsInteger;
      q.ParamByName('IDSUCURSAL').AsInteger := CCProvIdSucursal.AsInteger;
      q.ParamByName('TCOMP').AsInteger := CCProvTComp.AsInteger;
      q.ParamByName('ENTIDAD').AsInteger := CCProvEntidad.AsInteger;
      q.ParamByName('FECHA').AsDate := CCProvFecha.AsDateTime;
      q.ParamByName('FECHAORG').AsDate := CCProvFechaOrg.AsDateTime;
      q.ParamByName('COMPROBANTE').AsString := CCProvComprobante.AsString;
      q.ParamByName('DEBE').AsCurrency := CCProvDebe.AsCurrency;
      q.ParamByName('HABER').AsCurrency := CCProvHaber.AsCurrency;
      q.ParamByName('PAGOACTA').AsCurrency := CCProvPagoActa.AsCurrency;
      q.ParamByName('SALDOMOV').AsCurrency := CCProvSaldoMov.AsCurrency;
      q.ParamByName('SALDO').AsCurrency := CCProvSaldo.AsCurrency;
      q.ParamByName('ESTADO').AsInteger := CCProvEstado.AsInteger;
      n := 0;
      i := 0;
      Case CCProvTComp.AsInteger of
        1, 2, 3: begin
          try
            c := TMDOQuery.Create(nil);
            c.Database := dbConversion;
            c.Transaction := trConversion;
            c.SQL.Add('Select Neto, NoComputables ');
            c.SQL.Add('From FacCom ');
            c.SQL.Add('Where IdFactura =:IdFactura And ');
            c.SQL.Add('      IdSucursal =:IdSucursal And  ');
            c.SQL.Add('      Proveedor =:Entidad  ');
            c.ParamByName('IdFactura').AsInteger := CCProvIdComprobante.AsInteger;
            c.ParamByName('IdSucursal').AsInteger:= CCProvIdSucursal.AsInteger;
            c.ParamByName('Entidad').AsInteger:= CCProvEntidad.AsInteger;
            c.Open;
            n := c.FieldByName('Neto').AsCurrency;
            i := c.FieldByName('NoComputables').AsCurrency;
            c.Close;
          finally
            c.Free;
          end;
        end;
        11,12,13: begin
          try
            c := TMDOQuery.Create(nil);
            c.Database := dbConversion;
            c.Transaction := trConversion;
            c.SQL.Add('Select Total ');
            c.SQL.Add('From FacCom ');
            c.SQL.Add('Where IdFactura =:IdFactura And ');
            c.SQL.Add('      IdSucursal =:IdSucursal And  ');
            c.SQL.Add('      Proveedor =:Entidad  ');
            c.ParamByName('IdFactura').AsInteger := CCProvIdComprobante.AsInteger;
            c.ParamByName('IdSucursal').AsInteger:= CCProvIdSucursal.AsInteger;
            c.ParamByName('Entidad').AsInteger:= CCProvEntidad.AsInteger;
            c.Open;
            n := c.FieldByName('Total').AsCurrency;
            i := 0;
            c.Close;
          finally
            c.Free;
          end;
        end;
        52: begin
          n := CCProvHaber.AsCurrency/1.21;
          i := 0;
        end;
        18,
        34: begin
          n := CCProvDebe.AsCurrency;
          i := 0;
        end;
        else begin
          n := 0;
          i := 0;
        end;
      end;
      q.ParamByName('IMPNETO').AsCurrency := n;
      q.ParamByName('IMPNCOM').AsCurrency := i;
      q.ParamByName('SALDONETO').AsCurrency:= 0;
      q.ParamByName('IDORDPAGO').AsInteger := 0;
      q.ParamByName('IDSUCORDP').AsInteger := 0;
      q.ParamByName('FECHAPAGO').Clear;
      q.ParamByName('MONTORETI').AsCurrency:= 0;
      q.ParamByName('MONTORETG').AsCurrency:= 0;
      q.ParamByName('MONTORETB').AsCurrency:= 0;
      q.ParamByName('MONTORETH').AsCurrency:= 0;
      q.ParamByName('MONTORETS').AsCurrency:= 0;
      q.ParamByName('IDNROPREOP').AsCurrency:=0;
      q.ParamByName('STATE').AsInteger := 0;
      Case CCProvIdEmpresa.AsInteger of
        0: q.ParamByName('IDEMPRESA').AsInteger := 1;
        2: q.ParamByName('IDEMPRESA').AsInteger := 2;
      End;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('CC Prov '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Inc(CantTran);
    CCProv.Next;
  end;
  CCProv.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación CCP ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('CCP '+E.Message);
      end
    end;
  end;

  mmPorDonde.Lines.Add('CCP: Ordenes '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM ORDENES  ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO ORDENES '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('Borrando Ordenes '+E.Message);
    end
  end;

  Ordenes.Open;
  Ordenes.First;
  CantTran := 1;
  Save_Tot := 0;
  While not Ordenes.Eof do
  begin
    if CantTran >= 10 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación Ordenes ');
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('Grabación Ordenes '+ IntToStr(Save_Tot));
          raise;
        end
      end;
      CantTran := 1;
    end;

    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO ORDENES');
      q.SQL.Add('  (IDORDEN, ENTIDAD, FECHAOP, NROCOMPOP, CANTOP, TOTALOP, CONTADO, TICKETS,');
      q.SQL.Add('   BANCOPROP, BANCOTER, BONIFPROV, RETENCIONES, USUARIO, ESTADO, NETOOP,');
      q.SQL.Add('   RETENCIONI, RETENCIONG, RETENCIONB, PRCRETG, PRCRETI, PRCRETB1, PRCRETB2,');
      q.SQL.Add('   RETENCIONS, PRCRETS, RETENCIONH, NROCERTIVA, NROCERTGAN, NROCERTIBT,');
      q.SQL.Add('   NROCERTSES, NOCOMPOP, IDEMPRESA)');
      q.SQL.Add('VALUES ');
      q.SQL.Add('  (:IDORDEN, :ENTIDAD, :FECHAOP, :NROCOMPOP, :CANTOP, :TOTALOP, :CONTADO,');
      q.SQL.Add('   :TICKETS, :BANCOPROP, :BANCOTER, :BONIFPROV, :RETENCIONES, :USUARIO,');
      q.SQL.Add('   :ESTADO, :NETOOP, :RETENCIONI, :RETENCIONG, :RETENCIONB, :PRCRETG, :PRCRETI,');
      q.SQL.Add('   :PRCRETB1, :PRCRETB2, :RETENCIONS, :PRCRETS, :RETENCIONH, :NROCERTIVA,');
      q.SQL.Add('   :NROCERTGAN, :NROCERTIBT, :NROCERTSES, :NOCOMPOP, :IDEMPRESA)');
      q.ParamByName('IDORDEN').AsInteger := OrdenesIdOrden.AsInteger;
      q.ParamByName('ENTIDAD').AsInteger := OrdenesEntidad.AsInteger;
      q.ParamByName('FECHAOP').AsDate := OrdenesFechaOP.AsDateTime;
      q.ParamByName('NROCOMPOP').AsString := OrdenesNroCompOP.AsString;
      q.ParamByName('CANTOP').AsInteger := OrdenesCantOp.AsInteger;
      q.ParamByName('TOTALOP').AsCurrency := OrdenesTotalOP.AsCurrency;
      q.ParamByName('CONTADO').AsCurrency := OrdenesContado.AsCurrency;
      q.ParamByName('TICKETS').AsCurrency := OrdenesTickets.AsCurrency;
      q.ParamByName('BANCOPROP').AsCurrency := OrdenesBancoProp.AsCurrency;
      q.ParamByName('BANCOTER').AsCurrency := OrdenesBancoTer.AsCurrency;
      q.ParamByName('BONIFPROV').AsCurrency := OrdenesBonifProv.AsCurrency;
      q.ParamByName('RETENCIONES').AsCurrency := 0;
      q.ParamByName('USUARIO').AsInteger := OrdenesUsuario.AsInteger;
      q.ParamByName('ESTADO').AsInteger := OrdenesEstado.AsInteger;
      q.ParamByName('NETOOP').AsCurrency := 0;
      q.ParamByName('RETENCIONI').AsCurrency := 0;
      q.ParamByName('RETENCIONG').AsCurrency := 0;
      q.ParamByName('RETENCIONB').AsCurrency := 0;
      q.ParamByName('PRCRETG').AsFloat := 0;
      q.ParamByName('PRCRETI').AsFloat := 0;
      q.ParamByName('PRCRETB1').AsFloat := 0;
      q.ParamByName('PRCRETB2').AsFloat := 0;
      q.ParamByName('RETENCIONS').AsCurrency := 0;
      q.ParamByName('PRCRETS').AsFloat := 0;
      q.ParamByName('RETENCIONH').AsCurrency := 0;
      q.ParamByName('NROCERTIVA').AsString := '000-0000-000000';
      q.ParamByName('NROCERTGAN').AsString := '000-0000-000000';
      q.ParamByName('NROCERTIBT').AsString := '000-0000-000000';
      q.ParamByName('NROCERTSES').AsString := '000-0000-000000';
      q.ParamByName('NOCOMPOP').AsCurrency := 0;
      q.ParamByName('IDEMPRESA').AsInteger := OrdenesIdEmpresa.AsInteger;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Ordenes de Pago '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Inc(CantTran);
    Ordenes.Next;
  end;
  Ordenes.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación Ordenes ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('Ordenes '+E.Message);
        raise;
      end
    end;
  end;

  mmPorDonde.Lines.Add('CCP: Items Ordenes ');
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM ITEMSOP  ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRANDO ItemsOP '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('BORRANDO ItemsOP '+E.Message);
      trConversion.Rollback;
    end
  end;

  ItemsOP.Open;
  ItemsOP.First;
  CantTran := 1;
  Save_Tot := 0;
  While not ItemsOP.Eof do
  begin
    if CantTran >= 10 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación IPO '+ IntToStr(Save_Tot));
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('IP Ordenes '+E.Message);
          raise;
        end
      end;
      CantTran := 1;
    end;

    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;

    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO ITEMSOP ');
      q.SQL.Add('  (IDORDPAGO, IDITEMOP, ENTIDAD, FECHAOP, FECHAOR, IDFACTURA, IDSUCURSAL, ');
      q.SQL.Add('   IMPORTE, SALDOMOV, MONTOORG, TIPOMOV, COMPROBANTE, NROFACTURA, ESTADO) ');
      q.SQL.Add('VALUES ');
      q.SQL.Add('  (:IDORDPAGO, :IDITEMOP, :ENTIDAD, :FECHAOP, :FECHAOR, :IDFACTURA, :IDSUCURSAL, ');
      q.SQL.Add('   :IMPORTE, :SALDOMOV, :MONTOORG, :TIPOMOV, :COMPROBANTE, :NROFACTURA, :ESTADO) ');
      q.ParamByName('IDORDPAGO').AsInteger := ItemsOPIdOrdPago.AsInteger;
      q.ParamByName('IDITEMOP').AsInteger := ItemsOPIdItemOP.AsInteger;
      q.ParamByName('ENTIDAD').AsInteger := ItemsOPEntidad.AsInteger;
      q.ParamByName('FECHAOP').AsDate := ItemsOPFechaOp.AsDateTime;
      q.ParamByName('FECHAOR').AsDate := ItemsOPFechaOr.AsDateTime;
      q.ParamByName('IDFACTURA').AsInteger := ItemsOPIdFactura.AsInteger;
      q.ParamByName('IDSUCURSAL').AsInteger := ItemsOPIdSucursal.AsInteger;
      q.ParamByName('IMPORTE').AsCurrency := ItemsOPImporte.AsCurrency;
      q.ParamByName('SALDOMOV').AsCurrency := ItemsOPSaldoMov.AsCurrency;
      q.ParamByName('MONTOORG').AsCurrency := ItemsOPMontoOrg.AsCurrency;
      q.ParamByName('TIPOMOV').AsInteger := ItemsOPTipoMov.AsInteger;
      q.ParamByName('COMPROBANTE').AsString := ItemsOPComprobante.AsString;
      q.ParamByName('NROFACTURA').AsString := ItemsOPNroFactura.AsString;
      q.ParamByName('ESTADO').AsInteger := ItemsOPEstado.AsInteger;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Items OP '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Inc(CantTran);
    ItemsOP.Next;
  end;
  ItemsOP.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación IOP ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('It Ordenes '+E.Message);
        raise;
      end
    end;
  end;

  mmPorDonde.Lines.Add('CCP: ItPag O '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM ITEMSPG  ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRANDO IPO '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('BORRANDO IPO '+E.Message);
      trConversion.Rollback;
    end
  end;

  ItemsPg.Open;
  ItemsPg.First;
  CantTran := 1;
  Save_Tot := 0;
  While not ItemsPg.Eof do
  begin
    if CantTran >= 10 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación IPO '+ IntToStr(Save_Tot));
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('IP Ordenes '+E.Message);
        end
      end;
      CantTran := 1;
    end;

    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO ITEMSPG ');
      q.SQL.Add('  (IDORDEN, IDITEMPAG, ENTIDAD, COMPROBANTE, FECHA, IMPORTE, ');
      q.SQL.Add('   DETALLE, DESCRIPCION, IDMOVIMIENTO, ESTADO, TIPOPAGO) ');
      q.SQL.Add('VALUES ');
      q.SQL.Add('  (:IDORDEN, :IDITEMPAG, :ENTIDAD, :COMPROBANTE, :FECHA, :IMPORTE, ');
      q.SQL.Add('   :DETALLE, :DESCRIPCION, :IDMOVIMIENTO, :ESTADO, :TIPOPAGO) ');
      q.ParamByName('IDORDEN').AsInteger := ItemsPgIdOrden.AsInteger;
      q.ParamByName('IDITEMPAG').AsInteger := ItemsPgIdItemPag.AsInteger;
      q.ParamByName('ENTIDAD').AsInteger := ItemsPgEntidad.AsInteger;
      q.ParamByName('COMPROBANTE').AsString := ItemsPgComprobante.AsString;
      q.ParamByName('FECHA').AsDate := ItemsPgFecha.AsDateTime;
      q.ParamByName('IMPORTE').AsCurrency := ItemsPgImporte.AsCurrency;
      q.ParamByName('DETALLE').AsString := ItemsPgDetalle.AsString;
      q.ParamByName('DESCRIPCION').AsString := ItemsPgDescripcion.AsString;
      q.ParamByName('IDMOVIMIENTO').AsInteger := ItemsPgIdMovimiento.AsInteger;
      q.ParamByName('ESTADO').AsInteger := ItemsPgEstado.AsInteger;
      if Up_Case(ItemsPgTipoPago.AsString) = 'EFECTIVO' then
        q.ParamByName('TIPOPAGO').AsInteger := 1;
      if (Up_Case(ItemsPgTipoPago.AsString) = 'BONOS/TICK') then
        q.ParamByName('TIPOPAGO').AsInteger := 2;
      if Up_Case(ItemsPgTipoPago.AsString) = 'TICKETS/BO' then
        q.ParamByName('TIPOPAGO').AsInteger := 2;
      if Up_Case(ItemsPgTipoPago.AsString) = 'CHEQUE' then
        q.ParamByName('TIPOPAGO').AsInteger := 3;
      if Up_Case(ItemsPgTipoPago.AsString) = 'CHEQUE 3º' then
        q.ParamByName('TIPOPAGO').AsInteger := 4;
      if Up_Case(ItemsPgTipoPago.AsString) = 'BONIFICACI' then
        q.ParamByName('TIPOPAGO').AsInteger := 6;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Items Pago OP '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Inc(CantTran);
    ItemsPg.Next;
  end;

  ItemsPg.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación IP Ordenes ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('IP Ordenes '+E.Message);
      end
    end;
  end;

  mmPorDonde.Lines.Add('CC Prov: Bonificacion Provs ');
  Application.ProcessMessages;

  (*
  Save_Tot := 0;
  mmPorDonde.Lines.Add('Grabación IPO '+ IntToStr(Save_Tot));
  Save_Tot := Save_Tot + CantTran;
  *)

  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM BONIFPROV ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO BONIF Proveedores '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    trConversion.Rollback;
  end;

  BonifProv.Open;
  BonifProv.First;
  CantTran := 1;
  Save_Tot := 0;

  While not BonifProv.Eof do
  begin
    if CantTran >= 10 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación BONIF Prov '+ IntToStr(Save_Tot));
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('BONIF Prov '+E.Message);
          raise;
        end
      end;
      CantTran := 1;
    end;
    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Insert InTo ');
      q.SQL.Add('BonifProv(IdBonifProv, IdFactura, IdSucursal, Entidad, NroComprobante, ');
      q.SQL.Add('          FechaDesc, MontoDesc, MontoACta, SaldoDesc) ');
      q.SQL.Add('Values(:IdBonifProv, :IdFactura, :IdSucursal, :Entidad, :NroComprobante, ');
      q.SQL.Add('       :FechaDesc, :MontoDesc, :MontoACta, :SaldoDesc) ');
      q.ParamByName('IdBonifProv').AsInteger := BonifProvIdBonifProv.AsInteger;
      q.ParamByName('IdFactura').AsInteger := BonifProvIdFactura.AsInteger;
      q.ParamByName('IdSucursal').AsInteger := BonifProvIdSucursal.AsInteger;
      q.ParamByName('Entidad').AsInteger := BonifProvEntidad.AsInteger;
      q.ParamByName('NroComprobante').AsString := BonifProvNroComprobante.AsString;
      q.ParamByName('FechaDesc').AsDate := BonifProvFechaDesc.AsDateTime;
      q.ParamByName('MontoDesc').AsCurrency := BonifProvMontoDesc.AsCurrency;
      q.ParamByName('MontoACta').AsCurrency := BonifProvMontoACta.AsCurrency;
      q.ParamByName('SaldoDesc').AsCurrency := BonifProvSaldoDesc.AsCurrency;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Bonif Prov '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    BonifProv.Next;
    Inc(CantTran);
  end;
  BonifProv.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación Bonif Prov ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('Bonif Prov '+E.Message);
      end
    end;
  end;
  mmPorDonde.Lines.Add('Finalizado Ordenes ');
  DBIsam_ConnectDB(2);
end;

procedure TfrmConversion.DBIsam_Pasa_Bcos;
var
  q,t: TMDOQuery;
  Esta, CantTran, Save_Tot: Integer;
begin
  DBIsam_ConnectDB(1);

  mmPorDonde.Lines.Add('Bancos: Cuentas '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM BANCOS ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO BANCOS '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    trConversion.Rollback;
  end;

  Bancos.Open;
  Bancos.First;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    While not Bancos.Eof do
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('INSERT INTO BANCOS ');
        q.SQL.Add('  (IDBANCO, BANCO, NROCTA, DIRBANCO, TELBANCO, GERENTEBCO, TELGTEBCO, ');
        q.SQL.Add('   OFICIALCTA, TELOFICIALCTA, TELBANCO, WEBBCO, TOTALACUERDOS, NROCHQDESDE, ');
        q.SQL.Add('   NROCHQHASTA, MODNAME, REPORTE, ULTIMACONCILIACION) ');
        q.SQL.Add('VALUES ');
        q.SQL.Add('  (:IDBANCO, :BANCO, :NROCTA, :DIRBANCO, :TELBANCO, :GERENTEBCO, :TELGTEBCO, ');
        q.SQL.Add('   :OFICIALCTA, :TELOFICIALCTA, :TELBANCO, :WEBBCO, :TOTALACUERDOS, :NROCHQDESDE, ');
        q.SQL.Add('   :NROCHQHASTA, :MODNAME, :REPORTE, :ULTIMACONCILIACION) ');
        q.ParamByName('IDBANCO').AsInteger := BancosIdBanco.AsInteger;
        q.ParamByName('Banco').AsString := BancosBanco.AsString;
        q.ParamByName('NroCta').AsString := BancosNroCta.AsString;
        q.ParamByName('DirBanco').AsString := BancosDirBanco.AsString;
        q.ParamByName('TelBanco').AsString := BancosTelBanco.AsString;
        q.ParamByName('GerenteBco').AsString := BancosGerenteBco.AsString;
        q.ParamByName('TelGteBco').AsString := BancosTelGteBco.AsString;
        q.ParamByName('OFICIALCTA').AsString := BancosOficialCta.AsString;
        q.ParamByName('TELOFICIALCTA').AsString := BancosTelOficialCta.AsString;
        q.ParamByName('TELBANCO').AsString := BancosTelBanco.AsString;
        q.ParamByName('WEBBCO').AsString := BancosWebBco.AsString;
        q.ParamByName('TOTALACUERDOS').AsCurrency := BancosTotalAcuerdos.AsCurrency;
        q.ParamByName('NROCHQDESDE').AsInteger := 0;
        q.ParamByName('NROCHQHASTA').AsInteger := 0;
        q.ParamByName('MODNAME').Clear;
        q.ParamByName('REPORTE').Clear;
        q.ParamByName('ULTIMACONCILIACION').AsInteger := 0;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('Entidades Bancarias '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;
      Bancos.Next;
    end;
    Bancos.Close;
    trConversion.Commit;
  except
    trConversion.Rollback;
    raise;
  end;

  mmPorDonde.Lines.Add('Bancos: Tipos Movimientos ');
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM TIPOMOVBCO ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO T.MOV BCOS '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    trConversion.Rollback;
  end;
  TipoMovBco.Open;
  TipoMovBco.First;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    While not TipoMovBco.Eof do
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('INSERT INTO TipoMovBco ');
        q.SQL.Add('  (IDMOVBCO, TIPOMOVBCO, CONTRAMOV, SUMA_RESTA) ');
        q.SQL.Add('VALUES ');
        q.SQL.Add('  (:IDMOVBCO, :TIPOMOVBCO, :CONTRAMOV, :SUMA_RESTA) ');
        q.ParamByName('IDMOVBCO').AsInteger := TipoMovBcoIdMovBco.AsInteger;
        q.ParamByName('TIPOMOVBCO').AsString := TipoMovBcoTipoMovBco.AsString;
        q.ParamByName('CONTRAMOV').AsInteger := TipoMovBcoContraMov.AsInteger;
        if TipoMovBcoSuma_Resta.AsBoolean then
          q.ParamByName('SUMA_RESTA').AsInteger := 1
        else
          q.ParamByName('SUMA_RESTA').AsInteger := -1;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('T.Mov Bcos '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;
      TipoMovBco.Next;
    end;
    TipoMovBco.Close;
    trConversion.Commit;
  except
    trConversion.Rollback;
    raise;
  end;

  mmPorDonde.Lines.Add('Bancos: Movimientos Propios '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM BANCOPROP ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO BANCOPROP'+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('BORRADO BANCOPROP'+E.Message);
      trConversion.Rollback;
    end
  end;

  BancoProp.Open;
  BancoProp.First;
  CantTran := 1;
  Save_Tot := 0;

  While not BancoProp.Eof do
  begin
    Esta := 0;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Select Count(IdMov) as Esta ');
      q.SQL.Add('From BancoProp ');
      q.SQL.Add('Where IdMov =:M And ');
      q.SQL.Add('      IdBanco =:B');
      q.ParamByName('M').AsInteger := BancoPropIdMov.AsInteger;
      q.ParamByName('B').AsInteger := BancoPropIdBanco.AsInteger;
      q.Open;
      Esta := q.FieldByName('Esta').AsInteger;
      q.Close;
    finally
      q.Free;
    end;

    if (Esta = 0) and (BancoPropTipoMov.AsInteger <> 999) then
    begin
      if CantTran >= 10 then
      begin
        Save_Tot := Save_Tot + CantTran;
        try
          trConversion.Commit;
          mmPorDonde.Lines.Add('Grabación BP '+ IntToStr(Save_Tot));
        except
          on E:Exception do
          begin
            trConversion.Rollback;
            mmPorDonde.Lines.Add('MP Bcos '+E.Message);
          end
        end;
        CantTran := 1;
      end;

      if CantTran = 1 then
      begin
        if not trConversion.InTransaction then
          trConversion.StartTransaction;
      end;

      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('INSERT INTO BANCOPROP ');
        q.SQL.Add('  (IDMOV, IDBANCO, IDORDPAGO, TIPOMOV, NROCHEQUE, FECHAEMISION, ');
        q.SQL.Add('   FECHAVENCIMIENTO, FECHARESUMEN, IDENTIDAD, DETALLEMOV, MONTO, ');
        q.SQL.Add('   DEBE, HABER, USUARIO, IDFACTURA, IDSUCURSAL, ESTADO, IDNROCONCILIACION) ');
        q.SQL.Add('VALUES ');
        q.SQL.Add('  (:IDMOV, :IDBANCO, :IDORDPAGO, :TIPOMOV, :NROCHEQUE, :FECHAEMISION, ');
        q.SQL.Add('   :FECHAVENCIMIENTO, :FECHARESUMEN, :IDENTIDAD, :DETALLEMOV, :MONTO, ');
        q.SQL.Add('   :DEBE, :HABER, :USUARIO, :IDFACTURA, :IDSUCURSAL, :ESTADO, :IDNROCONCILIACION) ');
        q.ParamByName('IDMOV').AsInteger := BancoPropIdMov.AsInteger;
        q.ParamByName('IDBANCO').AsInteger := BancoPropIdBanco.AsInteger;
        q.ParamByName('IDORDPAGO').AsInteger := BancoPropIdOrdPago.AsInteger;
        q.ParamByName('TIPOMOV').AsInteger := BancoPropTipoMov.AsInteger;
        try
          q.ParamByName('NROCHEQUE').AsInteger := StrToInt(Trim(BancoPropNroCheque.AsString));
        except
          q.ParamByName('NROCHEQUE').AsInteger := 0;
        end;
        q.ParamByName('FECHAEMISION').AsDate := BancoPropFechaEmision.AsDateTime;
        q.ParamByName('FECHAVENCIMIENTO').AsDate := BancoPropFechaVencimiento.AsDateTime;
        q.ParamByName('FECHARESUMEN').AsDate := BancoPropFechaResumen.AsDateTime;
        q.ParamByName('IDENTIDAD').AsInteger := BancoPropIdEntidad.AsInteger;
        q.ParamByName('DETALLEMOV').AsString := BancoPropDetalleMov.AsString;
        q.ParamByName('MONTO').AsCurrency := BancoPropMonto.AsCurrency;
        q.ParamByName('DEBE').AsCurrency := BancoPropDebe.AsCurrency;
        q.ParamByName('HABER').AsCurrency := BancoPropHaber.AsCurrency;
        q.ParamByName('USUARIO').AsInteger := BancoPropUsuario.AsInteger;
        q.ParamByName('IDFACTURA').AsInteger := BancoPropIdFactura.AsInteger;
        q.ParamByName('IDSUCURSAL').AsInteger := BancoPropIdSucursal.AsInteger;
        q.ParamByName('ESTADO').AsInteger := 0;
        q.ParamByName('IDNROCONCILIACION').AsInteger := 0;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('MP Bcos '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;
      Inc(CantTran);
    end;
    BancoProp.Next;
  end;
  BancoProp.Close;

  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación MP Bcos ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('MP Bcos '+E.Message);
        raise;
      end
    end;
  end;

  mmPorDonde.Lines.Add('Bancos: Movimientos de Terceros '+ TimeToStr(Time));
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM BANCOTER ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO BANCOTER '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('BORRADO BANCOTER '+E.Message);
      trConversion.Rollback;
    end
  end;

  BancoTer.Open;
  BancoTer.First;
  CantTran := 1;
  Save_Tot := 0;
  While not BancoTer.Eof do
  begin
    if CantTran >= 10 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación BT '+ IntToStr(Save_Tot));
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('BT '+E.Message);
        end
      end;
      CantTran := 1;
    end;

    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;

    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO BANCOTER ');
      q.SQL.Add('  (IDMOV, IDORDPAGO, NOMBREBANCO, NROCUENTA, NROCHEQUE, IDTITULAR, ');
      q.SQL.Add('   TITULAR, IDENDOSO, ENDOSO, IDFACTURA, IDSUCURSAL, NROFACTURA, ');
      q.SQL.Add('   FECHAVENCIMIENTO, FECHAENTREGA, IDENTREGA, ENTREGA, MONTO, ');
      q.SQL.Add('   SITUACION, FECHAIS) ');
      q.SQL.Add('VALUES ');
      q.SQL.Add('  (:IDMOV, :IDORDPAGO, :NOMBREBANCO, :NROCUENTA, :NROCHEQUE, ');
      q.SQL.Add('   :IDTITULAR, :TITULAR, :IDENDOSO, :ENDOSO, :IDFACTURA, :IDSUCURSAL,');
      q.SQL.Add('   :NROFACTURA, :FECHAVENCIMIENTO, :FECHAENTREGA, :IDENTREGA, :ENTREGA, ');
      q.SQL.Add('   :MONTO, :SITUACION, :FECHAIS) ');
      q.ParamByName('IDMOV').AsInteger := BancoTerIdMov.AsInteger;
      q.ParamByName('IDORDPAGO').AsInteger := BancoTerIdOrdPago.AsInteger;
      q.ParamByName('NOMBREBANCO').AsString := BancoTerNombreBanco.AsString;
      q.ParamByName('NROCUENTA').AsString := BancoTerNroCuenta.AsString;
      q.ParamByName('NROCHEQUE').AsInteger := BancoTerNroCheque.AsInteger;
      q.ParamByName('IDTITULAR').AsInteger := BancoTerIdTitular.AsInteger;
      q.ParamByName('TITULAR').AsString := BancoTerTitular.AsString;
      q.ParamByName('IDENDOSO').AsInteger := BancoTerIdEndoso.AsInteger;
      q.ParamByName('ENDOSO').AsString := BancoTerEndoso.AsString;
      q.ParamByName('IDFACTURA').AsInteger := BancoTerIdFactura.AsInteger;
      q.ParamByName('IDSUCURSAL').AsInteger := BancoTerIdSucursal.AsInteger;
      q.ParamByName('NROFACTURA').AsString := BancoTerNroFactura.AsString;
      q.ParamByName('FECHAVENCIMIENTO').AsDate := BancoTerFechaVencimiento.AsDateTime;
      q.ParamByName('FECHAENTREGA').AsDate := BancoTerFechaEntrega.AsDateTime;
      q.ParamByName('IDENTREGA').AsInteger := BancoTerIdEntrega.AsInteger;
      q.ParamByName('ENTREGA').AsString := BancoTerEntrega.AsString;
      q.ParamByName('MONTO').AsCurrency := BancoTerMonto.AsCurrency;
      q.ParamByName('SITUACION').AsInteger := BancoTerSituacion.AsInteger;
      q.ParamByName('FECHAIS').AsDate := BancoTerFechaIS.AsDateTime;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BT '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Inc(CantTran);
    BancoTer.Next;
  end;
  BancoTer.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación MP Ter ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('MP Ter '+E.Message);
        raise;
      end
    end;
  end;

  mmPorDonde.Lines.Add('Bancos: Transferencias '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM TRANSBANK ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO TRANSBANK '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('BORRADO TRANSBANK '+E.Message);
      trConversion.Rollback;
    end
  end;

  TransBank.Open;
  TransBank.First;
  CantTran := 1;
  Save_Tot := 0;
  While not TransBank.Eof do
  begin
    if CantTran >= 10 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación TRANSBANK '+ IntToStr(Save_Tot));
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('TRANSBANK '+E.Message);
          raise;
        end
      end;
      CantTran := 1;
    end;
    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO TRANSBANK ');
      q.SQL.Add('  (IDTBANK, IDCTAORG, IDMOVORG, IDCTADES, IDMOVDES, ');
      q.SQL.Add('   MONTOT, FECHAT, USUARIO, ESTADO, CANTMOV) ');
      q.SQL.Add('VALUES ');
      q.SQL.Add('  (:IDTBANK, :IDCTAORG, :IDMOVORG, :IDCTADES, :IDMOVDES, ');
      q.SQL.Add('   :MONTOT, :FECHAT, :USUARIO, :ESTADO, :CANTMOV) ');
      q.ParamByName('IDTBANK').AsInteger := TransBankIdTransBank.AsInteger;
      q.ParamByName('IDCTAORG').AsInteger := TransBankIdCtaOrg.AsInteger;
      q.ParamByName('IDMOVORG').AsInteger := TransBankIdMovOrg.AsInteger;
      q.ParamByName('IDCTADES').AsInteger := TransBankIdCtaDes.AsInteger;
      q.ParamByName('IDMOVDES').AsInteger := TransBankIdMovDes.AsInteger;
      q.ParamByName('MONTOT').AsCurrency := TransBankMontoT.AsCurrency;
      q.ParamByName('FECHAT').AsDate := TransBankFechaT.AsDateTime;
      q.ParamByName('USUARIO').AsInteger := TransBankUsuario.AsInteger;
      q.ParamByName('ESTADO').AsInteger := 0;
      q.ParamByName('CANTMOV').AsInteger := TransBankCantMov.AsInteger;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Transferencias Bancarias '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    TransBank.Next;
    Inc(CantTran);
  end;
  TransBank.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación TransBank ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('TransBank '+E.Message);
        raise;
      end
    end;
  end;

  mmPorDonde.Lines.Add('Bancos: Items Transferencias '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM TBITEMS ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO TBITEMS '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('BORRADO TBITEMS '+E.Message);
      trConversion.Rollback;
    end
  end;

  ItemsTB.Open;
  ItemsTB.First;
  CantTran := 1;
  Save_Tot := 0;

  While not ItemsTB.Eof do
  begin
    if CantTran >= 10 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación Items TB '+ IntToStr(Save_Tot));
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('IT TRANSBANK '+E.Message);
        end
      end;
      CantTran := 1;
    end;
    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO TBITEMS ');
      q.SQL.Add('  (IDTBANK, IDITEMTB, FECHA, DETALLE, MONTO) ');
      q.SQL.Add('VALUES ');
      q.SQL.Add('  (:IDTBANK, :IDITEMTB, :FECHA, :DETALLE, :MONTO) ');
      q.ParamByName('IDTBANK').AsInteger := ItemsTBIdTransBank.AsInteger;
      q.ParamByName('IDITEMTB').AsInteger := ItemsTBIdItemTB.AsInteger;
      q.ParamByName('FECHA').AsDate := ItemsTBFecha.AsDateTime;
      q.ParamByName('DETALLE').AsString := ItemsTBDetalle.AsString;
      q.ParamByName('MONTO').AsCurrency := ItemsTBMonto.AsCurrency;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Items Transferencias Bancarias '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Inc(CantTran);
    ItemsTB.Next;
  end;
  ItemsTB.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación IT TransBank ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('IT TransBank '+E.Message);
        raise;
      end
    end;
  end;

  mmPorDonde.Lines.Add('Finalizado Bancos '+TimeToStr(Time));
  DBIsam_ConnectDB(2);
end;

procedure TfrmConversion.DBIsam_Pasa_Rendiciones;
var
  q, t, r: TMDOQuery;
  Esta, EstaCli, CantTran, Save_Tot, i: Integer;
begin
  DBIsam_ConnectDB(1);
  mmPorDonde.Lines.Add('Rendiciones '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM R_REND ');
      q.SQL.Add('Where IdSuc = :S ');
      q.ParamByName('S').AsInteger := IdBranch;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO Rend '+E.Message);
          Application.ProcessMessages;
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('BORRADO Rendiciones '+E.Message);
      Application.ProcessMessages;
      trConversion.Rollback;
    end
  end;

  R_Rend.Filter := 'IdSuc = '+IntToStr(IdBranch);
  R_Rend.Filtered := True;
  R_Rend.Open;
  R_Rend.First;
  Save_Tot := 0;
  CantTran := 1;
  While not R_Rend.Eof do
  begin
    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO R_Rend ');
      q.SQL.Add('  (IDREND, IDSUC, FECHAR, TVENTA, TPESOS, TTICKETS, TSAF, TCOBOSUC, TCOBRADO, ');
      q.SQL.Add('   TTARJETA, TCHEQUES, TSENAS, TNCRED, TGASTOSE, TGASTOST, DIFERENCIA, ');
      q.SQL.Add('   IDCUENTA, BOLDEP, DEPOSITO, FECHAIS, IDMOVBCO) ');
      q.SQL.Add('VALUES ');
      q.SQL.Add('  (:IDREND, :IDSUC, :FECHAR, :TVENTA, :TPESOS, :TTICKETS, :TSAF, :TCOBOSUC, ');
      q.SQL.Add('   :TCOBRADO,  :TTARJETA, :TCHEQUES, :TSENAS, :TNCRED, :TGASTOSE, :TGASTOST, ');
      q.SQL.Add('   :DIFERENCIA, :IDCUENTA, :BOLDEP, :DEPOSITO, :FECHAIS, :IDMOVBCO) ');
      q.ParamByName('IDREND').AsInteger := R_RendIdRend.AsInteger;
      q.ParamByName('IDSUC').AsInteger := R_RendIdSuc.AsInteger;
      q.ParamByName('FECHAR').AsDate := R_RendFechaR.AsDateTime;
      q.ParamByName('TVENTA').AsCurrency := R_RendTVenta.AsCurrency;
      q.ParamByName('TPESOS').AsCurrency := R_RendTPesos.AsCurrency;
      q.ParamByName('TTICKETS').AsCurrency := R_RendTTickets.AsCurrency;
      q.ParamByName('TSAF').AsCurrency := 0;
      q.ParamByName('TCOBOSUC').AsCurrency := 0;
      q.ParamByName('TCOBRADO').AsCurrency := 0;
      q.ParamByName('TTARJETA').AsCurrency := R_RendTTarjeta.AsCurrency;
      q.ParamByName('TCHEQUES').AsCurrency := R_RendTCheques.AsCurrency;
      q.ParamByName('TSENAS').AsCurrency := R_RendTSenas.AsCurrency;
      q.ParamByName('TNCRED').AsCurrency := R_RendTNCred.AsCurrency;
      q.ParamByName('TGASTOSE').AsCurrency := R_RendTGastosE.AsCurrency;
      q.ParamByName('TGASTOST').AsCurrency := R_RendTGastosT.AsCurrency;
      q.ParamByName('DIFERENCIA').AsCurrency := R_RendDiferencia.AsCurrency;
      q.ParamByName('IDCUENTA').AsInteger := R_RendIdCuenta.AsInteger;
      q.ParamByName('BOLDEP').AsString := R_RendBolDep.AsString;
      q.ParamByName('DEPOSITO').AsCurrency := R_RendDeposito.AsCurrency;
      q.ParamByName('FECHAIS').AsDate := R_RendFechaIS.AsDateTime;
      q.ParamByName('IDMOVBCO').AsInteger := R_RendIdMovBco.AsInteger;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Rendiciones '+E.Message);
          Application.ProcessMessages;
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Inc(CantTran);
    if CantTran >= 10 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación Rend '+ IntToStr(Save_Tot));
        Application.ProcessMessages;
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('Rendicion '+E.Message);
          Application.ProcessMessages;
        end
      end;
      CantTran := 1;
    end;
    R_Rend.Next;
  end;
  R_Rend.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación Rendiciones '+TimeToStr(Time));
      Application.ProcessMessages;
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('IT TransBank '+E.Message);
        Application.ProcessMessages;
      end
    end;
  end;
  mmPorDonde.Lines.Add('Finalizado Rendiciones '+TimeToStr(Time));
  Application.ProcessMessages;
  DBIsam_ConnectDB(2);
end;

procedure TfrmConversion.DBIsam_Pasa_Ventas;
var
  q, t, r: TMDOQuery;
  Esta, EstaCli, CantTran, Save_Tot, i: Integer;
begin
  DBIsam_ConnectDB(1);
  mmPorDonde.Lines.Add('Ventas: Facturas y Clientes.- '+TimeToStr(Time));
  Application.ProcessMessages;
  FacVen.Open;
  if not FacVen.IsEmpty then
  begin
    try
      Esta := 0;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('Select distintc Count(IdFactura) As Esta ');
        q.SQL.Add('From FacVen ');
        q.SQL.Add('Where IdSucursal =:IdSucursal');
        q.ParamByName('IdSucursal').AsInteger := IdBranch;
        q.Open;
        Esta := q.FieldByName('Esta').AsInteger;
        q.Close;
      finally
        q.Free;
      end;

      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('Select Max(IdFactura) as Ultima');
        q.SQL.Add('From FacVen ');
        q.SQL.Add('Where (TipoFactura in (1,2,3,4,5,6,7,8,9,42,90)) And ');
        q.SQL.Add('      (IdSucursal =:IdSucursal) ');
        q.ParamByName('IdSucursal').AsInteger := IdBranch;
        q.Open;
        if not q.IsEmpty then
        begin
          if not (FacVen.Locate('IdFactura;IdSucursal',
             VarArrayOf([q.FieldByName('Ultima').AsInteger, IdBranch]), [])) then
          begin
            FacVen.First;
          end;
          q.Close;
        end
        else begin
          FacVen.First;
        end;
      finally
        q.Free;
      end;
    except
      FacVen.First;
    end;

    mmPorDonde.Lines.Add('Ventas: TC '+IntToStr(FacVen.RecordCount)+' CG: '+IntToStr(Esta));
    Application.ProcessMessages;
    CantTran := 1;
    Save_Tot := 0;
    While not FacVen.Eof do
    begin
      Esta := 0;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('Select Count(IdFactura) As Esta ');
        q.SQL.Add('From FacVen ');
        q.SQL.Add('Where IdFactura =:IdFactura And ');
        q.SQL.Add('      IdSucursal =:IdSucursal And ');
        q.SQL.Add('      IdPuntoVenta =:IdPuntoVenta ');
        q.ParamByName('IdFactura').AsInteger := FacVenIdFactura.AsInteger;
        q.ParamByName('IdSucursal').AsInteger := FacVenIdSucursal.AsInteger;
        q.ParamByName('IdPuntoVenta').AsInteger := FacVenIdPuntoVenta.AsInteger;
        q.Open;
        Esta := q.FieldByName('Esta').AsInteger;
        q.Close;
      finally
        q.Free;
      end;

      if Esta = 0 then
      begin
        if CantTran >= 100 then
        begin
          Save_Tot := Save_Tot + CantTran;
          try
            trConversion.Commit;
            mmPorDonde.Lines.Add('Grabación Ventas '+ IntToStr(Save_Tot));
          except
            on E:Exception do
            begin
              trConversion.Rollback;
              mmPorDonde.Lines.Add('Ventas '+E.Message);
            end
          end;
          CantTran := 1;
        end;

        if CantTran = 1 then
        begin
          if not trConversion.InTransaction then
            trConversion.StartTransaction;
        end;
        try
          q := TMDOQuery.Create(nil);
          q.Database := dbConversion;
          q.Transaction := trConversion;
          q.SQL.Add('INSERT INTO FACVEN ');
          q.SQL.Add('  (IDFACTURA, IDSUCURSAL, IDPUNTOVENTA, TIPOFACTURA, SECTOR, ');
          q.SQL.Add('   IDSUBDEP, DIAHORA, FECHAF, FECHAI, PUNTOVTA, NROFACTURA, ');
          q.SQL.Add('   IDCOMPREF, COMPREF, CLIENTE, TIPOIVA, CANTARTIC, BONIFICACION, ');
          q.SQL.Add('   NETO, EXENTO, NOCOMPUTABLES, IVAALICUOTA1, IVAALICUOTA2, TOTAL,  ');
          q.SQL.Add('   SITUACION, ENTCONTADO, CONTADO, TARJETA, IDTARJETA,CTACTE, ');
          q.SQL.Add('   NROCTAS, CHEQUE, TICKETS, OTROSPAGOS, EMPLEADO, IMPRESA, FECHAIS, ');
          q.SQL.Add('   IDMOTNC, USUARIO, DIR_ENTREGA, SENAS, COBSENAS, STATE) ');
          q.SQL.Add('VALUES ');
          q.SQL.Add('  (:IDFACTURA, :IDSUCURSAL, :IDPUNTOVENTA, :TIPOFACTURA, :SECTOR, ');
          q.SQL.Add('   :IDSUBDEP, :DIAHORA, :FECHAF, :FECHAI, :PUNTOVTA, :NROFACTURA, ');
          q.SQL.Add('   :IDCOMPREF, :COMPREF, :CLIENTE, :TIPOIVA, :CANTARTIC, :BONIFICACION, ');
          q.SQL.Add('   :NETO, :EXENTO, :NOCOMPUTABLES, :IVAALICUOTA1, :IVAALICUOTA2, :TOTAL,  ');
          q.SQL.Add('   :SITUACION, :ENTCONTADO, :CONTADO, :TARJETA, :IDTARJETA, :CTACTE, ');
          q.SQL.Add('   :NROCTAS, :CHEQUE, :TICKETS, :OTROSPAGOS, :EMPLEADO, :IMPRESA, :FECHAIS, ');
          q.SQL.Add('   :IDMOTNC, :USUARIO, :DIR_ENTREGA, :SENAS,:COBSENAS, :STATE) ');
          q.ParamByName('IDFACTURA').AsInteger := FacVenIdFactura.AsInteger;
          q.ParamByName('IDSUCURSAL').AsInteger := FacVenIdSucursal.AsInteger;
          q.ParamByName('IDPUNTOVENTA').AsInteger := FacVenIdPuntoVenta.AsInteger;
          q.ParamByName('TIPOFACTURA').AsInteger := FacVenTipoFactura.AsInteger;
          q.ParamByName('SECTOR').AsInteger := FacVenSector.AsInteger;
          q.ParamByName('IDSUBDEP').AsInteger := FacVenIdSubDep.AsInteger;
          q.ParamByName('DIAHORA').AsDateTime := FacVenDiaHora.AsDateTime;
          q.ParamByName('FECHAF').AsDate := FacVenFechaF.AsDateTime;
          q.ParamByName('FECHAI').AsDate := FacVenFechaI.AsDateTime;
          q.ParamByName('PUNTOVTA').AsInteger := FacVenPuntoVta.AsInteger;
          q.ParamByName('NROFACTURA').AsString := FacVenNroFactura.AsString;
          q.ParamByName('IDCOMPREF').AsInteger := FacVenIdCompRef.AsInteger;
          q.ParamByName('COMPREF').AsString := FacVenCompRef.AsString;

          Clientes.Open;
          if Clientes.Locate(ClientesIdCliente.FieldName, FacVenCliente.AsInteger, []) then
          begin
            EstaCli := 0;
            try
              r := TMDOQuery.Create(nil);
              r.Database := dbConversion;
              r.Transaction := trConversion;
              r.SQL.Add('SELECT COUNT(IDCLIENTE) AS CANTCLI ');
              r.SQL.Add('FROM CLIENTES ');
              r.SQL.Add('WHERE IDCLIENTE = :I AND IDSUCURSAL = :S ');
              r.ParamByName('I').AsInteger := ClientesIdCliente.AsInteger;
              r.ParamByName('S').AsInteger := FacVenIdSucursal.AsInteger;
              r.Open;
              EstaCli := r.FieldByName('CANTCLI').AsInteger;
              r.Close;
            finally
              r.Free;
            end;

            if EstaCli = 0 then
            begin
              EstaCli := ClientesIdCliente.AsInteger;
              try
                t := TMDOQuery.Create(nil);
                t.Database := dbConversion;
                t.Transaction := trConversion;
                t.SQL.Add('INSERT INTO CLIENTES ');
                t.SQL.Add('  (IDCLIENTE, IDSUCURSAL,  NOMBRE, DIRECCION, ');
                t.SQL.Add('   LOCALIDAD, PROVINCIA, CODPOSTAL, TELEFONOS, TELFAX, ');
                t.SQL.Add('   TIPOIVA, TIPODOC, DOCUMENTO, INGBRUTOS, FECHANAC, ');
                t.SQL.Add('   ESTADOCIVIL, NCONYUGE, EMPLEADOR, DOMICILIOE, ');
                t.SQL.Add('   ANTIGUEDADE, INGRESOSE, CARGO, NROJUBILADO, RAMO, ');
                t.SQL.Add('   DOMICILIOP, ANTIGUEDADP, INGRESOSP, TIPOPROP, ');
                t.SQL.Add('   UBICPROP, REFERENCIAS, TIPOCLI, NOMGARANTE1, ');
                t.SQL.Add('   DOCGARANTE1, NOMGARANTE2, DOCGARANTE2, CODBUSCLI) ');
                t.SQL.Add('VALUES ');
                t.SQL.Add('  (:IDCLIENTE, :IDSUCURSAL, :NOMBRE, :DIRECCION, ');
                t.SQL.Add('   :LOCALIDAD, :PROVINCIA, :CODPOSTAL, :TELEFONOS, :TELFAX, ');
                t.SQL.Add('   :TIPOIVA, :TIPODOC, :DOCUMENTO, :INGBRUTOS, :FECHANAC, ');
                t.SQL.Add('   :ESTADOCIVIL, :NCONYUGE, :EMPLEADOR,  :DOMICILIOE, ');
                t.SQL.Add('   :ANTIGUEDADE, :INGRESOSE, :CARGO, :NROJUBILADO, :RAMO, ');
                t.SQL.Add('   :DOMICILIOP, :ANTIGUEDADP, :INGRESOSP, :TIPOPROP, ');
                t.SQL.Add('   :UBICPROP, :REFERENCIAS, :TIPOCLI, :NOMGARANTE1, ');
                t.SQL.Add('   :DOCGARANTE1, :NOMGARANTE2, :DOCGARANTE2, :CODBUSCLI) ');
                t.ParamByName('IDCLIENTE').AsInteger := ClientesIdCliente.AsInteger;
                t.ParamByName('IDSUCURSAL').AsInteger := FacVenIdSucursal.AsInteger;
                t.ParamByName('NOMBRE').AsString := ClientesNombre.AsString;
                t.ParamByName('DIRECCION').AsString := ClientesDireccion.AsString;
                t.ParamByName('LOCALIDAD').AsString := ClientesLocalidad.AsString;
                t.ParamByName('PROVINCIA').AsString := ClientesProvincia.AsString;
                t.ParamByName('CODPOSTAL').AsString := ClientesCodPostal.AsString;
                t.ParamByName('TELEFONOS').AsString := ClientesTelefonos.AsString;
                t.ParamByName('TELFAX').AsString := ClientesTelFax.AsString;
                t.ParamByName('TIPOIVA').AsInteger := ClientesTipoIva.AsInteger;
                t.ParamByName('TIPODOC').AsInteger := ClientesTipoDoc.AsInteger;
                t.ParamByName('DOCUMENTO').AsString := ClientesDocumento.AsString;
                t.ParamByName('INGBRUTOS').AsString := ClientesIngBrutos.AsString;
                t.ParamByName('FECHANAC').Clear;
                t.ParamByName('ESTADOCIVIL').AsInteger := 0;
                t.ParamByName('NCONYUGE').AsString := Vacio;
                t.ParamByName('EMPLEADOR').AsString := Vacio;
                t.ParamByName('DOMICILIOE').AsString := Vacio;
                t.ParamByName('ANTIGUEDADE').AsInteger := 0;
                t.ParamByName('INGRESOSE').AsCurrency := 0;
                t.ParamByName('CARGO').AsString := Vacio;
                t.ParamByName('NROJUBILADO').AsString := Vacio;
                t.ParamByName('RAMO').AsString := Vacio;
                t.ParamByName('DOMICILIOP').AsString := Vacio;
                t.ParamByName('ANTIGUEDADP').AsString := Vacio;
                t.ParamByName('INGRESOSP').AsCurrency := 0;
                t.ParamByName('TIPOPROP').AsString := Vacio;
                t.ParamByName('UBICPROP').AsString := Vacio;
                t.ParamByName('REFERENCIAS').AsString := Vacio;
                t.ParamByName('TIPOCLI').AsInteger := 0;
                t.ParamByName('NOMGARANTE1').AsString := Vacio;
                t.ParamByName('DOCGARANTE1').AsString := Vacio;
                t.ParamByName('NOMGARANTE2').AsString := Vacio;
                t.ParamByName('DOCGARANTE2').AsString := Vacio;
                t.ParamByName('CODBUSCLI').AsString := ClientesIdCliente.AsString;
                try
                  t.ExecSQL;
                except
                  on E:Exception do
                  begin
                    mmPorDonde.Lines.Add('Clientes '+E.Message);
                  end
                end;
                t.Close;
              finally
                t.Free;
              end;
            end;
          end;
          Clientes.Close;
          q.ParamByName('CLIENTE').AsInteger := EstaCli;
          q.ParamByName('TIPOIVA').AsInteger := FacVenTipoIva.AsInteger;
          q.ParamByName('CANTARTIC').AsInteger := FacVenCantArtic.AsInteger;
          q.ParamByName('BONIFICACION').AsCurrency := FacVenBonificacion.AsCurrency;
          q.ParamByName('NETO').AsCurrency := FacVenNeto.AsCurrency;
          q.ParamByName('EXENTO').AsCurrency := FacVenExento.AsCurrency;
          q.ParamByName('NOCOMPUTABLES').AsCurrency := FacVenNoComputables.AsCurrency;
          q.ParamByName('IVAALICUOTA1').AsCurrency := FacVenIvaAlicuota1.AsCurrency;
          q.ParamByName('IVAALICUOTA2').AsCurrency := 0;
          q.ParamByName('TOTAL').AsCurrency := FacVenTotal.AsCurrency;
          q.ParamByName('SITUACION').AsInteger := FacVenSituacion.AsInteger;
          q.ParamByName('ENTCONTADO').AsCurrency := FacVenEntContado.AsCurrency;
          q.ParamByName('CONTADO').AsCurrency := FacVenContado.AsCurrency;
          q.ParamByName('TARJETA').AsCurrency := FacVenTarjeta.AsCurrency;
          q.ParamByName('IDTARJETA').AsInteger := FacVenIdTarjeta.AsInteger;
          q.ParamByName('CTACTE').AsCurrency := FacVenCtaCte.AsCurrency;
          q.ParamByName('NROCTAS').AsInteger := FacVenNroCtas.AsInteger;
          q.ParamByName('CHEQUE').AsCurrency := FacVenCheque.AsCurrency;
          q.ParamByName('TICKETS').AsCurrency := FacVenTickets.AsCurrency;
          q.ParamByName('OTROSPAGOS').AsCurrency := FacVenOtrosPagos.AsCurrency;
          q.ParamByName('EMPLEADO').AsInteger := FacVenEmpleado.AsInteger;
          q.ParamByName('IMPRESA').AsInteger := FacVenImpresa.AsInteger;
          q.ParamByName('FECHAIS').AsDate := FacVenFechaIS.AsDateTime;
          q.ParamByName('IDMOTNC').AsInteger := FacVenIdMotNc.AsInteger;
          q.ParamByName('USUARIO').AsInteger := FacVenUsuario.AsInteger;
          q.ParamByName('DIR_ENTREGA').AsString := '';
          q.ParamByName('SENAS').AsCurrency := 0;
          q.ParamByName('COBSENAS').AsCurrency := 0;
          q.ParamByName('STATE').AsInteger := 0;
          try
            q.ExecSQL;
          except
            on E:Exception do
            begin
              mmPorDonde.Lines.Add('FacVen '+E.Message);
            end
          end;
          q.Close;
        finally
          q.Free;
        end;

        //********************************** ITEMS ****************************
        ItemsFV.Filter := 'IdFactura = '+FacVenIdFactura.AsString + ' And '+
                          'IdSucursal = '+ FacVenIdSucursal.AsString + ' And '+
                          'IdPuntoVenta = '+ FacVenIdPuntoVenta.AsString;
        ItemsFV.Filtered := True;
        ItemsFV.Open;
        ItemsFV.First;
        While not ItemsFV.Eof do
        begin
          try
            q := TMDOQuery.Create(nil);
            q.Database := dbConversion;
            q.Transaction := trConversion;
            q.SQL.Add('INSERT INTO ITEMSFV ');
            q.SQL.Add('  (IDFACTURA, IDSUCURSAL, IDPUNTOVENTA, IDITEM, IDARTICULO, TALLE, IDSUBDEP, ');
            q.SQL.Add('   FECHAF, CANTIDAD, NROCTAS, PRCBONIFICACION, DESCUENTO, PRECIOCOSTO, ');
            q.SQL.Add('   PRECIONETO, PRECIOFINAL, PRECIOTOTAL, VALORLISTA, EXENTO, IMPINT, IVAIN, ');
            q.SQL.Add('   IDALCIVA, ALICUOTAIVA, IDALCIB, ALCIB, INGBTO, OFERTA, SUBDET, STATE, ');
            q.SQL.Add('   DCTOSTK, ENTCONTADO) ');
            q.SQL.Add('VALUES ');
            q.SQL.Add('  (:IDFACTURA, :IDSUCURSAL, :IDPUNTOVENTA, :IDITEM, :IDARTICULO, :TALLE, ');
            q.SQL.Add('   :IDSUBDEP, :FECHAF, :CANTIDAD, :NROCTAS, :PRCBONIFICACION, :DESCUENTO, ');
            q.SQL.Add('   :PRECIOCOSTO, :PRECIONETO, :PRECIOFINAL, :PRECIOTOTAL, :VALORLISTA, ');
            q.SQL.Add('   :EXENTO, :IMPINT, :IVAIN, :IDALCIVA, :ALICUOTAIVA, :IDALCIB, :ALCIB, ');
            q.SQL.Add('   :INGBTO, :OFERTA, :SUBDET, :STATE, :DCTOSTK, :ENTCONTADO) ');
            q.ParamByName('IDFACTURA').AsInteger := ItemsFVIdFactura.AsInteger;
            q.ParamByName('IDSUCURSAL').AsInteger := ItemsFVIdSucursal.AsInteger;
            q.ParamByName('IDPUNTOVENTA').AsInteger := ItemsFVIdPuntoVenta.AsInteger;
            q.ParamByName('IDITEM').AsInteger := ItemsFVIdItem.AsInteger;
            q.ParamByName('IDARTICULO').AsInteger := ItemsFVIdArticulo.AsInteger;
            q.ParamByName('TALLE').AsInteger := ItemsFVTalle.AsInteger;
            q.ParamByName('IDSUBDEP').AsInteger := ItemsFVIdSubDep.AsInteger;
            q.ParamByName('FECHAF').AsDate := ItemsFVFechaF.AsDateTime;
            q.ParamByName('CANTIDAD').AsFloat := ItemsFVCantidad.AsFloat;
            q.ParamByName('NROCTAS').AsInteger := ItemsFVNroCtas.AsInteger;
            q.ParamByName('PRCBONIFICACION').AsFloat := ItemsFVPrcBonificacion.AsFloat;
            q.ParamByName('DESCUENTO').AsCurrency := ItemsFVDescuento.AsCurrency;
            q.ParamByName('PRECIOCOSTO').AsCurrency := ItemsFVPrecioCosto.AsCurrency;
            q.ParamByName('PRECIONETO').AsCurrency := ItemsFVPrecioNeto.AsCurrency;
            q.ParamByName('PRECIOFINAL').AsCurrency := ItemsFVPrecioFinal.AsCurrency;
            q.ParamByName('PRECIOTOTAL').AsCurrency := ItemsFVPrecioTotal.AsCurrency;
            q.ParamByName('VALORLISTA').AsCurrency := ItemsFVValorLista.AsCurrency;
            q.ParamByName('EXENTO').AsCurrency := ItemsFVExento.AsCurrency;
            q.ParamByName('IMPINT').AsCurrency := ItemsFVImpInt.AsCurrency;
            q.ParamByName('IVAIN').AsCurrency := ItemsFVIvaIn.AsCurrency;
            q.ParamByName('IDALCIVA').AsInteger := ItemsFVIdAlcIva.AsInteger;
            q.ParamByName('ALICUOTAIVA').AsFloat := ItemsFVAlicuotaIva.AsFloat;
            q.ParamByName('IDALCIB').AsInteger := ItemsFVIdAlcIB.AsInteger;
            q.ParamByName('ALCIB').AsFloat := ItemsFVAlcIB.AsFloat;
            q.ParamByName('INGBTO').AsCurrency := ItemsFVIngBto.AsCurrency;
            q.ParamByName('OFERTA').AsInteger := ItemsFVOferta.AsInteger;
            q.ParamByName('SUBDET').AsString := ItemsFVSubDet.AsString;
            q.ParamByName('STATE').AsInteger := 0;
            q.ParamByName('DCTOSTK').AsInteger := Verdadero;
            q.ParamByName('ENTCONTADO').AsCurrency := ItemsFVEntContado.AsCurrency;
            try
              q.ExecSQL;
            except
              on E:Exception do
              begin
                mmPorDonde.Lines.Add('Items FV '+E.Message);
              end
            end;
            q.Close;
          finally
            q.Free;
          end;
          ItemsFV.Next;
        end;
        ItemsFV.Close;
        //********************************** ITEMS ****************************
        Inc(CantTran);
      end;
      FacVen.Next;
    end;
    FacVen.Close;
    if trConversion.InTransaction then
    begin
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Fin Grabación FV ');
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('FV '+E.Message);
          raise;
        end
      end;
    end;
  end;
  mmPorDonde.Lines.Add('Finalizado Ventas, Items y Clientes '+TimeToStr(Time));
  DBIsam_ConnectDB(2);
end;

procedure TfrmConversion.DBIsam_Pasa_Com_Ventas(IdF, IdS, IdP: Integer);
var
  q, t: TMDOQuery;
  Cant: Integer;
begin
  ItemsFV.Filter := 'IdFactura = '+ IntToStr(IdF) + ' And '+
                    'IdSucursal = '+ IntToStr(IdS) + ' And '+
                    'IdPuntoVenta = '+ IntToStr(IdP);
  ItemsFV.Filtered := True;
  ItemsFV.Open;
  if not ItemsFV.IsEmpty then
  begin
    ItemsFV.First;
    While not ItemsFV.Eof do
    begin
      Cant := 0;
      try
        t := TMDOQuery.Create(nil);
        t.Database := dbConversion;
        t.Transaction := trConversion;
        t.SQL.Add('Select Count(IdFactura) as Cant ');
        t.SQL.Add('From ItemsFV ');
        t.SQL.Add('Where IDFACTURA =:F And ');
        t.SQL.Add('      IDSUCURSAL =:S And ');
        t.SQL.Add('      IDPUNTOVENTA =:P And ');
        t.SQL.Add('      IDITEM =:I And ');
        t.SQL.Add('      IDARTICULO =:A ');
        t.ParamByName('F').AsInteger := ItemsFVIdFactura.AsInteger;
        t.ParamByName('S').AsInteger := ItemsFVIdSucursal.AsInteger;
        t.ParamByName('P').AsInteger := ItemsFVIdPuntoVenta.AsInteger;
        t.ParamByName('I').AsInteger := ItemsFVIdItem.AsInteger;
        t.ParamByName('A').AsInteger := ItemsFVIdArticulo.AsInteger;
        t.Open;
        Cant := t.FieldByName('Cant').AsInteger;
        t.Close;
      finally
        t.Free;
      end;

      if Cant = 0 then
      begin
        try
          q := TMDOQuery.Create(nil);
          q.Database := dbConversion;
          q.Transaction := trConversion;
          q.SQL.Add('INSERT INTO ITEMSFV ');
          q.SQL.Add('  (IDFACTURA, IDSUCURSAL, IDPUNTOVENTA, IDITEM, IDARTICULO, TALLE, IDSUBDEP, ');
          q.SQL.Add('   FECHAF, CANTIDAD, NROCTAS, PRCBONIFICACION, DESCUENTO, PRECIOCOSTO, ');
          q.SQL.Add('   PRECIONETO, PRECIOFINAL, PRECIOTOTAL, VALORLISTA, EXENTO, IMPINT, IVAIN, ');
          q.SQL.Add('   IDALCIVA, ALICUOTAIVA, IDALCIB, ALCIB, INGBTO, OFERTA, SUBDET, STATE, ');
          q.SQL.Add('   DCTOSTK, ENTCONTADO) ');
          q.SQL.Add('VALUES ');
          q.SQL.Add('  (:IDFACTURA, :IDSUCURSAL, :IDPUNTOVENTA, :IDITEM, :IDARTICULO, :TALLE, ');
          q.SQL.Add('   :IDSUBDEP, :FECHAF, :CANTIDAD, :NROCTAS, :PRCBONIFICACION, :DESCUENTO, ');
          q.SQL.Add('   :PRECIOCOSTO, :PRECIONETO, :PRECIOFINAL, :PRECIOTOTAL, :VALORLISTA, ');
          q.SQL.Add('   :EXENTO, :IMPINT, :IVAIN, :IDALCIVA, :ALICUOTAIVA, :IDALCIB, :ALCIB, ');
          q.SQL.Add('   :INGBTO, :OFERTA, :SUBDET, :STATE, :DCTOSTK, :ENTCONTADO) ');
          q.ParamByName('IDFACTURA').AsInteger := ItemsFVIdFactura.AsInteger;
          q.ParamByName('IDSUCURSAL').AsInteger := ItemsFVIdSucursal.AsInteger;
          q.ParamByName('IDPUNTOVENTA').AsInteger := ItemsFVIdPuntoVenta.AsInteger;
          q.ParamByName('IDITEM').AsInteger := ItemsFVIdItem.AsInteger;
          q.ParamByName('IDARTICULO').AsInteger := ItemsFVIdArticulo.AsInteger;
          q.ParamByName('TALLE').AsInteger := ItemsFVTalle.AsInteger;
          q.ParamByName('IDSUBDEP').AsInteger := ItemsFVIdSubDep.AsInteger;
          q.ParamByName('FECHAF').AsDate := ItemsFVFechaF.AsDateTime;
          q.ParamByName('CANTIDAD').AsFloat := ItemsFVCantidad.AsFloat;
          q.ParamByName('NROCTAS').AsInteger := ItemsFVNroCtas.AsInteger;
          q.ParamByName('PRCBONIFICACION').AsFloat := ItemsFVPrcBonificacion.AsFloat;
          q.ParamByName('DESCUENTO').AsCurrency := ItemsFVDescuento.AsCurrency;
          q.ParamByName('PRECIOCOSTO').AsCurrency := ItemsFVPrecioCosto.AsCurrency;
          q.ParamByName('PRECIONETO').AsCurrency := ItemsFVPrecioNeto.AsCurrency;
          q.ParamByName('PRECIOFINAL').AsCurrency := ItemsFVPrecioFinal.AsCurrency;
          q.ParamByName('PRECIOTOTAL').AsCurrency := ItemsFVPrecioTotal.AsCurrency;
          q.ParamByName('VALORLISTA').AsCurrency := ItemsFVValorLista.AsCurrency;
          q.ParamByName('EXENTO').AsCurrency := ItemsFVExento.AsCurrency;
          q.ParamByName('IMPINT').AsCurrency := ItemsFVImpInt.AsCurrency;
          q.ParamByName('IVAIN').AsCurrency := ItemsFVIvaIn.AsCurrency;
          q.ParamByName('IDALCIVA').AsInteger := ItemsFVIdAlcIva.AsInteger;
          q.ParamByName('ALICUOTAIVA').AsFloat := ItemsFVAlicuotaIva.AsFloat;
          q.ParamByName('IDALCIB').AsInteger := ItemsFVIdAlcIB.AsInteger;
          q.ParamByName('ALCIB').AsFloat := ItemsFVAlcIB.AsFloat;
          q.ParamByName('INGBTO').AsCurrency := ItemsFVIngBto.AsCurrency;
          q.ParamByName('OFERTA').AsInteger := ItemsFVOferta.AsInteger;
          q.ParamByName('SUBDET').AsString := ItemsFVSubDet.AsString;
          q.ParamByName('STATE').AsInteger := 0;
          q.ParamByName('DCTOSTK').AsInteger := Verdadero;
          q.ParamByName('ENTCONTADO').AsCurrency := ItemsFVEntContado.AsCurrency;
          try
            q.ExecSQL;
          except
            on E:Exception do
            begin
              mmPorDonde.Lines.Add(E.Message);
            end
          end;
          q.Close;
        finally
          q.Free;
        end;
      end;
      ItemsFV.Next;
    end;
    ItemsFV.Close;
  end
  else begin
    mmPorDonde.Lines.Add('No Encontrado');
  end;
end;

procedure TfrmConversion.DBIsam_Pasa_Consignaciones;
var
  q, t, r: TMDOQuery;
  Esta, EstaCli, CantTran, Save_Tot, i: Integer;
begin
  DBIsam_ConnectDB(1);
  mmPorDonde.Lines.Add('Ventas: Consignaciones y Clientes.- '+TimeToStr(Time));
  Application.ProcessMessages;
  FacVen.Open;
  FacVen.Filter := 'TipoFactura = 90';
  FacVen.Filtered := True;
  if not FacVen.IsEmpty then
  begin
    FacVen.First;
    mmPorDonde.Lines.Add('Ventas: TC '+IntToStr(FacVen.RecordCount)+' CG: '+IntToStr(Esta));
    Application.ProcessMessages;
    CantTran := 1;
    Save_Tot := 0;
    While not FacVen.Eof do
    begin
      Esta := 0;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('Select Count(IdFactura) As Esta ');
        q.SQL.Add('From FacVen ');
        q.SQL.Add('Where IdFactura =:IdFactura And ');
        q.SQL.Add('      IdSucursal =:IdSucursal And ');
        q.SQL.Add('      IdPuntoVenta =:IdPuntoVenta ');
        q.ParamByName('IdFactura').AsInteger := FacVenIdFactura.AsInteger;
        q.ParamByName('IdSucursal').AsInteger := FacVenIdSucursal.AsInteger;
        q.ParamByName('IdPuntoVenta').AsInteger := FacVenIdPuntoVenta.AsInteger;
        q.Open;
        Esta := q.FieldByName('Esta').AsInteger;
        q.Close;
      finally
        q.Free;
      end;

      if Esta = 0 then
      begin
        if CantTran >= 10 then
        begin
          Save_Tot := Save_Tot + CantTran;
          try
            trConversion.Commit;
            mmPorDonde.Lines.Add('Grabación Consignaciones '+ IntToStr(Save_Tot));
          except
            on E:Exception do
            begin
              trConversion.Rollback;
              mmPorDonde.Lines.Add('Consignaciones '+E.Message);
            end
          end;
          CantTran := 1;
        end;

        if CantTran = 1 then
        begin
          if not trConversion.InTransaction then
            trConversion.StartTransaction;
        end;
        try
          q := TMDOQuery.Create(nil);
          q.Database := dbConversion;
          q.Transaction := trConversion;
          q.SQL.Add('INSERT INTO FACVEN ');
          q.SQL.Add('  (IDFACTURA, IDSUCURSAL, IDPUNTOVENTA, TIPOFACTURA, SECTOR, ');
          q.SQL.Add('   IDSUBDEP, DIAHORA, FECHAF, FECHAI, PUNTOVTA, NROFACTURA, ');
          q.SQL.Add('   IDCOMPREF, COMPREF, CLIENTE, TIPOIVA, CANTARTIC, BONIFICACION, ');
          q.SQL.Add('   NETO, EXENTO, NOCOMPUTABLES, IVAALICUOTA1, IVAALICUOTA2, TOTAL,  ');
          q.SQL.Add('   SITUACION, ENTCONTADO, CONTADO, TARJETA, IDTARJETA,CTACTE, ');
          q.SQL.Add('   NROCTAS, CHEQUE, TICKETS, OTROSPAGOS, EMPLEADO, IMPRESA, FECHAIS, ');
          q.SQL.Add('   IDMOTNC, USUARIO, DIR_ENTREGA, SENAS, COBSENAS, STATE) ');
          q.SQL.Add('VALUES ');
          q.SQL.Add('  (:IDFACTURA, :IDSUCURSAL, :IDPUNTOVENTA, :TIPOFACTURA, :SECTOR, ');
          q.SQL.Add('   :IDSUBDEP, :DIAHORA, :FECHAF, :FECHAI, :PUNTOVTA, :NROFACTURA, ');
          q.SQL.Add('   :IDCOMPREF, :COMPREF, :CLIENTE, :TIPOIVA, :CANTARTIC, :BONIFICACION, ');
          q.SQL.Add('   :NETO, :EXENTO, :NOCOMPUTABLES, :IVAALICUOTA1, :IVAALICUOTA2, :TOTAL,  ');
          q.SQL.Add('   :SITUACION, :ENTCONTADO, :CONTADO, :TARJETA, :IDTARJETA, :CTACTE, ');
          q.SQL.Add('   :NROCTAS, :CHEQUE, :TICKETS, :OTROSPAGOS, :EMPLEADO, :IMPRESA, :FECHAIS, ');
          q.SQL.Add('   :IDMOTNC, :USUARIO, :DIR_ENTREGA, :SENAS,:COBSENAS, :STATE) ');
          q.ParamByName('IDFACTURA').AsInteger := FacVenIdFactura.AsInteger;
          q.ParamByName('IDSUCURSAL').AsInteger := FacVenIdSucursal.AsInteger;
          q.ParamByName('IDPUNTOVENTA').AsInteger := FacVenIdPuntoVenta.AsInteger;
          q.ParamByName('TIPOFACTURA').AsInteger := FacVenTipoFactura.AsInteger;
          q.ParamByName('SECTOR').AsInteger := FacVenSector.AsInteger;
          q.ParamByName('IDSUBDEP').AsInteger := FacVenIdSubDep.AsInteger;
          q.ParamByName('DIAHORA').AsDateTime := FacVenDiaHora.AsDateTime;
          q.ParamByName('FECHAF').AsDate := FacVenFechaF.AsDateTime;
          q.ParamByName('FECHAI').AsDate := FacVenFechaI.AsDateTime;
          q.ParamByName('PUNTOVTA').AsInteger := FacVenPuntoVta.AsInteger;
          q.ParamByName('NROFACTURA').AsString := FacVenNroFactura.AsString;
          q.ParamByName('IDCOMPREF').AsInteger := FacVenIdCompRef.AsInteger;
          q.ParamByName('COMPREF').AsString := FacVenCompRef.AsString;

          Clientes.Open;
          if Clientes.Locate(ClientesIdCliente.FieldName, FacVenCliente.AsInteger, []) then
          begin
            EstaCli := 0;
            try
              r := TMDOQuery.Create(nil);
              r.Database := dbConversion;
              r.Transaction := trConversion;
              r.SQL.Add('SELECT COUNT(IDCLIENTE) AS CANTCLI ');
              r.SQL.Add('FROM CLIENTES ');
              r.SQL.Add('WHERE IDCLIENTE = :I AND IDSUCURSAL = :S ');
              r.ParamByName('I').AsInteger := ClientesIdCliente.AsInteger;
              r.ParamByName('S').AsInteger := FacVenIdSucursal.AsInteger;
              r.Open;
              EstaCli := r.FieldByName('CANTCLI').AsInteger;
              r.Close;
            finally
              r.Free;
            end;

            if EstaCli = 0 then
            begin
              EstaCli := ClientesIdCliente.AsInteger;
              try
                t := TMDOQuery.Create(nil);
                t.Database := dbConversion;
                t.Transaction := trConversion;
                t.SQL.Add('INSERT INTO CLIENTES ');
                t.SQL.Add('  (IDCLIENTE, IDSUCURSAL,  NOMBRE, DIRECCION, ');
                t.SQL.Add('   LOCALIDAD, PROVINCIA, CODPOSTAL, TELEFONOS, TELFAX, ');
                t.SQL.Add('   TIPOIVA, TIPODOC, DOCUMENTO, INGBRUTOS, FECHANAC, ');
                t.SQL.Add('   ESTADOCIVIL, NCONYUGE, EMPLEADOR, DOMICILIOE, ');
                t.SQL.Add('   ANTIGUEDADE, INGRESOSE, CARGO, NROJUBILADO, RAMO, ');
                t.SQL.Add('   DOMICILIOP, ANTIGUEDADP, INGRESOSP, TIPOPROP, ');
                t.SQL.Add('   UBICPROP, REFERENCIAS, TIPOCLI, NOMGARANTE1, ');
                t.SQL.Add('   DOCGARANTE1, NOMGARANTE2, DOCGARANTE2, CODBUSCLI) ');
                t.SQL.Add('VALUES ');
                t.SQL.Add('  (:IDCLIENTE, :IDSUCURSAL, :NOMBRE, :DIRECCION, ');
                t.SQL.Add('   :LOCALIDAD, :PROVINCIA, :CODPOSTAL, :TELEFONOS, :TELFAX, ');
                t.SQL.Add('   :TIPOIVA, :TIPODOC, :DOCUMENTO, :INGBRUTOS, :FECHANAC, ');
                t.SQL.Add('   :ESTADOCIVIL, :NCONYUGE, :EMPLEADOR,  :DOMICILIOE, ');
                t.SQL.Add('   :ANTIGUEDADE, :INGRESOSE, :CARGO, :NROJUBILADO, :RAMO, ');
                t.SQL.Add('   :DOMICILIOP, :ANTIGUEDADP, :INGRESOSP, :TIPOPROP, ');
                t.SQL.Add('   :UBICPROP, :REFERENCIAS, :TIPOCLI, :NOMGARANTE1, ');
                t.SQL.Add('   :DOCGARANTE1, :NOMGARANTE2, :DOCGARANTE2, :CODBUSCLI) ');
                t.ParamByName('IDCLIENTE').AsInteger := ClientesIdCliente.AsInteger;
                t.ParamByName('IDSUCURSAL').AsInteger := FacVenIdSucursal.AsInteger;
                t.ParamByName('NOMBRE').AsString := ClientesNombre.AsString;
                t.ParamByName('DIRECCION').AsString := ClientesDireccion.AsString;
                t.ParamByName('LOCALIDAD').AsString := ClientesLocalidad.AsString;
                t.ParamByName('PROVINCIA').AsString := ClientesProvincia.AsString;
                t.ParamByName('CODPOSTAL').AsString := ClientesCodPostal.AsString;
                t.ParamByName('TELEFONOS').AsString := ClientesTelefonos.AsString;
                t.ParamByName('TELFAX').AsString := ClientesTelFax.AsString;
                t.ParamByName('TIPOIVA').AsInteger := ClientesTipoIva.AsInteger;
                t.ParamByName('TIPODOC').AsInteger := ClientesTipoDoc.AsInteger;
                t.ParamByName('DOCUMENTO').AsString := ClientesDocumento.AsString;
                t.ParamByName('INGBRUTOS').AsString := ClientesIngBrutos.AsString;
                t.ParamByName('FECHANAC').Clear;
                t.ParamByName('ESTADOCIVIL').AsInteger := 0;
                t.ParamByName('NCONYUGE').AsString := Vacio;
                t.ParamByName('EMPLEADOR').AsString := Vacio;
                t.ParamByName('DOMICILIOE').AsString := Vacio;
                t.ParamByName('ANTIGUEDADE').AsInteger := 0;
                t.ParamByName('INGRESOSE').AsCurrency := 0;
                t.ParamByName('CARGO').AsString := Vacio;
                t.ParamByName('NROJUBILADO').AsString := Vacio;
                t.ParamByName('RAMO').AsString := Vacio;
                t.ParamByName('DOMICILIOP').AsString := Vacio;
                t.ParamByName('ANTIGUEDADP').AsString := Vacio;
                t.ParamByName('INGRESOSP').AsCurrency := 0;
                t.ParamByName('TIPOPROP').AsString := Vacio;
                t.ParamByName('UBICPROP').AsString := Vacio;
                t.ParamByName('REFERENCIAS').AsString := Vacio;
                t.ParamByName('TIPOCLI').AsInteger := 0;
                t.ParamByName('NOMGARANTE1').AsString := Vacio;
                t.ParamByName('DOCGARANTE1').AsString := Vacio;
                t.ParamByName('NOMGARANTE2').AsString := Vacio;
                t.ParamByName('DOCGARANTE2').AsString := Vacio;
                t.ParamByName('CODBUSCLI').AsString := ClientesIdCliente.AsString;
                try
                  t.ExecSQL;
                except
                  on E:Exception do
                  begin
                    mmPorDonde.Lines.Add('Clientes '+E.Message);
                  end
                end;
                t.Close;
              finally
                t.Free;
              end;
            end;
          end;
          Clientes.Close;
          q.ParamByName('CLIENTE').AsInteger := EstaCli;
          q.ParamByName('TIPOIVA').AsInteger := FacVenTipoIva.AsInteger;
          q.ParamByName('CANTARTIC').AsInteger := FacVenCantArtic.AsInteger;
          q.ParamByName('BONIFICACION').AsCurrency := FacVenBonificacion.AsCurrency;
          q.ParamByName('NETO').AsCurrency := FacVenNeto.AsCurrency;
          q.ParamByName('EXENTO').AsCurrency := FacVenExento.AsCurrency;
          q.ParamByName('NOCOMPUTABLES').AsCurrency := FacVenNoComputables.AsCurrency;
          q.ParamByName('IVAALICUOTA1').AsCurrency := FacVenIvaAlicuota1.AsCurrency;
          q.ParamByName('IVAALICUOTA2').AsCurrency := 0;
          q.ParamByName('TOTAL').AsCurrency := FacVenTotal.AsCurrency;
          q.ParamByName('SITUACION').AsInteger := FacVenSituacion.AsInteger;
          q.ParamByName('ENTCONTADO').AsCurrency := FacVenEntContado.AsCurrency;
          q.ParamByName('CONTADO').AsCurrency := FacVenContado.AsCurrency;
          q.ParamByName('TARJETA').AsCurrency := FacVenTarjeta.AsCurrency;
          q.ParamByName('IDTARJETA').AsInteger := FacVenIdTarjeta.AsInteger;
          q.ParamByName('CTACTE').AsCurrency := FacVenCtaCte.AsCurrency;
          q.ParamByName('NROCTAS').AsInteger := FacVenNroCtas.AsInteger;
          q.ParamByName('CHEQUE').AsCurrency := FacVenCheque.AsCurrency;
          q.ParamByName('TICKETS').AsCurrency := FacVenTickets.AsCurrency;
          q.ParamByName('OTROSPAGOS').AsCurrency := FacVenOtrosPagos.AsCurrency;
          q.ParamByName('EMPLEADO').AsInteger := FacVenEmpleado.AsInteger;
          q.ParamByName('IMPRESA').AsInteger := FacVenImpresa.AsInteger;
          q.ParamByName('FECHAIS').AsDate := FacVenFechaIS.AsDateTime;
          q.ParamByName('IDMOTNC').AsInteger := FacVenIdMotNc.AsInteger;
          q.ParamByName('USUARIO').AsInteger := FacVenUsuario.AsInteger;
          q.ParamByName('DIR_ENTREGA').AsString := '';
          q.ParamByName('SENAS').AsCurrency := 0;
          q.ParamByName('COBSENAS').AsCurrency := 0;
          q.ParamByName('STATE').AsInteger := 0;
          try
            q.ExecSQL;
          except
            on E:Exception do
            begin
              mmPorDonde.Lines.Add('FacVen '+E.Message);
            end
          end;
          q.Close;
        finally
          q.Free;
        end;

        //********************************** ITEMS ****************************
        ItemsFV.Filter := 'IdFactura = '+FacVenIdFactura.AsString + ' And '+
                          'IdSucursal = '+ FacVenIdSucursal.AsString + ' And '+
                          'IdPuntoVenta = '+ FacVenIdPuntoVenta.AsString;
        ItemsFV.Filtered := True;
        ItemsFV.Open;
        ItemsFV.First;
        While not ItemsFV.Eof do
        begin
          try
            q := TMDOQuery.Create(nil);
            q.Database := dbConversion;
            q.Transaction := trConversion;
            q.SQL.Add('INSERT INTO ITEMSFV ');
            q.SQL.Add('  (IDFACTURA, IDSUCURSAL, IDPUNTOVENTA, IDITEM, IDARTICULO, TALLE, IDSUBDEP, ');
            q.SQL.Add('   FECHAF, CANTIDAD, NROCTAS, PRCBONIFICACION, DESCUENTO, PRECIOCOSTO, ');
            q.SQL.Add('   PRECIONETO, PRECIOFINAL, PRECIOTOTAL, VALORLISTA, EXENTO, IMPINT, IVAIN, ');
            q.SQL.Add('   IDALCIVA, ALICUOTAIVA, IDALCIB, ALCIB, INGBTO, OFERTA, SUBDET, STATE, ');
            q.SQL.Add('   DCTOSTK, ENTCONTADO) ');
            q.SQL.Add('VALUES ');
            q.SQL.Add('  (:IDFACTURA, :IDSUCURSAL, :IDPUNTOVENTA, :IDITEM, :IDARTICULO, :TALLE, ');
            q.SQL.Add('   :IDSUBDEP, :FECHAF, :CANTIDAD, :NROCTAS, :PRCBONIFICACION, :DESCUENTO, ');
            q.SQL.Add('   :PRECIOCOSTO, :PRECIONETO, :PRECIOFINAL, :PRECIOTOTAL, :VALORLISTA, ');
            q.SQL.Add('   :EXENTO, :IMPINT, :IVAIN, :IDALCIVA, :ALICUOTAIVA, :IDALCIB, :ALCIB, ');
            q.SQL.Add('   :INGBTO, :OFERTA, :SUBDET, :STATE, :DCTOSTK, :ENTCONTADO) ');
            q.ParamByName('IDFACTURA').AsInteger := ItemsFVIdFactura.AsInteger;
            q.ParamByName('IDSUCURSAL').AsInteger := ItemsFVIdSucursal.AsInteger;
            q.ParamByName('IDPUNTOVENTA').AsInteger := ItemsFVIdPuntoVenta.AsInteger;
            q.ParamByName('IDITEM').AsInteger := ItemsFVIdItem.AsInteger;
            q.ParamByName('IDARTICULO').AsInteger := ItemsFVIdArticulo.AsInteger;
            q.ParamByName('TALLE').AsInteger := ItemsFVTalle.AsInteger;
            q.ParamByName('IDSUBDEP').AsInteger := ItemsFVIdSubDep.AsInteger;
            q.ParamByName('FECHAF').AsDate := ItemsFVFechaF.AsDateTime;
            q.ParamByName('CANTIDAD').AsFloat := ItemsFVCantidad.AsFloat;
            q.ParamByName('NROCTAS').AsInteger := ItemsFVNroCtas.AsInteger;
            q.ParamByName('PRCBONIFICACION').AsFloat := ItemsFVPrcBonificacion.AsFloat;
            q.ParamByName('DESCUENTO').AsCurrency := ItemsFVDescuento.AsCurrency;
            q.ParamByName('PRECIOCOSTO').AsCurrency := ItemsFVPrecioCosto.AsCurrency;
            q.ParamByName('PRECIONETO').AsCurrency := ItemsFVPrecioNeto.AsCurrency;
            q.ParamByName('PRECIOFINAL').AsCurrency := ItemsFVPrecioFinal.AsCurrency;
            q.ParamByName('PRECIOTOTAL').AsCurrency := ItemsFVPrecioTotal.AsCurrency;
            q.ParamByName('VALORLISTA').AsCurrency := ItemsFVValorLista.AsCurrency;
            q.ParamByName('EXENTO').AsCurrency := ItemsFVExento.AsCurrency;
            q.ParamByName('IMPINT').AsCurrency := ItemsFVImpInt.AsCurrency;
            q.ParamByName('IVAIN').AsCurrency := ItemsFVIvaIn.AsCurrency;
            q.ParamByName('IDALCIVA').AsInteger := ItemsFVIdAlcIva.AsInteger;
            q.ParamByName('ALICUOTAIVA').AsFloat := ItemsFVAlicuotaIva.AsFloat;
            q.ParamByName('IDALCIB').AsInteger := ItemsFVIdAlcIB.AsInteger;
            q.ParamByName('ALCIB').AsFloat := ItemsFVAlcIB.AsFloat;
            q.ParamByName('INGBTO').AsCurrency := ItemsFVIngBto.AsCurrency;
            q.ParamByName('OFERTA').AsInteger := ItemsFVOferta.AsInteger;
            q.ParamByName('SUBDET').AsString := ItemsFVSubDet.AsString;
            q.ParamByName('STATE').AsInteger := 0;
            q.ParamByName('DCTOSTK').AsInteger := Verdadero;
            q.ParamByName('ENTCONTADO').AsCurrency := ItemsFVEntContado.AsCurrency;
            try
              q.ExecSQL;
            except
              on E:Exception do
              begin
                mmPorDonde.Lines.Add('Items FV '+E.Message);
              end
            end;
            q.Close;
          finally
            q.Free;
          end;
          ItemsFV.Next;
        end;
        ItemsFV.Close;
        //********************************** ITEMS ****************************
        Inc(CantTran);
      end;
      FacVen.Next;
    end;
    FacVen.Close;
    if trConversion.InTransaction then
    begin
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Fin Grabación FV ');
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('FV '+E.Message);
          raise;
        end
      end;
    end;
  end;
  mmPorDonde.Lines.Add('Finalizado Ventas, Items y Clientes '+TimeToStr(Time));
  DBIsam_ConnectDB(2);
end;

procedure TfrmConversion.DBIsam_Pasa_MovTar;
var
  q, t: TMDOQuery;
  Save_Tot, CantTran, i, Esta: Integer;
  Vencimiento: TDate;
begin
  DBIsam_ConnectDB(1);
  mmPorDonde.Lines.Add('Tarjetas: Movimientos ');
  Application.ProcessMessages;
  MovTar.Open;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('Select Max(IdMov) as Ultima ');
    q.SQL.Add('From MovTar ');
    q.Open;
    if not q.IsEmpty then
    begin
      if not (MovTar.Locate(MovTarIdMov.FieldName,
              q.FieldByName('Ultima').AsInteger, [])) then
      begin
        MovTar.First;
      end;
      q.Close;
    end
    else begin
      MovTar.First;
    end;
  finally
    q.Free;
  end;
  CantTran := 1;
  Save_Tot := 0;
  While not MovTar.Eof do
  begin
    Esta := 0;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Select Count(IdMov) as Esta ');
      q.SQL.Add('From MOVTAR ');
      q.SQL.Add('Where IdMov =:IdMov and ');
      q.SQL.Add('      IdTarjeta =:IdTarjeta And ');
      q.SQL.Add('      IdFactura =:IdFactura And ');
      q.SQL.Add('      IdCliente =:IdCliente ');
      q.ParamByName('IDMOV').AsInteger := MovTarIdMov.AsInteger;
      q.ParamByName('IDTARJETA').AsInteger := MovTarIdTarjeta.AsInteger;
      q.ParamByName('IDFACTURA').AsInteger := MovTarIdFactura.AsInteger;
      q.ParamByName('IDCLIENTE').AsInteger := MovTarIdCliente.AsInteger;
      q.Open;
      Esta := q.FieldByName('Esta').AsInteger;
      q.Close;
    finally
      q.Free;
    end;
    if Esta = 0 then
    begin
      if CantTran >= 100 then
      begin
        Save_Tot := Save_Tot + CantTran;
        try
          trConversion.Commit;
          mmPorDonde.Lines.Add('Grabación MovTar '+ IntToStr(Save_Tot));
        except
          on E:Exception do
          begin
            trConversion.Rollback;
            mmPorDonde.Lines.Add('MovTar '+E.Message);
          end
        end;
        CantTran := 1;
      end;
      if CantTran = 1 then
      begin
        if not trConversion.InTransaction then
          trConversion.StartTransaction;
      end;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('INSERT INTO MOVTAR ');
        q.SQL.Add('  (IDMOV, IDTARJETA, IDFACTURA, IDCLIENTE, CUPON, LOTE, FECHAOP, CODTAR, ');
        q.SQL.Add('   NROCUOTA, IMPCUOTA, TOTALOP, AUTORIZACION, ESTADO, FECHARESUMEN, FECHAIS, ');
        q.SQL.Add('   CUOTAPAG, NROLIQUIDACION, VENCUOTA, NRORECPAGO, INTMORA, CANTCUOTAS, ');
        q.SQL.Add('   IDCREDITO, INTCUOTA, NRONOTADEBITO, STATE, IDSUCURSAL, ULTIMOPAGO) ');
        q.SQL.Add('VALUES ');
        q.SQL.Add('  (:IDMOV, :IDTARJETA, :IDFACTURA, :IDCLIENTE, :CUPON, :LOTE, :FECHAOP, ');
        q.SQL.Add('   :CODTAR, :NROCUOTA, :IMPCUOTA, :TOTALOP, :AUTORIZACION, :ESTADO, :FECHARESUMEN, ');
        q.SQL.Add('   :FECHAIS, :CUOTAPAG, :NROLIQUIDACION, :VENCUOTA, :NRORECPAGO, :INTMORA, ');
        q.SQL.Add('   :CANTCUOTAS, :IDCREDITO, :INTCUOTA, :NRONOTADEBITO, :STATE, :IDSUCURSAL, :ULTIMOPAGO) ');
        q.ParamByName('IDMOV').AsInteger := MovTarIdMov.AsInteger;
        q.ParamByName('IDTARJETA').AsInteger := MovTarIdTarjeta.AsInteger;
        q.ParamByName('IDFACTURA').AsInteger := MovTarIdFactura.AsInteger;
        q.ParamByName('IDCLIENTE').AsInteger := MovTarIdCliente.AsInteger;
        q.ParamByName('CUPON').AsString := MovTarCupon.AsString;
        q.ParamByName('LOTE').AsString := MovTarLote.AsString;
        q.ParamByName('FECHAOP').AsDate := MovTarFechaOp.AsDateTime;
        q.ParamByName('CODTAR').AsString := MovTarCodTar.AsString;
        q.ParamByName('NROCUOTA').AsInteger := MovTarNroCuota.AsInteger;
        q.ParamByName('IMPCUOTA').AsCurrency := MovTarImpCuota.AsCurrency;
        q.ParamByName('TOTALOP').AsCurrency := MovTarTotalOP.AsCurrency;
        q.ParamByName('AUTORIZACION').AsString := MovTarAutorizacion.AsString;
        q.ParamByName('ESTADO').AsInteger := MovTarEstado.AsInteger;
        q.ParamByName('FECHARESUMEN').AsDate := MovTarFechaResumen.AsDateTime;
        q.ParamByName('FECHAIS').AsDate := MovTarFechaIS.AsDateTime;
        q.ParamByName('CUOTAPAG').AsInteger := MovTarCuotaPag.AsInteger;
        q.ParamByName('NROLIQUIDACION').AsString := MovTarNroLiquidacion.AsString;
        q.ParamByName('VENCUOTA').Clear;
        q.ParamByName('NRORECPAGO').AsString := '0000-00000000';
        q.ParamByName('INTMORA').AsFloat := 0;
        q.ParamByName('CANTCUOTAS').AsInteger := 0;
        q.ParamByName('IDCREDITO').AsInteger := 0;
        q.ParamByName('INTCUOTA').AsInteger := 0;
        q.ParamByName('NRONOTADEBITO').AsString := '0000-00000000';
        q.ParamByName('STATE').AsInteger := 0;
        q.ParamByName('IDSUCURSAL').AsInteger := MovTarIdSucursal.AsInteger;
        q.ParamByName('ULTIMOPAGO').Clear;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('MovTar '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;

      if MovTarIdTarjeta.AsInteger in [1,6,9,19,25,27,28,29,30,32] then
      begin
        Vencimiento := MovTarFechaOP.AsDateTime;
        for i:= 1 to MovTarNroCuota.AsInteger do
        begin
          try
            q := TMDOQuery.Create(nil);
            q.Database := dbConversion;
            q.Transaction := trConversion;
            q.SQL.Add('INSERT INTO MOVCUOTAS ');
            q.SQL.Add('  (IDMOVCRED, NROCUOTA, IDFACTURA, IDSUCURSAL, FECHAV, ');
            q.SQL.Add('   MONTOCUOTA, NRORECPAGO, FECHAP, MONTODEBITO, NRONOTADEB, ');
            q.SQL.Add('   IDRECIBO, IDSUCREC, IDCLIENTE, ESTADO, FECHAIS) ');
            q.SQL.Add('VALUES ');
            q.SQL.Add('  (:IDMOVCRED, :NROCUOTA, :IDFACTURA, :IDSUCURSAL, :FECHAV, ');
            q.SQL.Add('   :MONTOCUOTA, :NRORECPAGO, :FECHAP, :MONTODEBITO, :NRONOTADEB, ');
            q.SQL.Add('   :IDRECIBO, :IDSUCREC, :IDCLIENTE, :ESTADO, :FECHAIS) ');
            q.ParamByName('IDMOVCRED').AsInteger := MovTarIdMov.AsInteger;
            q.ParamByName('NROCUOTA').AsInteger := i;
            q.ParamByName('IDFACTURA').AsInteger := MovTarIdFactura.AsInteger;
            q.ParamByName('IDSUCURSAL').AsInteger := MovTarIdSucursal.AsInteger;
            q.ParamByName('FECHAV').AsDate := Vencimiento;
            q.ParamByName('MONTOCUOTA').AsCurrency := MovTarImpCuota.AsCurrency;
            q.ParamByName('NRORECPAGO').AsString := '0000-00000000';
            q.ParamByName('FECHAP').Clear;
            q.ParamByName('MONTODEBITO').AsCurrency := 0;
            q.ParamByName('NRONOTADEB').AsString := '0000-00000000';
            q.ParamByName('IDRECIBO').AsInteger := 0;
            q.ParamByName('IDSUCREC').AsInteger := 0;
            q.ParamByName('IDCLIENTE').AsInteger := MovTarIdCliente.AsInteger;
            q.ParamByName('ESTADO').AsInteger := 0;
            q.ParamByName('FECHAIS').AsDate := MovTarFechaIS.AsDateTime;
            try
              q.ExecSQL;
            except
              on E:Exception do
              begin
                mmPorDonde.Lines.Add('Mov Cuotas '+E.Message);
              end
            end;
            q.Close;
          finally
            q.Free;
          end;
          Vencimiento := IncMonth(Vencimiento);
        end;
      end;
      Inc(CantTran);
    end;
    MovTar.Next;
  end;
  MovTar.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación Tarjetas ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('Tarjetas '+E.Message);
        raise;
      end
    end;
  end;
  mmPorDonde.Lines.Add('Finalizado Tarjetas '+TimeToStr(Time));
  DBIsam_ConnectDB(2);
end;
  (*
  mmPorDonde.Lines.Add('Stocks: Stocks ');
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM STOCKART ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO Stock '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;

    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM STOCKARTTALLES ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO STOCK TALLES '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('BORRADO STOCK '+E.Message);
      trConversion.Rollback;
    end
  end;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('Select Max(IdFactura) as Ultima ');
    q.SQL.Add('From Traspaso ');
    q.SQL.Add('Where IdSucursal = :IdSucursal ');
    q.ParamByName('IdSucursal').AsInteger := IdBranch;
    q.Open;
    if not q.IsEmpty then
    begin
      if not (Traspaso.Locate('IdFactura;IdSucursal',
              varArrayOf([q.FieldByName('Ultima').AsInteger, IdBranch]), [])) then
      begin
        Traspaso.First;
      end;
      q.Close;
    end
    else begin
      Traspaso.First;
    end;
  finally
    q.Free;
  end;

  *)


procedure TfrmConversion.DBIsam_Pasa_Transferencias;
var
  q,t: TMDOQuery;
  CantTran, Save_Tot, Esta: Integer;
begin
  DBIsam_ConnectDB(1);
  mmPorDonde.Lines.Add('Stocks: Transferencias '+TimeToStr(Time));
  Application.ProcessMessages;
  Traspaso.Open;
  Traspaso.Last;
  CantTran := 1;
  Save_Tot := 0;
  While not Traspaso.Bof do
  begin
    Esta := 0;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Select Count(IdFactura) as Esta ');
      q.SQL.Add('From Traspaso ');
      q.SQL.Add('Where IdFactura =:IdFactura And ');
      q.SQL.Add('      IdSucursal =:IdSucursal And ');
      q.SQL.Add('      IdPuntoVenta =:IdPuntoVenta ');
      q.ParamByName('IdFactura').AsInteger := TraspasoIdFactura.AsInteger;
      q.ParamByName('IdSucursal').AsInteger := TraspasoIdSucursal.AsInteger;
      q.ParamByName('IdPuntoVenta').AsInteger := TraspasoIdPuntoVenta.AsInteger;
      q.Open;
      Esta := q.FieldByName('Esta').AsInteger;
      q.Close;
      mmPorDonde.Lines.Add(Format('IdF %d NTº %s ',[TraspasoIdFactura.AsInteger, TraspasoNroFactura.AsString]));
    finally
      q.Free;
    end;

    if Esta = 0 then
    begin
      if CantTran >= 10 then
      begin
        Save_Tot := Save_Tot + CantTran;
        try
          trConversion.Commit;
          mmPorDonde.Lines.Add('Grabación Tranferencias '+ IntToStr(Save_Tot));
        except
          on E:Exception do
          begin
            trConversion.Rollback;
            mmPorDonde.Lines.Add('Tranferencias '+E.Message);
          end
        end;
        CantTran := 1;
      end;

      if CantTran = 1 then
      begin
        if not trConversion.InTransaction then
          trConversion.StartTransaction;
      end;
      mmPorDonde.Lines.Add('Grabando '+ Format('IdF %d NTº %s ',[TraspasoIdFactura.AsInteger, TraspasoNroFactura.AsString]));

      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.Sql.Clear;
        q.SQL.Text := ST;
        q.ParamByName('IdFactura').AsInteger := TraspasoIdFactura.AsInteger;
        q.ParamByName('IdSucursal').AsInteger := TraspasoIdSucursal.AsInteger;
        q.ParamByName('IdPuntoVenta').AsInteger := TraspasoIdPuntoVenta.AsInteger;
        q.ParamByName('IdStOrigen').AsInteger := TraspasoIdStOrigen.AsInteger;
        q.ParamByName('IdStDestino').AsInteger := TraspasoIdStDestino.AsInteger;
        q.ParamByName('DiaHora').AsDateTime := TraspasoDiaHora.AsDateTime;
        q.ParamByName('FechaF').AsDate := TraspasoFechaF.AsDateTime;
        q.ParamByName('TipoFactura').AsInteger := TraspasoTipoFactura.AsInteger;
        q.ParamByName('NroRemSuc').AsString := TraspasoNroRemSuc.AsString;
        q.ParamByName('NroFactura').AsString := TraspasoNroFactura.AsString;
        q.ParamByName('CantArtic').AsInteger := TraspasoCantArtic.AsInteger;
        q.ParamByName('Total').AsCurrency := TraspasoTotal.AsCurrency;;
        q.ParamByName('Empleado').AsInteger := TraspasoEmpleado.AsInteger;
        q.ParamByName('Usuario').AsInteger := TraspasoUsuario.AsInteger;
        q.ParamByName('TipoAj').AsInteger := TraspasoTipoAj.AsInteger;
        q.ParamByName('Estado').AsInteger := 1;
        q.ParamByName('IdSubDepO').AsInteger := TraspasoIdSubDepO.AsInteger;
        q.ParamByName('IdSubDepD').AsInteger := TraspasoIdSubDepD.AsInteger;
        q.ParamByName('State').AsInteger := 0;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('Traspaso '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;
      //********************************** ITEMS ****************************
      ItemsTR.Filter := 'IdFactura = '+TraspasoIdFactura.AsString + ' And '+
                        'IdSucursal = '+ TraspasoIdSucursal.AsString;
      ItemsTR.Filtered := True;
      ItemsTR.Open;
      ItemsTR.First;
      While not ItemsTR.Eof do
      begin
        try
          q := TMDOQuery.Create(nil);
          q.Database := dbConversion;
          q.Transaction := trConversion;
          q.Sql.Clear;
          q.SQL.Text := IT;
          q.ParamByName('IdFactura').AsInteger := TraspasoIdFactura.AsInteger;
          q.ParamByName('IdSucursal').AsInteger := TraspasoIdSucursal.AsInteger;
          q.ParamByName('IdPuntoVenta').AsInteger := TraspasoIdPuntoVenta.AsInteger;
          q.ParamByName('IdItem').AsInteger := ItemsTRIdItem.AsInteger;
          q.ParamByName('IdArticulo').AsInteger := ItemsTRIdArticulo.AsInteger;
          q.ParamByName('Talle').AsInteger := ItemsTRTalle.AsInteger;
          q.ParamByName('FechaF').AsDate := ItemsTRFechaF.AsDateTime;
          q.ParamByName('Cantidad').AsFloat := ItemsTRCantidad.AsFloat;
          q.ParamByName('TMov').AsInteger := ItemsTRTMov.AsInteger;
          q.ParamByName('TipoAj').AsInteger := ItemsTRTipoAj.AsInteger;
          q.ParamByName('PrecioFinal').AsCurrency := ItemsTRPrecioFinal.AsCurrency;
          q.ParamByName('PrecioTotal').AsCurrency := ItemsTRPrecioTotal.AsCurrency;
          q.ParamByName('IdSucursalO').AsInteger := ItemsTRIdSucursalO.AsInteger;
          q.ParamByName('IdSucursalD').AsInteger := ItemsTRIdSucursalD.AsInteger;
          q.ParamByName('Detalle1').AsString := Vacio;
          q.ParamByName('Detalle2').AsString := Vacio;
          q.ParamByName('Detalle3').AsString := Vacio;
          q.ParamByName('Detalle4').AsString := Vacio;
          q.ParamByName('State').AsInteger := 0;
          try
            q.ExecSQL;
          except
            on E:Exception do
            begin
              mmPorDonde.Lines.Add('ItemsTR '+E.Message);
            end
          end;
          q.Close;
        finally
          q.Free;
        end;
        ItemsTR.Next;
      end;

      ItemsTR.Close;
      Inc(CantTran);
    end;
    Traspaso.Prior;
  end;

  Traspaso.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
    except
      on E:Exception do
      begin
        mmPorDonde.Lines.Add('Traspaso '+E.Message);
        trConversion.Rollback;
      end
    end;
  end;
  mmPorDonde.Lines.Add('Finalizado Transferencias y Stocks ');
  DBIsam_ConnectDB(2);
end;

procedure TfrmConversion.DBIsam_Pasa_Inventarios;
var
  q, t: TMDOQuery;
  CantTran, Save_Tot, Esta: Integer;
begin
  DBIsam_ConnectDB(1);
  mmPorDonde.Lines.Add('Stocks: Inventarios '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM INVENTARIO ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO INVENTARIOS '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('BORRADO INVENTARIOS '+E.Message);
      trConversion.Rollback;
    end
  end;

  mmPorDonde.Lines.Add('Stocks: Inventarios Items '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM ITEMSIN ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO IT INV '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('BORRADO IT INV '+E.Message);
      trConversion.Rollback;
    end
  end;

  Inventario.Open;
  Inventario.First;
  CantTran := 1;
  Save_Tot := 0;
  While not Inventario.Eof do
  begin
    if CantTran >= 5 then
    begin
      Save_Tot := Save_Tot + CantTran;
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Grabación Inventarios '+ IntToStr(Save_Tot));
        Application.ProcessMessages;
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add(' Iventario '+E.Message);
        end
      end;
      CantTran := 1;
    end;

    if CantTran = 1 then
    begin
      if not trConversion.InTransaction then
        trConversion.StartTransaction;
    end;

    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.Sql.Clear;
      q.SQL.Text := SI;
      q.ParamByName('IdFactura').AsInteger := InventarioIdFactura.AsInteger;
      q.ParamByName('IdSucursal').AsInteger := InventarioIdSucursal.AsInteger;
      q.ParamByName('IdStock').AsInteger := InventarioIdStock.AsInteger;
      q.ParamByName('DiaHora').AsDateTime := InventarioDiaHora.AsDateTime;
      q.ParamByName('FechaI').AsDate := InventarioFechaI.AsDateTime;
      q.ParamByName('NroFact').AsString := InventarioNroFact.AsString;
      q.ParamByName('CantArt').AsInteger := InventarioCantArt.AsInteger;
      q.ParamByName('Periodo').AsInteger := InventarioPeriodo.AsInteger;
      q.ParamByName('TNeto').AsCurrency := InventarioTNeto.AsCurrency;
      q.ParamByName('TFac').AsInteger := InventarioTFac.AsInteger;
      q.ParamByName('TNoComp').AsCurrency := InventarioTNoComp.AsCurrency;
      q.ParamByName('TCosto').AsCurrency := InventarioTCosto.AsCurrency;
      q.ParamByName('Total').AsCurrency := InventarioTotal.AsCurrency;
      q.ParamByName('Empleado').AsInteger := InventarioEmpleado.AsInteger;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Inventario '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;

    //********************************** ITEMS ****************************
    ItemsIN.Filter := 'IdFactura = '+InventarioIdFactura.AsString + ' And '+
                      'IdSucursal = '+ InventarioIdSucursal.AsString + ' And '+
                      'IdStock = '+ InventarioIdStock.AsString;
    ItemsIN.Filtered := True;
    ItemsIN.Open;
    ItemsIN.First;
    While not ItemsIN.Eof do
    begin
      try
        t := TMDOQuery.Create(nil);
        t.Database := dbConversion;
        t.Transaction := trConversion;
        t.Sql.Clear;
        t.SQL.Text := II;
        t.ParamByName('IdFactura').AsInteger := ItemsINIdFactura.AsInteger;
        t.ParamByName('IdSucursal').AsInteger := ItemsINIdSucursal.AsInteger;
        t.ParamByName('IdStock').AsInteger := ItemsINIdStock.AsInteger;
        t.ParamByName('IdItem').AsInteger := ItemsINIdItem.AsInteger;
        t.ParamByName('Periodo').AsInteger := ItemsINPeriodo.AsInteger;
        t.ParamByName('IdArticulo').AsInteger := ItemsINIdArticulo.AsInteger;
        t.ParamByName('Talle').AsInteger := ItemsINTalle.AsInteger;
        t.ParamByName('FechaI').AsDateTime := ItemsINFechaI.AsDateTime;
        t.ParamByName('Cantidad').AsFloat := ItemsINCantidad.AsFloat;
        t.ParamByName('IPrecio').AsCurrency := ItemsINIPrecio.AsCurrency;
        t.ParamByName('ITotal').AsCurrency := ItemsINITotal.AsCurrency;
        t.ParamByName('Costo').AsCurrency := ItemsINCosto.AsCurrency;
        t.ParamByName('INeto').AsCurrency := ItemsININeto.AsCurrency;
        t.ParamByName('INoComp').AsCurrency := ItemsININoComp.AsCurrency;
        t.ParamByName('TFac').AsInteger := ItemsINTFac.AsInteger;
        try
          t.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('Items Inventario '+E.Message);
          end
        end;
        t.Close;
      finally
        t.Free;
      end;
      ItemsIN.Next;
    end;
    ItemsIN.Filtered := False;
    ItemsIN.Close;
    Inc(CantTran);
    Inventario.Next;
  end;

  Inventario.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
    except
      on E:Exception do
      begin
        mmPorDonde.Lines.Add('Inventarios '+E.Message);
        trConversion.Rollback;
      end
    end;
  end;
  DBIsam_ConnectDB(2);
end;

function TfrmConversion.DBIsam_Actualizador(IdB: Integer; PasoDBI: String): String;
var
  q, t, r: TMDOQuery;
  Esta, EstaCli, CantTran, Save_Tot, i, u: Integer;
  Vencimiento: TDate;
  Resultado: String;
begin
  try
    Result := Vacio;
    Resultado := Vacio;
    if Trim(PasoDBI) > Vacio then
    begin
      try
        sInsolito.Active := False;
        sInsolito.PrivateDir := PasoExe;
        sInsolito.RemoteAddress := '127.0.0.1';
        sInsolito.Active := True;
      except
        ShowMessage('Datos remotos. Sin sesión a la Base de Transferencia');
        Application.Terminate;
      end;
      try
        dbInsolito.Connected := False;
        dbInsolito.Directory := PasoDBI;
        dbInsolito.Connected := True;
      except
        ShowMessage('Datos Insolito. Sin conección a la Base de Transferencia');
        Application.Terminate;
      end;
    end
    else
      raise EUsuario.Create('Paso mal configurado');

    FacVen.Close;
    FacVen.Filter := 'IdSucursal = '+IntToStr(IdB);
    FacVen.Filtered := True;
    FacVen.Open;
    if not FacVen.IsEmpty then
    begin
      try
        u := 0;
        Esta := 0;
        try
          q := TMDOQuery.Create(nil);
          q.Database := dbConversion;
          q.Transaction := trConversion;
          q.SQL.Add('Select Count(IdFactura) As Esta ');
          q.SQL.Add('From FacVen ');
          q.SQL.Add('Where IdSucursal = :S');
          q.ParamByName('S').AsInteger := IdB;
          q.Open;
          Esta := q.FieldByName('Esta').AsInteger;
          q.Close;
        finally
          q.Free;
        end;
        Resultado := DateTimeToStr(Now)+' FA: '+IntToStr(Esta);
        try
          q := TMDOQuery.Create(nil);
          q.Database := dbConversion;
          q.Transaction := trConversion;
          q.SQL.Add('Select Max(IdFactura) as Ultima ');
          q.SQL.Add('From FacVen ');
          q.SQL.Add('Where (TipoFactura in (1,2,3,4,5,6,7,8,9,42)) And ');
          q.SQL.Add('      (IdSucursal = :S) ');
          q.ParamByName('S').AsInteger := IdB;
          q.Open;
          u := q.FieldByName('Ultima').AsInteger;
          if u > 0 then
          begin
            if (not FacVen.Locate('IdFactura;IdSucursal', VarArrayOf([u, IdB]), [])) then
            begin
              FacVen.First;
            end;
            q.Close;
          end
          else begin
            FacVen.First;
          end;
        finally
          q.Free;
        end;
      except
        FacVen.First;
      end;

      CantTran := 1;
      Save_Tot := 0;
      While not FacVen.Eof do
      begin
        Esta := 0;
        try
          q := TMDOQuery.Create(nil);
          q.Database := dbConversion;
          q.Transaction := trConversion;
          q.SQL.Add('Select Count(IdFactura) As Esta ');
          q.SQL.Add('From FacVen ');
          q.SQL.Add('Where IdFactura =:IdFactura And ');
          q.SQL.Add('      IdSucursal =:IdSucursal And ');
          q.SQL.Add('      IdPuntoVenta =:IdPuntoVenta And ');
          q.SQL.Add('      NroFactura =:NroFactura ');
          q.ParamByName('IdFactura').AsInteger := FacVenIdFactura.AsInteger;
          q.ParamByName('IdSucursal').AsInteger := IdB;
          q.ParamByName('IdPuntoVenta').AsInteger := FacVenIdPuntoVenta.AsInteger;
          q.ParamByName('NroFactura').AsString := FacVenNroFactura.AsString;
          q.Open;
          Esta := q.FieldByName('Esta').AsInteger;
          q.Close;
        finally
          q.Free;
        end;

        if Esta = 0 then
        begin
          if CantTran = 1 then
          begin
            if not trConversion.InTransaction then
              trConversion.StartTransaction;
          end;
            try
            q := TMDOQuery.Create(nil);
            q.Database := dbConversion;
            q.Transaction := trConversion;
            q.SQL.Add('INSERT INTO FACVEN ');
            q.SQL.Add('  (IDFACTURA, IDSUCURSAL, IDPUNTOVENTA, TIPOFACTURA, SECTOR, ');
            q.SQL.Add('   IDSUBDEP, DIAHORA, FECHAF, FECHAI, PUNTOVTA, NROFACTURA, ');
            q.SQL.Add('   IDCOMPREF, COMPREF, CLIENTE, TIPOIVA, CANTARTIC, BONIFICACION, ');
            q.SQL.Add('   NETO, EXENTO, NOCOMPUTABLES, IVAALICUOTA1, IVAALICUOTA2, TOTAL,  ');
            q.SQL.Add('   SITUACION, ENTCONTADO, CONTADO, TARJETA, IDTARJETA,CTACTE, ');
            q.SQL.Add('   NROCTAS, CHEQUE, TICKETS, OTROSPAGOS, EMPLEADO, IMPRESA, FECHAIS, ');
            q.SQL.Add('   IDMOTNC, USUARIO, DIR_ENTREGA, SENAS, COBSENAS, STATE) ');
            q.SQL.Add('VALUES ');
            q.SQL.Add('  (:IDFACTURA, :IDSUCURSAL, :IDPUNTOVENTA, :TIPOFACTURA, :SECTOR, ');
            q.SQL.Add('   :IDSUBDEP, :DIAHORA, :FECHAF, :FECHAI, :PUNTOVTA, :NROFACTURA, ');
            q.SQL.Add('   :IDCOMPREF, :COMPREF, :CLIENTE, :TIPOIVA, :CANTARTIC, :BONIFICACION, ');
            q.SQL.Add('   :NETO, :EXENTO, :NOCOMPUTABLES, :IVAALICUOTA1, :IVAALICUOTA2, :TOTAL,  ');
            q.SQL.Add('   :SITUACION, :ENTCONTADO, :CONTADO, :TARJETA, :IDTARJETA, :CTACTE, ');
            q.SQL.Add('   :NROCTAS, :CHEQUE, :TICKETS, :OTROSPAGOS, :EMPLEADO, :IMPRESA, :FECHAIS, ');
            q.SQL.Add('   :IDMOTNC, :USUARIO, :DIR_ENTREGA, :SENAS,:COBSENAS, :STATE) ');
            q.ParamByName('IDFACTURA').AsInteger := FacVenIdFactura.AsInteger;
            q.ParamByName('IDSUCURSAL').AsInteger := FacVenIdSucursal.AsInteger;
            q.ParamByName('IDPUNTOVENTA').AsInteger := FacVenIdPuntoVenta.AsInteger;
            q.ParamByName('TIPOFACTURA').AsInteger := FacVenTipoFactura.AsInteger;
            q.ParamByName('SECTOR').AsInteger := FacVenSector.AsInteger;
            q.ParamByName('IDSUBDEP').AsInteger := FacVenIdSubDep.AsInteger;
            q.ParamByName('DIAHORA').AsDateTime := FacVenDiaHora.AsDateTime;
            q.ParamByName('FECHAF').AsDate := FacVenFechaF.AsDateTime;
            q.ParamByName('FECHAI').AsDate := FacVenFechaI.AsDateTime;
            q.ParamByName('PUNTOVTA').AsInteger := FacVenPuntoVta.AsInteger;
            q.ParamByName('NROFACTURA').AsString := FacVenNroFactura.AsString;
            q.ParamByName('IDCOMPREF').AsInteger := FacVenIdCompRef.AsInteger;
            q.ParamByName('COMPREF').AsString := FacVenCompRef.AsString;

            Clientes.Open;
            if Clientes.Locate(ClientesIdCliente.FieldName, FacVenCliente.AsInteger, []) then
            begin
              EstaCli := 0;
              try
                r := TMDOQuery.Create(nil);
                r.Database := dbConversion;
                r.Transaction := trConversion;
                r.SQL.Add('SELECT COUNT(IDCLIENTE) AS CANTCLI ');
                r.SQL.Add('FROM CLIENTES ');
                r.SQL.Add('WHERE IDCLIENTE = :I AND IDSUCURSAL = :S ');
                r.ParamByName('I').AsInteger := ClientesIdCliente.AsInteger;
                r.ParamByName('S').AsInteger := FacVenIdSucursal.AsInteger;
                r.Open;
                EstaCli := r.FieldByName('CANTCLI').AsInteger;
                r.Close;
              finally
                r.Free;
              end;

              if EstaCli = 0 then
              begin
                EstaCli := ClientesIdCliente.AsInteger;
                try
                  t := TMDOQuery.Create(nil);
                  t.Database := dbConversion;
                  t.Transaction := trConversion;
                  t.SQL.Add('INSERT INTO CLIENTES ');
                  t.SQL.Add('  (IDCLIENTE, IDSUCURSAL,  NOMBRE, DIRECCION, ');
                  t.SQL.Add('   LOCALIDAD, PROVINCIA, CODPOSTAL, TELEFONOS, TELFAX, ');
                  t.SQL.Add('   TIPOIVA, TIPODOC, DOCUMENTO, INGBRUTOS, FECHANAC, ');
                  t.SQL.Add('   ESTADOCIVIL, NCONYUGE, EMPLEADOR, DOMICILIOE, ');
                  t.SQL.Add('   ANTIGUEDADE, INGRESOSE, CARGO, NROJUBILADO, RAMO, ');
                  t.SQL.Add('   DOMICILIOP, ANTIGUEDADP, INGRESOSP, TIPOPROP, ');
                  t.SQL.Add('   UBICPROP, REFERENCIAS, TIPOCLI, NOMGARANTE1, ');
                  t.SQL.Add('   DOCGARANTE1, NOMGARANTE2, DOCGARANTE2, CODBUSCLI) ');
                  t.SQL.Add('VALUES ');
                  t.SQL.Add('  (:IDCLIENTE, :IDSUCURSAL, :NOMBRE, :DIRECCION, ');
                  t.SQL.Add('   :LOCALIDAD, :PROVINCIA, :CODPOSTAL, :TELEFONOS, :TELFAX, ');
                  t.SQL.Add('   :TIPOIVA, :TIPODOC, :DOCUMENTO, :INGBRUTOS, :FECHANAC, ');
                  t.SQL.Add('   :ESTADOCIVIL, :NCONYUGE, :EMPLEADOR,  :DOMICILIOE, ');
                  t.SQL.Add('   :ANTIGUEDADE, :INGRESOSE, :CARGO, :NROJUBILADO, :RAMO, ');
                  t.SQL.Add('   :DOMICILIOP, :ANTIGUEDADP, :INGRESOSP, :TIPOPROP, ');
                  t.SQL.Add('   :UBICPROP, :REFERENCIAS, :TIPOCLI, :NOMGARANTE1, ');
                  t.SQL.Add('   :DOCGARANTE1, :NOMGARANTE2, :DOCGARANTE2, :CODBUSCLI) ');
                  t.ParamByName('IDCLIENTE').AsInteger := ClientesIdCliente.AsInteger;
                  t.ParamByName('IDSUCURSAL').AsInteger := IdB;
                  t.ParamByName('NOMBRE').AsString := ClientesNombre.AsString;
                  t.ParamByName('DIRECCION').AsString := ClientesDireccion.AsString;
                  t.ParamByName('LOCALIDAD').AsString := ClientesLocalidad.AsString;
                  t.ParamByName('PROVINCIA').AsString := ClientesProvincia.AsString;
                  t.ParamByName('CODPOSTAL').AsString := ClientesCodPostal.AsString;
                  t.ParamByName('TELEFONOS').AsString := ClientesTelefonos.AsString;
                  t.ParamByName('TELFAX').AsString := ClientesTelFax.AsString;
                  t.ParamByName('TIPOIVA').AsInteger := ClientesTipoIva.AsInteger;
                  t.ParamByName('TIPODOC').AsInteger := ClientesTipoDoc.AsInteger;
                  t.ParamByName('DOCUMENTO').AsString := ClientesDocumento.AsString;
                  t.ParamByName('INGBRUTOS').AsString := ClientesIngBrutos.AsString;
                  t.ParamByName('FECHANAC').Clear;
                  t.ParamByName('ESTADOCIVIL').AsInteger := 0;
                  t.ParamByName('NCONYUGE').AsString := Vacio;
                  t.ParamByName('EMPLEADOR').AsString := Vacio;
                  t.ParamByName('DOMICILIOE').AsString := Vacio;
                  t.ParamByName('ANTIGUEDADE').AsInteger := 0;
                  t.ParamByName('INGRESOSE').AsCurrency := 0;
                  t.ParamByName('CARGO').AsString := Vacio;
                  t.ParamByName('NROJUBILADO').AsString := Vacio;
                  t.ParamByName('RAMO').AsString := Vacio;
                  t.ParamByName('DOMICILIOP').AsString := Vacio;
                  t.ParamByName('ANTIGUEDADP').AsString := Vacio;
                  t.ParamByName('INGRESOSP').AsCurrency := 0;
                  t.ParamByName('TIPOPROP').AsString := Vacio;
                  t.ParamByName('UBICPROP').AsString := Vacio;
                  t.ParamByName('REFERENCIAS').AsString := Vacio;
                  t.ParamByName('TIPOCLI').AsInteger := 0;
                  t.ParamByName('NOMGARANTE1').AsString := Vacio;
                  t.ParamByName('DOCGARANTE1').AsString := Vacio;
                  t.ParamByName('NOMGARANTE2').AsString := Vacio;
                  t.ParamByName('DOCGARANTE2').AsString := Vacio;
                  t.ParamByName('CODBUSCLI').AsString := ClientesIdCliente.AsString;
                  try
                    t.ExecSQL;
                  except
                  end;
                  t.Close;
                finally
                  t.Free;
                end;
              end;
            end;

            Clientes.Close;
            q.ParamByName('CLIENTE').AsInteger := EstaCli;
            q.ParamByName('TIPOIVA').AsInteger := FacVenTipoIva.AsInteger;
            q.ParamByName('CANTARTIC').AsInteger := FacVenCantArtic.AsInteger;
            q.ParamByName('BONIFICACION').AsCurrency := FacVenBonificacion.AsCurrency;
            q.ParamByName('NETO').AsCurrency := FacVenNeto.AsCurrency;
            q.ParamByName('EXENTO').AsCurrency := FacVenExento.AsCurrency;
            q.ParamByName('NOCOMPUTABLES').AsCurrency := FacVenNoComputables.AsCurrency;
            q.ParamByName('IVAALICUOTA1').AsCurrency := FacVenIvaAlicuota1.AsCurrency;
            q.ParamByName('IVAALICUOTA2').AsCurrency := 0;
            q.ParamByName('TOTAL').AsCurrency := FacVenTotal.AsCurrency;
            q.ParamByName('SITUACION').AsInteger := FacVenSituacion.AsInteger;
            q.ParamByName('ENTCONTADO').AsCurrency := FacVenEntContado.AsCurrency;
            q.ParamByName('CONTADO').AsCurrency := FacVenContado.AsCurrency;
            q.ParamByName('TARJETA').AsCurrency := FacVenTarjeta.AsCurrency;
            q.ParamByName('IDTARJETA').AsInteger := FacVenIdTarjeta.AsInteger;
            q.ParamByName('CTACTE').AsCurrency := FacVenCtaCte.AsCurrency;
            q.ParamByName('NROCTAS').AsInteger := FacVenNroCtas.AsInteger;
            q.ParamByName('CHEQUE').AsCurrency := FacVenCheque.AsCurrency;
            q.ParamByName('TICKETS').AsCurrency := FacVenTickets.AsCurrency;
            q.ParamByName('OTROSPAGOS').AsCurrency := FacVenOtrosPagos.AsCurrency;
            q.ParamByName('EMPLEADO').AsInteger := FacVenEmpleado.AsInteger;
            q.ParamByName('IMPRESA').AsInteger := FacVenImpresa.AsInteger;
            q.ParamByName('FECHAIS').Clear;
            q.ParamByName('IDMOTNC').AsInteger := FacVenIdMotNc.AsInteger;
            q.ParamByName('USUARIO').AsInteger := FacVenUsuario.AsInteger;
            q.ParamByName('DIR_ENTREGA').AsString := '';
            q.ParamByName('SENAS').AsCurrency := 0;
            q.ParamByName('COBSENAS').AsCurrency := 0;
            q.ParamByName('STATE').AsInteger := 0;
            try
              q.ExecSQL;
            except

            end;
            q.Close;
          finally
            q.Free;
          end;
          //********************************** ITEMS ****************************
          ItemsFV.Filter := 'IdFactura = '+FacVenIdFactura.AsString + ' And '+
                            'IdSucursal = '+ IntToStr(IdB) + ' And '+
                            'IdPuntoVenta = '+ FacVenIdPuntoVenta.AsString;
          ItemsFV.Filtered := True;
          ItemsFV.Open;
          ItemsFV.First;
          While not ItemsFV.Eof do
          begin
            try
              q := TMDOQuery.Create(nil);
              q.Database := dbConversion;
              q.Transaction := trConversion;
              q.SQL.Add('INSERT INTO ITEMSFV ');
              q.SQL.Add('  (IDFACTURA, IDSUCURSAL, IDPUNTOVENTA, IDITEM, IDARTICULO, TALLE, IDSUBDEP, ');
              q.SQL.Add('   FECHAF, CANTIDAD, NROCTAS, PRCBONIFICACION, DESCUENTO, PRECIOCOSTO, ');
              q.SQL.Add('   PRECIONETO, PRECIOFINAL, PRECIOTOTAL, VALORLISTA, EXENTO, IMPINT, IVAIN, ');
              q.SQL.Add('   IDALCIVA, ALICUOTAIVA, IDALCIB, ALCIB, INGBTO, OFERTA, SUBDET, STATE, ');
              q.SQL.Add('   DCTOSTK, ENTCONTADO) ');
              q.SQL.Add('VALUES ');
              q.SQL.Add('  (:IDFACTURA, :IDSUCURSAL, :IDPUNTOVENTA, :IDITEM, :IDARTICULO, :TALLE, ');
              q.SQL.Add('   :IDSUBDEP, :FECHAF, :CANTIDAD, :NROCTAS, :PRCBONIFICACION, :DESCUENTO, ');
              q.SQL.Add('   :PRECIOCOSTO, :PRECIONETO, :PRECIOFINAL, :PRECIOTOTAL, :VALORLISTA, ');
              q.SQL.Add('   :EXENTO, :IMPINT, :IVAIN, :IDALCIVA, :ALICUOTAIVA, :IDALCIB, :ALCIB, ');
              q.SQL.Add('   :INGBTO, :OFERTA, :SUBDET, :STATE, :DCTOSTK, :ENTCONTADO) ');
              q.ParamByName('IDFACTURA').AsInteger := ItemsFVIdFactura.AsInteger;
              q.ParamByName('IDSUCURSAL').AsInteger := ItemsFVIdSucursal.AsInteger;
              q.ParamByName('IDPUNTOVENTA').AsInteger := ItemsFVIdPuntoVenta.AsInteger;
              q.ParamByName('IDITEM').AsInteger := ItemsFVIdItem.AsInteger;
              q.ParamByName('IDARTICULO').AsInteger := ItemsFVIdArticulo.AsInteger;
              q.ParamByName('TALLE').AsInteger := ItemsFVTalle.AsInteger;
              q.ParamByName('IDSUBDEP').AsInteger := ItemsFVIdSubDep.AsInteger;
              q.ParamByName('FECHAF').AsDate := ItemsFVFechaF.AsDateTime;
              q.ParamByName('CANTIDAD').AsFloat := ItemsFVCantidad.AsFloat;
              q.ParamByName('NROCTAS').AsInteger := ItemsFVNroCtas.AsInteger;
              q.ParamByName('PRCBONIFICACION').AsFloat := ItemsFVPrcBonificacion.AsFloat;
              q.ParamByName('DESCUENTO').AsCurrency := ItemsFVDescuento.AsCurrency;
              q.ParamByName('PRECIOCOSTO').AsCurrency := ItemsFVPrecioCosto.AsCurrency;
              q.ParamByName('PRECIONETO').AsCurrency := ItemsFVPrecioNeto.AsCurrency;
              q.ParamByName('PRECIOFINAL').AsCurrency := ItemsFVPrecioFinal.AsCurrency;
              q.ParamByName('PRECIOTOTAL').AsCurrency := ItemsFVPrecioTotal.AsCurrency;
              q.ParamByName('VALORLISTA').AsCurrency := ItemsFVValorLista.AsCurrency;
              q.ParamByName('EXENTO').AsCurrency := ItemsFVExento.AsCurrency;
              q.ParamByName('IMPINT').AsCurrency := ItemsFVImpInt.AsCurrency;
              q.ParamByName('IVAIN').AsCurrency := ItemsFVIvaIn.AsCurrency;
              q.ParamByName('IDALCIVA').AsInteger := ItemsFVIdAlcIva.AsInteger;
              q.ParamByName('ALICUOTAIVA').AsFloat := ItemsFVAlicuotaIva.AsFloat;
              q.ParamByName('IDALCIB').AsInteger := ItemsFVIdAlcIB.AsInteger;
              q.ParamByName('ALCIB').AsFloat := ItemsFVAlcIB.AsFloat;
              q.ParamByName('INGBTO').AsCurrency := ItemsFVIngBto.AsCurrency;
              q.ParamByName('OFERTA').AsInteger := ItemsFVOferta.AsInteger;
              q.ParamByName('SUBDET').AsString := ItemsFVSubDet.AsString;
              q.ParamByName('STATE').AsInteger := 0;
              q.ParamByName('DCTOSTK').AsInteger := Verdadero;
              q.ParamByName('ENTCONTADO').AsCurrency := ItemsFVEntContado.AsCurrency;
              try
                q.ExecSQL;
              except

              end;
              q.Close;
            finally
              q.Free;
            end;
            ItemsFV.Next;
          end;
          ItemsFV.Close;
          //********************************** ITEMS ****************************
          if CantTran >= 10 then
          begin
            Save_Tot := Save_Tot + CantTran;
            try
              trConversion.Commit;
            except
              trConversion.Rollback;
            end;
            CantTran := 1;
          end;
          Inc(CantTran);
        end;
        FacVen.Next;
      end;
      Resultado := Resultado + ' FG: '+IntToStr(Save_Tot);
      FacVen.Close;
      if trConversion.InTransaction then
      begin
        try
          trConversion.Commit;
        except
          trConversion.Rollback;
        end;
      end;
    end;

    //********************************** TARJETAS *********************
    MovTar.Filter := 'IdSucursal = '+IntToStr(IdB);
    MovTar.Filtered := True;
    MovTar.Open;
    Esta := 0;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Select Max(IdMov) as Esta ');
      q.SQL.Add('From MOVTAR ');
      q.SQL.Add('Where IdSucursal = :S ');
      q.ParamByName('S').AsInteger := IdB;
      q.Open;
      Esta := q.FieldByName('Esta').AsInteger;
      q.Close;
    finally
      q.Free;
    end;
    Resultado := Resultado + '  TA: '+IntToStr(Esta);
    if Esta > 0 then
    begin
      if not MovTar.Locate('IdMov;IdSucursal', varArrayOf([Esta, IdB]), []) then
        MovTar.First
    end
    else begin
      MovTar.First;
    end;

    CantTran := 1;
    Save_Tot := 0;
    While not MovTar.Eof do
    begin
      Esta := 0;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('Select Count(IdMov) as Esta ');
        q.SQL.Add('From MOVTAR ');
        q.SQL.Add('Where IdMov = :IdMov and ');
        q.SQL.Add('      IdTarjeta = :IdTarjeta And ');
        q.SQL.Add('      IdFactura = :IdFactura And ');
        q.SQL.Add('      IdSucursal = :IdSucursal And ');
        q.SQL.Add('      IdCliente = :IdCliente ');
        q.ParamByName('IDMOV').AsInteger := MovTarIdMov.AsInteger;
        q.ParamByName('IDTARJETA').AsInteger := MovTarIdTarjeta.AsInteger;
        q.ParamByName('IDFACTURA').AsInteger := MovTarIdFactura.AsInteger;
        q.ParamByName('IDSUCURSAL').AsInteger := IdB;
        q.ParamByName('IDCLIENTE').AsInteger := MovTarIdCliente.AsInteger;
        q.Open;
        Esta := q.FieldByName('Esta').AsInteger;
        q.Close;
      finally
        q.Free;
      end;

      if Esta = 0 then
      begin
        if CantTran = 1 then
        begin
          if not trConversion.InTransaction then
            trConversion.StartTransaction;
        end;
        try
          q := TMDOQuery.Create(nil);
          q.Database := dbConversion;
          q.Transaction := trConversion;
          q.SQL.Add('INSERT INTO MOVTAR ');
          q.SQL.Add('  (IDMOV, IDTARJETA, IDFACTURA, IDCLIENTE, CUPON, LOTE, FECHAOP, CODTAR, ');
          q.SQL.Add('   NROCUOTA, IMPCUOTA, TOTALOP, AUTORIZACION, ESTADO, FECHARESUMEN, FECHAIS, ');
          q.SQL.Add('   CUOTAPAG, NROLIQUIDACION, VENCUOTA, NRORECPAGO, INTMORA, CANTCUOTAS, ');
          q.SQL.Add('   IDCREDITO, INTCUOTA, NRONOTADEBITO, STATE, IDSUCURSAL, ULTIMOPAGO) ');
          q.SQL.Add('VALUES ');
          q.SQL.Add('  (:IDMOV, :IDTARJETA, :IDFACTURA, :IDCLIENTE, :CUPON, :LOTE, :FECHAOP, ');
          q.SQL.Add('   :CODTAR, :NROCUOTA, :IMPCUOTA, :TOTALOP, :AUTORIZACION, :ESTADO, :FECHARESUMEN, ');
          q.SQL.Add('   :FECHAIS, :CUOTAPAG, :NROLIQUIDACION, :VENCUOTA, :NRORECPAGO, :INTMORA, ');
          q.SQL.Add('   :CANTCUOTAS, :IDCREDITO, :INTCUOTA, :NRONOTADEBITO, :STATE, :IDSUCURSAL, :ULTIMOPAGO) ');
          q.ParamByName('IDMOV').AsInteger := MovTarIdMov.AsInteger;
          q.ParamByName('IDTARJETA').AsInteger := MovTarIdTarjeta.AsInteger;
          q.ParamByName('IDFACTURA').AsInteger := MovTarIdFactura.AsInteger;
          q.ParamByName('IDCLIENTE').AsInteger := MovTarIdCliente.AsInteger;
          q.ParamByName('CUPON').AsString := MovTarCupon.AsString;
          q.ParamByName('LOTE').AsString := MovTarLote.AsString;
          q.ParamByName('FECHAOP').AsDate := MovTarFechaOp.AsDateTime;
          q.ParamByName('CODTAR').AsString := MovTarCodTar.AsString;
          q.ParamByName('NROCUOTA').AsInteger := MovTarNroCuota.AsInteger;
          q.ParamByName('IMPCUOTA').AsCurrency := MovTarImpCuota.AsCurrency;
          q.ParamByName('TOTALOP').AsCurrency := MovTarTotalOP.AsCurrency;
          q.ParamByName('AUTORIZACION').AsString := MovTarAutorizacion.AsString;
          q.ParamByName('ESTADO').AsInteger := MovTarEstado.AsInteger;
          q.ParamByName('FECHARESUMEN').AsDate := MovTarFechaResumen.AsDateTime;
          q.ParamByName('FECHAIS').Clear;
          q.ParamByName('CUOTAPAG').AsInteger := MovTarCuotaPag.AsInteger;
          q.ParamByName('NROLIQUIDACION').AsString := MovTarNroLiquidacion.AsString;
          q.ParamByName('VENCUOTA').Clear;
          q.ParamByName('NRORECPAGO').AsString := '0000-00000000';
          q.ParamByName('INTMORA').AsFloat := 0;
          q.ParamByName('CANTCUOTAS').AsInteger := 0;
          q.ParamByName('IDCREDITO').AsInteger := 0;
          q.ParamByName('INTCUOTA').AsInteger := 0;
          q.ParamByName('NRONOTADEBITO').AsString := '0000-00000000';
          q.ParamByName('STATE').AsInteger := 0;
          q.ParamByName('IDSUCURSAL').AsInteger := MovTarIdSucursal.AsInteger;
          q.ParamByName('ULTIMOPAGO').Clear;
          try
            q.ExecSQL;
          except

          end;
          q.Close;
        finally
          q.Free;
        end;

        if MovTarIdTarjeta.AsInteger in [1,6,9,19,25,27,28,29,30,32] then
        begin
          Vencimiento := MovTarFechaOP.AsDateTime;
          for i := 1 to MovTarNroCuota.AsInteger do
          begin
            try
              q := TMDOQuery.Create(nil);
              q.Database := dbConversion;
              q.Transaction := trConversion;
              q.SQL.Add('INSERT INTO MOVCUOTAS ');
              q.SQL.Add('  (IDMOVCRED, NROCUOTA, IDFACTURA, IDSUCURSAL, FECHAV, ');
              q.SQL.Add('   MONTOCUOTA, NRORECPAGO, FECHAP, MONTODEBITO, NRONOTADEB, ');
              q.SQL.Add('   IDRECIBO, IDSUCREC, IDCLIENTE, ESTADO, FECHAIS) ');
              q.SQL.Add('VALUES ');
              q.SQL.Add('  (:IDMOVCRED, :NROCUOTA, :IDFACTURA, :IDSUCURSAL, :FECHAV, ');
              q.SQL.Add('   :MONTOCUOTA, :NRORECPAGO, :FECHAP, :MONTODEBITO, :NRONOTADEB, ');
              q.SQL.Add('   :IDRECIBO, :IDSUCREC, :IDCLIENTE, :ESTADO, :FECHAIS) ');
              q.ParamByName('IDMOVCRED').AsInteger := MovTarIdMov.AsInteger;
              q.ParamByName('NROCUOTA').AsInteger := i;
              q.ParamByName('IDFACTURA').AsInteger := MovTarIdFactura.AsInteger;
              q.ParamByName('IDSUCURSAL').AsInteger := MovTarIdSucursal.AsInteger;
              q.ParamByName('FECHAV').AsDate := Vencimiento;
              q.ParamByName('MONTOCUOTA').AsCurrency := MovTarImpCuota.AsCurrency;
              q.ParamByName('NRORECPAGO').AsString := '0000-00000000';
              q.ParamByName('FECHAP').Clear;
              q.ParamByName('MONTODEBITO').AsCurrency := 0;
              q.ParamByName('NRONOTADEB').AsString := '0000-00000000';
              q.ParamByName('IDRECIBO').AsInteger := 0;
              q.ParamByName('IDSUCREC').AsInteger := 0;
              q.ParamByName('IDCLIENTE').AsInteger := MovTarIdCliente.AsInteger;
              q.ParamByName('ESTADO').AsInteger := 0;
              q.ParamByName('FECHAIS').Clear;
              try
                q.ExecSQL;
              except

              end;
              q.Close;
            finally
              q.Free;
            end;
            Vencimiento := IncMonth(Vencimiento);
          end;
        end;

        Inc(CantTran);
        if CantTran >= 100 then
        begin
          Save_Tot := Save_Tot + CantTran;
          try
            trConversion.Commit;
          except
            on E:Exception do
            begin
              trConversion.Rollback;
            end
          end;
          CantTran := 1;
        end;
      end;
      MovTar.Next;
    end;
    Resultado := Resultado + '  TG: '+IntToStr(Save_Tot);
    MovTar.Close;
    if trConversion.InTransaction then
    begin
      try
        trConversion.Commit;
      except
        trConversion.Rollback;
      end;
    end;
    R_Rend.Filter := 'IdSuc = '+IntToStr(IdB);
    R_Rend.Filtered := True;
    R_Rend.Open;
    Esta := 0;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Select Max(IdRend) as Esta ');
      q.SQL.Add('From R_Rend ');
      q.SQL.Add('Where IdSuc = :S ');
      q.ParamByName('S').AsInteger := IdB;
      q.Open;
      Esta := q.FieldByName('Esta').AsInteger;
      q.Close;
    finally
      q.Free;
    end;
    Resultado := Resultado + '  RA: '+IntToStr(Esta);
    if Esta > 0 then
      R_Rend.Locate('IdRend;IdSuc', varArrayOf([Esta, IdB]), [])
    else
      R_Rend.First;

    Save_Tot := 0;
    CantTran := 1;
    While not R_Rend.Eof do
    begin
      Esta := 0;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('Select Count(IdRend) as Esta ');
        q.SQL.Add('From R_Rend ');
        q.SQL.Add('Where IdSuc = :IdSuc ');
        q.ParamByName('IDSuc').AsInteger := R_RendIdSuc.AsInteger;
        q.Open;
        Esta := q.FieldByName('Esta').AsInteger;
        q.Close;
      finally
        q.Free;
      end;

      if Esta = 0 then
      begin
        if CantTran = 1 then
        begin
          if not trConversion.InTransaction then
            trConversion.StartTransaction;
        end;
        try
          q := TMDOQuery.Create(nil);
          q.Database := dbConversion;
          q.Transaction := trConversion;
          q.SQL.Add('INSERT INTO R_Rend ');
          q.SQL.Add('  (IDREND, IDSUC, FECHAR, TVENTA, TPESOS, TTICKETS, TSAF, TCOBOSUC, TCOBRADO, ');
          q.SQL.Add('   TTARJETA, TCHEQUES, TSENAS, TNCRED, TGASTOSE, TGASTOST, DIFERENCIA, ');
          q.SQL.Add('   IDCUENTA, BOLDEP, DEPOSITO, FECHAIS, IDMOVBCO) ');
          q.SQL.Add('VALUES ');
          q.SQL.Add('  (:IDREND, :IDSUC, :FECHAR, :TVENTA, :TPESOS, :TTICKETS, :TSAF, :TCOBOSUC, ');
          q.SQL.Add('   :TCOBRADO,  :TTARJETA, :TCHEQUES, :TSENAS, :TNCRED, :TGASTOSE, :TGASTOST, ');
          q.SQL.Add('   :DIFERENCIA, :IDCUENTA, :BOLDEP, :DEPOSITO, :FECHAIS, :IDMOVBCO) ');
          q.ParamByName('IDREND').AsInteger := R_RendIdRend.AsInteger;
          q.ParamByName('IDSUC').AsInteger := R_RendIdSuc.AsInteger;
          q.ParamByName('FECHAR').AsDate := R_RendFechaR.AsDateTime;
          q.ParamByName('TVENTA').AsCurrency := R_RendTVenta.AsCurrency;
          q.ParamByName('TPESOS').AsCurrency := R_RendTPesos.AsCurrency;
          q.ParamByName('TTICKETS').AsCurrency := R_RendTTickets.AsCurrency;
          q.ParamByName('TSAF').AsCurrency := 0;
          q.ParamByName('TCOBOSUC').AsCurrency := 0;
          q.ParamByName('TCOBRADO').AsCurrency := 0;
          q.ParamByName('TTARJETA').AsCurrency := R_RendTTarjeta.AsCurrency;
          q.ParamByName('TCHEQUES').AsCurrency := R_RendTCheques.AsCurrency;
          q.ParamByName('TSENAS').AsCurrency := R_RendTSenas.AsCurrency;
          q.ParamByName('TNCRED').AsCurrency := R_RendTNCred.AsCurrency;
          q.ParamByName('TGASTOSE').AsCurrency := R_RendTGastosE.AsCurrency;
          q.ParamByName('TGASTOST').AsCurrency := R_RendTGastosT.AsCurrency;
          q.ParamByName('DIFERENCIA').AsCurrency := R_RendDiferencia.AsCurrency;
          q.ParamByName('IDCUENTA').AsInteger := R_RendIdCuenta.AsInteger;
          q.ParamByName('BOLDEP').AsString := R_RendBolDep.AsString;
          q.ParamByName('DEPOSITO').AsCurrency := R_RendDeposito.AsCurrency;
          q.ParamByName('FECHAIS').Clear;
          q.ParamByName('IDMOVBCO').AsInteger := R_RendIdMovBco.AsInteger;
          q.ExecSQL;
          q.Close;
        finally
          q.Free;
        end;
        if CantTran >= 10 then
        begin
          Save_Tot := Save_Tot + CantTran;
          try
            trConversion.Commit;
          except
            trConversion.Rollback;
          end;
          CantTran := 1;
        end;
        Inc(CantTran);
      end;
      R_Rend.Next;
    end;
    Resultado := Resultado + '  RG: '+IntToStr(Save_Tot);
    R_Rend.Close;
    if trConversion.InTransaction then
    begin
      try
        trConversion.Commit;
      except
        trConversion.Rollback;
      end;
    end;
  finally
    Resultado := Resultado + '  '+DateTimeToStr(Now);
    dbInsolito.Connected := False;
    sInsolito.Active := False;
    Result := Resultado;
  end;
end;

procedure TfrmConversion.DBIsam_Actualizar_Sucursal;
var
  q, t, r: TMDOQuery;
  Esta, EstaCli, CantTran, Save_Tot, i: Integer;
  Vencimiento: TDate;
begin
  DBIsam_ConnectDB(1);
  mmPorDonde.Lines.Add('Ventas: Facturas y Clientes.- '+TimeToStr(Time));
  Application.ProcessMessages;
  FacVen.Open;
  if not FacVen.IsEmpty then
  begin
    FacVen.First;
    (*
    try
      Esta := 0;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('Select Count(IdFactura) As Esta ');
        q.SQL.Add('From FacVen ');
        q.SQL.Add('Where IdSucursal =:IdSucursal');
        q.ParamByName('IdSucursal').AsInteger := IdBranch;
        q.Open;
        Esta := q.FieldByName('Esta').AsInteger;
        q.Close;
      finally
        q.Free;
      end;

      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('Select Max(IdFactura) as Ultima ');
        q.SQL.Add('From FacVen ');
        q.SQL.Add('Where (TipoFactura in (1,2,3,4,5,6,7,8,9,42)) And ');
        q.SQL.Add('      (IdSucursal = :IdSucursal) ');
        q.ParamByName('IdSucursal').AsInteger := IdBranch;
        q.Open;
        if not q.IsEmpty then
        begin
          if not FacVen.Locate('IdFactura;IdSucursal',
             VarArrayOf([q.FieldByName('Ultima').AsInteger, IdBranch]), []) then
          begin
            FacVen.First;
          end;
          q.Close;
        end
        else begin
          FacVen.First;
        end;
      finally
        q.Free;
      end;
    except
      FacVen.First;
    end;
    *)

    mmPorDonde.Lines.Add('Ventas: TC '+IntToStr(FacVen.RecordCount)+' CG: '+IntToStr(Esta));
    Application.ProcessMessages;
    CantTran := 1;
    Save_Tot := 0;

    While not FacVen.Eof do
    begin
      Esta := 0;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('Select Count(IdFactura) As Esta ');
        q.SQL.Add('From FacVen ');
        q.SQL.Add('Where IdFactura =:IdFactura And ');
        q.SQL.Add('      IdSucursal =:IdSucursal And ');
        q.SQL.Add('      IdPuntoVenta =:IdPuntoVenta ');
        q.ParamByName('IdFactura').AsInteger := FacVenIdFactura.AsInteger;
        q.ParamByName('IdSucursal').AsInteger := FacVenIdSucursal.AsInteger;
        q.ParamByName('IdPuntoVenta').AsInteger := FacVenIdPuntoVenta.AsInteger;
        q.Open;
        Esta := q.FieldByName('Esta').AsInteger;
        q.Close;
      finally
        q.Free;
      end;

      if Esta = 0 then
      begin
        if CantTran >= 10 then
        begin
          Save_Tot := Save_Tot + CantTran;
          try
            trConversion.Commit;
            mmPorDonde.Lines.Add('Grabación Ventas '+ IntToStr(Save_Tot));
          except
            on E:Exception do
            begin
              trConversion.Rollback;
              mmPorDonde.Lines.Add('Ventas '+E.Message);
            end
          end;
          CantTran := 1;
        end;

        if CantTran = 1 then
        begin
          if not trConversion.InTransaction then
            trConversion.StartTransaction;
        end;
        try
          q := TMDOQuery.Create(nil);
          q.Database := dbConversion;
          q.Transaction := trConversion;
          q.SQL.Add('INSERT INTO FACVEN ');
          q.SQL.Add('  (IDFACTURA, IDSUCURSAL, IDPUNTOVENTA, TIPOFACTURA, SECTOR, ');
          q.SQL.Add('   IDSUBDEP, DIAHORA, FECHAF, FECHAI, PUNTOVTA, NROFACTURA, ');
          q.SQL.Add('   IDCOMPREF, COMPREF, CLIENTE, TIPOIVA, CANTARTIC, BONIFICACION, ');
          q.SQL.Add('   NETO, EXENTO, NOCOMPUTABLES, IVAALICUOTA1, IVAALICUOTA2, TOTAL,  ');
          q.SQL.Add('   SITUACION, ENTCONTADO, CONTADO, TARJETA, IDTARJETA,CTACTE, ');
          q.SQL.Add('   NROCTAS, CHEQUE, TICKETS, OTROSPAGOS, EMPLEADO, IMPRESA, FECHAIS, ');
          q.SQL.Add('   IDMOTNC, USUARIO, DIR_ENTREGA, SENAS, COBSENAS, STATE) ');
          q.SQL.Add('VALUES ');
          q.SQL.Add('  (:IDFACTURA, :IDSUCURSAL, :IDPUNTOVENTA, :TIPOFACTURA, :SECTOR, ');
          q.SQL.Add('   :IDSUBDEP, :DIAHORA, :FECHAF, :FECHAI, :PUNTOVTA, :NROFACTURA, ');
          q.SQL.Add('   :IDCOMPREF, :COMPREF, :CLIENTE, :TIPOIVA, :CANTARTIC, :BONIFICACION, ');
          q.SQL.Add('   :NETO, :EXENTO, :NOCOMPUTABLES, :IVAALICUOTA1, :IVAALICUOTA2, :TOTAL,  ');
          q.SQL.Add('   :SITUACION, :ENTCONTADO, :CONTADO, :TARJETA, :IDTARJETA, :CTACTE, ');
          q.SQL.Add('   :NROCTAS, :CHEQUE, :TICKETS, :OTROSPAGOS, :EMPLEADO, :IMPRESA, :FECHAIS, ');
          q.SQL.Add('   :IDMOTNC, :USUARIO, :DIR_ENTREGA, :SENAS,:COBSENAS, :STATE) ');
          q.ParamByName('IDFACTURA').AsInteger := FacVenIdFactura.AsInteger;
          q.ParamByName('IDSUCURSAL').AsInteger := FacVenIdSucursal.AsInteger;
          q.ParamByName('IDPUNTOVENTA').AsInteger := FacVenIdPuntoVenta.AsInteger;
          q.ParamByName('TIPOFACTURA').AsInteger := FacVenTipoFactura.AsInteger;
          q.ParamByName('SECTOR').AsInteger := FacVenSector.AsInteger;
          q.ParamByName('IDSUBDEP').AsInteger := FacVenIdSubDep.AsInteger;
          q.ParamByName('DIAHORA').AsDateTime := FacVenDiaHora.AsDateTime;
          q.ParamByName('FECHAF').AsDate := FacVenFechaF.AsDateTime;
          q.ParamByName('FECHAI').AsDate := FacVenFechaI.AsDateTime;
          q.ParamByName('PUNTOVTA').AsInteger := FacVenPuntoVta.AsInteger;
          q.ParamByName('NROFACTURA').AsString := FacVenNroFactura.AsString;
          q.ParamByName('IDCOMPREF').AsInteger := FacVenIdCompRef.AsInteger;
          q.ParamByName('COMPREF').AsString := FacVenCompRef.AsString;

          Clientes.Open;
          if Clientes.Locate(ClientesIdCliente.FieldName, FacVenCliente.AsInteger, []) then
          begin
            EstaCli := 0;
            try
              r := TMDOQuery.Create(nil);
              r.Database := dbConversion;
              r.Transaction := trConversion;
              r.SQL.Add('SELECT COUNT(IDCLIENTE) AS CANTCLI ');
              r.SQL.Add('FROM CLIENTES ');
              r.SQL.Add('WHERE IDCLIENTE = :I AND IDSUCURSAL = :S ');
              r.ParamByName('I').AsInteger := ClientesIdCliente.AsInteger;
              r.ParamByName('S').AsInteger := FacVenIdSucursal.AsInteger;
              r.Open;
              EstaCli := r.FieldByName('CANTCLI').AsInteger;
              r.Close;
            finally
              r.Free;
            end;

            if EstaCli = 0 then
            begin
              EstaCli := ClientesIdCliente.AsInteger;
              try
                t := TMDOQuery.Create(nil);
                t.Database := dbConversion;
                t.Transaction := trConversion;
                t.SQL.Add('INSERT INTO CLIENTES ');
                t.SQL.Add('  (IDCLIENTE, IDSUCURSAL,  NOMBRE, DIRECCION, ');
                t.SQL.Add('   LOCALIDAD, PROVINCIA, CODPOSTAL, TELEFONOS, TELFAX, ');
                t.SQL.Add('   TIPOIVA, TIPODOC, DOCUMENTO, INGBRUTOS, FECHANAC, ');
                t.SQL.Add('   ESTADOCIVIL, NCONYUGE, EMPLEADOR, DOMICILIOE, ');
                t.SQL.Add('   ANTIGUEDADE, INGRESOSE, CARGO, NROJUBILADO, RAMO, ');
                t.SQL.Add('   DOMICILIOP, ANTIGUEDADP, INGRESOSP, TIPOPROP, ');
                t.SQL.Add('   UBICPROP, REFERENCIAS, TIPOCLI, NOMGARANTE1, ');
                t.SQL.Add('   DOCGARANTE1, NOMGARANTE2, DOCGARANTE2, CODBUSCLI) ');
                t.SQL.Add('VALUES ');
                t.SQL.Add('  (:IDCLIENTE, :IDSUCURSAL, :NOMBRE, :DIRECCION, ');
                t.SQL.Add('   :LOCALIDAD, :PROVINCIA, :CODPOSTAL, :TELEFONOS, :TELFAX, ');
                t.SQL.Add('   :TIPOIVA, :TIPODOC, :DOCUMENTO, :INGBRUTOS, :FECHANAC, ');
                t.SQL.Add('   :ESTADOCIVIL, :NCONYUGE, :EMPLEADOR,  :DOMICILIOE, ');
                t.SQL.Add('   :ANTIGUEDADE, :INGRESOSE, :CARGO, :NROJUBILADO, :RAMO, ');
                t.SQL.Add('   :DOMICILIOP, :ANTIGUEDADP, :INGRESOSP, :TIPOPROP, ');
                t.SQL.Add('   :UBICPROP, :REFERENCIAS, :TIPOCLI, :NOMGARANTE1, ');
                t.SQL.Add('   :DOCGARANTE1, :NOMGARANTE2, :DOCGARANTE2, :CODBUSCLI) ');
                t.ParamByName('IDCLIENTE').AsInteger := ClientesIdCliente.AsInteger;
                t.ParamByName('IDSUCURSAL').AsInteger := FacVenIdSucursal.AsInteger;
                t.ParamByName('NOMBRE').AsString := ClientesNombre.AsString;
                t.ParamByName('DIRECCION').AsString := ClientesDireccion.AsString;
                t.ParamByName('LOCALIDAD').AsString := ClientesLocalidad.AsString;
                t.ParamByName('PROVINCIA').AsString := ClientesProvincia.AsString;
                t.ParamByName('CODPOSTAL').AsString := ClientesCodPostal.AsString;
                t.ParamByName('TELEFONOS').AsString := ClientesTelefonos.AsString;
                t.ParamByName('TELFAX').AsString := ClientesTelFax.AsString;
                t.ParamByName('TIPOIVA').AsInteger := ClientesTipoIva.AsInteger;
                t.ParamByName('TIPODOC').AsInteger := ClientesTipoDoc.AsInteger;
                t.ParamByName('DOCUMENTO').AsString := ClientesDocumento.AsString;
                t.ParamByName('INGBRUTOS').AsString := ClientesIngBrutos.AsString;
                t.ParamByName('FECHANAC').Clear;
                t.ParamByName('ESTADOCIVIL').AsInteger := 0;
                t.ParamByName('NCONYUGE').AsString := Vacio;
                t.ParamByName('EMPLEADOR').AsString := Vacio;
                t.ParamByName('DOMICILIOE').AsString := Vacio;
                t.ParamByName('ANTIGUEDADE').AsInteger := 0;
                t.ParamByName('INGRESOSE').AsCurrency := 0;
                t.ParamByName('CARGO').AsString := Vacio;
                t.ParamByName('NROJUBILADO').AsString := Vacio;
                t.ParamByName('RAMO').AsString := Vacio;
                t.ParamByName('DOMICILIOP').AsString := Vacio;
                t.ParamByName('ANTIGUEDADP').AsString := Vacio;
                t.ParamByName('INGRESOSP').AsCurrency := 0;
                t.ParamByName('TIPOPROP').AsString := Vacio;
                t.ParamByName('UBICPROP').AsString := Vacio;
                t.ParamByName('REFERENCIAS').AsString := Vacio;
                t.ParamByName('TIPOCLI').AsInteger := 0;
                t.ParamByName('NOMGARANTE1').AsString := Vacio;
                t.ParamByName('DOCGARANTE1').AsString := Vacio;
                t.ParamByName('NOMGARANTE2').AsString := Vacio;
                t.ParamByName('DOCGARANTE2').AsString := Vacio;
                t.ParamByName('CODBUSCLI').AsString := ClientesIdCliente.AsString;
                try
                  t.ExecSQL;
                except
                  on E:Exception do
                  begin
                    mmPorDonde.Lines.Add('Clientes '+E.Message);
                  end
                end;
                t.Close;
              finally
                t.Free;
              end;
            end;
          end;
          Clientes.Close;
          q.ParamByName('CLIENTE').AsInteger := EstaCli;
          q.ParamByName('TIPOIVA').AsInteger := FacVenTipoIva.AsInteger;
          q.ParamByName('CANTARTIC').AsInteger := FacVenCantArtic.AsInteger;
          q.ParamByName('BONIFICACION').AsCurrency := FacVenBonificacion.AsCurrency;
          q.ParamByName('NETO').AsCurrency := FacVenNeto.AsCurrency;
          q.ParamByName('EXENTO').AsCurrency := FacVenExento.AsCurrency;
          q.ParamByName('NOCOMPUTABLES').AsCurrency := FacVenNoComputables.AsCurrency;
          q.ParamByName('IVAALICUOTA1').AsCurrency := FacVenIvaAlicuota1.AsCurrency;
          q.ParamByName('IVAALICUOTA2').AsCurrency := 0;
          q.ParamByName('TOTAL').AsCurrency := FacVenTotal.AsCurrency;
          q.ParamByName('SITUACION').AsInteger := FacVenSituacion.AsInteger;
          q.ParamByName('ENTCONTADO').AsCurrency := FacVenEntContado.AsCurrency;
          q.ParamByName('CONTADO').AsCurrency := FacVenContado.AsCurrency;
          q.ParamByName('TARJETA').AsCurrency := FacVenTarjeta.AsCurrency;
          q.ParamByName('IDTARJETA').AsInteger := FacVenIdTarjeta.AsInteger;
          q.ParamByName('CTACTE').AsCurrency := FacVenCtaCte.AsCurrency;
          q.ParamByName('NROCTAS').AsInteger := FacVenNroCtas.AsInteger;
          q.ParamByName('CHEQUE').AsCurrency := FacVenCheque.AsCurrency;
          q.ParamByName('TICKETS').AsCurrency := FacVenTickets.AsCurrency;
          q.ParamByName('OTROSPAGOS').AsCurrency := FacVenOtrosPagos.AsCurrency;
          q.ParamByName('EMPLEADO').AsInteger := FacVenEmpleado.AsInteger;
          q.ParamByName('IMPRESA').AsInteger := FacVenImpresa.AsInteger;
          q.ParamByName('FECHAIS').Clear;
          q.ParamByName('IDMOTNC').AsInteger := FacVenIdMotNc.AsInteger;
          q.ParamByName('USUARIO').AsInteger := FacVenUsuario.AsInteger;
          q.ParamByName('DIR_ENTREGA').AsString := '';
          q.ParamByName('SENAS').AsCurrency := 0;
          q.ParamByName('COBSENAS').AsCurrency := 0;
          q.ParamByName('STATE').AsInteger := 0;
          try
            q.ExecSQL;
          except
            on E:Exception do
            begin
              mmPorDonde.Lines.Add('FacVen '+E.Message);
            end
          end;
          q.Close;
        finally
          q.Free;
        end;

        //********************************** ITEMS ****************************
        ItemsFV.Filter := 'IdFactura = '+FacVenIdFactura.AsString + ' And '+
                          'IdSucursal = '+ FacVenIdSucursal.AsString + ' And '+
                          'IdPuntoVenta = '+ FacVenIdPuntoVenta.AsString;
        ItemsFV.Filtered := True;
        ItemsFV.Open;
        ItemsFV.First;
        While not ItemsFV.Eof do
        begin
          try
            q := TMDOQuery.Create(nil);
            q.Database := dbConversion;
            q.Transaction := trConversion;
            q.SQL.Add('INSERT INTO ITEMSFV ');
            q.SQL.Add('  (IDFACTURA, IDSUCURSAL, IDPUNTOVENTA, IDITEM, IDARTICULO, TALLE, IDSUBDEP, ');
            q.SQL.Add('   FECHAF, CANTIDAD, NROCTAS, PRCBONIFICACION, DESCUENTO, PRECIOCOSTO, ');
            q.SQL.Add('   PRECIONETO, PRECIOFINAL, PRECIOTOTAL, VALORLISTA, EXENTO, IMPINT, IVAIN, ');
            q.SQL.Add('   IDALCIVA, ALICUOTAIVA, IDALCIB, ALCIB, INGBTO, OFERTA, SUBDET, STATE, ');
            q.SQL.Add('   DCTOSTK, ENTCONTADO) ');
            q.SQL.Add('VALUES ');
            q.SQL.Add('  (:IDFACTURA, :IDSUCURSAL, :IDPUNTOVENTA, :IDITEM, :IDARTICULO, :TALLE, ');
            q.SQL.Add('   :IDSUBDEP, :FECHAF, :CANTIDAD, :NROCTAS, :PRCBONIFICACION, :DESCUENTO, ');
            q.SQL.Add('   :PRECIOCOSTO, :PRECIONETO, :PRECIOFINAL, :PRECIOTOTAL, :VALORLISTA, ');
            q.SQL.Add('   :EXENTO, :IMPINT, :IVAIN, :IDALCIVA, :ALICUOTAIVA, :IDALCIB, :ALCIB, ');
            q.SQL.Add('   :INGBTO, :OFERTA, :SUBDET, :STATE, :DCTOSTK, :ENTCONTADO) ');
            q.ParamByName('IDFACTURA').AsInteger := ItemsFVIdFactura.AsInteger;
            q.ParamByName('IDSUCURSAL').AsInteger := ItemsFVIdSucursal.AsInteger;
            q.ParamByName('IDPUNTOVENTA').AsInteger := ItemsFVIdPuntoVenta.AsInteger;
            q.ParamByName('IDITEM').AsInteger := ItemsFVIdItem.AsInteger;
            q.ParamByName('IDARTICULO').AsInteger := ItemsFVIdArticulo.AsInteger;
            q.ParamByName('TALLE').AsInteger := ItemsFVTalle.AsInteger;
            q.ParamByName('IDSUBDEP').AsInteger := ItemsFVIdSubDep.AsInteger;
            q.ParamByName('FECHAF').AsDate := ItemsFVFechaF.AsDateTime;
            q.ParamByName('CANTIDAD').AsFloat := ItemsFVCantidad.AsFloat;
            q.ParamByName('NROCTAS').AsInteger := ItemsFVNroCtas.AsInteger;
            q.ParamByName('PRCBONIFICACION').AsFloat := ItemsFVPrcBonificacion.AsFloat;
            q.ParamByName('DESCUENTO').AsCurrency := ItemsFVDescuento.AsCurrency;
            q.ParamByName('PRECIOCOSTO').AsCurrency := ItemsFVPrecioCosto.AsCurrency;
            q.ParamByName('PRECIONETO').AsCurrency := ItemsFVPrecioNeto.AsCurrency;
            q.ParamByName('PRECIOFINAL').AsCurrency := ItemsFVPrecioFinal.AsCurrency;
            q.ParamByName('PRECIOTOTAL').AsCurrency := ItemsFVPrecioTotal.AsCurrency;
            q.ParamByName('VALORLISTA').AsCurrency := ItemsFVValorLista.AsCurrency;
            q.ParamByName('EXENTO').AsCurrency := ItemsFVExento.AsCurrency;
            q.ParamByName('IMPINT').AsCurrency := ItemsFVImpInt.AsCurrency;
            q.ParamByName('IVAIN').AsCurrency := ItemsFVIvaIn.AsCurrency;
            q.ParamByName('IDALCIVA').AsInteger := ItemsFVIdAlcIva.AsInteger;
            q.ParamByName('ALICUOTAIVA').AsFloat := ItemsFVAlicuotaIva.AsFloat;
            q.ParamByName('IDALCIB').AsInteger := ItemsFVIdAlcIB.AsInteger;
            q.ParamByName('ALCIB').AsFloat := ItemsFVAlcIB.AsFloat;
            q.ParamByName('INGBTO').AsCurrency := ItemsFVIngBto.AsCurrency;
            q.ParamByName('OFERTA').AsInteger := ItemsFVOferta.AsInteger;
            q.ParamByName('SUBDET').AsString := ItemsFVSubDet.AsString;
            q.ParamByName('STATE').AsInteger := 0;
            q.ParamByName('DCTOSTK').AsInteger := Verdadero;
            q.ParamByName('ENTCONTADO').AsCurrency := ItemsFVEntContado.AsCurrency;
            try
              q.ExecSQL;
            except
              on E:Exception do
              begin
                mmPorDonde.Lines.Add('Items FV '+E.Message);
              end
            end;
            q.Close;
          finally
            q.Free;
          end;
          ItemsFV.Next;
        end;
        ItemsFV.Close;
        //********************************** ITEMS ****************************
        Inc(CantTran);
      end;
      FacVen.Next;
    end;
    FacVen.Close;
    if trConversion.InTransaction then
    begin
      try
        trConversion.Commit;
        mmPorDonde.Lines.Add('Fin Grabación FV ');
      except
        on E:Exception do
        begin
          trConversion.Rollback;
          mmPorDonde.Lines.Add('FV '+E.Message);
          raise;
        end
      end;
    end;
  end;
  mmPorDonde.Lines.Add('Finalizado Ventas, Items y Clientes '+TimeToStr(Time));

  //********************************** TARJETAS ****************************
  mmPorDonde.Lines.Add('Tarjetas: Movimientos ');
  Application.ProcessMessages;
  MovTar.Open;

  Esta := 0;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('Select Max(IdMov) as Esta ');
    q.SQL.Add('From MOVTAR ');
    q.Open;
    Esta := q.FieldByName('Esta').AsInteger;
    q.Close;
  finally
    q.Free;
  end;
  if Esta > 0 then
    MovTar.Locate(MovTarIdMov.FieldName, Esta, [])
  else
    MovTar.First;

  CantTran := 1;
  Save_Tot := 0;
  While not MovTar.Eof do
  begin
    Esta := 0;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Select Count(IdMov) as Esta ');
      q.SQL.Add('From MOVTAR ');
      q.SQL.Add('Where IdMov =:IdMov and ');
      q.SQL.Add('      IdTarjeta =:IdTarjeta And ');
      q.SQL.Add('      IdFactura =:IdFactura And ');
      q.SQL.Add('      IdCliente =:IdCliente ');
      q.ParamByName('IDMOV').AsInteger := MovTarIdMov.AsInteger;
      q.ParamByName('IDTARJETA').AsInteger := MovTarIdTarjeta.AsInteger;
      q.ParamByName('IDFACTURA').AsInteger := MovTarIdFactura.AsInteger;
      q.ParamByName('IDCLIENTE').AsInteger := MovTarIdCliente.AsInteger;
      q.Open;
      Esta := q.FieldByName('Esta').AsInteger;
      q.Close;
    finally
      q.Free;
    end;

    if Esta = 0 then
    begin
      if CantTran >= 100 then
      begin
        Save_Tot := Save_Tot + CantTran;
        try
          trConversion.Commit;
          mmPorDonde.Lines.Add('Grabación MovTar '+ IntToStr(Save_Tot));
        except
          on E:Exception do
          begin
            trConversion.Rollback;
            mmPorDonde.Lines.Add('MovTar '+E.Message);
          end
        end;
        CantTran := 1;
      end;
      if CantTran = 1 then
      begin
        if not trConversion.InTransaction then
          trConversion.StartTransaction;
      end;

      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('INSERT INTO MOVTAR ');
        q.SQL.Add('  (IDMOV, IDTARJETA, IDFACTURA, IDCLIENTE, CUPON, LOTE, FECHAOP, CODTAR, ');
        q.SQL.Add('   NROCUOTA, IMPCUOTA, TOTALOP, AUTORIZACION, ESTADO, FECHARESUMEN, FECHAIS, ');
        q.SQL.Add('   CUOTAPAG, NROLIQUIDACION, VENCUOTA, NRORECPAGO, INTMORA, CANTCUOTAS, ');
        q.SQL.Add('   IDCREDITO, INTCUOTA, NRONOTADEBITO, STATE, IDSUCURSAL, ULTIMOPAGO) ');
        q.SQL.Add('VALUES ');
        q.SQL.Add('  (:IDMOV, :IDTARJETA, :IDFACTURA, :IDCLIENTE, :CUPON, :LOTE, :FECHAOP, ');
        q.SQL.Add('   :CODTAR, :NROCUOTA, :IMPCUOTA, :TOTALOP, :AUTORIZACION, :ESTADO, :FECHARESUMEN, ');
        q.SQL.Add('   :FECHAIS, :CUOTAPAG, :NROLIQUIDACION, :VENCUOTA, :NRORECPAGO, :INTMORA, ');
        q.SQL.Add('   :CANTCUOTAS, :IDCREDITO, :INTCUOTA, :NRONOTADEBITO, :STATE, :IDSUCURSAL, :ULTIMOPAGO) ');
        q.ParamByName('IDMOV').AsInteger := MovTarIdMov.AsInteger;
        q.ParamByName('IDTARJETA').AsInteger := MovTarIdTarjeta.AsInteger;
        q.ParamByName('IDFACTURA').AsInteger := MovTarIdFactura.AsInteger;
        q.ParamByName('IDCLIENTE').AsInteger := MovTarIdCliente.AsInteger;
        q.ParamByName('CUPON').AsString := MovTarCupon.AsString;
        q.ParamByName('LOTE').AsString := MovTarLote.AsString;
        q.ParamByName('FECHAOP').AsDate := MovTarFechaOp.AsDateTime;
        q.ParamByName('CODTAR').AsString := MovTarCodTar.AsString;
        q.ParamByName('NROCUOTA').AsInteger := MovTarNroCuota.AsInteger;
        q.ParamByName('IMPCUOTA').AsCurrency := MovTarImpCuota.AsCurrency;
        q.ParamByName('TOTALOP').AsCurrency := MovTarTotalOP.AsCurrency;
        q.ParamByName('AUTORIZACION').AsString := MovTarAutorizacion.AsString;
        q.ParamByName('ESTADO').AsInteger := MovTarEstado.AsInteger;
        q.ParamByName('FECHARESUMEN').AsDate := MovTarFechaResumen.AsDateTime;
        q.ParamByName('FECHAIS').Clear;
        q.ParamByName('CUOTAPAG').AsInteger := MovTarCuotaPag.AsInteger;
        q.ParamByName('NROLIQUIDACION').AsString := MovTarNroLiquidacion.AsString;
        q.ParamByName('VENCUOTA').Clear;
        q.ParamByName('NRORECPAGO').AsString := '0000-00000000';
        q.ParamByName('INTMORA').AsFloat := 0;
        q.ParamByName('CANTCUOTAS').AsInteger := 0;
        q.ParamByName('IDCREDITO').AsInteger := 0;
        q.ParamByName('INTCUOTA').AsInteger := 0;
        q.ParamByName('NRONOTADEBITO').AsString := '0000-00000000';
        q.ParamByName('STATE').AsInteger := 0;
        q.ParamByName('IDSUCURSAL').AsInteger := MovTarIdSucursal.AsInteger;
        q.ParamByName('ULTIMOPAGO').Clear;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('MovTar '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;

      if MovTarIdTarjeta.AsInteger in [1,6,9,19,25,27,28,29,30,32] then
      begin
        Vencimiento := MovTarFechaOP.AsDateTime;
        for i:= 1 to MovTarNroCuota.AsInteger do
        begin
          try
            q := TMDOQuery.Create(nil);
            q.Database := dbConversion;
            q.Transaction := trConversion;
            q.SQL.Add('INSERT INTO MOVCUOTAS ');
            q.SQL.Add('  (IDMOVCRED, NROCUOTA, IDFACTURA, IDSUCURSAL, FECHAV, ');
            q.SQL.Add('   MONTOCUOTA, NRORECPAGO, FECHAP, MONTODEBITO, NRONOTADEB, ');
            q.SQL.Add('   IDRECIBO, IDSUCREC, IDCLIENTE, ESTADO, FECHAIS) ');
            q.SQL.Add('VALUES ');
            q.SQL.Add('  (:IDMOVCRED, :NROCUOTA, :IDFACTURA, :IDSUCURSAL, :FECHAV, ');
            q.SQL.Add('   :MONTOCUOTA, :NRORECPAGO, :FECHAP, :MONTODEBITO, :NRONOTADEB, ');
            q.SQL.Add('   :IDRECIBO, :IDSUCREC, :IDCLIENTE, :ESTADO, :FECHAIS) ');
            q.ParamByName('IDMOVCRED').AsInteger := MovTarIdMov.AsInteger;
            q.ParamByName('NROCUOTA').AsInteger := i;
            q.ParamByName('IDFACTURA').AsInteger := MovTarIdFactura.AsInteger;
            q.ParamByName('IDSUCURSAL').AsInteger := MovTarIdSucursal.AsInteger;
            q.ParamByName('FECHAV').AsDate := Vencimiento;
            q.ParamByName('MONTOCUOTA').AsCurrency := MovTarImpCuota.AsCurrency;
            q.ParamByName('NRORECPAGO').AsString := '0000-00000000';
            q.ParamByName('FECHAP').Clear;
            q.ParamByName('MONTODEBITO').AsCurrency := 0;
            q.ParamByName('NRONOTADEB').AsString := '0000-00000000';
            q.ParamByName('IDRECIBO').AsInteger := 0;
            q.ParamByName('IDSUCREC').AsInteger := 0;
            q.ParamByName('IDCLIENTE').AsInteger := MovTarIdCliente.AsInteger;
            q.ParamByName('ESTADO').AsInteger := 0;
            q.ParamByName('FECHAIS').Clear;
            try
              q.ExecSQL;
            except
              on E:Exception do
              begin
                mmPorDonde.Lines.Add('Mov Cuotas '+E.Message);
              end
            end;
            q.Close;
          finally
            q.Free;
          end;
          Vencimiento := IncMonth(Vencimiento);
        end;
      end;
      Inc(CantTran);
    end;
    MovTar.Next;
  end;
  MovTar.Close;
  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación Tarjetas ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('Tarjetas '+E.Message);
        raise;
      end
    end;
  end;
  mmPorDonde.Lines.Add('Finalizado Tarjetas '+TimeToStr(Time));

  R_Rend.Open;
  Esta := 0;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('Select Max(IdRend) as Esta ');
    q.SQL.Add('From R_Rend ');
    q.Open;
    Esta := q.FieldByName('Esta').AsInteger;
    q.Close;
  finally
    q.Free;
  end;

  if Esta > 0 then
    R_Rend.Locate(R_RendIdRend.FieldName, Esta, [])
  else
    R_Rend.First;

  mmPorDonde.Lines.Add('Rendiciones '+TimeToStr(Time));
  Save_Tot := 0;
  CantTran := 1;
  While not R_Rend.Eof do
  begin
    Esta := 0;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Select Count(IdRend) as Esta ');
      q.SQL.Add('From R_Rend ');
      q.SQL.Add('Where IdSuc =:IdSuc ');
      q.ParamByName('IDSuc').AsInteger := R_RendIdSuc.AsInteger;
      q.Open;
      Esta := q.FieldByName('Esta').AsInteger;
      q.Close;
    finally
      q.Free;
    end;

    if Esta = 0 then
    begin
      if CantTran >= 30 then
      begin
        Save_Tot := Save_Tot + CantTran;
        try
          trConversion.Commit;
          mmPorDonde.Lines.Add('Grabación Rend '+ IntToStr(Save_Tot));
        except
          on E:Exception do
          begin
            trConversion.Rollback;
            mmPorDonde.Lines.Add('Rendicion '+E.Message);
          end
        end;
        CantTran := 1;
      end;

      if CantTran = 1 then
      begin
        if not trConversion.InTransaction then
          trConversion.StartTransaction;
      end;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('INSERT INTO R_Rend ');
        q.SQL.Add('  (IDREND, IDSUC, FECHAR, TVENTA, TPESOS, TTICKETS, TSAF, TCOBOSUC, TCOBRADO, ');
        q.SQL.Add('   TTARJETA, TCHEQUES, TSENAS, TNCRED, TGASTOSE, TGASTOST, DIFERENCIA, ');
        q.SQL.Add('   IDCUENTA, BOLDEP, DEPOSITO, FECHAIS, IDMOVBCO) ');
        q.SQL.Add('VALUES ');
        q.SQL.Add('  (:IDREND, :IDSUC, :FECHAR, :TVENTA, :TPESOS, :TTICKETS, :TSAF, :TCOBOSUC, ');
        q.SQL.Add('   :TCOBRADO,  :TTARJETA, :TCHEQUES, :TSENAS, :TNCRED, :TGASTOSE, :TGASTOST, ');
        q.SQL.Add('   :DIFERENCIA, :IDCUENTA, :BOLDEP, :DEPOSITO, :FECHAIS, :IDMOVBCO) ');
        q.ParamByName('IDREND').AsInteger := R_RendIdRend.AsInteger;
        q.ParamByName('IDSUC').AsInteger := R_RendIdSuc.AsInteger;
        q.ParamByName('FECHAR').AsDate := R_RendFechaR.AsDateTime;
        q.ParamByName('TVENTA').AsCurrency := R_RendTVenta.AsCurrency;
        q.ParamByName('TPESOS').AsCurrency := R_RendTPesos.AsCurrency;
        q.ParamByName('TTICKETS').AsCurrency := R_RendTTickets.AsCurrency;
        q.ParamByName('TSAF').AsCurrency := 0;
        q.ParamByName('TCOBOSUC').AsCurrency := 0;
        q.ParamByName('TCOBRADO').AsCurrency := 0;
        q.ParamByName('TTARJETA').AsCurrency := R_RendTTarjeta.AsCurrency;
        q.ParamByName('TCHEQUES').AsCurrency := R_RendTCheques.AsCurrency;
        q.ParamByName('TSENAS').AsCurrency := R_RendTSenas.AsCurrency;
        q.ParamByName('TNCRED').AsCurrency := R_RendTNCred.AsCurrency;
        q.ParamByName('TGASTOSE').AsCurrency := R_RendTGastosE.AsCurrency;
        q.ParamByName('TGASTOST').AsCurrency := R_RendTGastosT.AsCurrency;
        q.ParamByName('DIFERENCIA').AsCurrency := R_RendDiferencia.AsCurrency;
        q.ParamByName('IDCUENTA').AsInteger := R_RendIdCuenta.AsInteger;
        q.ParamByName('BOLDEP').AsString := R_RendBolDep.AsString;
        q.ParamByName('DEPOSITO').AsCurrency := R_RendDeposito.AsCurrency;
        q.ParamByName('FECHAIS').Clear;
        q.ParamByName('IDMOVBCO').AsInteger := R_RendIdMovBco.AsInteger;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('Rendiciones '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;
      Inc(CantTran);
    end;
    R_Rend.Next;
  end;
  R_Rend.Close;

  if trConversion.InTransaction then
  begin
    try
      trConversion.Commit;
      mmPorDonde.Lines.Add('Fin Grabación Rendiciones ');
    except
      on E:Exception do
      begin
        trConversion.Rollback;
        mmPorDonde.Lines.Add('Rendiciones '+E.Message);
        raise;
      end
    end;
  end;
  mmPorDonde.Lines.Add('Finalizado Rendiciones '+TimeToStr(Time));
  DBIsam_ConnectDB(2);
end;


procedure TfrmConversion.DBIsam_Pasa_Varios;
var
  q,t: TMDOQuery;
  Esta: Integer;
begin
  DBIsam_ConnectDB(1);
  mmPorDonde.Lines.Add('Varios: Empleados ');
  Application.ProcessMessages;
  (*
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('DELETE FROM EMPLEADOS ');
    try
      q.ExecSQL;
    except
      on E:Exception do
      begin
        mmPorDonde.Lines.Add('BORRADO EMPLEADOS '+E.Message);
      end
    end;
    q.Close;
  finally
    q.Free;
  end;
  *)

  Empleados.Open;
  Empleados.First;
  While not Empleados.Eof do
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('Select Count(*) as Esta ');
      q.SQL.Add('From EMPLEADOS ');
      q.SQL.Add('Where IdEmpleado = :E ');
      q.ParamByName('E').AsInteger := EmpleadosIdEmpleado.AsInteger;
      q.Open;
      Esta := q.FieldByName('Esta').AsInteger;
      q.Close;
    finally
      q.Free;
    end;
    if Esta = 0 then
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('INSERT INTO EMPLEADOS');
        q.SQL.Add('  (IDEMPLEADO, NOMBRE, DIRECCION, LOCALIDAD, PROVINCIA, CODPOSTAL, TELEFONOS,');
        q.SQL.Add('   TIPOIVA, TIPODOC, DOCUMENTO, SALDO, AUTORIZADESCUENTO, IDTAREAFUNCION,');
        q.SQL.Add('   PASSW, ACTIVO)');
        q.SQL.Add('VALUES');
        q.SQL.Add('  (:IDEMPLEADO, :NOMBRE, :DIRECCION, :LOCALIDAD, :PROVINCIA, :CODPOSTAL,');
        q.SQL.Add('   :TELEFONOS, :TIPOIVA, :TIPODOC, :DOCUMENTO, :SALDO, :AUTORIZADESCUENTO, ');
        q.SQL.Add('   :IDTAREAFUNCION, :PASSW, :ACTIVO)');
        q.ParamByName('IDEMPLEADO').AsInteger := EmpleadosIdEmpleado.AsInteger;
        q.ParamByName('NOMBRE').AsString := EmpleadosNombre.AsString;
        q.ParamByName('DIRECCION').AsString := EmpleadosDireccion.AsString;
        q.ParamByName('LOCALIDAD').AsString := EmpleadosLocalidad.AsString;
        q.ParamByName('PROVINCIA').AsString := EmpleadosProvincia.AsString;
        q.ParamByName('CODPOSTAL').AsString := EmpleadosCodPostal.AsString;
        q.ParamByName('TELEFONOS').AsString := EmpleadosTelefonos.AsString;
        q.ParamByName('TIPOIVA').AsInteger := EmpleadosTipoIva.AsInteger;
        q.ParamByName('TIPODOC').AsInteger := EmpleadosTipoDoc.AsInteger;
        q.ParamByName('DOCUMENTO').AsString := EmpleadosDocumento.AsString;
        q.ParamByName('SALDO').AsCurrency := 0;
        if EmpleadosAutorizaDescuento.AsBoolean then
          q.ParamByName('AUTORIZADESCUENTO').AsInteger := Verdadero
        else
          q.ParamByName('AUTORIZADESCUENTO').AsInteger := Falso;
        q.ParamByName('IDTAREAFUNCION').AsInteger := EmpleadosIdTareaFuncion.AsInteger;
        q.ParamByName('PASSW').AsString := EmpleadosPassWord.AsString;
        q.ParamByName('ACTIVO').AsInteger := Verdadero;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('Personal '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;
    end;
    Empleados.Next;
  end;

  Empleados.Close;
  try
    trConversion.Commit;
  except
    trConversion.Rollback;
    raise;
  end;


  (*
  mmPorDonde.Lines.Add('Varios: Sucursales ');
  Application.ProcessMessages;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('DELETE FROM SUCURSALES ');
    try
      q.ExecSQL;
    except
      on E:Exception do
      begin
        mmPorDonde.Lines.Add('BORRADO SUCURSALES '+E.Message);
      end
    end;
    q.Close;
  finally
    q.Free;
  end;

  Sucursales.Open;
  Sucursales.First;
  While not Sucursales.Eof do
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO SUCURSALES ');
      q.SQL.Add('  (IDSUCURSAL, NOMBRESUC, DIRECCIONSUC, LOCALIDADSUC, PROVINCIASUC, COPOSTALSUC, ');
      q.SQL.Add('   TELEFONOSUC, DIRECTORIO, ACTUALIZACIONES, REMOTA, DETSUC, FECHAINICIO, ');
      q.SQL.Add('   FECHATINV, NROREMITOT, NROREMITOI, NEMP, NPTO, TIPOFTP, HOSTNAME, USUARIO, ');
      q.SQL.Add('   PASSWFTP, DIRFTPENVIOS, DIRFTPRECEP, CONSUBDEP, ULTIMA_ACT, ULTIMA_ACT_ORG, ');
      q.SQL.Add('   IDBANCOT, IDBANCOB, IDBANCOE, IDBANCOP, IDLISTA, PRCLISTA) ');
      q.SQL.Add('VALUES ');
      q.SQL.Add('  (:IDSUCURSAL, :NOMBRESUC, :DIRECCIONSUC, :LOCALIDADSUC, :PROVINCIASUC, ');
      q.SQL.Add('   :COPOSTALSUC, :TELEFONOSUC, :DIRECTORIO, :ACTUALIZACIONES, :REMOTA, ');
      q.SQL.Add('   :DETSUC, :FECHAINICIO, :FECHATINV, :NROREMITOT, :NROREMITOI, :NEMP, ');
      q.SQL.Add('   :NPTO, :TIPOFTP, :HOSTNAME, :USUARIO, :PASSWFTP, :DIRFTPENVIOS, :DIRFTPRECEP, ');
      q.SQL.Add('   :CONSUBDEP, :ULTIMA_ACT, :ULTIMA_ACT_ORG, :IDBANCOT, :IDBANCOB, :IDBANCOE, ');
      q.SQL.Add('   :IDBANCOP, :IDLISTA, :PRCLISTA) ');
      q.ParamByName('IDSUCURSAL').AsInteger := SucursalesIdSucursal.AsInteger;
      q.ParamByName('NombreSuc').AsString := SucursalesNombreSuc.AsString;
      q.ParamByName('DetSuc').AsString := SucursalesDetSuc.AsString;
      q.ParamByName('DireccionSuc').AsString := SucursalesDireccionSuc.AsString;
      q.ParamByName('LocalidadSuc').AsString := SucursalesLocalidadSuc.AsString;
      q.ParamByName('ProvinciaSuc').AsString := SucursalesProvinciaSuc.AsString;
      q.ParamByName('CoPostalSuc').AsString := SucursalesCoPostalSuc.AsString;
      q.ParamByName('TelefonoSuc').AsString := SucursalesTelefonoSuc.AsString;
      q.ParamByName('Directorio').AsString := SucursalesDirectorio.AsString;
      q.ParamByName('Actualizaciones').AsString := SucursalesActualizaciones.AsString;
      q.ParamByName('NroRemitoT').AsString := SucursalesNroRemitoT.AsString;
      q.ParamByName('NroRemitoI').AsString := SucursalesNroRemitoI.AsString;
      q.ParamByName('HostName').AsString := SucursalesHostName.AsString;
      q.ParamByName('Usuario').AsString := SucursalesUsuario.AsString;
      q.ParamByName('PASSWFTP').AsString := SucursalesPassWord.AsString;
      q.ParamByName('DirFTPEnvios').AsString := SucursalesDirFTPEnvios.AsString;
      q.ParamByName('DirFTPRecep').AsString := SucursalesDirFTPRecep.AsString;
      q.ParamByName('NEmp').AsInteger := SucursalesNEmp.AsInteger;
      q.ParamByName('NPto').AsInteger := SucursalesNPto.AsInteger;
      q.ParamByName('FechaInicio').AsDateTime := SucursalesFechaInicio.AsDateTime;
      q.ParamByName('FechaTInv').AsDateTime := SucursalesFechaTInv.AsDateTime;
      if SucursalesRemota.AsBoolean then
        q.ParamByName('Remota').AsInteger := Verdadero
      else
        q.ParamByName('Remota').AsInteger := Falso;
      if SucursalesConSubDep.AsBoolean then
        q.ParamByName('ConSubDep').AsInteger := Verdadero
      else
        q.ParamByName('ConSubDep').AsInteger := Falso;
      if SucursalesTipoFTP.AsBoolean then
        q.ParamByName('TipoFTP').AsInteger := Verdadero
      else
        q.ParamByName('TipoFTP').AsInteger := Falso;
      if SucursalesTipoFTP.AsBoolean then
        q.ParamByName('TipoFTP').AsInteger := Verdadero
      else
        q.ParamByName('TipoFTP').AsInteger := Falso;
      q.ParamByName('ULTIMA_ACT').Clear;
      q.ParamByName('ULTIMA_ACT_ORG').Clear;
      q.ParamByName('IDBANCOT').AsInteger := SucursalesIdBancoT.AsInteger;
      q.ParamByName('IDBANCOB').AsInteger := SucursalesIdBancoB.AsInteger;
      q.ParamByName('IDBANCOE').AsInteger := SucursalesIdBancoE.AsInteger;
      q.ParamByName('IDBANCOP').AsInteger := SucursalesIdBancoP.AsInteger;
      q.ParamByName('IDLISTA').AsInteger := 0;
      q.ParamByName('PRCLISTA').AsFloat := 0;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Sucursales '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    Sucursales.Next;
  end;
  Sucursales.Close;

  try
    trConversion.Commit;
  except
    trConversion.Rollback;
    raise;
  end;

  mmPorDonde.Lines.Add('Varios: SubDeps ');
  Application.ProcessMessages;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dbConversion;
    q.Transaction := trConversion;
    q.SQL.Add('DELETE FROM SUBDEPOSITOS ');
    try
      q.ExecSQL;
    except
      on E:Exception do
      begin
        mmPorDonde.Lines.Add('BORRADO SUBDEPOSITOS '+E.Message);
      end
    end;
    q.Close;
  finally
    q.Free;
  end;

  SubDepositos.Open;
  SubDepositos.First;
  While not SubDepositos.Eof do
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('INSERT INTO SUBDEPOSITOS ');
      q.SQL.Add('  (IDSUBDEP, IDSUCURSAL, DETSUBDEP) ');
      q.SQL.Add('VALUES ');
      q.SQL.Add('  (:IDSUBDEP, :IDSUCURSAL, :DETSUBDEP) ');
      q.ParamByName('IDSUBDEP').AsInteger := SubDepositosIdSubDep.AsInteger;
      q.ParamByName('IDSUCURSAL').AsInteger := SubDepositosIdSucursal.AsInteger;
      q.ParamByName('DETSUBDEP').AsString := SubDepositosDetSubDep.AsString;
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('Sub Dep '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    SubDepositos.Next;
  end;
  SubDepositos.Close;

  try
    trConversion.Commit;
  except
    trConversion.Rollback;
    raise;
  end;

  mmPorDonde.Lines.Add('Tarjetas: Entidades ');
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM TARJETAS ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO TARJETAS '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    trConversion.Rollback;
  end;

  Tarjetas.Open;
  Tarjetas.First;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    While not Tarjetas.Eof do
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('INSERT INTO TARJETAS ');
        q.SQL.Add('  (IDTARJETA, TARJETA, DIAPRESENTACION, TELAUTORIZACION, CODCOMERCIO, ');
        q.SQL.Add('   CODENTIDAD, LIMITE, DOMICILIO, DEPARTAMENTO, PROVINCIA, COMISION, ');
        q.SQL.Add('   SALDOVENCIDO,SALDOAVENCER, TIPOENT, DOCUMENTO, TDOCFISCAL, TIPOIVA, ');
        q.SQL.Add('   IDPROVEEDOR, CODPOSTAL) ');
        q.SQL.Add('VALUES ');
        q.SQL.Add('  (:IDTARJETA, :TARJETA, :DIAPRESENTACION, :TELAUTORIZACION, :CODCOMERCIO, ');
        q.SQL.Add('   :CODENTIDAD, :LIMITE, :DOMICILIO, :DEPARTAMENTO, :PROVINCIA, :COMISION, ');
        q.SQL.Add('   :SALDOVENCIDO, :SALDOAVENCER, :TIPOENT, :DOCUMENTO, :TDOCFISCAL, :TIPOIVA, ');
        q.SQL.Add('   :IDPROVEEDOR, :CODPOSTAL) ');
        q.ParamByName('IDTARJETA').AsInteger := TarjetasIdTarjeta.AsInteger;
        q.ParamByName('TARJETA').AsString := TarjetasTarjeta.AsString;
        q.ParamByName('DIAPRESENTACION').AsInteger := TarjetasDiaPresentacion.AsInteger;
        q.ParamByName('TELAUTORIZACION').AsString := TarjetasTelAutorizacion.AsString;
        q.ParamByName('CODCOMERCIO').AsString := TarjetasCodComercio.AsString;
        q.ParamByName('CODENTIDAD').AsString := TarjetasCodEntidad.AsString;
        q.ParamByName('LIMITE').AsCurrency := TarjetasLimite.AsCurrency;
        q.ParamByName('DOMICILIO').AsString := TarjetasDomicilio.AsString;
        q.ParamByName('DEPARTAMENTO').AsString := TarjetasDepartamento.AsString;
        q.ParamByName('PROVINCIA').AsString := TarjetasProvincia.AsString;
        q.ParamByName('COMISION').AsFloat := 0;
        q.ParamByName('SALDOVENCIDO').AsCurrency := TarjetasSaldoVencido.AsCurrency;
        q.ParamByName('SALDOAVENCER').AsCurrency := TarjetasSaldoAVencer.AsCurrency;
        q.ParamByName('TIPOENT').AsInteger := 1;
        q.ParamByName('DOCUMENTO').AsString := '';
        q.ParamByName('TDOCFISCAL').AsInteger := 0;
        q.ParamByName('TIPOIVA').AsInteger := 1;
        q.ParamByName('IDPROVEEDOR').AsInteger := 0;
        q.ParamByName('CODPOSTAL').AsString := '';
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('Tarjetas '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;
      Tarjetas.Next;
    end;
    Tarjetas.Close;
    trConversion.Commit;
  except
    trConversion.Rollback;
    raise;
  end;

  mmPorDonde.Lines.Add('Tarjetas: Planes ');
  Application.ProcessMessages;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := dbConversion;
      q.Transaction := trConversion;
      q.SQL.Add('DELETE FROM TARPLAN ');
      try
        q.ExecSQL;
      except
        on E:Exception do
        begin
          mmPorDonde.Lines.Add('BORRADO TARJ PLANES '+E.Message);
        end
      end;
      q.Close;
    finally
      q.Free;
    end;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('BORRADO TARJ PLANES '+E.Message);
      trConversion.Rollback;
    end
  end;

  TarPlan.Open;
  TarPlan.First;
  try
    if not trConversion.InTransaction then
      trConversion.StartTransaction;
    While not TarPlan.Eof do
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dbConversion;
        q.Transaction := trConversion;
        q.SQL.Add('INSERT INTO TARPLAN ');
        q.SQL.Add('  (IDTARJETA, NROCUOTA, IDSUCURSAL, COEFPLAN, ');
        q.SQL.Add('   MODOPAGO, MAXDCTO, MAXDCTOII) ');
        q.SQL.Add('VALUES ');
        q.SQL.Add('  (:IDTARJETA, :NROCUOTA, :IDSUCURSAL, :COEFPLAN, ');
        q.SQL.Add('   :MODOPAGO, :MAXDCTO, :MAXDCTOII) ');
        q.ParamByName('IDTARJETA').AsInteger := TarPlanIdTarjeta.AsInteger;
        q.ParamByName('NROCUOTA').AsInteger := TarPlanNroCuota.AsInteger;
        q.ParamByName('IDSUCURSAL').AsInteger := TarPlanIdSucursal.AsInteger;
        q.ParamByName('COEFPLAN').AsFloat := TarPlanCoefPlan.AsFloat;
        q.ParamByName('MODOPAGO').AsInteger := 0;
        q.ParamByName('MAXDCTO').AsFloat := TarPlanMaxDto.AsFloat;
        q.ParamByName('MAXDCTOII').AsFloat := TarPlanMaxDtoII.AsFloat;
        try
          q.ExecSQL;
        except
          on E:Exception do
          begin
            mmPorDonde.Lines.Add('Planes '+E.Message);
          end
        end;
        q.Close;
      finally
        q.Free;
      end;
      TarPlan.Next;
    end;
    TarPlan.Close;
    trConversion.Commit;
  except
    on E:Exception do
    begin
      trConversion.Rollback;
      mmPorDonde.Lines.Add('Planes '+E.Message);
      raise;
    end
  end;
  *)
  mmPorDonde.Lines.Add('Finalizado Varios ');
  DBIsam_ConnectDB(2);
end;

procedure TfrmConversion.btnPasaArtsClick(Sender: TObject);
begin
  DBIsam_Pasa_Arts;
end;

procedure TfrmConversion.btnGenSucClick(Sender: TObject);
begin
  mmPorDonde.Lines.Add('Actualización Ventas '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Pasa_Ventas;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Ventas '+E.Message);
    end
  end;

  mmPorDonde.Lines.Add('Actualización Mov Tarj '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Pasa_MovTar;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Mov Tar  '+E.Message);
    end
  end;

  mmPorDonde.Lines.Add('Actualización Inventarios '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Pasa_Inventarios;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Pasa Inventarios '+E.Message);
    end
  end;

  mmPorDonde.Lines.Add('Actualización Transferencias '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Pasa_Transferencias
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Pasa Transferencias '+E.Message);
    end
  end;

  mmPorDonde.Lines.Add('Actulización Finalizado '+TimeToStr(Time));
  Application.ProcessMessages;
end;

procedure TfrmConversion.btnActulizarDBIsamClick(Sender: TObject);
begin
  mmPorDonde.Lines.Add('Actulización Productos '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Actualiza_Arts;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Act Arts '+E.Message);
    end
  end;

  mmPorDonde.Lines.Add('Actulización Compras '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Pasa_Compras;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Act Compras '+E.Message);
    end
  end;

  mmPorDonde.Lines.Add('Actulización CCP Y OP '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Pasa_CC_OP;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Act CC_OP '+E.Message);
    end
  end;

  mmPorDonde.Lines.Add('Actulización Bancos '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Pasa_Bcos;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Act Bancos '+E.Message);
    end
  end;

  mmPorDonde.Lines.Add('Act Stocks e Inv '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Pasa_Inventarios;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Act Inventarios '+E.Message);
    end
  end;

  mmPorDonde.Lines.Add('Actulización Transferencias '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Pasa_Transferencias;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Act Transferencias '+E.Message);
    end
  end;

  mmPorDonde.Lines.Add('Actulización Ventas '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Pasa_Ventas;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Act Ventas '+E.Message);
    end
  end;

  mmPorDonde.Lines.Add('Actulización Mov Tarj '+TimeToStr(Time));
  Application.ProcessMessages;
  try
    DBIsam_Pasa_MovTar;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Act Mov Tar  '+E.Message);
    end
  end;
  mmPorDonde.Lines.Add('Actulización Finalizado '+TimeToStr(Time));
  Application.ProcessMessages;
end;

procedure TfrmConversion.btnAllsTxtsClick(Sender: TObject);
begin
  PasoTxt := Vacio;
  if sfdTxts.Execute then
  begin
    lblPasoTxt.Caption := sfdTxts.SelectedPathName;
    Application.ProcessMessages;
    if Trim(lblPasoTxt.Caption) > Vacio then
    begin
      PasoTxt := Trim(lblPasoTxt.Caption);
      btnTodoEl_Proceso.Enabled := True;
    end;
  end;
end;

procedure TfrmConversion.btnAuxProdsClick(Sender: TObject);
begin
  DBIsam_Pasa_AuxProds;
end;

procedure TfrmConversion.btnPasaComprasClick(Sender: TObject);
begin
  DBIsam_Pasa_Compras;
end;

procedure TfrmConversion.btnPasaCC_OPClick(Sender: TObject);
begin
  DBIsam_Pasa_CC_OP;
end;

procedure TfrmConversion.btnPasaBcosClick(Sender: TObject);
begin
  DBIsam_Pasa_Bcos;
end;

procedure TfrmConversion.btnPasaVtasClick(Sender: TObject);
begin
  DBIsam_Pasa_Ventas;
end;

procedure TfrmConversion.btnRendicionesClick(Sender: TObject);
begin
  //
end;

procedure TfrmConversion.btnPasaMTarClick(Sender: TObject);
begin
  DBIsam_Pasa_MovTar;
end;

procedure TfrmConversion.btnPasaProvsClick(Sender: TObject);
begin
  DBIsam_Pasa_Provs;
end;

procedure TfrmConversion.btnPasaTransfClick(Sender: TObject);
begin
  DBIsam_Pasa_Transferencias;
end;

procedure TfrmConversion.btnPasaInvClick(Sender: TObject);
begin
  DBIsam_Pasa_Inventarios;
end;

procedure TfrmConversion.btnPasaVariosClick(Sender: TObject);
begin
  try
    DBIsam_Pasa_Arts;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Pasa Arts '+E.Message);
    end
  end;

  try
    DBIsam_Pasa_Compras;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Pasa Compras '+E.Message);
    end
  end;

  try
    DBIsam_Pasa_CC_OP;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Pasa CC_OP '+E.Message);
    end
  end;

  try
    DBIsam_Pasa_Bcos;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Pasa Bancos '+E.Message);
    end
  end;

  try
    DBIsam_Pasa_Varios;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Pasa Varios '+E.Message);
    end
  end;

  try
    DBIsam_Pasa_Inventarios;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Pasa Inventarios '+E.Message);
    end
  end;

  try
    DBIsam_Pasa_Transferencias;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Pasa Transferencias '+E.Message);
    end
  end;

  try
    DBIsam_Pasa_Ventas;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Ventas '+E.Message);
    end
  end;

  try
    DBIsam_Pasa_MovTar;
  except
    on E:Exception do
    begin
      mmPorDonde.Lines.Add('Mov Tar  '+E.Message);
    end
  end;
  mmPorDonde.Lines.Add('Finalizado ');
end;
(*

DBIsam_Actualiza_Compras

*)
end.
