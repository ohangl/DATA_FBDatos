unit uRendicion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, ExtCtrls, wwdbdatetimepicker, StdCtrls, Mask,
  DBCtrls, DB, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,  wwSpeedButton,
  wwDBNavigator, wwclearpanel,  wwdblook, RzPanel, RzButton,
  RzTabs, Wwdotdot, Wwdbcomb, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppBands, ppCache, ppCtrls, ppPrnabl, ppVar, RzBorder,
  DateUtils, MDOTable, MDOCustomDataSet, MDOQuery, DBClient, RzEdit,
  RzCmboBx;

type
  TfrmRendicion = class(TForm)
    dsqRendiciones: TDataSource;
    qRendiciones: TMDOQuery;
    qRendicionesIdRend: TIntegerField;
    qRendicionesIdSuc: TIntegerField;
    qRendicionesFechaR: TDateField;
    qRendicionesIdCuenta: TIntegerField;
    qRendicionesFechaIS: TDateField;
    qRendicionesIdMovBco: TIntegerField;
    qRendicionesTVENTA: TMDOBCDField;
    qRendicionesTPESOS: TMDOBCDField;
    qRendicionesTTICKETS: TMDOBCDField;
    qRendicionesTTARJETA: TMDOBCDField;
    qRendicionesTCHEQUES: TMDOBCDField;
    qRendicionesTSENAS: TMDOBCDField;
    qRendicionesTNCRED: TMDOBCDField;
    qRendicionesTGASTOSE: TMDOBCDField;
    qRendicionesTGASTOST: TMDOBCDField;
    qRendicionesDIFERENCIA: TMDOBCDField;
    qRendicionesDEPOSITO: TMDOBCDField;
    qRendicionesBOLDEP: TIntegerField;

    dsqR_Rend: TDataSource;
    qR_Rend: TMDODataSet;
    qR_RendIDREND: TIntegerField;
    qR_RendIDSUC: TIntegerField;
    qR_RendFECHAR: TDateField;
    qR_RendTVENTA: TMDOBCDField;
    qR_RendTPESOS: TMDOBCDField;
    qR_RendTTICKETS: TMDOBCDField;
    qR_RendTTARJETA: TMDOBCDField;
    qR_RendTCHEQUES: TMDOBCDField;
    qR_RendTSENAS: TMDOBCDField;
    qR_RendTNCRED: TMDOBCDField;
    qR_RendTGASTOSE: TMDOBCDField;
    qR_RendTGASTOST: TMDOBCDField;
    qR_RendDIFERENCIA: TMDOBCDField;
    qR_RendIDCUENTA: TIntegerField;
    qR_RendDEPOSITO: TMDOBCDField;
    qR_RendFECHAIS: TDateField;
    qR_RendIDMOVBCO: TIntegerField;
    qR_RendTSAF: TMDOBCDField;
    qR_RendTCOBRADO: TMDOBCDField;
    qR_RendTCOBOSUC: TMDOBCDField;
    qR_RendBOLDEP: TIntegerField;

    dsqCalcVta: TDataSource;
    qCalcVta: TMDOQuery;
    qCalcVtaEFECTIVO: TMDOBCDField;
    qCalcVtaTARJETA: TMDOBCDField;
    qCalcVtaTICKETS: TMDOBCDField;
    qCalcVtaCHEQUES: TMDOBCDField;
    qCalcVtaTOTAL: TMDOBCDField;
    qCalcVtaTOTALM: TMDOBCDField;
    qCalcVtaTipoFac: TStringField;
    qCalcVtaSAF: TMDOBCDField;
    qCalcVtaSENAS: TMDOBCDField;

    dsRend: TDataSource;
    Rend: TClientDataSet;
    RendTotalZ: TCurrencyField;
    RendTotalNC: TCurrencyField;
    RendTotalCob: TCurrencyField;
    RendTotGasEf: TCurrencyField;
    RendTotGasTk: TCurrencyField;
    RendTEfectivo: TCurrencyField;
    RendTTarjeta: TCurrencyField;
    RendTTickets: TCurrencyField;
    RendTCheques: TCurrencyField;
    RendDiferencia: TCurrencyField;
    RendIdCuenta: TIntegerField;
    RendTotRend: TCurrencyField;
    RendTSaF: TCurrencyField;
    RendTCobSen: TCurrencyField;
    RendBcoCuenta: TStringField;
    RendIdRend: TIntegerField;
    RendFechaR: TDateField;
    RendIdSucRen: TIntegerField;
    RendDetSucRen: TStringField;
    RendBoleta: TIntegerField;

    pcRend: TRzPageControl;
    tsRendiciones: TRzTabSheet;
    tsRendDiaria: TRzTabSheet;
    gbRendicion: TRzGroupBox;
    gRend: TwwDBGrid;
    gTVentas: TRzGroupBox;
    gbMonedas: TRzGroupBox;
    gbGastos: TRzGroupBox;
    lblTVenta: TLabel;
    lblTNCred: TLabel;
    lblCobranza: TLabel;
    edtTVenta: TwwDBEdit;
    edtTNCred: TwwDBEdit;
    edtCobranza: TwwDBEdit;
    lblTPesos: TLabel;
    lblTBonos: TLabel;
    lblTTarj: TLabel;
    lblTOtros: TLabel;
    edtTPesos: TwwDBEdit;
    edtTTkts: TwwDBEdit;
    edtTTarj: TwwDBEdit;
    edtTChq: TwwDBEdit;
    lblTGastosE: TLabel;
    edtTGastosE: TwwDBEdit;
    lblTGastosT: TLabel;
    edtTGastosT: TwwDBEdit;
    gbResultado: TRzGroupBox;
    btnGoRend: TRzBitBtn;
    lblDifer: TLabel;
    edtDifer: TwwDBEdit;
    lblNombreBanco: TLabel;
    cbBanco: TwwDBLookupCombo;
    lblDeposito: TLabel;
    edtDeposito: TwwDBEdit;
    lblNBolDep: TLabel;
    edtNBolDep: TwwDBEdit;
    btnGrabar: TRzBitBtn;
    btnImprimir: TRzBitBtn;
    lblCobranzaOS: TLabel;
    edtCobOS: TwwDBEdit;
    RendTotCobOS: TCurrencyField;
    lblSenCob: TLabel;
    edtSenCob: TwwDBEdit;
    lblTotSaF: TLabel;
    edtSaF: TwwDBEdit;

    dbpRendicion: TppDBPipeline;
    rpRendicion: TppReport;
    hbRend: TppHeaderBand;
    dbRend: TppDetailBand;
    lblFecR: TppDBText;
    lblNomSuc: TppLabel;
    lblNroRend: TppDBText;
    sbRend: TppSummaryBand;
    lblEft: TppLabel;
    lblTkt: TppLabel;
    lblTrj: TppLabel;
    lblChq: TppLabel;
    lblGtE: TppLabel;
    lblGtT: TppLabel;
    lblToZ: TppLabel;
    lblCobOS: TppLabel;
    lblTNc: TppLabel;
    lblDif: TppLabel;
    lblToD: TppLabel;
    lblNbd: TppLabel;
    lblPesos: TppDBText;
    lblTickets: TppDBText;
    lblTarjetas: TppDBText;
    lblCheques: TppDBText;
    lblGastosE: TppDBText;
    lblGastosT: TppDBText;
    lblTotalV: TppDBText;
    lblTSenas: TppDBText;
    lblTNotas: TppDBText;
    lblDiferencia: TppDBText;
    lblTotDep: TppDBText;
    lblNroBol: TppDBText;
    lblEmision: TppSystemVariable;
    lblFechaRend: TppLabel;
    lblSucRend: TppLabel;
    lblNro: TppLabel;
    lblEmpresa: TppLabel;
    ppShape1: TppShape;
    lblFirma: TppLabel;
    lblBanco: TppDBText;
    lblDepositado: TppLabel;
    pnlMenuRend: TRzPanel;
    btnExpRend: TRzBitBtn;
    lblQueSucursal: TLabel;
    cbQue_Suc: TRzComboBox;
    btnCalcRendSuc: TRzBitBtn;
    lblDesde: TLabel;
    edtDesde: TRzDateTimeEdit;
    qRendicionesDetSuc: TStringField;
    qRendicionesBancoCta: TStringField;
    lnRend1: TppLine;
    lblDetSuc: TppDBText;
    lblMovBco: TppDBText;
    lblIdCtaBco: TppDBText;
    shRend1: TppShape;
    shRend2: TppShape;
    shRend3: TppShape;
    lblObsRen: TppLabel;
    lblCobSuc: TppLabel;
    lblTotalCob: TppDBText;
    lblSenRec: TppLabel;
    lblSaFPen: TppLabel;
    lblTotSenRec: TppDBText;
    lblTotalSaF: TppDBText;
    pnlTopRend: TRzPanel;
    lblSucursal: TLabel;
    lblRFecDesde: TLabel;
    cbRendSuc: TRzComboBox;
    edtRendFec: TRzDateTimeEdit;
    btnNewRend: TRzBitBtn;
    btnDelRend: TRzBitBtn;
    gDatosSis: TwwDBGrid;
    lblNroR: TLabel;
    lblNro_Rendicion: TDBText;
    btnCanRend: TRzBitBtn;
    pnlBtnRnd: TRzPanel;
    btnSalir: TRzBitBtn;
    RendIdMovBco: TIntegerField;

    procedure btnCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbRendSucChange(Sender: TObject);
    procedure btnNewRendClick(Sender: TObject);
    procedure btnGoRendClick(Sender: TObject);
    procedure gDatosSisUpdateFooter(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure edtTVentaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtTVentaKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimirClick(Sender: TObject);
    procedure gRendDblClick(Sender: TObject);
    procedure btnExpRendClick(Sender: TObject);
    procedure btnCalcRendSucClick(Sender: TObject);
    procedure gRendCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure RendIdCuentaValidate(Sender: TField);
    procedure pcRendClose(Sender: TObject; var AllowClose: Boolean);
    procedure RendNewRecord(DataSet: TDataSet);
    procedure btnDelRendClick(Sender: TObject);
    procedure RendIdRendGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnCanRendClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);

  private
    { Private declarations }
    IdSucRen: Integer;
    TEfc, TTkt, TTar, TChq, TotV, TSaF, TSen, DifR: Currency;
    New_Rdn: Boolean;
    procedure Leer_Rend(M, S:Integer; F: TDate);
    procedure Calc_Difer;
    procedure Save_Rend;

  public
    { Public declarations }
  end;

