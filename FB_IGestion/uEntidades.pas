unit uEntidades;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, ExtCtrls,
  Buttons, DBCtrls, wwSpeedButton, RzBorder, RzEdit,
  wwDBNavigator, wwclearpanel, Mask, ImgList,
  wwdblook, Wwdbcomb, wwdbedit, wwclearbuttongroup, wwradiogroup,
  wwcheckbox, RzPanel, RzButton, RzTabs,
  wwdbdatetimepicker, Wwdotdot, MDOQuery, DBClient, Provider,
  MDOCustomDataSet, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, RzCmboBx, ppDB, ppDBPipe;

type
  TfrmEntidades = class(TForm)
    pcClientes: TRzPageControl;
    tsDatosClientes: TRzTabSheet;
    lblNombre: TLabel;
    lblDireccion: TLabel;
    lblLocalidad: TLabel;
    lblProvincia: TLabel;
    lblTelefono: TLabel;
    lblTipoIva: TLabel;
    lblIngBtos: TLabel;
    lblTipoDoc: TLabel;
    lblTelFax: TLabel;
    lblCodPostal: TLabel;
    lblNroDocFiscal: TLabel;
    edtNombre: TwwDBEdit;
    edtDireccion: TwwDBEdit;
    edtCodPostalCli: TwwDBEdit;
    edtTelefono: TwwDBEdit;
    edtDocumento: TwwDBEdit;
    edtIngBrutos: TwwDBEdit;
    cbTipoiva: TwwDBLookupCombo;
    pnlCodCli: TRzPanel;
    lblCodCli: TDBText;
    cbTipoDocCli: TwwDBLookupCombo;
    edtCliFax: TwwDBEdit;
    cbProvincia: TwwDBLookupCombo;
    pnlAviso: TRzPanel;
    cbDepartamento: TwwDBLookupCombo;
    dsClientes: TDataSource;
    pnlNavPro: TRzPanel;
    btnSalirCli: TRzBitBtn;
    lblSucursal: TLabel;
    cbSucursalCli: TwwDBLookupCombo;
    lblCantCred: TLabel;

    Clientes: TClientDataSet;
    ClientesIDCLIENTE: TIntegerField;
    ClientesNOMBRE: TStringField;
    ClientesDIRECCION: TStringField;
    ClientesLOCALIDAD: TStringField;
    ClientesPROVINCIA: TStringField;
    ClientesCODPOSTAL: TStringField;
    ClientesTELEFONOS: TStringField;
    ClientesTELFAX: TStringField;
    ClientesTIPOIVA: TSmallintField;
    ClientesTIPODOC: TSmallintField;
    ClientesDOCUMENTO: TStringField;
    ClientesINGBRUTOS: TStringField;
    ClientesFECHANAC: TDateField;
    ClientesESTADOCIVIL: TSmallintField;
    ClientesNCONYUGE: TStringField;
    ClientesEMPLEADOR: TStringField;
    ClientesDOMICILIOE: TStringField;
    ClientesANTIGUEDADE: TSmallintField;
    ClientesINGRESOSE: TBCDField;
    ClientesCARGO: TStringField;
    ClientesNROJUBILADO: TStringField;
    ClientesRAMO: TStringField;
    ClientesDOMICILIOP: TStringField;
    ClientesANTIGUEDADP: TSmallintField;
    ClientesINGRESOSP: TBCDField;
    ClientesTIPOPROP: TStringField;
    ClientesUBICPROP: TStringField;
    ClientesREFERENCIAS: TStringField;
    ClientesTIPOCLI: TSmallintField;
    ClientesIDSUCURSAL: TIntegerField;
    ClientesNOMGARANTE1: TStringField;
    ClientesDOCGARANTE1: TStringField;
    ClientesNOMGARANTE2: TStringField;
    ClientesDOCGARANTE2: TStringField;
    ClientesCODIGOCC: TIntegerField;
    ClientesCODBUSCLI: TStringField;

    rbdpClientes: TppDBPipeline;
    rbClientes: TppReport;
    hbClientes: TppHeaderBand;
    rbshTitulos: TppShape;
    rblPropietario: TppLabel;
    rblPagina: TppSystemVariable;
    rblTitulo: TppLabel;
    rblTitLog: TppLabel;
    rbshTitCli: TppShape;
    rblDatosFiscales: TppLabel;
    rblTelefono: TppLabel;
    rblDomicilio: TppLabel;
    rblNombre: TppLabel;
    rblCodigo: TppLabel;
    rbbClientes: TppDetailBand;
    rbshClientes: TppShape;
    rblIdCliente: TppDBText;
    rblNomCli: TppDBText;
    rblDirCli: TppDBText;
    rblLocCli: TppDBText;
    rblProCli: TppDBText;
    rblCPCli: TppDBText;
    rblTelCli: TppDBText;
    rblTdocCli: TppDBText;
    rblDocCli: TppDBText;
    rblDetIva: TppDBText;
    lblDetSuc: TppDBText;

    qClientes: TMDOQuery;
    dspClientes: TDataSetProvider;

    dsqPrintCli: TDataSource;
    qPrintCli: TMDOQuery;
    qPrintCliIDCLIENTE: TIntegerField;
    qPrintCliNOMBRE: TMDOStringField;
    qPrintCliDIRECCION: TMDOStringField;
    qPrintCliLOCALIDAD: TMDOStringField;
    qPrintCliPROVINCIA: TMDOStringField;
    qPrintCliCODPOSTAL: TMDOStringField;
    qPrintCliTELEFONOS: TMDOStringField;
    qPrintCliTELFAX: TMDOStringField;
    qPrintCliTIPOIVA: TSmallintField;
    qPrintCliTIPODOC: TSmallintField;
    qPrintCliDOCUMENTO: TMDOStringField;
    qPrintCliINGBRUTOS: TMDOStringField;
    qPrintCliDETDOC: TMDOStringField;
    qPrintCliDETIVA: TMDOStringField;
    qPrintCliIDSUCURSAL: TIntegerField;
    qPrintCliDETSUC: TMDOStringField;
    qPrintCliCODBUSCLI: TMDOStringField;

    dsqCreditos: TDataSource;
    qCredCli: TMDOQuery;
    qCredCliIDMOV: TIntegerField;
    qCredCliIDTARJETA: TIntegerField;
    qCredCliIDSUCURSAL: TIntegerField;
    qCredCliIDFACTURA: TIntegerField;
    qCredCliIDPUNTOVENTA: TIntegerField;
    qCredCliIDCLIENTE: TIntegerField;
    qCredCliFECHAOP: TDateField;
    qCredCliCODTAR: TMDOStringField;
    qCredCliNROCUOTA: TSmallintField;
    qCredCliIMPCUOTA: TMDOBCDField;
    qCredCliTOTALOP: TMDOBCDField;
    qCredCliAUTORIZACION: TMDOStringField;
    qCredCliFECHARESUMEN: TDateField;
    qCredCliCUOTAPAG: TIntegerField;
    qCredCliFECHAIS: TDateField;
    qCredCliNROLIQUIDACION: TMDOStringField;
    qCredCliNROFACTURA: TMDOStringField;
    qCredCliTARJETA: TMDOStringField;
    qCredCliDETSUC: TMDOStringField;
    qCredCliCOBRADO: TMDOBCDField;
    qCredCliSALDO: TMDOBCDField;

    dsBuscaCli: TDataSource;
    qBuscaCli: TMDOQuery;
    qBuscaCliIdCliente: TIntegerField;
    qBuscaCliIDSUCURSAL: TIntegerField;
    qBuscaCliNombre: TStringField;
    qBuscaCliTelefonos: TStringField;
    qBuscaCliDireccion: TStringField;
    qBuscaCliDocumento: TStringField;
    qBuscaCliDETSUC: TMDOStringField;
    qBuscaCliCODBUSCLI: TMDOStringField;

    dsqOperByCli: TDataSource;
    qOperByCli: TMDOQuery;
    qOperByCliIDCLIENTE: TIntegerField;
    qOperByCliNOMBRE: TMDOStringField;
    qOperByCliIDFACTURA: TIntegerField;
    qOperByCliIDSUCURSAL: TIntegerField;
    qOperByCliNROFACTURA: TMDOStringField;
    qOperByCliFECHAF: TDateField;
    qOperByCliTOTAL: TMDOBCDField;
    qOperByCliDESCCORTA: TMDOStringField;
    qOperByCliDETSUC: TMDOStringField;

    dsqProdByCli: TDataSource;
    qProdByCli: TMDOQuery;
    qProdByCliIDFACTURA: TIntegerField;
    qProdByCliIDSUCURSAL: TIntegerField;
    qProdByCliCANTIDAD: TMDOBCDField;
    qProdByCliPRECIOFINAL: TMDOBCDField;
    qProdByCliDESCUENTO: TMDOBCDField;
    qProdByCliIDARTICULO: TIntegerField;
    qProdByCliMARCA: TMDOStringField;
    qProdByCliDETALLE: TMDOStringField;

    qChkDocCli: TMDOQuery;
    qChkDocCliNombre: TStringField;
    qChkDocCliDocumento: TStringField;
    tsOperaciones: TRzTabSheet;

    tsInformes: TRzTabSheet;
    pnlInfCli: TRzPanel;
    btnExportarCli: TRzBitBtn;
    btnPrintCli: TRzBitBtn;
    lblSucTrf: TLabel;
    cbSucCli: TRzComboBox;
    gInfCli: TwwDBGrid;
    btnCalcPrintCli: TRzBitBtn;
    pnlOperCli: TRzPanel;
    lblOperCli: TLabel;
    btnPrintOperByCli: TRzBitBtn;
    btnCalcOperCli: TRzBitBtn;
    edtCliCta: TRzEdit;
    lblNomCli: TLabel;
    gClientes: TwwDBGrid;
    spOperBycli: TSplitter;
    gProdByCli: TwwDBGrid;
    tsBusqueda: TRzTabSheet;
    bgDatosBusqueda: TRzGroupBox;
    lblNomBus: TLabel;
    lblDocCli: TLabel;
    lblNumCli: TLabel;
    edtNomBus: TwwDBEdit;
    edtDocBus: TwwDBEdit;
    lblCodBusCli: TDBText;
    btnOkey: TRzBitBtn;
    edtNroCta: TwwDBEdit;
    gBuscaCli: TwwDBGrid;
    brDClientes: TRzBorder;
    lblCodCtaCon: TLabel;
    edtCodCtaCon: TwwDBEdit;
    pnlNavCli: TRzPanel;
    btnInsertCli: TRzBitBtn;
    btnEditCli: TRzBitBtn;
    btnSaveCli: TRzBitBtn;
    btnCancelCli: TRzBitBtn;
    btnBuscarCli: TRzBitBtn;
    btnFirstCli: TRzBitBtn;
    btnPriorCli: TRzBitBtn;
    btnSigCli: TRzBitBtn;
    btnLastCli: TRzBitBtn;
    btnInfoCli: TRzBitBtn;
    qOperByCliIDPUNTOVENTA: TIntegerField;
    qProdByCliIDPUNTOVENTA: TIntegerField;
    prnPrintFichaCli: TRzBitBtn;
    qCredCliESTADO1: TMDOStringField;
    qBuscaCliTIPOCLI: TSmallintField;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtNombreKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbDepartamentoExit(Sender: TObject);
    procedure btnInsertCliClick(Sender: TObject);
    procedure btnBuscarCliClick(Sender: TObject);
    procedure btnCancelCliClick(Sender: TObject);
    procedure btnPrintCliClick(Sender: TObject);
    procedure btnExportarCliClick(Sender: TObject);
    procedure btnSalirCliClick(Sender: TObject);
    procedure btnEditCliClick(Sender: TObject);
    procedure btnSaveCliClick(Sender: TObject);
    procedure ClientesAfterPost(DataSet: TDataSet);
    procedure ClientesReconcileError(DataSet: TCustomClientDataSet;
              E: EReconcileError; UpdateKind: TUpdateKind;  var Action: TReconcileAction);
    procedure ClientesBeforeEdit(DataSet: TDataSet);
    procedure ClientesBeforePost(DataSet: TDataSet);
    procedure ClientesNewRecord(DataSet: TDataSet);
    procedure ClientesIDCLIENTEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure ClientesBeforeInsert(DataSet: TDataSet);
    procedure ClientesDOCUMENTOValidate(Sender: TField);
    procedure ClientesTIPODOCChange(Sender: TField);
    procedure ClientesTIPODOCValidate(Sender: TField);
    procedure ClientesTIPOIVAValidate(Sender: TField);
    procedure pcClientesChange(Sender: TObject);
    procedure ClientesAfterOpen(DataSet: TDataSet);
    procedure ClientesBeforeOpen(DataSet: TDataSet);
    procedure btnCalcPrintCliClick(Sender: TObject);
    procedure btnPrintOperByCliClick(Sender: TObject);
    procedure edtCliCtaEnter(Sender: TObject);
    procedure edtCliCtaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCalcOperCliClick(Sender: TObject);
    procedure edtCliCtaExit(Sender: TObject);
    procedure gCredCliDblClick(Sender: TObject);
    procedure gClientesDblClick(Sender: TObject);
    procedure gBuscaCliDblClick(Sender: TObject);
    procedure btnOkeyClick(Sender: TObject);
    procedure edtNroCtaExit(Sender: TObject);
    procedure edtNomBusExit(Sender: TObject);
    procedure edtNomBusKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gBuscaCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtDocBusExit(Sender: TObject);
    procedure btnInfoCliClick(Sender: TObject);
    procedure btnFirstCliClick(Sender: TObject);
    procedure btnPriorCliClick(Sender: TObject);
    procedure btnSigCliClick(Sender: TObject);
    procedure btnLastCliClick(Sender: TObject);
  private
    { Private declarations }
    AltCli, NewEnt, Desde_Afuera: Boolean;
    Pagina_Actual, Est_Act, Actual, NCliente: Integer;
    procedure Abrir_Tablas;
    function ClientesLast: Integer;
    function ClientesFirst: Integer;
    function ClientesNext(Act: Integer): Integer;
    function ClientesPrior(Act: Integer): Integer;
    procedure Print_Cli;
    procedure OperByCli(NroCli, SucCli: Integer);
    procedure Buscar;
  public
    { Public declarations }
    Nuevo: Integer;
  end;

  function AltaCliente(TipoCli: SmallInt): Integer;
  procedure VerCliente(IdCli, IdSuc: Integer);
  function Busca_Cli(Var IdCli, IdSuc: Integer): Boolean;

