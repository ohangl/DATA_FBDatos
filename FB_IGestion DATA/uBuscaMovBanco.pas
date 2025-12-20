unit uBuscaMovBanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, uTools, StdCtrls, Grids, DBGrids, Buttons, Mask, Wwdbigrd,
  Wwdbgrid,  RzButton, RzPanel, RzRadGrp, MDOCustomDataSet, MDOTable, RzEdit,
  RzCmboBx;

type
  TSearchMovBco = record
    Mov: Integer;
    Bco: Integer;
  end;

  TfrmBuscaMovBanco = class(TForm)
    pnlHeadBusBco: TRzPanel;
    pnlFootBusBco: TRzPanel;

    BancoTer: TMDOTable;
    BancoPropIdBanco: TIntegerField;
    BancoPropIdMov: TIntegerField;
    BancoPropTipoMov: TSmallintField;
    BancoPropFechaEmision: TDateField;
    BancoPropFechaVencimiento: TDateField;
    BancoPropFechaResumen: TDateField;
    BancoPropIdEntidad: TIntegerField;
    BancoPropDetalleMov: TStringField;
    BancoTerIdMov: TIntegerField;
    BancoTerNombreBanco: TStringField;
    BancoTerNroCuenta: TStringField;
    BancoTerNroCheque: TIntegerField;
    BancoTerTitular: TStringField;
    BancoTerEndoso: TStringField;
    BancoTerFechaVencimiento: TDateField;
    BancoTerFechaEntrega: TDateField;
    BancoTerSituacion: TSmallintField;
    BancoTerMONTO: TMDOBCDField;

    BancoProp: TMDOTable;
    BancoPropBanco: TStringField;
    BancoPropMONTO: TMDOBCDField;
    BancoPropNROCHEQUE: TIntegerField;

    lblCualBusqueda: TLabel;
    dsBanco: TDataSource;
    btnAceptar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    lblValor: TLabel;
    rgOpciones: TRzRadioGroup;
    sSearch: TShape;
    lblHelp: TLabel;
    gBuscaBanco: TDBGrid;
    edtBusqueda: TRzMaskEdit;
    cbBusqueda: TRzComboBox;
    procedure edtBusquedaChange(Sender: TObject);
    procedure cbBusquedaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtBusquedaKeyPress(Sender: TObject; var Key: Char);
    procedure BancoTerSituacionGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure gBuscaBancoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rgOpcionesClick(Sender: TObject);
    procedure gBuscaBancoDblClick(Sender: TObject);
  private
    { Private declarations }
    FTipoMov: TMovBancoBusqueda;
    FFiltro: String;
    FDataType: TFieldType;
    procedure SetFilterCondition(CambiaCondicion: Boolean);
    procedure ApplyFilter;
  public
    { Public declarations }
  end;

  function BuscarMovBanco(TipoMov: TMovBancoBusqueda; Titulo: String; var Id: TSearchMovBco): Boolean;

var
  frmBuscaMovBanco: TfrmBuscaMovBanco;

implementation

uses udmGestion;

{$R *.DFM}

const
  Signos: array [0..4] of String = ('=', '>', '<', '>=', '<=');

function BuscarMovBanco(TipoMov: TMovBancoBusqueda; Titulo: String; var Id: TSearchMovBco): Boolean;
var
  i, j: Integer;
  Columna: TColumn;
begin
  Result := False;
// Los campos con tag = 100 son campos de busqueda por filtro
  frmBuscaMovBanco := TfrmBuscaMovBanco.Create(Application);
  frmBuscaMovBanco.Caption := Titulo;
  frmBuscaMovBanco.FTipoMov := TipoMov;
  j := 0;
  try
    if TipoMov = bbBancoProp then
    begin
      with frmBuscaMovBanco do
      begin
        dsBanco.DataSet := BancoProp;
        BancoProp.Open;
        cbBusqueda.Items.Clear;
        for i := 0 to BancoProp.Fields.Count-1 do
        begin
          if BancoProp.Fields[i].Visible then
          begin
            Columna := gBuscaBanco.Columns.Add;
            Columna.Field := BancoProp.Fields[i];
            j := Columna.Index;
          end;
          if BancoProp.Fields[i].Tag = 100 then
          begin
            cbBusqueda.Items.AddObject(BancoProp.Fields[i].DisplayName, TObject(i));
            gBuscaBanco.Columns[j].Color := clInfoBk;
          end;
        end;
        cbBusqueda.ItemIndex := 0;
        SetFilterCondition(False);
      end;
    end
    else begin
      with frmBuscaMovBanco do
      begin
        dsBanco.DataSet := BancoTer;
        BancoTer.Open;
        cbBusqueda.Items.Clear;
        for i := 0 to BancoTer.Fields.Count-1 do
        begin
          if BancoTer.Fields[i].Visible then
          begin
            Columna := gBuscaBanco.Columns.Add;
            Columna.Field := BancoTer.Fields[i];
            j := Columna.Index;
          end;
          if BancoTer.Fields[i].Tag = 100 then
          begin
            cbBusqueda.Items.AddObject(BancoTer.Fields[i].DisplayName, TObject(i));
            gBuscaBanco.Columns[j].Color := clInfoBk;
          end;
        end;
        cbBusqueda.ItemIndex := 0;
        SetFilterCondition(False);
      end;
    end;
    Result := (frmBuscaMovBanco.ShowModal = mrOK);
    if Result then
    begin
      Id.Mov := frmBuscaMovBanco.dsBanco.DataSet.FieldByName('IdMov').Value;
      if TipoMov = bbBancoProp then
        Id.Bco := frmBuscaMovBanco.dsBanco.DataSet.FieldByName('IdBanco').Value
      else
        Id.Bco := 0;
    end
    else
      Id.Mov := NoEncontrado;
  finally
    frmBuscaMovBanco.Free;
    frmBuscaMovBanco := nil;
  end;
