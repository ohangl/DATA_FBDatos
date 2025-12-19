unit uOrdenCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, DBGrids, StdCtrls, Mask, DBCtrls,  Grids, OleCtrls, ShellApi,
  FiscalPrinterLib_TLB, ComCtrls, Buttons, ToolWin, uTools, CheckLst,
  Wwdbigrd, Wwdbgrid, OleServer, wwdblook, wwdbdatetimepicker, wwdbedit,
  Wwdotdot, Wwdbcomb, Variants, wwSpeedButton, wwDBNavigator, wwclearpanel,
  ppPrnabl, ppClass, ppCtrls, ppDB, ppBands, ppCache, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppReport, RzTabs, Provider, DBClient,  RzButton, RzPanel, MDOCustomDataSet,
  MDOQuery;

type
  TfrmOrdenCompra = class(TForm)
    rptOrdCompras: TppReport;
    dbpOC: TppDBPipeline;
    dbpItOC: TppDBPipeline;
    ppHeaderBandOC: TppHeaderBand;
    ppDetailBandOC: TppDetailBand;
    ppFooterBandOC: TppFooterBand;
    lblNomProv: TppDBText;
    lblProvOC: TppLabel;
    lblOrdCmp: TppLabel;
    lblNroOC: TppLabel;
    lblNroOrd: TppDBText;
    lblFechaOC: TppLabel;
    lblEmpresaOC: TppLabel;
    ppShapeOC1: TppShape;
    lblFecOC: TppDBText;
    lblDetalle: TppDBText;
    lblCantidad: TppDBText;
    lblDcto: TppDBText;
    lblPrcCmp: TppDBText;
    lblTotItem: TppDBText;
    lblDetProd: TppLabel;
    lblCant: TppLabel;
    lblDct: TppLabel;
    lblPrcCompra: TppLabel;
    lblTItem: TppLabel;
    ppShapeOC2: TppShape;
    ppShapeOC3: TppShape;
    lblTotal: TppLabel;
    lblCondP: TppLabel;
    lblCondPago1OC: TppDBText;
    lblFecEnvOC: TppDBText;
    lblFEnv: TppLabel;
    lnOrdC1: TppLine;
    lnOrdC2: TppLine;
    lblTotOC: TppDBText;
    lblPorProv: TppDBText;
    lblPorEmpresa: TppLabel;
    ppShapeOC4: TppShape;
    lblODetalles: TppDBText;
    lblNroOrdPrv: TppDBText;
    lblNroOrdP: TppLabel;
    lblIdItemOC: TppDBText;
    lblIdOrdCmp: TDBText;

    pcOrdCpm: TRzPageControl;
    tsOrdenesRealizadas: TRzTabSheet;
    tsPedidos: TRzTabSheet;
    tsRecibidos: TRzTabSheet;
    tsOrdenes: TRzTabSheet;
    gPedidos: TwwDBGrid;
    gRecibidos: TwwDBGrid;
    gFacOC: TwwDBGrid;
    gOrdenes: TwwDBGrid;
    gItemsOrd: TwwDBGrid;
    pnlTopOC: TRzPanel;
    lblEntidad: TLabel;
    lblNomEnt: TDBText;
    lblFecha: TLabel;
    lblComprobante: TLabel;
    edtProveedor: TwwDBEdit;
    edtFecha: TwwDBDateTimePicker;
    edtComprobante: TwwDBEdit;
    pnlFoot: TRzPanel;
    btnSalir: TRzBitBtn;
    lblCondPago: TLabel;
    lblFecEnv: TLabel;
    lblOrdPrv: TLabel;
    edtCondPago: TwwDBEdit;
    edtFecEnv: TwwDBDateTimePicker;
    edtNroPrv: TwwDBEdit;
    pnlBtns: TRzPanel;
    btnNewOrd: TRzBitBtn;
    btnDelOrd: TRzBitBtn;
    btnPrnOrd: TRzBitBtn;
    btnGraOrd: TRzBitBtn;
    btnClrOrd: TRzBitBtn;
    btnCalculadora: TRzBitBtn;

    dsqPedidos: TDataSource;
    qPedidos: TMDOQuery;
    qPedidosIdOrdCmp: TIntegerField;
    qPedidosEntidad: TIntegerField;
    qPedidosIdArticulo: TIntegerField;
    qPedidosDetProd: TStringField;
    qPedidosNomEntidad: TStringField;
    qPedidosFechaOC: TDateField;
    qPedidosPRECION: TMDOBCDField;
    qPedidosCANTIDADP: TMDOBCDField;
    qPedidosIMPINT: TMDOBCDField;
    qPedidosPRECIOTOTAL: TMDOBCDField;
    qPedidosPRCBONIF: TMDOBCDField;

    dsqRecibidos: TDataSource;
    qRecibidos: TMDOQuery;
    qRecibidosEntidad: TIntegerField;
    qRecibidosFechaOC: TDateField;
    qRecibidosIdArticulo: TIntegerField;
    qRecibidosDetProd: TStringField;
    qRecibidosNomEntidad: TStringField;
    qRecibidosFechaRec: TDateField;
    qRecibidosPRECION: TMDOBCDField;
    qRecibidosCANTIDADR: TMDOBCDField;
    qRecibidosIMPINT: TMDOBCDField;
    qRecibidosPRECIOTOTAL: TMDOBCDField;
    qRecibidosPRECIOR: TMDOBCDField;

    qTotPed: TMDOQuery;
    qTotPedTOTAL: TMDOBCDField;

    dsqOrdCmp: TDataSource;
    qOrdComp: TMDOQuery;
    qOrdCompIdOrdCmp: TIntegerField;
    qOrdCompIdSucursal: TIntegerField;
    qOrdCompFechaOC: TDateField;
    qOrdCompNroOrdCmp: TStringField;
    qOrdCompNroOrdPrv: TStringField;
    qOrdCompEntidad: TIntegerField;
    qOrdCompCantItems: TSmallintField;
    qOrdCompFechaEnv: TDateField;
    qOrdCompCondPago: TStringField;
    qOrdCompEstadoOC: TIntegerField;
    qOrdCompNomEntidad: TStringField;
    qOrdCompTOTALOC: TMDOBCDField;

    dsqItemsOC: TDataSource;
    qItemsOC: TMDOQuery;
    qItemsOCIdOrdCmp: TIntegerField;
    qItemsOCIdsucursal: TIntegerField;
    qItemsOCIdItemOc: TIntegerField;
    qItemsOCEntidad: TIntegerField;
    qItemsOCFechaOC: TDateField;
    qItemsOCFechaRec: TDateField;
    qItemsOCIdArticulo: TIntegerField;
    qItemsOCEstado: TSmallintField;
    qItemsOCDetalle: TStringField;
    qItemsOCDetProd: TStringField;
    qItemsOCCANTIDADP: TMDOBCDField;
    qItemsOCCANTIDADR: TMDOBCDField;
    qItemsOCPRECION: TMDOBCDField;
    qItemsOCIMPINT: TMDOBCDField;
    qItemsOCPRECIOTOTAL: TMDOBCDField;
    qItemsOCPRCBONIF: TMDOBCDField;
    qItemsOCPRECIOR: TMDOBCDField;

    dsqOrdenes: TDataSource;
    qOrdenes: TMDOQuery;
    qOrdenesIDORDCMP: TIntegerField;
    qOrdenesIDSUCURSAL: TIntegerField;
    qOrdenesFECHAOC: TDateField;
    qOrdenesNROORDCMP: TMDOStringField;
    qOrdenesNROORDPRV: TMDOStringField;
    qOrdenesENTIDAD: TIntegerField;
    qOrdenesCANTITEMS: TSmallintField;
    qOrdenesTOTALOC: TMDOBCDField;
    qOrdenesFECHAENV: TDateField;
    qOrdenesCONDPAGO: TMDOStringField;
    qOrdenesESTADOOC: TIntegerField;
    qOrdenesNomProveedor: TStringField;

    dspqOrdenes: TDataSetProvider;
    dsOrdCmp: TDataSource;
    OrdCom: TClientDataSet;
    OrdComqItems: TDataSetField;
    OrdComNomProv: TStringField;
    OrdComNomVjte: TStringField;
    OrdComIDORDCMP: TIntegerField;
    OrdComIDSUCURSAL: TIntegerField;
    OrdComFECHAOC: TDateField;
    OrdComNROORDCMP: TStringField;
    OrdComNROORDPRV: TStringField;
    OrdComENTIDAD: TIntegerField;
    OrdComCANTITEMS: TSmallintField;
    OrdComTOTALOC: TBCDField;
    OrdComFECHAENV: TDateField;
    OrdComCONDPAGO: TStringField;
    OrdComESTADOOC: TIntegerField;

    qItems: TMDOQuery;
    qItemsIDORDCMP: TIntegerField;
    qItemsIDSUCURSAL: TIntegerField;
    qItemsIDITEMOC: TIntegerField;
    qItemsENTIDAD: TIntegerField;
    qItemsFECHAOC: TDateField;
    qItemsFECHAREC: TDateField;
    qItemsIDARTICULO: TIntegerField;
    qItemsCANTIDADP: TMDOBCDField;
    qItemsCANTIDADR: TMDOBCDField;
    qItemsPRECION: TMDOBCDField;
    qItemsIMPINT: TMDOBCDField;
    qItemsPRECIOTOTAL: TMDOBCDField;
    qItemsPRCBONIF: TMDOBCDField;
    qItemsPRECIOR: TMDOBCDField;
    qItemsESTADO: TSmallintField;
    qItemsDETALLE: TMDOStringField;
    qItemsDetProducto: TStringField;

    dsItemsOC: TDataSource;
    ItemsOC: TClientDataSet;
    ItemsOCIDORDCMP: TIntegerField;
    ItemsOCIDSUCURSAL: TIntegerField;
    ItemsOCIDITEMOC: TIntegerField;
    ItemsOCENTIDAD: TIntegerField;
    ItemsOCFECHAOC: TDateField;
    ItemsOCFECHAREC: TDateField;
    ItemsOCIDARTICULO: TIntegerField;
    ItemsOCCANTIDADP: TBCDField;
    ItemsOCCANTIDADR: TBCDField;
    ItemsOCPRECION: TBCDField;
    ItemsOCIMPINT: TBCDField;
    ItemsOCPRECIOTOTAL: TBCDField;
    ItemsOCPRCBONIF: TBCDField;
    ItemsOCPRECIOR: TBCDField;
    ItemsOCESTADO: TSmallintField;
    ItemsOCDETALLE: TStringField;
    ItemsOCDetProd: TStringField;
    lblDetEmpFC: TLabel;
    cbOCDetEmp: TwwDBLookupCombo;
    OrdComIdEmpresa: TIntegerField;
    qOrdenesIDEMPRESA: TIntegerField;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure gFacOCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtProveedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtProveedorEnter(Sender: TObject);
    procedure gFacOCColExit(Sender: TObject);
    procedure edtComprobanteExit(Sender: TObject);
    procedure gFacOCKeyPress(Sender: TObject; var Key: Char);
    procedure gFacOCUpdateFooter(Sender: TObject);
    procedure edtCondPagoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtFecEnvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gFacOCColEnter(Sender: TObject);
    procedure gPedidosUpdateFooter(Sender: TObject);
    procedure ItemsOCAfterPost(DataSet: TDataSet);
    procedure ItemsOCAfterDelete(DataSet: TDataSet);
    procedure ItemsOCIdArticuloValidate(Sender: TField);
    procedure ItemsOCNewRecord(DataSet: TDataSet);
    procedure btnSalirClick(Sender: TObject);
    procedure btnNewOrdClick(Sender: TObject);
    procedure btnDelOrdClick(Sender: TObject);
    procedure btnPrnOrdClick(Sender: TObject);
    procedure btnGraOrdClick(Sender: TObject);
    procedure btnClrOrdClick(Sender: TObject);
    procedure ItemsOCIdArticuloSetText(Sender: TField; const Text: String);
    procedure ItemsOCPrecioNChange(Sender: TField);
    procedure OrdComNewRecord(DataSet: TDataSet);
    procedure gOrdenesDblClick(Sender: TObject);
    procedure qItemsCalcFields(DataSet: TDataSet);
    procedure OrdComReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure ItemsOCReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure dspqOrdenesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure OrdComENTIDADValidate(Sender: TField);
    procedure edtNroPrvExit(Sender: TObject);
    procedure OrdComIDORDCMPGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnCalculadoraClick(Sender: TObject);
    procedure gItemsOrdDblClick(Sender: TObject);
    procedure OrdComAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    BuscandoArt: Boolean;
    IdProv, NewIt, AuxIdOrd: Integer;
   //----------------------------------------
    procedure Cargar_OC(I, S: Integer);
    procedure Imprimir_OC;
    procedure Calcular_Precio;
    procedure UpdateTotalsFacOC;
    function LastOC(IdSuc: Integer): Integer;
   //----------------------------------------
  public
    { Public declarations }
  end;

