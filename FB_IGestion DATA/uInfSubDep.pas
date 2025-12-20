unit uInfSubDep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, Grids, Wwdbigrd, Wwdbgrid, DB,
  StdCtrls, RzCmboBx, MDOCustomDataSet, MDOQuery, DBClient;

type
  TfrmInfSubDep = class(TForm)
    pnlInfSubDep: TRzPanel;
    btnSalir: TRzBitBtn;
    gSubDep: TwwDBGrid;

    qVentas: TMDOQuery;
    qVentasIdFactura: TIntegerField;
    qVentasIdSucursal: TIntegerField;
    qVentasIdPuntoVenta: TIntegerField;
    qVentasFechaF: TDateField;
    qVentasNroFactura: TStringField;
    qVentasTipoFactura: TSmallintField;
    qVentasIdSubDep: TIntegerField;
    qVentasIdArticulo: TIntegerField;
    qVentasCantidad: TMDOBCDField;
    qVentasPrecioFinal: TMDOBCDField;
    qVentasMarca: TStringField;
    qVentasDetalle: TStringField;

    qEnvios: TMDOQuery;
    qEnviosIdSubDepO: TIntegerField;
    qEnviosIdSubDepD: TIntegerField;
    qEnviosIdFactura: TIntegerField;
    qEnviosIdSucursal: TIntegerField;
    qEnviosFechaF: TDateField;
    qEnviosNroFactura: TStringField;
    qEnviosIdArticulo: TIntegerField;
    qEnviosCantidad: TMDOBCDField;
    qEnviosPrecioFinal: TMDOBCDField;
    qEnviosMarca: TStringField;
    qEnviosDetalle: TStringField;

    dsSubDep: TDataSource;
    SubDepo: TClientDataSet;
    SubDepoIdArticulo: TIntegerField;
    SubDepoIdFactura: TIntegerField;
    SubDepoIdSucursal: TIntegerField;
    SubDepoIdPuntoVenta: TIntegerField;
    SubDepoFecha: TDateField;
    SubDepoCantidadE: TMDOBCDField;
    SubDepoCantidadV: TMDOBCDField;
    SubDepoSaldoStock: TMDOBCDField;
    SubDepoPrecioE: TMDOBCDField;
    SubDepoPrecioV: TMDOBCDField;
    SubDepoTipFac: TSmallintField;
    SubDepoDetFac: TStringField;
    SubDepoNroComp: TStringField;
    SubDepoIdSubDepO: TIntegerField;
    SubDepoIdSubDepD: TIntegerField;
    SubDepoDetProd: TStringField;
    lblSubDep: TLabel;
    cbSubDep: TRzComboBox;
    btnCalcular: TRzBitBtn;
    btnExpSD: TRzBitBtn;

    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure btnExpSDClick(Sender: TObject);
    procedure cbSubDepEnter(Sender: TObject);
    procedure gSubDepCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
    Sub_Dep: Integer;
    procedure Mov_SubDep;
  public
    { Public declarations }
  end;

var
  frmInfSubDep: TfrmInfSubDep;

implementation

uses udmGestion, uTools;

{$R *.dfm}

procedure TfrmInfSubDep.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmInfSubDep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qEnvios.Close;
  qVentas.Close;
  Action := caFree;
end;

procedure TfrmInfSubDep.Mov_SubDep;
var
  IdArt: Integer;
  Saldo: Double;
