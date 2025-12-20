unit uTarjeta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Db, uTools, Buttons, wwdblook, wwdbedit, Wwdotdot, Wwdbcomb,
  Variants, wwdbdatetimepicker, Math, RzButton, DateUtils, MDOQuery,
  MDOCustomDataSet, MDOTable, ExtCtrls, RzPanel, RzCmboBx, RzLstBox;

type
  TfrmPagoTarjeta = class(TForm)
    pnlBtnCard: TRzPanel;

    dsqCardsMut: TDataSource;
    qCardMut: TMDOQuery;
    qCardMutIDTARJETA: TIntegerField;
    qCardMutTARJETA: TMDOStringField;
    qCardMutTELAUTORIZACION: TMDOStringField;
    qCardMutCODCOMERCIO: TMDOStringField;
    qCardMutCODENTIDAD: TMDOStringField;
    qCardMutLIMITE: TMDOBCDField;
    qCardMutTIPOENT: TSmallintField;
    qCardMutDIAPRESENTACION: TSmallintField;

    gbTarjetas: TRzGroupBox;
    lblNumTarOrd: TLabel;
    lblImporte: TLabel;
    lblCantCtas: TLabel;
    lblNumCtas: TLabel;
    lblCodAut: TLabel;
    lblLote: TLabel;
    lblCupon: TLabel;
    lblVenc: TLabel;
    lblVto1Cta: TLabel;
    edtNumero: TwwDBEdit;
    edtCuotas: TwwDBEdit;
    edtAutorizacion: TwwDBEdit;
    edtLoteTarjeta: TwwDBEdit;
    btnAceptarTarjeta: TRzBitBtn;
    btnCancelarTarjeta: TRzBitBtn;
    edtNroCupon: TwwDBEdit;
    edtImpCuota: TwwDBEdit;
    edtPago: TwwDBEdit;
    edtVenc: TwwDBDateTimePicker;
    edtVto1Cta: TwwDBDateTimePicker;
    lblTarMut: TLabel;
    lbTarjetas: TRzListBox;
    lblNroComp: TLabel;
    lblNCuenta: TLabel;
    lblDetCuenta: TLabel;
    edtNCuenta: TwwDBEdit;
    lblTerminal: TLabel;
    edtTerminal: TwwDBEdit;

    procedure FormCreate(Sender: TObject);
    procedure edtPagoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPagoEnter(Sender: TObject);
    procedure edtNumeroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtImpCuotaKeyPress(Sender: TObject; var Key: Char);
    procedure edtCuotasExit(Sender: TObject);
    procedure edtVencExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtImpCuotaExit(Sender: TObject);
    procedure edtPagoExit(Sender: TObject);
    procedure edtImpCuotaEnter(Sender: TObject);
    procedure lbTarjetasExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNCuentaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtNCuentaEnter(Sender: TObject);
    procedure edtNCuentaExit(Sender: TObject);
    procedure edtTerminalExit(Sender: TObject);
  private
    { Private declarations }
    FPago: Currency;
    FCantCta: Integer;
    procedure SetPago(AValue: Currency);
    procedure SetCantCta(AValue: Integer);
  public
    { Public declarations }
    Cual_Cta,
    CualCard: Integer;
    NomCliente, NombreTarjeta, CodComercio: St20;
    TNroComp: St30;
    Coeficiente, ImpCuota, TotalOp: Currency;
    TipoEntidad: SmallInt;
    VencCard: TDate;
    property Pago: Currency read FPago write SetPago;
    property CantCta: Integer read FCantCta write SetCantCta;
  end;

var
  frmPagoTarjeta: TfrmPagoTarjeta;

implementation

uses udmGestion, uEntidades;

{$R *.DFM}

procedure TfrmPagoTarjeta.SetPago(AValue: Currency);
begin
  FPago := AValue;
  edtPago.Text := Format('%9.2f',[FPago]);
  edtCuotas.Text := Format('%d',[CantCta]);
  try
    if CantCta > 0 then
      edtImpCuota.Text := Format('%9.2f',[RoundTo(FPago/CantCta, -2)])
    else
      edtImpCuota.Text := Format('%9.2f',[FPago])
  except
    edtImpCuota.Text := Format('%9.2f',[FPago])
  end;
end;

