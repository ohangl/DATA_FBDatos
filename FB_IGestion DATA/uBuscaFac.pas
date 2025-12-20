unit uBuscaFac;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Db, StdCtrls, Mask, Buttons, Wwdbigrd, Wwdbgrid,
  RzButton, RzPanel, ComCtrls, RzDTP, RzEdit, MDOCustomDataSet, MDOTable, MDOQuery;

type
  TfrmFiltraFac = class(TForm)
    gFacturas: TwwDBGrid;
    pnlHeadFiltro: TRzPanel;
    lblDesde: TLabel;
    lblHasta: TLabel;
    lblEntidad: TLabel;
    lblComp: TLabel;
    btnFiltrar: TRzBitBtn;
    btnAceptar: TRzBitBtn;
    btnCancelar: TRzBitBtn;
    dsFiltroFac: TDataSource;
    edtDesde: TRzDateTimeEdit;
    edtHasta: TRzDateTimeEdit;
    qComprobantes: TMDOQuery;
    qComprobantesIDFACTURA: TIntegerField;
    qComprobantesIDSUCURSAL: TIntegerField;
    qComprobantesFECHAF: TDateField;
    qComprobantesNROFACTURA: TMDOStringField;
    qComprobantesTOTAL: TMDOBCDField;
    qComprobantesDESCCORTA: TMDOStringField;
    qComprobantesENTIDAD: TMDOStringField;
    edtEntidad: TRzNumericEdit;
    edtComp: TRzMaskEdit;
    qComprobantesIDPUNTOVENTA: TIntegerField;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gFacturasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnFiltrarClick(Sender: TObject);
    procedure edtEntidadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCompExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gFacturasDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    CualFiltro, TipoCmp: Integer;
  public
    { Public declarations }
  end;

  function FiltrarCompras(TipoComp: Integer; var Cual, Sucu: Integer): Boolean;
  function FiltrarVentas(TipoComp: Integer; var Cual, Sucu: Integer): Boolean;
  function FiltrarRemitos(TipoComp: Integer; var Cual, Sucu, PtoV: Integer): Boolean;

var
  frmFiltraFac: TfrmFiltraFac;

implementation

{$R *.DFM}

uses uTools, udmGestion, uProveedores, uEntidades, uBuscaEmp;

function FiltrarCompras(TipoComp: Integer; var Cual, Sucu: Integer): Boolean;
begin
  Result := False;
  with TfrmFiltraFac.Create(Application) do
  begin
    CualFiltro := 1;
    TipoCmp := TipoComp;
    Caption := 'Busqueda de comprobantes de compras y gastos';
    if ShowModal = mrOK then
    begin
      Cual := dsFiltroFac.DataSet.FieldByName('IdFactura').AsInteger;
      Sucu := dsFiltroFac.DataSet.FieldByName('IdSucursal').AsInteger;
      Result := True;
    end;
  end;
end;

function FiltrarVentas(TipoComp: Integer; var Cual, Sucu: Integer): Boolean;
begin
  Result := False;
  with TfrmFiltraFac.Create(Application) do
  begin
    CualFiltro := 2;
    TipoCmp := TipoComp;
    Caption := 'Busqueda de comprobantes de ventas';
    if ShowModal = mrOK then
    begin
      Result := True;
      Cual := dsFiltroFac.DataSet.FieldByName('IdFactura').AsInteger;
      Sucu := dsFiltroFac.DataSet.FieldByName('IdSucursal').AsInteger;
    end;
  end;
end;

function FiltrarRemitos(TipoComp: Integer; var Cual, Sucu, PtoV: Integer): Boolean;
begin
  Result := False;
  with TfrmFiltraFac.Create(Application) do
  begin
    Caption := 'Busqueda de Envios entre Depositos';
    CualFiltro := 3;
    TipoCmp := TipoComp;
    if ShowModal = mrOK then
    begin
      Result := True;
      Cual := dsFiltroFac.DataSet.FieldByName('IdFactura').AsInteger;
      Sucu := dsFiltroFac.DataSet.FieldByName('IdSucursal').AsInteger;
      PtoV := dsFiltroFac.DataSet.FieldByName('IdPuntoVenta').AsInteger;
    end;
  end;