var
  frmRendicion: TfrmRendicion;

implementation

uses udmGestion, uTools, uClaveMod, udmSaveFile;

{$R *.dfm}

procedure TfrmRendicion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qR_Rend.Close;
  Action := caFree;
end;

procedure TfrmRendicion.FormCreate(Sender: TObject);
begin
  cbRendSuc.Items.Clear;
  cbQue_Suc.Items.Clear;
  with dmGestion do
  begin
    Sucursales.First;
    while not Sucursales.Eof do
    begin
      if SucursalesACTIVA.AsInteger = Verdadero then
      begin
        cbRendSuc.Items.AddObject(SucursalesNombreSuc.AsString, TObject(SucursalesIdSucursal.AsInteger));
        cbQue_Suc.Items.AddObject(SucursalesNombreSuc.AsString, TObject(SucursalesIdSucursal.AsInteger));
      end;
      Sucursales.Next;
    end;
    cbRendSuc.ItemIndex := cbRendSuc.Items.IndexOf(NameBranch);
    cbQue_Suc.ItemIndex := cbQue_Suc.Items.IndexOf(NameBranch);
    IdSucRen := IdBranch;
  end;
  gDatosSis.Visible := False;
  edtDesde.Date := StartOfTheMonth(Date);
  edtRendFec.Date := Date;
  New_Rdn := False;
