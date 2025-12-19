unit uListaSelectTalles;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, uTools, Db, ComCtrls,  MDOCustomDataSet, MDOTable;

type
  TfrmListaSelecTalles = class(TForm)
    Talles: TMDOTable;
    TallesIdArticulo: TIntegerField;
    TallesTalle: TIntegerField;
    lvInfo: TListView;
    TallesTallesStr: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lvInfoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TallesCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
// Funcion que permite elegir un talle de determinado articulo
  function GetTalles(Articulo: Integer): Integer;

var
  frmListaSelecTalles: TfrmListaSelecTalles;

implementation

uses udmGestion;

{$R *.DFM}

function GetTalles(Articulo: Integer): Integer;
var
  HayTallesCargados: Boolean;
begin
  Result := SIN_DETALLE_TALLE;
  HayTallesCargados := True;
  frmListaSelecTalles := TfrmListaSelecTalles.Create(nil);
  frmListaSelecTalles.Caption := 'Talles';
  with frmListaSelecTalles do
  begin
    Talles.Filter := 'IdArticulo = '+IntToStr(Articulo);
    Talles.Filtered := True;
    Talles.Open;
    HayTallesCargados := not Talles.IsEmpty;
    LoadListView(lvInfo, Talles, TallesTallesStr.FieldName, TallesTalle.FieldName);
    if lvInfo.Items.Count > 0 then
      lvInfo.ItemIndex := 0;
    Talles.Close;
    if lvInfo.Items.Count > 0 then
      lvInfo.ItemIndex := 0;
    if (ShowModal = mrOK) then
      Result := Integer(lvInfo.Selected.Data)
    else
      Result := SIN_DETALLE_TALLE;
  end;
  frmListaSelecTalles := nil;
end;


procedure TfrmListaSelecTalles.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmListaSelecTalles.lvInfoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN: ModalResult := mrOK;
    VK_ESCAPE: ModalResult := mrCancel;
  end;
end;

procedure TfrmListaSelecTalles.TallesCalcFields(DataSet: TDataSet);
begin
  try
    TallesTallesStr.AsString := GetTextTalle(TallesTalle.AsInteger)
  except
    TallesTallesStr.AsString := TallesTalle.AsString;
  end;
end;

procedure TfrmListaSelecTalles.FormShow(Sender: TObject);
begin
  if lvInfo.Items.Count > 0 then
    lvInfo.ItemFocused := lvInfo.Items[0];
end;

end.