var
  frmOrdenCompra: TfrmOrdenCompra;

implementation

uses udmGestion, udmSaveFile, uConfiguracion, uProveedores, uABMArticulos,
  uSearchProd;

{$R *.DFM}

(*
Select IDORDCMP, IDSUCURSAL, FECHAOC, NROORDCMP,
       NROORDPRV, ENTIDAD, CANTITEMS, TOTALOC,
       FECHAENV, CONDPAGO, ESTADOOC
From ORDCMP
Where IDORDCMP =:IdOrdCmp And
      IDSUCURSAL =:IdSucursal

Select IDORDCMP, IDSUCURSAL, IDITEMOC, ENTIDAD, FECHAOC,
       FECHAREC, IDARTICULO, CANTIDADP, CANTIDADR, PRECION,
       IMPINT, PRECIOTOTAL, PRCBONIF, PRECIOR, ESTADO, DETALLE
From ITEMSOC
Where IDORDCMP =:IdOrdCmp And
     IDSUCURSAL =:IdSucursal
*)

procedure TfrmOrdenCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmOrdenCompra.FormCreate(Sender: TObject);
begin
  ItemsOCPrecioTotal.DisplayFormat := '0.00';
  ItemsOCPrecioN.DisplayFormat := '0.00';
  ItemsOCIdArticulo.ValidChars := CodChars;
