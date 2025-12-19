unit uError;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, RzButton, RzLabel, RzForms;

type
  TfrmError = class(TForm)
    lblError: TRzLabel;
    ifError: TRzFormShape;
    btnAceptar: TRzBitBtn;
    mError: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure IyCException(Sender: TObject; E: Exception);
  end;

var
  frmError: TfrmError;

implementation

{$R *.DFM}
uses uTools, udmGestion;

procedure TfrmError.IyCException(Sender: TObject; E: Exception);
begin
  lblError.Caption := 'Informe de error';
  if Sender is TForm then
    mError.Lines.Add((Sender as TForm).Caption);
  if (E is EUsuario) then
    lblError.Caption := 'Informe de error';
  mError.Lines.Add(E.Message);
  if not Visible then
    ShowModal;
  mError.Lines.Clear;
end;

procedure TfrmError.FormCreate(Sender: TObject);
begin
  mError.Lines.Clear;
end;

procedure TfrmError.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mError.Lines.Clear;
end;

end.
