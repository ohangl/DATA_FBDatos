unit If_Epson;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, Controls,
  EPSON_Impresora_Fiscal_TLB, StdCtrls, ComObj, uTools;

type
  TFaltaPapel = procedure(Sender: TObject) of object;
  TImpresoraOK = procedure(Sender: TObject) of object;

  EIFEpson = class(Exception);

  TEpson = class(TObject)
  private
    IFEpson : PrinterFiscal;
    FFaltaPapel: TFaltaPapel;
    FImpresoraEstaOK: TImpresoraOK;
    FImpresoraOK, FHuboErrorFiscal: Boolean;
    FRespuesta: array[1..17] of WideString;
    FCompAsoc: array[1..2] of WideString;
    FPuerto: SmallInt;
    FBaudios: Integer;
    Inicializado: Boolean;
    FNombre, FNroDocumento: WideString;
    FTipoDocumento, FResponsabilidadIva,
    FDireccion, FExtraDescripcion: WideString;
    FIva, F_II: Double;
    //-------------
    InvoiceLetter: WideString;
    FCualComprobante: Char;
    FDescripcionesLargas: Boolean;
    FTipo: Integer;
    FNroImpreso: String;
    function GetRespuesta(Index: Integer): WideString;
    procedure SetRespuesta(Index: Integer; Value: WideString);
    function GetInfoRemito(Index: Integer): WideString;
    procedure SetInfoRemito(Index: Integer; Value: WideString);
    procedure SetImpresoraOK(AValue: Boolean);
    procedure ImprimirItemTicket(Descripcion: WideString; Cantidad, Monto, IVA, ImpuestosInternos: Double; ExtraLine1: WideString = ''; ExtraLine2: WideString = ''; ExtraLine3: WideString = '');
    procedure ImprimirPagoTicket(Descripcion: WideString; Monto: Double);
    procedure ImprimirPagoFactura(Descripcion: WideString; Monto: Double);
    procedure ImprimirItemFactura(Descripcion: WideString; Cantidad, Monto, IVA, ImpuestosInternos: Double; ExtraLine1: WideString = ''; ExtraLine2: WideString = ''; ExtraLine3: WideString = '');
  protected
    function PrinterStatus: Boolean;
    procedure Z_Necesario;
  public
    procedure Comenzar(Cual: SmallInt);
    procedure Finalizar;
    function Inicializar(Cual: SmallInt): Boolean;
    procedure SetHeader(Linea: Integer; Descripcion: WideString);
    procedure ReporteZ;
    procedure ReporteX;
    procedure AbrirCajonDeDinero;
    procedure FiscalStatus;
    procedure EstadoContadores;
    procedure ObtenerDatosDeInicializacion;
    function UltimaFactura: Integer;
    function UltimoTicket: Integer;
    procedure TratarDeCancelarTodoTktFac;
    procedure TratarDeCancelarTodoTkt;
    procedure EspecificarNombreDeFantasia(Fantasy1, Fantasy2: WideString);
    function SubTotal: Currency;
    // No fiscales
    procedure DetalleRecibo(Detalle: WideString);
    procedure AbrirComprobanteNoFiscalHomologado;
    procedure ImprimirItemEnremito(Descripcion: WideString; Cantidad: Double);
    procedure AbrirComprobanteNoFiscal;
    procedure ImprimirTextoNoFiscal(Text: WideString);
    procedure CerrarComprobanteNoFiscalHomologado;
    procedure CerrarComprobanteNoFiscal;
    // Documentos Fiscales
    function AbrirTicket: Boolean;
    // Se usa internamente
    procedure DescuentoUltimoItemTicket(Descripcion: WideString; Monto: Double; EnNegativo: Boolean);
    procedure ImprimirTextoFiscal(Texto: WideString);
    // procedure ImprimirPago(Descripcion: WideString; Monto: Double);
    procedure CerrarTicket;
    //-------
    procedure DatosCliente(Nombre, NroDocumento: WideString; TipoDocumento, ResponsabilidadIva: Integer; Direccion: WideString = '');
    function AbrirComprobanteFiscalABC(Tipo: Integer): Boolean;
    procedure DescuentoUltimoItemFactura(Descripcion: WideString; Monto: Double; EnNegativo: Boolean);
    procedure CerrarComprobanteFiscalABC;
    procedure CancelarComprobanteFiscal(Cual: SmallInt);
    procedure AbrirComprobanteFiscal(Tipo: Integer);
    procedure ImprimirItem(Descripcion: WideString; Cantidad, Monto, IVA, ImpuestosInternos: Double; ExtraLine1: WideString = ''; ExtraLine2: WideString = ''; ExtraLine3: WideString = '');
    procedure DescuentoUltimoItem(Descripcion: WideString; Monto: Double; EnNegativo: Boolean);
    procedure ImprimirPago(Descripcion: WideString; Monto: Double);
    procedure CerrarComprobanteFiscal;
    procedure ReporteZPorFechas(Desde, Hasta: TDate);
    procedure DescuentoGral(Texto: String; Valor: Currency);
    procedure PercepcionGral(Texto: String; Valor: Currency);
    // voucher tarjeta de credito
    procedure ImprimirVoucher(NombreCliente, NombreTarjeta: String; Tipo: Integer;
              NumeroDeTarjeta: String; FechaDeVencimiento: TDate; TipoTarjeta: Integer;
              Cuotas: Integer; CodigoDeComercio: String; NumeroDeTerminal: Integer;
              NumeroDeLote, Numero: Integer; TipoIngreso, TipoOperacion: Integer;
              NumeroAutorizacion: Integer; Monto, MontoCta: Currency; NumeroComprobanteAsociado: Integer; Copias: SmallInt);

    property Respuesta[Index: Integer]: WideString read GetRespuesta write SetRespuesta;
    property InformacionRemito[Index: Integer]: WideString read GetInfoRemito write SetInfoRemito;
    property ImpresoraOK: Boolean read FImpresoraOK write SetImpresoraOK;
    property HuboErrorFiscal: Boolean read FHuboErrorFiscal write FHuboErrorFiscal;
    property NroImpreso: String read FNroImpreso;
  published
    property OnFaltaPapel: TFaltaPapel read FFaltaPapel write FFaltaPapel;
    property OnImpresoraOK: TImpresoraOK read FImpresoraEstaOK write FImpresoraEstaOK;
    property Puerto: SmallInt read FPuerto write FPuerto;
    property Baudios: Integer read FBaudios write FBaudios;
    property DescripcionesLargas: Boolean read FDescripcionesLargas write FDescripcionesLargas;
  end;

