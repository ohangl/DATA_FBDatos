unit uServerFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, DB, uTools,
  Mask, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook, Wwdbspin, RzButton, MDOQuery,
  MDOCustomDataSet, MDOTable, RzPanel;

type
  TfrmServidorFiscal = class(TForm)
    pnlHeadSF: TRzPanel;
    gServerFiscal: TwwDBGrid;
    tServerF: TTimer;
    gbVuelto: TRzGroupBox;
    lblTotalOp: TLabel;
    lblPagado: TLabel;
    lblVuelto: TLabel;
    lblTotAnt: TLabel;
    lblPagoAnt: TLabel;
    lblVueltoAnt: TLabel;
    bvlVto1: TBevel;
    bvlVto2: TBevel;
    btnCancelarTodo: TRzBitBtn;
    btnSalirSF: TRzBitBtn;

    qFac: TMDOQuery;
    dsqFac: TDataSource;
    qFacIdFactura: TIntegerField;
    qFacIdSucursal: TIntegerField;
    qFacNroFactura: TStringField;
    qFacDiaHora: TDateTimeField;
    qFacCantArtic: TSmallintField;
    qFacNombre: TStringField;
    qFacDescCorta: TStringField;

    dsFacturas: TDataSource;
    qFacVen: TMDODataSet;
    qFacVenIDFACTURA: TIntegerField;
    qFacVenIDSUCURSAL: TIntegerField;
    qFacVenIDPUNTOVENTA: TIntegerField;
    qFacVenTIPOFACTURA: TSmallintField;
    qFacVenSECTOR: TIntegerField;
    qFacVenIDSUBDEP: TIntegerField;
    qFacVenDIAHORA: TDateTimeField;
    qFacVenFECHAF: TDateField;
    qFacVenFECHAI: TDateField;
    qFacVenPUNTOVTA: TSmallintField;
    qFacVenNROFACTURA: TMDOStringField;
    qFacVenIDCOMPREF: TIntegerField;
    qFacVenCOMPREF: TMDOStringField;
    qFacVenCLIENTE: TIntegerField;
    qFacVenTIPOIVA: TSmallintField;
    qFacVenCANTARTIC: TSmallintField;
    qFacVenBONIFICACION: TMDOBCDField;
    qFacVenNETO: TMDOBCDField;
    qFacVenEXENTO: TMDOBCDField;
    qFacVenNOCOMPUTABLES: TMDOBCDField;
    qFacVenIVAALICUOTA1: TMDOBCDField;
    qFacVenTOTAL: TMDOBCDField;
    qFacVenSITUACION: TSmallintField;
    qFacVenCONTADO: TMDOBCDField;
    qFacVenTARJETA: TMDOBCDField;
    qFacVenIDTARJETA: TIntegerField;
    qFacVenCTACTE: TMDOBCDField;
    qFacVenNROCTAS: TIntegerField;
    qFacVenCHEQUE: TMDOBCDField;
    qFacVenTICKETS: TMDOBCDField;
    qFacVenOTROSPAGOS: TMDOBCDField;
    qFacVenEMPLEADO: TIntegerField;
    qFacVenIMPRESA: TSmallintField;
    qFacVenFECHAIS: TDateField;
    qFacVenIDMOTNC: TIntegerField;
    qFacVenUSUARIO: TIntegerField;
    qFacVenNOMCLI: TMDOStringField;
    qFacVenNOMVEN: TMDOStringField;
    qFacVenTIPOIVASTR: TMDOStringField;
    qFacVenTIPOFACSTR: TMDOStringField;
    qFacVenDOCUMENTO: TMDOStringField;
    qFacVenTIPODOC: TSmallintField;
    qFacVenDIRECCION: TMDOStringField;
    qFacVenLOCALIDAD: TMDOStringField;
    qFacVenPROVINCIA: TMDOStringField;
    qFacVenCODPOSTAL: TMDOStringField;
    qFacVenTELEFONOS: TMDOStringField;
    qFacVenTIPODOCSTR: TMDOStringField;

    dsItemsFac: TDataSource;
    qItemsFV: TMDODataSet;
    qItemsFVIDFACTURA: TIntegerField;
    qItemsFVIDSUCURSAL: TIntegerField;
    qItemsFVIDPUNTOVENTA: TIntegerField;
    qItemsFVIDITEM: TSmallintField;
    qItemsFVIDARTICULO: TIntegerField;
    qItemsFVTALLE: TIntegerField;
    qItemsFVIDGRUPO: TIntegerField;
    qItemsFVIDSUBGRUPO: TIntegerField;
    qItemsFVIDSUBDEP: TIntegerField;
    qItemsFVFECHAF: TDateField;
    qItemsFVCANTIDAD: TMDOBCDField;
    qItemsFVNROCTAS: TIntegerField;
    qItemsFVPRCBONIFICACION: TMDOBCDField;
    qItemsFVDESCUENTO: TMDOBCDField;
    qItemsFVPRECIOCOSTO: TMDOBCDField;
    qItemsFVPRECIONETO: TMDOBCDField;
    qItemsFVPRECIOFINAL: TMDOBCDField;
    qItemsFVPRECIOTOTAL: TMDOBCDField;
    qItemsFVVALORLISTA: TMDOBCDField;
    qItemsFVEXENTO: TMDOBCDField;
    qItemsFVIMPINT: TMDOBCDField;
    qItemsFVIVAIN: TMDOBCDField;
    qItemsFVIDALCIVA: TIntegerField;
    qItemsFVALICUOTAIVA: TMDOBCDField;
    qItemsFVIDALCIB: TIntegerField;
    qItemsFVALCIB: TMDOBCDField;
    qItemsFVINGBTO: TMDOBCDField;
    qItemsFVOFERTA: TIntegerField;
    qItemsFVSUBDET: TMDOStringField;
    qItemsFVMARCA: TMDOStringField;
    qItemsFVDETALLE: TMDOStringField;
    qItemsFVSERVICIO: TSmallintField;
    qItemsFVCOLOR: TMDOStringField;
    qItemsFVCODBARRA: TMDOStringField;
    qFacTOTAL: TMDOBCDField;
    qFacVenTIPODOCCLI: TSmallintField;
    pnlFootSF: TRzPanel;
    btnDetener: TRzBitBtn;

    procedure btnSalirSFClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure gServerFiscalDblClick(Sender: TObject);
    procedure tServerFTimer(Sender: TObject);
    procedure btnDetenerClick(Sender: TObject);
    procedure btnCancelarTodoClick(Sender: TObject);
    procedure gServerFiscalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qFacVenAfterClose(DataSet: TDataSet);
    procedure qFacVenAfterOpen(DataSet: TDataSet);
    procedure qFacVenBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Set_Estados;
    function ImprimirFactura_Impresora: Boolean;
    procedure Leer_ComprobantesFiscales(var Factura: TFactura; var Items: TBody_Fiscal);
    procedure Facturar_Servidor;
  public
    { Public declarations }
    IdComprobante_AFacturar, IdSucursal_AFacturar: Integer;
  end;

