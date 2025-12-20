unit uNewPrec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, DB,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls,
  ppPrnabl, ppBands, ppCache, ppVar, RzButton,  IniFiles,
  RzPanel, MDOCustomDataSet, MDOQuery, DBClient, Mask, RzEdit;

type
  TfrmNewPrec = class(TForm)
    gNewPrec: TwwDBGrid;
    pnlNewP: TRzPanel;
    dsNewPre: TDataSource;
    btnImpNewPre: TRzBitBtn;
    btnSalir: TRzBitBtn;

    dbpNewPre: TppDBPipeline;
    rpNewPre: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    lblTitulo: TppLabel;
    lblMarca: TppDBText;
    lblCodArt: TppDBText;
    lblDetArt: TppDBText;
    lblFechaA: TppDBText;
    lblPrecio: TppDBText;
    lblEmision: TppSystemVariable;
    shpNewPrec: TppShape;

    qNewPre: TMDOQuery;
    qNewPreIdArticulo: TIntegerField;
    qNewPreMarca: TStringField;
    qNewPreDetalle: TStringField;
    qNewPreFechaAlta: TDateField;
    qNewPrePRECIO: TMDOBCDField;
    lblCodBar: TppDBText;
    qNewPreCODBARRA: TMDOStringField;
    lblCodigos: TppLabel;
    lblDetProd: TppLabel;
    lblFecAM: TppLabel;
    lblPrecArt: TppLabel;
    NewPrec: TClientDataSet;
    NewPrecIdArticulo: TIntegerField;
    NewPrecCodBarra: TStringField;
    NewPrecCodArt: TStringField;
    NewPrecMarca: TStringField;
    NewPrecDescripcion: TStringField;
    NewPrecColor: TStringField;
    NewPrecPrecioFinal: TCurrencyField;
    NewPrecGrupoSubGrupo: TStringField;
    NewPrecTalle: TStringField;
    lblCodProd: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    lblDetNewPre: TppLabel;
    pnlNewPrc: TRzPanel;
    lblDesde: TLabel;
    edtDesde: TRzDateTimeEdit;
    btnPrcDesde: TRzBitBtn;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    lblNPOferta: TppLabel;
    lblCountProd: TppDBCalc;
    lblCantProd: TppLabel;
    lblIsOferta: TppDBText;
    qNewPreOFERTA: TSmallintField;
    btnCodeBarPrint: TRzBitBtn;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImpNewPreClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnPrcDesdeClick(Sender: TObject);
    procedure lblIsOfertaGetText(Sender: TObject; var Text: String);
    procedure gNewPrecCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure qNewPreOFERTAGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure qNewPreAfterOpen(DataSet: TDataSet);
    procedure btnCodeBarPrintClick(Sender: TObject);
  private
    { Private declarations }
    CantPrd: Integer;
    Desde: TDate;
    procedure Print_Etq;
  public
    { Public declarations }
  end;

  procedure Ver_PreciosNuevos(U: TDate);

var
  frmNewPrec: TfrmNewPrec;

implementation

uses udmGestion, udmSaveFile, uTools, uParamSis, uClaveMod, uConfiguracion;

{$R *.dfm}

const
   UltAct = 'Select A.IdArticulo, A.CodBarra, A.Marca, A.Detalle, '+
            '       A.FechaAlta, A.Precio, A.Oferta '+
            'From Articulos A '+
            'Where (A.Activo = 0) And '+
            '      (A.FechaAlta >= :Fecha) or (A.FechaMod >= :Fecha) '+
            'Order By A.FechaAlta, A.Marca ';

procedure Ver_PreciosNuevos(U: TDate);
begin
  frmNewPrec := TfrmNewPrec.Create(Application);
  with frmNewPrec do
  begin
    CantPrd := 0;
    Desde := U;
    qNewPre.Close;
    qNewPre.SQL.Clear;
    qNewPre.SQL.Text := UltAct;
    qNewPre.ParamByName('Fecha').AsDate := Desde;
    qNewPre.Open;
    if qNewPre.IsEmpty then
    begin
      qNewPre.Close;
      frmNewPrec := nil;
    end
    else
      ShowModal;
  end;
end;

