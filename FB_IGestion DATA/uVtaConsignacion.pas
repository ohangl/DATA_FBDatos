unit uVtaConsignacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, RzTabs, Grids, Wwdbigrd, Wwdbgrid,
  DB, StdCtrls,  wwdblook, Mask, wwdbedit, DBCtrls, Wwdotdot, Wwdbcomb,
  MDOCustomDataSet, MDOQuery, DBClient, RzEdit;

type
  TfrmVtaConsignacion = class(TForm)
    pnlVtaCon: TRzPanel;
    btnSalir: TRzBitBtn;
    pcVtaCon: TRzPageControl;
    tsEntrega: TRzTabSheet;
    tsProductos: TRzTabSheet;
    gCelulares: TwwDBGrid;
    edtCliente: TwwDBEdit;
    edtContrato: TwwDBEdit;
    cbProdCon: TwwDBLookupCombo;
    btnVenta: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    btnPagos: TRzBitBtn;
    lblCliente: TLabel;
    lblNroCont: TLabel;
    lblCelular: TLabel;
    lblNomCliente: TDBText;
    lblImporte: TLabel;
    edtImporte: TwwDBEdit;
    lblCantCtas: TLabel;
    edtCantCtas: TwwDBEdit;
    lblTarjeta: TLabel;
    cbTarjetas: TwwDBLookupCombo;
    lblDetProd: TDBText;
    bvlVtaCon: TBevel;
    lblVend: TLabel;
    edtVend: TwwDBEdit;
    lblNomVend: TDBText;

    dsVtaCon: TDataSource;
    VtaConsignacion: TClientDataSet;
    VtaConsignacionIdCliente: TIntegerField;
    VtaConsignacionNomCliente: TStringField;
    VtaConsignacionNroContrato: TStringField;
    VtaConsignacionIdEquipo: TIntegerField;
    VtaConsignacionFechaF: TDateField;
    VtaConsignacionMonto: TMDOBCDField;
    VtaConsignacionIdTarjeta: TIntegerField;
    VtaConsignacionNCtas: TSmallintField;
    VtaConsignacionMarca: TStringField;
    VtaConsignacionDetalle: TStringField;
    VtaConsignacionPrecioFinal: TMDOBCDField;
    VtaConsignacionDetProd: TStringField;
    VtaConsignacionIdMarkUp: TIntegerField;
    VtaConsignacionIdVend: TIntegerField;
    VtaConsignacionNomVend: TStringField;

    dsqConsignacion: TDataSource;
    qConsignacion: TMDOQuery;
    qConsignacionIdArticulo: TIntegerField;
    qConsignacionMarca: TStringField;
    qConsignacionDetalle: TStringField;
    qConsignacionPRECIO: TMDOBCDField;
    tsInformes: TRzTabSheet;
    pnlVtasCon: TRzPanel;
    lblDesdeVta: TLabel;
    lblHastaVta: TLabel;
    edtDesdeVta: TRzDateTimeEdit;
    edtHastaVta: TRzDateTimeEdit;
    btnCalcularVta: TRzBitBtn;
    gVtasCon: TwwDBGrid;
    qVendidos: TMDOQuery;
    qVendidosIDFACTURA: TIntegerField;
    qVendidosIDSUCURSAL: TIntegerField;
    qVendidosIDPUNTOVENTA: TIntegerField;
    qVendidosIDARTICULO: TIntegerField;
    qVendidosOFERTA: TIntegerField;
    qVendidosTALLE: TIntegerField;
    qVendidosMARCA: TMDOStringField;
    qVendidosDETALLE: TMDOStringField;
    qVendidosAREA: TMDOStringField;
    qVendidosGRUPO: TMDOStringField;
    qVendidosSUBGRUPO: TMDOStringField;
    qVendidosCOLOR: TMDOStringField;
    qVendidosCANTIDAD: TMDOBCDField;
    qVendidosPRECIOTOTAL: TMDOBCDField;
    qVendidosNROFACTURA: TMDOStringField;
    qVendidosDETSUC: TMDOStringField;
    qVendidosNOMBRE: TMDOStringField;
    qVendidosFECHAF: TDateField;

    dsqVendidos: TDataSource;
    btnExportarVta: TRzBitBtn;

    procedure edtImporteKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edtClienteEnter(Sender: TObject);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnVentaClick(Sender: TObject);
    procedure VtaConsignacionIdClienteValidate(Sender: TField);
    procedure btnPagosClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure VtaConsignacionNewRecord(DataSet: TDataSet);
    procedure VtaConsignacionIdEquipoValidate(Sender: TField);
    procedure VtaConsignacionBeforePost(DataSet: TDataSet);
    procedure edtContratoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure VtaConsignacionNCtasValidate(Sender: TField);
    procedure VtaConsignacionIdVendValidate(Sender: TField);
    procedure edtVendExit(Sender: TObject);
    procedure btnCalcularVtaClick(Sender: TObject);
    procedure btnExportarVtaClick(Sender: TObject);
    procedure VtaConsignacionNroContratoValidate(Sender: TField);
    procedure VtaConsignacionAfterOpen(DataSet: TDataSet);
    procedure VtaConsignacionIdEquipoChange(Sender: TField);
    procedure cbProdConEnter(Sender: TObject);
  private
    { Private declarations }
    Add_VCon: Boolean;
    GrCon, ArCon: Integer;
  public
    { Public declarations }
    Pago: Currency;
    Cobrando: Boolean ;
  end;

  procedure Consignacion;