procedure TfrmPagoTarjeta.SetCantCta(AValue: Integer);
begin
  FCantCta := AValue;
  edtCuotas.Text := IntToStr(FCantCta);
  if CantCta > 0 then
    edtImpCuota.Text := Format('%9.2f',[RoundTo(Pago/FCantCta, -2)])
  else
    edtImpCuota.Text := Format('%9.2f',[RoundTo(Pago, -2)])
end;

procedure TfrmPagoTarjeta.FormCreate(Sender: TObject);
begin
  qCardMut.Open;
  pnlBtnCard.Caption := OwnerName;
  lblNroComp.Caption := '0000-00000000';
  qCardMut.First;
  lbTarjetas.Items.Clear;
  while not qCardMut.Eof do
  begin
    lbTarjetas.Items.AddObject(qCardMutTARJETA.AsString, TObject(qCardMutIDTARJETA.AsInteger));
    qCardMut.Next;
  end;
end;

procedure TfrmPagoTarjeta.edtPagoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmPagoTarjeta.edtTerminalExit(Sender: TObject);
var
  n: Integer;
begin
  if Trim(edtTerminal.Text) > Vacio then
  begin
    try
      n := StrToInt(edtTerminal.Text);
    except
      edtTerminal.Text := IntToStr(IdSalesPoint);
      n := 0;
      edtTerminal.SetFocus;
      raise EUsuario.Create('No es un número valido');
    end;
  end
  else begin
    edtTerminal.Text := IntToStr(IdSalesPoint);
    edtTerminal.SetFocus;
    raise EUsuario.Create('Debé consignar Id Terminal del Posnet o Punto de Venta del Sistema');
  end;
end;

procedure TfrmPagoTarjeta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPagoTarjeta.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Pago := 0;
    ModalResult := mrCancel;
  end;
end;

procedure TfrmPagoTarjeta.FormShow(Sender: TObject);
begin
  lblNroComp.Caption := TNroComp;
  try
    edtNCuenta.Text := IntToStr(Cual_Cta);
  except
    edtNCuenta.Text := '0';
  end;
  Application.ProcessMessages;
end;

procedure TfrmPagoTarjeta.edtPagoEnter(Sender: TObject);
begin
  edtPago.SelectAll;
end;

procedure TfrmPagoTarjeta.edtNCuentaEnter(Sender: TObject);
begin
  edtNCuenta.SelectAll;
end;

procedure TfrmPagoTarjeta.edtNCuentaExit(Sender: TObject);
begin
  try
    Cual_Cta := StrToInt(edtNCuenta.Text);
  except
    Cual_Cta := 0;
  end;
end;

procedure TfrmPagoTarjeta.edtNCuentaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F1: begin
      Cual_Cta := AltaCliente(1);
      if Cual_Cta <> NoEncontrado then
      begin
        if GetDatosEnt(Cual_Cta, IdBranch, 1, Datos_Ent) then
        begin
          lblDetCuenta.Caption := Datos_Ent.Nombre;
          try
            edtNCuenta.Text := IntToStr(Cual_Cta);
          except
            edtNCuenta.Text := '0';
          end;
        end;
      end;
    end;

    VK_F3: begin
      if Busca_Cli(Cual_Cta, IdBranch) then
      begin
        if GetDatosEnt(Cual_Cta, IdBranch, 1, Datos_Ent) then
        begin
          lblDetCuenta.Caption := Datos_Ent.Nombre;
          try
            edtNCuenta.Text := IntToStr(Cual_Cta);
          except
            edtNCuenta.Text := '0';
          end;
        end;
      end;
    end;

    VK_F5: Calculadora(Handle);
    VK_ESCAPE: btnCancelarTarjeta.SetFocus;
    else {$INCLUDE IyC_NextEdit.Inc}
  end;
end;

procedure TfrmPagoTarjeta.edtNumeroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmPagoTarjeta.edtImpCuotaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmPagoTarjeta.lbTarjetasExit(Sender: TObject);
var
  DiaP: Integer;