end;

procedure TfrmRendicion.btnCanRendClick(Sender: TObject);
begin
  if Rend.Active then
    Rend.EmptyDataSet
  else
    Rend.CreateDataSet;
  if qCalcVta.Active then
    qCalcVta.Close;
  cbRendSuc.SetFocus;
end;

procedure TfrmRendicion.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRendicion.btnDelRendClick(Sender: TObject);
begin
  if Application.MessageBox('¿Esta seguro de Borrar la rendición?', 'Rendiciones', MB_ICONQUESTION+MB_YESNO) = ID_YES then
  begin
    if not Rend.IsEmpty then
    begin
      try
        if not dmGestion.trProc.InTransaction then
          dmGestion.trProc.StartTransaction;
        qR_Rend.Close;
        qR_Rend.ParamByName('IdRen').AsInteger := RendIdRend.AsInteger;
        qR_Rend.ParamByName('IdSuc').AsInteger := RendIdSucRen.AsInteger;
        qR_Rend.ParamByName('Desde').AsDate := RendFechaR.AsDateTime;
        qR_Rend.Open;
        if not qR_Rend.IsEmpty then
          qR_Rend.Delete;
        qRendiciones.Close;
        dmGestion.trProc.Commit;
        Rend.Close;
      except
        on E:Exception do
        begin
          dmGestion.trProc.Rollback;
          raise EUsuario.Create(E.Message);
        end;
      end;
    end;
  end;
