unit uTransInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, ExtCtrls, RzButton, RzSpnEdt, StdCtrls, RzCmboBx, RzEdit,
  DB, MDOCustomDataSet, MDOQuery, Provider, DBClient;

type
  TfrmTransInv = class(TForm)
    gbTrfInv: TRzGroupBox;
    gbEstado: TRzGroupBox;
    pnlSalirTI: TRzPanel;
    btnSalir: TRzBitBtn;
    btnTrfInf: TRzBitBtn;
    lblSucursalTI: TLabel;
    cbSucursales: TRzComboBox;
    lblPeriodoTI: TLabel;
    spPeriodo: TRzSpinner;
    mmEstadoTI: TRzMemo;

    qInven: TMDOQuery;

    dsqInven: TDataSource;
    qItemsIv: TMDOQuery;
    dspqInvent: TDataSetProvider;

    Inven: TClientDataSet;
    InvenIDFACTURA: TIntegerField;
    InvenIDSUCURSAL: TIntegerField;
    InvenFECHAI: TDateField;
    InvenNROFACT: TStringField;
    InvenDIAHORA: TDateTimeField;
    InvenIDSTOCK: TIntegerField;
    InvenEMPLEADO: TIntegerField;
    InvenPERIODO: TIntegerField;
    InvenTOTAL: TBCDField;
    InvenCANTART: TSmallintField;
    InvenTNETO: TBCDField;
    InvenTNOCOMP: TBCDField;
    InvenTCOSTO: TBCDField;
    InvenTFAC: TIntegerField;
    InvenqItemsIv: TDataSetField;

    ItemsIv: TClientDataSet;
    ItemsIvIDFACTURA: TIntegerField;
    ItemsIvIDSUCURSAL: TIntegerField;
    ItemsIvIDSTOCK: TIntegerField;
    ItemsIvIDITEM: TSmallintField;
    ItemsIvIDARTICULO: TIntegerField;
    ItemsIvTALLE: TIntegerField;
    ItemsIvFECHAI: TDateField;
    ItemsIvPERIODO: TIntegerField;
    ItemsIvCANTIDAD: TBCDField;
    ItemsIvIPRECIO: TBCDField;
    ItemsIvITOTAL: TBCDField;
    ItemsIvINETO: TBCDField;
    ItemsIvINOCOMP: TBCDField;
    ItemsIvCOSTO: TBCDField;
    ItemsIvMARCA: TStringField;
    ItemsIvDETALLE: TStringField;
    ItemsIvTIENETALLE: TSmallintField;
    ItemsIvCOLOR: TStringField;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbSucursalesChange(Sender: TObject);
    procedure btnTrfInfClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure InvenAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    IdSucur,
    Periodo: Integer;
    procedure Transf_Inventario(IdSuc, IdPer:Integer);
  public
    { Public declarations }
  end;

var
  frmTransInv: TfrmTransInv;

implementation

uses udmGestion, udmSaveFile, uTools;

{$R *.dfm}

procedure TfrmTransInv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmTransInv.FormCreate(Sender: TObject);
begin
  cbSucursales.Items.Clear;
  dmGestion.Sucursales.Open;
  dmGestion.Sucursales.First;
  while not dmGestion.Sucursales.Eof do
  begin
    cbSucursales.Items.AddObject(dmGestion.SucursalesNombreSuc.AsString, TObject(dmGestion.SucursalesIdSucursal.AsInteger));
    dmGestion.Sucursales.Next;
  end;
  mmEstadoTI.Lines.Clear;
  qInven.Close;
  qItemsIv.Close;
end;

procedure TfrmTransInv.InvenAfterOpen(DataSet: TDataSet);
begin
  ItemsIv.Open;
end;

