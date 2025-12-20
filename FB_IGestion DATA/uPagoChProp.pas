unit uPagoChProp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, ComCtrls, Wwdbigrd, Wwdbgrid,
  wwdblook, RzButton, RzPanel, MDOCustomDataSet, MDOQuery;

type
  TfrmPagoChequeProp = class(TForm)
    gBancoProp: TwwDBGrid;
    dsBancoProp: TDataSource;
    pnlTotal: TRzPanel;
    sbPieBco: TStatusBar;
    cbBancos: TwwDBLookupCombo;
    cbTipoMov: TwwDBLookupCombo;
    btnAceptar: TRzBitBtn;
    btnCancelar: TRzBitBtn;

    qCtasBco: TMDOQuery;
    dsqBco: TDataSource;
    qCtasBcoIDBANCO: TIntegerField;
    qCtasBcoBANCO: TMDOStringField;
    qCtasBcoNROCTA: TMDOStringField;
    qCtasBcoIDEMPRESA: TIntegerField;
    qCtasBcoNOMBREEMPRESA: TMDOStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure gBancoPropKeyPress(Sender: TObject; var Key: Char);
    procedure gBancoPropKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cbTipoMovEnter(Sender: TObject);
  private
    { Private declarations }
    FPago, FResta: Currency;
    procedure SetPago(Avalue: Currency);
  public
    { Public declarations }
    Proveedor, Id_Emp: Integer; //Tiene el nº de proveedor cdo. pago con cheques propios
    NomProve: String;
    property Pago: Currency read FPago write SetPago;
    procedure GrabaPago(DataSet: TDataSet);
    procedure InsertarPago(DataSet: TDataSet);
  end;

var
  frmPagoChequeProp: TfrmPagoChequeProp;

implementation

uses
  udmSaveFile, udmGestion, uTools;

{$R *.DFM}

procedure TfrmPagoChequeProp.cbTipoMovEnter(Sender: TObject);
begin
  cbTipoMov.DropDown;
end;

procedure TfrmPagoChequeProp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsBancoProp.DataSet.First;
  if (dsBancoProp.DataSet.State in dsEditModes) and
     (dsBancoProp.DataSet.FieldByName('IdBanco').AsInteger > 0) then
    dsBancoProp.DataSet.Post
  else
    dsBancoProp.DataSet.Cancel;
  FPago := FResta;
  Action := caFree;
end;

procedure TfrmPagoChequeProp.FormCreate(Sender: TObject);
begin
  dsBancoProp.DataSet.AfterPost := GrabaPago;
  dsBancoProp.DataSet.OnNewRecord := InsertarPago;
  FResta := Pago;
end;

procedure TfrmPagoChequeProp.FormShow(Sender: TObject);
begin
  qCtasBco.Open;
  dmGestion.TipoMovBco.Open;
end;

procedure TfrmPagoChequeProp.GrabaPago(DataSet: TDataSet);
var
  Marca: String;
  Total: Currency;
begin
  try
    Marca := DataSet.Bookmark;
    DataSet.DisableControls;
    try
      DataSet.First;
      Total := 0;
      while not DataSet.Eof do
      begin
        if DataSet.FieldByName('SumaResta').AsInteger < 0 then
          Total := Total + DataSet.FieldByName('Monto').AsCurrency
        else
          Total := Total - DataSet.FieldByName('Monto').AsCurrency;
        DataSet.Next;
      end;
    finally
      DataSet.Bookmark := Marca;
      DataSet.EnableControls;
    end;
    FResta := Abs(Total);
    pnlTotal.Caption := Format('  Saldo: %m / Ingresado: %m', [(FPago-Abs(Total)), FResta]);
    if ((FPago - Abs(Total)) <= 0) then
      ModalResult := mrOK;
  except
    on E:Exception do
    begin
      raise EUsuario.Create(E.Message);
    end;
  end;
end;

procedure TfrmPagoChequeProp.InsertarPago(DataSet: TDataSet);
begin
  DataSet.FieldByName('IdEntidad').AsInteger := Proveedor;
  DataSet.FieldByName('Descripcion').AsString := NomProve;
  DataSet.FieldByName('Monto').AsCurrency := 0;
  DataSet.FieldByName('NroCheque').AsInteger := 0;
  DataSet.FieldByName('FechaEmision').AsDateTime := Date;
end;

procedure TfrmPagoChequeProp.SetPago(AValue: Currency);
begin
  FPago := AValue;
  pnlTotal.Caption := Format('  Saldo: %8.2m   /  Ingresado: %8.2m  ', [FPago, FResta]);
end;

procedure TfrmPagoChequeProp.gBancoPropKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and
     (Key = VK_ESCAPE) then
  begin
    btnAceptar.SetFocus;
  end;
end;

procedure TfrmPagoChequeProp.gBancoPropKeyPress(Sender: TObject; var Key: Char);
begin
  if (gBancoProp.SelectedField.DataType in [ftFloat, ftCurrency, ftBCD]) and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

end.