var
  frmEntidades: TfrmEntidades;

implementation

uses udmGestion, uTools, uViewFacV;

{$R *.DFM}

function AltaCliente(TipoCli: SmallInt): Integer;
begin
  Result := NoEncontrado;
  frmEntidades := TfrmEntidades.Create(nil);
  with frmEntidades do
  begin
    Estado_Cliente := TipoCli;
    AltCli := True;
    Clientes.Insert;
    if ShowModal = mrOk then
      Result := Nuevo
  end;
end;

procedure VerCliente(IdCli, IdSuc: Integer);
begin
  frmEntidades := TfrmEntidades.Create(nil);
  with frmEntidades do
  begin
    Clientes.Close;
    Clientes.Params.ParamByName('IdCliente').AsInteger := IdCli;
    Clientes.Params.ParamByName('IdSucursal').AsInteger := IdSuc;
    Clientes.Open;
    ShowModal;
  end;
end;

function Busca_Cli(Var IdCli, IdSuc: Integer): Boolean;
begin
  Result := False;
  frmEntidades := TfrmEntidades.Create(nil);
  frmEntidades.Desde_Afuera := True;
  if frmEntidades.ShowModal = mrOK then
  begin
    IdCli := frmEntidades.qBuscaCliIdCliente.AsInteger;
    IdSuc := frmEntidades.qBuscaCliIDSUCURSAL.AsInteger;
    Result := True;
  end
  else begin
    IdCli := NoEncontrado;
    IdSuc := IdBranch;
    Result := False;
  end;