var
  frmServidorFiscal: TfrmServidorFiscal;
  ImpresoraNF: Boolean;

implementation

uses udmGestion, udmSaveFile, uConfiguracion, uFiscal, uFormasDePago;

{$R *.dfm}

const
   InxMark = 'iFechaIImpresa';

procedure TfrmServidorFiscal.Set_Estados;
begin
  ImpresoraNF := False;
  IF_Modelo := 0;
  with dmGestion do
  begin
    ImprimirEnControlador := (qTerminalesImprimeEnControlador.AsInteger = Verdadero);
    IF_Modelo := qTerminalesTIPOCONTROLADOR.AsInteger;
    tServerF.Interval := qTerminalesTIEMPOFISCAL.AsInteger;
    ImpresoraNF := (qTerminalesMODIMPRESORA.AsInteger > 0);
  end;

  if ImprimirEnControlador then
  begin
    if not Assigned(frmFiscal) then
      frmFiscal := TfrmFiscal.Create(nil);
    Case IF_Modelo of
      4,7  : CualTipoControlador := ControladorSoloTicket;
      2,3,5: CualTipoControlador := ControladorTktFactura;
      6,8  : CualTipoControlador := ControladorTipoFactura;
      9    : CualTipoControlador := ControladorTipoEstacion;
    end;
  end;
  btnDetener.Visible := False;
  gbVuelto.Visible := True;
  lblTotalOp.Caption := '$0.00';
  lblPagado.Caption  := '$0.00';
  lblVuelto.Caption  := '$0.00';
  pnlFootSF.Caption := '0';
  Application.ProcessMessages;
  ComprobanteAbierto := False;
  IdComprobante_AFacturar := 0;
  IdSucursal_AFacturar := 0;
