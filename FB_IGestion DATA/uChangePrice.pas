unit uChangePrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, Wwdotdot, Wwdbcomb, wwdbdatetimepicker, RzPanel, Math,
  ExtCtrls, RzRadGrp, RzDBRGrp, StdCtrls, Mask, wwdbedit, RzLabel, RzDBLbl,
  DB, wwdblook, RzCommon, MDOQuery, MDOCustomDataSet, MDOTable, ShellApi,
  DBClient, RzTabs, Grids, Wwdbigrd, Wwdbgrid, RzEdit, ppDB, ppDBPipe,
  ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, DateUtils, RzBorder, uTools, Provider;

type
  TfrmChangePrice = class(TForm)

    dsItmPrecios: TDataSource;
    CamPre: TClientDataSet;
    CamPreIdSucursal: TIntegerField;
    CamPreIdArticulo: TIntegerField;
    CamPreTipoOp: TSmallintField;
    CamPreCantCta: TSmallintField;
    CamPreFechaA: TDateField;
    CamPreFechaF: TDateField;
    CamPreCantEtq: TSmallintField;
    CamPreDetProd: TStringField;
    CamPreDiaHora: TDateTimeField;
    CamPreUsuario: TIntegerField;
    CamPreIdAlcIva: TIntegerField;
    CamPrePActual: TCurrencyField;
    CamPrePNuevo: TCurrencyField;
    CamPreValorCtas: TCurrencyField;
    CamPrePBase: TCurrencyField;
    CamPreImpInt: TCurrencyField;
    CamPreStkGrl: TFloatField;
    CamPreStkSuc: TFloatField;
    CamPreMarca: TStringField;
    CamPreDetalle: TStringField;
    CamPreColor: TStringField;
    CamPreExento: TFloatField;
    CamPreCosto: TCurrencyField;
    CamPreIdRegistro: TIntegerField;
    CamPreMarkUp: TFloatField;
    CamPreDetCamPre: TStringField;
    CamPreCostoNew: TCurrencyField;
    CamPreNetoNew: TCurrencyField;
    CamPreGanNew: TFloatField;
    pcCamPreOff: TRzPageControl;
    tsCamOfer: TRzTabSheet;
    tsHistorial: TRzTabSheet;
    gbOferta: TRzGroupBox;
    lblNroCtas: TLabel;
    lblFecDesde: TLabel;
    lblFecHasta: TLabel;
    lblVCuota: TLabel;
    lblSucursal: TLabel;
    edtCantCtas: TwwDBEdit;
    edtVCta: TwwDBEdit;
    edtDesde: TwwDBDateTimePicker;
    edtHasta: TwwDBDateTimePicker;
    cbSucursal: TwwDBComboBox;
    gbEtiquetas: TRzGroupBox;
    lblStkGral: TLabel;
    lblStlSuc: TLabel;
    lblSGral: TRzDBLabel;
    lblSSuc: TRzDBLabel;
    btnImpSG: TRzBitBtn;
    btnImpSS: TRzBitBtn;
    btnAgregarCambio: TRzBitBtn;
    btnAgregarOferta: TRzBitBtn;
    gCambios: TwwDBGrid;
    pnlHistorial: TRzPanel;
    lblDesdeHP: TLabel;
    edtDesdeHP: TRzDateTimeEdit;
    lblHastaHP: TLabel;
    edtHastaHP: TRzDateTimeEdit;
    btnCalcularHistorial: TRzBitBtn;
    btnExportarHistorial: TRzBitBtn;
    btnImprimirHistorial: TRzBitBtn;

    dsArtOfertas: TDataSource;
    qOfertas: TMDOQuery;
    qOfertasIDARTICULO: TIntegerField;
    qOfertasCANTCTAS: TIntegerField;
    qOfertasIDSUCURSAL: TIntegerField;
    qOfertasFECHAALTA: TDateField;
    qOfertasFECHAFIN: TDateField;
    qOfertasPRECIO: TMDOBCDField;
    qOfertasVALORCTAS: TMDOBCDField;
    qOfertasARTDETALLE: TMDOStringField;
    qOfertasCOLOR: TMDOStringField;
    qOfertasNOMBRESUC: TMDOStringField;

    rpOfertas: TppReport;
    ppHeaderBandOfertas: TppHeaderBand;
    ppShapeOfertas: TppShape;
    lblTitulo1: TppLabel;
    lblTitulo2: TppLabel;
    lblProd: TppLabel;
    lblFDesde: TppLabel;
    lblFHasta: TppLabel;
    lblPreOff: TppLabel;
    ppDetailBandOff: TppDetailBand;
    lblDetArt: TppDBText;
    lblDesde: TppDBText;
    lblHasta: TppDBText;
    lblPrecioOf: TppDBText;
    lblCantCta: TppDBText;
    lblVCta: TppDBText;
    ppFooterBandOff: TppFooterBand;
    lblEmision: TppSystemVariable;
    ppdbpOfertas: TppDBPipeline;

    dsqHistorial: TDataSource;
    qHistorial: TMDOQuery;
    qHistorialIDREMMOD: TIntegerField;
    qHistorialIDARTICULO: TIntegerField;
    qHistorialTIPOCOMP: TSmallintField;
    qHistorialNROREMITO: TMDOStringField;
    qHistorialFECHAR: TDateField;
    qHistorialDIAHORA: TDateTimeField;
    qHistorialUSUARIO: TIntegerField;
    qHistorialPRECIOOLD: TMDOBCDField;
    qHistorialPRECIONEW: TMDOBCDField;
    qHistorialDETALLE: TMDOStringField;
    qHistorialCANTCTAS: TSmallintField;
    qHistorialIDSUCURSAL: TIntegerField;
    qHistorialFECHAALTA: TDateField;
    qHistorialFECHAFIN: TDateField;
    qHistorialVALORCTAS: TMDOBCDField;
    qHistorialDETSUC: TMDOStringField;
    qHistorialDETPROD: TMDOStringField;
    qHistorialNOMBRE: TMDOStringField;
    qHistorialDESCCORTA: TMDOStringField;

    brCambios: TRzBorder;
    tsOfertasVig: TRzTabSheet;
    pnlBtnCamPre: TRzPanel;
    btnGrabar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    btnCalculadora: TRzBitBtn;
    btnPrintOfertas: TRzBitBtn;
    gOfertas: TwwDBGrid;
    qHistorialTipoC: TStringField;
    pnlSalirPre: TRzPanel;
    btnSalirPre: TRzBitBtn;
    tsPreciosEspeciales: TRzTabSheet;
    gArtPreEsp: TwwDBGrid;
    dspPreciosEspeciales: TDataSetProvider;
    ArtPreEsp: TClientDataSet;
    ArtPreEspIdArticulo: TIntegerField;
    ArtPreEspIdSucursal: TIntegerField;
    ArtPreEspPRECIOESP: TBCDField;
    ArtPreEspDURACION: TDateField;
    ArtPreEspFECHAALTA: TDateField;
    dsArtPreEsp: TDataSource;
    pnlCtrlPE: TRzPanel;
    btnExporPES: TRzBitBtn;
    btnCancelPES: TRzBitBtn;
    btnAgregarPES: TRzBitBtn;
    cbPESucur: TwwDBComboBox;
    CamPreCantAut: TIntegerField;
    qOfertasCANTAUT: TIntegerField;
    qOfertasCANTVEN: TIntegerField;
    edtCantAut: TwwDBEdit;
    lblCAut: TLabel;
    gbProducto: TRzGroupBox;
    lblCodArt: TLabel;
    lblActual: TLabel;
    lblNuevo: TLabel;
    lblMarca: TRzDBLabel;
    lblDetalle: TRzDBLabel;
    lblColor: TRzDBLabel;
    lblPrecioAct: TRzDBLabel;
    lblMotivo: TLabel;
    lblDetProd: TLabel;
    edtCodArt: TwwDBEdit;
    edtPNuevo: TwwDBEdit;
    edtDetCam: TwwDBEdit;
    ArtPreEspDETART: TStringField;
    ArtPreEspPRECIOACTUAL: TBCDField;
    tsOffEsp: TRzTabSheet;
    OffEsp: TClientDataSet;
    dsOffEsp: TDataSource;
    gOffEsp: TwwDBGrid;
    cbAreasOE: TwwDBLookupCombo;
    cbGrupoOE: TwwDBLookupCombo;
    cbSubGrOE: TwwDBLookupCombo;
    cbTarjOE: TwwDBLookupCombo;
    qAreasOE: TMDOQuery;
    dsqAreasOE: TDataSource;
    qAreasOEIDAREA: TIntegerField;
    qAreasOEAREA: TMDOStringField;
    qGruposOE: TMDOQuery;
    dsqGruposOE: TDataSource;
    qSubGrOE: TMDOQuery;
    dsqSubGrOE: TDataSource;
    qSucurOE: TMDOQuery;
    dsqSucurOE: TDataSource;
    qTarjOE: TMDOQuery;
    dsqTarjOE: TDataSource;
    qGruposOEIDGRUPO: TIntegerField;
    qGruposOEGRUPO: TMDOStringField;
    qGruposOEIDAREA: TIntegerField;
    qSucurOEIDSUCURSAL: TIntegerField;
    qSucurOENOMBRESUC: TMDOStringField;
    qSubGrOEIDAREA: TIntegerField;
    qSubGrOEIDGRUPO: TIntegerField;
    qSubGrOEIDSUBGRUPO: TIntegerField;
    qSubGrOESUBGRUPO: TMDOStringField;
    qTarjOEIDTARJETA: TIntegerField;
    qTarjOETARJETA: TMDOStringField;
    dspOfertasEsp: TDataSetProvider;
    pnlTopDesEsp: TRzPanel;
    btnSaveDescEsp: TRzBitBtn;
    qOfertasEsp: TMDOQuery;

    OffEspIDSUCUR: TIntegerField;
    OffEspIDAREA: TIntegerField;
    OffEspIDGRUPO: TIntegerField;
    OffEspIDSUBGR: TIntegerField;
    OffEspIDTARJETA: TIntegerField;
    OffEspNROCTAS: TSmallintField;
    OffEspDCTOPER: TBCDField;
    OffEspIDREGLA: TIntegerField;
    cbSucOE: TwwDBComboBox;
    qPreciosEspeciales: TMDOQuery;
    OffEspCOEFTAR: TBCDField;
    lblAuxDet: TRzDBLabel;
    CamPreDetAux: TStringField;

    procedure edtCodArtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAgregarCambioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAgregarOfertaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImpSGClick(Sender: TObject);
    procedure btnImpSSClick(Sender: TObject);
    procedure edtVCtaKeyPress(Sender: TObject; var Key: Char);
    procedure CamPreNewRecord(DataSet: TDataSet);
    procedure CamPreIdArticuloValidate(Sender: TField);
    procedure edtPNuevoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPNuevoKeyPress(Sender: TObject; var Key: Char);
    procedure CamPreCantCtaChange(Sender: TField);
    procedure CamPreAfterInsert(DataSet: TDataSet);
    procedure CamPreAfterPost(DataSet: TDataSet);
    procedure CamPreBeforeInsert(DataSet: TDataSet);
    procedure CamPreBeforePost(DataSet: TDataSet);
    procedure CamPreIdSucursalValidate(Sender: TField);
    procedure btnCalculadoraClick(Sender: TObject);
    procedure btnPrintOfertasClick(Sender: TObject);
    procedure btnCalcularHistorialClick(Sender: TObject);
    procedure btnExportarHistorialClick(Sender: TObject);
    procedure pcCamPreOffClose(Sender: TObject; var AllowClose: Boolean);
    procedure qOfertasNOMBRESUCGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure gOfertasDblClick(Sender: TObject);
    procedure qHistorialCalcFields(DataSet: TDataSet);
    procedure btnSalirPreClick(Sender: TObject);
    procedure ArtPreEspAfterPost(DataSet: TDataSet);
    procedure ArtPreEspNewRecord(DataSet: TDataSet);
    procedure gArtPreEspKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ArtPreEspIdArticuloValidate(Sender: TField);
    procedure ArtPreEspIdArticuloSetText(Sender: TField; const Text: string);
    procedure gArtPreEspEnter(Sender: TObject);
    procedure btnExporPESClick(Sender: TObject);
    procedure btnAgregarPESClick(Sender: TObject);
    procedure btnCancelPESClick(Sender: TObject);
    procedure ArtPreEspCalcFields(DataSet: TDataSet);
    procedure OffEspAfterOpen(DataSet: TDataSet);
    procedure OffEspNewRecord(DataSet: TDataSet);
    procedure OffEspIdReglaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnSaveDescEspClick(Sender: TObject);
    procedure OffEspReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure OffEspBeforePost(DataSet: TDataSet);
    procedure gArtPreEspDblClick(Sender: TObject);
    procedure gOffEspKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gOffEspKeyPress(Sender: TObject; var Key: Char);
    procedure gArtPreEspKeyPress(Sender: TObject; var Key: Char);
    procedure OffEspAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    AddReg: Boolean;
    TipoCam: TTipoCamPre;
    BuscandoArt: Boolean;

    procedure DatosArticuloBuscado(Sender: TField; Text: String; Var Art: TDatos_Art);
    procedure Grabar_PS;
    procedure Grabar_CP;

    procedure Abrir_Consultas(Desde, Hasta: TDate);
    procedure SetOfertas;
    function SetPrecio: Boolean;
  public
    { Public declarations }
  end;

