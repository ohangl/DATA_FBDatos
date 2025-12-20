unit uContado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, wwdbedit, RzEdit;

type
  TfrmContado = class(TForm)
    lblQuePago: TLabel;
    edtPago: TRzNumericEdit;
    procedure edtPagoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure edtPagoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FPago: Currency;
    procedure SetPago(AValue: Currency);
  public
    { Public declarations }
    property Pago: Currency read FPago write SetPago;
  end;

var
  frmContado: TfrmContado;

implementation

uses uTools;

{$R *.DFM}

procedure TfrmContado.edtPagoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN: begin
      FPago := edtPago.Value;
      ModalResult := mrOK;
    end;
    VK_ESCAPE: ModalResult := mrCancel;
  end;
end;

procedure TfrmContado.SetPago(AValue: Currency);
begin
  FPago := AValue;
  edtPago.Text := Format('%10.2f', [FPago]);
end;

procedure TfrmContado.FormActivate(Sender: TObject);
begin
  edtPago.SelectAll;
end;

procedure TfrmContado.edtPagoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmContado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
