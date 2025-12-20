unit uCalcPrecios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, MDOQuery,
  DBCtrls, ExtCtrls, wwdblook, Mask, wwdbedit, Wwdotdot, Wwdbcomb, RzButton,
  RzPanel, MDOCustomDataSet, MDODatabase, RzEdit, ShellApi;

type
  TfrmCalcPrecios = class(TForm)
    dsCalc: TDataSource;
    Calc: TClientDataSet;
    CalcIdArticulo: TIntegerField;
    CalcDetalle: TStringField;
    CalcCantidad: TMDOBCDField;
    CalcUnitario: TMDOBCDField;
    CalcEnOferta: TSmallIntField;
    CalcMarkUp: TStringField;

    gProd: TwwDBGrid;
    dsResultado: TDataSource;
    Resultado: TClientDataSet;
    ResultadoEntrega: TMDOBCDField;
    ResultadoCuotas: TSmallintField;
    ResultadoImporteCuota: TMDOBCDField;
    ResultadoTotal: TMDOBCDField;
    ResultadoCoeficiente: TMDOBCDField;

    gCalculo: TwwDBGrid;
    pnlBotones: TRzPanel;
    btnCalcular: TRzBitBtn;
    btnCalculadora: TRzBitBtn;
    btnSalir: TRzBitBtn;
    btnLimpiar: TRzBitBtn;
    cbTarjeta: TwwDBLookupCombo;
    lblTarjeta: TLabel;
    edtEntrega: TRzNumericEdit;
    lblEntrega: TLabel;

    procedure btnCalculadoraClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CalcIdArticuloGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure CalcIdArticuloSetText(Sender: TField; const Text: String);
    procedure CalcIdArticuloValidate(Sender: TField);
    procedure btnCalcularClick(Sender: TObject);
    procedure CalcAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure gProdColEnter(Sender: TObject);
    procedure gProdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtEntregaEnter(Sender: TObject);
    procedure btnLimpiarClick(Sender: TObject);
    procedure cbTarjetaChange(Sender: TObject);
    procedure cbTarjetaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbTarjetaEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure edtEntregaKeyPress(Sender: TObject; var Key: Char);
    procedure CalcNewRecord(DataSet: TDataSet);
    procedure gProdColExit(Sender: TObject);
    procedure CalcAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    BuscandoArt,
    DandoPrecio: Boolean;
    IdTarj, IdMarkUp: Integer;
    TotalOp: Currency;
    procedure CalcularTotal;
    procedure DatosArticuloBuscado(Sender: TField; Text: String);
  public
    { Public declarations }
  end;

var
  frmCalcPrecios: TfrmCalcPrecios;

implementation

uses udmGestion, uTools, uABMArticulos, uSearchProd;

{$R *.dfm}

procedure TfrmCalcPrecios.CalcularTotal;
var
  Marca: String;
begin
  Marca := Calc.Bookmark;
  Calc.DisableControls;
  try
    TotalOp := 0;
    Calc.First;
    while not Calc.Eof do
    begin
      TotalOp := TotalOp + (CalcCantidad.AsFloat * CalcUnitario.AsCurrency);
      Calc.Next;
    end;
  finally
    Calc.EnableControls;
  end;
end;

procedure TfrmCalcPrecios.DatosArticuloBuscado(Sender: TField; Text: String);
var
  V, Err: Integer;
  Searched: String;
begin
  if btnSalir.Focused then
    Exit;
  if not BuscandoArt then
  begin
    BuscandoArt := True;
    Searched := Text;
    try
      if Searched > Vacio then
      begin
        if GetDatosArt(0, Searched, Datos_Art) then
        begin
          if not Datos_Art.Activo = Verdadero then
            raise EUsuario.Create('Producto DESACTIVADO no se puede Facturar.-');
          Sender.AsInteger := Datos_Art.IdArticulo;
        end
        else begin
          Val(Searched, V, Err);
          if Err = 0 then
          begin
            if GetDatosArt(V, Vacio, Datos_Art) then
            begin
              if not Datos_Art.Activo = Verdadero then
                raise EUsuario.Create('Producto DESACTIVADO no se puede Facturar.-');
              Sender.AsInteger := Datos_Art.IdArticulo;
            end
            else begin
              Elegido := Search_Prod(Searched, Tarea);
              if Elegido.IdArticulo > NoEncontrado then
              begin
                if GetDatosArt(Elegido.IdArticulo, Vacio, Datos_Art) then
                begin
                  if not Datos_Art.Activo = Verdadero then
                    raise EUsuario.Create('Producto DESACTIVADO no se puede Facturar.-');
                  Sender.AsInteger := Datos_Art.IdArticulo;
                end
              end
              else
                raise EUsuario.Create('No se encontró el producto');
            end;
          end
          else begin
            Elegido := Search_Prod(Searched, Tarea);
            if Elegido.IdArticulo > NoEncontrado then
            begin
              if GetDatosArt(Elegido.IdArticulo, Vacio, Datos_Art) then
              begin
                if not Datos_Art.Activo = Verdadero then
                  raise EUsuario.Create('Producto DESACTIVADO no se puede Facturar.-');
                Sender.AsInteger := Datos_Art.IdArticulo;
              end
            end
            else
              raise Exception.Create('No se encontró el producto');
          end;
        end;
      end
      else begin
        Elegido := Search_Prod(Searched, Tarea);
        if Elegido.IdArticulo > NoEncontrado then
        begin
          if GetDatosArt(Elegido.IdArticulo, Vacio, Datos_Art) then
          begin
            if not Datos_Art.Activo = Verdadero then
              raise EUsuario.Create('Producto DESACTIVADO no se puede Facturar.-');
            Sender.AsInteger := Datos_Art.IdArticulo;
          end
        end
        else
          raise Exception.Create('No se encontró el producto');
      end;
    finally
      BuscandoArt := False;
    end;
  end;