end;

procedure TfrmBuscaMovBanco.SetFilterCondition(CambiaCondicion: Boolean);
begin
  if not CambiaCondicion then
    edtBusqueda.Text := '';
  if FTipoMov = bbBancoProp then
  begin
    FFiltro := 'Estado <> 999 And ';
    FFiltro := FFiltro + BancoProp.Fields[Integer(cbBusqueda.Items.Objects[cbBusqueda.ItemIndex])].FieldName + Signos[rgOpciones.ItemIndex];
    BancoProp.Filtered := True;
    FDataType := BancoProp.Fields[Integer(cbBusqueda.Items.Objects[cbBusqueda.ItemIndex])].DataType;
  end
  else begin
    FFiltro := 'Situacion < 10 And ';
    FFiltro := BancoTer.Fields[Integer(cbBusqueda.Items.Objects[cbBusqueda.ItemIndex])].FieldName + Signos[rgOpciones.ItemIndex];
    BancoTer.Filtered := True;
    FDataType := BancoTer.Fields[Integer(cbBusqueda.Items.Objects[cbBusqueda.ItemIndex])].DataType;
  end;

  dsBanco.DataSet.FilterOptions := [];
  case FDataType of
    ftDate: edtBusqueda.EditMask := '99/99/99;1';
    ftString: begin
                edtBusqueda.EditMask := '';
                dsBanco.DataSet.FilterOptions := [foCaseInsensitive];
              end;
    else
      edtBusqueda.EditMask := '';
  end;
end;

procedure TfrmBuscaMovBanco.ApplyFilter;
var
  ExpresionFiltro: String;
begin
  if Assigned(dsBanco.DataSet) then
  begin
    if edtBusqueda.Text > Cero then
    begin
      dsBanco.DataSet.Filtered := True;
      try
        case FDataType of
          ftDate: try
                    StrToDate(edtBusqueda.Text);
                    ExpresionFiltro := FFiltro + QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(edtBusqueda.Text)));
                  except
                    ExpresionFiltro :=  '';
                  end;
          ftString: ExpresionFiltro := FFiltro + QuotedStr(edtBusqueda.Text + '*');
          ftCurrency, ftFloat,
          ftBCD, ftInteger:
            ExpresionFiltro := FFiltro + StringReplace(edtBusqueda.Text, ',', '.', [rfReplaceAll]);
          else
            ExpresionFiltro := FFiltro + edtBusqueda.Text;
        end;
        dsBanco.DataSet.Filter := ExpresionFiltro;
      except
        dsBanco.DataSet.Filter := '';
        raise;
      end;
    end
    else
      dsBanco.DataSet.Filtered := False;
  end;
end;

procedure TfrmBuscaMovBanco.edtBusquedaChange(Sender: TObject);
begin
  ApplyFilter;
end;

procedure TfrmBuscaMovBanco.cbBusquedaChange(Sender: TObject);
begin
  SetFilterCondition(False);
  dsBanco.Dataset.Filtered := False;
end;

procedure TfrmBuscaMovBanco.FormCreate(Sender: TObject);
begin
  edtBusqueda.Text := '';
  sSearch.Brush.Color := clInfoBk;
end;

procedure TfrmBuscaMovBanco.edtBusquedaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [',','.'])and
     (FDataType in [ftCurrency, ftFloat, ftBCD]) then
    Key := DecimalSeparator;
end;

procedure TfrmBuscaMovBanco.BancoTerSituacionGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not Sender.IsNull then
  begin
    case Sender.Value of
      btEnCartera:  Text := 'En cartera';
      btEntregado:  Text := 'Entregado ';
      btRechazado:  Text := 'Rechazado ';
      btDepositado: Text := 'Depositado'
    end;
  end;
end;

procedure TfrmBuscaMovBanco.gBuscaBancoDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmBuscaMovBanco.gBuscaBancoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ModalResult := mrOK;
end;

procedure TfrmBuscaMovBanco.rgOpcionesClick(Sender: TObject);
begin
  SetFilterCondition(True);
  ApplyFilter;
end;

end.
