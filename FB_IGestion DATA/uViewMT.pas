unit uViewMT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms, DateUtils,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, wwdblook, Wwdotdot, Wwdbcomb, MDOQuery,
  wwdbdatetimepicker, wwdbedit, wwSpeedButton, wwDBNavigator, ExtCtrls,
  wwclearpanel, MDOCustomDataSet, RzButton, RzPanel, Grids, Wwdbigrd,
  Wwdbgrid, Controls, wwcheckbox;

type
  TfrmViewMT = class(TForm)
    gbMovCtas: TRzGroupBox;
    gMovCtas: TwwDBGrid;
    pnlFootModTar: TRzPanel;
    cbEstadoCuota: TwwDBComboBox;

    dsqMovTar: TDataSource;
    qMovTar: TMDODataSet;
    qMovTarIDMOV: TIntegerField;
    qMovTarIDTARJETA: TIntegerField;
    qMovTarIDFACTURA: TIntegerField;
    qMovTarIDSUCURSAL: TIntegerField;
    qMovTarIDCLIENTE: TIntegerField;
    qMovTarCUPON: TMDOStringField;
    qMovTarLOTE: TMDOStringField;
    qMovTarFECHAOP: TDateField;
    qMovTarCODTAR: TMDOStringField;
    qMovTarNROCUOTA: TSmallintField;
    qMovTarIMPCUOTA: TMDOBCDField;
    qMovTarINTCUOTA: TMDOBCDField;
    qMovTarTOTALOP: TMDOBCDField;
    qMovTarAUTORIZACION: TMDOStringField;
    qMovTarESTADO: TSmallintField;
    qMovTarFECHARESUMEN: TDateField;
    qMovTarFECHAIS: TDateField;
    qMovTarCUOTAPAG: TIntegerField;
    qMovTarNROLIQUIDACION: TMDOStringField;
    qMovTarNOMBRE: TMDOStringField;
    qMovTarSTATE: TSmallintField;
    qMovTarVENCUOTA: TDateField;
    qMovTarNRORECPAGO: TMDOStringField;
    qMovTarDetTar: TStringField;

    dsqMovCta: TDataSource;
    qMovCta: TMDODataSet;
    qMovCtaIDMOVCRED: TIntegerField;
    qMovCtaNROCUOTA: TSmallintField;
    qMovCtaIDFACTURA: TIntegerField;
    qMovCtaIDSUCURSAL: TIntegerField;
    qMovCtaFECHAV: TDateField;
    qMovCtaMONTOCUOTA: TMDOBCDField;
    qMovCtaNRORECPAGO: TMDOStringField;
    qMovCtaFECHAP: TDateField;
    qMovCtaMONTODEBITO: TMDOBCDField;
    qMovCtaNRONOTADEB: TMDOStringField;
    qMovCtaIDRECIBO: TIntegerField;
    qMovCtaIDSUCREC: TIntegerField;
    qMovCtaIDCLIENTE: TIntegerField;
    qMovCtaESTADO: TSmallintField;

    pnlNavFV: TRzPanel;
    btnSaveMT: TRzBitBtn;
    btnBorrarMT: TRzBitBtn;
    btnCancelMT: TRzBitBtn;
    btnEditMT: TRzBitBtn;
    btnSalirMT: TRzBitBtn;
    llblIdMov: TDBText;
    lblFecIS: TDBText;
    lblIdFacMT: TDBText;
    lblIdSucMT: TDBText;
    qMovTarIDPUNTOVENTA: TIntegerField;
    gbDatosTar: TRzGroupBox;
    lblTarjeta: TLabel;
    lblCliente: TLabel;
    lblCupon: TLabel;
    lblFechaOp: TLabel;
    lblCodTar: TLabel;
    lblNCta: TLabel;
    lblImpCta: TLabel;
    lblTotalOp: TLabel;
    lblCodAut: TLabel;
    lblEstado: TLabel;
    lblFRes: TLabel;
    lblCtasPag: TLabel;
    lblNFact: TLabel;
    lblSucursal: TLabel;
    lblNomCli: TDBText;
    lblProxVen: TLabel;
    lblUltRec: TLabel;
    lblDetTar: TDBText;
    cbSucTar: TwwDBLookupCombo;
    edtCupon: TwwDBEdit;
    edtFechaOp: TwwDBDateTimePicker;
    edtCodTar: TwwDBEdit;
    edtNCtas: TwwDBEdit;
    edtImpCta: TwwDBEdit;
    edtTOper: TwwDBEdit;
    edtAuto: TwwDBEdit;
    edtFLiq: TwwDBDateTimePicker;
    edtCtasPag: TwwDBEdit;
    edtNFact: TwwDBEdit;
    edtNroCli: TwwDBEdit;
    edtProxVto: TwwDBDateTimePicker;
    edtUltRec: TwwDBEdit;
    cbTarMut: TwwDBLookupCombo;
    cbEstado: TwwDBLookupCombo;
    edtUltPago: TwwDBDateTimePicker;
    lblUltVto: TLabel;
    qMovTarULTIMOPAGO: TDateField;
    lblLote: TLabel;
    edtLote: TwwDBEdit;
    lblIdTer: TLabel;
    edtNTerm: TwwDBEdit;
    qMovTarIDTERMINAL: TIntegerField;
    qMovCtaCOBRADO: TMDOBCDField;
    qMovCtaSALDOCUOTA: TMDOBCDField;
    btnRecalCtas: TRzBitBtn;
    btnVerFacMT: TRzBitBtn;
    qMovCtaCANTPAGOS: TSmallintField;
    qMovCtaIDPUNTOVENTA: TIntegerField;
    qMovCtaIDPUNTOREC: TIntegerField;
    qMovCtaIDNRONOTA: TIntegerField;
    qMovCtaMONTOCREDITO: TMDOBCDField;
    qMovTarNROFACTORG: TMDOStringField;
    qMovCtaFECVTOORG: TDateField;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSaveMTClick(Sender: TObject);
    procedure qMovTarCalcFields(DataSet: TDataSet);
    procedure btnEditMTClick(Sender: TObject);
    procedure btnCancelMTClick(Sender: TObject);
    procedure btnSalirMTClick(Sender: TObject);
    procedure btnBorrarMTClick(Sender: TObject);
    procedure qMovTarBeforePost(DataSet: TDataSet);
    procedure qMovTarAfterOpen(DataSet: TDataSet);
    procedure qMovCtaBeforePost(DataSet: TDataSet);
    procedure qMovTarFECHAISGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure dsqMovTarDataChange(Sender: TObject; Field: TField);
    procedure qMovTarBeforeEdit(DataSet: TDataSet);
    procedure gMovCtasKeyPress(Sender: TObject; var Key: Char);
    procedure edtImpCtaKeyPress(Sender: TObject; var Key: Char);
    procedure lblNomCliDblClick(Sender: TObject);
    procedure btnVerFacMTClick(Sender: TObject);
    procedure edtNroCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lblClienteDblClick(Sender: TObject);
    procedure cbSucTarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbTarMutEnter(Sender: TObject);
    procedure edtNroCliEnter(Sender: TObject);
    procedure btnRecalCtasClick(Sender: TObject);
    procedure qMovTarIDMOVGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qMovTarIDFACTURAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qMovTarIDSUCURSALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure lblNFactDblClick(Sender: TObject);
  private
    { Private declarations }
    q: TMDOQuery;
  public
    { Public declarations }
  end;

