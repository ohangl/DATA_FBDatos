unit uFormasDePago;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, StdCtrls, uTools, ExtCtrls, ComCtrls, Variants, Mask, wwdbedit,
  RzPanel, RzLabel;

type
  TfrmFormasDePago = class(TForm)
    iFormasdePago: TImageList;
    gbOpcionesPago: TRzGroupBox;
    lbFormasDePago: TListBox;
    pnlTotales: TRzPanel;
    lblTotal: TRzLabel;
    lblResta: TRzLabel;
    lblNroComp: TRzLabel;
    edtTotal: TwwDBEdit;
    edtResta: TwwDBEdit;
    sbPagos: TStatusBar;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbFormasDePagoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lbFormasDePagoDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure lbFormasDePagoMeasureItem(Control: TWinControl; Index: Integer; var Height: Integer);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbFormasDePagoClick(Sender: TObject);
    procedure lbFormasDePagoDblClick(Sender: TObject);
  private
    { Private declarations }
    FPago: Currency;
    FResta: Currency;
    PagoActual: Word;                 // elegir varias formas de pago
    CanMovTarjeta: Word;

    procedure Cobrar;
    procedure SetPago(AValue: Currency);
    procedure SetResta(AValue: Currency);
    procedure PagoCC_Venta;
    procedure PagoCC_Compra;
    procedure Ingreso_Valores;
    procedure Egreso_Valores;
    procedure Emision_Cheque;
    procedure NotaCreditoPorCambio;
  public
    { Public declarations }
    FPagos: TPagos;
    AuxDatosPago: TDatosPagos;
    property Pago: Currency read FPago write SetPago;
    property Resta: Currency read FResta write SetResta;
  end;

  function DoPago(var DatosPago: TDatosPagos; PrintOnLine: Boolean = False): TAccionPago;
  function DoPago_ServidorFiscal(var DatosPago: TDatosPagos): TAccionPago;

var
  frmFormasDePago: TfrmFormasDePago;
  FormaPago: Set of TFormasPago;

implementation

uses uGestTarjetas, uContado, udmGestion, uPagoCh3, uPagoChqTer, DB,
     uPagoChProp, uTarjeta, udmSaveFile, uBonifNC, uClaveMod, uSenas,
     uPagoNCred;

{$R *.DFM}

function DoPago(var DatosPago: TDatosPagos; PrintOnLine: Boolean = False): TAccionPago;
var
  k: TFormasPago;
  Cuantos: SmallInt;
  OriginalSize: Integer;
begin
  Result := apCancelo;
  frmFormasDePago := TfrmFormasDePago.Create(Application);
  with DatosPago do
  begin
    frmFormasDePago.lbFormasDePago.Items.Clear;
    frmFormasDePago.Pago := TotalPagos;
    frmFormasDePago.Resta := frmFormasDePago.Pago;
    FormaPago := [Contado, Bonos, CtaCte, Cheque, Valores, Senas, Tarjeta,
                  Cancelar, Anular, Terminar, Continuar, Bonif, Impuestos, NotaCre];

    Case TipoOperacion of
      Venta: begin
        if ServidorFiscal then
          FormaPago := [Imprimir, Cancelar, Continuar, NotaCre]
        else begin
          if IdEntidad = Impersonal then
            FormaPago := FormaPago - [Cheque, CtaCte, Valores, Senas, Impuestos]
          else begin
            FormaPago := FormaPago - [Cheque, CtaCte, Impuestos];
          end;
          if DatosPago.IdTarjeta = 0 then
            FormaPago := FormaPago - [Tarjeta];
        end;
      end;

      Compra: FormaPago := FormaPago - [Contado, Bonos, Cheque, Valores, Senas, Tarjeta, Anular, Terminar, Continuar, Bonif, Impuestos, NotaCre];
      Gastos: begin
        if DatosPago.Aplicar_RIB then
          FormaPago := FormaPago - [Contado, Bonos, Cheque, Valores, Senas, Tarjeta, Anular, Terminar, Continuar, Bonif, Impuestos, NotaCre]
        else
          FormaPago := FormaPago - [Cheque, Valores, Senas, Tarjeta, Anular, Terminar, Continuar, Bonif, Impuestos, NotaCre];
      end;
      Pagos : FormaPago := FormaPago - [CtaCte, Senas, Tarjeta, Anular, Terminar, Continuar, NotaCre, Impuestos];
      Cobros: FormaPago := FormaPago - [Cheque, Senas, CtaCte, Continuar, Impuestos, NotaCre];
      PA_Cta: FormaPago := FormaPago - [Cheque, Senas, CtaCte, Continuar, Impuestos, NotaCre];
      PreLiq: FormaPago := FormaPago - [Senas, Tarjeta, CtaCte, Anular, Continuar, Impuestos, NotaCre, Bonif];
      Suspen: FormaPago := FormaPago - [Cheque, CtaCte, Senas, Cancelar, Anular, Continuar, Bonif, Impuestos, NotaCre];
    end;

    if PrintOnLine then
      FormaPago := FormaPago - [Cancelar];

    Cuantos := 0;
    for k := Imprimir to NotaCre do
      if k in FormaPago then
      begin
        frmFormasDePago.lbFormasDePago.Items.AddObject(TFPagos[Integer(k)], TObject(Integer(k)));
        Inc(Cuantos);
      end;

    OriginalSize := frmFormasDePago.lbFormasDePago.Height;
    frmFormasDePago.lbFormasDePago.Height := (frmFormasDePago.lbFormasDePago.Canvas.TextHeight('X')*2 + 5) * Cuantos;
    frmFormasDePago.Height := frmFormasDePago.Height - (OriginalSize - frmFormasDePago.lbFormasDePago.Height);
    frmFormasDePago.AuxDatosPago := DatosPago;

    case frmFormasDePago.ShowModal of
      mrCancel: begin
        if (Application.MessageBox('Va ha cerrar el Comprobante sin grabarlo. ¿Cancela el Comprobante?', 'Comprobante', MB_ICONQUESTION + MB_YESNO)=IDYES) then
          Result := apCancelo
        else
          Result := apContinuar;
      end;
      mrAbort : Result := apAnulo;
      mrYes   : Result := apTermino;
      mrIgnore: Result := apContinuar
      else Result := apPago;
    end;
  end;
  try
    try
      DatosPago := frmFormasDePago.AuxDatosPago;
    except
      on E:Exception do
      begin
        raise EUsuario.Create(E.Message);
      end;
    end;
  finally
    FreeAndNil(frmFormasDePago);
  end;
