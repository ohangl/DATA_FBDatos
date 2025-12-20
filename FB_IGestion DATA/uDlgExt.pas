unit uDlgExt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, wwdbedit, wwdblook, Wwdotdot, Wwdbcomb,
  RzButton, ExtCtrls, RzPanel;

type
  TfrmDlgExt = class(TForm)
    gbDetalleExtendido: TRzGroupBox;
    lblLine1: TLabel;
    lblLine2: TLabel;
    lblLine3: TLabel;
    lblLine4: TLabel;
    edtDetExt1: TwwDBEdit;
    edtDetExt2: TwwDBEdit;
    edtDetExt3: TwwDBEdit;
    edtDetExt4: TwwDBEdit;
    btnAceptar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtDetExt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Tipo_Fac: SmallInt;
  end;

var
  frmDlgExt: TfrmDlgExt;

implementation

uses uFacV, uTools, uTransDep;

{$R *.DFM}

procedure TfrmDlgExt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmDlgExt.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ModalResult = mrCancel then
  begin
    case Tipo_Fac of
      1: with frmFacV do
         begin
           ItemsFVDetalle1.AsString := Cero;
           ItemsFVDetalle2.AsString := Cero;
           ItemsFVDetalle3.AsString := Cero;
           ItemsFVDetalle4.AsString := Cero;
         end;
      2: with frmTransDep do
         begin
           ItemsTDetalle1.AsString := Cero;
           ItemsTDetalle2.AsString := Cero;
           ItemsTDetalle3.AsString := Cero;
           ItemsTDetalle4.AsString := Cero;
         end;
    end;
  end;
end;

procedure TfrmDlgExt.edtDetExt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmDlgExt.FormShow(Sender: TObject);
begin
  case Tipo_Fac of
    1: with frmFacV do
       begin
         edtDetExt1.DataField := ItemsFVDetalle1.FieldName;
         edtDetExt1.DataSource:= dsItemsFV;
         edtDetExt2.DataField := ItemsFVDetalle2.FieldName;
         edtDetExt2.DataSource:= dsItemsFV;
         edtDetExt3.DataField := ItemsFVDetalle3.FieldName;
         edtDetExt3.DataSource:= dsItemsFV;
         edtDetExt4.DataField := ItemsFVDetalle4.FieldName;
         edtDetExt4.DataSource:= dsItemsFV;
         if not Tipo_Factura then
         begin
           edtDetExt3.Visible := False;
           edtDetExt4.Visible := False;
         end;
       end;
    2: with frmTransDep do
       begin
         edtDetExt1.DataField := ItemsTDetalle1.FieldName;
         edtDetExt1.DataSource:= dsItemsT;
         edtDetExt2.DataField := ItemsTDetalle2.FieldName;
         edtDetExt2.DataSource:= dsItemsT;
         edtDetExt3.DataField := ItemsTDetalle3.FieldName;
         edtDetExt3.DataSource:= dsItemsT;
         edtDetExt4.DataField := ItemsTDetalle4.FieldName;
         edtDetExt4.DataSource:= dsItemsT;
       end;
  end;
end;

end.
