unit uModCCP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdbedit, DB, StdCtrls, Mask, DBCtrls, wwdblook, wwdbdatetimepicker,
  Wwdotdot, Wwdbcomb, Buttons, RzButton, MDOCustomDataSet, ExtCtrls,
  RzPanel, RzBorder, Provider, DBClient, MDOQuery;

type
  TfrmModCCP = class(TForm)
    lblFechaCCP: TLabel;
    lblCompCCP: TLabel;
    edtCompCCP: TwwDBEdit;
    lblDebeCCP: TLabel;
    edtDebeCCP: TwwDBEdit;
    lblPagoActaCCP: TLabel;
    edtPagoACtaCCP: TwwDBEdit;
    lblSaldoMovCCP: TLabel;
    edtSaldoMovCCP: TwwDBEdit;
    lblHaberCCP: TLabel;
    edtHaberCCP: TwwDBEdit;
    lblEstadoCCP: TLabel;
    lblTCompCCP: TLabel;
    edtFechaCCP: TwwDBDateTimePicker;
    cbTCompCCP: TwwDBLookupCombo;
    cbEstadoCCP: TwwDBComboBox;
    lblEntCCP: TLabel;
    pnlBtnModCC: TRzPanel;
    btnOkCCP: TRzBitBtn;
    btnDelCCP: TRzBitBtn;
    btnCancelCCP: TRzBitBtn;
    btnSalirCCP: TRzBitBtn;
    btnModCCP: TRzBitBtn;
    edtEntidad: TwwDBEdit;
    lblNomEntidad: TDBText;
    edtNetoMov: TwwDBEdit;
    lblNetoMov: TLabel;
    edtFecOrg: TwwDBDateTimePicker;
    lblFecOrg: TLabel;

    dspqCCProv: TDataSetProvider;
    dsCCProv: TDataSource;
    CCProv: TClientDataSet;
    CCProvNROMOVIMIENTO: TIntegerField;
    CCProvIDCOMPROBANTE: TIntegerField;
    CCProvIDSUCURSAL: TIntegerField;
    CCProvTCOMP: TSmallintField;
    CCProvENTIDAD: TIntegerField;
    CCProvFECHA: TDateField;
    CCProvFECHAORG: TDateField;
    CCProvCOMPROBANTE: TStringField;
    CCProvDEBE: TBCDField;
    CCProvHABER: TBCDField;
    CCProvPAGOACTA: TBCDField;
    CCProvSALDOMOV: TBCDField;
    CCProvSALDO: TBCDField;
    CCProvESTADO: TSmallintField;
    CCProvIMPNETO: TBCDField;
    CCProvDESCRIPCION: TStringField;
    CCProvSTATE: TSmallintField;
    CCProvNOMBRE: TStringField;

    qCCProv: TMDODataSet;
    qCCProvNROMOVIMIENTO: TIntegerField;
    qCCProvIDCOMPROBANTE: TIntegerField;
    qCCProvIDSUCURSAL: TIntegerField;
    qCCProvTCOMP: TSmallintField;
    qCCProvENTIDAD: TIntegerField;
    qCCProvFECHA: TDateField;
    qCCProvFECHAORG: TDateField;
    qCCProvCOMPROBANTE: TMDOStringField;
    qCCProvDEBE: TMDOBCDField;
    qCCProvHABER: TMDOBCDField;
    qCCProvPAGOACTA: TMDOBCDField;
    qCCProvSALDOMOV: TMDOBCDField;
    qCCProvSALDO: TMDOBCDField;
    qCCProvESTADO: TSmallintField;
    qCCProvIMPNETO: TMDOBCDField;
    qCCProvSTATE: TSmallintField;
    qCCProvDESCRIPCION: TMDOStringField;
    qCCProvNOMBRE: TMDOStringField;
    brModCCP: TRzBorder;
    qCCProvIDEMPRESA: TIntegerField;
    CCProvIDEMPRESA: TIntegerField;
    lblDetEmp: TLabel;
    cbDetEmp: TwwDBLookupCombo;
    btnVerComp: TRzBitBtn;
    lblIdFactura: TDBText;
    lblIdSucur: TDBText;
    lblIdFact: TLabel;
    lblIdSuc: TLabel;
    lblIdCCP: TLabel;
    lblNroMovCCP: TDBText;
    qCCProvIDPUNTOVENTA: TIntegerField;
    CCProvIDPUNTOVENTA: TIntegerField;

    procedure edtDebeCCPKeyPress(Sender: TObject; var Key: Char);
    procedure edtFechaCCPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnOkCCPClick(Sender: TObject);
    procedure btnCancelCCPClick(Sender: TObject);
    procedure btnSalirCCPClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnDelCCPClick(Sender: TObject);
    procedure btnModCCPClick(Sender: TObject);
    procedure CCProvAfterPost(DataSet: TDataSet);
    procedure CCProvReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;  var Action: TReconcileAction);
    procedure btnVerCompClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NroMov: Integer;
  end;