end;

procedure TfrmOrdenCompra.FormShow(Sender: TObject);
begin
  gPedidos.GroupFieldName := 'NomEntidad';
  qTotPed.Close;
  qPedidos.Close;
  qRecibidos.Close;
  qOrdComp.Close;
  qItemsOC.Close;

  qPedidos.Open;
  qTotPed.Open;
  gPedidos.ColumnByName('DetProd').FooterValue := 'Total Pedidos';
  gPedidos.ColumnByName('PrecioTotal').FooterValue := Format('%m',[qTotPedTotal.AsCurrency]);

  gRecibidos.GroupFieldName := 'NomEntidad';
  qRecibidos.Open;

  qOrdComp.Open;
  qItemsOC.Open;
end;

procedure TfrmOrdenCompra.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmOrdenCompra.Cargar_OC(I, S: Integer);
begin
  try
    LockWindowUpdate(Handle);
    OrdCom.Params.ParamByName('IdOrdCmp').AsInteger := I;
    OrdCom.Params.ParamByName('IdSucursal').AsInteger := S;
    OrdCom.Open;
    if not OrdCom.IsEmpty then
    begin
      if GetDatosEnt(OrdComENTIDAD.AsInteger, IdBranch, 2, Datos_Ent) then
      begin
        OrdCom.Edit;
        OrdComNomProv.AsString := Datos_Ent.Nombre;
        OrdComNomVjte.AsString := Datos_Ent.Autorizado;
        OrdCom.Post;
      end;
      ItemsOC.First;
      while not ItemsOC.Eof do
      begin
        if GetDatosArt(ItemsOCIDARTICULO.AsInteger, Vacio, Datos_Art) then
        begin
          ItemsOC.Edit;
          ItemsOCDetProd.AsString := Datos_Art.DetProd;
          ItemsOC.Post;
        end;
        ItemsOC.Next;
      end;
      ItemsOC.First;
      gFacOC.ColumnByName('DetProd').FooterValue := 'Total Orden';
      gFacOC.ColumnByName('PrecioTotal').FooterValue := Format('%m',[OrdComTotalOC.Value]);
      pcOrdCpm.ActivePage := tsOrdenes;
    end;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfrmOrdenCompra.Imprimir_OC;