end;

procedure TfrmFiltraFac.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmFiltraFac.gFacturasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN: ModalResult := mrOK;
    VK_ESCAPE: ModalResult := mrCancel;
  end;
end;

procedure TfrmFiltraFac.btnFiltrarClick(Sender: TObject);
Const
  BCp = 'Select F.IdFactura, F.IdSucursal, F.IdPuntoVenta, '+
        '       <Campo1> F.FechaF, F.NroFactura, F.Total, '+
        '       T.DescCorta, <Entidad1> as Entidad '+
        'From <Tabla1> F '+
        'Join TiposComp T '+
        '  on T.IdComprobante = F.TipoFactura '+
        '<Tabla2> '+
        'Where <Cond> '+
        'Order By F.FechaF ';
var
  AuxComp: St13;
  Tbl, Tmp, Ent,
  Cnd, Jon, Nom: String;
begin
  Tmp := Cero;
  Ent := Cero;
  Cnd := Cero;
  Tbl := Cero;
  Jon := Cero;
  Nom := Cero;

  if edtDesde.Date > 0 then
   Cnd := ' F.FechaF >= ' + QuotedStr(FormatDateTime('mm-dd-yyyy', edtDesde.Date));

  if edtHasta.Date > 0 then
  begin
   if Cnd > Cero then
     Cnd := Cnd + ' and F.FechaF <= ' + QuotedStr(FormatDateTime('mm-dd-yyyy', edtHasta.Date))
   else
     Cnd := ' F.FechaF <= ' + QuotedStr(FormatDateTime('mm-dd-yyyy', edtHasta.Date));
  end;

  if edtEntidad.IntValue > 0 then
  begin
   if Cnd > Cero then
     Cnd := Cnd + ' and <Entidad2> = ' + edtEntidad.Text
   else
     Cnd := ' <Entidad2> = ' + edtEntidad.Text;
  end;

  AuxComp := StringReplace(edtComp.Text, '_', '', [rfReplaceAll]);
  if (Trim(AuxComp) <> '-') and (AuxComp <> '0000-00000000') then
  begin
   if Cnd > Cero then
     Cnd := Cnd + ' and F.NroFactura = ' + QuotedStr(AuxComp)
   else
     Cnd := ' F.NroFactura = ' + QuotedStr(AuxComp);
  end;

  if TipoCmp > 0 then
  begin
   if Cnd > Cero then
     Cnd := Cnd + ' and F.TipoFactura = ' +  IntToStr(TipoCmp)
   else
     Cnd := ' F.TipoFactura = ' +  IntToStr(TipoCmp);
  end;

 if Cnd > Cero then
   Cnd := Cnd + ' and F.State = 0 '
 else
   Cnd := ' F.State = 0 ';

  case CualFiltro of
    1: begin // Compras
         Ent := 'F.Proveedor ';
         Nom := 'E.Nombre ';
         Tbl := ' FacCom ';
         Jon := 'Join Proveedores E on E.IdProveedor = F.Proveedor';
         Tmp := StringReplace(BCp, '<Campo1>', ' ', [rfReplaceAll]);
       end;
    2: begin  // Ventas
         Ent := 'F.Cliente ';
         Nom := 'E.Nombre ';
         Tbl := ' FacVen ';
         Jon := 'Join Clientes E on E.IdCliente = F.Cliente And E.IdSucursal = F.IdSucursal ';
         Tmp := StringReplace(BCp, '<Campo1>', ' F.IdPuntoVenta, ', [rfReplaceAll]);
       end;
    3: begin  // Transferencias
         if TipoCmp in [39, 46] then
         begin
           Ent := 'F.Empleado ';
           Nom := 'E.Nombre ';
           Tbl := ' Traspaso ';
           Jon := 'Join Empleados E on E.IdEmpleado = F.Empleado';
         end;
         if TipoCmp = Descuento_D then
         begin
           Ent := 'F.Proveedor ';
           Nom := 'E.Nombre ';
           Tbl := ' Traspaso ';
           Jon := 'Join Proveedores E on E.IdProveedor = F.Empleado';
         end;
         Tmp := StringReplace(BCp, '<Campo1>', ' ', [rfReplaceAll]);
       end;
  end;

  Tmp := StringReplace(Tmp, '<Tabla1>', Tbl, [rfReplaceAll]);
  Tmp := StringReplace(Tmp, '<Tabla2>', Jon, [rfReplaceAll]);
  Tmp := StringReplace(Tmp, '<Cond>', Cnd, [rfReplaceAll]);
  Tmp := StringReplace(Tmp, '<Entidad1>', Nom, [rfReplaceAll]);
  Tmp := StringReplace(Tmp, '<Entidad2>', Ent, [rfReplaceAll]);
  try
    Screen.Cursor := crHourGlass;
    qComprobantes.Close;
    qComprobantes.SQL.Text := Tmp;
    qComprobantes.Open;
    if not qComprobantes.IsEmpty then
      gFacturas.SetFocus
    else
      edtDesde.SetFocus;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmFiltraFac.edtEntidadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (Key = VK_F3) then
  begin
    case CualFiltro of
      1:begin
          IdEntidad := Busca_Pro;
          if IdEntidad > NoEncontrado then
            edtEntidad.Text := IntToStr(IdEntidad);
        end;
      2:begin
          if Busca_Cli(IdEntidad, IdSucEnt) then
            edtEntidad.Text := IntToStr(IdEntidad);
        end;
      3:begin
          frmBuscaEmp := TfrmBuscaEmp.Create(Self);
          if frmBuscaEmp.ShowModal = mrOk then
            edtEntidad.Text := IntToStr(frmBuscaEmp.Elegido);
        end;
    end;
  end;