end;

function DoPago_ServidorFiscal(var DatosPago: TDatosPagos): TAccionPago;
var
  k: TFormasPago;
  Cuantos: SmallInt;
  OriginalSize: Integer;
begin
  Result := apCancelo;
  frmFormasDePago := TfrmFormasDePago.Create(Application);
  with DatosPago do
  begin
    frmFormasDePago.lbFormasDePago.Items.Clear;
    frmFormasDePago.Pago := TotalPagos;
    frmFormasDePago.Resta := frmFormasDePago.Pago;
    FormaPago := [Contado, Bonos, CtaCte, Valores, Senas, Tarjeta, Cancelar, Anular, Terminar, NotaCre];
    Case TipoOperacion of
      Venta: begin
        if IdEntidad = Impersonal then
          FormaPago := FormaPago - [CtaCte, Valores, Senas, Cancelar, Anular]
        else
          FormaPago := FormaPago - [CtaCte, Valores, Cancelar, Anular];
      end;
      Cobros: FormaPago := FormaPago - [CtaCte, Senas, Cancelar, Anular, NotaCre];
      Suspen: FormaPago := FormaPago - [Senas, Cancelar, Anular, Terminar, NotaCre];
    end;

    if ControladorOK then
      FormaPago := FormaPago - [Cancelar];
    Cuantos := 0;
    for k := Imprimir to Terminar do
      if k in FormaPago then
      begin
        frmFormasDePago.lbFormasDePago.Items.AddObject(TFPagos[Integer(k)], TObject(Integer(k)));
        Inc(Cuantos);
      end;
    OriginalSize := frmFormasDePago.lbFormasDePago.Height;
    frmFormasDePago.lbFormasDePago.Height := (frmFormasDePago.lbFormasDePago.Canvas.TextHeight('X')*2 + 5) * Cuantos;
    frmFormasDePago.Height := frmFormasDePago.Height - (OriginalSize - frmFormasDePago.lbFormasDePago.Height);
    frmFormasDePago.AuxDatosPago := DatosPago;
    case frmFormasDePago.ShowModal of
      mrCancel: Result := apCancelo;
      mrAbort : Result := apAnulo;
      mrYes   : Result := apTermino;
      mrIgnore: Result := apContinuar
      else Result := apPago;
    end;
  end;
  DatosPago := frmFormasDePago.AuxDatosPago;
end;

procedure TfrmFormasDePago.SetPago(AValue: Currency);
begin
  FPago := Redondeo(AValue, 2);
  edtTotal.Text := FloatTostrF(FPago, ffCurrency, 10 , 2);
end;

procedure TfrmFormasDePago.SetResta(AValue: Currency);
begin
  FResta := Redondeo(AValue, 2);
  edtResta.Text := FloatTostrF(FResta, ffCurrency, 10 , 2);
end;

procedure TfrmFormasDePago.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FPagos.CantPagos := PagoActual - 1;
  //Action := caFree;