begin
  lblEmpresaOC.Caption := OwnerName;
  rptOrdCompras.Print;
end;

procedure TfrmOrdenCompra.UpdateTotalsFacOC;
var
  TempTotal,
  TempPCompra: Currency;
  PrevRecord: TBookmark;
  TotalItems: Integer;
begin
  PrevRecord := ItemsOC.GetBookmark;
  try
    ItemsOC.DisableControls;
    ItemsOC.First;
    TempTotal := 0;
    TempPCompra := 0;
    TotalItems := 0;
    while not ItemsOC.Eof do
    begin
      TempTotal := TempTotal + ItemsOCPrecioTotal.AsCurrency;
      TempPCompra := TempPCompra + ItemsOCPrecioN.AsCurrency + ItemsOCImpInt.AsCurrency;
      Inc(TotalItems);
      ItemsOC.Next;
    end;
    OrdCom.Edit;
    OrdComTotalOC.AsCurrency := TempTotal;
    OrdComCANTITEMS.AsInteger := TotalItems;
    gFacOC.ColumnByName('DetProd').FooterValue := 'Total Orden';
    gFacOC.ColumnByName('PrecioTotal').FooterValue := Format('%m',[OrdComTotalOC.Value]);
  except
     ItemsOC.EnableControls;
     if PrevRecord <> nil then
     begin
       ItemsOC.GotoBookmark(PrevRecord);
       ItemsOC.FreeBookmark(PrevRecord);
     end;
     Exit;
  end;
  ItemsOC.EnableControls; //if no catch clause do a little cleanup
  if PrevRecord <> nil then
  begin
    ItemsOC.GotoBookmark(PrevRecord);
    ItemsOC.FreeBookmark(PrevRecord);
  end;
  ItemsOC.Edit;