end;

procedure TfrmEntidades.Abrir_Tablas;
begin
  with dmGestion do
  begin
    Sucursales.Open;
    Empresas.Open;
    Dptos.Open;
    Provincias.Open;
    TipoIva.Open;
    TipoDoc.Open;
    MotivosAJ.Open;
  end;
end;

procedure TfrmEntidades.FormCreate(Sender: TObject);
begin
  Desde_Afuera := False;
  with dmGestion do
  begin
    cbSucCli.Items.AddObject('<TODAS>', TObject(0));
    Sucursales.First;
    while not Sucursales.Eof do
    begin
      cbSucCli.Items.AddObject(SucursalesNombreSuc.AsString, TObject(SucursalesIdSucursal.AsInteger));
      Sucursales.Next;
    end;
  end;
  AltCli := False;
  Actual := 0;
  Est_Act:= 1;
  IdSucEnt := IdBranch;
  lblNomCli.Caption := Vacio;
  Clientes.Close;
  Clientes.Params.ParamByName('IdCliente').AsInteger := Impersonal;
  Clientes.Params.ParamByName('IdSucursal').AsInteger := IdSucEnt;
  Clientes.Open;
end;

procedure TfrmEntidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Clientes.State in dsEditModes then
    Clientes.Post;
  Action := caFree;
