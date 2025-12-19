unit uClaveMod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook, RzButton,
  RzEdit, RzLabel, ExtCtrls, RzForms;

type
  TfrmClaveMod = class(TForm)
    ifClaveMod: TRzFormShape;
    edtPassW: TRzEdit;
    lblPassWord: TRzLabel;
    lblCaption: TRzLabel;
    lblNivel: TLabel;
    lblTable: TLabel;
    btnCerrar: TRzBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure edtPassWEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtPassWExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IdAutor: Integer;
  end;

  function Check_Seg(What_Level: Integer; TNombre: String; var IdAutorizado: Integer): Boolean;

var
  frmClaveMod: TfrmClaveMod;
  Que_Nivel: Integer;
  StTable: String;

implementation

uses udmGestion, uTools;

{$R *.dfm}

function Check_Seg(What_Level: Integer; TNombre: String; var IdAutorizado: Integer): Boolean;
begin
  Result := False;
  Que_Nivel := What_Level;
  StTable := TNombre;
  IdAutorizado := NoEncontrado;
  if Tarea <= Que_Nivel then
    Result := True
  else begin
    frmClaveMod := TfrmClaveMod.Create(nil);
    if frmClaveMod.ShowModal = mrOk then
    begin
      IdAutorizado := frmClaveMod.IdAutor;
      Result := True;
    end;
  end;
end;

procedure TfrmClaveMod.FormCreate(Sender: TObject);
begin
  Clave := Cero;
  edtPassW.Text := '    ';
  lblTable.Caption := Trim(StTable);
  with dmGestion do
  begin
    if not Funciones.Active then
      Funciones.Open;
    if Que_Nivel > 0 then
    begin
     if Funciones.Locate(FuncionesIdFuncion.FieldName, Que_Nivel, []) then
       lblNivel.Caption := 'Nivel: '+FuncionesFuncion.AsString
     else begin
       ModalResult := mrCancel;
       raise EUsuario.Create('No esta habilitado para esta función');
     end;
    end
    else begin
      Nivel_Adm := Administrador;
      Que_Nivel := Administrador;
      lblNivel.Caption := 'Nivel: Administrador';
    end;
  end;
end;

procedure TfrmClaveMod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmClaveMod.edtPassWEnter(Sender: TObject);
begin
  edtPassW.SelectAll;
end;

procedure TfrmClaveMod.edtPassWExit(Sender: TObject);
begin
  try
    Clave := Trim(edtPassW.Text);
  except
    raise EUsuario.Create('password invalido.-')
  end;

  if Clave = Cero then
    raise EUsuario.Create('password invalido.-');

  if Get_User_Designer(Clave) then
  begin
    ModalResult := mrOk;
    Exit;
  end;

  if GetDatosEmp(0, Clave, 4, Datos_Ent) then
  begin
    if (Datos_Ent.Tarea <= Que_Nivel) and (Datos_Ent.Activo) then
    begin
      IdAutor := Datos_Ent.IdEnt;
      ModalResult := mrOk;
    end
    else
      ModalResult := mrCancel;
  end
  else
    ModalResult := mrCancel;
end;

end.