end;

procedure TfrmRendicion.Leer_Rend(M, S:Integer; F: TDate);
begin
  qR_Rend.Close;
  qR_Rend.ParamByName('IdRen').AsInteger := M;
  qR_Rend.ParamByName('IdSuc').AsInteger := S;
  qR_Rend.ParamByName('Desde').AsDate := F;
  qR_Rend.Open;
  if Rend.Active then
    Rend.EmptyDataSet
  else
    Rend.CreateDataSet;
  if not qR_Rend.IsEmpty then
  begin
    Rend.Insert;
    RendIdRend.AsInteger    := qR_RendIDREND.AsInteger;
    RendIdSucRen.AsInteger  := qR_RendIDSUC.AsInteger;
    RendFechaR.AsDateTime   := qR_RendFECHAR.AsDateTime;
    RendTotalZ.AsCurrency   := qR_RendTVenta.AsCurrency;
    RendTotalNC.AsCurrency  := qR_RendTNCred.AsCurrency;
    RendTotCobOS.AsCurrency := 0;
    RendTotalCob.AsCurrency := 0;
    RendTotGasEf.AsCurrency := qR_RendTGastosE.AsCurrency;
    RendTotGasTk.AsCurrency := qR_RendTGastosT.AsCurrency;
    RendTEfectivo.AsCurrency:= qR_RendTPesos.AsCurrency;
    RendTTickets.AsCurrency := qR_RendTTickets.AsCurrency;
    RendTTarjeta.AsCurrency := qR_RendTTarjeta.AsCurrency;
    RendTCheques.AsCurrency := qR_RendTCheques.AsCurrency;
    RendDiferencia.AsCurrency:= qR_RendDiferencia.AsCurrency;
    RendIdCuenta.AsInteger  := qR_RendIdCuenta.AsInteger;
    RendIdMovBco.AsInteger  := qR_RendIDMOVBCO.AsInteger;
    RendBoleta.AsString     := qR_RendBolDep.AsString;
    RendTotRend.AsCurrency  := qR_RendDeposito.AsCurrency;
    Rend.Post;
  end
  else begin
    raise EUsuario.Create('No Existe una rendicion en ese dia');
  end;
end;

procedure TfrmRendicion.pcRendClose(Sender: TObject; var AllowClose: Boolean);
begin
  Close;
end;

