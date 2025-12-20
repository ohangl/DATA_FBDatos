unit uPedidosProv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls,
  RzButton, MDOCustomDataSet, MDOQuery, DB;

type
  TfrmPedProv = class(TForm)
    pnlFoot: TPanel;
    btnAceptar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    gPedidos: TwwDBGrid;

    dsArtPed: TDataSource;
    qArtPed: TMDOQuery;
    qArtPedIDARTICULO: TIntegerField;
    qArtPedCANTIDADP: TMDOBCDField;
    qArtPedCANTIDADR: TMDOBCDField;
    qArtPedPRECION: TMDOBCDField;
    qArtPedNROORDCMP: TMDOStringField;
    qArtPedFECHAOC: TDateField;
    qArtPedIDORDCMP: TIntegerField;
    qArtPedIDITEMOC: TIntegerField;
    qArtPedDETPROD: TMDOStringField;
    qArtPedselected: TBooleanField;
    btnExpPrdPen: TRzBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gPedidosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnExpPrdPenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Pendientes(Proveedor, IdEmpresa: Integer): Boolean;
  end;

var
  frmPedProv: TfrmPedProv;

implementation

uses udmGestion;

{$R *.dfm}

function TfrmPedProv.Pendientes(Proveedor, IdEmpresa: Integer): Boolean;
begin
  qArtPed.ParamByName('Proveedor').AsInteger := Proveedor;
  qArtPed.ParamByName('IdEmpresa').AsInteger := IdEmpresa;
  Screen.Cursor := crHourGlass;
  try
    qArtPed.Open;
    Result := not qArtPed.IsEmpty;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmPedProv.btnExpPrdPenClick(Sender: TObject);
begin
  if not qArtPed.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qArtPed;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmPedProv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPedProv.gPedidosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = Vk_Escape then
    btnAceptar.SetFocus;
end;

end.