procedure TfrmNewPrec.Print_Etq;
begin
  if Application.MessageBox('¿Imprime las Etiquetas de los productos Nuevos/Modificados?', 'Códigos de Barra', MB_ICONQUESTION + MB_YESNO) = ID_YES then
  begin
    if NewPrec.Active then
      NewPrec.EmptyDataSet
    else
      NewPrec.CreateDataSet;
    qNewPre.First;
    while not qNewPre.Eof do
    begin
      if GetDatosArt(qNewPreIdArticulo.AsInteger, '', Datos_Art) then
      begin
        NewPrec.Append;
        NewPrecIdArticulo.AsInteger := qNewPreIdArticulo.AsInteger;
        NewPrecCodArt.AsString := Datos_Art.CodBarra;
        NewPrecCodBarra.AsString := Datos_Art.CodBarra;
        NewPrecTalle.AsString := Vacio;
        NewPrecDescripcion.AsString := Datos_Art.Detalle;
        NewPrecMarca.AsString := Datos_Art.Marca;
        NewPrecColor.AsString := Datos_Art.Color;
        NewPrecPrecioFinal.AsCurrency := qNewPrePRECIO.AsCurrency;
        NewPrecGrupoSubGrupo.AsString := Datos_Art.DetGrupo+' '+Datos_Art.DetSubGr;
        NewPrec.Post;
      end;
      qNewPre.Next;
    end;
    if not NewPrec.IsEmpty then
      Print_Label(NewPrec);
  end;
end;

procedure TfrmNewPrec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qNewPre.Close;
  Action := caFree;
end;

procedure TfrmNewPrec.btnCodeBarPrintClick(Sender: TObject);
begin
  Print_Etq;
end;

procedure TfrmNewPrec.btnImpNewPreClick(Sender: TObject);
begin
  lblTitulo.Caption := OwnerName + ' - ' + pnlNewP.Caption;
  lblDetNewPre.Caption := Format('  %d - Productos con cambio de precios desde el %s ', [CantPrd, DateToStr(Desde)]);
  rpNewPre.Print;
  ModalResult := mrOK;
end;

procedure TfrmNewPrec.FormShow(Sender: TObject);
begin
  edtDesde.Date := Date;
  Desde := Date;
  pnlNewP.Caption := Format('  %d - Productos con cambio de precios desde el %s ', [CantPrd, DateToStr(Desde)]);
end;

procedure TfrmNewPrec.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNewPrec.btnPrcDesdeClick(Sender: TObject);
begin
  CantPrd := 0;
  try
    Desde := edtDesde.Date;
  except
    edtDesde.Date := Date;
    Desde := Date;
  end;
  qNewPre.Close;
  qNewPre.SQL.Clear;
  qNewPre.SQL.Text := UltAct;
  qNewPre.ParamByName('Fecha').AsDate := Desde;
  qNewPre.Open;
  CantPrd := qNewPre.RecordCount;
  pnlNewP.Caption := Format('  %d - Productos con cambio de precios desde el %s ', [CantPrd, DateToStr(Desde)]);
end;

procedure TfrmNewPrec.lblIsOfertaGetText(Sender: TObject; var Text: String);
begin
  if qNewPreOFERTA.AsInteger = Verdadero then
    Text := 'S'
  else
    Text := 'N';
end;

procedure TfrmNewPrec.qNewPreOFERTAGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if qNewPreOFERTA.AsInteger = Verdadero then
    Text := 'SI'
  else
    Text := 'NO'
end;

procedure TfrmNewPrec.gNewPrecCalcCellColors(Sender: TObject;
          Field: TField; State: TGridDrawState; Highlight: Boolean;
          AFont: TFont; ABrush: TBrush);
begin
  if qNewPreOFERTA.AsInteger = Verdadero then
  begin
    AFont.Color := clMaroon;
    ABrush.Color := clYellow;
  end;
end;

procedure TfrmNewPrec.qNewPreAfterOpen(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  try
    q := TMDOQuery.Create(nil);
    q.Database := qNewPre.Database;
    q.Transaction := qNewPre.Transaction;
    q.SQL.Add('Select Count(IdArticulo) as CantPrd ');
    q.SQL.Add('From Articulos ');
    q.SQL.Add('Where (FechaAlta >= :Fecha) or (FechaMod >= :Fecha)');
    q.ParamByName('Fecha').AsDate := Desde;
    q.Open;
    CantPrd := q.FieldByName('CantPrd').AsInteger;
    q.Close;
  finally
    q.Free;
  end;
end;

end.