procedure TfrmRendicion.Calc_Difer;
begin
  TEfc := 0;
  TTkt := 0;
  TTar := 0;
  TChq := 0;
  TotV := 0;
  TSaF := 0;
  TSen := 0;
  DifR := 0;
  try
    Screen.Cursor := crHourGlass;
    qCalcVta.Close;
    qCalcVta.ParamByName('IdSuc').AsInteger := IdSucRen;
    qCalcVta.ParamByName('Desde').AsDate := edtRendFec.Date;
    qCalcVta.Open;
    if not qCalcVta.IsEmpty then
    begin
      qCalcVta.First;
      while not qCalcVta.Eof do
      begin
        TEfc := TEfc + qCalcVtaEfectivo.AsCurrency;
        TTkt := TTkt + qCalcVtaTickets.AsCurrency;
        TTar := TTar + qCalcVtaTarjeta.AsCurrency;
        TChq := TChq + qCalcVtaCheques.AsCurrency;
        TotV := TotV + qCalcVtaTotal.AsCurrency;
        TSaF := TSaF + qCalcVtaSAF.AsCurrency;
        TSen := TSen + qCalcVtaSENAS.AsCurrency;
        qCalcVta.Next;
      end;
      qCalcVta.First;
      gDatosSis.Visible := True;
      gDatosSis.ColumnByName('TipoFac').FooterValue := 'Total';
      gDatosSis.ColumnByName('Efectivo').FooterValue:= Format('%m',[TEfc]);
      gDatosSis.ColumnByName('Tickets').FooterValue := Format('%m',[TTkt]);
      gDatosSis.ColumnByName('Tarjeta').FooterValue := Format('%m',[TTar]);
      gDatosSis.ColumnByName('Cheques').FooterValue := Format('%m',[TChq]);
      gDatosSis.ColumnByName('SaF').FooterValue     := Format('%m',[TSaF]);
      gDatosSis.ColumnByName('Senas').FooterValue   := Format('%m',[TSen]);
      gDatosSis.ColumnByName('Total').FooterValue   := Format('%m',[TotV]);

      // Calculo diferencia
      DifR := (RendTotalZ.AsCurrency + RendTotalCob.AsCurrency + RendTotCobOS.AsCurrency) +
              (RendTSaF.AsCurrency + RendTCobSen.AsCurrency) -
              (RendTotalNC.AsCurrency) -
              (RendTotGasEf.AsCurrency + RendTotGasTk.AsCurrency) -
              (RendTEfectivo.AsCurrency + RendTTarjeta.AsCurrency + RendTTickets.AsCurrency + RendTCheques.AsCurrency);
      Rend.Edit;
      RendDiferencia.AsCurrency := DifR;
      Rend.Post;
      btnGrabar.Enabled := True;
    end
    else
      ShowMessage('No hay Operaciones en la Fecha.-');
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmRendicion.gDatosSisUpdateFooter(Sender: TObject);
begin
  gDatosSis.ColumnByName('TipoFac').FooterValue := 'Total';
  gDatosSis.ColumnByName('Efectivo').FooterValue := Format('%m',[TEfc]);
  gDatosSis.ColumnByName('Tickets').FooterValue := Format('%m',[TTkt]);
  gDatosSis.ColumnByName('Tarjeta').FooterValue := Format('%m',[TTar]);
  gDatosSis.ColumnByName('Cheques').FooterValue := Format('%m',[TChq]);
  gDatosSis.ColumnByName('Total').FooterValue := Format('%m',[TotV]);
end;

procedure TfrmRendicion.Save_Rend;
var
  s: TMDOQuery;
  UltRnd,
  YaEsta,
  Existe: Integer;
