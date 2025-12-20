unit uFormasDePagoNC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdblook, Mask, wwdbedit, Grids, Wwdbigrd,
  Wwdbgrid, uTools, DB, wwclearbuttongroup, wwradiogroup, ExtCtrls, Wwdotdot,
  Wwdbcomb, RzButton, MDOCustomDataSet, MDOQuery, RzPanel, RzRadGrp,
  RzCmboBx, ComCtrls, DBCtrls, RzDBEdit;

type
  TfrmFormasDePagoNC = class(TForm)
    dsMovTar: TDataSource;
    qMovTar: TMDOQuery;
    qMovTarIdMov: TIntegerField;
    qMovTarIdTarjeta: TIntegerField;
    qMovTarIdFactura: TIntegerField;
    qMovTarCupon: TStringField;
    qMovTarLote: TStringField;
    qMovTarFechaOp: TDateField;
    qMovTarCodTar: TStringField;
    qMovTarNroCuota: TSmallintField;
    qMovTarAutorizacion: TStringField;
    qMovTarTOTALOP: TMDOBCDField;
    qMovTarIDSUCURSAL: TIntegerField;
    qMovTarIDCLIENTE: TIntegerField;
    qMovTarIMPCUOTA: TMDOBCDField;
    qMovTarESTADO: TSmallintField;
    qMovTarSTATE: TSmallintField;
    qMovTarTIPOENT: TSmallintField;
    qMovTarCUOTAPAG: TIntegerField;
    qMovTarTARJETA: TMDOStringField;

    gbInstructivoNC: TRzGroupBox;
    pnlDatosNC: TRzPanel;
    gbDatosOper: TRzGroupBox;
    lblDatosFac: TLabel;
    gbPagosOrginales: TRzGroupBox;
    lblTotal: TLabel;
    lblContado: TLabel;
    lblContadoNC: TLabel;
    lblTotNC: TLabel;
    lblPgTarjetas: TLabel;
    lblMtoTjtaNC: TLabel;
    lblTickets: TLabel;
    lblMtoTickets: TLabel;
    lblPgChq: TLabel;
    lblMtoChqNC: TLabel;
    lblTarjetas: TLabel;
    lblSaF: TLabel;
    lblTotalSaf: TLabel;
    lblSenas: TLabel;
    lblMtoSenas: TLabel;
    gTarjetas: TwwDBGrid;
    gbPagoNC: TRzGroupBox;
    lblMotNc: TLabel;
    btnAceptar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    rgOpcionesOP: TRzRadioGroup;
    cbMotivoNC: TRzComboBox;
    gbInstructivo1: TRzGroupBox;
    redOpcNC1: TRichEdit;
    gbInstructivo2: TRzGroupBox;
    redOpcNC2: TRichEdit;
    gbInstructivo3: TRzGroupBox;
    redOpcNC3: TRichEdit;
    qMovTarSaldo: TCurrencyField;
    lblMtoCredNC: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgOpcionesOPClick(Sender: TObject);
    procedure qMovTarCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function DoPagoNC(var DatosPago: TDatosPagos): Boolean;

var
  frmFormasDePagoNC: TfrmFormasDePagoNC;
  MtoSen, MtoChq, MtoTjt, MtoCdo, MtoTkt, MtoCob, MtoCrd, MtoSaF: Currency;
  TipoNC: SmallInt;

implementation

uses udmGestion, udmSaveFile, uSelecUsuario, uClaveMod;

{$R *.dfm}
procedure TfrmFormasDePagoNC.FormCreate(Sender: TObject);
begin
  qMovTar.Close;
  MtoTjt := 0;
  MtoCdo := 0;
  MtoTkt := 0;
  MtoChq := 0;
  MtoSaF := 0;
  MtoCob := 0;
  MtoCrd := 0;
  MtoChq := 0;
  MtoSen := 0;
  if not dmGestion.MotivosNC.Active then
    dmGestion.MotivosNC.Open;
  cbMotivoNC.Items.Clear;
  dmGestion.MotivosNC.First;
  while not dmGestion.MotivosNC.Eof do
  begin
    cbMotivoNC.Items.AddObject(dmGestion.MotivosNCMotivoNC.AsString, TObject(dmGestion.MotivosNCIDMOTNC.AsInteger));
    dmGestion.MotivosNC.Next;
  end;
  cbMotivoNC.ItemIndex := 0;
end;