end;

procedure TfrmFormasDePago.PagoCC_Venta;
begin
  // Cuenta Corriente Venta
end;

procedure TfrmFormasDePago.PagoCC_Compra;
begin
  if AuxDatosPago.IdEntidad <> 0 then
  begin
    AuxDatosPago.PagosCtaCte.TotalCtaCte := AuxDatosPago.TotalPagos;
    AuxDatosPago.PagosCtaCte.FechaVence  := AuxDatosPago.FechaOp;
    FormaPago := [CtaCte];
    with FPagos.ModoPago[PagoActual] do
    begin
      Pago := AuxDatosPago.TotalPagos;
      Resta := 0;
      NCompPago := 'Cta Cte Nº ' + IntToStr(AuxDatosPago.IdEntidad);
      if Resta < 0 then
        ImportePago := Redondeo(Pago + Resta, 2)
      else
        ImportePago := Redondeo(Pago, 2);
      if Resta < 0 then
        AuxDatosPago.RestaPagar := AuxDatosPago.RestaPagar - Resta;
      AuxDatosPago.PagosRealizados := AuxDatosPago.PagosRealizados + [CtaCte];
    end;
    Inc(PagoActual);
  end
  else
    raise EUsuario.Create('Proveedor no Valido');
end;

procedure TfrmFormasDePago.Ingreso_Valores;
begin
  frmPagoCheque := TfrmPagoCheque.Create(Self);
  frmPagoCheque.Pago := FResta;
  AuxDatosPago.PagosValores.Datos := dmSaveFile.AuxBcoTer;
  if frmPagoCheque.ShowModal = mrOK then
  begin
    Resta := Resta - Redondeo(frmPagoCheque.Pago, 2);
    with FPagos.ModoPago[PagoActual] do
    begin
      NCompPago := 'Valores de 3º';
      FormaPago := Valores;
      if Resta < 0 then
        ImportePago := Redondeo(frmPagoCheque.Pago + Resta, 2)
      else
        ImportePago := Redondeo(frmPagoCheque.Pago, 2);
    end;
    AuxDatosPago.PagosRealizados := AuxDatosPago.PagosRealizados + [Valores];
    AuxDatosPago.PagosValores.TotalValores := FPagos.ModoPago[PagoActual].ImportePago;
    Inc(PagoActual);
    if Resta < 0 then
      AuxDatosPago.RestaPagar := AuxDatosPago.RestaPagar - Resta;
  end;
end;

procedure TfrmFormasDePago.Egreso_Valores;
begin
  frmPagoChqTer := TfrmPagoChqTer.Create(Self);
  frmPagoChqTer.Id_Emp := AuxDatosPago.IdEmpresa;
  frmPagoChqTer.Pago := FResta;
  if frmPagoChqTer.ShowModal = mrOK then
  begin
    FResta := FResta + AuxDatosPago.PagosCheques.TotalValores;
    Resta := Resta - Redondeo(frmPagoChqTer.Pago, 2);
    with FPagos.ModoPago[PagoActual] do
    begin
      NCompPago := 'Valores de 3º';
      FormaPago := Valores;
      if Resta < 0 then
        ImportePago := Redondeo(frmPagoChqTer.Pago + Resta, 2)
      else
        ImportePago := Redondeo(frmPagoChqTer.Pago, 2);
    end;
    AuxDatosPago.PagosRealizados := AuxDatosPago.PagosRealizados + [Valores];
    if Resta < 0 then
    begin
      AuxDatosPago.RestaPagar := AuxDatosPago.RestaPagar - Resta;
      AuxDatosPago.PagosValores.TotalValores := frmPagoChqTer.Pago + Resta;
    end
    else
      AuxDatosPago.PagosValores.TotalValores := frmPagoChqTer.Pago;
    Inc(PagoActual);
  end;
end;