(*
Select Max(IdMov) as Existe
From BancoProp
Where (TipoMov = :T) And
      (FechaEmision =:E) And
      (IdOrdPago = :O) And
      (FechaVencimiento = :V) And
      (IdCuenta = :B) And
      (NroCheque = :N) And
      (IdEntidad = 0)
*)
begin
  UltRnd := 0;
  YaEsta := 0;
  Existe := NoEncontrado;
  if Rend.State in dsEditModes then
    Rend.Post;

  if New_Rdn then
  begin
    try
      s := TMDOQuery.Create(nil);
      s.Database := qR_Rend.Database;
      s.Transaction := qR_Rend.Transaction;
      s.SQL.Add('Select Count(IdRend) as YaEsta ');
      s.SQL.Add('From R_Rend ');
      s.SQL.Add('Where (IdSuc = :S) And (FechaR = :F) ');
      s.ParamByName('S').AsInteger := RendIdSucRen.AsInteger;
      s.ParamByName('F').AsDate := RendFechaR.AsDateTime;
      s.Open;
      YaEsta := s.FieldByName('YaEsta').AsInteger;
      s.Close;
    finally
      s.Free;
    end;

    if YaEsta = 0 then
    begin
      try
        s := TMDOQuery.Create(nil);
        s.Database := qR_Rend.Database;
        s.Transaction := qR_Rend.Transaction;
        s.SQL.Add('Select Max(IdRend) as Ultima ');
        s.SQL.Add('From R_Rend ');
        s.Open;
        UltRnd := s.FieldByName('Ultima').AsInteger + 1;
        s.Close;
      finally
        s.Free;
      end;
      qR_Rend.Close;
      qR_Rend.ParamByName('IdRen').AsInteger := UltRnd;
      qR_Rend.ParamByName('IdSuc').AsInteger := RendIdSucRen.AsInteger;
      qR_Rend.ParamByName('Desde').AsDate := RendFechaR.AsDateTime;
      qR_Rend.Open;
      qR_Rend.Insert;
    end
    else begin
      raise EUsuario.Create('ya existe una rendición en ese periodo. ')
    end;
  end
  else begin
    qR_Rend.Close;
    qR_Rend.ParamByName('IdRen').AsInteger := RendIdRend.AsInteger;
    qR_Rend.ParamByName('IdSuc').AsInteger := RendIdSucRen.AsInteger;
    qR_Rend.ParamByName('Desde').AsDate := RendFechaR.AsDateTime;
    qR_Rend.Open;
    UltRnd := RendIdRend.AsInteger;
    if (RendTotRend.AsCurrency <> 0) And
       (RendIdCuenta.AsInteger > 0) And
       (RendIdMovBco.AsInteger > 0) then
      Existe := RendIdMovBco.AsInteger;
    if not qR_Rend.IsEmpty then
      qR_Rend.Edit
  end;

  if (UltRnd <= 0) then
    raise EUsuario.Create('Error al grabar Rendición');

  try
    if not qR_Rend.Transaction.InTransaction then
      qR_Rend.Transaction.StartTransaction;
    qR_RendIdRend.AsInteger   := UltRnd;
    qR_RendIdSuc.AsInteger    := RendIdSucRen.AsInteger;
    qR_RendFechaR.AsDateTime  := RendFechaR.AsDateTime;
    qR_RendTVenta.AsCurrency  := RendTotalZ.AsCurrency;
    qR_RendTPesos.AsCurrency  := RendTEfectivo.AsCurrency;
    qR_RendTTickets.AsCurrency:= RendTTickets.AsCurrency;
    qR_RendTTarjeta.AsCurrency:= RendTTarjeta.AsCurrency;
    qR_RendTCheques.AsCurrency:= RendTCheques.AsCurrency;
    qR_RendTSenas.AsCurrency  := RendTCobSen.AsCurrency;
    qR_RendTNCred.AsCurrency  := RendTotalNC.AsCurrency;
    qR_RendTSAF.AsCurrency    := RendTSaF.AsCurrency;
    qR_RendTCOBOSUC.AsCurrency:= RendTotCobOS.AsCurrency;
    qR_RendTCOBRADO.AsCurrency:= RendTotalCob.AsCurrency;
    qR_RendTGastosE.AsCurrency:= RendTotGasEf.AsCurrency;
    qR_RendTGastosT.AsCurrency:= RendTotGasTk.AsCurrency;
    qR_RendDiferencia.AsCurrency := RendDiferencia.AsCurrency;
    qR_RendIdCuenta.AsInteger := RendIdCuenta.AsInteger;
    qR_RendDeposito.AsCurrency:= RendTotRend.AsCurrency;
    qR_RendBolDep.AsString    := RendBoleta.AsString;
    qR_RendIdMovBco.AsInteger := Existe;
    qR_RendFECHAIS.Clear;
    qR_Rend.Post;
    qR_Rend.Transaction.Commit;
  except
    on E:Exception do
    begin
      qR_Rend.Transaction.Rollback;
      raise EUsuario.Create(E.Message);
    end;
  end;
  qR_Rend.Close;
  qR_Rend.ParamByName('IdRen').AsInteger := UltRnd;
  qR_Rend.ParamByName('IdSuc').AsInteger := IdSucRen;
  qR_Rend.ParamByName('Desde').AsDate := edtRendFec.Date;
  qR_Rend.Open;
  Rend.Edit;
  RendIdRend.AsInteger := UltRnd;
  Rend.Post;
  btnImprimir.Enabled := True;