end;

procedure TfrmServidorFiscal.FormCreate(Sender: TObject);
begin
  Set_Estados;
  gServerFiscal.TitleColor := clCream;
  qFac.Close;
end;

procedure TfrmServidorFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qFac.Close;
  if qFacVen.State in dsEditModes then
    qFacVen.Post;
  if qFacVen.Active then
    qFacVen.Close;
  ControladorOK := False;
  Action := caFree;
end;

procedure TfrmServidorFiscal.btnSalirSFClick(Sender: TObject);
begin
  tServerF.Enabled := False;
  Close;
end;

procedure TfrmServidorFiscal.btnCancelarTodoClick(Sender: TObject);
begin
  with frmFiscal do
  begin
    if not ControladorOK then
      InicializarControlador;
    case IF_Modelo of
      1,2,3,8,9: Hasar.TratarDeCancelarTodo;
          4,5,6: if CualTipoControlador = ControladorSoloTicket then
                   Epson.TratarDeCancelarTodoTkt
                 else
                   Epson.TratarDeCancelarTodoTktFac;
    end;
    Finalizar;
  end;
end;

function TfrmServidorFiscal.ImprimirFactura_Impresora: Boolean;
begin
  try
    Result := True;
    Print_Form(Factura, ItemsFiscal);
  except
    Result := False;
  end;
end;

procedure TfrmServidorFiscal.Leer_ComprobantesFiscales(var Factura: TFactura; var Items: TBody_Fiscal);
var
  NumItems: Integer;
