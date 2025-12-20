unit uBonifNC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwclearbuttongroup,
  wwradiogroup, Mask, wwdbedit, ExtCtrls, Buttons, RzButton, RzPanel,
  RzRadGrp, MDOCustomDataSet, MDOQuery;

type
  TfrmBonifNC = class(TForm)
    qBonifNC: TMDOQuery;
    dsqBonifNC: TDataSource;
    gNdeCred: TwwDBGrid;
    qBonifNCIdFactura: TIntegerField;
    qBonifNCIdSucursal: TIntegerField;
    qBonifNCIdPeriodo: TIntegerField;
    qBonifNCTipoFactura: TSmallintField;
    qBonifNCFechaF: TDateField;
    qBonifNCNroFactura: TStringField;
    qBonifNCCompRef: TStringField;
    qBonifNCIdCompRef: TIntegerField;
    qBonifNCProveedor: TIntegerField;

    rbTipoBonif: TRzRadioGroup;
    edtImporte: TwwDBEdit;
    lblImporte: TLabel;
    qBonifNCSelected: TSmallIntField;
    pnlFootBNC: TRzPanel;
    btnAceptar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    qBonifNCTOTAL: TMDOBCDField;
    procedure FormCreate(Sender: TObject);
    procedure edtImporteKeyPress(Sender: TObject; var Key: Char);
    procedure edtImporteEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rbTipoBonifClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtImporteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gNdeCredMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }
    FPago: Currency;
    procedure SetPago(AValue: Currency);
  public
    { Public declarations }
    Prove: Integer;
    property Pago: Currency read FPago write SetPago;
  end;

var
  frmBonifNC: TfrmBonifNC;
  CantNC, TipoBNC: Integer;
  SumaNC: Currency;


implementation

uses udmGestion, udmSaveFile, uTools, uFormasDePago;

{$R *.dfm}

procedure TfrmBonifNC.FormCreate(Sender: TObject);
begin
  qBonifNC.Close;
  Color := clCream;
  gNdeCred.Enabled := False;
  edtImporte.Enabled := False;
  TipoBNC := 0;
end;

procedure TfrmBonifNC.SetPago(AValue: Currency);
begin
  FPago := AValue;
  edtImporte.Text := Format('%10.2f', [FPago]);
end;

procedure TfrmBonifNC.edtImporteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmBonifNC.edtImporteEnter(Sender: TObject);
begin
  edtImporte.SelectAll;
end;

procedure TfrmBonifNC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmBonifNC.rbTipoBonifClick(Sender: TObject);
begin
  Case rbTipoBonif.ItemIndex of
    0: begin
         edtImporte.Enabled := True;
         edtImporte.SetFocus;
         TipoBNC := 1;
       end;
    1: begin
         qBonifNC.ParamByName('Prove').AsInteger := Prove;
         qBonifNC.Open;
         if not qBonifNC.IsEmpty then
         begin
           gNdeCred.Enabled := True;
           gNdeCred.SetFocus;
           TipoBNC := 2;
         end
         else
           raise EUsuario.Create('No hay notas de credito del proveedor');
       end;
  end;
end;

procedure TfrmBonifNC.FormActivate(Sender: TObject);
begin
  rbTipoBonif.SetFocus;
end;

procedure TfrmBonifNC.edtImporteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN: begin
      FPago := StrToFloat(edtImporte.Text);
      ModalResult := mrOK;
    end;
    VK_ESCAPE: ModalResult := mrCancel;
  end;
end;

procedure TfrmBonifNC.gNdeCredMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
begin
  if Selecting then
  begin
    Inc(CantNC);
    SumaNC := SumaNC + qBonifNCTotal.AsCurrency;
  end
  else begin
    Dec(CantNC);
    SumaNC := SumaNC + qBonifNCTotal.AsCurrency;
  end;
end;

procedure TfrmBonifNC.btnAceptarClick(Sender: TObject);
var
  i: Integer;
begin
  if TipoBNC = 1 then
  begin
    frmFormasDePago.AuxDatosPago.PagosBonif.CantPagos := 0;
    frmFormasDePago.AuxDatosPago.PagosBonif.TotalBonif := StrToCurr(edtImporte.Text);
    FPago := frmFormasDePago.AuxDatosPago.PagosBonif.TotalBonif;
    ModalResult := mrOK;
  end;

  if TipoBNC = 2 then
  begin
    if gNdeCred.SelectedList.Count = 0 then
      Exit;
    with frmFormasDePago.AuxDatosPago do
    begin
      qBonifNC.First;
      for i := 0 to gNdeCred.SelectedList.Count-1 do
      begin
        gNdeCred.DataSource.DataSet.GotoBookmark(gNdeCred.SelectedList.Items[i]);
        if qBonifNC.Locate(qBonifNCIdFactura.FieldName, gNdeCred.DataSource.DataSet.FieldByName('IdFactura').AsInteger, []) then
        begin
          if i <= 6 then
          begin
            with PagosBonif.Pagos[i] do
            begin
              FechaNC := qBonifNCFechaF.AsDateTime;
              Importe := ABS(qBonifNCTotal.AsCurrency);
              NroComp := qBonifNCNroFactura.AsString;
              IdCompRef:= qBonifNCIdCompRef.AsInteger;
            end;
          end;
          Inc(PagosBonif.CantPagos);
          PagosBonif.TotalBonif := PagosBonif.TotalBonif + ABS(qBonifNCTotal.AsCurrency);
        end;
        qBonifNC.Next;
      end;
    end;
    FPago := frmFormasDePago.AuxDatosPago.PagosBonif.TotalBonif;
    ModalResult := mrOK;
  end;
end;

end.