var
  frmVtaConsignacion: TfrmVtaConsignacion;

implementation

uses udmGestion, udmSaveFile, uEntidades, uTools, uFormasDePago, DateUtils;

{$R *.dfm}

Const
  Prd_Con = 'Select A.IdArticulo, A.Marca, A.Detalle, A.Precio  '+
            'From Articulos A '+
            'Where (A.IdArea =:R) And (A.IdGrupo =:G) ';

procedure Consignacion;
begin
  frmVtaConsignacion := TfrmVtaConsignacion.Create(nil);
  frmVtaConsignacion.ShowModal;
end;

procedure TfrmVtaConsignacion.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmVtaConsignacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmVtaConsignacion.FormCreate(Sender: TObject);
begin
  if not dmGestion.Empresas.Active then
    dmGestion.Empresas.Open;
  ArCon := dmGestion.EmpresasAREACONSIGNACION.AsInteger;
  GrCon := dmGestion.EmpresasGRUPOCONSIGNACION.AsInteger;

  VtaConsignacion.Close;
  qConsignacion.Close;
  qConsignacion.SQL.Clear;
  qConsignacion.SQL.Text := Prd_Con;
  qConsignacion.ParamByName('R').AsInteger := ArCon;
  qConsignacion.ParamByName('G').AsInteger := GrCon;
  qConsignacion.Open;

  if qConsignacion.IsEmpty then
    raise EUsuario.Create('No hay productos definidos para Venta en consignacion.');

  qVendidos.Close;
  edtDesdeVta.Date := StartOfTheMonth(Date);
  edtHastaVta.Date := Date;
end;

procedure TfrmVtaConsignacion.edtClienteEnter(Sender: TObject);
begin
  pnlVtaCon.Caption := ' <F1> nuevo cliente. <F3> buscar. <Esc> cerrar. '
end;

procedure TfrmVtaConsignacion.edtClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NuevoCli: Integer;
begin
  case Key of
    VK_F1: begin
      NuevoCli := AltaCliente(1);
      if NuevoCli <> NoEncontrado then
      begin
        VtaConsignacion.Edit;
        VtaConsignacionIdCliente.AsInteger := NuevoCli;
      end;
    end;
    VK_F3: begin
      if Busca_Cli(IdEntidad, IdSucEnt) then
      begin
        VtaConsignacion.Edit;
        VtaConsignacionIdCliente.AsInteger := IdEntidad;
      end;
    end;
    VK_ESCAPE: Close
    else begin
      {$INCLUDE IyC_NextEdit.Inc}
    end
  end;
end;

procedure TfrmVtaConsignacion.btnVentaClick(Sender: TObject);
begin
  if VtaConsignacion.Active then
    VtaConsignacion.EmptyDataSet
  else
    VtaConsignacion.CreateDataSet;
  VtaConsignacion.Insert;
  edtContrato.SetFocus;
  Add_VCon := True;