var
  frmViewMT: TfrmViewMT;

  procedure Get_ModT(IdF, IdS, IdT, IdM: Integer);

implementation

uses udmGestion, udmSaveFile, uGestTarjetas, uTools, uEntidades,
  uViewFacV, uSelecUsuario, uClaveMod;

{$R *.dfm}

procedure Get_ModT(IdF, IdS, IdT, IdM: Integer);
begin
  frmViewMT := TfrmViewMT.Create(Application);
  with frmViewMT do
  begin
    if (IdF <> NoEncontrado) and
       (IdS > 0) And
       (IdM > 0) then
    begin
      qMovTar.Close;
      qMovTar.ParamByName('IdFac').AsInteger := IdF;
      qMovTar.ParamByName('IdSuc').AsInteger := IdS;
      qMovTar.ParamByName('IdTar').AsInteger := IdT;
      qMovTar.ParamByName('IdMov').AsInteger := IdM;
      qMovTar.Open;
    end
    else
      Close;
    ShowModal;
  end;
end;

procedure TfrmViewMT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if qMovTar.State in dsEditModes then
  begin
    qMovTar.Post;
    qMovTar.Transaction.Commit;
  end;
  Action := caFree;
end;

procedure TfrmViewMT.FormCreate(Sender: TObject);
begin
  Hubo_ModComprobante := False;
  qMovTar.Close;
  if not dmGestion.qTarjetas.Active then
    dmGestion.qTarjetas.Open;