procedure TfrmFormasDePago.Emision_Cheque;
begin
  try
    frmPagoChequeProp := TfrmPagoChequeProp.Create(Self);
    frmPagoChequeProp.Pago := FResta;
    frmPagoChequeProp.Id_Emp := AuxDatosPago.IdEmpresa;
    frmPagoChequeProp.Proveedor := AuxDatosPago.IdEntidad;
    frmPagoChequeProp.NomProve := AuxDatosPago.NomEntidad;
    if frmPagoChequeProp.ShowModal = mrOK then
    begin
      FResta := FResta + AuxDatosPago.PagosCheques.TotalValores;
      Resta := Resta - Redondeo(frmPagoChequeProp.Pago, 2);
      with FPagos.ModoPago[PagoActual] do
      begin
        NCompPago := 'Valores propios';
        FormaPago := Cheque;
        if Resta < 0 then
          ImportePago := Redondeo(frmPagoChequeProp.Pago + Resta, 2)
        else
          ImportePago := Redondeo(frmPagoChequeProp.Pago, 2);
      end;
      AuxDatosPago.PagosRealizados := AuxDatosPago.PagosRealizados + [Cheque];
      if Resta < 0 then
      begin
        AuxDatosPago.RestaPagar := AuxDatosPago.RestaPagar - Resta;
        AuxDatosPago.PagosCheques.TotalValores := frmPagoChequeProp.Pago + Resta;
      end
      else
        AuxDatosPago.PagosCheques.TotalValores := frmPagoChequeProp.Pago;
      Inc(PagoActual);
    end;
    if (dmSaveFile.AuxBcoPro.Active) And
       (not dmSaveFile.AuxBcoPro.IsEmpty) then
    begin
      AuxDatosPago.PagosCheques.Datos := dmSaveFile.AuxBcoPro;
    end;
  except
    on E:Exception do
    begin
      raise EUsuario(E.Message);
    end;
  end;
end;

procedure TfrmFormasDePago.NotaCreditoPorCambio;
var
  Cobrado, Mto_Org, SdoAFvr: Currency;
begin
  Cobrado := 0;
  Mto_Org := 0;
  SdoAFvr := 0;
  frmPagoNCred := TfrmPagoNCred.Create(Self);
  frmPagoNCred.AuxNotaCre.Id_Cliente := AuxDatosPago.IdEntidad;
  frmPagoNCred.Pago := FResta;
  if frmPagoNCred.ShowModal = mrOK then
  begin
    Cobrado := AuxDatosPago.SdoAFavor+AuxDatosPago.PagosSena+AuxDatosPago.PagosContado+
               AuxDatosPago.PagosBonosTk+AuxDatosPago.PagosTarjeta.TotalTarjeta+
               AuxDatosPago.PagosCtaCte.TotalCtaCte+AuxDatosPago.PagosCheques.TotalValores;
    AuxDatosPago.PagosNCred.NroNotaCre := frmPagoNCred.AuxNotaCre.NroNotaCre;
    AuxDatosPago.PagosNCred.FecNotaCre := frmPagoNCred.AuxNotaCre.FecNotaCre;
    AuxDatosPago.PagosNCred.IdFNotaCre := frmPagoNCred.AuxNotaCre.IdFNotaCre;
    AuxDatosPago.PagosNCred.IdSNotaCre := frmPagoNCred.AuxNotaCre.IdSNotaCre;
    AuxDatosPago.PagosNCred.IdPNotaCre := frmPagoNCred.AuxNotaCre.IdPNotaCre;
    AuxDatosPago.PagosNCred.Id_Cliente := frmPagoNCred.AuxNotaCre.Id_Cliente;
    AuxDatosPago.PagosNCred.MtoNotaCre := frmPagoNCred.AuxNotaCre.MtoNotaCre;
    Mto_Org := frmPagoNCred.AuxNotaCre.MtoNotaCre;
    Resta := Resta - Redondeo(frmPagoNCred.Pago, 2);
    with FPagos.ModoPago[PagoActual] do
    begin
      NCompPago := 'Nota de Crédito';
      FormaPago := NotaCre;
      if Resta < 0 then
        ImportePago := Redondeo(frmPagoNCred.Pago + Resta, 2)
      else begin
        ImportePago := Redondeo(frmPagoNCred.Pago, 2);
        SdoAFvr := ABS(Mto_Org);
        // Generar Saldo a Favor para el cliente
        if SdoAFvr > 0 then
        begin
          ShowMessage(Format('Se generó Saldo a Favor del Cliente por:  %m ',[SdoAFvr]));
          AuxDatosPago.PagosRealizados := AuxDatosPago.PagosRealizados + [SdoAFav];
          AuxDatosPago.SdoAFavor := SdoAFvr;
        end
        else begin
          AuxDatosPago.SdoAFavor := 0;
        end;
      end;
    end;
    AuxDatosPago.PagosRealizados := AuxDatosPago.PagosRealizados + [NotaCre];
    if Resta < 0 then
    begin
      AuxDatosPago.RestaPagar := AuxDatosPago.RestaPagar - Resta;
      AuxDatosPago.PagosNCred.MtoNotaCre := frmPagoNCred.Pago + Resta;
    end
    else
      AuxDatosPago.PagosNCred.MtoNotaCre := frmPagoNCred.Pago;
    Inc(PagoActual);
  end;
end;

procedure TfrmFormasDePago.Cobrar;
var
  Desct : Double;
