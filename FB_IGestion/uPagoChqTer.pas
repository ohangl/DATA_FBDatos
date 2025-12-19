unit uPagoChqTer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, uTools,
  RzButton,  MDOCustomDataSet, MDOQuery, RzPanel;

type
  TfrmPagoChqTer = class(TForm)
    dsCartera: TDataSource;
    gCartera: TwwDBGrid;

    qCartera: TMDOQuery;
    qCarteraIDMOV: TIntegerField;
    qCarteraIDORDPAGO: TIntegerField;
    qCarteraNOMBREBANCO: TMDOStringField;
    qCarteraNROCUENTA: TMDOStringField;
    qCarteraNROCHEQUE: TIntegerField;
    qCarteraIDTITULAR: TIntegerField;
    qCarteraTITULAR: TMDOStringField;
    qCarteraIDENDOSO: TIntegerField;
    qCarteraENDOSO: TMDOStringField;
    qCarteraIDFACTURA: TIntegerField;
    qCarteraIDSUCURSAL: TIntegerField;
    qCarteraNROFACTURA: TMDOStringField;
    qCarteraFECHAVENCIMIENTO: TDateField;
    qCarteraFECHAENTREGA: TDateField;
    qCarteraIDENTREGA: TIntegerField;
    qCarteraENTREGA: TMDOStringField;
    qCarteraMONTO: TMDOBCDField;
    qCarteraSITUACION: TSmallintField;
    qCarteraFECHAIS: TDateField;
    qCarteraSelected: TSmallIntField;

    pnlSalChq3: TRzPanel;
    btnOk: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    qCarteraIDEMPRESA: TIntegerField;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gCarteraMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
    procedure gCarteraUpdateFooter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qCarteraIDEMPRESAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
    FPago: Currency;
    procedure SetPago(AValue: Currency);
  public
    { Public declarations }
    Id_Emp: Integer;
    property Pago: Currency read FPago write SetPago;
  end;

var
  frmPagoChqTer: TfrmPagoChqTer;

implementation

uses udmSaveFile, udmGestion;

{$R *.DFM}
var
  Total: Currency;

procedure TfrmPagoChqTer.SetPago(AValue: Currency);
begin
  FPago := AValue;
end;

procedure TfrmPagoChqTer.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  qCartera.DisableControls;
  try
    for i := 0 to gCartera.SelectedList.Count - 1 do
    begin
      qCartera.GotoBookmark(gCartera.SelectedList.Items[i]);
      dmSaveFile.SalChq3.Append;
      dmSaveFile.SalChq3IdMov.AsInteger := qCarteraIdMov.AsInteger;
      dmSaveFile.SalChq3.Post;
    end;
  finally
    qCartera.EnableControls;
  end;
  Action:= caFree;
end;

procedure TfrmPagoChqTer.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPagoChqTer.btnOkClick(Sender: TObject);
begin
  Pago := Total;
end;

procedure TfrmPagoChqTer.FormCreate(Sender: TObject);
begin
  Total := 0;
end;

procedure TfrmPagoChqTer.FormShow(Sender: TObject);
begin
  qCartera.Close;
  qCartera.ParamByName('E').AsInteger := Id_Emp;
  qCartera.Open;
end;

procedure TfrmPagoChqTer.gCarteraMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
var
  Marca: String;
  i: Integer;
begin
  Total := 0;
  if Selecting then
    Total := Total + qCarteraMonto.Value
  else
    Total := Total - qCarteraMonto.Value;
  Marca := qCartera.Bookmark;
  qCartera.DisableControls;
  try
    for i := 0 to gCartera.SelectedList.Count - 1 do
    begin
      qCartera.GotoBookmark(gCartera.SelectedList.Items[i]);
      Total := Total + qCarteraMonto.AsCurrency;
    end;
    qCartera.BookMark := Marca;
  finally
    qCartera.EnableControls;
    gCartera.ColumnByName('NombreBanco').FooterValue := 'Total ';
    gCartera.ColumnByName('NroCuenta').FooterValue := Format('%m', [FPago-Total]);
    gCartera.ColumnByName('Endoso').FooterValue := 'Total seleccionado';
    gCartera.ColumnByName('Monto').FooterValue := Format('%m', [Total]);
  end;
end;

procedure TfrmPagoChqTer.gCarteraUpdateFooter(Sender: TObject);
begin
  gCartera.ColumnByName('NombreBanco').FooterValue := 'Total ';
  gCartera.ColumnByName('NroCuenta').FooterValue := Format('%m', [FPago-Total]);
  gCartera.ColumnByName('Endoso').FooterValue := 'Total seleccionado';
  gCartera.ColumnByName('Monto').FooterValue := Format('%m', [Total]);
end;

procedure TfrmPagoChqTer.qCarteraIDEMPRESAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if dmGestion.Empresas.Locate(dmGestion.EmpresasIDEMPRESA.FieldName,
                               qCarteraIDEMPRESA.AsInteger, []) then
    Text := dmGestion.EmpresasNOMBREEMPRESA.AsString
  else
    Text := 'S/E';
end;

end.