end;

procedure TfrmViewMT.gMovCtasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmViewMT.lblClienteDblClick(Sender: TObject);
begin
  if Busca_Cli(IdEntidad, IdSucEnt) then;
end;

procedure TfrmViewMT.lblNFactDblClick(Sender: TObject);
begin
  Get_FacV(qMovTarIdFactura.AsInteger,
           qMovTarIdSucursal.AsInteger,
           qMovTarIdPuntoVenta.AsInteger);
end;

procedure TfrmViewMT.lblNomCliDblClick(Sender: TObject);
begin
  VerCliente(qMovTarIDCLIENTE.AsInteger, qMovTarIDSUCURSAL.AsInteger);
end;

procedure TfrmViewMT.btnSaveMTClick(Sender: TObject);
var
  IdF, IdS, IdT, IdM: Integer;
begin
  IdF := qMovTarIDFACTURA.AsInteger;
  IdS := qMovTarIDSUCURSAL.AsInteger;
  IdT := qMovTarIDTARJETA.AsInteger;
  IdM := qMovTarIDMOV.AsInteger;
  if qMovTar.State in dsEditModes then
  begin
    try
      qMovTar.Post;
      qMovTar.Transaction.Commit;
    except
      on E:Exception do
      begin
        qMovTar.Transaction.Rollback;
        raise EUsuario.Create(E.Message);
      end;
    end;
    qMovTar.Close;
    qMovTar.ParamByName('IdFac').AsInteger := IdF;
    qMovTar.ParamByName('IdSuc').AsInteger := IdS;
    qMovTar.ParamByName('IdTar').AsInteger := IdT;
    qMovTar.ParamByName('IdMov').AsInteger := IdM;
    qMovTar.Open;
    Hubo_ModComprobante := True;
  end;
end;

procedure TfrmViewMT.btnVerFacMTClick(Sender: TObject);
begin
  Get_FacV(qMovTarIdFactura.AsInteger,
           qMovTarIdSucursal.AsInteger,
           qMovTarIdPuntoVenta.AsInteger);
end;

procedure TfrmViewMT.cbSucTarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmViewMT.cbTarMutEnter(Sender: TObject);
begin
  cbTarMut.SelectAll;
end;

procedure TfrmViewMT.qMovTarCalcFields(DataSet: TDataSet);
begin
  if GetDatosEnt(qMovTarIDCLIENTE.AsInteger, qMovTarIDSUCURSAL.AsInteger, 1, Datos_Ent) then
    qMovTarNOMBRE.AsString := Datos_Ent.Nombre;
end;

procedure TfrmViewMT.btnEditMTClick(Sender: TObject);
begin
  if not Check_Seg(Nivel_ADM, 'MovTar', AutorDto) then
    raise EUsuario.Create('No esta habilitado para esta función');
  cbTarMut.SetFocus;
  qMovTar.Edit;
  qMovCta.Edit;