implementation

uses uDemora;
const
  F_S = $1c;
var
  CmdOK: Boolean;

procedure TEpson.Comenzar(Cual: SmallInt);
begin
  Inicializar(Cual);
end;

procedure TEpson.Finalizar;
begin
end;

function TEpson.PrinterStatus: Boolean;
var
  Error: Integer;
begin
  Result := True;
  ImpresoraOK := True;
  Error := HexToInt(IFEpson.PrinterStatus);
  if ((Error and 0) = 1) then
  begin
    Result := False;
  end;
  if ((Error and 2) = 2) then
  begin
    Result := False;
  end;
  if ((Error and 4) = 4) then
  begin
    Result := False;
  end;
  if ((Error and 8) = 8) then
  begin
    Result := False;
  end;
  if ((Error and 16) = 16) then
  begin
    Result := False;
  end;
  if ((Error and 32) = 32) then
  begin
    ImpresoraOK := False;
    if Assigned(OnFaltaPapel) then
      OnFaltaPapel(Self);
  end;
  if ((Error and 64) = 64) then
  begin
    ImpresoraOK := False;
    if Assigned(OnFaltaPapel) then
      OnFaltaPapel(Self);
  end;
  if ((Error and 128) = 128) then
  begin
//    Result := False;
  end;
  if ((Error and 256) = 256) then
  begin
    Result := False;
  end;
  if ((Error and 512) = 512) then
  begin
    Result := False;
  end;
  if ((Error and 1024) = 1024) then
  begin
    Result := False;
  end;
  if ((Error and 2048) = 2048) then
  begin
    Result := False;
  end;
  if ((Error and 4096) = 4096) then
  begin
    Result := False;
  end;
  if ((Error and 8192) = 8192) then
  begin
    Result := False;
  end;
  if ((Error and 16384) = 16384) then
  begin
    ImpresoraOK := False;
    Result := False;
  end;
  if ((Error and 65536) = 65536) then
  begin
    ImpresoraOK := False;
    Result := False;
  end;
end;

procedure TEpson.Z_Necesario;
var
  Error: Integer;
