unit uSearchProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, DB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask,
  RzEdit, RzButton, MDOCustomDataSet, MDOQuery, uTools;

type
  TfrmSearchProd = class(TForm)
    pnlTopSP: TRzPanel;
    edtCualArt: TRzEdit;
    gSearch: TwwDBGrid;
    lblDetBus: TLabel;
    btnCancelarSP: TRzBitBtn;
    btnAceptarSP: TRzBitBtn;

    dsqSearchProd: TDataSource;
    qBuscArt: TMDOQuery;
    qBuscArtIDARTICULO: TIntegerField;
    qBuscArtMARCA: TMDOStringField;
    qBuscArtDETALLE: TMDOStringField;
    qBuscArtCODBARRA: TMDOStringField;
    qBuscArtPRECIO: TMDOBCDField;
    qBuscArtPRECIOESP: TMDOBCDField;
    qBuscArtCOLOR: TMDOStringField;
    qBuscArtOFERTA: TSmallintField;
    qBuscArtACTUAL: TMDOBCDField;
    qBuscArtACTIVO: TSmallintField;
    procedure edtCualArtEnter(Sender: TObject);
    procedure edtCualArtExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qBuscArtPRECIOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure gSearchDblClick(Sender: TObject);
    procedure gSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gSearchCalcCellColors(Sender: TObject; Field: TField;
       State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Search_InAct: Integer;
    Buscando_Producto: Boolean;
  public
    { Public declarations }
    Nivel_OP, Cual_Art: Integer;
    procedure BuscArt(Buscado: String);
  end;

var
  frmSearchProd: TfrmSearchProd;

  function Search_Prod(Searched: String; Nivel: Integer): TSearchArt;


implementation

uses udmGestion, udmSaveFile, uABMArticulos;

{$R *.dfm}

function Search_Prod(Searched: String; Nivel: Integer): TSearchArt;
begin
  Result.IdArticulo := NoEncontrado;
  frmSearchProd := TfrmSearchProd.Create(nil);
  with frmSearchProd do
  begin
    Cual_Art := NoEncontrado;
    btnAceptarSP.ModalResult := mrOk;
    btnCancelarSP.ModalResult := mrCancel;
    Nivel_OP := Nivel;
    if Trim(Searched) <> Vacio then
    begin
      edtCualArt.Text := Searched;
      BuscArt(Searched);
    end
    else begin
      if Visible then
        edtCualArt.SetFocus;
    end;
    if (ShowModal = mrOK) And
       (Cual_Art > NoEncontrado) then
      Result.IdArticulo := Cual_Art;
  end;
end;

procedure TfrmSearchProd.BuscArt(Buscado: String);
var
  Encontro: Boolean;
begin
  if not Buscando_Producto then
  begin
    try
      Buscando_Producto := True;
      Encontro := False;

      if Nivel_OP <= Nivel_Mod then
        Search_InAct := Falso
      else
        Search_InAct := Verdadero;

      try
        Cual_Art := StrToInt(Trim(Buscado));
      except
        Cual_Art := NoEncontrado;
      end;

      if Cual_Art > 0 then
        Encontro := True
      else begin
        if Trim(Buscado) > Vacio then
        begin
          qBuscArt.Close;
          qBuscArt.ParamByName('IdSuc1').AsInteger := IdBranch;
          qBuscArt.ParamByName('IdSuc2').AsInteger := IdBranch;
          qBuscArt.ParamByName('Busca1').AsString := '%'+Buscado+'%';
          qBuscArt.ParamByName('Busca2').AsString := '%'+Buscado+'%';
          qBuscArt.ParamByName('Busca3').AsString := '%'+Buscado+'%';
          qBuscArt.ParamByName('Busca4').AsString := '%'+Buscado+'%';
          qBuscArt.ParamByName('In_Act').AsInteger := Search_InAct;
          qBuscArt.Open;
          if not qBuscArt.IsEmpty then
          begin
            Encontro := True;
            edtCualArt.Text := Buscado;
            if (Visible) then
              gSearch.SetFocus;
          end;
        end
      end;
      //155045688
      if Not Encontro then
      begin
        edtCualArt.Text := 'sin resultados';
        if (Visible) and
           (edtCualArt.CanFocus) then
          edtCualArt.SetFocus;
      end;
    finally
      Buscando_Producto := False;
    end;
  end;
end;


procedure TfrmSearchProd.edtCualArtEnter(Sender: TObject);
begin
  Buscando_Producto := False;
  edtCualArt.SelectAll;
end;

procedure TfrmSearchProd.edtCualArtExit(Sender: TObject);
begin
  if (Trim(edtCualArt.Text) > Vacio) and
     (edtCualArt.Text <> 'sin resultados') then
    BuscArt(edtCualArt.Text);
end;

procedure TfrmSearchProd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmSearchProd.FormCreate(Sender: TObject);
begin
  qBuscArt.Close;
end;

procedure TfrmSearchProd.FormShow(Sender: TObject);
begin
  gSearch.Selected.Clear;
  gSearch.Selected.Add('IDARTICULO'#9'5'#9'Código'#9'F');
  gSearch.Selected.Add('MARCA'#9'20'#9'Marca'#9'F');
  gSearch.Selected.Add('DETALLE'#9'40'#9'Detalle'#9'F');
  gSearch.Selected.Add('PRECIO'#9'12'#9'Precio'#9'F');
  gSearch.Selected.Add('ACTUAL'#9'8'#9'Stock~Actual'#9'F');
  gSearch.Selected.Add('COLOR'#9'7'#9'Color'#9'F');
  gSearch.RefreshDisplay;
end;

procedure TfrmSearchProd.gSearchCalcCellColors(Sender: TObject; Field: TField;
     State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if qBuscArtOFERTA.AsInteger = Verdadero then
  begin
    ABrush.Color := clYellow;
  end;
  if qBuscArtPRECIOESP.AsCurrency > 0 then
  begin
    ABrush.Color := clLtGray;
  end;
  if qBuscArtACTIVO.AsInteger = Falso then
  begin
    AFont.Style := [fsStrikeOut];
  end;
end;

procedure TfrmSearchProd.gSearchDblClick(Sender: TObject);
begin
  if not gSearch.DataSource.DataSet.IsEmpty then
  begin
    Cual_Art := gSearch.DataSource.DataSet.FieldByName('IdArticulo').AsInteger;
    ModalResult := mrOK;
  end;
end;

procedure TfrmSearchProd.gSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if not gSearch.DataSource.DataSet.IsEmpty then
    begin
      Cual_Art := gSearch.DataSource.DataSet.FieldByName('IdArticulo').AsInteger;
      ModalResult := mrOK;
    end;
  end;
  if Key = VK_F5 then
    Calculadora(Handle);
end;

procedure TfrmSearchProd.qBuscArtPRECIOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if ABS(qBuscArtPRECIOESP.AsCurrency) > 0 then
    Text := Format('%m', [qBuscArtPRECIOESP.AsCurrency])
  else
    Text := Format('%m', [qBuscArtPRECIO.AsCurrency]);
end;

end.