end;

procedure TfrmCalcPrecios.FormCreate(Sender: TObject);
begin
  if Calc.Active then
    Calc.EmptyDataSet
  else
    Calc.CreateDataSet;
  if not dmGestion.qTarjetas.Active then
    dmGestion.qTarjetas.Open;
  dmGestion.qTarjetas.First;
  CalcIdArticulo.ValidChars := CodChars;
  IdTarj := 1;
  cbTarjeta.LookupValue := '1';
  cbTarjeta.DropDown;
  cbTarjeta.Refresh;
end;

procedure TfrmCalcPrecios.CalcIdArticuloGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if GetDatosArt(Sender.AsInteger, Vacio, Datos_Art) then
    Text := Datos_Art.CodBarra;
end;

procedure TfrmCalcPrecios.CalcIdArticuloSetText(Sender: TField; const Text: String);
begin
  DatosArticuloBuscado(Sender, Text);
end;

procedure TfrmCalcPrecios.CalcIdArticuloValidate(Sender: TField);
begin
  if (Sender.AsInteger > 0) and
     (not Sender.IsNull) then
  begin
    if not DandoPrecio then
    begin
      DandoPrecio := True;
      try
        CalcCantidad.Value := 1;
        if GetPrecio(CalcIdArticulo.AsInteger, IdTarj, 0,
                     0.0, 0.0, 0.0, edtEntrega.Value,
                     CalcCantidad.Value, APrice) <= 0 then
        begin
          Calc.Cancel;
          Calc.Append;
          gProd.SetFocus;
          raise EUsuario.Create('Producto sin precio final. No se puede facturar.-');
        end;
        CalcUnitario.AsCurrency := APrice.PFinal;
        CalcDetalle.AsString  := Datos_Art.DetProd;
        CalcMarkUp.AsCurrency := Datos_Art.CoefMarkUp;
        IdMarkUp := Datos_Art.IdMarkUp;
        gProd.Refresh;
      finally
        DandoPrecio := False;
      end;
    end;
  end
  else
    Elegido := Search_Prod(Vacio, Tarea);
  gProd.RefreshDisplay;
end;

procedure TfrmCalcPrecios.CalcNewRecord(DataSet: TDataSet);
begin
  if not dmGestion.qTarjetas.Active then
    dmGestion.qTarjetas.Open;
end;

procedure TfrmCalcPrecios.btnCalculadoraClick(Sender: TObject);
begin
  Calculadora(Handle);
end;

procedure TfrmCalcPrecios.btnCalcularClick(Sender: TObject);
var
  Coef: Currency;
  i: Integer;
  q: TMDOQuery;
begin
  if Resultado.Active then
    Resultado.EmptyDataSet
  else
    Resultado.CreateDataSet;
  TotalOp := TotalOp - edtEntrega.Value;
  Coef := 0;

  // Contado
  Resultado.Append;
  ResultadoEntrega.AsCurrency := 0;
  ResultadoCuotas.AsInteger := 0;
  ResultadoCoeficiente.AsFloat := 0;
  ResultadoImporteCuota.AsCurrency := TotalOp;
  ResultadoTotal.AsCurrency := TotalOp;
  Resultado.Post;
  // Cuotas
  try
    q := TMDOQuery.Create(nil);
    q.Database := dmGestion.dbGestion;
    q.Transaction := dmGestion.trProc;
    q.SQL.Add('Select NroCuota, CoefPlan ');
    q.SQL.Add('From TARPLAN ');
    q.SQL.Add('Where (IDTARJETA =:T) and ');
    q.SQL.Add('      (IDSUCURSAL =:S Or IDSUCURSAL = 0)');
    q.SQL.Add('Order By NroCuota ');
    q.ParamByName('T').AsInteger := IdTarj;
    q.ParamByName('S').AsInteger := IdBranch;
    q.Open;
    if not q.IsEmpty then
    begin
      while not q.Eof do
      begin
        i := q.FieldByName('NroCuota').AsInteger;
        Coef := q.FieldByName('CoefPlan').AsFloat;
        Resultado.Append;
        ResultadoEntrega.AsCurrency := edtEntrega.Value;
        ResultadoCuotas.AsInteger := i;
        ResultadoCoeficiente.AsFloat := Coef;
        if i > 0 then
        begin
          if ResultadoCoeficiente.AsFloat > 0 then
            ResultadoImporteCuota.AsCurrency := (TotalOp * ResultadoCoeficiente.AsFloat * i) / i
          else
            ResultadoImporteCuota.AsCurrency := TotalOp / i;
        end;
        ResultadoTotal.AsCurrency := (ResultadoImporteCuota.AsCurrency * i) + edtEntrega.Value;
        Resultado.Post;
        q.Next;
      end;
    end;
  finally
    q.Free;
  end;
  Resultado.First;
  if not dmGestion.qTarjetas.Active then
    dmGestion.qTarjetas.Open;