begin
  Error := HexToInt(IFEpson.FiscalStatus);
  if ((Error and 2048) = 2048) then
  begin
    if ExisteDemora then
      CloseDemora;
    MessageBox(0, PChar('Debido al estado del controlador, es necesario' + #13 + 'realizar un cierre "Z" que se hara a continuación'), 'Z necesario', MB_ICONEXCLAMATION);
    ReporteZ;
  end;
end;

function TEpson.GetRespuesta(Index: Integer): WideString;
begin
  Result := FRespuesta[Index];
end;

procedure TEpson.SetRespuesta(Index: Integer; Value: WideString);
begin
  FRespuesta[Index] := Value;
end;

function TEpson.GetInfoRemito(Index: Integer): WideString;
begin
end;

procedure TEpson.SetInfoRemito(Index: Integer; Value: WideString);
begin
  FCompAsoc[Index] := Value;
end;

procedure TEpson.SetImpresoraOK(AValue: Boolean);
begin
  FImpresoraOK := AValue;
  if Assigned(OnImpresoraOK) then
    OnImpresoraOK(Self);
end;

function TEpson.Inicializar(Cual: SmallInt): Boolean;
var
  StatusType: WideString;
begin
  Result := False;
  try
    if Not Inicializado then
    begin
      IFEpson := CreateComObject(CLASS_PrinterFiscal) as _PrinterFiscal;
      IFEpson.MessagesOn := False;
      IFEpson.PortNumber := FPuerto;
      IFEpson.BaudRate := '9600';
    end;
    Z_Necesario;
    StatusType := 'A';
    if not IFEpson.Status(StatusType) then
      raise EUsuario.Create('Error de comunicación con el Controlador Fiscal.');
    if Cual = 1 then
      TratarDeCancelarTodoTkt
    else
      TratarDeCancelarTodoTktFac;
    Result := True;
  except
    raise
  end;
end;

procedure TEpson.SetHeader(Linea: Integer; Descripcion: WideString);
var
  Action, Number: WideString;
begin
  Action := 'S';
  Number := IntToStr(Linea);
  If (Linea <= 2) and (Descripcion > Cero) then
  begin
    Insert('ó',Descripcion,1);
    IFEpson.SetGetHeaderTrailer(Action, Number, Descripcion);
  end
  else
    IFEpson.SetGetHeaderTrailer(Action, Number, Descripcion);
end;

procedure TEpson.ReporteZ;
var
  Aux1,Aux2: WideString;
begin
  Aux1 := 'Z';
  Aux2 := 'P';
  repeat
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.CloseJournal(Aux1,Aux2);
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
end;

procedure TEpson.ReporteX;
var
  Aux1,Aux2: WideString;
begin
  FCualComprobante := Cero;
  Aux1 := 'X';
  Aux2 := 'P';
  repeat
    FiscalStatus;
    PrinterStatus;

    CmdOK := IFEpson.CloseJournal(Aux1,Aux2);
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
end;

procedure TEpson.AbrirCajonDeDinero;
var
  Number: WideString;
begin
  Number := '1';
  IFEpson.OpenCashDrawer(Number);
end;

procedure TEpson.FiscalStatus;
var
  Error: Integer;
begin
  FHuboErrorFiscal := False;
  Error := HexToInt(IFEpson.FiscalStatus);
  if ((Error and 0) = 1) then
  begin
    FHuboErrorFiscal := True;
  end;
  if ((Error and 2) = 2) then
  begin
    FHuboErrorFiscal := True;
  end;
  if ((Error and 4) = 4) then
  begin
    FHuboErrorFiscal := True;
  end;
  if ((Error and 8) = 8) then
  begin
    FHuboErrorFiscal := True;
  end;
  if ((Error and 16) = 16) then
  begin
    FHuboErrorFiscal := True;
  end;
  if ((Error and 32) = 32) then
  begin
    FHuboErrorFiscal := True;
  end;
  if ((Error and 64) = 64) then
  begin
    FHuboErrorFiscal := True;
  end;
  if ((Error and 128) = 128) then
  begin
    FHuboErrorFiscal := True;
  end;
  if ((Error and 256) = 256) then
  begin
    FHuboErrorFiscal := True;
  end;
  if ((Error and 2048) = 2048) then
  begin
    FHuboErrorFiscal := True;
  end;
  if ((Error and 16384) = 16384) then
  begin
    FHuboErrorFiscal := True;
  end;
  if ((Error and 65536) = 65536) then
  begin
    FHuboErrorFiscal := True;
  end;

  FillChar(FRespuesta, SizeOf(FRespuesta), 0);
  FRespuesta[1] := IFEpson.AnswerField_3;
  FRespuesta[2] := IFEpson.AnswerField_4;
  FRespuesta[3] := IFEpson.AnswerField_5;
  FRespuesta[4] := IFEpson.AnswerField_6;
  FRespuesta[5] := IFEpson.AnswerField_7;
  FRespuesta[6] := IFEpson.AnswerField_8;
  FRespuesta[7] := IFEpson.AnswerField_9;
  FRespuesta[8] := IFEpson.AnswerField_10;
  FRespuesta[9] := IFEpson.AnswerField_11;
  FRespuesta[10] := IFEpson.AnswerField_12;
  FRespuesta[11] := IFEpson.AnswerField_13;
  FRespuesta[12] := IFEpson.AnswerField_14;
  FRespuesta[13] := IFEpson.AnswerField_15;
  FRespuesta[14] := IFEpson.AnswerField_16;
  FRespuesta[15] := IFEpson.AnswerField_17;
  FRespuesta[16] := IFEpson.AnswerField_18;
  FRespuesta[17] := IFEpson.AnswerField_19;
end;

procedure TEpson.EstadoContadores;
var
  StatusType: WideString;
begin
  Z_Necesario;
  StatusType := 'A'; //aqui va A
  if IFEpson.Status(StatusType) then
  begin
    FillChar(FRespuesta, SizeOf(FRespuesta), 0);
    FRespuesta[1]  := IFEpson.AnswerField_3;
    FRespuesta[2]  := IFEpson.AnswerField_4; //Ultimo Ticket/Factura B,C
    FRespuesta[3]  := IFEpson.AnswerField_5;
    FRespuesta[4]  := IFEpson.AnswerField_6; //Ultimo Ticket/Factura A
    FRespuesta[5]  := IFEpson.AnswerField_7;
    FRespuesta[6]  := IFEpson.AnswerField_8; //Ultimo Doc. No Fiscal
    FRespuesta[7]  := IFEpson.AnswerField_9; //Ultimo Doc. No Fiscal No Homologado
    FRespuesta[8]  := IFEpson.AnswerField_10;
    FRespuesta[9]  := IFEpson.AnswerField_11;
    FRespuesta[10] := IFEpson.AnswerField_12;
    FRespuesta[11] := IFEpson.AnswerField_13;
    FRespuesta[12] := IFEpson.AnswerField_14;
    FRespuesta[13] := IFEpson.AnswerField_15;
    FRespuesta[14] := IFEpson.AnswerField_16;
    FRespuesta[15] := IFEpson.AnswerField_17;
    FRespuesta[16] := IFEpson.AnswerField_18;
    FRespuesta[17] := IFEpson.AnswerField_19;
  end
  else begin
    StatusType := 'N';
    if IFEpson.Status(StatusType) then
    begin
      FillChar(FRespuesta, SizeOf(FRespuesta), 0);
      FRespuesta[1]  := IFEpson.AnswerField_3; //Ultimo Ticket/Factura B,C
      FRespuesta[2]  := IFEpson.AnswerField_4;
      FRespuesta[3]  := IFEpson.AnswerField_5;
      FRespuesta[4]  := IFEpson.AnswerField_6; //Ultimo Ticket/Factura A
      FRespuesta[5]  := IFEpson.AnswerField_7;
      FRespuesta[6]  := IFEpson.AnswerField_8; //Ultimo Doc. No Fiscal
      FRespuesta[7]  := IFEpson.AnswerField_9; //Ultimo Doc. No Fiscal No Homologado
      FRespuesta[8]  := IFEpson.AnswerField_10;
      FRespuesta[9]  := IFEpson.AnswerField_11;
      FRespuesta[10] := IFEpson.AnswerField_12;
      FRespuesta[11] := IFEpson.AnswerField_13;
      FRespuesta[12] := IFEpson.AnswerField_14;
      FRespuesta[13] := IFEpson.AnswerField_15;
      FRespuesta[14] := IFEpson.AnswerField_16;
      FRespuesta[15] := IFEpson.AnswerField_17;
      FRespuesta[16] := IFEpson.AnswerField_18;
      FRespuesta[17] := IFEpson.AnswerField_19;
    end
    else
      ShowMessage('Error al consultar el estado');
  end;
end;

procedure TEpson.ObtenerDatosDeInicializacion ;
var
  StatusType: WideString;
begin
  Z_Necesario;
  StatusType := 'C'; //aqui va A
  if IFEpson.Status(StatusType) then
  begin
    FillChar(FRespuesta, SizeOf(FRespuesta), 0);
    FRespuesta[1]  := IFEpson.AnswerField_3;
    FRespuesta[2]  := IFEpson.AnswerField_4; //Ultimo Ticket/Factura B,C
    FRespuesta[3]  := IFEpson.AnswerField_5;
    FRespuesta[4]  := IFEpson.AnswerField_6; //Ultimo Ticket/Factura A
    FRespuesta[5]  := IFEpson.AnswerField_7;
    FRespuesta[6]  := IFEpson.AnswerField_8; //Ultimo Doc. No Fiscal
    FRespuesta[7]  := IFEpson.AnswerField_9; //Ultimo Doc. No Fiscal No Homologado
    FRespuesta[8]  := IFEpson.AnswerField_10;
    FRespuesta[9]  := IFEpson.AnswerField_11;
    FRespuesta[10] := IFEpson.AnswerField_12;
    FRespuesta[11] := IFEpson.AnswerField_13;
    FRespuesta[12] := IFEpson.AnswerField_14;
    FRespuesta[13] := IFEpson.AnswerField_15;
    FRespuesta[14] := IFEpson.AnswerField_16;
    FRespuesta[15] := IFEpson.AnswerField_17;
    FRespuesta[16] := IFEpson.AnswerField_18;
    FRespuesta[17] := IFEpson.AnswerField_19;
  end
  else
    ShowMessage('Error al consultar inicialización');
end;

function TEpson.UltimaFactura;
var
  StatusType: WideString;
begin
  StatusType := 'A';
  if IFEpson.Status(StatusType) then
  begin
    FillChar(FRespuesta, SizeOf(FRespuesta), 0);
    FRespuesta[5] := IFEpson.AnswerField_7; //Ultimo Ticket/Factura A
  end
  else
    ShowMessage('Error al consultar Ultima Factura');
  Result := StrToInt(FRespuesta[5]);
end;

function TEpson.UltimoTicket;
var
  StatusType: WideString;
begin
  StatusType := 'A';
  if IFEpson.Status(StatusType) then
  begin
    FillChar(FRespuesta, SizeOf(FRespuesta), 0);
    FRespuesta[3] := IFEpson.AnswerField_4; //Ultimo Ticket/Factura A
  end
  else
    ShowMessage('Error al consultar Ultimo Ticket');
  Result := StrToInt(Frespuesta[3]);
end;

procedure TEpson.TratarDeCancelarTodoTkt;
var
  StatusType, Respuesta,
  Nada, Factura, TicketFac,
  Amount, PaymentType: WideString;
begin
  Factura := 'F';
  TicketFac := 'T';
  StatusType := 'D';
  Amount := '0';
  PaymentType := 'C';
  Nada := '';
  Respuesta := 'T';
//  repeat
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.SendTicketPayment(Nada, Amount, PaymentType);
    PrinterStatus;
    FiscalStatus;
//  until CmdOK;
end;

procedure TEpson.TratarDeCancelarTodoTktFac;
var
  StatusType, Respuesta,
  Nada, Amount, PaymentType: WideString;
begin
  StatusType := 'D';
  Amount := '0';
  PaymentType := 'C';
  Nada := '';
//  repeat
    FiscalStatus;
    PrinterStatus;
    if (IFEpson.Status(StatusType)) then
    begin
      Respuesta := IFEpson.AnswerField_3;
      if Respuesta = 'T' then
        CmdOK := IFEpson.SendTicketPayment(Nada, Amount, PaymentType);
      if Respuesta = 'F' then
        CmdOK := IFEpson.SendInvoicePayment(Nada, Amount, PaymentType);
      if Respuesta = 'I' then
        CmdOK := IFEpson.SendInvoicePayment(Nada, Amount, PaymentType);
      if Respuesta = 'M' then   //NCred A
        CmdOK := IFEpson.SendInvoicePayment(Nada, Amount, PaymentType);
      if Respuesta = 'S' then   //NCred B
        CmdOK := IFEpson.SendInvoicePayment(Nada, Amount, PaymentType);
      if Respuesta = 'O' then
        CmdOK := IFEpson.CloseNoFiscal;
      if Respuesta = 'H' then
        CmdOK := IFEpson.CloseNoFiscal;
    end;
    PrinterStatus;
    FiscalStatus;
//  until CmdOK;
end;

procedure TEpson.EspecificarNombreDeFantasia(Fantasy1, Fantasy2: WideString);
begin
  SetHeader(1, Fantasy1);
  SetHeader(2, Fantasy2);
end;
// No fiscales

procedure TEpson.DetalleRecibo(Detalle: WideString);
begin
///
end;

procedure TEpson.AbrirComprobanteNoFiscalHomologado;
var
  InvoiceType, PaperType,
  Copies, FormType, FontType, IVA_Seller,
  IVA_Buyer, BuyerName1, BuyerName2,
  BuyerDocumentType, BuyerDocumentNumber,
  FixedAssest, BuyerAddress1, BuyerAddress2,
  BuyerAddress3, Remit1, Remit2, StorageDataType: WideString;
begin
  FCualComprobante := #0;
  InvoiceType := 'M';
  PaperType := 'S';
  if FResponsabilidadIva = 'I' then
    InvoiceLetter := 'A'
  else
    InvoiceLetter := 'B';
  Copies := '1';
  FormType := 'F';
  FontType := '17';
  IVA_Seller := 'I';
  IVA_Buyer := FResponsabilidadIva;
  BuyerName1 := FNombre;
  BuyerName2 := '';
  BuyerDocumentType := FTipoDocumento;
  BuyerDocumentNumber := FNroDocumento;
  FixedAssest := 'N';
  BuyerAddress1 := FDireccion;
  BuyerAddress2 := '';
  BuyerAddress3 := '';
  Remit1 := FCompAsoc[1];
  Remit2 := '';
  StorageDataType := 'C';
  repeat
    Z_Necesario;
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.OpenInvoice(InvoiceType, PaperType, InvoiceLetter, Copies, FormType,
                                 FontType, IVA_Seller, IVA_Buyer, BuyerName1, BuyerName2,
                                 BuyerDocumentType, BuyerDocumentNumber, FixedAssest, BuyerAddress1,
                                 BuyerAddress2, BuyerAddress3, Remit1, Remit2, StorageDataType);
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
  if CmdOK then
    FCualComprobante := 'F';
end;

procedure TEpson.CerrarComprobanteNoFiscalHomologado;
var
  InvoyceType, InvoiceLetter, Text: WideString;
begin
  FCualComprobante := Cero;
  InvoyceType := 'M';
  InvoiceLetter := FCompAsoc[2];
  Text := 't';
  repeat
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.CloseInvoice(InvoyceType, InvoiceLetter, Text);
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
  if CmdOK then
    FCualComprobante := 'F';
end;

procedure TEpson.ImprimirItemEnremito(Descripcion: WideString; Cantidad: Double);
begin
///
end;

procedure TEpson.AbrirComprobanteNoFiscal;
begin
  IFEpson.OpenNoFiscal;
  FCualComprobante := #0;
end;

procedure TEpson.ImprimirTextoNoFiscal(Text: WideString);
begin
  repeat
    FiscalStatus;
    Text := Up_Case(Text);
    PrinterStatus;
    CmdOK := IFEpson.SendNoFiscalText(Text);
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
  Text := '';
end;

procedure TEpson.CerrarComprobanteNoFiscal;
begin
  repeat
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.CloseNoFiscal;
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
end;

// Documentos Fiscales
function TEpson.AbrirTicket: Boolean;
var
  Almacenamiento: WideString;
begin
  Result := False;
  FCualComprobante := #0;
  Almacenamiento := 'G';
  repeat
    Z_Necesario;
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.OpenTicket(Almacenamiento);
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
  if CmdOK then
    FCualComprobante := 'T';
  Result := CmdOK;
end;

procedure TEpson.ImprimirItemTicket(Descripcion: WideString; Cantidad, Monto, IVA, ImpuestosInternos: Double; ExtraLine1: WideString = ''; ExtraLine2: WideString = ''; ExtraLine3: WideString = '');
var
  Quantity, UnitPrice, IvaTax, Qualifier,
  Bundle, PorcentualInternalTaxes, FixesInternalTaxes: WideString;
begin
  if Trim(ExtraLine1) > Cero then
  begin
    repeat
      PrinterStatus;
      CmdOK := IFEpson.SendExtraDescription(ExtraLine1);
      FiscalStatus;
    until ImpresoraOk or CmdOK;
  end;

  if Trim(ExtraLine2) > Cero then
  begin
    repeat
      PrinterStatus;
      CmdOK := IFEpson.SendExtraDescription(ExtraLine2);
      FiscalStatus;
    until ImpresoraOk or CmdOK;
  end;
  Quantity := IntToStr(Round(Cantidad * 1000));
  UnitPrice := IntToStr(Round(Monto * 100));
  FIva := Iva;
  F_II := ImpuestosInternos;
  IvaTax := IntToStr(Round(Iva * 100));
  Qualifier := 'M';
  Bundle := '1';

  PorcentualInternalTaxes := IntToStr(Round(0 * 10000000));;
  FixesInternalTaxes := IntToStr(Round(F_II * 10000000));

  repeat
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.SendTicketItem(Descripcion, Quantity, UnitPrice, IvaTax, Qualifier, Bundle,
                                    PorcentualInternalTaxes, FixesInternalTaxes);
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
  Descripcion := Cero;
  ExtraLine1 := Cero;
  ExtraLine2 := Cero;
  FExtraDescripcion := Cero;
end;

procedure TEpson.DescuentoUltimoItemTicket(Descripcion: WideString; Monto: Double; EnNegativo: Boolean);
var
  Quantity, UnitPrice, IvaTax, Qualifier,
  Bundle, PorcentualInternalTaxes, FixesInternalTaxes: WideString;
begin
  Quantity := IntToStr(Round(1 * 1000));
  UnitPrice := IntToStr(Round(Monto * 100));
  IvaTax := IntToStr(Round(FIva * 100));
  if EnNegativo then
    Qualifier := 'R'
  else
    Qualifier := 'r';
  Bundle := '1';
  PorcentualInternalTaxes := IntToStr(Round(0 * 10000000));;
  FixesInternalTaxes := IntToStr(Round(F_II * 10000000));
  repeat
    FiscalStatus;
    PrinterStatus;
      CmdOK := IFEpson.SendTicketItem(Descripcion, Quantity, UnitPrice, IvaTax, Qualifier, Bundle, PorcentualInternalTaxes, FixesInternalTaxes);
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
  Descripcion := '';
end;

procedure TEpson.ImprimirTextoFiscal(Texto: WideString);
begin
  FExtraDescripcion := Texto;
  if FTipo in [49, 84] then // Ticket
  begin
    repeat
      PrinterStatus;
      CmdOK := IFEpson.SendExtraDescription(Texto);
      FiscalStatus;
    until ImpresoraOk or CmdOK;
  end;
  Texto := '';
end;

procedure TEpson.ImprimirPagoTicket(Descripcion: WideString; Monto: Double);
var
  Amount, PaymentType: WideString;
begin
  Amount := IntToStr(Round(Monto * 100));
  PaymentType := 'T';
  repeat
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.SendTicketPayment(Descripcion, Amount, PaymentType);
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
end;

procedure TEpson.CerrarTicket;
begin
  FCualComprobante := #0;
  repeat
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.CloseTicket;
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
end;

procedure TEpson.DatosCliente(Nombre, NroDocumento: WideString; TipoDocumento, ResponsabilidadIva: Integer; Direccion: WideString = '');
begin
  FNombre := Nombre;
  FNroDocumento := NroDocumento;
  case TipoDocumento of
    1: FTipoDocumento := 'CUIT';
    2: FTipoDocumento := 'LC';
    3: FTipoDocumento := 'LE';
    4: FTipoDocumento := 'DNI';
    5: FTipoDocumento := 'PRTE';
    6: FTipoDocumento := 'CI';
    7: FTipoDocumento := 'NADA';
    else
      raise Exception.Create('IF_Epson: Tipo de documento no definido');
  end;
  case ResponsabilidadIva of
    1: FResponsabilidadIva := 'I';
    2: FResponsabilidadIva := 'R';
    3: FResponsabilidadIva := 'F';
    4: FResponsabilidadIva := 'E';
    5: FResponsabilidadIva := '';
    6: FResponsabilidadIva := 'M';
    7: FResponsabilidadIva := 'X';
    8: FResponsabilidadIva := '';
    9: FResponsabilidadIva := 'N';
  end;
  FDireccion := Direccion;
end;

function TEpson.AbrirComprobanteFiscalABC(Tipo: Integer): Boolean;
var
  InvoiceType, PaperType,
  Copies, FormType, FontType, IVA_Seller,
  IVA_Buyer, BuyerName1, BuyerName2,
  BuyerDocumentType, BuyerDocumentNumber,
  FixedAssest, BuyerAddress1, BuyerAddress2,
  BuyerAddress3, Remit1, Remit2,
  StorageDataType, Text: WideString;
begin
  Result := False;
  FCualComprobante := #0;
  Text := '';
  InvoiceType := 'T';
  PaperType := 'S';
  InvoiceLetter := Chr(Tipo);
  Copies := '1';
  FormType := 'P';
  FontType := '17';
  IVA_Seller := 'I';
  IVA_Buyer := FResponsabilidadIva;
  BuyerName1 := FNombre;
  BuyerName2 := '';
  BuyerDocumentType := FTipoDocumento;
  BuyerDocumentNumber := FNroDocumento;
  FixedAssest := 'N';
  BuyerAddress1 := FDireccion;
  BuyerAddress2 := '';
  BuyerAddress3 := '';
  Remit1 := '';
  Remit2 := '';
  StorageDataType := 'C';
  repeat
    Z_Necesario;
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.OpenInvoice(InvoiceType, PaperType, InvoiceLetter, Copies, FormType,
                                 FontType, IVA_Seller, IVA_Buyer, BuyerName1, BuyerName2,
                                 BuyerDocumentType, BuyerDocumentNumber, FixedAssest, BuyerAddress1,
                                 BuyerAddress2, BuyerAddress3, Remit1, Remit2, StorageDataType);
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
  if CmdOK then
    FCualComprobante := 'F';
  Result := CmdOK;
end;

procedure TEpson.ImprimirPagoFactura(Descripcion: WideString; Monto: Double);
var
  Amount, PaymentType: WideString;
begin
  Amount := IntToStr(Round(Monto * 100));
  PaymentType := 'T';
  repeat
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.SendInvoicePayment(Descripcion, Amount, PaymentType);
    FiscalStatus;
    PrinterStatus;
  until CmdOK;
end;

procedure TEpson.CerrarComprobanteFiscalABC;
var
  InvoyceType, Text: WideString;
begin
  FCualComprobante := Cero;
  InvoyceType := 'T';
  Text := 't';
  repeat
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.CloseInvoice(InvoyceType, InvoiceLetter, Text);
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
end;

procedure TEpson.CerrarComprobanteFiscal;
begin
  case FTipo of
    49,
    84: CerrarTicket;
    65,
    66,
    67: CerrarComprobanteFiscalABC;
  end;
  try
    FNroImpreso := IFEpson.AnswerField_3;
  except
    FNroImpreso := '00000000';
  end;
end;

procedure TEpson.CancelarComprobanteFiscal(Cual: SmallInt);
begin
  If Cual = 1 then
    TratarDeCancelarTodoTkt
  else
    TratarDeCancelarTodoTktFac;
end;

procedure TEpson.ImprimirItemFactura(Descripcion: WideString; Cantidad, Monto, IVA, ImpuestosInternos: Double; ExtraLine1: WideString = ''; ExtraLine2: WideString = ''; ExtraLine3: WideString = '');
var
  Quantity, UnitPrice,
  IvaTax, Qualifier,
  Bundle, PorcentualInternalTaxes,
  FixesInternalTaxes, IncraseTax: WideString;
begin
  Quantity := IntToStr(Round(Cantidad * 1000));
  UnitPrice := IntToStr(Round(Monto * 100));
  FIva := Iva;
  IvaTax := IntToStr(Round(Iva * 100));
  if FResponsabilidadIva = 'R' then
    IncraseTax := IntToStr(Round((FIva/2)*100))
  else
    IncraseTax := '0';
  Qualifier := 'M';
  Bundle := '1';
  F_II := ImpuestosInternos;
  PorcentualInternalTaxes := IntToStr(Round(0 * 100000000));
  FixesInternalTaxes := IntToStr(Round(F_II * 100000000));

  if ExtraLine1 = '' then
    ExtraLine1 := FExtraDescripcion;
  repeat
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.SendInvoiceItem(Descripcion, Quantity, UnitPrice, IvaTax, Qualifier, Bundle,
             PorcentualInternalTaxes, ExtraLine1, ExtraLine2, ExtraLine3, IncraseTax, FixesInternalTaxes);
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
  Descripcion := '';
  FExtraDescripcion := '';
  ExtraLine1 := '';
  ExtraLine2 := '';
  ExtraLine3 := '';
end;

procedure TEpson.DescuentoUltimoItemFactura(Descripcion: WideString; Monto: Double; EnNegativo: Boolean);
var
  Quantity, UnitPrice, IvaTax, Qualifier,
  Bundle, PorcentualInternalTaxes,
  FixesInternalTaxes, IncraseTax: WideString;
  ExtraLine1, ExtraLine2, ExtraLine3: WideString;
begin
  ExtraLine1 := '';
  ExtraLine2 := '';
  ExtraLine3 := '';
  Quantity := IntToStr(Round(1 * 1000));
  UnitPrice := IntToStr(Round(Monto * 100));
  IvaTax := IntToStr(Round(FIva * 100));
  if EnNegativo then
    Qualifier := 'R'
  else
    Qualifier := 'r';
  Bundle := '1';

  PorcentualInternalTaxes := IntToStr(Round(0 * 100000000));
  FixesInternalTaxes := IntToStr(Round(F_II * 100000000));

  if FResponsabilidadIva = 'R' then
    IncraseTax := IntToStr(Round((FIva/2)*100))
  else
    IncraseTax := '0';
  repeat
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.SendInvoiceItem(Descripcion, Quantity, UnitPrice, IvaTax, Qualifier, Bundle, PorcentualInternalTaxes, ExtraLine1, ExtraLine2, ExtraLine3, IncraseTax,  FixesInternalTaxes);
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
  Descripcion := '';
end;

procedure TEpson.AbrirComprobanteFiscal(Tipo: Integer);
begin
  FNroImpreso := '99999999';
  FTipo := Tipo;
  case Tipo of
    49,
    84: AbrirTicket;

    65,
    66,
    67: AbrirComprobanteFiscalABC(Tipo);
  end;
end;


procedure TEpson.ImprimirItem(Descripcion: WideString; Cantidad, Monto, IVA, ImpuestosInternos: Double; ExtraLine1: WideString = ''; ExtraLine2: WideString = ''; ExtraLine3: WideString = '');
begin
  Descripcion := Copy(Descripcion, 1, 20);
  case FCualComprobante of
    'T': ImprimirItemTicket(Descripcion, Cantidad, Monto, IVA, ImpuestosInternos, ExtraLine1, ExtraLine2, ExtraLine3);
    'F',
    'I',
    'M',
    'S': ImprimirItemFactura(Descripcion, Cantidad, Monto, IVA, ImpuestosInternos, ExtraLine1, ExtraLine2, ExtraLine3);
    else
      raise EUsuario.Create('IF_Epson: Tipo de comprobante inválido');
  end;
end;

procedure TEpson.DescuentoUltimoItem(Descripcion: WideString; Monto: Double; EnNegativo: Boolean);
begin
  case FCualComprobante of
    'T': DescuentoUltimoItemTicket(Descripcion, Monto, EnNegativo);
    'F',
    'I',
    'M',
    'S': DescuentoUltimoItemFactura(Descripcion, Monto, EnNegativo);
    else
      raise EUsuario.Create('IF_Epson: Tipo de comprobante inválido');
  end;
end;

procedure TEpson.ImprimirPago(Descripcion: WideString; Monto: Double);
begin
  case FCualComprobante of
    'T': ImprimirPagoTicket(Descripcion, Monto);
    'F',
    'I',
    'M',
    'S': ImprimirPagoFactura(Descripcion, Monto);
    else
      raise EUsuario.Create('IF_Epson: Tipo de comprobante inválido');
  end;
end;

procedure TEpson.ReporteZPorFechas(Desde, Hasta: TDate);
var
  Aux1,Aux2,
  Start, Finish: WideString;
  Anio, Mes, Dia: Word;
begin
  Aux1 := 'F';
  Aux2 := 'T';
  DecodeDate(Desde, Anio, Mes, Dia);
  Start := Format('%.2d%.2d%.2d', [(Anio mod 100), Mes, Dia]);
  DecodeDate(Hasta, Anio, Mes, Dia);
  Finish := Format('%.2d%.2d%.2d', [(Anio mod 100), Mes, Dia]);
  repeat
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.Audit(Aux1, Aux2, Start, Finish);
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
end;

function TEpson.SubTotal: Currency;
var
  NoImprime, SinTexto: WideString;
  Respuesta: String;
begin
  Result := 0;
  NoImprime := 'N';
  SinTexto := '';
  Respuesta := '';
  case FCualComprobante of
    'T': if IfEpson.GetTicketSubtotal(NoImprime, SinTexto) then
           Respuesta := IfEpson.AnswerField_5;
    'F',
    'I',
    'S',
    'M': if IfEpson.GetInvoiceSubtotal(NoImprime, SinTexto) then
           Respuesta := IfEpson.AnswerField_5;
  end;
  try
    Result := StrToCurr(Respuesta)/100;
  except
    Result := 0;
    raise EUsuario.Create('IF_Epson: Error consulta de Subtotal');
  end;
end;

procedure TEpson.DescuentoGral(Texto: String; Valor: Currency);
var
  ETexto, EValor, ETipo: WideString;
begin
  if Valor <> 0 then
  begin
    ETexto := Texto;
    EValor := IntToStr(Round(Valor * 100));
    ETipo := 'D';
    case FCualComprobante of
      'T': IfEpson.SendTicketPayment(ETexto, EValor, ETipo);
      'F',
      'I',
      'M',
      'S': IfEpson.SendInvoicePayment(ETexto, EValor, ETipo);
    end;
  end;
end;

procedure TEpson.PercepcionGral(Texto: String; Valor: Currency);
var
  ETexto, EValor, ETipo, ETax: WideString;
begin
  if Valor <> 0 then
  begin
    ETexto := Texto;
    ETipo := 'O';
    EValor := IntToStr(Round(Valor * 100));;
    ETax := 'T';
    repeat
      FiscalStatus;
      PrinterStatus;
      case FCualComprobante of
        'T': ;
        'F',
        'I',
        'M',
        'S': IfEpson.SendInvoicePerception(ETexto, ETipo, EValor, ETax);
      end;
      PrinterStatus;
      FiscalStatus;
    until CmdOK;
  end;
end;

procedure TEpson.ImprimirVoucher(NombreCliente, NombreTarjeta: String; Tipo: Integer;
                                 NumeroDeTarjeta: String; FechaDeVencimiento: TDate; TipoTarjeta: Integer;
                                 Cuotas: Integer; CodigoDeComercio: String; NumeroDeTerminal: Integer;
                                 NumeroDeLote, Numero: Integer; TipoIngreso, TipoOperacion: Integer;
                                 NumeroAutorizacion: Integer; Monto, MontoCta: Currency; NumeroComprobanteAsociado: Integer;
                                 Copias: SmallInt);
var
  FechaVencimientoStr,
  CardName, CardNumber, UserName,
  CompanyNumber, VoucherNumber, InternalNumber,
  AutorizationCode, OperationType, Amount,
  QuotaAmount, CurrencyType, TerminalNumber,
  LotNumber, ETerminalNumber, BranchNumber,
  OperatorNumber, FiscalDocumentNumber,
  SignPrint, ExplanationPrint, PhonePrint: WideString;
  Anio, Mes, Dia: Word;
begin
  CardName := NombreTarjeta;
  CardNumber := NumeroDeTarjeta;
  if (NombreCliente = '') or (Pos('IMPERSONAL', NombreCliente) > 0) then
    UserName := Chr($7f)
  else
    UserName := Copy(NombreCliente,  1, 20);
  CompanyNumber := CodigoDeComercio;
  VoucherNumber := IntToStr(Numero);
  InternalNumber := Chr($7f);
  AutorizationCode := IntToStr(NumeroAutorizacion);
  OperationType := Chr($7f);
  Amount := IntToStr(Round(Monto * 100));
  QuotaAmount := IntToStr(Cuotas);
  CurrencyType := 'Pesos '; //Chr($7f);
  TerminalNumber := IntToStr(NumeroDeTerminal);
  LotNumber := IntToStr(NumeroDeLote);
  ETerminalNumber := Chr($7f);
  BranchNumber := Chr($7f);
  OperatorNumber := Chr($7f);
  FiscalDocumentNumber := Format('%.8d', [NumeroComprobanteAsociado]);
  SignPrint := 'P';
  ExplanationPrint := 'P';
  PhonePrint := 'P';
  try
    DecodeDate(FechaDeVencimiento, Anio, Mes, Dia);
    FechaVencimientoStr := Format('%.2d%.2d%.2d', [(Anio mod 100), Mes, Dia]);
  except
    FechaVencimientoStr := '000000';
  end;
  repeat
    PrinterStatus;
    CmdOK := IFEpson.DNFHCreditCard(CardName, CardNumber, UserName, FechaVencimientoStr, CompanyNumber,
                                    VoucherNumber, InternalNumber, AutorizationCode, OperationType, Amount,
                                    QuotaAmount, CurrencyType, TerminalNumber, LotNumber, ETerminalNumber, BranchNumber,
                                    OperatorNumber, FiscalDocumentNumber, SignPrint, ExplanationPrint, PhonePrint);
  until ImpresoraOK or CmdOK;
end;

initialization

(*
  FillChar(Comando, SizeOf(Comando), #0);
  Comando: Array [0..9] of WideString;
  Comando[0] := Chr($39);
  Comando[1] := 'X';
  Comando[2] := 'P';

  repeat
    FiscalStatus;
    PrinterStatus;
    CmdOK := IFEpson.SysCommand(Comando[0], Comando[1], Comando[2], Comando[3], Comando[4],
                                Comando[5], Comando[6], Comando[7], Comando[8], Comando[9]);
    PrinterStatus;
    FiscalStatus;
  until CmdOK;
*)
end.