end;

procedure TfrmEntidades.FormShow(Sender: TObject);
begin
  Abrir_Tablas;
  if AltCli then
  begin
    pcClientes.ActivePage := tsDatosClientes;
    edtNombre.SetFocus;
  end;
  if Desde_Afuera then
  begin
    pcClientes.ActivePage := tsBusqueda;
    edtNomBus.SetFocus;
  end;
end;

function TfrmEntidades.ClientesLast: Integer;
var
  q: TMDOQuery;
begin
  Result := 1;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.qClientes.Database;
    q.Transaction := dmGestion.qClientes.Transaction;
    q.SQL.Add('Select Max(IDCLIENTE) as Ultimo From CLIENTES ');
    q.SQL.Add('Where IdSucursal =:IdSuc ');
    q.ParamByName('IdSuc').AsInteger := IdSucEnt;
    q.Open;
    Result := q.FieldByName('Ultimo').AsInteger;
    q.Close;
  finally
    q.Free;
  end;
end;

function TfrmEntidades.ClientesFirst: Integer;
var
  q: TMDOQuery;
begin
  Result := 1;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.qClientes.Database;
    q.Transaction := dmGestion.qClientes.Transaction;
    q.SQL.Add('Select Min(IDCLIENTE) as F ');
    q.SQL.Add('from CLIENTES ');
    q.SQL.Add('Where IdSucursal =:IdSuc ');
    q.ParamByName('IdSuc').AsInteger := IdSucEnt;
    q.Open;
    Result := q.FieldByName('F').AsInteger;
    q.Close;
  finally
    q.Free;
  end;
end;

function TfrmEntidades.ClientesNext(Act: Integer): Integer;
var
  q: TMDOQuery;
begin
  Result := 1;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.qClientes.Database;
    q.Transaction := dmGestion.qClientes.Transaction;
    q.SQL.Add('Select Min(IDCLIENTE) as N ');
    q.SQL.Add('From CLIENTES ');
    q.SQL.Add('Where IdSucursal =:IdSuc And ');
    q.SQL.Add('      IDCLIENTE > :Act ');
    q.ParamByName('IdSuc').AsInteger := IdSucEnt;
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

function TfrmEntidades.ClientesPrior(Act: Integer): Integer;
var
  q: TMDOQuery;
begin
  Result := 1;
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.qClientes.Database;
    q.Transaction := dmGestion.qClientes.Transaction;
    q.SQL.Add('Select Max(IDCLIENTE) as P ');
    q.SQL.Add('From CLIENTES ');
    q.SQL.Add('Where IdSucursal = :IdSuc And ');
    q.SQL.Add('      IDCLIENTE < :Act ');
    q.ParamByName('IdSuc').AsInteger := IdSucEnt;
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

procedure TfrmEntidades.edtNombreKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmEntidades.cbDepartamentoExit(Sender: TObject);
begin
  with dmGestion do
  begin
    if (not Dptos.Locate(DptosDepartamento.FieldName, cbDepartamento.Text, []))and (Trim(cbDepartamento.Text) > Vacio) And
       (Application.MessageBox(PChar(Format('El departamento "%s", no existe. ¿La agrega?', [cbDepartamento.Text])), 'Departamento', MB_ICONQUESTION + MB_YESNO)= IDYES) then
    begin
      Dptos.Insert;
      DptosDepartamento.AsString := cbDepartamento.Text;
      Dptos.Post;
    end;
  end;
end;

procedure TfrmEntidades.btnInsertCliClick(Sender: TObject);
begin
  Estado_Cliente := 1;
  NewEnt := True;
  edtNombre.SetFocus;
  Actual := ClientesIDCLIENTE.AsInteger;
  IdSucEnt := ClientesIDSUCURSAL.AsInteger;
  Est_Act:= 1;
  Clientes.Insert;
end;

procedure TfrmEntidades.btnInfoCliClick(Sender: TObject);
begin
  Pagina_Actual := pcClientes.ActivePageIndex;
  pcClientes.ActivePage := tsInformes;
end;

procedure TfrmEntidades.btnFirstCliClick(Sender: TObject);
begin
  try
    Clientes.Close;
    Clientes.Params.ParamByName('IdCliente').AsInteger := ClientesFirst;
    Clientes.Params.ParamByName('IdSucursal').AsInteger := IdSucEnt;
    Clientes.Open;
  except
    on E:Exception do
      raise EUsuario.Create(E.Message);
  end;
end;

procedure TfrmEntidades.btnPriorCliClick(Sender: TObject);
begin
  Actual := ClientesPrior(ClientesIDCLIENTE.AsInteger);
  try
    Clientes.Close;
    Clientes.Params.ParamByName('IdCliente').AsInteger := Actual;
    Clientes.Params.ParamByName('IdSucursal').AsInteger := IdSucEnt;
    Clientes.Open;
  except
    on E:Exception do
      raise EUsuario.Create(E.Message);
  end;
end;

procedure TfrmEntidades.btnSigCliClick(Sender: TObject);
begin
  Actual := ClientesNext(ClientesIDCLIENTE.AsInteger);
  try
    Clientes.Close;
    Clientes.Params.ParamByName('IdCliente').AsInteger := Actual;
    Clientes.Params.ParamByName('IdSucursal').AsInteger := IdSucEnt;
    Clientes.Open;
  except
    on E:Exception do
      raise EUsuario.Create(E.Message);
  end;
