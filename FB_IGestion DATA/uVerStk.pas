unit uVerStk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, RzPanel, ExtCtrls, DB, MDOCustomDataSet,
  MDOQuery, RzButton, StdCtrls;

type
  TfrmVerStk = class(TForm)
    gbVerStk: TRzGroupBox;
    pnlVerStk: TRzPanel;
    gVerStk: TwwDBGrid;
    qVerStk: TMDOQuery;
    dsqVerStk: TDataSource;
    qVerStkIDSTOCK: TIntegerField;
    qVerStkACTUAL: TMDOBCDField;
    qVerStkMARCA: TMDOStringField;
    qVerStkDETALLE: TMDOStringField;
    qVerStkNOMBRESUC: TMDOStringField;
    btnSalirVS: TRzBitBtn;
    lblMarcaVS: TLabel;
    lblDetalleVS: TLabel;
    btnVerAll: TRzBitBtn;
    procedure btnSalirVSClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gVerStkDblClick(Sender: TObject);
    procedure gVerStkUpdateFooter(Sender: TObject);
    procedure btnVerAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IdArt,
    AllSt: Integer;
  end;


var

  frmVerStk: TfrmVerStk;

  procedure Ver_Stk(Id_Art: Integer);

implementation

uses udmGestion, uTools, uMovStk;

{$R *.dfm}

procedure Ver_Stk(Id_Art: Integer);
begin
  frmVerStk := TfrmVerStk.Create(nil);
  with frmVerStk do
  begin
    IdArt := Id_Art;
    ShowModal;
  end;
end;

procedure TfrmVerStk.btnSalirVSClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmVerStk.btnVerAllClick(Sender: TObject);
begin
  Get_MStk(IdArt, 0);
end;

procedure TfrmVerStk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qVerStk.Close;
  Action := caFree;
end;

procedure TfrmVerStk.FormCreate(Sender: TObject);
begin
  lblMarcaVS.Caption := Vacio;
  lblDetalleVS.Caption := Vacio;
end;

procedure TfrmVerStk.FormShow(Sender: TObject);
begin
  if IdArt > 0 then
  begin
    qVerStk.Close;
    qVerStk.ParamByName('IdArt').AsInteger := IdArt;
    qVerStk.Open;
    if not qVerStk.IsEmpty then
    begin
      try
        qVerStk.DisableControls;
        qVerStk.First;
        AllSt := 0;
        while not qVerStk.Eof do
        begin
          AllSt := AllSt + qVerStkACTUAL.AsInteger;
          qVerStk.Next;
        end;
      finally
        qVerStk.First;
        qVerStk.EnableControls
      end;
      gVerStk.ColumnByName('NombreSuc').FooterValue := 'Stock General';
      gVerStk.ColumnByName('Actual').FooterValue := Format('%d', [AllSt]);
      lblMarcaVS.Caption := IntToStr(IdArt)+' - '+qVerStkMarca.AsString;
      lblDetalleVS.Caption := qVerStkDETALLE.AsString;
    end
    else begin
      lblMarcaVS.Caption := Vacio;
      lblDetalleVS.Caption := Vacio;
    end;
  end;
end;

procedure TfrmVerStk.gVerStkDblClick(Sender: TObject);
begin
  Get_MStk(IdArt, qVerStkIDSTOCK.AsInteger);
end;

procedure TfrmVerStk.gVerStkUpdateFooter(Sender: TObject);
begin
  gVerStk.ColumnByName('NombreSuc').FooterValue := 'Stock General';
  gVerStk.ColumnByName('Actual').FooterValue := Format('%d', [AllSt]);
end;

end.