begin
  FillChar(Factura, SizeOf(TFactura), 0);
  FillChar(ItemsFiscal, SizeOf(TBody_Fiscal), 0);
  FillChar(DatosPago, SizeOf(DatosPago), 0);
  with Factura do
  begin
    IdFactura := qFacVenIdFactura.AsInteger;
    IdSucursal := qFacVenIdSucursal.AsInteger;
    IdPuntoVenta := qFacVenIdPuntoVenta.AsInteger;
    TipoFactura := qFacVenTipoFactura.AsInteger;
    Situacion := qFacVenSituacion.AsInteger;
    FechaF := qFacVenFechaF.AsDateTime;
    NroFactura := qFacVenNroFactura.AsString;
    CompRef := qFacVenCompRef.AsString;
    IdCompRef := qFacVenIdCompRef.AsInteger;
    Entidad := qFacVenCliente.AsInteger;
    TipoIva := qFacVenTipoIva.AsInteger;
    TipoDoc := qFacVenTipoDoc.AsInteger;
    TipoCompCli := En_Slip;
    NroDocumento := StringReplace(qFacVenDOCUMENTO.AsString, '-', '', [rfReplaceAll]);
    NroDocumento := StringReplace(NroDocumento, '.', '', [rfReplaceAll]);
    NroDocumento := StringReplace(NroDocumento, '/', '', [rfReplaceAll]);
    Direccion := qFacVenDireccion.AsString;
    NombreEnt := qFacVenNOMCLI.AsString;
    CantArtic := qFacVenCantArtic.AsInteger;
    Descuento := qFacVenBonificacion.AsFloat;
    Neto := qFacVenNeto.AsCurrency;
    Exento := qFacVenExento.AsCurrency;
    NoComputables := qFacVenNoComputables.AsCurrency;
    IvaAlicuota1 := qFacVenIvaAlicuota1.AsFloat;
    Total := qFacVenTotal.AsCurrency;
    CantCuotas := qFacVenNroCtas.AsInteger;
    Empleado := qFacVenEmpleado.AsInteger;
    NombreEmpleado := qFacVenNOMVEN.AsString;
  end;

  try
    for NumItems := 1 to Factura.CantArtic do
    begin
      with Items[NumItems] do
      begin
        IdProducto := qItemsFVIdArticulo.AsInteger;
        SubDet := qItemsFVSubDet.AsString;
        CodProd := qItemsFVCODBARRA.AsString;
        Marca := qItemsFVMarca.AsString;
        Detalle := qItemsFVDetalle.AsString;
        Color := qItemsFVColor.AsString;
        DescProd := qItemsFVMarca.AsString+' '+qItemsFVDetalle.AsString+' '+qItemsFVColor.AsString;
        Cantidad := ABS(qItemsFVCantidad.AsFloat);
        Talle := qItemsFVTalle.AsInteger;
        PrecioNetoT := ABS(qItemsFVPrecioNeto.AsCurrency);
        PrecioNetoU := PrecioNetoT/Cantidad;
        PrecioFinal := ABS(qItemsFVPrecioFinal.AsCurrency);
        PrecioTotal := ABS(qItemsFVPrecioTotal.AsCurrency);
        NoComputable := ABS(qItemsFVImpInt.AsCurrency);
        Bonificacion := ABS(qItemsFVPrcBonificacion.AsFloat);
        Descuento  := ABS(qItemsFVDescuento.AsCurrency);
        Exento := ABS(qItemsFVExento.AsFloat);
        AlicuotaIva := qItemsFVAlicuotaIva.AsFloat;
        TIvaEnt := qFacVenTipoIva.AsInteger;
      end;
      qItemsFV.Next;
    end;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;
  DatosPago.TipoComprobante := Factura.TipoFactura;
  if Factura.TipoFactura in [CreA, CreB] then
    DatosPago.TotalPagos := -Factura.Total
  else
    DatosPago.TotalPagos := Factura.Total;
  DatosPago.IdEntidad := Factura.Entidad;
  DatosPago.IdComprobante := Factura.IdFactura;
  DatosPago.IdSucursal := Factura.IdSucursal;
  DatosPago.IdPuntoVenta := Factura.IdPuntoVenta;
  DatosPago.FechaOp := Factura.FechaF;
  DatosPago.NroComprobante := Factura.NroFactura;
  DatosPago.CompReferencia := Factura.CompRef;
  DatosPago.IdCajero := Factura.Empleado;
end;