end;

procedure TfrmRendicion.cbRendSucChange(Sender: TObject);
begin
  gDatosSis.Visible := False;
end;

procedure TfrmRendicion.btnNewRendClick(Sender: TObject);
var
  s: TMDOQuery;
  e: Integer;
begin
  try
    IdSucRen := Integer(cbRendSuc.Items.Objects[cbRendSuc.ItemIndex]);
  except
    IdSucRen := 0;
    raise EUsuario.Create('Debe elegir una sucursal. O Sucursal mal elegida');
  end;

  e := NoEncontrado;
  try
    s := TMDOQuery.Create(nil);
    s.Database := dmGestion.dbGestion;
    s.Transaction := dmGestion.trGestion;
    s.SQL.Add('Select IdRend as Esta ');
    s.SQL.Add('From R_Rend ');
    s.SQL.Add('Where IdSuc =:S And ');
    s.SQL.Add('      FechaR =:F ');
    s.ParamByName('S').AsInteger := IdSucRen;
    s.ParamByName('F').AsDate := edtRendFec.Date;
    s.Open;
    e := s.FieldByName('Esta').AsInteger;
    s.Close;
  finally
    s.Free;
  end;


  if e > 0 then
  begin
    New_Rdn := False;
    Leer_Rend(e, IdSucRen, edtRendFec.Date);
  end
  else begin
    if Rend.Active then
      Rend.EmptyDataSet
    else
      Rend.CreateDataSet;
    New_Rdn := True;
    Rend.Append;
  end;
  edtTVenta.SetFocus;
end;

procedure TfrmRendicion.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRendicion.btnGoRendClick(Sender: TObject);
begin
  Calc_Difer;
end;

procedure TfrmRendicion.btnGrabarClick(Sender: TObject);
begin
  Save_Rend;
end;

procedure TfrmRendicion.edtTVentaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmRendicion.edtTVentaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmRendicion.btnImprimirClick(Sender: TObject);
begin
  lblNomSuc.Caption := cbRendSuc.Text;
  lblEmpresa.Caption:= OwnerName;
  rpRendicion.Print;
end;

procedure TfrmRendicion.btnExpRendClick(Sender: TObject);
begin
  with dmGestion do
  begin
    IyC_Exp.DataSet := qRendiciones;
    IyC_Exp.Select;
  end;
end;

procedure TfrmRendicion.btnCalcRendSucClick(Sender: TObject);
begin
  qRendiciones.Close;
  qRendiciones.ParamByName('Suc').AsInteger := Integer(cbQue_Suc.Items.Objects[cbQue_Suc.ItemIndex]);
  qRendiciones.ParamByName('Fec').AsDate := edtDesde.Date;
  qRendiciones.Open;
end;