procedure TfrmFormasDePagoNC.qMovTarCalcFields(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  try
    q := TMDOQuery.Create(nil);
    q.SQL.Clear;
    q.Database := qMovTar.Database;
    q.Transaction := qMovTar.Transaction;
    q.SQL.Add('Select Sum(SaldoCuota) as Saldo ');
    q.SQL.Add('From MovCuotas ');
    q.SQL.Add('Where (Estado = 0) And ');
    q.SQL.Add('      (IdMovCred = :IdMov) And  ');
    q.SQL.Add('      (IdSucursal = :IdSuc) ');
    q.ParamByName('IdMov').AsInteger := qMovTarIDMOV.AsInteger;
    q.ParamByName('IdSuc').AsInteger := qMovTarIDSUCURSAL.AsInteger;
    q.Open;
    qMovTarSALDO.AsCurrency := q.FieldByName('Saldo').AsCurrency;
    q.Close;
  finally
    q.Free;
  end;
end;

function DoPagoNC(var DatosPago: TDatosPagos): Boolean;
var
 i: Integer;
begin
  Result := False;
  frmFormasDePagoNC := TfrmFormasDePagoNC.Create(Application);
  with frmFormasDePagoNC do
  begin
    if DatosPago.TipoComRef in [Tkt, FacB, FacA] then
    begin
      lblDatosFac.Caption := 'Factura Nº '+DatosPago.NroComprobante +
                             '- Cliente: '+DatosPago.NomEntidad +#13#10+
                             'de Fecha:  '+DateToStr(DatosPago.FechaOp) +' '+
                             'Nº Cuotas: '+IntToStr(DatosPago.CantidadCuotas);
      TipoNC := -1;
      if DatosPago.PagosContado <> 0 then
      begin
        lblContadoNC.Caption := Format('%m',[DatosPago.PagosContado]);
        MtoCdo := DatosPago.PagosContado;
        DatosPago.PagosRealizados := DatosPago.PagosRealizados + [Contado];
      end
      else begin
        lblContadoNC.Caption := '$ 0.00';
        MtoCdo := 0;
      end;

      if DatosPago.PagosBonosTk <> 0 then
      begin
        lblMtoTickets.Caption := Format('%m',[DatosPago.PagosBonosTk]);
        MtoTkt := DatosPago.PagosBonosTk;
        DatosPago.PagosRealizados := DatosPago.PagosRealizados + [Bonos];
      end
      else begin
        lblMtoTickets.Caption := '$ 0.00';
        MtoTkt := 0;
      end;

      if DatosPago.PagosSena <> 0 then
      begin
        lblMtoSenas.Caption := Format('%m',[DatosPago.PagosSena]);
        MtoSen := DatosPago.PagosSena;
        DatosPago.PagosRealizados := DatosPago.PagosRealizados + [Senas];
      end
      else begin
        lblMtoSenas.Caption := '$ 0.00';
        MtoSen := 0;
      end;
      if DatosPago.PagosCheques.TotalValores <> 0 then
      begin
        lblMtoChqNC.Caption := Format('%m',[DatosPago.PagosCheques.TotalValores]);
        MtoChq := DatosPago.PagosCheques.TotalValores;
        DatosPago.PagosRealizados := DatosPago.PagosRealizados + [Valores];
      end
      else begin
        lblMtoChqNC.Caption := '$ 0.00';
        MtoChq := 0;
      end;

      if DatosPago.PagosTarjeta.TotalTarjeta <> 0 then
      begin
        qMovTar.Close;
        qMovTar.ParamByName('IdFac').AsInteger := DatosPago.IdComprobante;
        qMovTar.ParamByName('IdSuc').AsInteger := DatosPago.IdSucursal;
        qMovTar.ParamByName('IdCli').AsInteger := DatosPago.IdEntidad;
        qMovTar.Open;
        if not qMovTar.IsEmpty then
        begin
          qMovTar.First;
          i := 1;
          while not qMovTar.Eof do
          begin
            if qMovTarTIPOENT.AsInteger in [2,3] then
              MtoCrd := MtoCrd + (qMovTarTOTALOP.AsCurrency - qMovTarSALDO.AsCurrency)
            else
              MtoCob := MtoCob + qMovTarTOTALOP.AsCurrency;
            with DatosPago.PagosTarjeta.Movimientos[i] do
            begin
              IdTarMut := qMovTarIdTarjeta.AsInteger;
              IdMovTar := qMovTarIdMov.AsInteger;
              TipoEntidad := qMovTarTIPOENT.AsInteger;
              DatosPago.IdComprobante := qMovTarIdFactura.AsInteger;
              DatosPago.IdSucursal := qMovTarIDSUCURSAL.AsInteger;
              DatosPago.IdEntidad := qMovTarIDCLIENTE.AsInteger;
              NumTarjeta := qMovTarCodTar.AsString;
              Autorizacion := qMovTarAutorizacion.AsString;
              CantidadCuotas := qMovTarNroCuota.AsInteger;
              TotalTarj := qMovTarTOTALOP.AsCurrency;
              Cupon := qMovTarCupon.AsString;
              Lote := qMovTarLote.AsString;
            end;
            Inc(i);
            qMovTar.Next;
          end;
          DatosPago.PagosTarjeta.CantTarjetas := i;
          gTarjetas.RefreshDisplay;
        end
        else
          gTarjetas.Enabled := False;
        MtoTjt := DatosPago.PagosTarjeta.TotalTarjeta;
        lblMtoTjtaNC.Caption := Format('%m / %m',[MtoTjt, MtoCob]);
        lblMtoCredNC.Caption := Format('%m / %m',[MtoTjt, MtoCrd]);
        DatosPago.PagosRealizados := DatosPago.PagosRealizados + [Tarjeta];
      end
      else begin
        lblMtoTjtaNC.Caption := '$ 0.00';
        MtoTjt := 0;
      end;

      lblTotal.Caption := Format('%m',[DatosPago.TotalPagos]);
      MtoSaF := MtoCob + MtoCrd + MtoCdo + MtoTkt + MtoChq + MtoSen;
      lblTotalSaF.Caption := Format('%m',[MtoSaF]);

      if ShowModal = mrOk then
      begin
        if TipoNC in [0, 1, 2] then
        begin
          try
            DatosPago.IdMotivo := Integer(cbMotivoNC.Items.Objects[cbMotivoNC.ItemIndex]);
          except
            DatosPago.IdMotivo := 1;
          end;
          Case TipoNC of
            0:begin // SAF
                DatosPago.OpcionNC := 0;
                if MtoSaF > 0 then
                begin
                  DatosPago.PagosContado := 0;
                  DatosPago.PagosBonosTk := 0;
                  DatosPago.PagosSena := 0;
                  DatosPago.PagosCheques.TotalValores := 0;
                  if MtoTjt > 0 then
                    DatosPago.PagosTarjeta.TotalTarjeta := ABS(MtoTjt - MtoSaF)
                  else
                    DatosPago.PagosTarjeta.TotalTarjeta := 0;
                  DatosPago.SdoAFavor := MtoSaF;
                  DatosPago.PagosRealizados := DatosPago.PagosRealizados + [SdoAFav];
                end;
              end;
            1:begin // Anulación Operacion
                DatosPago.OpcionNC := 1;
                MtoSaF := 0;
              end;
            2:begin // Pago c/NC y SaF
                DatosPago.OpcionNC := 2;
                DatosPago.PagosRealizados := [NotaCre];
                MtoSaF := DatosPago.TotalPagos;
                DatosPago.SdoAFavor := DatosPago.TotalPagos;
              end;
          end;
          Result := True;
        end;
      end;
    end
    else begin
      if DatosPago.TipoComRef in [DebB, DebA] then
      begin
        lblDatosFac.Caption := 'Comp Nº '+DatosPago.NroComprobante+
                               ' - Cliente: '+DatosPago.NomEntidad +#13#10+
                               'Fecha: '+DateToStr(DatosPago.FechaOp) +
                               Format('Importe: %m',[DatosPago.TotalPagos]);
        gbPagosOrginales.Visible := False;
        rgOpcionesOp.Visible := False;
        if ShowModal = mrOk then
        begin
          try
            DatosPago.IdMotivo := Integer(cbMotivoNC.Items.Objects[cbMotivoNC.ItemIndex]);
          except
            DatosPago.IdMotivo := 1;
          end;
          DatosPago.OpcionNC := 1;
          DatosPago.SdoAFavor := 0;
          Result := True;
        end;
      end;
    end;
  end;
(*
  if MtoSaF > 0 then
  begin
    if (Application.MessageBox('    El Comprobante que va ha Anular, '+#13#10+
                               'tiene cuotas ya cobradas de tarjetas '+#13#10+
                               'de Crédito o Mutuales. ¿Genera SaF?. '+#13#10+
                               'y cancela la operación de Crédito. ','Saldo a Favor',
                               MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = ID_No) then
    begin
    end
    else begin
      DatosPago.PagosContado := DatosPago.PagosContado + (MtoSaf - DatosPago.PagosContado);
    end;
  end;
*)
end;

procedure TfrmFormasDePagoNC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmFormasDePagoNC.rgOpcionesOPClick(Sender: TObject);
begin
  TipoNC := rgOpcionesOP.ItemIndex;
end;

end.