procedure TfrmServidorFiscal.Facturar_Servidor;
var
  Cobrado: Currency;
  Impresion_Ok: Boolean;

  procedure Mark_Ok;
  begin
    if not qFacVen.Active then
      qFacVen.Open;
    qFacVen.ParamByName('IdFactura').AsInteger  := IdComprobante_AFacturar;
    qFacVen.ParamByName('IdSucursal').AsInteger := IdSucursal_AFacturar;
    try
      if not dmGestion.trProc.InTransaction then
        dmGestion.trProc.StartTransaction;
      qFacVen.Open;
      if not qFacVen.IsEmpty then
      begin
        qFacVen.Edit;
        if Impresion_Ok = True then
        begin
          if qFacVenImpresa.AsInteger = Imprimiendo then
          begin
            qFacVenNroFactura.AsString := Factura.NroFactura;   // Actualiza Nro de Factura Impresa
            qFacVenPuntoVta.AsInteger := Factura.PuntoVta;
            qFacVenImpresa.AsInteger := Impresa;
            DatosPago.NroComprobante := Factura.NroFactura;
            pnlFootSF.Caption := pnlFootSF.Caption + ' Nº Ultimo Comprobante Impreso '+Factura.NroFactura;
            if Contado in DatosPago.PagosRealizados then
              qFacVenContado.AsCurrency := DatosPago.PagosContado;
            if Bonos in DatosPago.PagosRealizados then
              qFacVenContado.AsCurrency := DatosPago.PagosBonosTk;
            if Valores in DatosPago.PagosRealizados then
            begin
              DatosPago.PagosValores.Datos := dmSaveFile.AuxBcoTer;
              dmSaveFile.DoPagoVentaValores(DatosPago);
            end;
            if Tarjeta in DatosPago.PagosRealizados then
            begin
              qFacVenTarjeta.AsCurrency := DatosPago.PagosTarjeta.TotalTarjeta;
              qFacVenNroCtas.AsInteger := DatosPago.CantidadCuotas;
              dmSaveFile.DoPagoTarjeta(DatosPago);
            end;
          end;
        end
        else begin
          qFacVenImpresa.AsInteger := NoImpresa;
          pnlFootSF.Caption := pnlFootSF.Caption + ' Comprobante no impreso '+Factura.NroFactura;
        end;
        qFacVen.Post;
      end;
      dmGestion.trProc.Commit;
    except
      pnlFootSF.Caption := pnlFootSF.Caption + ' No se encontro el Comprobante';
      dmGestion.trProc.Rollback;
      raise
    end;
    Application.ProcessMessages;
  end;

  procedure Manual_Fac;
  var
    A_Imprimir: Boolean;
    i: SmallInt;
  begin
    try
      if (Factura.TipoFactura in [RemitoX, Presupuesto]) and
         (CualTipoControlador >= ControladorTipoFactura) then
      begin
        A_Imprimir := (Application.MessageBox('¿Imprimir Documento No Fiscal Homologado?', 'Documento NFH', MB_ICONQUESTION + MB_YESNO) = IdYes)
      end
      else begin
        FillChar(DatosPago, SizeOf(DatosPago), 0);
        DatosPago.TipoComprobante := Factura.TipoFactura;
        if (Factura.TipoFactura in [CreA, CreB, CreC]) then
          DatosPago.TotalPagos := -qFacVenTotal.AsCurrency
        else
          DatosPago.TotalPagos := qFacVenTotal.AsCurrency;

        DatosPago.IdEntidad := Factura.Entidad;
        DatosPago.IdComprobante := Factura.IdFactura;
        DatosPago.IdSucursal := Factura.IdSucursal;
        DatosPago.IdPuntoVenta := Factura.IdPuntoVenta;
        DatosPago.FechaOp := Factura.FechaF;
        DatosPago.NroComprobante := Factura.NroFactura;
        DatosPago.CompReferencia := Factura.CompRef;
        DatosPago.CantidadCuotas := Factura.CantCuotas;
        DatosPago.IdCompRef := Factura.IdCompRef;
        DatosPago.IdVendedor := Factura.Empleado;
        DatosPago.IdSucursal := Factura.IdSucursal;

        if DoPago_ServidorFiscal(DatosPago) = apPago then
        begin
          with DatosPago do
          begin
            if RestaPagar < 0 then // Si hay resto, le cambio el signo para darlo como vuelto
              RestaPagar := -1 * RestaPagar;
            Cobrado := PagosContado+PagosBonosTk+PagosTarjeta.TotalTarjeta+PagosCtaCte.TotalCtaCte+PagosCheques.TotalValores+RestaPagar;
            lblTotalOp.Caption := Format('%9.2m',[TotalPagos]);
            lblPagado.Caption  := Format('%9.2m',[Cobrado]);
            lblVuelto.Caption  := Format('%9.2m',[RestaPagar]);
            Application.ProcessMessages;
          end;
          A_Imprimir := True;
        end
        else
          A_Imprimir := False;
      end;

      if A_Imprimir then
      begin
        qFacVen.Close;
        qFacVen.ParamByName('IdFactura').AsInteger  := IdComprobante_AFacturar;
        qFacVen.ParamByName('IdSucursal').AsInteger := IdSucursal_AFacturar;
        qFacVen.Open;
        try
          if not dmGestion.trProc.InTransaction then
            dmGestion.trProc.StartTransaction;
          qFacVen.Open;
          if not qFacVen.IsEmpty then
          begin
            qFacVen.Edit;
            qFacVenImpresa.AsInteger := Imprimiendo;
            qFacVen.Post;
          end;
          dmGestion.trProc.Commit;
        except
          pnlFootSF.Caption := pnlFootSF.Caption + ' No se encontro el Comprobante';
          dmGestion.trProc.Rollback;
          raise
        end;

        pnlFootSF.Caption := 'Imprimiendo Comprobante Nº '+Factura.NroFactura+' de '+ Factura.NombreEnt;
        Application.ProcessMessages;

        if ImprimirEnControlador then
        begin
          if not ControladorOK then
            ControladorOk := frmFiscal.InicializarControlador;

          if ControladorOk then
          begin
            if CualTipoControlador >= ControladorTipoEstacion then
            begin
              if (Factura.TipoCompCli = En_Slip) or (Factura.TipoFactura in [CreA, CreB]) then
                ShowMessage(' Colocar Hoja de papel para imprimir Comprobante !!! ');
            end;
            Impresion_Ok := frmFiscal.ImprimirFactura_Servidor(Factura, ItemsFiscal);
          end;

          if Impresion_Ok = True then
          begin
            if (Tarjeta in DatosPago.PagosRealizados) and (dmGestion.qTerminalesNFTarjeta.AsInteger = Verdadero) then
            begin
              if CualTipoControlador = ControladorTipoFactura then
                 frmFiscal.ImprimirCobroTarjeta(DatosPago)     // Si pago con tarjetas imprimo el comprobante
              else begin
                for i := 1 to DatosPago.PagosTarjeta.CantTarjetas do
                begin
                  with DatosPago.PagosTarjeta.Movimientos[i] do
                    frmFiscal.ImprimirVoucher(Factura.NombreEnt, NomTarjeta, 1, NumTarjeta, Vencimiento, 1,
                    CantidadCuotas, CodigoComercio, Factura.PuntoVta, StrToInt(Lote), Cupon, 1, 1, StrToInt(Autorizacion),
                    TotalTarj, MontoCuota, StrToInt(Copy(DatosPago.NroComprobante, 6, 8)), 1);
                end;
              end;
            end;

            (*
            if (((CtaCte in DatosPago.PagosRealizados) or (Pendiente in DatosPago.PagosRealizados)) and
               (dmGestion.qTerminalesNFCtaCte.AsInteger = Verdadero)) or (VaFacturaConRemito) then
            begin
              try
                while Application.MessageBox('¿Imprimir?', 'Remito X', MB_ICONQUESTION + MB_YESNO) = IdYes do
                  if CualTipoControlador >= ControladorTipoFactura then
                  begin
                    ConPrecios := Application.MessageBox('¿Imprimir remito con Precios?', 'Remito X', MB_ICONQUESTION + MB_YESNO) = IdYes;
                    frmFiscal.ImprimirRemitoF(Factura, ItemsFiscal, ConPrecios);
                  end
                  else
                    frmFiscal.ImprimirRemitoNF(Factura, ItemsFiscal);
              except
                on E: Exception do
                  Application.MessageBox(PChar(E.Message), 'Error', MB_ICONERROR);
              end;
            end;
            *)
          end;
        end
        else begin
          while Application.MessageBox(PChar('¿Imprimir Factura Nº ' + qFacVenNroFactura.AsString +' ?'), 'Comprobante', MB_ICONQUESTION + MB_YESNO) = IdYes do
            Impresion_Ok := ImprimirFactura_Impresora;
          (*
          if (VaFacturaConRemito) or ((CtaCte in DatosPago.PagosRealizados) and (dmGestion.qTerminalesNFCtaCte.AsInteger = Verdadero)) then
            while Application.MessageBox('¿Imprimir?', 'Remito X', MB_ICONQUESTION + MB_YESNO) = IdYes do
              Impresion_Ok := ImprimirFactura_Impresora;
          *)
        end;
      end;

    finally
      if A_Imprimir then
        Mark_Ok;
    end;
  end;