begin
  case TFormasPago(lbFormasDePago.Items.Objects[lbFormasDePago.ItemIndex]) of
    Imprimir: begin
      ModalResult := mrOK;
    end;
    Contado: begin
      frmContado := TfrmContado.Create(Self);
      frmContado.Caption := 'Pago en EFECTIVO';
      frmContado.lblQuePago.Caption := 'PESOS';
      FResta := FResta + AuxDatosPago.PagosContado;
      frmContado.Pago := FResta;

      if frmContado.ShowModal = mrOK then
      begin
        Resta := Resta - Redondeo(frmContado.Pago, 2);
        with FPagos.ModoPago[PagoActual] do
        begin
          NCompPago := 'Efectivo';
          FormaPago := Contado;
          if Resta < 0 then
            ImportePago := Redondeo(frmContado.Pago + Resta, 2)
          else
            ImportePago := Redondeo(frmContado.Pago, 2);
        end;
        AuxDatosPago.PagosRealizados := AuxDatosPago.PagosRealizados + [Contado];
        if Resta < 0 then
        begin
          AuxDatosPago.RestaPagar := AuxDatosPago.RestaPagar - Resta;
          AuxDatosPago.PagosContado := frmContado.Pago + Resta;
        end
        else
          AuxDatosPago.PagosContado := frmContado.Pago;
        Inc(PagoActual);
      end;
    end;
    Tarjeta: begin
      frmPagoTarjeta := TfrmPagoTarjeta.Create(Self);
      frmPagoTarjeta.Pago := FResta;
      frmPagoTarjeta.Cual_Cta := AuxDatosPago.IdEntidad;
      frmPagoTarjeta.NomCliente := AuxDatosPago.NomEntidad;
      frmPagoTarjeta.lblDetCuenta.Caption := AuxDatosPago.NomEntidad;
      frmPagoTarjeta.Coeficiente := AuxDatosPago.Coeficiente;
      frmPagoTarjeta.TNroComp := GetText_Comprobante(AuxDatosPago.TipoComprobante, 2)
                                +' Nº '+ AuxDatosPago.NroComprobante;
      if AuxDatosPago.TipoOperacion in [Venta,  Suspen] then
        frmPagoTarjeta.CantCta := AuxDatosPago.CantidadCuotas
      else
        frmPagoTarjeta.CantCta := 1;
      if frmPagoTarjeta.ShowModal = mrOK then
      begin
        Inc(CanMovTarjeta);
        Resta := Resta - Redondeo(frmPagoTarjeta.Pago, 2);
        with FPagos.ModoPago[PagoActual] do
        begin
          NCompPago := 'Tarjeta';
          FormaPago := Tarjeta;
          if Resta < 0 then
            ImportePago := Redondeo(frmPagoTarjeta.Pago + Resta, 2)
          else
            ImportePago := Redondeo(frmPagoTarjeta.Pago, 2);
        end;
        if Resta < 0 then
          AuxDatosPago.RestaPagar := AuxDatosPago.RestaPagar - Resta;
        AuxDatosPago.PagosTarjeta.CantTarjetas := CanMovTarjeta;
        AuxDatosPago.PagosRealizados := AuxDatosPago.PagosRealizados + [Tarjeta];

        with frmPagoTarjeta do
        begin
          AuxDatosPago.PagosTarjeta.TotalTarjeta := AuxDatosPago.PagosTarjeta.TotalTarjeta + Pago;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].IdTarMut := CualCard;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].IdCliente := Cual_Cta;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].NomCliente := NomCliente;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].TipoEntidad := TipoEntidad;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].NomTarjeta := NombreTarjeta;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].CodigoComercio := CodComercio;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].NumTarjeta := edtNumero.Text;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].Autorizacion := edtAutorizacion.Text;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].CantidadCuotas := CantCta;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].InteresCuota := Coeficiente;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].MontoCuota := ImpCuota;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].TotalTarj := Pago;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].Cupon := edtNroCupon.Text;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].Lote := edtLoteTarjeta.Text;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].Terminal := StrToInt(edtTerminal.Text);
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].Vencimiento := VencCard;
          AuxDatosPago.PagosTarjeta.Movimientos[CanMovTarjeta].Venc_1a_Cta := edtVto1Cta.Date;
        end;
        Inc(PagoActual);
      end;
    end;

    Bonos: begin
      frmContado := TfrmContado.Create(Self);
      frmContado.Caption := 'Pago en Ticket';
      frmContado.lblQuePago.Caption := 'Tickets';

      FResta := FResta + AuxDatosPago.PagosBonosTk;
      frmContado.Pago := FResta;
      if frmContado.ShowModal = mrOK then
      begin
        Resta := Resta - Redondeo(frmContado.Pago, 2);
        with FPagos.ModoPago[PagoActual] do
        begin
          NCompPago := 'Tickets';
          FormaPago := Bonos;
          if Resta < 0 then
            ImportePago := Redondeo(frmContado.Pago + Resta, 2)
          else
            ImportePago := Redondeo(frmContado.Pago, 2);
        end;
        AuxDatosPago.PagosRealizados := AuxDatosPago.PagosRealizados + [Bonos];
        if Resta < 0 then
        begin
          AuxDatosPago.RestaPagar := AuxDatosPago.RestaPagar - Resta;
          AuxDatosPago.PagosBonosTk := frmContado.Pago + Resta;
        end
        else
          AuxDatosPago.PagosBonosTk := frmContado.Pago;
        Inc(PagoActual);
      end;
    end;

    CtaCte: begin
      Case AuxDatosPago.TipoOperacion of
        Venta,
        Suspen: PagoCC_Venta;

        Compra,
        Gastos: begin
          PagoCC_Compra;
          ModalResult := mrOk;
        end;
      end;
    end;

    Cheque: begin
      Case AuxDatosPago.TipoOperacion of
        Compra,
        Gastos,
        Pagos,
        PreLiq: Emision_Cheque;
      end;
    end;

    Valores: begin
      Case AuxDatosPago.TipoOperacion of
        Venta,
        Cobros,
        PA_Cta,
        PreLiq: Ingreso_Valores;

        Compra,
        Pagos,
        Gastos: Egreso_Valores;
      end;
    end;

    Bonif: begin
      Case AuxDatosPago.TipoOperacion of
        Compra,
        Pagos,
        Gastos: begin
          frmBonifNC := TfrmBonifNC.Create(Self);
          frmBonifNC.Prove := AuxDatosPago.IdEntidad;
          FResta := FResta + DatosPago.PagosBonif.TotalBonif;
          frmBonifNC.Pago := FResta;
          if frmBonifNC.ShowModal = mrOk then
          begin
            Resta := Resta - Redondeo(frmBonifNC.Pago, 2);
            with FPagos.ModoPago[PagoActual] do
            begin
              NCompPago := 'Bonif.Proveedor';
              FormaPago := Bonif;
              if Resta < 0 then
                ImportePago := Redondeo(frmBonifNC.Pago + Resta, 2)
              else
                ImportePago := Redondeo(frmBonifNC.Pago, 2);
            end;
            AuxDatosPago.PagosRealizados := AuxDatosPago.PagosRealizados + [Bonif];
            if Resta < 0 then
            begin
              AuxDatosPago.RestaPagar := AuxDatosPago.RestaPagar - Resta;
              AuxDatosPago.PagosBonif.TotalBonif := frmBonifNC.Pago + Resta;
            end
            else
              AuxDatosPago.PagosBonif.TotalBonif := frmBonifNC.Pago;
            Inc(PagoActual);
          end
        end;

        Venta: begin
          frmContado := TfrmContado.Create(Self);
          frmContado.Caption := 'Bonificación';
          frmContado.lblQuePago.Caption := 'Bonificación';
          frmContado.Pago := FResta;
          if frmContado.ShowModal = mrOK then
          begin
            if Redondeo(frmContado.Pago, 2) > 1.00 then
            begin
              if not Check_Seg(Nivel_Dto, 'Bonificación', AutorDto) then
                raise EUsuario.Create('No esta habilitado.')
            end;
            Desct := (Redondeo(frmContado.Pago, 2) * 100) / DatosPago.TotalPagos;
            if Desct > 5 then
              raise EUsuario.Create('El descuento supera el porcentaje permitido.- ');
            Resta := Resta - Redondeo(frmContado.Pago, 2);
            with FPagos.ModoPago[PagoActual] do
            begin
              NCompPago := 'Bonificación';
              FormaPago := Bonif;
              if Resta < 0 then
                ImportePago := Redondeo(frmContado.Pago + Resta, 2)
              else
                ImportePago := Redondeo(frmContado.Pago, 2);
            end;
            AuxDatosPago.PagosRealizados := AuxDatosPago.PagosRealizados + [Bonif];
            if Resta < 0 then
            begin
              AuxDatosPago.RestaPagar := AuxDatosPago.RestaPagar - Resta;
              AuxDatosPago.PagosDcto := frmContado.Pago + Resta;
            end
            else
              AuxDatosPago.PagosDcto := frmContado.Pago;
            Inc(PagoActual);
          end;
        end;

        Cobros: begin
          frmContado := TfrmContado.Create(Self);
          frmContado.Caption := 'Bonificación Crédito';
          frmContado.lblQuePago.Caption := 'Bonificación';
          frmContado.Pago := FResta;
          if frmContado.ShowModal = mrOK then
          begin
            if Redondeo(frmContado.Pago, 2) > 1.00 then
            begin
              if not Check_Seg(Nivel_Dto, 'Bonificación', AutorDto) then
                raise EUsuario.Create('No esta habilitado.')
            end;
            Desct := (Redondeo(frmContado.Pago, 2) * 100) / DatosPago.TotalPagos;
            if Desct > 15.00 then
              raise EUsuario.Create('El descuento supera el porcentaje permitido.- ');
            Resta := Resta - Redondeo(frmContado.Pago, 2);
            with FPagos.ModoPago[PagoActual] do
            begin
              NCompPago := 'Bonificación';
              FormaPago := Bonif;
              if Resta < 0 then
                ImportePago := Redondeo(frmContado.Pago + Resta, 2)
              else
                ImportePago := Redondeo(frmContado.Pago, 2);
            end;
            AuxDatosPago.PagosRealizados := AuxDatosPago.PagosRealizados + [Bonif];
            if Resta < 0 then
            begin
              AuxDatosPago.RestaPagar := AuxDatosPago.RestaPagar - Resta;
              AuxDatosPago.PagosDcto := frmContado.Pago + Resta;
            end
            else
              AuxDatosPago.PagosDcto := frmContado.Pago;
            Inc(PagoActual);
          end;
        end;
      end;
    end;

    Senas: begin
      if AuxDatosPago.TipoOperacion in [Venta, Cobros] then
      begin
        if Cobrar_Sena(AuxDatosPago.PagosSena,
                       AuxDatosPago.SdoAFavor, AuxDatosPago.IdEntidad) then
        begin
          with FPagos.ModoPago[PagoActual] do
          begin
            NCompPago := 'Seña/SaF';
            FormaPago := Senas;
            if Resta < 0 then
              ImportePago := Redondeo(AuxDatosPago.PagosSena + AuxDatosPago.SdoAFavor + Resta, 2)
            else
              ImportePago := Redondeo(AuxDatosPago.PagosSena + AuxDatosPago.SdoAFavor, 2);
            AuxDatosPago.PagosRealizados := AuxDatosPago.PagosRealizados + [Senas];
          end;
          Resta := Resta - Redondeo((AuxDatosPago.PagosSena+AuxDatosPago.SdoAFavor) , 2);
          Inc(PagoActual);
        end;
      end;
    end;

    NotaCre: begin
      NotaCreditoPorCambio;
    end;

    Cancelar:ModalResult := mrCancel;
    Anular:  ModalResult := mrAbort;
    Terminar: begin
      AuxDatosPago.RestaPagar := FResta;
      ModalResult := mrYes;
    end;
    Continuar: ModalResult := mrIgnore;
  end;

  if AuxDatosPago.TipoOperacion in [Compra, Gastos, Pagos, PreLiq] then
  begin
    if (not (ModalResult in [mrCancel, mrAbort, mrIgnore])) and
       (FResta = 0) then
      ModalResult := mrOK
  end
  else begin
    if (not (ModalResult in [mrCancel, mrAbort, mrIgnore])) and
       (FResta <= 0) then
      ModalResult := mrOK;
  end;