end;

procedure TfrmEntidades.btnLastCliClick(Sender: TObject);
begin
  try
    Clientes.Close;
    Clientes.Params.ParamByName('IdCliente').AsInteger := ClientesLast;
    Clientes.Params.ParamByName('IdSucursal').AsInteger := IdSucEnt;
    Clientes.Open;
  except
    on E:Exception do
      raise EUsuario.Create(E.Message);
  end;
end;

procedure TfrmEntidades.btnBuscarCliClick(Sender: TObject);
begin
  Pagina_Actual := pcClientes.ActivePageIndex;
  pcClientes.ActivePage := tsBusqueda;
end;

procedure TfrmEntidades.btnCancelCliClick(Sender: TObject);
begin
  if Clientes.State in dsEditModes then
    Clientes.Cancel;
  if AltCli then
    ModalResult := mrCancel;
end;

procedure TfrmEntidades.btnPrintCliClick(Sender: TObject);
begin
  if not qPrintCli.IsEmpty then
  begin
    try
      qPrintCli.DisableControls;
      rblTitLog.Caption := 'Emisión: '+ DateToStr(Date);
      rblPropietario.Caption := OwnerName;
      rbClientes.Print;
    finally
      qPrintCli.EnableControls;
    end;
  end;
end;

procedure TfrmEntidades.btnExportarCliClick(Sender: TObject);
begin
  if not qPrintCli.IsEmpty then
  begin
    try
      qPrintCli.DisableControls;
      with dmGestion do
      begin
        IyC_Exp.DataSet := qPrintCli;
        IyC_Exp.Select;
      end;
    finally
      qPrintCli.EnableControls;
    end;
  end;
end;

procedure TfrmEntidades.Print_Cli;
Const
  LstCli = 'Select C.IDCLIENTE, C.IDSUCURSAL, C.NOMBRE, C.DIRECCION, '+
           '       C.LOCALIDAD, C.PROVINCIA, C.CODPOSTAL, C.TELEFONOS, '+
           '       C.TELFAX, C.TIPOIVA, C.TIPODOC, C.DOCUMENTO, S.DETSUC, '+
           '       C.INGBRUTOS, C.CODBUSCLI, D.Documento as DetDoc, '+
           '       I.IvaCorto as DetIva '+
           'From CLIENTES C '+
           'Left Outer Join TipoDoc D '+
           '  on D.TipoDoc = C.TipoDoc '+
           'Left Outer Join TipoIva I '+
           '   on I.TipoIva = C.TipoIva '+
           'Join Sucursales S '+
           '   on S.IdSucursal = C.IdSucursal '+
           'Where <Cond> '+
           'Order By C.IdSucursal, C.Nombre ';
begin
  try
    btnPrintCli.Enabled := False;
    btnExportarCli.Enabled := False;
    qPrintCli.Close;
    qPrintCli.SQL.Clear;
    IdSucEnt := Integer(cbSucCli.Items.Objects[cbSucCli.ItemIndex]);
    if IdSucent > 0 then
      qPrintCli.SQL.Text := StringReplace(LstCli, '<Cond>', ' C.IdSucursal = '+IntToStr(IdSucEnt), [rfReplaceAll])
    else
      qPrintCli.SQL.Text := StringReplace(LstCli, '<Cond>', ' C.IdSucursal > 0 ', [rfReplaceAll]);
    Screen.Cursor := crSQLWait;
    qPrintCli.Open;
  finally
    if not qPrintCli.IsEmpty then
    begin
      btnPrintCli.Enabled := True;
      btnExportarCli.Enabled := True;
      gInfCli.SetFocus;
      gInfCli.Refresh;
    end;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmEntidades.btnCalcPrintCliClick(Sender: TObject);
begin
  Print_Cli;
end;

procedure TfrmEntidades.btnSalirCliClick(Sender: TObject);
begin
  if AltCli then
  begin
    if Clientes.State in [dsEdit, dsInsert] then
      Clientes.Post;
    ModalResult := mrOk;
  end
  else
    Close;
end;

procedure TfrmEntidades.btnEditCliClick(Sender: TObject);
begin
  edtNombre.SetFocus;
  NewEnt := False;
  Clientes.Edit;
end;

procedure TfrmEntidades.btnSaveCliClick(Sender: TObject);
begin
  if (Application.MessageBox('¿Graba los datos del cliente?', 'Entidades', MB_ICONQUESTION + MB_YESNO)= IDYES) then
  begin
    if Clientes.State in dsEditModes then
      Clientes.Post;
  end;
end;

procedure TfrmEntidades.ClientesAfterPost(DataSet: TDataSet);
begin
  if not dmGestion.qClientes.Transaction.InTransaction then
    dmGestion.qClientes.Transaction.StartTransaction;
  try
    if Clientes.ApplyUpdates(0) > 0 then
      Abort;
    dmGestion.qClientes.Transaction.Commit;
  except
    dmGestion.qClientes.Transaction.Rollback;
    raise;
  end;
  if Actual > 0 then
  begin
    Clientes.Close;
    Clientes.Params.ParamByName('IdCliente').AsInteger  := Actual;
    Clientes.Params.ParamByName('IdSucursal').AsInteger := IdSucEnt;
    Clientes.Open;
  end;
  Actual := 0;
end;

procedure TfrmEntidades.ClientesReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ApplicationShowException(E);
end;