begin
  DiaP := 0;
  try
    CualCard := Integer(lbTarjetas.Items.Objects[lbTarjetas.ItemIndex]);
  except
    CualCard := 0;
    lbTarjetas.SetFocus;
    raise EUsuario.Create('Tarjeta mal Ingresada');
  end;
  if qCardMut.Locate(qCardMutIdTarjeta.FieldName, CualCard, []) then
  begin
    NombreTarjeta := qCardMutTarjeta.AsString;
    TipoEntidad := qCardMutTIPOENT.AsInteger;
    CodComercio := qCardMutCodComercio.AsString;
    DiaP := qCardMutDIAPRESENTACION.AsInteger;
    pnlBtnCard.Caption := Format('Cod %d Tel: %s  Nº Comercio: %s Límite: %m ',
                                  [CualCard, qCardMutTelAutorizacion.AsString,
                                   qCardMutCodComercio.AsString,
                                   qCardMutLimite.AsCurrency]);
  end;

  if DiaP = 0 then
    DiaP := DayOf(Date);
  if TipoEntidad = 3 then
  begin
    lblVto1Cta.Enabled := True;
    edtVto1Cta.Enabled := True;
    if DayOf(Date) < 29 then
      edtVto1Cta.Date := IncMonth(EncodeDate(CurrentYear, MonthOf(Date), DiaP))
    else
      edtVto1Cta.Date := IncMonth(EncodeDate(CurrentYear, MonthOf(Date), DiaP), 1);
  end
  else begin
    edtVto1Cta.Date := IncMonth(EncodeDate(CurrentYear, MonthOf(Date), DiaP));
    if TipoEntidad = 4 then
    begin
      lblVto1Cta.Enabled := True;
      edtVto1Cta.Enabled := True;
    end
    else begin
      lblVto1Cta.Enabled := False;
      edtVto1Cta.Enabled := False;
    end;
  end;
end;

procedure TfrmPagoTarjeta.edtCuotasExit(Sender: TObject);
var
  q: TMDOQuery;
begin
  Coeficiente := 0.00;
  try
    CantCta := StrToInt(edtCuotas.Text);
  except
    CantCta := 0;
  end;

  if CantCta > 0 then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.trProc;
      q.SQL.Add('Select CoefPlan ');
      q.SQL.Add('From TARPLAN ');
      q.SQL.Add('Where (IDTARJETA =:T) and ');
      q.SQL.Add('      (NROCUOTA =:N) and ');
      q.SQL.Add('      ((IDSUCURSAL = :S Or IDSUCURSAL = 0)) ');
      q.ParamByName('T').AsInteger := CualCard;
      q.ParamByName('N').AsInteger := CantCta;
      q.ParamByName('S').AsInteger := IdBranch;
      q.Open;
      if not (q.Fields[0].IsNull) then
        Coeficiente := q.Fields[0].AsFloat
      else begin
        Coeficiente := 0;
        raise EUsuario.Create('Plan de financiación no autorizado.');
      end;
    finally
      q.Free;
    end;
  end;
end;

procedure TfrmPagoTarjeta.edtVencExit(Sender: TObject);
begin
  try
    VencCard := StrToDate('01/'+edtVenc.Text);
  except
  end;
end;

procedure TfrmPagoTarjeta.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  StPago: String;
begin
  if (ModalResult = mrOK) and
     ((Trim(edtNumero.Text) = Vacio) or
     (Trim(edtAutorizacion.Text) = Vacio) or
     (Trim(edtTerminal.Text) = Vacio) or
     (Trim(edtLoteTarjeta.Text) = Vacio) or
     (Trim(edtNroCupon.Text) = Vacio)) then
    raise EUsuario.Create('Debe ingresar todos los datos de la Entidad Financiera.');

  if ModalResult = mrOK then
  begin
    StPago := edtPago.Text;
    Delete(StPago, Pos(CurrencyString, StPago), 1);
    Pago := StrToFloat(Trim(StPago));

    StPago := edtImpCuota.Text;
    Delete(StPago, Pos(CurrencyString, StPago), 1);
    ImpCuota := StrToFloat(Trim(StPago));
  end;
end;

procedure TfrmPagoTarjeta.edtImpCuotaExit(Sender: TObject);
var
  Aux: String;
begin
  try
    Aux := edtImpCuota.Text;
    Delete(Aux, Pos(CurrencyString, Aux), 1);
    ImpCuota := StrToFloat(Trim(Aux));
  except
    raise;
  end;
end;

procedure TfrmPagoTarjeta.edtPagoExit(Sender: TObject);
var
  Aux: String;
begin
  try
    Aux := edtPago.Text;
    Delete(Aux, Pos(CurrencyString, Aux), 1);
    TotalOp := StrToFloat(Trim(Aux));
    Pago := TotalOp;
  except
    raise;
  end;
end;

procedure TfrmPagoTarjeta.edtImpCuotaEnter(Sender: TObject);
begin
  edtImpCuota.SelectAll;
end;

end.