end;

procedure TfrmFormasDePago.lbFormasDePagoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_UP:     if lbFormasDePago.ItemIndex = 0 then
               begin
                 lbFormasDePago.ItemIndex := lbFormasDePago.Items.Count - 1;
                 Key := 0;
               end;
    VK_DOWN:   if lbFormasDePago.ItemIndex = lbFormasDePago.Items.Count - 1 then
               begin
                 lbFormasDePago.ItemIndex := 0;
                 Key := 0;
               end;
    VK_RETURN: Cobrar;
    VK_ESCAPE: ModalResult := mrCancel;
  end;
end;

procedure TfrmFormasDePago.lbFormasDePagoDblClick(Sender: TObject);
begin
  Cobrar;
end;

procedure TfrmFormasDePago.lbFormasDePagoDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  pCanvas: TCanvas;
  Bmp1, Bmp2: TBitmap;
  ImgRect, DrawRect, xr: TRect;
  DifAltura, LargoTexto,
  LargoCompon, PosTexto: Integer;
begin
  pCanvas := TListBox(Control).Canvas;
  Bmp1 := TBitmap.Create;
  iFormasdePago.GetBitmap(0, bmp1);
  Bmp2 := TBitmap.Create;
  iFormasdePago.GetBitmap(1, bmp2);
  xr := Rect;

  if (odSelected in State) then
  begin
    pCanvas.Brush.Color := clInfoBk;
    iFormasdePago.BkColor := pCanvas.Brush.Color;
  end;
  pCanvas.FillRect(Rect);
  pCanvas.Pen.Mode := pmCopy;
  pCanvas.Pen.Width := 1;
  pCanvas.Pen.Style := psSolid;
  if (odSelected in State) then
  begin
    Frame3D(pCanvas, Rect, clBtnHighlight, clBtnShadow, 1);
    Inc(Rect.Left);
    Inc(Rect.Top);
    Dec(Rect.Right);
    Dec(Rect.Bottom);
    Frame3D(pCanvas, Rect, clBtnShadow, clBtnHighlight, 1);
    ImgRect := bmp1.Canvas.ClipRect;
    DrawRect := Rect;
    DrawRect.Right := ImgRect.Right;
    DifAltura := Round(((DrawRect.Bottom - DrawRect.Top)-(ImgRect.Bottom - ImgRect.Top))/2);
    DrawRect.Top := Rect.Top + DifAltura;
    DrawRect.Bottom := DrawRect.Bottom - DifAltura;
    pCanvas.BrushCopy(DrawRect, bmp1, ImgRect, clRed);
    DrawRect.Right := Rect.Right;
    DrawRect.Left := Rect.Right - (ImgRect.Right - ImgRect.Left);
    pCanvas.BrushCopy(DrawRect, bmp2, ImgRect, clRed);
  end;
  LargoTexto := pCanvas.TextWidth(TListBox(Control).Items.Strings[Index]);
  LargoCompon := Rect.Right - Rect.Left;
  PosTexto := Round((LargoCompon - LargoTexto)/2);

  if (odSelected in State) or (odFocused in State) then
  begin
    pCanvas.Font.Color := clBlue;
    pCanvas.Font.Size := 11;
  end;
  SetBkMode(pCanvas.Handle, TRANSPARENT);
  pCanvas.TextOut(PosTexto, Rect.Top + 3, TListBox(Control).Items.Strings[Index]);
  bmp1.Free;
  bmp2.Free;
  if (odSelected in State) or (odFocused in State) then
    pCanvas.DrawFocusRect(xr);
