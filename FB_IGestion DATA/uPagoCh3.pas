unit uPagoCh3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, ComCtrls, Wwdbigrd, Wwdbgrid,
  RzButton, RzPanel;

type
  TfrmPagoCheque = class(TForm)
    dsAuxBcoTer: TDataSource;
    gBancoTer: TwwDBGrid;
    pnlFoot: TRzPanel;
    sbPie: TStatusBar;
    btnAceptar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    lblTotal: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure gBancoTerKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gBancoTerKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FPago,
    FResta,
    Ingresado: Currency;
    procedure SetPago(Avalue: Currency);
    procedure CalcularIngresado(DataSet: TDataSet);
  public
    { Public declarations }
    property Pago: Currency read FPago write SetPago;
    procedure GrabaPago(DataSet: TDataSet);
  end;

var
  frmPagoCheque: TfrmPagoCheque;

implementation

uses udmSaveFile, uEntidades, uTools;

{$R *.DFM}

procedure TfrmPagoCheque.GrabaPago(DataSet: TDataSet);
begin
  CalcularIngresado(DataSet);
  FResta := FPago - Ingresado;
  lblTotal.Caption := Format('Saldo: %10.2m / Ingresado: %10.2m', [FResta, Ingresado]);
  if FResta <= 0 then
    ModalResult := mrOK;
end;

procedure TfrmPagoCheque.SetPago(AValue: Currency);
begin
  FPago := AValue;
  CalcularIngresado(dsAuxBcoTer.DataSet);
  lblTotal.Caption := Format('Saldo: %10.2m / Ingresado: %10.2m', [FPago, Ingresado]);
end;

procedure TfrmPagoCheque.CalcularIngresado(Dataset: TDataSet);
var
  Marca: String;
begin
  with DataSet do
  begin
    Marca := Bookmark;
    DisableControls;
    try
      First;
      Ingresado := 0;
      while not Eof do
      begin
        Ingresado := Ingresado + FieldByName('Monto').AsCurrency;
        Next;
      end;
      Bookmark := Marca;
    finally
      EnableControls;
    end;
  end;
end;

procedure TfrmPagoCheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FPago := Ingresado;
  Action := caFree;
end;

procedure TfrmPagoCheque.FormCreate(Sender: TObject);
begin
  dsAuxBcoTer.DataSet.AfterPost := GrabaPago;
  FResta := 0;
end;

procedure TfrmPagoCheque.gBancoTerKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F3: begin

      if gBancoTer.SelectedField.FieldName = 'IdTitular' then
      begin
        if Busca_Cli(IdEntidad, IdSucEnt) then
          dsAuxBcoTer.DataSet.FieldByName('IdTitular').AsInteger := IdEntidad;
      end
      else begin
        if gBancoTer.SelectedField.FieldName = 'IdEndoso' then
        begin
          if Busca_Cli(IdEntidad, IdSucEnt) then
            dsAuxBcoTer.DataSet.FieldByName('IdEndoso').AsInteger := IdEntidad;
        end
      end;

    end;
    VK_ESCAPE: begin
      if dsAuxBcoTer.DataSet.State in dsEditModes then
        dsAuxBcoTer.DataSet.Post;
      btnAceptar.SetFocus;
    end;
  end;
end;

procedure TfrmPagoCheque.gBancoTerKeyPress(Sender: TObject; var Key: Char);
begin
  if (Visible) and
     (gBancoTer.SelectedField.DataType in [ftFloat, ftCurrency]) and (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

end.