end;

procedure TfrmVtaConsignacion.cbProdConEnter(Sender: TObject);
begin
  if not qConsignacion.Active then
  begin
    qConsignacion.Close;
    qConsignacion.SQL.Clear;
    qConsignacion.SQL.Text := Prd_Con;
    qConsignacion.ParamByName('R').AsInteger := ArCon;
    qConsignacion.ParamByName('G').AsInteger := GrCon;
    qConsignacion.Open;
  end;
  cbProdCon.DropDown;
end;

procedure TfrmVtaConsignacion.VtaConsignacionIdClienteValidate(Sender: TField);
begin
  if GetDatosEnt(VtaConsignacionIdCliente.AsInteger, IdBranch, 1, Datos_Ent) then
    VtaConsignacionNomCliente.AsString := Datos_Ent.Nombre
  else
    raise EUsuario.Create('El cliente no existe');
end;

procedure TfrmVtaConsignacion.btnPagosClick(Sender: TObject);
var
  GrabarComprobante: Boolean;
  ComoPago: TAccionPago;
begin
  if (VtaConsignacion.State = dsInsert) and
     (Add_VCon) and
     (not VtaConsignacion.IsEmpty) then
  begin
    VtaConsignacion.Post;
    FillChar(Factura, SizeOf(TFactura), 0);
    FillChar(DatosPago, SizeOf(TDatosPagos), 0);
    FillChar(ItemsFiscal, SizeOf(TBody_Fiscal), 0);
    DatosPago.TipoOperacion := Venta;
    DatosPago.IdEntidad := VtaConsignacionIdCliente.AsInteger;
    DatosPago.IdPuntoVenta := IdSalesPoint;
    DatosPago.IdSucursal := IdBranch;
    DatosPago.FechaOp := VtaConsignacionFechaF.AsDateTime;
    DatosPago.NomEntidad := VtaConsignacionNomCliente.AsString;
    DatosPago.NroComprobante := VtaConsignacionNroContrato.AsString;
    DatosPago.TipoComprobante := Venta_Consig;
    DatosPago.IdCompRef := 0;
    DatosPago.CompReferencia := Vacio;
    DatosPago.Coeficiente := 0;
    DatosPago.IdTarjeta := VtaConsignacionIdTarjeta.AsInteger;
    DatosPago.CantidadCuotas := VtaConsignacionNCtas.AsInteger;
    DatosPago.IdVendedor := VtaConsignacionIdVend.AsInteger;
    DatosPago.TotalPagos := VtaConsignacionMonto.AsCurrency;

    ComoPago := DoPago(DatosPago, ImprimirEnLinea);
    case ComoPago of
      apPago: begin
        GrabarComprobante := True;
        if DatosPago.RestaPagar < 0 then // Si hay resto, le cambio el signo para darlo como vuelto
          DatosPago.RestaPagar := -1 * DatosPago.RestaPagar;
      end;
      apCancelo: begin
        GrabarComprobante := False;
      end
      else
        GrabarComprobante := False;
    end;

    if GrabarComprobante then
    begin
      Factura.IdSucursal := IdBranch;
      Factura.IdPuntoVenta := IdSalesPoint;
      Factura.TipoFactura := Venta_Consig;
      Factura.FechaF := VtaConsignacionFechaF.AsDateTime;
      Factura.Entidad := VtaConsignacionIdCliente.AsInteger;
      Factura.Total := VtaConsignacionMonto.AsCurrency;
      Factura.NroFactura := VtaConsignacionNroContrato.AsString;
      Factura.Empleado := VtaConsignacionIdVend.AsInteger;
      Factura.CantCuotas := VtaConsignacionNCtas.AsInteger;
      Factura.CantArtic := 1;

      ItemsFiscal[1].IdProducto := VtaConsignacionIdEquipo.AsInteger;
      ItemsFiscal[1].Talle := 0;
      ItemsFiscal[1].CodProd := VtaConsignacionIdEquipo.AsString;
      ItemsFiscal[1].Marca := VtaConsignacionMarca.AsString;
      ItemsFiscal[1].Detalle := VtaConsignacionDetalle.AsString;
      ItemsFiscal[1].DescProd := ItemsFiscal[1].Marca +' '+ ItemsFiscal[1].Detalle;
      ItemsFiscal[1].SubDet := Vacio;
      ItemsFiscal[1].Color := Vacio;
      ItemsFiscal[1].IdPuntoVenta := IdSalesPoint;
      ItemsFiscal[1].IdSucursal := IdBranch;
      ItemsFiscal[1].Cantidad := 1;
      ItemsFiscal[1].Bonificacion := 0;
      ItemsFiscal[1].Descuento := 0;
      ItemsFiscal[1].PrecioNetoT := VtaConsignacionPrecioFinal.AsCurrency;
      ItemsFiscal[1].PrecioNetoU := VtaConsignacionPrecioFinal.AsCurrency;
      ItemsFiscal[1].PrecioFinal := VtaConsignacionPrecioFinal.AsCurrency;
      ItemsFiscal[1].PrecioTotal := VtaConsignacionPrecioFinal.AsCurrency;
      ItemsFiscal[1].Exento := 0;
      ItemsFiscal[1].NoComputable := 0;
      ItemsFiscal[1].MtoIva := 0;
      ItemsFiscal[1].IdAlcIva := 0;
      ItemsFiscal[1].AlicuotaIva := 0;
      ItemsFiscal[1].TIvaEnt := 3;
      ItemsFiscal[1].IdAlcIB := 0;
      ItemsFiscal[1].AlicuotaIB := 0;
      ItemsFiscal[1].IngBto := 0;
      ItemsFiscal[1].Servicio := False;
      ItemsFiscal[1].CoefImpInt := 0;
      ItemsFiscal[1].PrecioCosto := 0;
      ItemsFiscal[1].PrecioLista := 0;
      ItemsFiscal[1].EnOferta := False;
      ItemsFiscal[1].DetalleExtendido := False;
      ItemsFiscal[1].DetalleExt[1]:= Cero;
      ItemsFiscal[1].DetalleExt[2]:= Cero;
      ItemsFiscal[1].DetalleExt[3]:= Cero;
      ItemsFiscal[1].DetalleExt[4]:= Cero;

      if dmSaveFile.GrabarComprobanteVenta(DatosPago, Factura, ItemsFiscal) then
      begin
        ShowMessage('La venta del producto consignado fue correctamente grabada');
        if VtaConsignacion.Active then
          VtaConsignacion.EmptyDataSet
        else
          VtaConsignacion.CreateDataSet;
      end;
    end
    else begin
      if VtaConsignacion.Active then
        VtaConsignacion.EmptyDataSet
      else
        VtaConsignacion.CreateDataSet;
    end;
  end;