var
  frmChangePrice: TfrmChangePrice;

implementation

uses udmGestion, udmSaveFile, uImpCodBar, uABMArticulos, uSearchProd;


{$R *.dfm}

procedure TfrmChangePrice.DatosArticuloBuscado(Sender: TField; Text: String; Var Art: TDatos_Art);
var
  V, Err: Integer;
  Searched: String;
  ElTalle: Integer;
begin
  ElTalle := SIN_DETALLE_TALLE;
  Searched := Text;
  if Trim(Searched) > Vacio then
  begin
    if Control_Talles then
    begin
      if Length(Searched) = 12 then
      begin
        try
          ElTalle := StrToInt(Copy(Searched, 9, 3));
        except
          ElTalle := SIN_DETALLE_TALLE;
        end;
        Searched := Copy(Searched, 1, 7);
      end;
    end;
    if GetDatosArt(0, Searched, Datos_Art) then
    begin
      if Datos_Art.Activo = Verdadero then
      begin
        Art := Datos_Art;
        Sender.AsInteger := Datos_Art.IdArticulo;
      end
      else
        raise EUsuario.Create('Producto DESACTIVADO no se puede utilizar.-');
    end
    else begin
      Val(Searched, V, Err);
      if Err = 0 then
      begin
        if GetDatosArt(V, Vacio, Datos_Art) then
        begin
          if Datos_Art.Activo = Verdadero then
          begin
            Art := Datos_Art;
            Sender.AsInteger := Datos_Art.IdArticulo;
          end
          else
            raise EUsuario.Create('Producto DESACTIVADO no se puede utilizar.-');
        end
        else begin
          Elegido := Search_Prod(Searched, Tarea);
          if Elegido.IdArticulo > NoEncontrado then
          begin
            if GetDatosArt(Elegido.IdArticulo, Vacio, Datos_Art) then
            begin
              if Datos_Art.Activo = Verdadero then
              begin
                Art := Datos_Art;
                Sender.AsInteger := Datos_Art.IdArticulo;
              end
              else
                raise EUsuario.Create('Producto DESACTIVADO no se puede utilizar.-');
            end;
          end
          else
            raise EUsuario.Create('No se encontró el producto');
        end;
      end
      else begin
        Elegido := Search_Prod(Searched, Tarea);
        if Elegido.IdArticulo > NoEncontrado then
        begin
          if GetDatosArt(Elegido.IdArticulo, Vacio, Datos_Art) then
          begin
            if Datos_Art.Activo = Verdadero then
            begin
              Art := Datos_Art;
              Sender.AsInteger := Elegido.IdArticulo;
            end
            else
              raise EUsuario.Create('Producto DESACTIVADO no se puede utilizar.-');
          end
        end
        else
          raise Exception.Create('No se encontró el producto');
      end;
    end;
  end
  else begin
    Elegido := Search_Prod(Searched, Tarea);
    if Elegido.IdArticulo > NoEncontrado then
    begin
      if GetDatosArt(Elegido.IdArticulo, Vacio, Datos_Art) then
      begin
        if Datos_Art.Activo = Verdadero then
        begin
          Art := Datos_Art;
          Sender.AsInteger := Elegido.IdArticulo;
        end
        else
          raise EUsuario.Create('Producto DESACTIVADO no se puede utilizar.-');
      end
    end
    else
      raise Exception.Create('No se encontró el producto');
  end;