procedure TfrmTransInv.Transf_Inventario(IdSuc, IdPer:Integer);
var
  i: Integer;
  s: String;

  procedure Cargar_Registro_Inventario;
  var
    Actual: Integer;
  begin
    try
      FillChar(Factura, SizeOf(Factura), 0);
      FillChar(ItemsFiscal, SizeOf(ItemsFiscal), 0);
      with Factura do
      begin
        IdFactura := InvenIdFactura.AsInteger;
        IdSucursal := InvenIdSucursal.AsInteger;
        IdPuntoVenta := 1;
        TipoFactura := InvenTFAC.AsInteger;
        IdStOrigen := InvenIdStock.AsInteger;
        IdStDestino := InvenPeriodo.AsInteger;
        FechaF := InvenFechaI.AsDateTime;
        FechaI := 0;
        PuntoVta := 0;
        NroFactura := InvenNroFact.AsString;
        CompRef := Vacio;
        IdCompRef := 0;
        Entidad := InvenEmpleado.AsInteger;
        TipoIva := 0;
        TipoIvaStr := Vacio;
        TipoDoc := NINGUNO;
        TipoDocStr := Vacio;
        NroDocumento := Vacio;
        Descuento := 0;
        Neto := InvenTNeto.AsCurrency;
        Exento := InvenTCosto.AsCurrency;
        NoComputables := InvenTNOCOMP.AsCurrency;
        AlicuotaIva1 := 0;
        IvaAlicuota1 := 0;
        Total := InvenTotal.AsCurrency;
        Contado := 0;
        Tarjeta := 0;
        CtaCte := 0;
        Credito := 0;
        ChequeTer := 0;
        Empleado := InvenEmpleado.AsInteger;
        TipoAj := 1;
      end;

      ItemsIv.First;
      Actual := 0;
      while not ItemsIv.Eof do
      begin
        Inc(Actual);
        ItemsFiscal[Actual].IdFactura := InvenIdFactura.AsInteger;
        ItemsFiscal[Actual].IdSucursal := InvenIdSucursal.AsInteger;
        ItemsFiscal[Actual].IdPuntoVenta := 1;
        ItemsFiscal[Actual].IdItem := ItemsIVIdItem.AsInteger;
        ItemsFiscal[Actual].IdProducto := ItemsIVIdArticulo.AsInteger;
        ItemsFiscal[Actual].Talle := ItemsIVTalle.AsInteger;
        ItemsFiscal[Actual].CodProd := ItemsIVIdArticulo.AsString;
        ItemsFiscal[Actual].Marca := ItemsIVMarca.AsString;
        ItemsFiscal[Actual].Detalle := ItemsIVDetalle.AsString;
        ItemsFiscal[Actual].Color := ItemsIVColor.AsString;
        ItemsFiscal[Actual].TipoAj := 1;
        ItemsFiscal[Actual].Cantidad := ItemsIVCantidad.AsFloat;
        ItemsFiscal[Actual].Bonificacion := 0;
        ItemsFiscal[Actual].Descuento := 0;
        ItemsFiscal[Actual].PrecioNetoT := ItemsIVINETO.AsCurrency * ItemsIVCantidad.AsFloat;
        ItemsFiscal[Actual].PrecioCosto := ItemsIVCOSTO.AsCurrency;
        ItemsFiscal[Actual].PrecioFinal := ItemsIVIPrecio.AsCurrency;
        ItemsFiscal[Actual].PrecioTotal := ItemsIVIPrecio.AsCurrency * ItemsIVCantidad.AsFloat;
        ItemsFiscal[Actual].Exento := 0;
        ItemsFiscal[Actual].NoComputable := ItemsIVINOCOMP.AsCurrency;
        ItemsFiscal[Actual].CoefImpInt := 0;
        ItemsFiscal[Actual].MtoIva := 0;
        ItemsFiscal[Actual].IdAlcIva := 0;
        ItemsFiscal[Actual].AlicuotaIva := 0;
        ItemsFiscal[Actual].TIvaEnt := 0;
        ItemsFiscal[Actual].IdAlcIB := 0;
        ItemsFiscal[Actual].IngBto := 0;
        ItemsFiscal[Actual].Servicio := False;
        ItemsIV.Next;
      end;
    finally
      Factura.CantArtic := Actual;
    end;
  end;

begin
  s := Vacio;
  try
    Inven.Close;
    Inven.Params.ParamByName('IdSucur').AsInteger := IdSuc;
    Inven.Params.ParamByName('Periodo').AsInteger := IdPer;
    Inven.Open;
  except
    on E:Exception do
      raise EUsuario.Create(E.Message);
  end;
  i := 0;
  s := Get_DetSuc(IdSuc, 1);
  if not Inven.IsEmpty then
  begin
    Inven.First;
    while not Inven.Eof do
    begin
      Cargar_Registro_Inventario;
      Inc(i);
      if dmSaveFile.GrabarComprobanteInventario(Factura, ItemsFiscal) then
        mmEstadoTI.Lines.Add(Format('%s  %d  %d Ok    ', [s, IdPer, i]))
      else
        mmEstadoTI.Lines.Add(Format('%s  %d  %d Error ', [s, IdPer, i]));
      Inven.Next;
    end;
    mmEstadoTI.Lines.Add(Format('%s  %d  %d Finalizado', [s, IdPer, i]));
    Inven.Close;
  end
  else begin
    mmEstadoTI.Lines.Add(Format('%s  %d  %d Sin Operaciones ', [s, IdPer, i]));
  end;
end;

procedure TfrmTransInv.cbSucursalesChange(Sender: TObject);
begin
  IdSucur := Integer(cbSucursales.Items.Objects[cbSucursales.ItemIndex]);
end;

procedure TfrmTransInv.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTransInv.btnTrfInfClick(Sender: TObject);
begin
  mmEstadoTI.Lines.Clear;
  Periodo := spPeriodo.Value;
  if (IdSucur > 0) And
     (Periodo > 2003) And
     (Periodo <= CurrentYear) then
  begin
    Transf_Inventario(IdSucur, Periodo);
  end;
end;


end.