end;

procedure TfrmCalcPrecios.CalcAfterOpen(DataSet: TDataSet);
begin
  CalcIdArticulo.ValidChars := CodChars;
end;

procedure TfrmCalcPrecios.CalcAfterPost(DataSet: TDataSet);
begin
  CalcularTotal;
end;

procedure TfrmCalcPrecios.FormShow(Sender: TObject);
begin
  gProd.SetFocus;
end;

procedure TfrmCalcPrecios.gProdColEnter(Sender: TObject);
begin
  if gProd.SelectedField.FieldName = 'Detalle' then
  begin
    if Atras then
      gProd.SelectedIndex := gProd.SelectedIndex - 1
    else
      gProd.SelectedIndex := gProd.SelectedIndex + 1;
  end;
end;

procedure TfrmCalcPrecios.gProdColExit(Sender: TObject);
var
  Text: String;
begin
  if gProd.Columns[gProd.SelectedIndex].FieldName = 'IdArticulo' then
  begin
    if (Trim(CalcIdArticulo.AsString) = Vacio) or
       (CalcIdArticulo.IsNull) then
    begin
      Text := CalcIdArticulo.AsString;
      Elegido := Search_Prod(Text, Tarea);
      if Elegido.IdArticulo > NoEncontrado then
      begin
        Calc.Edit;
        CalcIdArticulo.AsInteger := Elegido.IdArticulo;
      end;
      Abort;
    end
  end;
  gProd.RefreshDisplay;
end;

procedure TfrmCalcPrecios.gProdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  FillChar(Elegido, SizeOf(Elegido), NoEncontrado);
  if Shift = [] then
  begin
    case Key of
      VK_RIGHT,
      VK_RETURN,
      VK_TAB    : Atras := False;
      VK_UP,
      VK_LEFT   : Atras := True;
      VK_F3     : if gProd.SelectedField.FieldName = CalcIdArticulo.FieldName then
                    Elegido := Search_Prod(Cero, Tarea);
      VK_F5     : Calculadora(Handle);
      VK_ESCAPE : cbTarjeta.SetFocus;
      else
        inherited KeyDown(Key, Shift);
    end;
    if Elegido.IdArticulo <> NoEncontrado then
    begin
      if GetDatosArt(Elegido.IdArticulo, Vacio, Datos_Art) then
      begin
        Calc.Edit;
        CalcIdArticulo.AsInteger := Datos_Art.IdArticulo;
      end;
      gProd.RefreshDisplay;
    end;
  end;
end;

procedure TfrmCalcPrecios.edtEntregaEnter(Sender: TObject);
begin
  edtEntrega.SelectAll;
end;

procedure TfrmCalcPrecios.btnLimpiarClick(Sender: TObject);
begin
  if Calc.Active then
    Calc.EmptyDataSet
  else
    Calc.CreateDataSet;
  if Resultado.Active then
    Resultado.EmptyDataSet
  else
    Resultado.CreateDataSet;
  if not dmGestion.qTarjetas.Active then
    dmGestion.qTarjetas.Open;
  dmGestion.qTarjetas.First;
  Calc.First;
  edtEntrega.Value := 0.00;
  IdTarj := 1;
  gProd.SetFocus;
end;

procedure TfrmCalcPrecios.cbTarjetaChange(Sender: TObject);
begin
  try
    IdTarj := StrToInt(cbTarjeta.LookupValue);
  except
    IdTarj := 1;
  end;
end;

procedure TfrmCalcPrecios.cbTarjetaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmCalcPrecios.cbTarjetaEnter(Sender: TObject);
begin
  cbTarjeta.SelectAll;
end;

procedure TfrmCalcPrecios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCalcPrecios.btnSalirClick(Sender: TObject);
begin
  if Resultado.State in dsEditModes then
    Resultado.Cancel;
end;

procedure TfrmCalcPrecios.edtEntregaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

end.
