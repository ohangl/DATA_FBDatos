unit uProveedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Provider, DB, DBClient, MDOCustomDataSet, MDOQuery, ExtCtrls,
  Grids, Wwdbigrd, Wwdbgrid, wwdbdatetimepicker, RzButton, wwcheckbox,
  wwdblook, Mask, wwdbedit, DBCtrls, ComCtrls, Wwdotdot, Wwdbcomb, RzPanel,
  RzTabs, RzRadChk, RzDBChk, RzEdit, RzCmboBx;

type
  TfrmProveedores = class(TForm)
    pcProveedores: TRzPageControl;
    tsDatosProv: TRzTabSheet;
    pnlNroProv: TRzPanel;
    lblCodProv: TDBText;
    gbPercepciones: TRzGroupBox;
    cbxPercp: TRzDBCheckBox;
    lblNroRegPer: TLabel;
    edtNroRegPer: TwwDBEdit;
    gbRetencionesG: TRzGroupBox;
    lblPrcRetenG: TLabel;
    edtPrcRetenG: TwwDBEdit;
    lblMtoRetenG: TLabel;
    edtMtoRetenG: TwwDBEdit;
    lblValNoRetG: TLabel;
    cbxNoRetenG: TRzDBCheckBox;
    gbDatosComp: TRzGroupBox;
    lblNomVj: TLabel;
    lblTelVj: TLabel;
    lblNomCt: TLabel;
    lblTelCt: TLabel;
    bvlProv1: TBevel;
    lblContacto: TLabel;
    bvlProv3: TBevel;
    lblMailWeb: TLabel;
    bvlProv4: TBevel;
    lblMailP: TLabel;
    lblWebP: TLabel;
    bvlProv7: TBevel;
    lblAutorizado: TLabel;
    edtAutorizado: TwwDBEdit;
    edtDocAuto: TwwDBEdit;
    edtNomContacto: TwwDBEdit;
    edtTelContacto: TwwDBEdit;
    edtMailProv: TwwDBEdit;
    edtWebProv: TwwDBEdit;
    pnlNavPro: TRzPanel;
    btnInsertPro: TRzBitBtn;
    btnSavePro: TRzBitBtn;
    btnCancelPro: TRzBitBtn;
    btnEditPro: TRzBitBtn;
    btnBuscarPro: TRzBitBtn;
    btnPriorProv: TRzBitBtn;
    btnSigProv: TRzBitBtn;
    btnFirstProv: TRzBitBtn;
    btnLastProv: TRzBitBtn;
    btnInfoProv: TRzBitBtn;

    dsProvs: TDataSource;
    dspProveedores: TDataSetProvider;
    Prov: TClientDataSet;
    ProvIDPROVEEDOR: TIntegerField;
    ProvNOMBRE: TStringField;
    ProvNOMBREFANTASIA: TStringField;
    ProvDIRECCION: TStringField;
    ProvLOCALIDAD: TStringField;
    ProvPROVINCIA: TStringField;
    ProvCODPOSTAL: TStringField;
    ProvTELEFONOS: TStringField;
    ProvTELFAX: TStringField;
    ProvMAIL: TStringField;
    ProvWEB: TStringField;
    ProvTIPOIVA: TSmallintField;
    ProvTIPODOC: TSmallintField;
    ProvDOCUMENTO: TStringField;
    ProvINGBRUTOS: TStringField;
    ProvCONTACTO: TStringField;
    ProvTELCONTACTO: TStringField;
    ProvIDSUCURSAL: TIntegerField;
    ProvCODCTACON: TIntegerField;
    ProvAUTORIZADO: TStringField;
    ProvDOCAUTOR: TStringField;
    ProvPERCEPCIONES: TSmallintField;
    ProvNROREGPERCP: TStringField;
    ProvNORETENCION_I: TSmallintField;
    ProvNROREGRETEN_I: TStringField;
    ProvVALIDEZNORET_I: TDateField;
    ProvMONTORETENCION_I: TBCDField;
    ProvPRCRETENCION_I: TBCDField;
    ProvNORETENCION_G: TSmallintField;
    ProvNROREGRETEN_G: TStringField;
    ProvMONTORETENCION_G: TBCDField;
    ProvPRCRETENCION_G: TBCDField;
    ProvMONTORETENCION_B: TBCDField;
    ProvPRCRETENCION_B1: TBCDField;
    ProvPRCRETENCION_B2: TBCDField;
    ProvPROVSERVICIOS: TSmallintField;
    ProvVALIDEZNORET_G: TDateField;
    pnlProv: TRzPanel;
    tsInformes: TRzTabSheet;
    btnSalPro: TRzBitBtn;
    pnInfProv: TRzPanel;
    btnExportarPro: TRzBitBtn;
    btnPrintPro: TRzBitBtn;
    btnInfPrv: TRzBitBtn;

    dsqInfProv: TDataSource;
    qInfProv: TMDOQuery;
    qInfProvIDPROVEEDOR: TIntegerField;
    qInfProvNOMBRE: TMDOStringField;
    qInfProvNOMBREFANTASIA: TMDOStringField;
    qInfProvDIRECCION: TMDOStringField;
    qInfProvLOCALIDAD: TMDOStringField;
    qInfProvPROVINCIA: TMDOStringField;
    qInfProvCODPOSTAL: TMDOStringField;
    qInfProvTELEFONOS: TMDOStringField;
    qInfProvTELFAX: TMDOStringField;
    qInfProvMAIL: TMDOStringField;
    qInfProvWEB: TMDOStringField;
    qInfProvTIPOIVA: TSmallintField;
    qInfProvTIPODOC: TSmallintField;
    qInfProvDOCUMENTO: TMDOStringField;
    qInfProvINGBRUTOS: TMDOStringField;
    qInfProvCONTACTO: TMDOStringField;
    qInfProvTELCONTACTO: TMDOStringField;
    qInfProvDETDOC: TMDOStringField;
    qInfProvDETIVA: TMDOStringField;
    gInfPrv: TwwDBGrid;
    tsSaldosCC: TRzTabSheet;
    pnlCCInformes: TRzPanel;
    lblInfSaldos: TLabel;
    btnInformes: TRzBitBtn;
    btnExportaInf: TRzBitBtn;
    gCCInf: TwwDBGrid;

    dsProCCInf: TDataSource;
    qProCCInf: TMDOQuery;
    tsBusqueda: TRzTabSheet;
    pnlBusProv: TRzPanel;
    lblNomProv: TLabel;
    gProveedoresEncontrados: TwwDBGrid;
    dsqBuscaPro: TDataSource;
    qBuscaPro: TMDOQuery;
    qBuscaProIDPROVEEDOR: TIntegerField;
    qBuscaProNombre: TStringField;
    qBuscaProNOMBREFANTASIA: TMDOStringField;
    qBuscaProDocumento: TStringField;
    qBuscaProTELEFONOS: TMDOStringField;
    qBuscaProIVACORTO: TMDOStringField;
    qBuscaProTELFAX: TMDOStringField;
    edtProBus: TRzEdit;
    edtValNoRetG: TwwDBDateTimePicker;
    qInfProvIDSUCURSAL: TIntegerField;
    gbRetIngBtos: TRzGroupBox;
    lblPrcRetenIB: TLabel;
    edtPrcRetenIB: TwwDBEdit;
    lblMtoRetenIB: TLabel;
    edtMtoRetenIB: TwwDBEdit;
    gbRetencionesI: TRzGroupBox;
    lblPrcRetenI: TLabel;
    lblMtoRetenI: TLabel;
    lblValNoRetI: TLabel;
    edtPrcRetenI: TwwDBEdit;
    edtMtoRetenI: TwwDBEdit;
    cbxNoRetenI: TRzDBCheckBox;
    edtValNoRetI: TwwDBDateTimePicker;
    lblPrcRetenLH: TLabel;
    edtPrcRetenLH: TwwDBEdit;
    gbSegSoc: TRzGroupBox;
    lblPrcRetenSS: TLabel;
    edtPrcRetenSS: TwwDBEdit;
    ProvMTORETENCION_SS: TBCDField;
    ProvDETREGIMEN_G: TStringField;
    cbDetReg: TwwDBLookupCombo;
    lblDetRegG: TLabel;
    lblCodCtaCon: TLabel;
    edtCodCtaCon: TwwDBEdit;
    cbxSoloServ: TRzDBCheckBox;
    qCmpByPro: TMDOQuery;
    dsqCmpByPro: TDataSource;
    cbxDolarizado: TRzDBCheckBox;
    ProvFACTURAENDOLAR: TSmallintField;
    edtFechaS: TRzDateTimeEdit;
    btnVerMovs: TRzBitBtn;
    gbDatosProv: TRzGroupBox;
    lblNomRZ: TLabel;
    lblDir: TLabel;
    lblLoc: TLabel;
    lblProv: TLabel;
    lblTel: TLabel;
    lblIngBtos: TLabel;
    lblDocProv: TLabel;
    lblTIvaProv: TLabel;
    lblNomFan: TLabel;
    lblFaxCel: TLabel;
    edtTelefonoProv: TwwDBEdit;
    edtCodPostalProv: TwwDBEdit;
    edtLocalidadProv: TwwDBEdit;
    edtDireccionProv: TwwDBEdit;
    edtNombreProv: TwwDBEdit;
    cbTipoIvaProv: TwwDBLookupCombo;
    edtDocumentoProv: TwwDBEdit;
    edtIngBrutosProv: TwwDBEdit;
    cbTipoDocPro: TwwDBLookupCombo;
    edtNomFantasia: TwwDBEdit;
    edtFaxes: TwwDBEdit;
    cbProvincia: TwwDBLookupCombo;
    tsCompras: TRzTabSheet;
    pnlCompras: TRzPanel;
    lblCompras: TLabel;
    lblNomProvCmp: TLabel;
    lblProvDesde: TLabel;
    btnExpProvCmp: TRzBitBtn;
    btnProvCmp: TRzBitBtn;
    edtProvCmp: TRzNumericEdit;
    edtProvDesdeCmp: TRzDateTimeEdit;
    edtProvHastaCmp: TRzDateTimeEdit;
    qPrdByPrv: TMDOQuery;
    dsqPrdByPrv: TDataSource;
    qCmpByProFECHAF: TDateField;
    qCmpByProDIAHORA: TDateTimeField;
    qCmpByProNROFACTURA: TMDOStringField;
    qCmpByProIDFACTURA: TIntegerField;
    qCmpByProIDSUCURSAL: TIntegerField;
    qCmpByProIDPROVEEDOR: TIntegerField;
    qCmpByProNOMBRE: TMDOStringField;
    qCmpByProTCOMP: TMDOStringField;
    qCmpByProNETO: TMDOBCDField;
    qCmpByProTOTAL: TMDOBCDField;
    qCmpByProIDEMPRESA: TIntegerField;
    qCmpByProEMPRESA: TMDOStringField;
    dpPrv: TSplitter;
    gCompras: TwwDBGrid;
    qPrdByPrvIDARTICULO: TIntegerField;
    qPrdByPrvPRECIO: TMDOBCDField;
    qPrdByPrvMARCA: TMDOStringField;
    qPrdByPrvDETALLE: TMDOStringField;
    qPrdByPrvCANTIDAD: TIntegerField;
    pcProdByProv: TRzPageControl;
    tsPorComp: TRzTabSheet;
    tsEnGral: TRzTabSheet;
    gProductos: TwwDBGrid;
    gPrdEnGral: TwwDBGrid;
    qPrdEnGral: TMDOQuery;
    dsqPrdEnGral: TDataSource;
    qPrdEnGralIDARTICULO: TIntegerField;
    qPrdEnGralMARCA: TMDOStringField;
    qPrdEnGralDETALLE: TMDOStringField;
    lblCCEmp: TLabel;
    cbCCEmpre: TRzComboBox;
    qProCCInfENTIDAD: TIntegerField;
    qProCCInfNOMBRE: TMDOStringField;
    qProCCInfSALDO: TMDOBCDField;
    qProCCInfSALDOA: TMDOBCDField;
    qProCCInfDETEMP: TMDOStringField;
    qPrdEnGralCANTIDAD_TOTAL: TMDOBCDField;
    qPrdEnGralUFECHAF: TDateField;
    qPrdEnGralULT_PRECIO: TMDOBCDField;
    qCmpByProIDPUNTOVENTA: TIntegerField;
    procedure edtValNoRetGKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtNombreProvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarProClick(Sender: TObject);
    procedure btnSaveProClick(Sender: TObject);
    procedure btnSalProClick(Sender: TObject);
    procedure btnPrintProClick(Sender: TObject);
    procedure btnExportarProClick(Sender: TObject);
    procedure btnEditProClick(Sender: TObject);
    procedure btnInsertProClick(Sender: TObject);
    procedure btnCancelProClick(Sender: TObject);
    procedure btnInfPrvClick(Sender: TObject);
    procedure btnInformesClick(Sender: TObject);
    procedure btnExportaInfClick(Sender: TObject);
    procedure gCCInfUpdateFooter(Sender: TObject);
    procedure ProvBeforePost(DataSet: TDataSet);
    procedure edtProBusExit(Sender: TObject);
    procedure gProveedoresEncontradosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gProveedoresEncontradosDblClick(Sender: TObject);
    procedure ProvAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ProvBeforeEdit(DataSet: TDataSet);
    procedure ProvAfterInsert(DataSet: TDataSet);
    procedure ProvNewRecord(DataSet: TDataSet);
    procedure ProvReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure ProvDOCUMENTOValidate(Sender: TField);
    procedure ProvIDPROVEEDORGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure ProvTIPOIVAValidate(Sender: TField);
    procedure pcProveedoresClick(Sender: TObject);
    procedure gInfPrvDblClick(Sender: TObject);
    procedure btnPriorProvClick(Sender: TObject);
    procedure btnSigProvClick(Sender: TObject);
    procedure btnFirstProvClick(Sender: TObject);
    procedure btnLastProvClick(Sender: TObject);
    procedure ProvTIPODOCChange(Sender: TField);
    procedure btnInfoProvClick(Sender: TObject);
    procedure tsBusquedaEnter(Sender: TObject);
    procedure edtPrcRetenGKeyPress(Sender: TObject; var Key: Char);
    procedure btnVerMovsClick(Sender: TObject);
    procedure btnProvCmpClick(Sender: TObject);
    procedure btnExpProvCmpClick(Sender: TObject);
    procedure edtProvCmpEnter(Sender: TObject);
    procedure edtProvCmpExit(Sender: TObject);
    procedure edtProvCmpKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure gComprasUpdateFooter(Sender: TObject);
    procedure gComprasDblClick(Sender: TObject);
    procedure gPrdEnGralDblClick(Sender: TObject);
    procedure edtPrcRetenGEnter(Sender: TObject);
    procedure edtMtoRetenGEnter(Sender: TObject);
    procedure cbDetRegEnter(Sender: TObject);
    procedure edtPrcRetenIBEnter(Sender: TObject);
    procedure edtPrcRetenLHEnter(Sender: TObject);
    procedure edtMtoRetenIBEnter(Sender: TObject);
    procedure edtPrcRetenIEnter(Sender: TObject);
    procedure edtMtoRetenIEnter(Sender: TObject);
    procedure pcProveedoresClose(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
    TNPCmp, TTotal, SaldoCCP: Currency;
    AltaEnt, NewEnt, Desde_Afuera: Boolean;
    NProv, CProv, Id_Emp, Actual, Nuevo, Pagina_Actual: Integer;

    function ProveedoresLast: Integer;
    function ProveedoresFirst: Integer;
    function ProveedoresNext(Act: Integer): Integer;
    function ProveedoresPrior(Act: Integer): Integer;

    procedure Abrir_Tablas;
    procedure Compras_By_Periodo(Desde, Hasta: TDate; IdProv: Integer);
    procedure SaldosP(Hasta: TDate; Empr: Integer);

  public
    { Public declarations }
  end;

  function AltaProveedor: Integer;
  procedure VerProveedor(IdPro: Integer);
  function Busca_Pro: Integer;

var
  frmProveedores: TfrmProveedores;

implementation

uses DateUtils, uTools, udmGestion, uViewFacC, uMovStk, uVerStk;

{$R *.DFM}

function AltaProveedor: Integer;
begin
  frmProveedores := TfrmProveedores.Create(nil);
  with frmProveedores do
  begin
    Result := NoEncontrado;
    AltaEnt := True;
    if ShowModal = mrOk then
      Result := Nuevo;
  end;
end;

procedure VerProveedor(IdPro: Integer);
begin
  frmProveedores := TfrmProveedores.Create(nil);
  with frmProveedores do
  begin
    Prov.Close;
    Prov.Params.ParamByName('IdProveedor').AsInteger := IdPro;
    Prov.Params.ParamByName('IdSucursal').AsInteger := IdBranch;
    Prov.Open;
    ShowModal;
  end;
end;

//*************************************** BUSQUEDA *****************************
function Busca_Pro: Integer;
var
  Encontrado: Integer;
begin
  Encontrado := NoEncontrado;
  frmProveedores := TfrmProveedores.Create(nil);
  with frmProveedores do
  begin
    Desde_Afuera := True;
    if ShowModal = mrOK then
      Encontrado := qBuscaProIdProveedor.AsInteger
    else
      Encontrado := qBuscaProIdProveedor.AsInteger;
  end;
  Result := Encontrado;
end;

procedure TfrmProveedores.btnBuscarProClick(Sender: TObject);
begin
  Pagina_Actual := pcProveedores.ActivePageIndex;
  pcProveedores.ActivePage := tsBusqueda;
end;

procedure TfrmProveedores.edtProBusExit(Sender: TObject);
begin
  qBuscaPro.Close;
  qBuscaPro.ParamByName('Buscado').AsString := '%'+UpperCase(edtProBus.Text)+'%';
  qBuscaPro.Open;
end;

procedure TfrmProveedores.gProveedoresEncontradosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    if Desde_Afuera then
      ModalResult := mrOK
    else begin
      Prov.Close;
      Prov.Params.ParamByName('IdProveedor').AsInteger := qBuscaProIdProveedor.AsInteger;
      Prov.Params.ParamByName('IdSucursal').AsInteger := IdBranch;
      Prov.Open;
      if not Prov.IsEmpty then
        pcProveedores.ActivePageIndex := Pagina_Actual;
    end;
  end;
end;

procedure TfrmProveedores.gProveedoresEncontradosDblClick(Sender: TObject);
begin
  if Desde_Afuera then
    ModalResult := mrOK
  else begin
    Prov.Close;
    Prov.Params.ParamByName('IdProveedor').AsInteger := qBuscaProIdProveedor.AsInteger;
    Prov.Params.ParamByName('IdSucursal').AsInteger := IdBranch;
    Prov.Open;
    if not Prov.IsEmpty then
      pcProveedores.ActivePageIndex := Pagina_Actual;
  end;
end;

//*************************************** FIN BUSQUEDA *************************

procedure TfrmProveedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Prov.State in dsEditModes then
    Prov.Post;
  Action := caFree;
end;

procedure TfrmProveedores.FormCreate(Sender: TObject);
begin
  Desde_Afuera := False;
  AltaEnt := False;
  try
    Prov.Close;
    Prov.Params.ParamByName('IdProveedor').AsInteger := ProveedoresLast;
    Prov.Params.ParamByName('IdSucursal').AsInteger := IdBranch;
    Prov.Open;
  except
    on E:Exception do
      raise EUsuario.Create(E.Message);
  end;
  TNPCmp := 0;
  TTotal := 0;
  lblNomProvCmp.Caption := Vacio;
  with dmGestion do
  begin
    Empresas.Open;
    Empresas.First;
    cbCCEmpre.Items.Clear;
    cbCCEmpre.Items.AddObject('<Agrupadas>', TObject(-1));
    cbCCEmpre.Items.AddObject('<Separadas>', TObject(0));
    while not Empresas.Eof do
    begin
      cbCCEmpre.Items.AddObject(EmpresasNOMBREEMPRESA.AsString, TObject(EmpresasIdEmpresa.AsInteger));
      Empresas.Next;
    end;
  end;
  cbCCEmpre.ItemIndex := 0;
  Id_Emp := 0;
end;

procedure TfrmProveedores.Abrir_Tablas;
begin
  with dmGestion do
  begin
    Sucursales.Open;
    Empresas.Open;
    Dptos.Open;
    Provincias.Open;
    TipoIva.Open;
    TipoDoc.Open;
    Empresas.Open;
  end;
end;

procedure TfrmProveedores.FormShow(Sender: TObject);
begin
  Abrir_Tablas;
  edtFechaS.Date := Date;
  edtProvDesdeCmp.Date := StartOfAYear(CurrentYear);
  edtProvHastaCmp.Date := Date;

  if AltaEnt then
  begin
    pcProveedores.ActivePage := tsDatosProv;
    edtNombreProv.SetFocus;
    Prov.Append;
  end;

  if Desde_Afuera then
  begin
    pcProveedores.ActivePage := tsBusqueda;
    edtProBus.SetFocus;
  end;
end;

procedure TfrmProveedores.pcProveedoresClick(Sender: TObject);
begin
  Case pcProveedores.ActivePageIndex of
    0: pnlNavPro.SetFocus;
    1: btnInfPrv.SetFocus;
    2: edtFechaS.SetFocus;
    3: edtProBus.SetFocus;
    4: edtProvCmp.SetFocus;
  end;
end;

procedure TfrmProveedores.pcProveedoresClose(Sender: TObject; var AllowClose: Boolean);
begin
  if Desde_Afuera then
    ModalResult := mrOK
  else
    Close;
end;

function TfrmProveedores.ProveedoresLast: Integer;
var
  q: TMDOQuery;
begin
  Result := 1;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.qProvider.Database;
    q.Transaction := dmGestion.qProvider.Transaction;
    q.SQL.Add('Select Max(IDPROVEEDOR) as Ultimo From PROVEEDORES ');
    q.SQL.Add('Where IdSucursal =:IdSuc ');
    q.ParamByName('IdSuc').AsInteger := IdBranch;
    q.Open;
    Result := q.FieldByName('Ultimo').AsInteger;
    q.Close;
  finally
    q.Free;
  end;
end;

function TfrmProveedores.ProveedoresFirst: Integer;
var
  q: TMDOQuery;
begin
  Result := 1;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.qProvider.Database;
    q.Transaction := dmGestion.qProvider.Transaction;
    q.SQL.Add('Select Min(IDPROVEEDOR) as F ');
    q.SQL.Add('from PROVEEDORES ');
    q.SQL.Add('Where IdSucursal =:IdSuc ');
    q.ParamByName('IdSuc').AsInteger := IdBranch;
    q.Open;
    Result := q.FieldByName('F').AsInteger;
    q.Close;
  finally
    q.Free;
  end;
end;

function TfrmProveedores.ProveedoresNext(Act: Integer): Integer;
var
  q: TMDOQuery;
begin
  Result := 1;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.qProvider.Database;
    q.Transaction := dmGestion.qProvider.Transaction;
    q.SQL.Add('Select Min(IDPROVEEDOR) as N ');
    q.SQL.Add('From PROVEEDORES ');
    q.SQL.Add('Where IdSucursal =:IdSuc And ');
    q.SQL.Add('      IdProveedor > :Act ');
    q.ParamByName('IdSuc').AsInteger := IdBranch;
    q.ParamByName('Act').AsInteger := Act;
    q.Open;
    if q.FieldByName('N').AsInteger = 0 then
      Result := Act
    else
      Result := q.FieldByName('N').AsInteger;
    q.Close;
  finally
    q.Free;
  end;
end;

function TfrmProveedores.ProveedoresPrior(Act: Integer): Integer;
var
  q: TMDOQuery;
begin
  Result := 1;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.qProvider.Database;
    q.Transaction := dmGestion.qProvider.Transaction;
    q.SQL.Add('Select Max(IDPROVEEDOR) as P ');
    q.SQL.Add('From PROVEEDORES ');
    q.SQL.Add('Where IdSucursal =:IdSuc And ');
    q.SQL.Add('      IdProveedor < :Act ');
    q.ParamByName('IdSuc').AsInteger := IdBranch;
    q.ParamByName('Act').AsInteger := Act;
    q.Open;
    if q.FieldByName('P').AsInteger = 0 then
      Result := Act
    else
      Result := q.FieldByName('P').AsInteger;
    q.Close;
  finally
    q.Free;
  end;
end;

procedure TfrmProveedores.ProvDOCUMENTOValidate(Sender: TField);
var
  r: Integer;
begin
  if ProvTipoDoc.AsInteger = CUIT then
  begin
    if (not Validate_Documento_Fiscal(Sender.AsString)) and
       (Application.MessageBox('El número de C.U.I.T. puede ser erroneo. Acepta?', 'C.U.I.T. no válido', MB_ICONEXCLAMATION + MB_YESNO) = IDNO) then
      SysUtils.Abort;
  end;

  r := CheckDocEnt(2, ProvTipoDoc.AsInteger, Sender.AsString);
  if (r > NoEncontrado) and (Application.MessageBox(PChar('El Documento a sido ingresado anteriormente al proveedor º '+IntToStr(r)+'. Grabar?'),
     'Documento no válido', MB_ICONEXCLAMATION + MB_OKCANCEL) = IDCANCEL) then
    SysUtils.Abort;
end;

procedure TfrmProveedores.ProvBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if (Trim(ProvNOMBRE.AsString) = Vacio) or
     (ProvTIPOIVA.AsInteger = 0) or
     (ProvTIPODOC.AsInteger = 0) or
     (Trim(ProvDOCUMENTO.AsString) = Vacio) then
    raise EUsuario.Create('Falta algun Dato REQUERIDO del Proveedor, para poder grabarlo ');

  if (AltaEnt) or (NewEnt) then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.qProvider.Transaction;
      q.SQL.Add('Select MAX(IdProveedor) As Ultimo ');
      q.SQL.Add('From Proveedores ');
      q.SQL.Add('Where IdSucursal =:IdSuc ');
      q.ParamByName('IdSuc').AsInteger := IdBranch;
      q.Open;
      Nuevo := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
    ProvIDPROVEEDOR.AsInteger := Nuevo;
    Actual := Nuevo;
    NewEnt := False;
  end
end;

procedure TfrmProveedores.ProvAfterPost(DataSet: TDataSet);
begin
  if not dmGestion.trGestion.InTransaction then
    dmGestion.trGestion.StartTransaction;
  try
    if Prov.ApplyUpdates(0) > 0 then
      Abort;
    dmGestion.trGestion.Commit;
    if Actual > 0 then
    begin
      Prov.Close;
      Prov.Params.ParamByName('IdProveedor').AsInteger := Actual;
      Prov.Params.ParamByName('IdSucursal').AsInteger := IdBranch;
      Prov.Open;
    end;
    Actual := 0;
  except
    dmGestion.trGestion.Rollback;
    raise;
  end;
end;

procedure TfrmProveedores.ProvBeforeEdit(DataSet: TDataSet);
begin
  Abrir_Tablas;
  Actual := ProvIDPROVEEDOR.AsInteger;
end;

procedure TfrmProveedores.ProvAfterInsert(DataSet: TDataSet);
begin
  Abrir_Tablas;
end;

procedure TfrmProveedores.ProvNewRecord(DataSet: TDataSet);
begin
  ProvIDPROVEEDOR.AsInteger := NUEVO_REGISTRO;
  ProvIDSUCURSAL.AsInteger := IdBranch;
  ProvPERCEPCIONES.AsInteger := Falso;
  ProvNROREGPERCP.AsString := '0000';
  ProvNORETENCION_I.AsInteger := Falso;
  ProvMONTORETENCION_I.AsCurrency := 0;
  ProvPRCRETENCION_I.AsFloat := 0.00;
  ProvNORETENCION_G.AsInteger := Falso;
  ProvMONTORETENCION_G.AsFloat := 0.00;
  ProvPRCRETENCION_G.AsFloat := 0.00;
  ProvPRCRETENCION_B1.AsFloat := 0.00;
  ProvPRCRETENCION_B2.AsFloat := 0.00;
  ProvMONTORETENCION_B.AsCurrency := 0;
  ProvMTORETENCION_SS.AsFloat := 0.00;
  ProvPROVSERVICIOS.AsInteger := Falso;
end;

procedure TfrmProveedores.edtPrcRetenGEnter(Sender: TObject);
begin
  edtPrcRetenG.SelectAll;
end;

procedure TfrmProveedores.edtPrcRetenGKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmProveedores.edtPrcRetenIBEnter(Sender: TObject);
begin
  edtPrcRetenIB.SelectAll
end;

procedure TfrmProveedores.edtPrcRetenIEnter(Sender: TObject);
begin
  edtPrcRetenI.SelectAll
end;

procedure TfrmProveedores.edtPrcRetenLHEnter(Sender: TObject);
begin
  edtPrcRetenLH.SelectAll
end;

procedure TfrmProveedores.ProvIDPROVEEDORGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if Sender.AsInteger = NUEVO_REGISTRO then
    Text := 'NUEVO'
  else
    Text := Sender.AsString;
end;

procedure TfrmProveedores.ProvTIPOIVAValidate(Sender: TField);
begin
  if Sender.AsInteger in [RI, RMT, EX] then
    ProvTipoDoc.AsInteger:= CUIT;
end;

procedure TfrmProveedores.ProvTIPODOCChange(Sender: TField);
begin
  if Sender.AsInteger = CUIT then //Tipo doc Cuit
    ProvDocumento.EditMask := '##-########-#;1;_'
  else
    ProvDocumento.EditMask := '';
end;

procedure TfrmProveedores.ProvReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError;
                                         UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ApplicationShowException(E);
end;

procedure TfrmProveedores.btnSaveProClick(Sender: TObject);
begin
  if (Prov.State in dsEditModes) and
     (Application.MessageBox('¿Graba los datos del Proveedor?', 'Entidades', MB_ICONQUESTION + MB_YESNO)= IDYES) then
    Prov.Post;
  if AltaEnt then
    ModalResult := mrOK;
end;

procedure TfrmProveedores.btnSalProClick(Sender: TObject);
begin
  if Desde_Afuera then
    ModalResult := mrOK
  else
    Close;
end;

procedure TfrmProveedores.btnInfPrvClick(Sender: TObject);
begin
  qInfProv.Close;
  qInfProv.Open;
  if not qInfProv.IsEmpty then
    gInfPrv.SetFocus;
end;

procedure TfrmProveedores.btnPrintProClick(Sender: TObject);
begin
  if not qInfProv.IsEmpty then
    try
      qInfProv.DisableControls;
      // hacer listado
    finally
      qInfProv.EnableControls;
    end;
end;

procedure TfrmProveedores.btnExportarProClick(Sender: TObject);
begin
  if not qInfProv.IsEmpty then
  begin
    try
      qInfProv.DisableControls;
      dmGestion.IyC_Exp.DataSet := qInfProv;
      dmGestion.IyC_Exp.Select;
    finally
      qInfProv.EnableControls;
    end;
  end;
end;

procedure TfrmProveedores.btnExpProvCmpClick(Sender: TObject);
begin
  if not qCmpByPro.IsEmpty then
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

procedure TfrmProveedores.btnEditProClick(Sender: TObject);
begin
  NewEnt := False;
  edtNombreProv.SetFocus;
  Prov.Edit;
end;

procedure TfrmProveedores.btnInsertProClick(Sender: TObject);
begin
  NewEnt := True;
  Actual := ProvIDPROVEEDOR.AsInteger;
  edtNombreProv.SetFocus;
  Prov.Insert;
end;

procedure TfrmProveedores.btnPriorProvClick(Sender: TObject);
begin
  Actual := ProveedoresPrior(ProvIDPROVEEDOR.AsInteger);
  try
    Prov.Close;
    Prov.Params.ParamByName('IdProveedor').AsInteger := Actual;
    Prov.Params.ParamByName('IdSucursal').AsInteger := IdBranch;
    Prov.Open;
  except
    on E:Exception do
      raise EUsuario.Create(E.Message);
  end;
end;

procedure TfrmProveedores.Compras_By_Periodo(Desde, Hasta: TDate; IdProv: Integer);
var
  q: TMDOQuery;
begin
  qCmpByPro.Close;
  qPrdByPrv.Close;
  qPrdEnGral.Close;
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
      qPrdByPrv.Close;
      qPrdByPrv.Open;

      btnExpProvCmp.Enabled := True;
      qPrdEnGral.Close;
      qPrdEnGral.ParamByName('Desde').AsDate := Desde;
      qPrdEnGral.ParamByName('Hasta').AsDate := Hasta;
      qPrdEnGral.ParamByName('IdPro').AsInteger := IdProv;
      try
        qPrdEnGral.Open;
      except
        on E:Exception do
        begin
          raise EUsuario.Create(E.Message);
        end;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    gCompras.ColumnByName('Neto').FooterValue := Format('%m',[TNPCmp]);
    gCompras.ColumnByName('Total').FooterValue:= Format('%m',[TTotal]);
  end;
end;

procedure TfrmProveedores.btnProvCmpClick(Sender: TObject);
begin
  Compras_By_Periodo(edtProvDesdeCmp.Date, edtProvHastaCmp.Date, CProv);
end;

procedure TfrmProveedores.btnSigProvClick(Sender: TObject);
begin
  Actual := ProveedoresNext(ProvIDPROVEEDOR.AsInteger);
  try
    Prov.Close;
    Prov.Params.ParamByName('IdProveedor').AsInteger := Actual;
    Prov.Params.ParamByName('IdSucursal').AsInteger := IdBranch;
    Prov.Open;
  except
    on E:Exception do
      raise EUsuario.Create(E.Message);
  end;
end;

procedure TfrmProveedores.btnVerMovsClick(Sender: TObject);
begin
  Pagina_Actual := pcProveedores.ActivePageIndex;
  // Aca abrir busqueda
  pcProveedores.ActivePage := tsCompras;
end;

procedure TfrmProveedores.cbDetRegEnter(Sender: TObject);
begin
  cbDetReg.DropDown;
end;

procedure TfrmProveedores.btnFirstProvClick(Sender: TObject);
begin
  try
    Prov.Close;
    Prov.Params.ParamByName('IdProveedor').AsInteger := ProveedoresFirst;
    Prov.Params.ParamByName('IdSucursal').AsInteger := IdBranch;
    Prov.Open;
  except
    on E:Exception do
      raise EUsuario.Create(E.Message);
  end;
end;

procedure TfrmProveedores.btnLastProvClick(Sender: TObject);
begin
  try
    Prov.Close;
    Prov.Params.ParamByName('IdProveedor').AsInteger := ProveedoresLast;
    Prov.Params.ParamByName('IdSucursal').AsInteger := IdBranch;
    Prov.Open;
  except
    on E:Exception do
      raise EUsuario.Create(E.Message);
  end;
end;

procedure TfrmProveedores.btnCancelProClick(Sender: TObject);
begin
  if Prov.State in dsEditModes then
    Prov.Cancel;
end;

procedure TfrmProveedores.edtMtoRetenGEnter(Sender: TObject);
begin
  edtMtoRetenG.SelectAll
end;

procedure TfrmProveedores.edtMtoRetenIBEnter(Sender: TObject);
begin
  edtMtoRetenIB.SelectAll
end;

procedure TfrmProveedores.edtMtoRetenIEnter(Sender: TObject);
begin
  edtMtoRetenI.SelectAll
end;

procedure TfrmProveedores.edtNombreProvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmProveedores.SaldosP(Hasta: TDate; Empr: Integer);
begin
  try
    SaldoCCP := 0;
    Screen.Cursor := crHourGlass;
    try
      qProCCInf.Close;
      qProCCInf.ParamByName('AHoy').AsDate := Hasta;
      qProCCInf.ParamByName('IDEMP').AsInteger := Empr;
      qProCCInf.Open;
      if not qProCCInf.IsEmpty then
      begin
        qProCCInf.Last;
        SaldoCCP := qProCCInfSaldoA.AsCurrency;
        qProCCInf.First;
      end;
    except
      on E:Exception do
      begin
        raise EUsuario.Create('Error: '+E.Message);
        qProCCInf.Close;
        SaldoCCP := 0;
      end;
    end;
  finally
    gCCInf.RefreshDisplay;
    Screen.Cursor := crDefault;
    gCCInf.ColumnByName('Saldo').FooterValue := Format('%m',[SaldoCCP]);
  end;
end;

procedure TfrmProveedores.btnInformesClick(Sender: TObject);
begin
  SaldosP(edtFechaS.Date, Id_Emp);
end;

procedure TfrmProveedores.btnExportaInfClick(Sender: TObject);
begin
  dmGestion.IyC_Exp.DataSet := gCCInf.DataSource.DataSet;
  dmGestion.IyC_Exp.Select;
end;

procedure TfrmProveedores.gCCInfUpdateFooter(Sender: TObject);
begin
  gCCInf.ColumnByName('Saldo').FooterValue := Format('%m',[SaldoCCP])
end;

procedure TfrmProveedores.gComprasDblClick(Sender: TObject);
begin
  Get_FacC(qCmpByProIDFACTURA.AsInteger,
           qCmpByProIDSUCURSAL.AsInteger,
           qCmpByProIDPUNTOVENTA.AsInteger);
end;

procedure TfrmProveedores.gComprasUpdateFooter(Sender: TObject);
begin
  gCompras.ColumnByName('Neto').FooterValue := Format('%m',[TNPCmp]);
  gCompras.ColumnByName('Total').FooterValue:= Format('%m',[TTotal]);
end;


procedure TfrmProveedores.edtProvCmpEnter(Sender: TObject);
begin
  CProv := 0;
  btnExpProvCmp.Enabled := False;
end;

procedure TfrmProveedores.edtProvCmpExit(Sender: TObject);
begin
  try
    CProv := edtProvCmp.IntValue;
  except
    CProv := 0;
  end;
  if CProv = 0 then
    lblNomProvCmp.Caption := '<TODOS>'
  else begin
    if GetDatosEnt(CProv, IdBranch, 2, Datos_Ent) then
    begin
      lblNomProvCmp.Caption := Datos_Ent.Nombre;
      edtProvCmp.IntValue := CProv;
    end;
  end;
end;

procedure TfrmProveedores.edtProvCmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  CProv := 0;
  case Key of
    VK_F3: begin
      CProv := Busca_Pro;
      if GetDatosEnt(CProv, IdBranch, 2, Datos_Ent) then
      begin
        lblNomProvCmp.Caption := Datos_Ent.Nombre;
        edtProvCmp.IntValue := CProv;
      end;
    end;
    VK_ESCAPE: btnSalPro.SetFocus;
  end;
end;

procedure TfrmProveedores.edtValNoRetGKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmProveedores.gPrdEnGralDblClick(Sender: TObject);
begin
  Ver_Stk(qPrdEnGralIDARTICULO.AsInteger);
end;

procedure TfrmProveedores.gInfPrvDblClick(Sender: TObject);
begin
  Prov.Close;
  Prov.Params.ParamByName('IdProveedor').AsInteger := qInfProvIdProveedor.AsInteger;
  Prov.Params.ParamByName('IdSucursal').AsInteger := qInfProvIdSucursal.AsInteger;
  Prov.Open;
  if not Prov.IsEmpty then
    pcProveedores.ActivePageIndex := 0;
end;

procedure TfrmProveedores.btnInfoProvClick(Sender: TObject);
begin
  Pagina_Actual := pcProveedores.ActivePageIndex;
  pcProveedores.ActivePage := tsInformes;
end;

procedure TfrmProveedores.tsBusquedaEnter(Sender: TObject);
begin
  edtProBus.SetFocus;
end;

end.