procedure TfrmEntidades.ClientesBeforeEdit(DataSet: TDataSet);
begin
  Abrir_Tablas;
  if ClientesIdCliente.AsInteger = Impersonal then
  begin
    Clientes.Cancel;
    raise EUsuario.Create('La Entidad IMPERSONAL es un dato Inmodificable del Sistema');
  end;
  Est_Act:= ClientesTIPOCLI.AsInteger;
  Actual := ClientesIDCLIENTE.AsInteger;
  IdSucEnt := ClientesIDSUCURSAL.AsInteger;
end;

procedure TfrmEntidades.ClientesBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
  r: Integer;
begin
  if (Trim(ClientesNombre.AsString) = Vacio) or
     (Trim(ClientesDIRECCION.AsString) = Vacio) or
     (ClientesTIPODOC.AsInteger = 0) or
     (Trim(ClientesDOCUMENTO.AsString) = Vacio) then
    raise EUsuario.Create('Falta algun Dato REQUERIDO del cliente, para poder grabarlo ');

  if ClientesTIPODOC.AsInteger in [DNI, LE, LC, CI] then
  begin
    ClientesDOCUMENTO.AsString := StringReplace(ClientesDOCUMENTO.AsString, '-', '', [rfReplaceAll]);
    ClientesDOCUMENTO.AsString := StringReplace(ClientesDOCUMENTO.AsString, '.', '', [rfReplaceAll]);
    ClientesDOCUMENTO.AsString := StringReplace(ClientesDOCUMENTO.AsString, '/', '', [rfReplaceAll]);
  end;

  if (AltCli) or
     (NewEnt) then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.qClientes.Transaction;
      q.SQL.Add('Select MAX(IDCLIENTE) As Ultimo ');
      q.SQL.Add('From CLIENTES ');
      q.SQL.Add('Where IDSUCURSAL = :IdSuc ');
      q.ParamByName('IdSuc').AsInteger := IdSucEnt;
      q.Open;
      Nuevo := q.FieldByName('Ultimo').AsInteger + 1;
      q.Close;
    finally
      q.Free;
    end;
    ClientesIDCLIENTE.AsInteger := Nuevo;
    NewEnt := False;
  end;

  r := CheckDocEnt(1, ClientesTipoDoc.AsInteger, ClientesDOCUMENTO.AsString);
  if (r > NoEncontrado) and (r <> ClientesIDCLIENTE.AsInteger) and
     (Application.MessageBox(PChar('El Documento a sido ingresado anteriormente al cliente º '+IntToStr(r)+'. Grabar?'),
     'Documento no válido', MB_ICONEXCLAMATION + MB_OKCANCEL) = IDCANCEL) then
    SysUtils.Abort;
  ClientesCODBUSCLI.AsString := ClientesIDCLIENTE.AsString;
end;

procedure TfrmEntidades.ClientesAfterOpen(DataSet: TDataSet);
var
  t: TMDOQuery;
  c: Integer;
  s: Currency;
begin
  s := 0;
  ClientesNOMBRE.ValidChars := CodChars;
  ClientesLOCALIDAD.ValidChars := CodChars;
  ClientesPROVINCIA.ValidChars := CodChars;
  ClientesDIRECCION.ValidChars := CodChars;
end;

procedure TfrmEntidades.ClientesBeforeOpen(DataSet: TDataSet);
begin
  qCredCli.Close;
  lblCantCred.Visible := False;
end;

procedure TfrmEntidades.ClientesNewRecord(DataSet: TDataSet);
begin
  ClientesIDCLIENTE.AsInteger := NUEVO_REGISTRO;
  ClientesIDSUCURSAL.AsInteger := IdBranch;
  ClientesTipoIva.AsInteger := CFi;     //Consumidor final
  ClientesTipoDoc.AsInteger := NINGUNO; //Tipo documento Ninguno
  ClientesTIPOCLI.AsInteger := Estado_Cliente; //1 = Cliente Estado Normal
  ClientesPROVINCIA.AsString:= 'San Juan';
end;

procedure TfrmEntidades.ClientesIDCLIENTEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if Sender.AsInteger = NUEVO_REGISTRO then
    Text := 'Nuevo'
  else
    Text := Sender.AsString;
end;

procedure TfrmEntidades.ClientesBeforeInsert(DataSet: TDataSet);
begin
  Abrir_Tablas;
end;

procedure TfrmEntidades.ClientesDOCUMENTOValidate(Sender: TField);
begin
  if (ClientesTipoDoc.AsInteger = CUIT) and
     (not Validate_Documento_Fiscal(Sender.AsString)) and
    (Application.MessageBox('El número de C.U.I.T. puede ser erroneo. Acepta?', 'C.U.I.T. no válido', MB_ICONEXCLAMATION + MB_YESNO) = IDNO) then
  SysUtils.Abort;
end;

procedure TfrmEntidades.ClientesTIPODOCChange(Sender: TField);
begin
  if Sender.AsInteger = CUIT then //Tipo doc Cuit
    ClientesDocumento.EditMask := '##-########-#;1;_'
  else
    ClientesDocumento.EditMask := '';
end;

procedure TfrmEntidades.ClientesTIPODOCValidate(Sender: TField);
begin
  if (Sender.AsInteger = NINGUNO) and (ClientesTipoIva.AsInteger <> CFi) then
    raise EUsuario.Create('Tipo de Documento no válido para la condición de I.V.A.');
end;

procedure TfrmEntidades.ClientesTIPOIVAValidate(Sender: TField);
begin
  if Sender.AsInteger in [RI, RNI, EX, RMT, NR, NC] then
    ClientesTipoDoc.AsInteger := CUIT
  else begin
    if Sender.Value = CFi then
      ClientesTipoDoc.AsInteger := DNI;
  end;
end;