end;

procedure TfrmViewMT.btnRecalCtasClick(Sender: TObject);
var
  i, p: SmallInt;
  q, s: TMDOQuery;
  NrRecPago: St13;
  Pag, F, U, IdF, IdS, IdT, IdM, CP, TE: Integer;
  Vencimiento, FechaPago: TDate;
begin
  if Tarea = 0 then
  begin
    if Application.MessageBox('¿Esta seguro de regenerar las cuotas? el proceso es irreversible','Cuotas', MB_ICONQUESTION + MB_YESNO) = IdYES then
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := qMovTar.DataBase;
        q.Transaction := qMovTar.Transaction;
        q.SQL.Add('Select DiaPresentacion as P, TipoEnt ');
        q.SQL.Add('From Tarjetas ');
        q.SQL.Add('Where IdTarjeta = :T  ');
        q.ParamByName('T').AsInteger := qMovTarIDTARJETA.AsInteger;
        q.Open;
        if q.FieldByName('P').AsInteger > 0 then
          p := q.FieldByName('P').AsInteger
        else
          p := 15;
        TE := q.FieldByName('TipoEnt').AsInteger;
      finally
        q.Free;
      end;

      if DayOf(qMovTarFECHAOP.AsDateTime) <= 28 then
        Vencimiento := IncMonth(EncodeDate(YearOf(qMovTarFECHAOP.AsDateTime), MonthOf(qMovTarFECHAOP.AsDateTime), p), 1)
      else
        Vencimiento := IncMonth(EncodeDate(YearOf(qMovTarFECHAOP.AsDateTime), MonthOf(qMovTarFECHAOP.AsDateTime), p), 2);

      try
        IdF := qMovTarIDFACTURA.AsInteger;
        IdS := qMovTarIDSUCURSAL.AsInteger;
        IdT := qMovTarIDTARJETA.AsInteger;
        IdM := qMovTarIDMOV.AsInteger;
        try
          if not qMovTar.Transaction.InTransaction then
            qMovTar.Transaction.StartTransaction;
          try
            q := TMDOQuery.Create(nil);
            q.Database := qMovTar.DataBase;
            q.Transaction := qMovTar.Transaction;
            q.SQL.Add('Delete From MovCuotas ');
            q.SQL.Add('Where IdMovCred = :I And  ');
            q.SQL.Add('      IdSucursal = :S ');
            q.ParamByName('I').AsInteger := qMovTarIDMOV.AsInteger;
            q.ParamByName('S').AsInteger := qMovTarIDSUCURSAL.AsInteger;
            q.ExecSQL;
          finally
            q.Free;
          end;
          Pag := 0;
          Case TE of
            1: CP := 1;
            2: CP := qMovTarNROCUOTA.AsInteger;
            3: CP := qMovTarNROCUOTA.AsInteger;
            4: CP := qMovTarNROCUOTA.AsInteger;
          End;

          For i := 1 to CP do
          begin
            try
              q := TMDOQuery.Create(nil);
              q.Database := qMovTar.Database;
              q.Transaction := qMovTar.Transaction;
              q.SQL.Add('INSERT INTO MOVCUOTAS ');
              q.SQL.Add('  (IDMOVCRED, IDSUCURSAL, NROCUOTA, FECHAV, MONTOCUOTA, NRORECPAGO, FECHAP, MONTODEBITO, ');
              q.SQL.Add('   NRONOTADEB, IDRECIBO, IDSUCREC, IDCLIENTE, ESTADO, FECHAIS, IDFACTURA)');
              q.SQL.Add('VALUES ');
              q.SQL.Add('  (:IDMOVCRED, :IDSUCURSAL, :NROCUOTA, :FECHAV, :MONTOCUOTA, :NRORECPAGO, :FECHAP, ');
              q.SQL.Add('   :MONTODEBITO, :NRONOTADEB, :IDRECIBO, :IDSUCREC, :IDCLIENTE, :ESTADO, :FECHAIS, :IDFACTURA) ');

              q.ParamByName('IDMOVCRED').AsInteger := qMovTarIDMOV.AsInteger;
              q.ParamByName('IDSUCURSAL').AsInteger := qMovTarIDSUCURSAL.AsInteger;
              q.ParamByName('NROCUOTA').AsInteger := i;
              q.ParamByName('FECHAV').AsDate := Vencimiento;
              if TE = 1 then
                q.ParamByName('MONTOCUOTA').AsCurrency := qMovTarTOTALOP.AsCurrency
              else
                q.ParamByName('MONTOCUOTA').AsCurrency := qMovTarIMPCUOTA.AsCurrency;
              q.ParamByName('MONTODEBITO').AsCurrency := 0;
              q.ParamByName('NRONOTADEB').AsString := '0000-00000000';
              q.ParamByName('IDCLIENTE').AsInteger := qMovTarIDCLIENTE.AsInteger;
              q.ParamByName('ESTADO').AsInteger := 0;
              q.ParamByName('FECHAIS').Clear;
              q.ParamByName('IDFACTURA').AsInteger := qMovTarIDFACTURA.AsInteger;
              try
                s := TMDOQuery.Create(nil);
                s.Database := dmGestion.dbGestion;
                s.Transaction := dmGestion.trGestion;
                s.SQL.Add('Select NroFactura, FechaF, ');
                s.SQL.Add('       IdFactura, IdSucursal ');
                s.SQL.Add('From FacVen ');
                s.SQL.Add('Where TipoFactura = 21 And ');
                s.SQL.Add('      NroCtas = :NrCta And ');
                s.SQL.Add('      Cliente = :IdCli ');
                s.ParamByName('NrCta').AsInteger := i;
                s.ParamByName('IdCli').AsInteger := qMovTarIDCLIENTE.AsInteger;
                s.Open;
                if not s.IsEmpty then
                begin
                  NrRecPago := s.FieldByName('NroFactura').AsString;
                  FechaPago := s.FieldByName('FechaF').AsDateTime;
                  F := s.FieldByName('IdFactura').AsInteger;
                  U := s.FieldByName('IdSucursal').AsInteger;
                  Inc(Pag);
                end
                else begin
                  NrRecPago := '0000-00000000';
                  FechaPago := 0;
                  F := 0;
                  U := 0;
                end;
                s.Close;
              finally
                s.Free;
              end;
              // Datos Pago
              q.ParamByName('IDRECIBO').AsInteger := F;
              q.ParamByName('IDSUCREC').AsInteger := U;
              q.ParamByName('NroRecPago').AsString := NrRecPago;
              q.ParamByName('FechaP').AsDate := FechaPago;
              q.ExecSQL;
              q.Close;
              Application.ProcessMessages;
            finally
              q.Free;
            end;
            Vencimiento := IncMonth(Vencimiento, 1);
          end;
          try
            q := TMDOQuery.Create(nil);
            q.Database := qMovTar.Database;
            q.Transaction := qMovTar.Transaction;
            q.SQL.Add('UpDate MovTar ');
            q.SQL.Add('   Set CuotaPag = :Pagas, ');
            q.SQL.Add('       FechaIS = null ');
            q.SQL.Add('Where IdMov = :IdMov And ');
            q.SQL.Add('      IdSucursal = :IdSuc ');
            q.ParamByName('Pagas').AsInteger := Pag;
            q.ParamByName('IdMov').AsInteger := IdM;
            q.ParamByName('IdSuc').AsInteger := IdS;
            q.ExecSQL;
          finally
            q.Free;
          end;
          qMovTar.Transaction.Commit;
        except
          on E:Exception do
          begin
            qMovTar.Transaction.Rollback;
            raise EUsuario.Create(E.Message);
          end;
        end;
      finally
        qMovTar.Close;
        qMovTar.ParamByName('IdFac').AsInteger := IdF;
        qMovTar.ParamByName('IdSuc').AsInteger := IdS;
        qMovTar.ParamByName('IdTar').AsInteger := IdT;
        qMovTar.ParamByName('IdMov').AsInteger := IdM;
        qMovTar.Open;
      end;
    end;
  end;
