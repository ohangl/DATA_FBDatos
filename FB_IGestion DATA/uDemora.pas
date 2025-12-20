unit uDemora;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RzLabel, RzBorder;

type
  TfrmDemora = class(TForm)
    lblImpresion: TRzLabel;
    brDemora: TRzBorder;
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure ShowDemora(Msg: String);
  procedure CloseDemora;

  var
    ExisteDemora: Boolean;

implementation

uses uTools;

{$R *.DFM}
var
  frmDemora: TfrmDemora;

procedure ShowDemora(Msg: String);
begin
  frmDemora := TfrmDemora.Create(Application);
  with frmDemora do
  begin
    Show;
    ExisteDemora := True;
    if Trim(Msg) <> Vacio then
      lblImpresion.Caption := Msg;
  end;
  Application.ProcessMessages;
end;

procedure CloseDemora;
begin
  if ExisteDemora then
  begin
    try
      ExisteDemora := False;
    finally
      FreeAndNil(frmDemora);
    end
  end;
end;

procedure TfrmDemora.FormDblClick(Sender: TObject);
begin
  CloseDemora;
end;

end.