end;

procedure TfrmVtaConsignacion.btnCalcularVtaClick(Sender: TObject);
begin
  qVendidos.Close;
  qVendidos.ParamByName('D').AsDate := edtDesdeVta.Date;
  qVendidos.ParamByName('H').AsDate := edtHastaVta.Date;
  qVendidos.ParamByName('R').AsInteger := ArCon;
  qVendidos.ParamByName('G').AsInteger := GrCon;
  qVendidos.Open;
end;

procedure TfrmVtaConsignacion.btnCancelarClick(Sender: TObject);
begin
  if VtaConsignacion.Active then
    VtaConsignacion.EmptyDataSet
  else
    VtaConsignacion.CreateDataSet;
end;

procedure TfrmVtaConsignacion.btnExportarVtaClick(Sender: TObject);
begin
  if not qVendidos.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qVendidos;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmVtaConsignacion.VtaConsignacionNewRecord(DataSet: TDataSet);
begin
  VtaConsignacionMonto.AsCurrency := 0;
  VtaConsignacionIdEquipo.AsInteger := 0;
  VtaConsignacionFechaF.AsDateTime := Date;
  VtaConsignacionIdTarjeta.AsInteger := 0;
  VtaConsignacionNCtas.AsInteger := 0;
  VtaConsignacionIdVend.AsInteger := Usuario;
end;

procedure TfrmVtaConsignacion.VtaConsignacionNroContratoValidate(Sender: TField);
var
  nro: Integer;