begin
  Sub_Dep := 0;
  Saldo := 0;
  IdArt := 0;
  qEnvios.Close;
  qVentas.Close;
  try
    Sub_Dep := Integer(cbSubDep.Items.Objects[cbSubDep.ItemIndex]);
  except
    Sub_Dep := 0;
    cbSubDep.SetFocus;
    raise EUsuario.Create('Sub Depósito mal elegido');
  end;
  qEnvios.ParamByName('SD').AsInteger := Sub_Dep;
  qEnvios.Open;
  if (not qEnvios.IsEmpty) and (Sub_Dep > 0) then
  begin
    try
      Screen.Cursor := crHourGlass;
      if SubDepo.Active then
        SubDepo.EmptyDataSet
      else
        SubDepo.CreateDataSet;
      qVentas.ParamByName('SD').AsInteger := Sub_Dep;
      qVentas.Open;
      qEnvios.First;
      SubDepo.DisableControls;
      while not qEnvios.Eof do
      begin
        SubDepo.Append;
        SubDepoIdArticulo.AsInteger := qEnviosIdArticulo.AsInteger;
        SubDepoDetProd.AsString := qEnviosMarca.AsString+' '+qEnviosDetalle.AsString;
        SubDepoIdFactura.AsInteger := qEnviosIdFactura.AsInteger;
        SubDepoIdSucursal.AsInteger := qEnviosIdSucursal.AsInteger;
        SubDepoIdPuntoVenta.AsInteger := 0;
        SubDepoIdSubDepO.AsInteger := qEnviosIdSubDepO.AsInteger;
        SubDepoIdSubDepD.AsInteger := qEnviosIdSubDepD.AsInteger;
        SubDepoFecha.AsDateTime := qEnviosFechaF.AsDateTime;
        if qEnviosIdSubDepO.AsInteger = Sub_Dep then
          SubDepoCantidadE.AsFloat := -qEnviosCantidad.AsFloat
        else
          SubDepoCantidadE.AsFloat := qEnviosCantidad.AsFloat;
        SubDepoCantidadV.AsFloat := 0;
        SubDepoSaldoStock.AsFloat := 0;
        SubDepoPrecioE.AsCurrency := qEnviosPrecioFinal.AsCurrency;
        SubDepoPrecioV.AsCurrency := 0;
        SubDepoTipFac.AsInteger := 39;
        SubDepoDetFac.AsString := 'Rem T';
        SubDepoNroComp.AsString := qEnviosNroFactura.AsString;
        SubDepo.Post;
        qEnvios.Next;
      end;
      qVentas.Open;
      qVentas.First;
      while not qVentas.Eof do
      begin
        SubDepo.Append;
        SubDepoIdArticulo.AsInteger := qVentasIdArticulo.AsInteger;
        SubDepoDetProd.AsString := qVentasMarca.AsString+' '+qVentasDetalle.AsString;
        SubDepoIdFactura.AsInteger := qVentasIdFactura.AsInteger;
        SubDepoIdSucursal.AsInteger := qVentasIdSucursal.AsInteger;
        SubDepoIdPuntoVenta.AsInteger := qVentasIdPuntoVenta.AsInteger;
        SubDepoIdSubDepO.AsInteger := 0;
        SubDepoIdSubDepD.AsInteger := qVentasIdSubDep.AsInteger;
        SubDepoFecha.AsDateTime := qVentasFechaF.AsDateTime;
        SubDepoCantidadE.AsFloat := 0;
        SubDepoCantidadV.AsFloat := qVentasCantidad.AsFloat;
        SubDepoSaldoStock.AsFloat := 0;
        SubDepoPrecioE.AsCurrency := 0;
        SubDepoPrecioV.AsCurrency := qVentasPrecioFinal.AsCurrency;;
        SubDepoTipFac.AsInteger := qVentasTipoFactura.AsInteger;
        SubDepoDetFac.AsString := GetText_Comprobante(qVentasTipoFactura.AsInteger, 2);
        SubDepoNroComp.AsString := qVentasNroFactura.AsString;
        SubDepo.Post;
        qVentas.Next;
      end;
      if not SubDepo.IsEmpty then
      begin
        btnExpSD.Enabled := True;
        SubDepo.IndexFieldNames := 'IdArticulo;Fecha';
        gSubDep.GroupFieldName := SubDepoDetProd.FieldName;
        SubDepo.First;
        while not SubDepo.Eof do
        begin
          if IdArt = SubDepoIdArticulo.AsInteger then
            Saldo := Saldo + (SubDepoCantidadE.AsFloat - SubDepoCantidadV.AsFloat)
          else
            Saldo := (SubDepoCantidadE.AsFloat - SubDepoCantidadV.AsFloat);
          SubDepo.Edit;
          SubDepoSaldoStock.AsFloat := Saldo;
          SubDepo.Post;
          IdArt := SubDepoIdArticulo.AsInteger;
          SubDepo.Next;
        end;
      end;
    finally
      SubDepo.EnableControls;
      SubDepo.First;
      gSubDep.RefreshDisplay;
      Screen.Cursor := crDefault;
    end;
  end
  else begin
    ShowMessage('No hay movimientos en ese Sub Depósito');
  end;
end;

procedure TfrmInfSubDep.FormCreate(Sender: TObject);
begin
  qEnvios.Close;
  qVentas.Close;
end;

procedure TfrmInfSubDep.FormShow(Sender: TObject);
begin
  cbSubDep.ClearItems;
  with dmGestion do
  begin
    SubDep.Open;
    SubDep.First;
    while not SubDep.Eof do
    begin
      cbSubDep.Items.AddObject(SubDepDetSubDep.AsString, TObject(SubDepIdSubDep.AsInteger));
      SubDep.Next;
    end;
  end;
end;

procedure TfrmInfSubDep.btnCalcularClick(Sender: TObject);
begin
  Mov_SubDep;
end;

procedure TfrmInfSubDep.btnExpSDClick(Sender: TObject);
begin
  dmGestion.IyC_Exp.DataSet := SubDepo;
  dmGestion.IyC_Exp.Select;
end;

procedure TfrmInfSubDep.cbSubDepEnter(Sender: TObject);
begin
  btnExpSD.Enabled := False;
end;

procedure TfrmInfSubDep.gSubDepCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if Field.FieldName = SubDepoCantidadE.FieldName then
  begin
    AFont.Style := AFont.Style + [fsBold];
    AFont.Color := clBlack;
    ABrush.Color := clYellow;
  end;
  if Field.FieldName = SubDepoCantidadV.FieldName then
  begin
    AFont.Style := AFont.Style + [fsBold];
    AFont.Color := clRed;
    ABrush.Color := clWhite;
  end;
  if Field.FieldName = SubDepoSaldoStock.FieldName then
  begin
    AFont.Style := AFont.Style + [fsBold];
    AFont.Color := clBlue;
    ABrush.Color := $00D2FFA6;
  end;
end;

end.