end;

procedure TfrmChangePrice.Grabar_PS;
begin
  if ArtPreEsp.State in dsEditModes then
  begin
    try
      ArtPreEsp.Post;
      Application.MessageBox('Precios especiales grabados correctamente', 'Precio especiales', MB_ICONINFORMATION);
    except
      on E:Exception do
      begin
        raise EUsuario.Create('Error datos No grabados '+E.Message);
      end;
    end;
  end;
  UpDate_DatosSistema(0, 2);
end;

procedure TfrmChangePrice.Grabar_CP;
var
  Q_Hago: Boolean;
begin
  Q_Hago := False;
  if (CamPre.State in dsEditModes) and
     (AddReg) then
  begin
    Case TipoCam of
      cpTemporal  : Q_Hago := (Application.MessageBox('¿Graba la Oferta del Producto?',
                   'Modificación Temporal', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = ID_YES);
      cpPermanente: Q_Hago := (Application.MessageBox('¿Graba el Cambio de Precios?',
                   'Modificación Permanente', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = ID_YES);
    end;
    if Q_Hago then
    begin
      CamPre.Post;
      if SetPrecio then
      begin
        gbEtiquetas.Enabled := True;
        ShowMessage('El registro se grabo correctamente.-');
      end;
    end
    else begin
      CamPre.Cancel;
      ShowMessage('El registro no se grabo.-');
    end;
  end;
  btnGrabar.Enabled := False;
  Abrir_Consultas(StartOfTheMonth(Date), Date);
end;

procedure TfrmChangePrice.SetOfertas;
var
  CantOf: Integer;
  t: TMDOQuery;
begin
  CantOf := 0;
  try
    t := TMDOQuery.Create(nil);
    t.Database := dmGestion.dbGestion;
    t.Transaction := dmGestion.trUpDateArt;
    t.SQL.Add('Select Count(IdArticulo) as CantO ');
    t.SQL.Add('From ArtOfertas ');
    t.SQL.Add('Where IdArticulo =:IdArt And ');
    t.SQL.Add('      CantCtas =:CantC And ');
    t.SQL.Add('      IdSucursal =:IdSuc ');
    t.ParamByName('IdArt').AsInteger := CamPreIdArticulo.AsInteger;
    t.ParamByName('CantC').AsInteger := CamPreCantCta.AsInteger;
    t.ParamByName('IdSuc').AsInteger := CamPreIdSucursal.AsInteger;
    t.Open;
    CantOf := t.FieldByName('CantO').AsInteger;
    t.Close;
  finally
    t.Free;
  end;

  try
    t := TMDOQuery.Create(nil);
    t.Database := dmGestion.dbGestion;
    t.Transaction := dmGestion.trUpDateArt;
    if CantOf = 0 then
    begin
      t.SQL.Add('INSERT INTO ARTOFERTAS ');
      t.SQL.Add('(IDARTICULO, CANTCTAS, IDSUCURSAL, FECHAALTA, ');
      t.SQL.Add(' FECHAFIN, PNETO, PRECIO, GANANCIAO, VALORCTAS, ');
      t.SQL.Add(' CANTAUT, CANTVEN) ');
      t.SQL.Add('VALUES ');
      t.SQL.Add('(:IDARTICULO, :CANTCTAS, :IDSUCURSAL, :FECHAALTA, ');
      t.SQL.Add(' :FECHAFIN, :PNETO, :PRECIO, :GANANCIAO, :VALORCTAS, ');
      t.SQL.Add(' :CANTAUT, :CANTVEN) ');
    end
    else begin
      t.SQL.Add('UPDATE ARTOFERTAS SET ');
      t.SQL.Add('  FECHAALTA = :FECHAALTA, ');
      t.SQL.Add('  FECHAFIN = :FECHAFIN, ');
      t.SQL.Add('  PNETO = :PNETO, ');
      t.SQL.Add('  PRECIO = :PRECIO, ');
      t.SQL.Add('  GANANCIAO = :GANANCIAO, ');
      t.SQL.Add('  VALORCTAS = :VALORCTAS, ');
      t.SQL.Add('  CANTAUT = :CANTAUT, ');
      t.SQL.Add('  CANTVEN = :CANTVEN ');
      t.SQL.Add('WHERE IDARTICULO = :IDARTICULO AND ');
      t.SQL.Add('  CANTCTAS = :CANTCTAS AND ');
      t.SQL.Add('  IDSUCURSAL = :IDSUCURSAL ');
    end;
    t.ParamByName('IDARTICULO').AsInteger := CamPreIdArticulo.AsInteger;
    t.ParamByName('CANTCTAS').AsInteger := CamPreCantCta.AsInteger;
    t.ParamByName('IDSUCURSAL').AsInteger := CamPreIdSucursal.AsInteger;
    t.ParamByName('FECHAALTA').AsDate := CamPreFechaA.AsDateTime;
    t.ParamByName('FECHAFIN').AsDate := CamPreFechaF.AsDateTime;
    t.ParamByName('PNETO').AsCurrency := CamPreNetoNew.AsCurrency;
    t.ParamByName('PRECIO').AsCurrency := CamPrePNuevo.AsCurrency;
    t.ParamByName('GANANCIAO').AsCurrency := CamPreGanNew.AsCurrency;
    t.ParamByName('VALORCTAS').AsCurrency := CamPreValorCtas.AsCurrency;
    t.ParamByName('CANTAUT').AsInteger := CamPreCantAut.AsInteger;
    t.ParamByName('CANTVEN').AsInteger := 0;
    t.ExecSQL;
  finally
    t.Free;
  end;
  UpDate_DatosSistema(CamPreIdSucursal.AsInteger, 2);
end;

function TfrmChangePrice.SetPrecio: Boolean;
var
  NroMod: Integer;
  q: TMDOQuery;
begin
  try
    Screen.Cursor := crSqlWait;
    Result := True;
    NroMod := 0;
    try
      if dmGestion.trProc.InTransaction then
         dmGestion.trProc.Commit;
    except
      on E:Exception do
      begin
        dmGestion.trProc.Rollback;
        Screen.Cursor := crDefault;
        Result := False;
        raise EUsuario.Create('ERROR. No se puede actualizar el Contador: '+E.Message+
                              ' Archivo usado por otro usuario. Reintente ');
      end;
    end;
    try                           
      if not dmGestion.trUpDateArt.InTransaction then
        dmGestion.trUpDateArt.StartTransaction;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := dmGestion.trUpDateArt;
        if CamPreTipoOp.AsInteger = Integer(cpTemporal) then
        begin
          q.SQL.Add('UpDate Articulos ');
          q.SQL.Add('Set Oferta = 1, ');
          q.SQL.Add('    DurOferta = :D, ');
          q.SQL.Add('    FechaAlta = :F ');
          q.SQL.Add('Where IdArticulo = :A ');
          q.ParamByName('D').AsDate := CamPreFechaF.AsDateTime;
          q.ParamByName('F').AsDate := Date;
          q.ParamByName('A').AsInteger := CamPreIdArticulo.AsInteger;
          q.ExecSQL;
          SetOfertas;
        end
        else begin
          q.SQL.Add('UpDate Articulos ');
          q.SQL.Add('Set PrecioAnt = :PrcAnt, ');
          q.SQL.Add('    Precio = :Precio, ');
          q.SQL.Add('    PBase = :PrNeto, ');
          q.SQL.Add('    Ganancia = :GanArt, ');
          q.SQL.Add('    FechaAlta = :FecAlt, ');
          q.SQL.Add('    Usuario = :Usuario, ');
          q.SQL.Add('    Oferta = 0, ');
          q.SQL.Add('    DurOferta = null ');
          q.SQL.Add('Where IdArticulo = :Id_Art ');
          q.ParamByName('Id_Art').AsInteger := CamPreIdArticulo.AsInteger;
          q.ParamByName('PrcAnt').AsCurrency := CamPrePActual.AsCurrency;
          q.ParamByName('Precio').AsCurrency := CamPrePNuevo.AsCurrency;
          q.ParamByName('PrNeto').AsCurrency := CamPreNetoNew.AsCurrency;
          q.ParamByName('GanArt').AsFloat := CamPreGanNew.AsCurrency;;
          q.ParamByName('FecAlt').AsDate := CamPreFechaA.AsDateTime;
          q.ParamByName('Usuario').AsInteger := Usuario;
          q.ExecSQL;
        end;
      finally
        q.Free;
      end;

      NroMod := dmSaveFile.Get_Ultimos(RegPrc);
      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := dmGestion.trUpDateArt;
        q.SQL.Add('INSERT INTO ARTMODPRC ');
        q.SQL.Add('  (IDREMMOD, IDARTICULO, TIPOCOMP, NROREMITO, FECHAR, DIAHORA, ');
        q.SQL.Add('   USUARIO, COSTOOLD, COSTONEW, PRECIOOLD, PRECIONEW, DETALLE, ');
        q.SQL.Add('   CANTCTAS, IDSUCURSAL, FECHAALTA, FECHAFIN, VALORCTAS) ');
        q.SQL.Add('VALUES ');
        q.SQL.Add('  (:IDREMMOD, :IDARTICULO, :TIPOCOMP, :NROREMITO, :FECHAR, ');
        q.SQL.Add('   :DIAHORA, :USUARIO, :COSTOOLD, :COSTONEW, :PRECIOOLD,  ');
        q.SQL.Add('   :PRECIONEW, :DETALLE, :CANTCTAS, :IDSUCURSAL, :FECHAALTA, ');
        q.SQL.Add('   :FECHAFIN, :VALORCTAS) ');
        q.ParamByName('IDREMMOD').AsInteger := NroMod;
        q.ParamByName('IDARTICULO').AsInteger := CamPreIdArticulo.AsInteger;
        q.ParamByName('TIPOCOMP').AsInteger := RemitoPrecios;
        q.ParamByName('NROREMITO').AsString := Format('%.4d-%.8d',[IdBranch, NroMod]);
        q.ParamByName('FECHAR').AsDate := Date;
        q.ParamByName('DIAHORA').AsDateTime := Now;
        q.ParamByName('USUARIO').AsInteger := Usuario;
        q.ParamByName('COSTOOLD').AsCurrency := CamPreCosto.AsCurrency;
        q.ParamByName('COSTONEW').AsCurrency := CamPreCosto.AsCurrency;
        q.ParamByName('PRECIOOLD').AsCurrency := CamPrePActual.AsCurrency;
        q.ParamByName('PRECIONEW').AsCurrency := CamPrePNuevo.AsCurrency;
        q.ParamByName('DETALLE').AsString := CamPreDetCamPre.AsString;
        q.ParamByName('CANTCTAS').AsInteger := CamPreCantCta.AsInteger;
        q.ParamByName('IDSUCURSAL').AsInteger := CamPreIdSucursal.AsInteger;
        q.ParamByName('FECHAALTA').AsDate := CamPreFechaA.AsDateTime;
        q.ParamByName('FECHAFIN').AsDate := CamPreFechaF.AsDateTime;
        q.ParamByName('VALORCTAS').AsCurrency := CamPreValorCtas.AsCurrency;
        q.ExecSQL;
      finally
        q.Free;
      end;
      dmGestion.trUpDateArt.Commit;
    except
      on E:Exception do
      begin
        dmGestion.trUpDateArt.Rollback;
        Screen.Cursor := crDefault;
        Result := False;
        raise EUsuario.Create('ERROR. No se puede actualizar el precio: '+E.Message+
                              ' Archivo usado por otro usuario. Reintente ');
      end;
    end;
    UpDate_DatosSistema(0, 1);
  finally
    AddReg := False;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmChangePrice.edtCodArtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Text: String;
begin
  if Key = VK_F3 then
  begin
    Elegido := Search_Prod(Text, Tarea);
    if Elegido.IdArticulo <> NoEncontrado then
      CamPreIdArticulo.AsInteger := Elegido.IdArticulo
    else
      ShowMessage('Producto no encontrado.-')
  end
  else begin
    if Key = VK_F5 then
      Calculadora(Handle)
    else
      {$INCLUDE IyC_NextEdit.Inc}
  end;
end;

procedure TfrmChangePrice.btnGrabarClick(Sender: TObject);
begin
  Grabar_CP
end;

procedure TfrmChangePrice.btnCancelarClick(Sender: TObject);
begin
  AddReg := False;
  if CamPre.State in dsEditModes then
  begin
    CamPre.Cancel;
    btnCancelar.Enabled := False;
    gbEtiquetas.Enabled := False;
  end;
end;

procedure TfrmChangePrice.btnCancelPESClick(Sender: TObject);
begin
  if ArtPreEsp.State in dsEditModes then
    ArtPreEsp.Cancel;
end;

procedure TfrmChangePrice.ArtPreEspAfterPost(DataSet: TDataSet);
var
  NroMod: Integer;
  q: TMDOQuery;
begin
  if not dmGestion.trUpDateArt.InTransaction then
    dmGestion.trUpDateArt.StartTransaction;
  try
    if ArtPreEsp.ApplyUpdates(0) > 0 then
      Abort;
    NroMod := dmSaveFile.Get_Ultimos(RegPrc);
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.trUpDateArt;
      q.SQL.Add('INSERT INTO ARTMODPRC ');
      q.SQL.Add('  (IDREMMOD, IDARTICULO, TIPOCOMP, NROREMITO, FECHAR, DIAHORA, ');
      q.SQL.Add('   USUARIO, COSTOOLD, COSTONEW, PRECIOOLD, PRECIONEW, DETALLE, ');
      q.SQL.Add('   CANTCTAS, IDSUCURSAL, FECHAALTA, FECHAFIN, VALORCTAS) ');
      q.SQL.Add('VALUES ');
      q.SQL.Add('  (:IDREMMOD, :IDARTICULO, :TIPOCOMP, :NROREMITO, :FECHAR, ');
      q.SQL.Add('   :DIAHORA, :USUARIO, :COSTOOLD, :COSTONEW, :PRECIOOLD,  ');
      q.SQL.Add('   :PRECIONEW, :DETALLE, :CANTCTAS, :IDSUCURSAL, :FECHAALTA, ');
      q.SQL.Add('   :FECHAFIN, :VALORCTAS) ');
      q.ParamByName('IDREMMOD').AsInteger := NroMod;
      q.ParamByName('IDARTICULO').AsInteger := ArtPreEspIdArticulo.AsInteger;
      q.ParamByName('TIPOCOMP').AsInteger := RemitoPrecios;
      q.ParamByName('NROREMITO').AsString := Format('%.4d-%.8d',[IdBranch, NroMod]);
      q.ParamByName('FECHAR').AsDate := Date;
      q.ParamByName('DIAHORA').AsDateTime := Now;
      q.ParamByName('USUARIO').AsInteger := Usuario;
      q.ParamByName('COSTOOLD').AsCurrency := 0;
      q.ParamByName('COSTONEW').AsCurrency := 0;
      q.ParamByName('PRECIOOLD').AsCurrency := ArtPreEspPRECIOACTUAL.AsCurrency;
      q.ParamByName('PRECIONEW').AsCurrency := ArtPreEspPRECIOESP.AsCurrency;
      q.ParamByName('DETALLE').AsString := ArtPreEspDETART.AsString;
      q.ParamByName('CANTCTAS').AsInteger := 0;
      q.ParamByName('IDSUCURSAL').AsInteger := ArtPreEspIdSucursal.AsInteger;
      q.ParamByName('FECHAALTA').AsDate := ArtPreEspFECHAALTA.AsDateTime;
      q.ParamByName('FECHAFIN').AsDate := ArtPreEspDURACION.AsDateTime;
      q.ParamByName('VALORCTAS').AsCurrency := 0;
      q.ExecSQL;
    finally
      q.Free;
    end;
    dmGestion.trUpDateArt.Commit;
  except
    on E:Exception do
    begin
      dmGestion.trUpDateArt.Rollback;
      raise EUsuario.Create('Error '+E.Message);
    end;
  end;
end;

procedure TfrmChangePrice.ArtPreEspCalcFields(DataSet: TDataSet);
begin
  if GetDatosArt(ArtPreEspIdArticulo.AsInteger, Vacio, Datos_Art) then
  begin
    ArtPreEspDetArt.AsString := Datos_Art.DetProd;
    ArtPreEspPrecioActual.AsCurrency := Datos_Art.Precio;
  end;
end;

procedure TfrmChangePrice.ArtPreEspIdArticuloSetText(Sender: TField; const Text: string);
begin
  if not BuscandoArt then
  begin
    try
      DatosArticuloBuscado(Sender, Text, Datos_Art);
    except
      on E:Exception do
      begin
        raise EUsuario.Create(E.Message);
      end;
    end;
  end;
end;

procedure TfrmChangePrice.ArtPreEspIdArticuloValidate(Sender: TField);
begin
  if (Sender.AsInteger > 0) and
     (not Sender.IsNull) and
     (not BuscandoArt) then
  begin
    try
      BuscandoArt := True;
      if GetDatosArt(Sender.AsInteger, Sender.AsString, Datos_Art) then
      begin
        ArtPreEspDetArt.AsString := Datos_Art.DetProd;
        ArtPreEspPrecioActual.AsCurrency := Datos_Art.Precio;
      end;
    finally
      BuscandoArt := False;
    end;
  end
end;

procedure TfrmChangePrice.ArtPreEspNewRecord(DataSet: TDataSet);
begin
  ArtPreEspFECHAALTA.AsDateTime := Date;
end;

procedure TfrmChangePrice.btnAgregarCambioClick(Sender: TObject);
begin
  gbOferta.Enabled := False;
  gbEtiquetas.Enabled := False;
  CamPre.Close;
  edtCodArt.SetFocus;
  TipoCam := cpPermanente;
  if CamPre.Active then
    CamPre.EmptyDataSet
  else
    CamPre.CreateDataSet;
  CamPre.Append;
end;

procedure TfrmChangePrice.Abrir_Consultas(Desde, Hasta: TDate);
begin
  btnExportarHistorial.Enabled := False;
  qHistorial.Close;
  qHistorial.ParamByName('Desde').AsDate := Desde;
  qHistorial.ParamByName('Hasta').AsDate := Hasta;
  qHistorial.Open;
  if not qHistorial.IsEmpty then
    btnExportarHistorial.Enabled := True;
  qOfertas.Open;
end;

procedure TfrmChangePrice.btnAgregarOfertaClick(Sender: TObject);
begin
  gbOferta.Enabled := True;
  gbEtiquetas.Enabled := False;
  CamPre.Close;
  edtCodArt.SetFocus;
  TipoCam := cpTemporal;
  if CamPre.Active then
    CamPre.EmptyDataSet
  else
    CamPre.CreateDataSet;
  CamPre.Append;
end;

procedure TfrmChangePrice.btnAgregarPESClick(Sender: TObject);
begin
  ArtPreEsp.Insert;
  gArtPreEsp.SetFocus;
end;

procedure TfrmChangePrice.FormCreate(Sender: TObject);
begin
  Check_Oferta;
  OffEsp.Close;
  OffEsp.Open;
  tsOffEsp.TabVisible := True;
  TipoCam := cpPermanente;
  AddReg := False;
  edtCodArt.Text := '0';
  cbSucursal.Items.Clear;
  cbSucursal.Items.Add('TODAS'+ #9 + '0');
  cbSucOE.Items.Clear;
  cbSucOE.Items.Add('TODAS'+ #9 + '0');
  cbPESucur.Items.Clear;
  with dmGestion do
  begin
    Sucursales.Open;
    Sucursales.First;
    while not Sucursales.Eof do
    begin
      cbSucursal.Items.Add(SucursalesNombreSuc.AsString+ #9 + SucursalesIdSucursal.AsString);
      cbPESucur.Items.Add(SucursalesNombreSuc.AsString+ #9 + SucursalesIdSucursal.AsString);
      cbSucOE.Items.Add(SucursalesNombreSuc.AsString+ #9 + SucursalesIdSucursal.AsString);
      Sucursales.Next;
    end;
  end;
  cbSucursal.MapList := True;
  cbSucursal.ApplyList;
  cbPESucur.MapList := True;
  cbPESucur.ApplyList;
  cbSucOE.MapList := True;
  cbSucOE.ApplyList;
  ArtPreEsp.Open;
  BuscandoArt := False;
end;

procedure TfrmChangePrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Grabar_PS;
  if ArtPreEsp.Active then
    ArtPreEsp.Close;
  if CamPre.Active then
    CamPre.Close;
  Action := caFree;
end;

procedure TfrmChangePrice.FormShow(Sender: TObject);
begin
  edtDesdeHP.Date := StartOfTheMonth(Date);
  edtHastaHP.Date := Date;
  Abrir_Consultas(edtDesdeHP.Date, edtHastaHP.Date);
  if Tarea > Nivel_Mod then
    btnAgregarOferta.Enabled := False;
end;

procedure TfrmChangePrice.gArtPreEspDblClick(Sender: TObject);
var
  q: TMDOQuery;
begin
  if not ArtPreEsp.IsEmpty then
  begin
    if Application.MessageBox('¿Borra el registro de precios elegido?',
       'Precios especiales', MB_ICONQUESTION + MB_YESNO) = ID_YES then
    begin
      try
        if not dmGestion.trUpDateArt.InTransaction then
          dmGestion.trUpDateArt.StartTransaction;
        try
          q := TMDOQuery.Create(nil);
          q.Database := dmGestion.dbGestion;
          q.Transaction := dmGestion.trUpDateArt;
          q.SQL.Add('Delete From ArtPreEsp ');
          q.SQL.Add('Where (IdArticulo = :A) And ');
          q.SQL.Add('      (IdSucursal = :S) ');
          q.ParamByName('A').AsInteger := ArtPreEspIdArticulo.AsInteger;
          q.ParamByName('S').AsInteger := ArtPreEspIdSucursal.AsInteger;
          q.ExecSQL;
        finally
          q.Free;
        end;
        dmGestion.trUpDateArt.Commit;
      except
        on E:Exception do
        begin
          dmGestion.trUpDateArt.Rollback;
          raise EUsuario.Create('Error al borrar precio especial: '+E.Message);
        end;
      end;
      ArtPreEsp.Close;
      ArtPreEsp.Open;
    end;
  end;
end;

procedure TfrmChangePrice.gArtPreEspEnter(Sender: TObject);
begin
  if (gArtPreEsp.SelectedField.FieldName = 'DetArt') then
  begin
    if Atras then
      gArtPreEsp.SelectedIndex := gArtPreEsp.SelectedIndex - 1
    else
      gArtPreEsp.SelectedIndex := gArtPreEsp.SelectedIndex + 1;
  end;

  if (gArtPreEsp.SelectedField.FieldName = 'PrecioActual')then
  begin
    if Atras then
      gArtPreEsp.SelectedIndex := gArtPreEsp.SelectedIndex - 1
    else
      gArtPreEsp.SelectedIndex := gArtPreEsp.SelectedIndex + 1;
  end;
end;

procedure TfrmChangePrice.gArtPreEspKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  FillChar(Elegido, SizeOf(Elegido), NoEncontrado);
  if Shift = [] then
  begin
    case Key of
      VK_RIGHT,
      VK_RETURN,
      VK_TAB    : Atras := False;
      VK_LEFT   : Atras := True;
      VK_F3     : if gArtPreEsp.SelectedField.FieldName = ArtPreEspIdArticulo.FieldName then
                    Elegido := Search_Prod(Vacio, Tarea);
      VK_F5     : Calculadora(Handle);
      VK_ESCAPE : btnSalirPre.SetFocus; // Terminar modificacion/alta de precios
      else
        inherited KeyDown(Key, Shift);
    end;
    if Elegido.IdArticulo <> NoEncontrado then
    begin
      ArtPreEsp.Edit;
      ArtPreEspIdArticulo.AsInteger := Elegido.IdArticulo;
    end;
  end;
end;

procedure TfrmChangePrice.gArtPreEspKeyPress(Sender: TObject; var Key: Char);
begin
  if (gArtPreEsp.SelectedField.DataType in [ftFloat, ftCurrency, ftBCD]) and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

procedure TfrmChangePrice.gOfertasDblClick(Sender: TObject);
var
  q: TMDOQuery;
begin
  if not qOfertas.IsEmpty then
  begin
    if Application.MessageBox('¿Borra la oferta del producto elegido?',
       'Ofertas', MB_ICONQUESTION + MB_YESNO) = ID_YES then
    begin
      try
        if not dmGestion.trGestion.InTransaction then
          dmGestion.trGestion.StartTransaction;
        try
          q := TMDOQuery.Create(nil);
          q.Database := dmGestion.dbGestion;
          q.Transaction := dmGestion.trGestion;
          q.SQL.Add('Delete From ARTOFERTAS  ');
          q.SQL.Add('Where IDARTICULO = :I and ');
          q.SQL.Add('      CANTCTAS = :C And ');
          q.SQL.Add('      IDSUCURSAL = :S ');
          q.ParamByName('I').AsInteger := qOfertasIDARTICULO.AsInteger;
          q.ParamByName('C').AsInteger := qOfertasCANTCTAS.AsInteger;
          q.ParamByName('S').AsInteger := qOfertasIDSUCURSAL.AsInteger;
          q.ExecSQL;
        finally
          q.Free;
        end;
        try
          q := TMDOQuery.Create(nil);
          q.Database := dmGestion.dbGestion;
          q.Transaction := dmGestion.trGestion;
          q.SQL.Add('UpDate Articulos A ');
          q.SQL.Add('Set A.Oferta = 0, ');
          q.SQL.Add('    A.DurOferta = null ');
          q.SQL.Add('Where (A.IdArticulo = :A) And ');
          q.SQL.Add('      (A.IdArticulo not in ( ');
          q.SQL.Add('  Select O.IdArticulo From ArtOfertas O ');
          q.SQL.Add('  Where O.IdArticulo = A.IdArticulo)) ');
          q.ParamByName('A').AsInteger := qOfertasIDARTICULO.AsInteger;
          q.ExecSQL;
        finally
          q.Free;
        end;
        dmGestion.trGestion.Commit;
      except
        on E:Exception do
        begin
          dmGestion.trGestion.Rollback;
          raise EUsuario.Create('Error al borrar oferta: '+E.Message);
        end;
      end;
      qOfertas.Open;
    end;
  end;
end;

procedure TfrmChangePrice.gOffEspKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Shift = [] then
  begin
    case Key of
      VK_RIGHT,
      VK_RETURN,
      VK_TAB    : Atras := False;
      VK_LEFT   : Atras := True;
      VK_F5     : Calculadora(Handle);
      VK_ESCAPE : btnSalirPre.SetFocus; // Terminar modificacion/alta de precios
      else
        inherited KeyDown(Key, Shift);
    end;
  end;
end;

procedure TfrmChangePrice.gOffEspKeyPress(Sender: TObject; var Key: Char);
begin
  if (gOffEsp.SelectedField.DataType in [ftFloat, ftCurrency, ftBCD]) and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

procedure TfrmChangePrice.btnImpSGClick(Sender: TObject);
begin
  if Application.MessageBox('¿Imprime los códigos de barra del producto actual?',
     'Códigos de Barra', MB_ICONQUESTION + MB_YESNO) = ID_YES then
  begin
    frmImpCodBar := TfrmImpCodBar.Create(Self);
    frmImpCodBar.CodProd := CamPreIdArticulo.AsInteger;
    frmImpCodBar.CantStk := CamPreStkGrl.AsInteger;
    frmImpCodBar.ElTalle := SIN_DETALLE_TALLE;
    frmImpCodBar.edtTalle.Enabled := False;
    frmImpCodBar.ShowModal;
  end;
end;

procedure TfrmChangePrice.btnImpSSClick(Sender: TObject);
begin
  if Application.MessageBox('¿Imprime los códigos de barra del producto actual?',
     'Códigos de Barra', MB_ICONQUESTION + MB_YESNO) = ID_YES then
  begin
    frmImpCodBar := TfrmImpCodBar.Create(Self);
    frmImpCodBar.CodProd := CamPreIdArticulo.AsInteger;
    frmImpCodBar.CantStk := CamPreStkSuc.AsInteger;
    frmImpCodBar.ElTalle := SIN_DETALLE_TALLE;
    frmImpCodBar.edtTalle.Enabled := False;
    frmImpCodBar.ShowModal;
  end;
end;

procedure TfrmChangePrice.edtVCtaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmChangePrice.CamPreNewRecord(DataSet: TDataSet);
begin
  CamPreFechaA.AsDateTime := Date;
  CamPreIdSucursal.AsInteger := 0;
  CamPreFechaF.AsDateTime := Date;
  CamPreCantCta.AsInteger := 0;
  CamPrePNuevo.AsCurrency := 0;
  CamPreUsuario.AsInteger := Usuario;
  CamPreTipoOp.AsInteger := Integer(TipoCam);
  CamPreCantEtq.AsInteger := 0;
  CamPreCostoNew.AsCurrency := 0;
  CamPreNetoNew.AsCurrency := 0;
  CamPreGanNew.AsFloat := 0;
  CamPreCantAut.AsInteger := 0;
  CamPreDetAux.AsString :=  Vacio;
end;

procedure TfrmChangePrice.CamPreIdArticuloValidate(Sender: TField);
begin
  if (CamPreIdArticulo.AsInteger > NoEncontrado) and (AddReg) then
  begin
    if GetDatosArt(CamPreIdArticulo.AsInteger, '', Datos_Art) then
    begin
      CamPreDetProd.AsString := Datos_Art.DetProd;
      CamPreIdAlcIva.AsInteger := Datos_Art.IdAlcI;
      CamPrePActual.AsCurrency := Datos_Art.Precio;
      CamPrePBase.AsCurrency := Datos_Art.PBase;
      CamPreImpInt.AsCurrency := Datos_Art.ImpInt;
      CamPreExento.AsFloat  := Datos_Art.Exento;
      CamPreMarca.AsString := Datos_Art.Marca;
      CamPreDetalle.AsString := Datos_Art.Detalle;
      CamPreColor.AsString := Datos_Art.Color;
      CamPreCosto.AsCurrency := Datos_Art.Costo;
      CamPreMarkUp.AsFloat := Datos_Art.CoefMarkUp;
      CamPreStkGrl.AsFloat := Get_Stock(CamPreIdArticulo.AsInteger, 0, 0, False);
      CamPreDetAux.AsString:= Format('Costo %m - MarkUp %8.2f - G.Real %8.2f - Precio Base %m ' ,
                                     [Datos_Art.Costo, Datos_Art.CoefMarkUp,
                                      Datos_Art.Ganancia, Datos_Art.PBase]);
    end;
  end;
end;

procedure TfrmChangePrice.edtPNuevoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F5 then
    Calculadora(Handle)
  else
    {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmChangePrice.edtPNuevoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmChangePrice.CamPreCantCtaChange(Sender: TField);
begin
  if (CamPreCantCta.AsInteger > 0) And (CamPrePNuevo.AsCurrency <> 0) then
    CamPreValorCtas.AsCurrency := (CamPrePNuevo.AsCurrency / CamPreCantCta.AsInteger)
  else
    CamPreValorCtas.AsCurrency := CamPrePNuevo.AsCurrency;
end;

procedure TfrmChangePrice.CamPreAfterInsert(DataSet: TDataSet);
begin
  AddReg := True;
end;

procedure TfrmChangePrice.CamPreAfterPost(DataSet: TDataSet);
begin
  if CamPrePNuevo.AsCurrency <= 0 then
  begin
    edtPNuevo.SetFocus;
    raise EUsuario.Create('Precio invalido');
  end;
end;

procedure TfrmChangePrice.CamPreBeforeInsert(DataSet: TDataSet);
begin
  btnGrabar.Enabled := True;
  btnCancelar.Enabled := True;
end;

procedure TfrmChangePrice.CamPreBeforePost(DataSet: TDataSet);
var
  AuxNeto, FinalCalculado, Variacion: Currency;
  VarPF, CftIva, AuxGan: Double;
  q: TMDOQuery;
begin
  if CamPreIdArticulo.AsInteger <= 0 then
  begin
    edtCodArt.SetFocus;
    raise EUsuario.Create('Incorrecto. Código invalido.-');
  end;

  if CamPreFechaA.AsDateTime > CamPreFechaF.AsDateTime then
    raise EUsuario.Create('rango de fechas invalido.-');

  if CamPrePNuevo.AsCurrency <= 0 then
  begin
    edtPNuevo.SetFocus;
    raise EUsuario.Create('El precio nuevo es incorrecto.-');
  end;

  if (CamPrePNuevo.AsCurrency <= CamPrePBase.AsCurrency) and
     (Application.MessageBox('El precio esta debajo del Costo c/Imp. ¿Continua?', 'Modificación', MB_ICONQUESTION+MB_YESNO) = Id_No) then
  begin
    edtPNuevo.SetFocus;
    raise EUsuario.Create('Precio final erroneo.-');
  end;

  if CamPreCantCta.AsInteger > 0 then
  begin
    if RoundTo(CamPrePNuevo.AsCurrency / CamPreCantCta.AsInteger, 2) < RoundTo(CamPreValorCtas.AsCurrency, 2) then
    begin
      edtVCta.SetFocus;
      raise EUsuario.Create('Valor de Cuota erroneo.-');
    end;
  end;
  FinalCalculado := 0;
  Variacion := 0;
  VarPF := 0;
  if (AddReg) and
     (CamPrePActual.AsCurrency <> 0) (* and (Tarea > Nivel_Mod)*) then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.trProc;
      q.SQL.Add('Select S.MaxRndPre ');
      q.SQL.Add('From Articulos A ');
      q.SQL.Add('Join SubGrupos S ');
      q.SQL.Add('  on S.IdArea = A.IdArea And  ');
      q.SQL.Add('     S.IdGrupo = A.IdGrupo And ');
      q.SQL.Add('     S.IdSubGrupo = A.IdSubGrupo ');
      q.SQL.Add('Where A.IdArticulo =:IdArt ');
      q.ParamByName('IdArt').AsInteger := CamPreIdArticulo.AsInteger;
      q.Open;
      VarPF := q.FieldByName('MaxRndPre').AsFloat;
    finally
      q.Free;
    end;

    if VarPF <> 0 then
    begin
      FinalCalculado := CamPrePActual.AsCurrency;
      Variacion := (FinalCalculado * VarPF)/100;
      if CamPrePNuevo.AsCurrency < FinalCalculado then
      begin
        if (FinalCalculado - CamPrePNuevo.AsCurrency) > Variacion then
        begin
          edtPNuevo.SetFocus;
          if (Application.MessageBox('La Modificación de precios Exede el Limite permitido. ¿Continua?', 'Modificación', MB_ICONQUESTION+MB_YESNO) = Id_No) then
            raise EUsuario.Create('No se puede disminuir tanto el precio al publico.-');
        end;
      end;
    end;
  end;
  CamPreDiaHora.AsDateTime := Now;
  CamPreIdRegistro.AsInteger := 1;
  CftIva  := 1 + ((GetAlcIva(CamPreIdAlcIva.AsInteger) - ((GetAlcIva(CamPreIdAlcIva.AsInteger) * CamPreExento.AsFloat)/100)) / 100);
  AuxNeto := (CamPrePNuevo.AsCurrency - CamPreImpInt.AsCurrency) / CftIva;
  CamPreNetoNew.AsCurrency := AuxNeto;
  if CamPreCosto.AsCurrency <= 0.05 then
    AuxGan := CamPreMarkUp.AsFloat
  else begin
    try
      if CamPreCosto.AsCurrency > 0.01 then
        AuxGan := (((AuxNeto / CamPreCosto.AsCurrency) - 1) * 100)
      else
        AuxGan := CamPreMarkUp.AsFloat;
    except
      AuxGan := CamPreMarkUp.AsFloat;
    end;
  end;
  CamPreCostoNew.AsCurrency := (CamPrePNuevo.AsCurrency - CamPreImpInt.AsCurrency) /
                               CftIva / (1+(AuxGan/100));
  CampreGanNew.AsFloat := AuxGan;
end;

procedure TfrmChangePrice.CamPreIdSucursalValidate(Sender: TField);
begin
  if AddReg then
  begin
    if CamPreIdSucursal.AsInteger > 0 then
      CamPreStkSuc.AsFloat := Get_Stock(CamPreIdArticulo.AsInteger, CamPreIdSucursal.AsInteger, 0, False)
    else
      CamPreStkSuc.AsFloat := 0;
  end;
end;

procedure TfrmChangePrice.btnCalculadoraClick(Sender: TObject);
begin
  Calculadora(Handle)
end;

procedure TfrmChangePrice.btnPrintOfertasClick(Sender: TObject);
begin
  lblTitulo1.Caption := OwnerName;
  rpOfertas.Print;
end;

procedure TfrmChangePrice.btnSalirPreClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmChangePrice.btnCalcularHistorialClick(Sender: TObject);
begin
  Abrir_Consultas(edtDesdeHP.Date, edtHastaHP.Date);
end;

procedure TfrmChangePrice.btnExporPESClick(Sender: TObject);
begin
  if not ArtPreEsp.IsEmpty then
  begin
    with dmGestion do
    begin
      IyC_Exp.DataSet := ArtPreEsp;
      IyC_Exp.Select;
    end;
  end;
end;

procedure TfrmChangePrice.btnExportarHistorialClick(Sender: TObject);
begin
  dmGestion.IyC_Exp.DataSet := qHistorial;
  dmGestion.IyC_Exp.Select;
end;

procedure TfrmChangePrice.pcCamPreOffClose(Sender: TObject;  var AllowClose: Boolean);
begin
  Close;
end;

procedure TfrmChangePrice.qHistorialCalcFields(DataSet: TDataSet);
begin
  if (qHistorialFECHAALTA.AsDateTime > Date_Old) and
     (qHistorialFECHAFIN.AsDateTime > Date_Old) then
    qHistorialTipoC.AsString := 'T'
  else
    qHistorialTipoC.AsString := 'P'
end;

procedure TfrmChangePrice.qOfertasNOMBRESUCGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if qOfertasIdSucursal.AsInteger = 0 then
    Text := 'Todas'
  else
    Text := qOfertasNOMBRESUC.AsString;
end;

procedure TfrmChangePrice.OffEspAfterOpen(DataSet: TDataSet);
begin
  qSucurOE.Open;
  qAreasOE.Open;
  qGruposOE.Open;
  qSubGrOE.Open;
  qTarjOE.Open;
end;

procedure TfrmChangePrice.OffEspAfterPost(DataSet: TDataSet);
begin
  try
    if not qOfertasEsp.Transaction.InTransaction then
      qOfertasEsp.Transaction.StartTransaction;
    if OffEsp.ApplyUpdates(0)> 0 then
      Abort;
    qOfertasEsp.Transaction.Commit;
  except
    on E: Exception do
    begin
      qOfertasEsp.Transaction.Rollback;
      raise;
    end;
  end;
end;

procedure TfrmChangePrice.OffEspBeforePost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if OffEspIdRegla.AsInteger = Nuevo_Registro then
  begin
    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmGestion.trUpDateArt;
      q.SQL.Add('Select Max(IdRegla) as Ultimo ');
      q.SQL.Add('From OFERTAS_ESP ');
      q.Open;
      OffEspIdRegla.AsInteger := q.FieldByName('Ultimo').AsInteger + 1;
    finally
      q.Free;
    end;
  end;
end;

procedure TfrmChangePrice.OffEspIdReglaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.AsInteger = Nuevo_Registro then
    Text := 'NR'
  else
    Text := Sender.AsString;
end;

procedure TfrmChangePrice.OffEspNewRecord(DataSet: TDataSet);
begin
  OffEspIdRegla.AsInteger := Nuevo_Registro;
  OffEspIDSUCUR.AsInteger := 0;
  OffEspNroCtas.AsInteger := 0;
  OffEspDctoPer.AsFloat := 0.00;
  OffEspCOEFTAR.AsFloat := 0.00;
end;

procedure TfrmChangePrice.OffEspReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ApplicationHandleException(E);
end;

procedure TfrmChangePrice.btnSaveDescEspClick(Sender: TObject);
begin
  if OffEsp.State in [dsEdit, dsInsert] then
    OffEsp.Post;
end;

end.