var
  frmModCCP: TfrmModCCP;

  procedure Get_MovCCP(IdM: Integer);

implementation

uses udmGestion, udmSaveFile, uTools, uBeforeDelete, uClaveMod, uViewFacC,
  uViewFacT, uViewOrdP;

{$R *.dfm}

procedure Get_MovCCP(IdM: Integer);
begin
  frmModCCP := TfrmModCCP.Create(Application);
  with frmModCCP do
  begin
    NroMov := IdM;
    ShowModal;
  end;
end;

procedure TfrmModCCP.FormShow(Sender: TObject);
begin
  CCProv.Close;
  qCCProv.ParamByName('NroMov').AsInteger := NroMov;
  CCProv.Open;
end;

procedure TfrmModCCP.edtDebeCCPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmModCCP.edtFechaCCPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmModCCP.btnOkCCPClick(Sender: TObject);
begin
  if CCProv.State = dsEdit then
    CCProv.Post;
end;

procedure TfrmModCCP.btnCancelCCPClick(Sender: TObject);
begin
  if CCProv.State = dsEdit then
    CCProv.Cancel;
end;

procedure TfrmModCCP.btnSalirCCPClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmModCCP.btnVerCompClick(Sender: TObject);
begin
  Case CCProvTCOMP.AsInteger of
    FacA, FacB,
    FacC, CreA,
    CreB, CreC,
    CreditoAjuste,
    DebitoAjuste,
    DebA, DebB, DebC, NoImputable:
       Get_FacC(CCProvIdComprobante.AsInteger,
                CCProvIdSucursal.AsInteger,
                CCProvIdPuntoVenta.AsInteger);
    OrdenDePago,
    Anticipos  : Get_OP(CCProvIdComprobante.AsInteger);
    Descuento_D: Get_FacS(CCProvTComp.AsInteger,
                          CCProvIdComprobante.AsInteger,
                          CCProvIdSucursal.AsInteger,
                          CCProvIdPuntoVenta.AsInteger);
  end;
end;

procedure TfrmModCCP.CCProvAfterPost(DataSet: TDataSet);
begin
  if not qCCProv.Transaction.InTransaction then
    qCCProv.Transaction.StartTransaction;
  if CCProv.ApplyUpdates(0) > 0 then
    Abort;
  try
    qCCProv.Transaction.Commit
  except
    qCCProv.Transaction.Rollback;
  end;
end;

procedure TfrmModCCP.CCProvReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ApplicationShowException(E);
end;

procedure TfrmModCCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmModCCP.btnDelCCPClick(Sender: TObject);
var
  B: Integer;
begin
  if not Check_Seg(Nivel_Adm, 'Del CCP', AutorDto) then
    raise EUsuario.Create('No esta autorizado.-');
  if Application.MessageBox('¿Confirma borrar movimiento de Cuenta Corriente?', 'Proveedores',MB_ICONQUESTION+MB_YESNO) = ID_YES then
  begin
    B := AntesDeBorrar;
    if not qCCProv.Transaction.InTransaction then
      qCCProv.Transaction.StartTransaction;
    CCProv.Edit;
    CCProvSTATE.AsInteger := B;
    CCProv.Post;
    try
      qCCProv.Transaction.Commit
    except
      qCCProv.Transaction.Rollback;
    end;
  end;
end;

procedure TfrmModCCP.btnModCCPClick(Sender: TObject);
begin
  CCProv.Edit;
  cbTcompCCP.SetFocus;
end;

end.