end;

procedure TfrmViewMT.btnCancelMTClick(Sender: TObject);
begin
  if qMovTar.State in dsEditModes then
    qMovTar.Cancel;
  if qMovCta.State in dsEditModes then
    qMovCta.Cancel;
end;

procedure TfrmViewMT.btnSalirMTClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmViewMT.btnBorrarMTClick(Sender: TObject);
var
  IdMotBaja: Integer;
begin
  if not Check_Seg(Nivel_ADM, 'MovTar', AutorDto) then
    raise EUsuario.Create('No esta habilitado para esta función');
  IdMotBaja := 1;
  try
    if not qMovTar.Transaction.InTransaction then
      qMovTar.Transaction.StartTransaction;
    try
      q := TMDOQuery.Create(nil);
      q.Database := qMovTar.Database;
      q.Transaction := qMovTar.Transaction;
      q.SQL.Add('UpDate MovTar ');
      q.SQL.Add('   Set State = :IdMot, ');
      q.SQL.Add('       FechaIS = null ');
      q.SQL.Add('Where IdMov = :IdMov And ');
      q.SQL.Add('      IdSucursal = :IdSuc ');
      q.ParamByName('IdMot').AsInteger := IdMotBaja;
      q.ParamByName('IdMov').AsInteger := qMovTarIDMOV.AsInteger;
      q.ParamByName('IdSuc').AsInteger := qMovTarIDSUCURSAL.AsInteger;
      q.ExecSQL;
    finally
      q.Free;
    end;

    try
      q := TMDOQuery.Create(nil);
      q.Database := qMovTar.Database;
      q.Transaction := qMovTar.Transaction;
      q.SQL.Add('UpDate MovCuotas ');
      q.SQL.Add('   Set Estado = 99, ');
      q.SQL.Add('       FechaIS = null ');
      q.SQL.Add('Where IdMovCred = :IdMov And ');
      q.SQL.Add('      IdSucursal = :IdSuc ');
      q.ParamByName('IdMov').AsInteger := qMovTarIDMOV.AsInteger;
      q.ParamByName('IdSuc').AsInteger := qMovTarIDSUCURSAL.AsInteger;
      q.ExecSQL;
    finally
      q.Free;
    end;
    qMovTar.Transaction.Commit;
  except
    on E:Exception do
    begin
      qMovTar.Transaction.Rollback;
      raise EUsuario.Create(E.Message);
    end;
  end;
  Hubo_ModComprobante := True;
