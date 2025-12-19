unit uSenas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzTabs, Grids, Wwdbigrd, Wwdbgrid, DB, StdCtrls, Mask, DBCtrls,
  wwdbdatetimepicker, wwdbedit, RzButton, ExtCtrls, RzPanel, wwdblook, Wwdotdot,
  Wwdbcomb, MDOCustomDataSet, MDOQuery, RzBorder, RzRadGrp, RzDBRGrp, DBClient,
  RzEdit;

type
  TfrmSenas = class(TForm)
    pcSenas: TRzPageControl;
    tsSenas: TRzTabSheet;
    tsRegistro: TRzTabSheet;
    gRegSen: TwwDBGrid;
    lblNCliS: TLabel;
    edtClienteS: TwwDBEdit;
    lblFechaS: TLabel;
    lblMontoS: TLabel;
    edtMontoS: TwwDBEdit;
    lblNroRecS: TLabel;
    edtComprobanteS: TwwDBEdit;
    edtFechaS: TwwDBDateTimePicker;
    lblNomCli: TDBText;
    btnNueva: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    btnBorrar: TRzBitBtn;
    btnGrabar: TRzBitBtn;
    pblFootREg: TRzPanel;
    btnExpSenas: TRzBitBtn;
    edtDesdeR: TRzDateTimeEdit;
    edtHastaR: TRzDateTimeEdit;
    btnBuscarSen: TRzBitBtn;
    lblDesdeB: TLabel;
    lblHasta: TLabel;
    btnModSena: TRzBitBtn;
    tsCobros: TRzTabSheet;
    pnlCobSen: TRzPanel;
    lblCliente: TLabel;
    edtCobrarCli: TRzNumericEdit;
    lblCliBuscado: TLabel;
    gSenasEnc: TwwDBGrid;
    cbEstadoS: TwwDBComboBox;
    lblEstadoS: TLabel;
    edtClienteR: TRzNumericEdit;
    lblNroCli: TLabel;
    bvlSenas1: TRzBorder;
    bvlSenas2: TRzBorder;
    rgTipoFacS: TRzDBRadioGroup;

    dsqSenas: TDataSource;
    qSenas: TMDOQuery;
    qSenasCliente: TIntegerField;
    qSenasNroFactura: TStringField;
    qSenasFechaF: TDateField;
    qSenasImpresa: TSmallintField;
    qSenasNombre: TStringField;
    qSenasIdFactura: TIntegerField;
    qSenasIdSucursal: TIntegerField;
    qSenasIdPuntoVenta: TIntegerField;
    qSenasTOTAL: TMDOBCDField;
    qSenasTIPOFACTURA: TSmallintField;
    qSenasTIPOFAC: TMDOStringField;

    dsSenas: TDataSource;
    Senas: TClientDataSet;
    SenasIdCliente: TIntegerField;
    SenasNomCli: TStringField;
    SenasFechaS: TDateField;
    SenasMontoS: TMDOBCDField;
    SenasNroRec: TStringField;
    SenasIdFactura: TIntegerField;
    SenasIdSucursal: TIntegerField;
    SenasIdPuntoVenta: TIntegerField;
    SenasEstado: TIntegerField;
    SenasTipoFactura: TSmallintField;

    dsqBuscaSenas: TDataSource;
    qBuscaSenas: TMDOQuery;
    qBuscaSenasIdFactura: TIntegerField;
    qBuscaSenasIdSucursal: TIntegerField;
    qBuscaSenasIdPuntoVenta: TIntegerField;
    qBuscaSenasCliente: TIntegerField;
    qBuscaSenasNroFactura: TStringField;
    qBuscaSenasFechaF: TDateField;
    qBuscaSenasImpresa: TSmallintField;
    qBuscaSenasSelected: TSmallIntField;
    qBuscaSenasTOTAL: TMDOBCDField;
    qBuscaSenasTIPOFACTURA: TSmallintField;
    qBuscaSenasTIPOFAC: TMDOStringField;
    pnlSenas: TRzPanel;
    btnCerrar: TRzBitBtn;
    lblRegNomCli: TLabel;
    btnCobSena: TRzBitBtn;
    qSenasFECHAI: TDateField;
    qSenasCOMPREF: TMDOStringField;
    qSenasIDCOMPREF: TIntegerField;
    qSenasDETSUC: TMDOStringField;

    procedure FormCreate(Sender: TObject);
    procedure pcSenasClose(Sender: TObject; var AllowClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNuevaClick(Sender: TObject);
    procedure SenasNewRecord(DataSet: TDataSet);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnBorrarClick(Sender: TObject);
    procedure qSenasImpresaGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure btnGrabarClick(Sender: TObject);
    procedure edtClienteSKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtFechaSKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SenasIdClienteValidate(Sender: TField);
    procedure btnExpSenasClick(Sender: TObject);
    procedure btnBuscarSenClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure edtClienteSEnter(Sender: TObject);
    procedure edtFechaSEnter(Sender: TObject);
    procedure edtMontoSEnter(Sender: TObject);
    procedure edtComprobanteSEnter(Sender: TObject);
    procedure gRegSenDblClick(Sender: TObject);
    procedure gSenasEncMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
    procedure gSenasEncUpdateFooter(Sender: TObject);
    procedure edtCobrarCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCobrarCliExit(Sender: TObject);
    procedure edtComprobanteSExit(Sender: TObject);
    procedure edtMontoSKeyPress(Sender: TObject; var Key: Char);
    procedure btnCobSenaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtClienteRKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtClienteREnter(Sender: TObject);
    procedure tsCobrosEnter(Sender: TObject);
    procedure gRegSenUpdateFooter(Sender: TObject);
    procedure btnModSenaClick(Sender: TObject);
    procedure edtClienteRExit(Sender: TObject);
    procedure pcSenasChange(Sender: TObject);
  private
    { Private declarations }
    CantS, IdCliSen,
    IdSucCli: Integer;
    SumaS, SenasPend: Currency;
    Add_Sena, Mod_Sena: Boolean;
    procedure Search_Senas(CualCli: Integer);
  public
    { Public declarations }
    PagoSena, Pago_SaF: Currency;
    Cobrando: Boolean;
  end;

  function Cobrar_Sena(var CobradoSena, Cobrado_SaF: Currency; NroCli: Integer): Boolean;

var
  frmSenas: TfrmSenas;

implementation

uses udmGestion, udmSaveFile, uTools, uClaveMod, uEntidades,
     uFormasDePago, uFiscal, uConfiguracion, uBeforeDelete;

{$R *.dfm}

(*

Select F.IdFactura, F.IdSucursal, F.IdPuntoVenta, F.Cliente,
       F.NroFactura, F.TipoFactura, F.FechaF, F.Total,
       F.Impresa, T.DescCorta as TipoFac
From FacVen F
Left Outer Join TiposComp T
  on T.IdComprobante = F.TipoFactura
Where (F.TipoFactura in (42, 100))  And
           (F.Cliente = :Cliente) And
           (F.Impresa = 1) And
           ( F.Total > 0) And
           (F.IdSucursal = :Sucur)
Order By F.FechaF desc


*)

procedure TfrmSenas.Search_Senas(CualCli: Integer);
begin
  if CualCli > Impersonal then
  begin
    if GetDatosEnt(CualCli, IdSucCli, 1, Datos_Ent) then
    begin
      lblCliBuscado.Caption := Datos_Ent.Nombre;
      qBuscaSenas.Close;
      qBuscaSenas.ParamByName('Cliente').AsInteger := CualCli;
      qBuscaSenas.ParamByName('Sucur').AsInteger := IdSucCli;
      qBuscaSenas.Open;
      if qBuscaSenas.IsEmpty and
         (not Cobrando) then
        ShowMessage('El cliente no tiene señas ingresadas.-');
    end;
  end
  else begin
    if not Cobrando then
    begin
      edtCobrarCli.SetFocus;
      ShowMessage('El cliente no existe.-');
    end
    else
      gSenasEnc.SetFocus;
  end
end;

procedure TfrmSenas.btnCobSenaClick(Sender: TObject);
var
  i: Integer;
begin
  PagoSena := 0;
  Pago_SaF := 0;
  if Application.MessageBox('¡ Ingresa el Cobro de las Señas marcadas !', 'Señas', MB_ICONEXCLAMATION + MB_YESNO + MB_DEFBUTTON2) = ID_YES then
  begin
    with dmSaveFile do
    begin
      if Senas_Cobradas.Active then
        Senas_Cobradas.EmptyDataSet
      else
        Senas_Cobradas.CreateDataSet;

      for i := 0 to gSenasEnc.SelectedList.Count-1 do
      begin
        gSenasEnc.DataSource.DataSet.GotoBookmark(gSenasEnc.SelectedList.Items[i]);
        with dmSaveFile do
        begin
          Senas_Cobradas.Append;
          Senas_CobradasIdFactura.AsInteger := qBuscaSenasIdFactura.AsInteger;
          Senas_CobradasIdSucursal.AsInteger := qBuscaSenasIdSucursal.AsInteger;
          Senas_CobradasIdPuntoVenta.AsInteger := qBuscaSenasIdPuntoVenta.AsInteger;
          Senas_CobradasIdCliente.AsInteger := qBuscaSenasCliente.AsInteger;
          Senas_CobradasTipoFac.AsInteger := qBuscaSenasTIPOFACTURA.AsInteger;
          Senas_CobradasNroSena.AsString := qBuscaSenasNroFactura.AsString;
          Senas_CobradasFecSena.AsDateTime := qBuscaSenasFechaF.AsDateTime;
          Case qBuscaSenasTIPOFACTURA.AsInteger of
            100: PagoSena := PagoSena + qBuscaSenasTotal.AsCurrency;
             42: Pago_SaF := Pago_SaF + qBuscaSenasTotal.AsCurrency;
          end;
          Senas_CobradasTotal.AsCurrency := qBuscaSenasTotal.AsCurrency;
          Senas_Cobradas.Post;
        end;
      end;
    end;
    ModalResult := mrOk;
  end
  else begin
    ModalResult := mrCancel;
  end;
end;

function Cobrar_Sena(var CobradoSena, Cobrado_SaF: Currency; NroCli: Integer): Boolean;
begin
  Result := False;
  CobradoSena := 0;
  Cobrado_SaF := 0;
  frmSenas := TfrmSenas.Create(nil);
  frmSenas.Cobrando := True;
  frmSenas.tsSenas.TabVisible := False;
  frmSenas.tsRegistro.TabVisible := False;
  frmSenas.tsCobros.TabVisible := True;
  frmSenas.tsCobros.Enabled := True;
  frmSenas.btnCerrar.Caption := '&Cancelar';
  frmSenas.pcSenas.ActivePageDefault := frmSenas.tsCobros;
  frmSenas.pcSenas.ActivePage := frmSenas.tsCobros;
  frmSenas.edtCobrarCli.Text := IntToStr(NroCli);
  frmSenas.Search_Senas(NroCli);
  if frmSenas.ShowModal = mrOk then
  begin
    CobradoSena := frmSenas.PagoSena;
    Cobrado_SaF := frmSenas.Pago_SaF;
    Result := True;
  end;
end;

procedure TfrmSenas.FormCreate(Sender: TObject);
begin
  CantS := 0;
  SumaS := 0;
  PagoSena := 0;
  Pago_SaF := 0;
  SenasPend := 0;
  IdSucCli := IdBranch;
  Cobrando := False;
  edtDesdeR.Date := Date;
  edtHastaR.Date := Date;
  edtClienteR.Text := '0';
end;

procedure TfrmSenas.FormShow(Sender: TObject);
begin
  if not Cobrando then
    tsCobros.TabVisible := False
  else begin
    tsCobros.TabVisible := True;
    pcSenas.ActivePage := tsCobros;
  end;
end;

procedure TfrmSenas.pcSenasChange(Sender: TObject);
begin
  if not Cobrando then
  begin
    Case pcSenas.ActivePageIndex of
      0: btnNueva.SetFocus;
      1: edtDesdeR.SetFocus;
      2: edtCobrarCli.SetFocus;
    end;
  end;
end;

procedure TfrmSenas.pcSenasClose(Sender: TObject; var AllowClose: Boolean);
begin
  if Cobrando then
  begin
    PagoSena := 0;
    Pago_SaF := 0;
    ModalResult := mrCancel;
  end
  else
    Close;
end;

procedure TfrmSenas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qSenas.Close;
  Action := caFree;
end;

procedure TfrmSenas.btnNuevaClick(Sender: TObject);
begin
  if Senas.Active then
    Senas.EmptyDataSet
  else
    Senas.CreateDataSet;
  Senas.Insert;
  edtClienteS.SetFocus;
  Add_Sena := True;
  Mod_Sena := False;
end;

procedure TfrmSenas.btnModSenaClick(Sender: TObject);
begin
  if not Check_Seg(Nivel_Dto, 'Señas', AutorDto) then
    raise EUsuario.Create('No Habilitado');
  edtClienteS.SetFocus;
  Add_Sena := False;
  Mod_Sena := True;
  Senas.Edit;
end;

procedure TfrmSenas.SenasNewRecord(DataSet: TDataSet);
begin
  SenasFechaS.AsDateTime := Date;
  SenasMontoS.AsCurrency := 0;
  SenasNroRec.AsString := GetNumeroComprobante(IdBranch, PtoVta, 0, ReciboX);;
  SenasIdFactura.AsInteger := 0;
  SenasIdSucursal.AsInteger := IdBranch;
  SenasIdPuntoVenta.AsInteger := IdSalesPoint;
  SenasTipoFactura.AsInteger := Cobro_Sena;
  SenasEstado.AsInteger := 1;
end;

procedure TfrmSenas.btnCancelarClick(Sender: TObject);
begin
  if Senas.Active then
    Senas.EmptyDataSet
  else
    Senas.CreateDataSet;
end;

procedure TfrmSenas.btnBorrarClick(Sender: TObject);
var
  q: TMDOQuery;
  m: Integer;
begin
  if not Check_Seg(Nivel_Adm, 'Señas', AutorDto) then
    raise EUsuario.Create('No Habilitado');
  m := AntesDeBorrar;
  if (not Senas.IsEmpty) and
     (m > 0) then
  begin
    try
      if not dmGestion.trProc.InTransaction then
        dmGestion.trProc.StartTransaction;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := dmGestion.trProc;
        q.SQL.Add('UpDate FacVen ');
        q.SQL.Add('Set Impresa = 3, ');
        q.SQL.Add('    State =:Motivo, ');
        q.SQL.Add('    FechaIS = null ');
        q.SQL.Add('Where IdFactura =:IdFactura And ');
        q.SQL.Add('      IdSucursal =:IdSucursal ');
        q.ParamByName('Motivo').AsInteger := m;
        q.ParamByName('IdFactura').AsInteger  := SenasIdFactura.AsInteger;
        q.ParamByName('IdSucursal').AsInteger := SenasIdSucursal.AsInteger;
        q.ExecSQL;
        q.Close;
      finally
        q.Free;
      end;
      dmGestion.trProc.Commit;
    except
      on E:Exception do
      begin
        dmGestion.trProc.Rollback;
        raise EUsuario.Create('El comprobante de seña no se puede Borrar '+E.Message);
      end;
    end;
    ShowMessage('La Seña/SaF fue borrada.- ');
  end;
end;

procedure TfrmSenas.qSenasImpresaGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Case qSenasImpresa.AsInteger of
    0: Text := 'Borrada  ';
    1: Text := 'Pendiente';
    2: Text := 'Cobrado  ';
    3: Text := 'Anulada  ';
  end;
end;

procedure TfrmSenas.edtMontoSKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmSenas.btnGrabarClick(Sender: TObject);
var
  GrabarComprobante, Sena_Ok: Boolean;
  ComoPago: TAccionPago;
  q: TMDOQuery;
begin
  if (Senas.State = dsInsert) and   // Alta
     (Add_Sena) then
  begin
    Senas.Post;
    Mod_Sena := False;
    FillChar(DatosPago, SizeOf(TDatosPagos), 0);
    DatosPago.TipoOperacion := PA_Cta;
    DatosPago.IdEntidad := SenasIdCliente.AsInteger;
    DatosPago.IdPuntoVenta := IdSalesPoint;
    DatosPago.IdSucursal := IdBranch;
    DatosPago.FechaOp := SenasFechaS.AsDateTime;
    DatosPago.NomEntidad := SenasNomCli.AsString;
    DatosPago.NroComprobante := SenasNroRec.AsString;
    DatosPago.TipoComprobante := SenasTipoFactura.AsInteger;
    DatosPago.Observaciones := Vacio;
    DatosPago.IdCompRef := 0;
    DatosPago.CompReferencia := Vacio;
    DatosPago.Coeficiente := 0;
    DatosPago.IdTarjeta := 0;
    DatosPago.CantidadCuotas := 0;
    DatosPago.IdVendedor := Usuario;
    DatosPago.TotalPagos := SenasMontoS.AsCurrency;
    ComoPago := DoPago(DatosPago, ImprimirEnLinea);
    GrabarComprobante := False;
    case ComoPago of
      apPago: begin
        GrabarComprobante := True;
        if DatosPago.RestaPagar < 0 then // vuelto
          DatosPago.RestaPagar := (-1 * DatosPago.RestaPagar);
      end;
      apCancelo: begin
        GrabarComprobante := False;
      end;
    end;

    if GrabarComprobante then
    begin
      Sena_Ok := False;
      if Application.MessageBox('¿ Imprime el recibo de Seña ?', 'Señas', MB_YESNO) = ID_YES then
      begin
        if (ImprimirEnControlador) and
           (Tipo_Factura or Tipo_Estacion) and
           (not Tipo_FacNC) and
           (ControladorLocal) then
        begin
          if Application.MessageBox('¿Esta seguro de imprimir el recibo?. '+
             'El Sistema esta en Modo Paralelo. Igual se graba la operación ',
             'Recibo de Señas', MB_YESNO) = ID_YES then
            Sena_Ok := frmFiscal.ImprimirReciboF(DatosPago, ItemsFiscal, 'Ingreso de importe en Seña ', 'para acreditaciones futuras ')
          else
            Sena_Ok := False;
        end
        else begin
          Sena_Ok := Print_Form(Factura, ItemsFiscal);
        end;
      end;

      if Sena_Ok then
      begin
        if dmSaveFile.Grabar_Senas(DatosPago, Cobro_Sena) then
          ShowMessage('La Seña fue correctamente grabada');
      end;
      Sena_Ok := False;
      Add_Sena := False;
    end
  end;

  if (not Senas.IsEmpty) and  // Modificacion
     (Mod_Sena) then
  begin
    if Senas.State in dsEditModes then
      Senas.Post;
    try
      if not dmGestion.trProc.InTransaction then
        dmGestion.trProc.StartTransaction;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := dmGestion.trProc;
        q.SQL.Add('UpDate FacVen ');
        q.SQL.Add('Set Impresa =:Impresa, ');
        q.SQL.Add('    Cliente =:Cliente, ');
        q.SQL.Add('    FechaF =:FechaF, ');
        q.SQL.Add('    TipoFactura =:TipoFactura, ');
        q.SQL.Add('    Total =:Total, ');
        q.SQL.Add('    NroFactura =:NroFactura, ');
        q.SQL.Add('    FechaIS = null ');
        q.SQL.Add('Where IdFactura =:IdFactura And ');
        q.SQL.Add('      IdSucursal =:IdSucursal ');
        q.ParamByName('Impresa').AsInteger := SenasEstado.AsInteger;
        q.ParamByName('Cliente').AsInteger := SenasIdCliente.AsInteger;
        q.ParamByName('FechaF').AsDateTime := SenasFechaS.AsDateTime;
        q.ParamByName('TipoFactura').AsInteger := SenasTipoFactura.AsInteger;
        q.ParamByName('Total').AsCurrency  := SenasMontoS.AsCurrency;
        q.ParamByName('NroFactura').AsString := SenasNroRec.AsString;
        q.ParamByName('IdFactura').AsInteger := SenasIdFactura.AsInteger;
        q.ParamByName('IdSucursal').AsInteger := SenasIdSucursal.AsInteger;
        q.ExecSQL;
      finally
        q.Free;
      end;
      dmGestion.trProc.Commit;
    except
      on E:Exception do
      begin
        dmGestion.trProc.Rollback;
        raise EUsuario.Create('El comprobante de seña no se puede modificar '+E.Message);
      end;
    end;
    Mod_Sena := False;
    ShowMessage('La Seña fue correctamente modificada.- ');
  end;
end;

procedure TfrmSenas.edtClienteSKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NuevoCli: Integer;
begin
  case Key of
    VK_F1: begin
      NuevoCli := AltaCliente(1);
      if NuevoCli <> NoEncontrado then
      begin
        Senas.Edit;
        SenasIdCliente.AsInteger := NuevoCli;
      end;
    end;
    VK_F3: begin
      if Busca_Cli(IdEntidad, IdSucCli) then
      begin
        Senas.Edit;
        SenasIdCliente.AsInteger:= IdEntidad;
        SenasIdSucursal.AsInteger:= IdSucCli;
      end;
    end;
    VK_ESCAPE: Close
    else begin
      {$INCLUDE IyC_NextEdit.Inc}
    end
  end;
end;

procedure TfrmSenas.edtFechaSKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmSenas.SenasIdClienteValidate(Sender: TField);
begin
  if GetDatosEnt(SenasIdCliente.AsInteger, IdBranch, 1, Datos_Ent) then
    SenasNomCli.AsString := Datos_Ent.Nombre;
end;

procedure TfrmSenas.btnExpSenasClick(Sender: TObject);
begin
  with dmGestion do
  begin
    IyC_Exp.DataSet := qSenas;
    IyC_Exp.Execute;
  end;
end;

procedure TfrmSenas.btnBuscarSenClick(Sender: TObject);
Const
  SenCli = 'Select F.IdFactura, F.IdSucursal, F.IdPuntoVenta, '+
           '       F.Cliente, F.NroFactura, F.FechaF, F.Total, '+
           '       F.Impresa, F.TipoFactura, F.FechaI, F.CompRef, '+
           '       F.IdCompRef, C.Nombre, K.DetSuc, T.DescCorta as TipoFac '+
           'From FacVen F '+
           'Join Clientes C '+
           '  on (C.IdCliente = F.Cliente) And (C.IdSucursal = F.IdSucursal) '+
           'Left Outer Join TiposComp T '+
           '  on T.IdComprobante = F.TipoFactura '+
           'Join Sucursales K '+
           '  on K.IdSucursal = F.IdSucursal '+
           'Where (F.TipoFactura in (42, 100)) And (F.State = 0) And '+
           '      (F.FechaF between :Desde And :Hasta) <Cond> '+
           'Order By F.IdSucursal, F.FechaF desc ';


var
  ncli: Integer;
begin
  if dmGestion.trGestion.InTransaction then
    dmGestion.trGestion.Commit;
  ncli := edtClienteR.IntValue;
  SenasPend := 0;
  try
    Screen.Cursor := crHourGlass;
    qSenas.Close;
    if edtDesdeR.Date > edtHastaR.Date then
      Exit;
    if NCli > Impersonal then
      qSenas.SQL.Text := StringReplace(Sencli, '<Cond>',
             ' And (F.Cliente = '+Trim(IntToStr(NCli))+')', [rfReplaceAll])
    else
      qSenas.SQL.Text := StringReplace(Sencli, '<Cond>', '', [rfReplaceAll]);
    qSenas.ParamByName('Desde').AsDate := edtDesdeR.Date;
    qSenas.ParamByName('Hasta').AsDate := edtHastaR.Date;
    qSenas.Open;
    if not qSenas.IsEmpty then
    begin
      qSenas.First;
      try
        qSenas.DisableControls;
        while not qSenas.Eof do
        begin
          if qSenasImpresa.AsInteger = 1 then
            SenasPend := SenasPend + qSenasTOTAL.AsCurrency;
          qSenas.Next;
        end;
      finally
        qSenas.EnableControls;
        qSenas.First;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    if qSenas.IsEmpty then
    begin
      edtDesdeR.SetFocus;
      ShowMessage('No hay señas en ese periodo.');
    end;
    gRegSen.ColumnByName('Nombre').FooterValue := 'Total Pendientes';
    gRegSen.ColumnByName('Total').FooterValue := Format('%m',[SenasPend]);
    gRegSen.RefreshDisplay;
  end;
end;

procedure TfrmSenas.btnCerrarClick(Sender: TObject);
begin
  if Cobrando then
  begin
    PagoSena := 0;
    Pago_SaF := 0;
    ModalResult := mrCancel;
  end
  else
    Close;
end;

procedure TfrmSenas.edtClienteSEnter(Sender: TObject);
begin
  pnlSenas.Caption := '<F1> nuevo cliente. <F3> buscar. <Esc> cerrar.'
end;

procedure TfrmSenas.edtFechaSEnter(Sender: TObject);
begin
  pnlSenas.Caption := ''
end;

procedure TfrmSenas.edtMontoSEnter(Sender: TObject);
begin
  pnlSenas.Caption := 'ingrese monto entregado a cuenta.'
end;

procedure TfrmSenas.edtComprobanteSEnter(Sender: TObject);
begin
  pnlSenas.Caption := 'ingrese nº de recibo de Señas.-'
end;

procedure TfrmSenas.edtComprobanteSExit(Sender: TObject);
Var
  Part1, Part2: Integer;
begin
  Part1 := 0;
  Part2 := 0;
  try
    Part1 := StrToInt(Trim(Copy(edtComprobanteS.Text,1,Pos('-',edtComprobanteS.Text)-1)));
  except
    on E: EConvertError do
    begin
      edtComprobanteS.SetFocus;
      edtComprobanteS.SelStart := 0;
      edtComprobanteS.SelLength := 3;
      raise EUsuario.Create('Error en el Pto. de Venta del comprobante');
    end;
  end;

  try
    Part2 := StrToInt(Trim(Copy(edtComprobanteS.Text,Pos('-',edtComprobanteS.Text)+1, Length(edtComprobanteS.Text))));
  except
    on E: EConvertError do
    begin
      edtComprobanteS.SetFocus;
      edtComprobanteS.SelStart := 5;
      edtComprobanteS.SelLength := 8;
      raise EUsuario.Create('Error en el Nº de comprobante');
    end;
  end;

  if Senas.State in dsEditModes then
    SenasNroRec.AsString := Format('%.4d-%.8d',[Part1,Part2]);
  pnlSenas.Caption := ''
end;

procedure TfrmSenas.gRegSenDblClick(Sender: TObject);
begin
  if (qSenas.Active) and
     (not qSenas.IsEmpty) then
  begin
    if Senas.Active then
      Senas.EmptyDataSet
    else
      Senas.CreateDataSet;
    Senas.Append;
    SenasIdFactura.AsInteger := qSenasIdFactura.AsInteger;
    SenasIdSucursal.AsInteger := qSenasIdSucursal.AsInteger;
    SenasIdPuntoVenta.AsInteger := qSenasIdPuntoVenta.AsInteger;
    SenasIdCliente.AsInteger := qSenasCliente.AsInteger;
    SenasNomCli.AsString := qSenasNombre.AsString;
    SenasFechaS.AsDateTime := qSenasFechaF.AsDateTime;
    SenasMontoS.AsCurrency := qSenasTotal.AsCurrency;
    SenasNroRec.AsString := qSenasNroFactura.AsString;
    SenasEstado.AsInteger := qSenasImpresa.AsInteger;
    SenasTipoFactura.AsInteger := qSenasTIPOFACTURA.AsInteger;
    Senas.Post;
  end;
  if not Senas.IsEmpty then
    pcSenas.ActivePage := tsSenas;
end;

procedure TfrmSenas.gSenasEncMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
begin
  if Selecting then
  begin
    Inc(CantS);
    SumaS := SumaS + qBuscaSenasTotal.AsCurrency;
  end
  else begin
    Dec(CantS);
    SumaS := SumaS - qBuscaSenasTotal.AsCurrency;
  end;
  btnCobSena.Enabled := (SumaS > 0);
  gSenasEnc.ColumnByName('Selected').FooterValue := Format('%d',[CantS]);
  gSenasEnc.ColumnByName('Total').FooterValue := Format('%m',[SumaS]);
end;

procedure TfrmSenas.gSenasEncUpdateFooter(Sender: TObject);
begin
  gSenasEnc.ColumnByName('Selected').FooterValue := Format('%d',[CantS]);
  gSenasEnc.ColumnByName('Total').FooterValue := Format('%m',[SumaS]);
end;

procedure TfrmSenas.edtCobrarCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F3: begin
      if Busca_Cli(IdEntidad, IdSucCli) then
      begin
        edtCobrarCli.IntValue := IdEntidad;
        IdSucCli := IdSucEnt;
      end;
    end;
    VK_ESCAPE: Close
  end;
end;

procedure TfrmSenas.edtCobrarCliExit(Sender: TObject);
begin
  IdCliSen := edtCobrarCli.IntValue;
  if (IdCliSen > Impersonal) and
     (not Cobrando) then
    Search_Senas(IdCliSen)
  else begin
    edtCobrarCli.SetFocus;
    ShowMessage('El cliente no existe.-');
  end
end;

procedure TfrmSenas.edtClienteRKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F3 then
  begin
    if Busca_Cli(IdEntidad, IdSucCli) then
    begin
      edtClienteR.IntValue := IdEntidad;
      IdSucCli := IdSucEnt;
    end
    else
      edtClienteR.IntValue := 0;
  end;
end;

procedure TfrmSenas.edtClienteREnter(Sender: TObject);
begin
  pnlSenas.Caption := '<F3> buscar. <0> todos.'
end;

procedure TfrmSenas.edtClienteRExit(Sender: TObject);
begin
  if GetDatosEnt(edtClienteR.IntValue, IdBranch, 1, Datos_Ent) then
    lblRegNomCli.Caption := Datos_Ent.Nombre
  else
    lblRegNomCli.Caption := 'Todos';
end;

procedure TfrmSenas.tsCobrosEnter(Sender: TObject);
begin
  pnlSenas.Caption := '<Enter> Buscar Señas. <Esc> Salir. ';
end;

procedure TfrmSenas.gRegSenUpdateFooter(Sender: TObject);
begin
  gRegSen.ColumnByName('Nombre').FooterValue := 'Total Pendientes';
  gRegSen.ColumnByName('Total').FooterValue := Format('%m',[SenasPend]);
end;

end.
