unit uSelectDestinoSaF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, Mask, wwdbedit, ExtCtrls, RzPanel, RzSplit,
  Wwdotdot, Wwdbcomb, RzEdit;

type
  TfrmSelectDestinoSAF = class(TForm)
    pnlSAF: TRzSizePanel;
    gbDestino: TRzGroupBox;
    lblEntidad: TLabel;
    lblDatosCli: TLabel;
    edtCliente: TRzNumericEdit;
    btnEligioSAF: TRzBitBtn;
    btnCancelSAF: TRzBitBtn;
    btnSeachCliSaF: TRzBitBtn;
    lblAviso: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtClienteEnter(Sender: TObject);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtClienteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSeachCliSaFClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    SaF_Elegido: Integer;
  end;

function Destino_SAF(AQuien: Integer; Aviso: String): Integer;

var
  frmSelectDestinoSAF: TfrmSelectDestinoSAF;

implementation

uses udmGestion, uEntidades, uTools;

{$R *.dfm}

function Destino_SAF(AQuien: Integer; Aviso: String): Integer;
begin
  Result := AQuien;
  frmSelectDestinoSAF := TfrmSelectDestinoSAF.Create(nil);
  frmSelectDestinoSAF.SaF_Elegido := AQuien;
  frmSelectDestinoSAF.lblAviso.Caption := Aviso;
  Application.ProcessMessages;
  if frmSelectDestinoSAF.ShowModal = mrOk then
  begin
    Result := frmSelectDestinoSAF.SaF_Elegido
  end;
end;

procedure TfrmSelectDestinoSAF.btnSeachCliSaFClick(Sender: TObject);
begin
  if Busca_Cli(IdEntidad, IdSucEnt) then
    SaF_Elegido := IdEntidad;
end;

procedure TfrmSelectDestinoSAF.edtClienteEnter(Sender: TObject);
begin
  edtCliente.SelectAll;
  pnlSAF.Caption := edtCliente.Hint;
end;

procedure TfrmSelectDestinoSAF.edtClienteExit(Sender: TObject);
begin
  SaF_Elegido := edtCliente.IntValue;
  if SaF_Elegido <> Impersonal then
  begin
    if GetDatosEnt(SaF_Elegido, IdBranch, 1, Datos_Ent) then
    begin
      lblDatosCli.Caption := Datos_Ent.Nombre;
      SaF_Elegido := Datos_Ent.IdEnt;
    end
    else begin
      edtCliente.SetFocus;
      raise EUsuario.Create('Código de Cliente invalido');
    end;
  end;
end;

procedure TfrmSelectDestinoSAF.edtClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NuevoCli: Integer;
begin
  case Key of
    VK_F1: begin
      NuevoCli := AltaCliente(1);
      if NuevoCli <> NoEncontrado then
      begin
        SaF_Elegido := NuevoCli;
        edtCliente.IntValue := SaF_Elegido;
      end;
    end;
    VK_F3: begin
      if Busca_Cli(IdEntidad, IdSucEnt) then
      begin
        SaF_Elegido := IdEntidad;
        edtCliente.IntValue := SaF_Elegido;
      end;
    end;
    VK_ESCAPE:
      btnCancelSAF.SetFocus;
  end;
end;

procedure TfrmSelectDestinoSAF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmSelectDestinoSAF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not Application.MessageBox('¿Acepta el Titular del Saldo a Favor?','SaF', MB_ICONQUESTION + MB_YESNO) = IdYES then
  begin
    CanClose := False;
    edtCliente.SetFocus;
  end;
end;

procedure TfrmSelectDestinoSAF.FormCreate(Sender: TObject);
begin
  lblDatosCli.Caption := Cero;
  SaF_Elegido := NoEncontrado;
end;

procedure TfrmSelectDestinoSAF.FormShow(Sender: TObject);
begin
  if SaF_Elegido > 0 then
  begin
    if GetDatosEnt(SaF_Elegido, IdBranch, 1, Datos_Ent) then
    begin
      edtCliente.IntValue := SaF_Elegido;
      lblDatosCli.Caption := Datos_Ent.Nombre
    end
    else begin
      edtCliente.IntValue := 0;
      lblDatosCli.Caption := Cero;
    end;
  end;
  Application.ProcessMessages;
end;

end.