end;

procedure TfrmViewMT.qMovTarBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
  p: SmallInt;
begin
  p := 0;
  if qMovTar.State = dsEdit then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := qMovCta.Database;
      q.Transaction := qMovCta.Transaction;
      q.SQL.Add('Select Count(*) as CantPag ');
      q.SQL.Add('From MovCuotas ');
      q.SQL.Add('Where (IdMovCred = :IdMov) And ');
      q.SQL.Add('      (IdSucursal = :IdSuc) And ');
      q.SQL.Add('      (FechaP is not null) And (Estado = 1)');
      q.ParamByName('IdMov').AsInteger := qMovCtaIDMOVCRED.AsInteger;
      q.ParamByName('IdSuc').AsInteger := qMovCtaIDSUCURSAL.AsInteger;
      q.Open;
      p := q.FieldByName('CantPag').AsInteger;
    finally
      q.Free;
    end;
    qMovTarCUOTAPAG.AsInteger := p;
    qMovTarFECHAIS.Clear;
  end;
end;

procedure TfrmViewMT.qMovTarAfterOpen(DataSet: TDataSet);
begin
  qMovCta.Open;
end;

procedure TfrmViewMT.qMovCtaBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  try
    q := TMDOQuery.Create(nil);
    q.Database := qMovCta.Database;
    q.Transaction := qMovCta.Transaction;
    q.SQL.Add('UpDate MovCuotas ');
    q.SQL.Add('   Set FechaIS = null, ');
    q.SQL.Add('       IdCliente = :IdCli ');
    q.SQL.Add('Where IdMovCred = :IdMov And ');
    q.SQL.Add('      IdSucursal = :IdSuc ');
    q.ParamByName('IdCli').AsInteger := qMovTarIDCLIENTE.AsInteger;
    q.ParamByName('IdMov').AsInteger := qMovCtaIDMOVCRED.AsInteger;
    q.ParamByName('IdSuc').AsInteger := qMovCtaIDSUCURSAL.AsInteger;
    q.ExecSQL;
  finally
    q.Free;
  end;