end;

procedure TfrmFormasDePago.lbFormasDePagoMeasureItem(Control: TWinControl; Index: Integer; var Height: Integer);
var
  bitmap: TBitmap;
  alist: TListBox;
begin
  try
    alist := TListBox(Control);
    bitmap := TBitmap(alist.Items.Objects[Index]);
    if (bitmap = nil) then
    begin
      if (16{loadedHt} >= Height) then
        Height := 16{loadedHt} + (10 * 2);
    end
    else begin
      if (bitmap.Height >= Height) then
        Height := bitmap.Height + (10 * 2);
    end;
  finally
    bitmap.Free;
  end;
end;

procedure TfrmFormasDePago.FormPaint(Sender: TObject);
begin
  iFormasdePago.BkColor := Color;
end;

procedure TfrmFormasDePago.FormShow(Sender: TObject);
begin
  lbFormasDePago.ItemIndex := 0;
  lbFormasDePago.SetFocus;
  lblNroComp.Caption := AuxDatosPago.NroComprobante;
end;

procedure TfrmFormasDePago.FormCreate(Sender: TObject);
begin
  FillChar(FPagos, SizeOf(FPagos), 0);
  PagoActual := 1;
  CanMovTarjeta := 0;
  with dmSaveFile do
  begin
    if AuxBcoPro.Active then //Salida de Cheques
      AuxBcoPro.EmptyDataSet
    else
      AuxBcoPro.CreateDataSet;
    if AuxBcoTer.Active then //  Ingreso Chq3
      AuxBcoTer.EmptyDataSet
    else
      AuxBcoTer.CreateDataSet;
    if SalChq3.Active then //Salida Ch3
      SalChq3.EmptyDataSet
    else
      SalChq3.CreateDataSet;
  end;