begin
  try
    nro := StrToInt(Sender.AsString);
  except
    raise EUsuario.Create('Debe ser solo numeros el nº de contrato.- ');
  end;
end;

procedure TfrmVtaConsignacion.VtaConsignacionIdEquipoChange(Sender: TField);
begin
  if not qConsignacion.Active then
  begin
    qConsignacion.Close;
    qConsignacion.SQL.Clear;
    qConsignacion.SQL.Text := Prd_Con;
    qConsignacion.ParamByName('R').AsInteger := ArCon;
    qConsignacion.ParamByName('G').AsInteger := GrCon;
    qConsignacion.Open;
  end;
end;

procedure TfrmVtaConsignacion.VtaConsignacionIdEquipoValidate(Sender: TField);
begin
  if GetDatosArt(VtaConsignacionIdEquipo.AsInteger, Vacio, Datos_Art) then
  begin
    VtaConsignacionMonto.AsCurrency := Datos_Art.Precio;
    VtaConsignacionMarca.AsString := Datos_Art.Marca;
    VtaConsignacionDetalle.AsString := Datos_Art.Detalle;
    VtaConsignacionPrecioFinal.AsCurrency := Datos_Art.Precio;
    VtaConsignacionIdMarkUp.AsInteger := Datos_Art.IdMarkUp;
    VtaConsignacionDetProd.AsString := Datos_Art.DetProd;
  end;
end;

procedure TfrmVtaConsignacion.VtaConsignacionAfterOpen(DataSet: TDataSet);
begin
  dmGestion.qTarjetas.Open;
  if not qConsignacion.Active then
  begin
    qConsignacion.Close;
    qConsignacion.SQL.Clear;
    qConsignacion.SQL.Text := Prd_Con;
    qConsignacion.ParamByName('R').AsInteger := ArCon;
    qConsignacion.ParamByName('G').AsInteger := GrCon;
    qConsignacion.Open;
  end;
end;

procedure TfrmVtaConsignacion.VtaConsignacionBeforePost(DataSet: TDataSet);
begin
  if (not btnSalir.Focused) And (not btnCancelar.Focused) then
  begin
    if (VtaConsignacionIdCliente.AsInteger <= Impersonal) then
      raise EUsuario.Create('Cliente invalido');
    if (VtaConsignacionIdEquipo.AsInteger = 0) then
    begin
      raise EUsuario.Create('Producto invalido');
    end;
  end;
end;

procedure TfrmVtaConsignacion.edtContratoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmVtaConsignacion.edtImporteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmVtaConsignacion.VtaConsignacionNCtasValidate(Sender: TField);
var
  CoefTarj: Double;
begin
  if VtaConsignacionIdEquipo.AsInteger > 0 then
  begin
    CoefTarj := GetCoefTar(VtaConsignacionIdTarjeta.AsInteger, IdBranch,
                           VtaConsignacionNCtas.AsInteger);
    if GetPrecio(VtaConsignacionIdEquipo.AsInteger,
                 VtaConsignacionIdTarjeta.AsInteger,
                 VtaConsignacionNCtas.AsInteger,
                 0.0, 0, CoefTarj, 0, 1, APrice) <= 0 then
    begin
      cbProdCon.SetFocus;
      raise EUsuario.Create('Producto sin precio final. No se puede facturar.-');
    end;
    VtaConsignacionMonto.AsCurrency := APrice.PFinal;
  end;
end;

procedure TfrmVtaConsignacion.VtaConsignacionIdVendValidate(Sender: TField);
begin
  if GetDatosEmp(VtaConsignacionIdVend.AsInteger, Vacio, 3, Datos_Ent) then
    VtaConsignacionNomVend.AsString := Datos_Ent.Nombre;
end;

procedure TfrmVtaConsignacion.edtVendExit(Sender: TObject);
begin
  if (VtaConsignacionIdVend.AsInteger = 0) And
     (not btnSalir.Focused) And
     (not btnCancelar.Focused) then
  begin
    edtVend.SetFocus;
    raise EUsuario.Create('debe ingresar un código de vendedor.-');
  end;
end;

end.