end;

procedure TfrmFiltraFac.edtCompExit(Sender: TObject);
Var
  Part1, Part2: Integer;
begin
  try
    Part1:= StrToInt(Trim(Copy(edtComp.Text,1,Pos('-',edtComp.Text)-1)));
  except
    on E: EConvertError do
    begin
       if Trim(Copy(edtComp.Text,1,Pos('-',edtComp.Text)-1)) <> Vacio then
       begin
         edtComp.SetFocus;
         edtComp.SelStart := 0;
         edtComp.SelLength := 3;
         raise EUsuario.Create('Error en el Nº de serie del comprobante');
       end;
    end;
  end;
  try
    Part2:= StrToInt(Trim(Copy(edtComp.Text,Pos('-',edtComp.Text)+1,Length(edtComp.Text))));
  except
    on E: EConvertError do
    begin
      if Trim(Copy(edtComp.Text,Pos('-',edtComp.Text)+1,Length(edtComp.Text))) <> Vacio then
      begin
        edtComp.SetFocus;
        edtComp.SelStart := 5;
        edtComp.SelLength := 8;
        raise EUsuario.Create('Error en el Nº de factura del comprobante');
      end;
    end;
  end;
  edtComp.Text := Format('%.4d-%.8d', [Part1, Part2]);
end;

procedure TfrmFiltraFac.FormCreate(Sender: TObject);
begin
  edtDesde.Date := Date;
  edtHasta.Date := Date;
end;

procedure TfrmFiltraFac.gFacturasDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmFiltraFac.FormShow(Sender: TObject);
begin
  Case CualFiltro of
    1: lblEntidad.Caption := 'Proveedor';
    2: lblEntidad.Caption := 'Cliente';
    3: lblEntidad.Caption := 'Empleado';
  end;
end;

end.