end;

procedure TfrmOrdenCompra.gFacOCUpdateFooter(Sender: TObject);
begin
  gFacOC.ColumnByName('DetProd').FooterValue := 'Total Orden';
  gFacOC.ColumnByName('PrecioTotal').FooterValue := Format('%m',[OrdComTotalOC.AsCurrency]);
end;

procedure TfrmOrdenCompra.Calcular_Precio;
var
  AuxP: Currency;
begin
  AuxP := 0;
  if (ItemsOCCantidadP.AsFloat > 0) and
     (ItemsOCPrecioN.AsCurrency > 0) then
  begin
    if ItemsOCPrcBonif.AsFloat > 0 then
      AuxP := (((ItemsOCPrecioN.AsCurrency -
              ((ItemsOCPrecioN.AsCurrency*ItemsOCPrcBonif.AsFloat)/100))+ItemsOCImpInt.AsCurrency)) * ItemsOCCantidadP.AsFloat
    else
      AuxP := (ItemsOCPrecioN.AsCurrency+ItemsOCImpInt.AsCurrency) * ItemsOCCantidadP.AsFloat;
    ItemsOC.Edit;
    ItemsOCPrecioTotal.AsCurrency := AuxP;
  end;
end;

procedure TfrmOrdenCompra.gFacOCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  FillChar(Elegido, SizeOf(Elegido), NoEncontrado);
  if Shift = [] then
  begin
    case Key of
      VK_RIGHT,
      VK_RETURN,
      VK_TAB    : Atras := False;
      VK_LEFT   : Atras := True;
      VK_F3     : if gFacOC.SelectedField.FieldName = ItemsOCIdArticulo.FieldName then
                    Elegido := Search_Prod(Cero, Tarea);
      VK_F5     : Calculadora(Handle);
      VK_ESCAPE : btnGraOrd.SetFocus; // Terminar Comprobante
      else
        inherited KeyDown(Key, Shift);
    end;
    if Elegido.IdArticulo > NoEncontrado then
    begin
      ItemsOC.Edit;
      ItemsOCIdArticulo.AsInteger := Elegido.IdArticulo;
    end;
  end;
end;

procedure TfrmOrdenCompra.gFacOCKeyPress(Sender: TObject; var Key: Char);
begin
  if (gFacOC.SelectedField.DataType in [ftFloat, ftCurrency])and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

procedure TfrmOrdenCompra.edtProveedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F1: begin
             OrdCom.Edit;
             OrdComEntidad.AsInteger := AltaProveedor;
           end;
    VK_F3: begin
             IdProv := Busca_Pro;
             if IdProv > NoEncontrado then
             begin
               OrdCom.Edit;
               OrdComEntidad.AsInteger := IdProv;
             end;
           end
    else begin
     {$INCLUDE IyC_NextEdit.INC}
    end;
  end;
