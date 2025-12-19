unit uParamSis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons, wwdbdatetimepicker, ExtCtrls, RzButton,
  wwdbedit, wwdblook, Wwdotdot, Wwdbcomb;

type
  TfrmParametrosSistema = class(TForm)
    lblSisTbl: TLabel;
    IconNos: TImage;
    btnAceptar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    lblTerm: TLabel;
    lblSucur: TLabel;
    edtSucur: TwwDBEdit;
    edtTerm: TwwDBEdit;
    edtSistema: TwwDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtSucurKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    UbicData, Terminal, Sucursal: String;
  end;

var
  frmParametrosSistema: TfrmParametrosSistema;

implementation

{$R *.DFM}

procedure TfrmParametrosSistema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UbicData := edtSistema.Text;
  Terminal := edtTerm.Text;
  Sucursal := edtSucur.Text;
end;

procedure TfrmParametrosSistema.FormShow(Sender: TObject);
begin
  edtSistema.Text := UbicData;
  edtTerm.Text := Terminal;
  edtSucur.Text := Sucursal;
end;

procedure TfrmParametrosSistema.FormCreate(Sender: TObject);
begin
  //
end;

procedure TfrmParametrosSistema.edtSucurKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.INC}
end;

end.
