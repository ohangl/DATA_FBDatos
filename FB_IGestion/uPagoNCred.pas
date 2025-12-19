unit uPagoNCred;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, Grids, Wwdbigrd, Wwdbgrid, RzButton, DB, uTools,
  MDOCustomDataSet, MDOQuery;

type
  TfrmPagoNCred = class(TForm)
    gNotaCre: TwwDBGrid;
    pnlBtnsNotaCre: TRzPanel;
    btnAceptarNC: TRzBitBtn;
    btnCancelarNC: TRzBitBtn;

    qNotaCre: TMDOQuery;
    dsqNotaCre: TDataSource;
    qNotaCreIDFACTURA: TIntegerField;
    qNotaCreIDSUCURSAL: TIntegerField;
    qNotaCreIDPUNTOVENTA: TIntegerField;
    qNotaCreTIPOFACTURA: TSmallintField;
    qNotaCreFECHAF: TDateField;
    qNotaCreNROFACTURA: TMDOStringField;
    qNotaCreCLIENTE: TIntegerField;
    qNotaCreTOTAL: TMDOBCDField;
    qNotaCreSITUACION: TSmallintField;
    qNotaCreNOMBRE: TMDOStringField;
    qNotaCreSelected: TBooleanField;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gNotaCreMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
  private
    { Private declarations }
    FPago: Currency;
    procedure SetPago(AValue: Currency);
  public
    { Public declarations }
    AuxNotaCre: TPagosNC;
    property Pago: Currency read FPago write SetPago;
  end;

var
  frmPagoNCred: TfrmPagoNCred;

implementation

uses udmGestion, udmSaveFile;

{$R *.dfm}

(*

Select  F.IDFACTURA, F.IDSUCURSAL, F.IDPUNTOVENTA,
        F.TIPOFACTURA, F.FECHAF, F.NROFACTURA, F.CLIENTE,
        F.TOTAL, F.SITUACION, C.Nombre
From FACVEN F
Join Clientes C
   on C.IdCliente = F.CLIENTE
Where (F.TIPOFACTURA in (3,8))  And
      (F.SITUACION = 2) And
      (F.CLIENTE =:IdCli)


*)

procedure TfrmPagoNCred.SetPago(AValue: Currency);
begin
  FPago := AValue;
end;

procedure TfrmPagoNCred.FormCreate(Sender: TObject);
begin
  FillChar(AuxNotaCre, SizeOf(TPagosNC), 0);
  qNotaCre.Close;
end;

procedure TfrmPagoNCred.FormShow(Sender: TObject);
begin
  qNotaCre.ParamByName('IdCli').AsInteger := AuxNotaCre.Id_Cliente;
  qNotaCre.Open;
  if qNotaCre.IsEmpty then
  begin
    qNotaCre.Close;
    ShowMessage('No hay cambios para acreditar');
    ModalResult := mrCancel;
  end;
end;

procedure TfrmPagoNCred.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPagoNCred.gNotaCreMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
begin
  if Selecting then
  begin
    AuxNotaCre.Id_Cliente := qNotaCreCLIENTE.AsInteger;
    AuxNotaCre.NroNotaCre := qNotaCreNROFACTURA.AsString;
    AuxNotaCre.FecNotaCre := qNotaCreFECHAF.AsDateTime;
    AuxNotaCre.IdFNotaCre := qNotaCreIDFACTURA.AsInteger;
    AuxNotaCre.IdSNotaCre := qNotaCreIDSUCURSAL.AsInteger;
    AuxNotaCre.IdPNotaCre := qNotaCreIDPUNTOVENTA.AsInteger;
    AuxNotaCre.MtoNotaCre := ABS(qNotaCreTOTAL.AsCurrency);
    Pago := ABS(qNotaCreTOTAL.AsCurrency);
  end
  else begin
    FillChar(AuxNotaCre, SizeOf(TPagosNC), 0);
  end;
end;

end.
