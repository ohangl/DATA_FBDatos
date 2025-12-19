unit uSelecUsuario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, Variants, RzButton, Mask, RzEdit, RzForms,
  RzBorder, RzPanel;

type
  TfrmSelecUsuario = class(TForm)
    gbIngreso: TRzGroupBox;
    bvlSelect: TBevel;
    lblUsuario: TLabel;
    lblPassWord: TLabel;
    iUsuario: TImage;
    lblTarea: TLabel;
    lblCaption: TLabel;
    edtPassWord: TRzEdit;
    btnAceptar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    btnChangePassWord: TRzBitBtn;
    pnlStatus: TRzPanel;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtPassWordExit(Sender: TObject);
    procedure edtPassWordEnter(Sender: TObject);
    procedure btnChangePassWordClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Clave_Ing: String;
  public
    { Public declarations }
  end;

var
  frmSelecUsuario: TfrmSelecUsuario;

implementation

uses udmGestion, uTools, uCambioDeClave;

{$R *.DFM}

procedure TfrmSelecUsuario.FormCreate(Sender: TObject);
begin
  NombreUsuario := Cero;
  DetalleTarea  := Cero;
  Tarea := 0;
  Usuario := 0;
  Clave_Ing := Cero;
  lblCaption.Caption := SysFirm;
  lblUsuario.Caption := NombreUsuario;
  Application.ProcessMessages;
end;

procedure TfrmSelecUsuario.FormShow(Sender: TObject);
begin
  gbIngreso.Caption := 'Ingreso al sistema '+OwnerName;
end;

procedure TfrmSelecUsuario.edtPassWordEnter(Sender: TObject);
begin
  btnChangePassWord.Enabled := False;
  NombreUsuario := Cero;
  DetalleTarea  := Cero;
  Tarea := 0;
  Usuario := 0;
  Clave := '9999';
  Clave_Ing := '9999';
  edtPassWord.Text := '0000';
  pnlStatus.Caption := Vacio;
  lblTarea.Caption := Vacio;
  edtPassWord.SelectAll;
end;

procedure TfrmSelecUsuario.edtPassWordExit(Sender: TObject);

  procedure Go_Home;
  begin
    edtPassWord.Text := '0000';
    edtPassWord.SetFocus;
    raise EUsuario.Create('Usuario no asignado');
  end;

begin
  try
    Clave_Ing := edtPassWord.Text;
  except
    if not btnCancelar.Focused then
    begin
      Clave_Ing := Vacio;
      edtPassWord.Text := '0000';
      edtPassWord.SetFocus;
      raise EUsuario.Create('password invalido');
    end
    else begin
      Close;
    end;
  end;
  if (Trim(Clave_Ing) > Vacio) and (Clave_Ing <> '0000') then
  begin
    pnlStatus.Caption := Vacio;
    if Get_User_Designer(Clave_Ing) then
    begin
      NombreUsuario := 'Programador';
      DetalleTarea := 'Administrador';
      Clave := Clave_Ing;
      Tarea := Administrador;
      lblUsuario.Caption := NombreUsuario;
    end
    else begin
      if GetDatosEmp(0, Clave_Ing, 4, Datos_Ent) then
      begin
        Usuario := Datos_Ent.IdEnt;
        NombreUsuario := Datos_Ent.Nombre;
        DetalleTarea  := Datos_Ent.Autorizado; // Viene Funcion
        Tarea := Datos_Ent.Tarea;
        if Tarea < SoloVentas then
          btnChangePassWord.Enabled := True;

        if not (Datos_Ent.IdSuc = 0) then
        begin
          if not (Datos_Ent.IdSuc = IdBranch) then
          begin
            if IdBranch <> 1 then
              Go_Home
            else begin
              if not Datos_Ent.Activo then
              Go_Home
            end;
          end
          else begin
            (*
            if (IdBranch <> 1) then
              Go_Home
            else begin
            *)
              if not Datos_Ent.Activo then
                Go_Home
            //end;
          end;
        end
        else begin
          if not Datos_Ent.Activo then
            Go_Home
        end;

        lblUsuario.Caption := NombreUsuario;
        lblTarea.Caption := DetalleTarea;
        Clave := Datos_Ent.PassW;
      end
      else begin
        if not btnCancelar.Focused then
        begin
          lblUsuario.Caption := Vacio;
          DetalleTarea := Vacio;
          Clave_Ing := Cero;
          edtPassWord.Text := '0000';
          edtPassWord.SetFocus;
          raise EUsuario.Create('password invalido');
        end
        else begin
          Close;
        end;
      end;
    end;
  end;
end;

procedure TfrmSelecUsuario.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ModalResult = mrOK then
  begin
    if Clave = Clave_Ing then
    begin
      pnlStatus.Caption := 'Password incorrecta';
      CanClose := True;
    end
    else begin
      Clave_Ing := '9999';
      edtPassWord.SetFocus;
      pnlStatus.Caption := 'Error. Password no corresponde a ningun Usuario';
      CanClose := False;
    end;
  end
  else begin
    CanClose := True;
  end;
end;

procedure TfrmSelecUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmSelecUsuario.btnChangePassWordClick(Sender: TObject);
begin
  frmCambioDeClave := TfrmCambioDeClave.Create(Self);
  frmCambioDeClave.ShowModal;
  edtPassWord.SetFocus;
end;

end.