end;

procedure TfrmFormasDePago.lbFormasDePagoClick(Sender: TObject);
begin
  case TFormasPago(lbFormasDePago.Items.Objects[lbFormasDePago.ItemIndex]) of
    Imprimir: sbPagos.SimpleText := 'Enviar a servidor';
    Contado : sbPagos.SimpleText := 'Contado efectivo';
    Tarjeta : sbPagos.SimpleText := 'Tarjeta de Crédito, Debito o Mutual';
    Bonos   : sbPagos.SimpleText := 'Bonos o Tickets';
    CtaCte  : sbPagos.SimpleText := 'Cuenta Corriente';
    Cheque  : sbPagos.SimpleText := 'Cheques Propios';
    Valores : sbPagos.SimpleText := 'Cheques de Terceros';
    Cancelar: sbPagos.SimpleText := 'Cancelar el comprobante sin Grabar';
    Terminar: sbPagos.SimpleText := 'Tratar de cerrar el comprobante';
    Anular  : sbPagos.SimpleText := 'Grabar comprobante Cancelado';
    Continuar:sbPagos.SimpleText := 'Continuar comprobante';
    NotaCre : sbPagos.SimpleText := 'Nota de Crédito por cambio';
    else sbPagos.SimpleText := OwnerName;
  end;
  Application.ProcessMessages;
end;

end.