end;

procedure TfrmOrdenCompra.edtProveedorEnter(Sender: TObject);
begin
  edtProveedor.SelectAll;
end;

procedure TfrmOrdenCompra.gFacOCColExit(Sender: TObject);
begin
  if gFacOC.Columns[gFacOC.SelectedIndex].FieldName = 'IdArticulo' then
  begin
    if (Trim(ItemsOCIdArticulo.AsString) = Vacio) or
       (ItemsOCIdArticulo.IsNull) then
    begin
      Elegido := Search_Prod(Vacio, Tarea);
      if Elegido.IdArticulo > NoEncontrado then
      begin
        ItemsOC.Edit;
        ItemsOCIdArticulo.AsInteger := Elegido.IdArticulo;
      end;
      Abort;
    end;
  end;
end;

procedure TfrmOrdenCompra.edtComprobanteExit(Sender: TObject);
var
  Part1, Part2: Integer;
begin
  try
    Part1 := 0;
    Part2 := 0;
    try
      Part1 := StrToInt(Trim(Copy(edtComprobante.Text,1,Pos('-',edtComprobante.Text)-1)));
    except
      on E: EConvertError do
      begin
        edtComprobante.SetFocus;
        edtComprobante.SelStart := 0;
        edtComprobante.SelLength := 3;
        raise EUsuario.Create('Error en el Pto. de Venta del comprobante');
      end;
    end;

    try
      Part2 := StrToInt(Trim(Copy(edtComprobante.Text,Pos('-',edtComprobante.Text)+1,Length(edtComprobante.Text))));
    except
      on E: EConvertError do
      begin
        edtComprobante.SetFocus;
        edtComprobante.SelStart := 5;
        edtComprobante.SelLength := 8;
        raise EUsuario.Create('Error en el Nº de comprobante');
      end;
    end;
  finally
    OrdComNroOrdCmp.AsString := Format('%.4d-%.8d',[Part1,Part2]);
  end;
end;

procedure TfrmOrdenCompra.edtCondPagoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmOrdenCompra.edtFecEnvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmOrdenCompra.gFacOCColEnter(Sender: TObject);
begin
  if (gFacOC.SelectedField.FieldName = 'DetProd') then
  begin
    if Atras then
      gFacOC.SelectedIndex := gFacOC.SelectedIndex - 1
    else
      gFacOC.SelectedIndex := gFacOC.SelectedIndex + 1;
  end;
end;

procedure TfrmOrdenCompra.edtNroPrvExit(Sender: TObject);
begin
  //
end;

procedure TfrmOrdenCompra.gPedidosUpdateFooter(Sender: TObject);
begin
  gPedidos.ColumnByName('DetProd').FooterValue := 'Total Pedidos';
  gPedidos.ColumnByName('PrecioTotal').FooterValue := Format('%m',[qTotPedTotal.AsCurrency]);
end;

procedure TfrmOrdenCompra.ItemsOCAfterPost(DataSet: TDataSet);
begin
  UpdateTotalsFacOC;
end;

procedure TfrmOrdenCompra.ItemsOCAfterDelete(DataSet: TDataSet);
begin
  UpdateTotalsFacOC;
end;

procedure TfrmOrdenCompra.ItemsOCIdArticuloSetText(Sender: TField; const Text: String);
var
  V, Err: Integer;
  Searched: String;
begin
  if not BuscandoArt then
  begin
    BuscandoArt := True;
    try
      Searched := Text;
      if GetDatosArt(0, Searched, Datos_Art) then
        Sender.AsInteger := Datos_Art.IdArticulo
      else begin
        Val(Searched, V, Err);
        if Err = 0 then
        begin
          if GetDatosArt(V, Vacio, Datos_Art) then
            Sender.AsInteger := Datos_Art.IdArticulo
          else begin
            Elegido := Search_Prod(Searched, Tarea);
            if Elegido.IdArticulo > NoEncontrado then
              Sender.AsInteger := Elegido.IdArticulo
            else
              raise Exception.Create('No se encontró el producto');
          end;
        end
        else begin
          Elegido := Search_Prod(Searched, Tarea);
          if Elegido.IdArticulo > NoEncontrado then
            Sender.AsInteger := Elegido.IdArticulo
          else
            raise Exception.Create('No se encontró el producto');
        end;
      end;
    finally
      BuscandoArt := False;
    end;
  end;