end;

procedure TfrmViewMT.qMovTarFECHAISGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if (qMovTarFECHAIS.AsDateTime < Ano_2000) or
     (qMovTarFECHAIS.IsNull) then
    Text := 'Sin Act'
  else
    Text := Format('Fª Act %s ', [DateToStr(qMovTarFECHAIS.AsDateTime)]);
end;

procedure TfrmViewMT.qMovTarIDFACTURAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  try
    Text := Format('Nº Fac %d ', [qMovTarIDFACTURA.AsInteger]);
  except
    Text := ' - ';
  end;
end;

procedure TfrmViewMT.qMovTarIDMOVGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  try
    Text := Format('Nº Mov %d ', [qMovTarIDMOV.AsInteger]);
  except
    Text := ' - ';
  end;
end;

procedure TfrmViewMT.qMovTarIDSUCURSALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  try
    Text := Format('Nº Suc %d ', [qMovTarIDSUCURSAL.AsInteger]);
  except
    Text := ' - ';
  end;
end;

procedure TfrmViewMT.dsqMovTarDataChange(Sender: TObject; Field: TField);
var
  q: TMDOQuery;
begin
  try
    if qMovTarESTADO.AsInteger >= 0 then
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := qMovCta.Database;
        q.Transaction := qMovCta.Transaction;
        q.SQL.Add('Select Estado  ');
        q.SQL.Add('From EstadoMov ');
        q.SQL.Add('Where IdEstado = :IdE ');
        q.ParamByName('IdE').AsInteger := qMovTarESTADO.AsInteger;
        q.Open;
        If not q.IsEmpty then
          pnlFootModTar.Caption := Format('', [qMovTarESTADO.AsInteger, q.FieldByName('Estado').AsString])
        else
          pnlFootModTar.Caption := ' ';
      finally
        q.Free;
        Application.ProcessMessages;
      end;
      Application.ProcessMessages;
    end;
  except
    pnlFootModTar.Caption := ' ';
  end;
end;

procedure TfrmViewMT.edtImpCtaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmViewMT.edtNroCliEnter(Sender: TObject);
begin
  edtNroCli.SelectAll;
end;

procedure TfrmViewMT.edtNroCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NuevoCli: Integer;
begin
  case Key of
    VK_F1: begin
      NuevoCli := AltaCliente(1);
      if NuevoCli <> NoEncontrado then
      begin
        qMovTar.Edit;
        qMovTarIDCLIENTE.AsInteger := NuevoCli;
      end;
    end;
    VK_F3: begin
      if Busca_Cli(IdEntidad, IdSucEnt) then
      begin
        qMovTar.Edit;
        qMovTarIDCLIENTE.AsInteger := IdEntidad;
      end;
    end;
    VK_ESCAPE: btnSaveMT.SetFocus;
    else begin
      {$INCLUDE IyC_NextEdit.Inc}
    end
  end;
end;

procedure TfrmViewMT.qMovTarBeforeEdit(DataSet: TDataSet);
begin
  dmGestion.qTarjetas.Open;
end;

end.