begin
  pnlFootSF.Caption := ' ';
  Application.ProcessMessages;
  if not ComprobanteAbierto then
  begin
    try
      ComprobanteAbierto := True;
      Text_PieComprobante := Cero;
      tServerF.Enabled := False;
      Impresion_Ok := False;
      // Cargar Registros
      if (IdComprobante_AFacturar > 0) and (IdSucursal_AFacturar > 0) then
      begin
        qFacVen.Close;
        qFacVen.ParamByName('IdFactura').AsInteger  := IdComprobante_AFacturar;
        qFacVen.ParamByName('IdSucursal').AsInteger := IdSucursal_AFacturar;
        qFacVen.Open;
        if not qFacVen.IsEmpty then
        begin
          Leer_ComprobantesFiscales(Factura, ItemsFiscal);
          Manual_Fac;
        end;
      end;
    finally
      IdComprobante_AFacturar := 0;
      IdSucursal_AFacturar := 0;
      Impresion_Ok := False;
      ComprobanteAbierto := False;
      gServerFiscal.SetFocus;
      tServerF.Enabled := True;
    end;
  end;
end;

procedure TfrmServidorFiscal.gServerFiscalDblClick(Sender: TObject);
begin
  if (tServerF.Enabled) and (not qFac.IsEmpty) then
  begin
    IdComprobante_AFacturar := qFacIdFactura.AsInteger;
    IdSucursal_AFacturar := qFacIdSucursal.AsInteger;
    Facturar_Servidor;
  end;