end;

procedure TfrmOrdenCompra.ItemsOCIdArticuloValidate(Sender: TField);
begin
  if GetDatosArt(Sender.AsInteger, Vacio, Datos_Art) then
  begin
    ItemsOCImpInt.AsCurrency := Datos_Art.ImpInt;
    ItemsOCDetProd.AsString := Datos_Art.DetProd;
  end;
end;

procedure TfrmOrdenCompra.ItemsOCNewRecord(DataSet: TDataSet);
begin
  Inc(NewIt);
  ItemsOCIDORDCMP.AsInteger := OrdComIDORDCMP.AsInteger;
  ItemsOCIDSUCURSAL.AsInteger := IdBranch;
  ItemsOCIDITEMOC.AsInteger := NewIt;
  ItemsOCENTIDAD.AsInteger := OrdComENTIDAD.AsInteger;
  ItemsOCFECHAOC.AsDateTime := OrdComFECHAOC.AsDateTime;
  ItemsOCFECHAREC.AsDateTime := OrdComFECHAENV.AsDateTime;
  ItemsOCCantidadP.AsFloat := 1;
  ItemsOCPrcBonif.AsFloat := 0;
  ItemsOCPrecioN.AsCurrency := 0;
  ItemsOCESTADO.AsInteger := 0;
end;

procedure TfrmOrdenCompra.btnNewOrdClick(Sender: TObject);
begin
  BuscandoArt := False;
  OrdCom.Close;
  OrdCom.Params.ParamByName('IdOrdCmp').AsInteger := 0;
  OrdCom.Params.ParamByName('IdSucursal').AsInteger := IdBranch;
  OrdCom.Open;
  OrdCom.Insert;
  edtProveedor.SetFocus;
end;

procedure TfrmOrdenCompra.OrdComENTIDADValidate(Sender: TField);
begin
  if GetDatosEnt(OrdComENTIDAD.AsInteger, IdBranch, 2, Datos_Ent) then
  begin
    OrdComNomProv.AsString := Datos_Ent.Nombre;
    OrdComNomVjte.AsString := Datos_Ent.Autorizado;
  end;
end;

procedure TfrmOrdenCompra.btnDelOrdClick(Sender: TObject);
begin
  OrdComESTADOOC.AsInteger := 2;
  ItemsOC.First;
  while not ItemsOC.Eof do
  begin
    ItemsOC.Edit;
    ItemsOCESTADO.AsInteger := 2;
    ItemsOC.Post;
  end;
  OrdCom.Post;
  try
    if not qOrdenes.Transaction.InTransaction then
      qOrdenes.Transaction.StartTransaction;
    if OrdCom.ApplyUpdates(0) > 0 then
      Abort;
    qOrdenes.Transaction.Commit;
  except
    qOrdenes.Transaction.Rollback;
    raise;
  end;
  qOrdComp.Close;
  qOrdComp.Open;
end;

procedure TfrmOrdenCompra.ItemsOCPrecioNChange(Sender: TField);
begin
  Calcular_Precio;
end;

procedure TfrmOrdenCompra.OrdComNewRecord(DataSet: TDataSet);
begin
  NewIt := 0;
  OrdComIDORDCMP.AsInteger := NUEVO_REGISTRO;
  OrdComIDSUCURSAL.AsInteger:= IdBranch;
  OrdComFechaOC.AsDateTime := Date;
  OrdComNroOrdCmp.AsString := GetNumeroComprobante(IdBranch, '0001', 0, OrdenCompra);
  OrdComESTADOOC.AsInteger := 0;
end;

procedure TfrmOrdenCompra.qItemsCalcFields(DataSet: TDataSet);
begin
  if GetDatosArt(qItemsIDARTICULO.AsInteger, Vacio, Datos_Art) then
    qItemsDetProducto.AsString := Datos_Art.DetProd;
end;

