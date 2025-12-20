unit uRemitosProv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls,
  RzButton, MDOCustomDataSet, MDOQuery, DB, RzPanel, RzTabs, Mask, RzEdit;

type
  TfrmRemProv = class(TForm)
    pnlRemPen2: TRzPanel;
    btnAceptar: TRzBitBtn;
    btnCancelar: TRzBitBtn;

    dsArtRem: TDataSource;
    qArtRem: TMDOQuery;

    btnExpPrdPen: TRzBitBtn;
    qArtRemIDARTICULO: TIntegerField;
    qArtRemCANTIDAD: TMDOBCDField;
    qArtRemNROFACTURA: TMDOStringField;
    qArtRemFECHAF: TDateField;
    qArtRemIDFACTURA: TIntegerField;
    qArtRemIDPUNTOVENTA: TIntegerField;
    qArtRemIDITEM: TSmallintField;
    qArtRemDETPROD: TMDOStringField;
    qArtRemSelected: TBooleanField;
    qArtRemIDSUCURSAL: TIntegerField;
    qArtRemPROVEEDOR: TIntegerField;
    qArtRemNOMBRE: TMDOStringField;
    pcRemPen: TRzPageControl;
    pnlRemPen1: TRzPanel;
    lblProv: TLabel;
    lblNomProvCmp: TLabel;
    edtProvCmp: TRzNumericEdit;
    btnPendProv: TRzBitBtn;
    gRecibidos: TwwDBGrid;
    qArtRemCANT_REM: TMDOBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gRecibidosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnExpPrdPenClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gRecibidosUpdateFooter(Sender: TObject);
    procedure edtProvCmpEnter(Sender: TObject);
    procedure edtProvCmpExit(Sender: TObject);
    procedure edtProvCmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnPendProvClick(Sender: TObject);
    procedure gRecibidosMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
  private
    { Private declarations }
    var
      Llegados, CProv: Integer;
  public
    { Public declarations }
    function Recibidos(Proveedor, Tipo_Comp, IdEmpresa: Integer): Boolean;
  end;

var
  frmRemProv: TfrmRemProv;

implementation

uses udmGestion, uTools, uProveedores;

{$R *.dfm}

function TfrmRemProv.Recibidos(Proveedor, Tipo_Comp, IdEmpresa: Integer): Boolean;
begin
  qArtRem.Close;
  qArtRem.ParamByName('Proveedor').AsInteger := Proveedor;
  qArtRem.ParamByName('Tipo_Comp').AsInteger := Tipo_Comp;
  qArtRem.ParamByName('IdEmpresa').AsInteger := IdEmpresa;
  try
    Screen.Cursor := crHourGlass;
    qArtRem.Open;
    CProv := Proveedor;
    Result := not qArtRem.IsEmpty;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmRemProv.btnExpPrdPenClick(Sender: TObject);
begin
  if not qArtRem.IsEmpty then
  begin
    dmGestion.IyC_Exp.DataSet := qArtRem;
    dmGestion.IyC_Exp.Select;
  end;
end;

procedure TfrmRemProv.btnPendProvClick(Sender: TObject);
begin
  qArtRem.Close;
  if CProv > 0 then
  begin
    try
      Screen.Cursor := crHourGlass;
      qArtRem.ParamByName('Proveedor').AsInteger := CProv;
      qArtRem.ParamByName('Tipo_Comp').AsInteger := RemitoR;
      qArtRem.ParamByName('IdEmpresa').AsInteger := 0;
      qArtRem.Open;
      if not qArtRem.IsEmpty then
      begin
        qArtRemSelected.ReadOnly := True;
        qArtRemSelected.Visible := False;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
  gRecibidos.Enabled := (not qArtRem.IsEmpty);
end;

procedure TfrmRemProv.edtProvCmpEnter(Sender: TObject);
begin
  CProv := 0;
end;

procedure TfrmRemProv.edtProvCmpExit(Sender: TObject);
begin
  try
    CProv := edtProvCmp.IntValue;
  except
    CProv := 0;
  end;
  if CProv = 0 then
    lblNomProvCmp.Caption := '<TODOS>'
  else begin
    if GetDatosEnt(CProv, IdBranch, 2, Datos_Ent) then
    begin
      lblNomProvCmp.Caption := Datos_Ent.Nombre;
      edtProvCmp.IntValue := CProv;
    end;
  end;
end;

procedure TfrmRemProv.edtProvCmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  CProv := 0;
  case Key of
    VK_F3: begin
      CProv := Busca_Pro;
      if GetDatosEnt(CProv, IdBranch, 2, Datos_Ent) then
      begin
        edtProvCmp.IntValue := CProv;
        lblNomProvCmp.Caption := Datos_Ent.Nombre;
      end;
    end;
    VK_ESCAPE: btnCancelar.SetFocus;
  end;
end;

procedure TfrmRemProv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmRemProv.FormShow(Sender: TObject);
begin
  gRecibidos.GroupFieldName := 'Nombre';
  Llegados := 0;
  lblNomProvCmp.Caption := '';
  if (CProv > 0) and (GetDatosEnt(CProv, IdBranch, 2, Datos_Ent)) then
  begin
    lblNomProvCmp.Caption := Datos_Ent.Nombre;
    edtProvCmp.IntValue := CProv;
  end;
  Application.ProcessMessages;
end;

procedure TfrmRemProv.gRecibidosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = Vk_Escape then
    btnAceptar.SetFocus;
end;

procedure TfrmRemProv.gRecibidosMultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
begin
  if Selecting then
    Inc(Llegados)
  else begin
    if Llegados > 0 then
      Dec(Llegados)
  end;
  gRecibidos.ColumnByName('DetProd').FooterValue := 'Items recibidos';
  gRecibidos.ColumnByName('Cantidad').FooterValue := Format('%d',[Llegados]);
  Application.ProcessMessages;
end;

procedure TfrmRemProv.gRecibidosUpdateFooter(Sender: TObject);
begin
  gRecibidos.ColumnByName('DetProd').FooterValue := 'Items recibidos';
  gRecibidos.ColumnByName('Cantidad').FooterValue := Format('%d',[Llegados]);
end;

end.
