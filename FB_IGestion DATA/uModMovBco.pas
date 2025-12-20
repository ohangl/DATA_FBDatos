unit uModMovBco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, RzButton, wwdbdatetimepicker, wwdblook, DateUtils,
  StdCtrls, Mask, wwdbedit, DBCtrls, RzBorder, DB, MDOCustomDataSet, MDOQuery,
  Wwdbcomb, Wwdotdot;

type
  TfrmModMovBco = class(TForm)
    lblNurMov: TLabel;
    lblMovPropEmision: TLabel;
    lblMovPropVto: TLabel;
    lblMovPropDetalle: TLabel;
    lblMovPropImporte: TLabel;
    lblNombreBanco: TLabel;
    lblNroChq: TDBText;
    lblMovPropTit: TLabel;
    lblOper: TLabel;
    lblMovPropNroComp: TLabel;
    edtDetalle: TwwDBEdit;
    edtImporte: TwwDBEdit;
    edtTitular: TwwDBEdit;
    cbTipoMov: TwwDBLookupCombo;
    edtNroComp: TwwDBEdit;
    edtVencimiento: TwwDBDateTimePicker;
    edtEmision: TwwDBDateTimePicker;
    cbBancoProp: TwwDBLookupCombo;
    brModBco: TRzBorder;
    pnlNavFV: TRzPanel;
    btnSaveMB: TRzBitBtn;
    btnCancelMB: TRzBitBtn;
    btnEditMB: TRzBitBtn;
    btnImpMovBP: TRzBitBtn;
    btnSalirMB: TRzBitBtn;

    dsqBancoProp: TDataSource;
    qBancoProp: TMDODataSet;
    qBancoPropIDMOV: TIntegerField;
    qBancoPropIDBANCO: TIntegerField;
    qBancoPropIDORDPAGO: TIntegerField;
    qBancoPropTIPOMOV: TSmallintField;
    qBancoPropNROCHEQUE: TIntegerField;
    qBancoPropFECHAEMISION: TDateField;
    qBancoPropFECHAVENCIMIENTO: TDateField;
    qBancoPropFECHARESUMEN: TDateField;
    qBancoPropIDENTIDAD: TIntegerField;
    qBancoPropDETALLEMOV: TMDOStringField;
    qBancoPropMONTO: TMDOBCDField;
    qBancoPropDEBE: TMDOBCDField;
    qBancoPropHABER: TMDOBCDField;
    qBancoPropUSUARIO: TIntegerField;
    qBancoPropNOMBRE: TMDOStringField;
    qBancoPropESTADO: TSmallintField;
    qBancoPropIDFACTURA: TIntegerField;
    qBancoPropIDSUCURSAL: TIntegerField;

    qBancos: TMDOQuery;
    qBancosBANCO: TMDOStringField;
    qBancosNROCTA: TMDOStringField;
    qBancosIDBANCO: TIntegerField;
    lblDetEmp: TLabel;
    cbDetEmp: TwwDBLookupCombo;
    qBancoPropIDEMPRESA: TIntegerField;
    btnBorrarMB: TRzBitBtn;

    procedure btnImpMovBPClick(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qBancoPropIDENTIDADChange(Sender: TField);
    procedure cbBancoPropKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure btnSalirMBClick(Sender: TObject);
    procedure btnEditMBClick(Sender: TObject);
    procedure btnCancelMBClick(Sender: TObject);
    procedure btnSaveMBClick(Sender: TObject);
    procedure btnBorrarMBClick(Sender: TObject);
    procedure edtImporteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModMovBco: TfrmModMovBco;

  procedure Get_ModBco(IdMov: Integer);


implementation

uses udmGestion, udmSaveFile, uTools, uSelecUsuario, uClaveMod;

{$R *.dfm}

procedure Get_ModBco(IdMov: Integer);
begin
  frmModMovBco := TfrmModMovBco.Create(Application);
  with frmModMovBco do
  begin
    if IdMov > 0 then
    begin
      qBancoProp.Close;
      qBancoProp.ParamByName('IdMov').AsInteger := IdMov;
      qBancoProp.Open;
    end
    else
      Close;
    ShowModal;
  end;
end;

procedure TfrmModMovBco.FormCreate(Sender: TObject);
begin
  qBancos.Open;
  dmGestion.TipoMovBco.Open;
end;

procedure TfrmModMovBco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmModMovBco.qBancoPropIDENTIDADChange(Sender: TField);
begin
  if GetDatosEnt(Sender.AsInteger, IdBranch, 2, Datos_Ent) then
    qBancoPropDetalleMov.AsString := Datos_Ent.Nombre
end;

procedure TfrmModMovBco.btnBorrarMBClick(Sender: TObject);
begin
  if not Check_Seg(Nivel_Adm, 'BcoProp', AutorDto) then
    raise EUsuario.Create('No esta habilitado para esta función');
  if Application.MessageBox('¿Elimina definitivamente el Movimiento?',
    'Bancos', MB_ICONQUESTION+MB_YESNO) = ID_YES then
  begin
    try
      if not qBancoProp.Transaction.InTransaction then
        qBancoProp.Transaction.StartTransaction;
      qBancoProp.Edit;
      qBancoPropESTADO.AsInteger := 999;
      qBancoProp.Post;
      qBancoProp.Transaction.Commit;
    except
      on E:Exception do
      begin
        qBancoProp.Transaction.Rollback;
        raise EUsuario.Create(E.Message);
      end;
    end;
    ShowMessage('Eliminación movimiento. OK ');
  end;
end;

procedure TfrmModMovBco.cbBancoPropKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.Inc}
end;