procedure TfrmOrdenCompra.OrdComAfterOpen(DataSet: TDataSet);
begin
  ItemsOC.Open;
  dmGestion.Empresas.Open;
end;

function TfrmOrdenCompra.LastOC(IdSuc: Integer): Integer;
var
  q: TMDOQuery;
begin
  Result := 1;
  try
    q := TMDOQuery.Create(nil);
    q.Database := qOrdenes.Database;
    q.Transaction := qOrdenes.Transaction;
    q.SQL.Add('Select Max(IDORDCMP) as Ultimo ');
    q.SQL.Add('From ORDCMP ');
    q.SQL.Add('Where IdSucursal =:IdSuc ');
    q.ParamByName('IdSuc').AsInteger:= IdSuc;
    q.Open;
    Result := q.FieldByName('Ultimo').AsInteger + 1;
    q.Close;
  finally
    q.Free;
  end;
end;

procedure TfrmOrdenCompra.btnGraOrdClick(Sender: TObject);
var
  q: TMDOQuery;
begin
  if (Application.MessageBox('¿Grabar?', 'Cerrar Orden de Compras', MB_ICONQUESTION + MB_YESNO) = ID_YES) then
  begin
    try
      LockWindowUpdate(Handle);
      try
        if not qOrdenes.Transaction.InTransaction then
          qOrdenes.Transaction.StartTransaction;

        OrdCom.Post;
        if ItemsOC.State in dsEditModes then
          ItemsOC.Post;

        if OrdCom.ApplyUpdates(0) > 0 then
          Abort;

        try
          q := TMDOQuery.Create(nil);
          q.Database := dmGestion.dbGestion;
          q.Transaction := qOrdenes.Transaction;
          q.SQL.Add('UpDate DatosSis ');
          q.SQL.Add('   Set NOrdCompra =:NOC ');
          q.ParamByName('NOC').AsString := Inc_NComp(OrdComNroOrdCmp.AsString);
          q.ExecSQL;
        finally
          q.Free;
        end;
        qOrdenes.Transaction.Commit;
      except
        qOrdenes.Transaction.Rollback;
        raise;
      end;
    finally
      LockWindowUpdate(0);
      qOrdComp.Close;
      qOrdComp.Open;
    end;
  end;
end;

procedure TfrmOrdenCompra.btnClrOrdClick(Sender: TObject);
begin
  OrdCom.Cancel;
  ItemsOC.Cancel;
end;

procedure TfrmOrdenCompra.gOrdenesDblClick(Sender: TObject);
begin
  Cargar_OC(qOrdCompIdOrdCmp.AsInteger, qOrdCompIdSucursal.AsInteger);
end;

procedure TfrmOrdenCompra.gItemsOrdDblClick(Sender: TObject);
begin
  Cargar_OC(qItemsOCIdOrdCmp.AsInteger, qItemsOCIdSucursal.AsInteger);
end;

procedure TfrmOrdenCompra.btnPrnOrdClick(Sender: TObject);
begin
  Imprimir_OC;
end;

procedure TfrmOrdenCompra.OrdComReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ApplicationShowException(E);
end;

procedure TfrmOrdenCompra.ItemsOCReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ApplicationShowException(E);
end;

procedure TfrmOrdenCompra.dspqOrdenesBeforeUpdateRecord(Sender: TObject;
          SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
          var Applied: Boolean);
var
  aux: TField;
begin
  aux := DeltaDS.FieldByName('IdOrdCmp');
  if SourceDS = qOrdenes then
  begin
    if aux.Value < 0 then
    begin
      AuxIdOrd := LastOC(IdBranch);
      DeltaDS.Edit;
      DeltaDS.FieldByName('IdOrdCmp').Value := AuxIdOrd;
      DeltaDS.Post;
    end
  end
  else begin
    DeltaDS.Edit;
    DeltaDS.FieldByName('IdOrdCmp').Value := AuxIdOrd;
    DeltaDS.Post;
  end;
end;

procedure TfrmOrdenCompra.OrdComIDORDCMPGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if OrdComIDORDCMP.AsInteger < 0 then
    Text := 'Alta'
  else
    Text := Sender.AsString;
end;

procedure TfrmOrdenCompra.btnCalculadoraClick(Sender: TObject);
begin
  Calculadora(Handle);
end;

end.