end;

procedure TfrmServidorFiscal.gServerFiscalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
  begin
    if (tServerF.Enabled) and (not qFac.IsEmpty) then
    begin
      IdComprobante_AFacturar := qFacIdFactura.AsInteger;
      IdSucursal_AFacturar := qFacIdSucursal.AsInteger;
      Facturar_Servidor;
    end;
  end;
end;

///////////////////////////////////////////////////////////////////////////////
///                              TIMER                                       //
///////////////////////////////////////////////////////////////////////////////

procedure TfrmServidorFiscal.tServerFTimer(Sender: TObject);
begin
  try
    pnlFootSF.Caption := ' Buscando comprobantes';
    tServerF.Enabled := False;
    qFac.Close;
    qFac.ParamByName('FechaI').AsDate := Date;
    qFac.Open;
    pnlFootSF.Caption := pnlFootSF.Caption + Format(' %d', [qFac.RecordCount]);
    Application.ProcessMessages;
    gServerFiscal.RefreshDisplay;
  finally
    tServerF.Enabled := True;
  end;
end;

procedure TfrmServidorFiscal.btnDetenerClick(Sender: TObject);
begin
  if btnDetener.Caption = '&Detener' then
  begin
    tServerF.Enabled := False;
    btnDetener.Caption := '&Comenzar';
  end
  else begin
    tServerF.Enabled := True;
    btnDetener.Caption := '&Detener';
  end;
end;

procedure TfrmServidorFiscal.qFacVenAfterClose(DataSet: TDataSet);
begin
  qItemsFV.Close;
end;

procedure TfrmServidorFiscal.qFacVenAfterOpen(DataSet: TDataSet);
begin
  qItemsFV.Open;
end;

procedure TfrmServidorFiscal.qFacVenBeforePost(DataSet: TDataSet);
begin
  qItemsFV.First;
  while not qItemsFV.Eof do
  begin
    qItemsFV.Edit;
    qItemsFVIdSucursal.AsInteger := qFacVenIdSucursal.AsInteger;
    qItemsFVIdPuntoVenta.AsInteger := qFacVenIdPuntoVenta.AsInteger;
    qItemsFVFechaF.AsDateTime := qFacVenFechaF.AsDateTime;
    qItemsFV.Post;
    qItemsFV.Next;
  end;
end;

end.

