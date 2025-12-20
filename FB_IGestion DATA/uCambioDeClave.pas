unit uCambioDeClave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, RzButton, StdCtrls, Mask, wwdbedit, wwdblook,
  Wwdotdot, Wwdbcomb, RzEdit;

type
  TfrmCambioDeClave = class(TForm)
    pnlTopClave: TRzPanel;
    pnlFootClave: TRzPanel;
    btnAceptar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    edtKActual: TRzEdit;
    edtKNuevo: TRzEdit;
    edtKConfirm: TRzEdit;
    lblKActual: TLabel;
    lblKNuevo: TLabel;
    lblKConfirm: TLabel;
    lblDeQuienEs: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edtKActualEnter(Sender: TObject);
    procedure edtKNuevoEnter(Sender: TObject);
    procedure edtKConfirmEnter(Sender: TObject);
    procedure edtKActualExit(Sender: TObject);
    procedure edtKNuevoExit(Sender: TObject);
    procedure edtKConfirmExit(Sender: TObject);
  private
    { Private declarations }
    Clave_Ing, Clave1, Clave2: String;
    Quien_Es: Integer;
  public
    { Public declarations }
  end;

var
  frmCambioDeClave: TfrmCambioDeClave;

implementation

uses udmGestion, uTools;

{$R *.dfm}

procedure TfrmCambioDeClave.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCambioDeClave.FormCreate(Sender: TObject);
begin
  lblDeQuienEs.Caption := '----';
  Clave_Ing := Cero;
  Clave1 := Cero;
  Clave2 := Cero;
  Quien_Es := 0;
  edtKActual.Text := '0000';
  edtKNuevo.Text  := '0000';
  edtKConfirm.Text:= '0000';
end;

procedure TfrmCambioDeClave.edtKActualEnter(Sender: TObject);
begin
  lblDeQuienEs.Caption := '';
  edtKActual.SelectAll;
end;

procedure TfrmCambioDeClave.edtKNuevoEnter(Sender: TObject);
begin
  edtKNuevo.SelectAll;
end;

procedure TfrmCambioDeClave.edtKConfirmEnter(Sender: TObject);
begin
  edtKConfirm.SelectAll;
end;

procedure TfrmCambioDeClave.edtKActualExit(Sender: TObject);
begin
  try
    Clave_Ing := edtKActual.Text;
  except
    if not btnCancelar.Focused then
    begin
      Clave_Ing := Vacio;
      edtKActual.Text := '0000';
      edtKActual.SetFocus;
      raise EUsuario.Create('password invalido');
    end
    else
      Close;
  end;

  if (Trim(Clave_Ing) > Vacio) and (Clave_Ing <> '0000') then
  begin
    lblDeQuienEs.Caption := Vacio;
    if GetDatosEmp(0, Clave_Ing, 4, Datos_Ent) then
    begin
      Quien_Es := Datos_Ent.IdEnt;
      lblDeQuienEs.Caption := Datos_Ent.Nombre;
    end
    else begin
      if not btnCancelar.Focused then
      begin
        lblDeQuienEs.Caption := Vacio;
        Clave_Ing := Cero;
        edtKActual.Text := '0000';
        edtKActual.SetFocus;
        raise EUsuario.Create('password inexistente.-');
      end
      else
        Close;
    end;
  end;
end;

procedure TfrmCambioDeClave.edtKNuevoExit(Sender: TObject);
begin
  try
    Clave1 := edtKNuevo.Text;
  except
    if not btnCancelar.Focused then
    begin
      Clave1 := Vacio;
      edtKNuevo.Text := '0000';
      edtKNuevo.SetFocus;
      raise EUsuario.Create('entrada 1 invalida');
    end
    else
      Close;
  end;
end;

procedure TfrmCambioDeClave.edtKConfirmExit(Sender: TObject);
begin
  try
    Clave2 := edtKNuevo.Text;
  except
    if not btnCancelar.Focused then
    begin
      Clave2 := Vacio;
      edtKConfirm.Text := '0000';
      edtKConfirm.SetFocus;
      raise EUsuario.Create('entrada 2 invalida');
    end
    else
      Close;
  end;

  if Clave1 = Clave2 then
  begin
    try
      Screen.Cursor := crHourGlass;
      dmGestion.qEmpleados.Close;
      dmGestion.qEmpleados.ParamByName('IdEmpleado').AsInteger := Quien_Es;
      dmGestion.qEmpleados.Open;
      if not dmGestion.qEmpleados.IsEmpty then
      begin
        dmGestion.qEmpleados.Edit;
        dmGestion.qEmpleadosPassW.AsString := Clave1;
        dmGestion.qEmpleados.Post;
      end;
    finally
      Screen.Cursor := crDefault;
      btnAceptar.SetFocus;
      ShowMessage('el cambio se realizo exitosamente.-');
    end;
  end
  else begin
    edtKNuevo.SetFocus;
    ShowMessage('ingreso invalido. Reintentelo');
  end;
end;

end.