procedure TfrmModMovBco.edtImporteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmModMovBco.btnSalirMBClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmModMovBco.btnEditMBClick(Sender: TObject);
begin
  cbBancoProp.SetFocus;
  qBancoProp.Edit;
end;

procedure TfrmModMovBco.btnImpMovBPClick(Sender: TObject);
begin
  if GetDatosChequesP(qBancoPropIDMOV.AsInteger, DatosChqP) then
  begin
    if DatosChqP.MPIm then
    begin
      with dmSaveFile do
      begin
        if ChqModel.Active then
          ChqModel.EmptyDataSet
        else
          ChqModel.CreateDataSet;
        N_A_L('', DatosChqP.Mont, 45, '*', Parte1, Parte2);
        ChqModel.Append;
        ChqModelChNroChq.AsString :=  IntToStr(DatosChqP.NChq);
        ChqModelChMonto.AsCurrency := DatosChqP.Mont;
        ChqModelChDiaEmi.AsInteger := DayOf(DatosChqP.Emis);
        ChqModelChMesEmi.AsString :=  LongMonthNames[MonthOf(DatosChqP.Emis)];
        ChqModelChAnoEmi.AsInteger := YearOf(DatosChqP.Emis);
        ChqModelChDiaVto.AsInteger := DayOf(DatosChqP.Venc);
        ChqModelChMesVto.AsString :=  LongMonthNames[MonthOf(DatosChqP.Venc)];
        ChqModelChAnoVto.AsInteger := YearOf(DatosChqP.Venc);
        ChqModelChTitular.AsString := DatosChqP.DMov;
        ChqModelChPesos1.AsString := Parte1;
        ChqModelChPesos2.AsString := Parte2;
        ChqModelChFirma.AsString := Vacio;
        ChqModelChCruzado.AsBoolean := False;
        ChqModel.Post;
        lstModelChq.DeviceType := 'Screen';
        if Application.MessageBox('Prepare impresora y formulario de cheques.',
           PChar('Cheque Nº '+ChqModelChNroChq.AsString) ,MB_ICONQUESTION+MB_YESNO) = ID_YES then
          lstModelChq.Print;
      end;
    end;
  end;
end;

procedure TfrmModMovBco.btnCancelMBClick(Sender: TObject);
begin
  if qBancoProp.State in dsEditModes then
    qBancoProp.Cancel;
end;

procedure TfrmModMovBco.btnSaveMBClick(Sender: TObject);
var
  IdM: Integer;
begin
  IdM := qBancoPropIDMOV.AsInteger;
  if qBancoProp.State in dsEditModes then
  begin
    try
      qBancoProp.Post;
      qBancoProp.Transaction.Commit;
    except
      qBancoProp.Transaction.Rollback;
      raise;
    end;
    qBancoProp.Close;
    qBancoProp.ParamByName('IdMov').AsInteger := IdM;
    qBancoProp.Open;
  end;
end;

end.