procedure TfrmEntidades.pcClientesChange(Sender: TObject);
begin
  if Visible then
    Case pcClientes.ActivePageIndex of
      0: if tsDatosClientes.TabVisible then
           edtNombre.SetFocus;
      1: if tsOperaciones.TabVisible then
         begin
           if IdEntidad > Impersonal then
           begin
             edtCliCta.Text := IntToStr(IdEntidad);
             lblNomCli.Caption := edtNombre.Text;
             NCliente := StrToInt(edtCliCta.Text);
           end;
         end;
      2: if tsInformes.TabVisible then
           cbSucCli.SetFocus;
      3: begin
          if tsBusqueda.TabVisible then
            edtNomBus.SetFocus;
        end;
    end;
end;

procedure TfrmEntidades.OperByCli(NroCli, SucCli: Integer);
Const
   ObC = 'Select C.IdCliente, C.Nombre, F.IdFactura, F.IdSucursal, '+
         '       F.IdPuntoVenta, F.NroFactura, F.FechaF, F.Total, '+
         '       T.DescCorta, S.DetSuc '+
         'From FacVen F '+
         'Join Clientes C '+
         '  on (C.IdCliente = F.Cliente) And '+
         '     (C.IdSucursal = F.IdSucursal) '+
         'Left Outer Join TiposComp T '+
         '  on T.IdComprobante = F.TipoFactura '+
         'Join Sucursales S '+
         '  on S.IdSucursal = F.IdSucursal '+
         'Where (F.State = 0) And '+
         '      (F.TipoFactura in (1,2,3,5,6,7,8,90)) <Cond> '+
         'Order By C.Nombre, F.FechaF desc ';

   PbC = 'Select I.IdFactura, I.IdSucursal, I.IdPuntoVenta, '+
         '       I.Cantidad, I.PrecioFinal, I.Descuento,  '+
         '       A.IdArticulo, A.Marca, A.Detalle '+
         'From ItemsFV I '+
         'Join Articulos A '+
         '  on A.IdArticulo = I.IdArticulo '+
         'Where (I.IdFactura = :IdFactura) And '+
         '      (I.IdSucursal = :IdSucursal) And '+
         '      (I.IdPuntoVenta = :IdPuntoVenta) '+
         'Order By A.Marca, A.Detalle ';

begin
  try
    Screen.Cursor := crSqlWait;
    qOperByCli.Close;
    qProdByCli.Close;
    qOperByCli.SQL.Clear;
    if NroCli = 0 then
      qOperByCli.SQL.Text := StringReplace(ObC, '<Cond>',
                            ' And (C.IdCliente > 1) ', [rfReplaceAll])
    else
      qOperByCli.SQL.Text := StringReplace(ObC, '<Cond>',
                             ' And (C.IdCliente = '+IntToStr(NroCli)+')'+
                             ' And (C.IdSucursal = '+IntToStr(SucCli)+')', [rfReplaceAll]);
    qOperByCli.Open;

    if not qOperByCli.IsEmpty then
    begin
      gClientes.GroupFieldName := 'Nombre';
      qProdByCli.Open;
      btnPrintOperByCli.Enabled := True;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmEntidades.btnPrintOperByCliClick(Sender: TObject);
begin
  ShowMessage('No Habilitado');
end;

procedure TfrmEntidades.edtCliCtaEnter(Sender: TObject);
begin
  NCliente := 0;
  btnPrintOperByCli.Enabled := False;
  lblNomCli.Caption := Vacio;
  edtCliCta.SetFocus;
end;

procedure TfrmEntidades.edtCliCtaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F3: begin
      if Busca_Cli(NCliente, IdSucEnt) then
      begin
        if GetDatosEnt(NCliente, IdSucEnt, 1, Datos_Ent) then
        begin
          lblNomCli.Caption := Datos_Ent.Nombre;
          edtCliCta.Text := IntToStr(NCliente);
        end;
      end;
    end;
    VK_ESCAPE:
      btnSalirCli.SetFocus;
  end;
end;

procedure TfrmEntidades.btnCalcOperCliClick(Sender: TObject);
begin
  try
    NCliente := StrToInt(edtCliCta.Text);
  except
    NCliente := 0;
  end;
  OperByCli(NCliente, IdSucEnt);
end;

procedure TfrmEntidades.edtCliCtaExit(Sender: TObject);
begin
  try
    NCliente := StrToInt(edtCliCta.Text);
  except
    NCliente := 0;
  end;
  if NCliente = 0 then
    lblNomCli.Caption := '<TODOS>'
  else begin
    if GetDatosEnt(NCliente, IdSucEnt, 1, Datos_Ent) then
    begin
      lblNomCli.Caption := Datos_Ent.Nombre;
      edtCliCta.Text := IntToStr(NCliente);
    end;
  end;
end;

procedure TfrmEntidades.gCredCliDblClick(Sender: TObject);
begin
  Get_FacV(qCredCliIDFACTURA.AsInteger,
           qCredCliIDSUCURSAL.AsInteger,
           qCredCliIDPUNTOVENTA.AsInteger);
end;

procedure TfrmEntidades.gClientesDblClick(Sender: TObject);
begin
  Get_FacV(qOperByCliIDFACTURA.AsInteger,
           qOperByCliIDSUCURSAL.AsInteger,
           qOperByCliIDPUNTOVENTA.AsInteger);
end;

procedure TfrmEntidades.Buscar;
var
  Busca, Cond: String;
  NrCli: Integer;