procedure TfrmRendicion.gRendDblClick(Sender: TObject);
begin
  qR_Rend.Close;
  qR_Rend.ParamByName('IdRen').AsInteger := qRendicionesIdRend.AsInteger;
  qR_Rend.ParamByName('IdSuc').AsInteger := qRendicionesIdSuc.AsInteger;
  qR_Rend.ParamByName('Desde').AsDate := qRendicionesFechaR.AsDateTime;
  qR_Rend.Open;
  if not qR_Rend.IsEmpty then
  begin
    Leer_Rend(qR_RendIdRend.AsInteger,
              qR_RendIdSuc.AsInteger,
              qR_RendFechaR.AsDateTime);
    IdSucRen := qR_RendIdSuc.AsInteger;
    cbRendSuc.ItemIndex := cbQue_Suc.Items.IndexOf(cbQue_Suc.Text);
    edtRendFec.Date := qR_RendFechaR.AsDateTime;
    btnGrabar.Enabled := False;
    btnImprimir.Enabled := True;
    pcRend.ActivePage := tsRendDiaria;
    tsRendDiaria.Show;
  end;
end;

procedure TfrmRendicion.gRendCalcCellColors(Sender: TObject; Field: TField;
          State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if ABS(qRendicionesDiferencia.AsCurrency) > 1 then
    AFont.Color := clRed;
end;

procedure TfrmRendicion.RendIdCuentaValidate(Sender: TField);
var
  s: TMDOQuery;
  y, m, d: Word;
begin
  if RendIdCuenta.AsInteger > 0 then
  begin
    try
      s := TMDOQuery.Create(nil);
      s.Database := dmGestion.dbGestion;
      s.Transaction := dmGestion.trGestion;
      s.SQL.Add('Select Banco, NroCta ');
      s.SQL.Add('From Bancos ');
      s.SQL.Add('Where IdBanco = :C ');
      s.ParamByName('C').AsInteger := RendIdCuenta.AsInteger;
      s.Open;
      if not s.IsEmpty then
      begin
        RendBcoCuenta.AsString := s.FieldByName('Banco').AsString+' '+
                                  s.FieldByName('NroCta').AsString;
        DecodeDate(RendFechaR.AsDateTime, y, m, d);
        try
          RendBoleta.AsInteger := StrToInt(Format('%.4d%.2d%.2d', [y, m, d]));
        except
          RendBoleta.AsInteger := 0;
        end;
      end
      else begin
        RendBcoCuenta.AsString := 'S/Cuenta';
        RendBoleta.AsInteger := 0;
      end;
      s.Close;
    finally
      s.Free;
    end;
  end;
end;

procedure TfrmRendicion.RendIdRendGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.AsInteger = NUEVO_REGISTRO then
    Text := 'Nueva Rendición'
  else
    Text := Sender.AsString;
end;

procedure TfrmRendicion.RendNewRecord(DataSet: TDataSet);
begin
  RendIdRend.AsCurrency := NUEVO_REGISTRO;
  RendIdSucRen.AsCurrency := IdSucRen;
  RendFechaR.AsDateTime   := edtRendFec.Date;
  RendTotalZ.AsCurrency   := 0;
  RendTotalNC.AsCurrency  := 0;
  RendTotalCob.AsCurrency := 0;
  RendTotCobOS.AsCurrency := 0;
  RendTotGasEf.AsCurrency := 0;
  RendTotGasTk.AsCurrency := 0;
  RendTotGasEf.AsCurrency := 0;
  RendTEfectivo.AsCurrency:= 0;
  RendTTarjeta.AsCurrency := 0;
  RendTTickets.AsCurrency := 0;
  RendTCheques.AsCurrency := 0;
  RendIdCuenta.AsCurrency := 0;
  RendTotRend.AsCurrency  := 0;
  RendTSaF.AsCurrency := 0;
  RendTCobSen.AsInteger := 0;
  RendBcoCuenta.AsInteger := 0;
  RendBoleta.AsString := IntToStr(IdBranch);
end;

end.