begin
  Cond := Vacio;
  btnOkey.Enabled := False;
  qBuscaCli.Close;
  qBuscaCli.SQL.Clear;
  qBuscaCli.SQL.Add('Select C.IdCliente, C.IdSucursal, C.Nombre, C.Documento, ');
  qBuscaCli.SQL.Add('       C.Direccion, C.Telefonos, C.CodBusCli, C.TipoCli, ');
  qBuscaCli.SQL.Add('       S.DetSuc ');
  qBuscaCli.SQL.Add('From Clientes C ');
  qBuscaCli.SQL.Add('Left Outer Join Sucursales S ');
  qBuscaCli.SQL.Add('  on (S.IdSucursal = C.IdSucursal) ');
  qBuscaCli.SQL.Add('Where ((C.IdSucursal =:IdSuc) or (:IdSuc = 1)) And ');

  if Trim(edtNomBus.Text) > Vacio then
  begin
    qBuscaCli.SQL.Add('(C.Nombre like :Busca) ');
    Busca := '%'+Trim(edtNomBus.Text)+'%';
  end
  else begin
    if Trim(edtDocBus.Text) > Vacio then
    begin
      qBuscaCli.SQL.Add('(C.Documento like :Busca) ');
      Busca := '%'+Trim(edtDocBus.Text)+'%';
    end
    else begin
      if Trim(edtNroCta.Text) > Vacio then
      begin
        try
          NrCli := StrToInt(Trim(edtNroCta.Text));
        except
          Busca := Vacio;
          edtNroCta.Text := Vacio;
          edtNroCta.SetFocus;
          raise EUsuario.Create('Código mal ingresado');
        end;
        if NrCli > Impersonal then
        begin
          Busca := IntToStr(NrCli);
          qBuscaCli.SQL.Add('((C.CodBusCli like :Busca) or ');
          qBuscaCli.SQL.Add('(C.IdCliente = '+Busca+')) ');
        end
        else begin
          Busca := Vacio;
          edtNroCta.Text := Vacio;
          edtNroCta.SetFocus;
          raise EUsuario.Create('Código mal ingresado');
        end;
      end
    end;
  end;
  qBuscaCli.SQL.Add('Order By C.Nombre ');
  Cond := qBuscaCli.SQL.Text;
  qBuscaCli.ParamByName('IdSuc').AsInteger := IdBranch;
  qBuscaCli.ParamByName('Busca').AsString := Busca;
  qBuscaCli.Open;
  if not qBuscaCli.IsEmpty then
    btnOkey.Enabled := True
  else
    btnOkey.Enabled := False;

(*
  Select C.IdCliente, C.IdSucursal, C.Nombre, C.Documento,
         C.Direccion, C.Telefonos, C.CodBusCli, C.TipoCli,
         S.DetSuc
  From Clientes C
  Left Outer Join Sucursales S
    on (S.IdSucursal = C.IdSucursal)
  /*Nombre */
  Where (C.Nombre like :Busca)
  /*Documento */
  Where (C.Documento like :Busca)
  /* IdCliente o CodBusCli */
  Where (C.CodBusCli like :Busca) or
        (Cast(C.IdCliente as VarChar(10) ) = :Busca)
         And ((C.IdSucursal =:IdSuc) or (:IdSuc = 1))
  Order By C.Nombre
 *)
end;

procedure TfrmEntidades.gBuscaCliDblClick(Sender: TObject);
begin
  IdEntidad := qBuscaCliIdCliente.AsInteger;
  IdSucEnt  := qBuscaCliIDSUCURSAL.AsInteger;
  if Desde_Afuera then
    ModalResult := mrOk
  else begin
    Clientes.Close;
    Clientes.Params.ParamByName('IdCliente').AsInteger := IdEntidad;
    Clientes.Params.ParamByName('IdSucursal').AsInteger:= IdSucEnt;
    Clientes.Open;
    if not Clientes.IsEmpty then
       pcClientes.ActivePageIndex := Pagina_Actual;
  end;
end;

procedure TfrmEntidades.edtNroCtaExit(Sender: TObject);
begin
  if Trim(edtNroCta.Text) <> Vacio then
    Buscar;
end;

procedure TfrmEntidades.edtNomBusExit(Sender: TObject);
begin
  if Trim(edtNomBus.Text) > Vacio then
    Buscar;
end;

procedure TfrmEntidades.edtDocBusExit(Sender: TObject);
begin
  if Trim(edtDocBus.Text) > Vacio then
    Buscar;
end;

procedure TfrmEntidades.edtNomBusKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmEntidades.btnOkeyClick(Sender: TObject);
begin
  IdEntidad := qBuscaCliIdCliente.AsInteger;
  IdSucEnt := qBuscaCliIDSUCURSAL.AsInteger;
  if Desde_Afuera then
    ModalResult := mrOk
  else begin
    Clientes.Close;
    Clientes.Params.ParamByName('IdCliente').AsInteger := IdEntidad;
    Clientes.Params.ParamByName('IdSucursal').AsInteger:= IdSucEnt;
    Clientes.Open;
    if not Clientes.IsEmpty then
      pcClientes.ActivePageIndex := Pagina_Actual;
  end;
end;

procedure TfrmEntidades.gBuscaCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    IdEntidad := qBuscaCliIdCliente.AsInteger;
    IdSucEnt := qBuscaCliIDSUCURSAL.AsInteger;
    if Desde_Afuera then
      ModalResult := mrOk
    else begin
      Clientes.Close;
      Clientes.Params.ParamByName('IdCliente').AsInteger := IdEntidad;
      Clientes.Params.ParamByName('IdSucursal').AsInteger:= IdSucEnt;
      Clientes.Open;
      if not Clientes.IsEmpty then
        pcClientes.ActivePageIndex := Pagina_Actual;
    end;
  end;
end;

(*

Select Count(Documento), IdSucursal, Documento, Nombre
From Clientes
Group By IdSucursal, Documento, Nombre
Order By 1 desc

*)

end.
