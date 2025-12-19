unit uBuscaCta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Wwdbigrd, Wwdbgrid,  RzButton,
  MDOCustomDataSet, MDOQuery, uTools, RzPanel, Mask, RzEdit;

type
  TfrmBuscaCta = class(TForm)
    pnlCualCta: TRzPanel;
    lblCuenta: TLabel;
    edtCuenta: TRzEdit;
    gCuentas: TwwDBGrid;
    btnOkey: TRzBitBtn;
    btnCancelar: TRzBitBtn;

    dsBuscaCta: TDataSource;
    qBuscaCta: TMDOQuery;
    qBuscaCtaCodigo: TIntegerField;
    qBuscaCtaDetalleCentro: TStringField;
    qBuscaCtaIDCUENTA: TIntegerField;
    qBuscaCtaDESCRIPCION: TMDOStringField;
    qBuscaCtaCODIGOCONTABLE: TMDOStringField;
    qBuscaCtaNOMBRESUC: TMDOStringField;

    procedure btnOkeyClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCuentaExit(Sender: TObject);
    procedure gCuentasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure gCuentasDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Elegido: Integer;
  end;

  function Search_Cuenta(Searched: String; Var C: TDatos_PlanCta): Integer;

var
  frmBuscaCta: TfrmBuscaCta;

implementation

uses udmGestion;

{$R *.DFM}

const
   BusCta = 'Select P.IdCuenta, P.Codigo, P.Descripcion, ' +
            '       P.CodigoContable, P.DetalleCentro, S.NombreSuc ' +
            'From PlanCtas P ' +
            'Left Outer Join Sucursales S ' +
            '  on S.IdSucursal = P.IdSucursal ' +
            'Where Upper(Descripcion) like :Buscado And Nivel = 1 ';


function Search_Cuenta(Searched: String; Var C:TDatos_PlanCta): Integer;
begin
  Result := NoEncontrado;
  FillChar(C, SizeOf(TDatos_PlanCta), 0);
  frmBuscaCta := TfrmBuscaCta.Create(nil);
  frmBuscaCta.edtCuenta.Text := Searched;
  if (frmBuscaCta.ShowModal = mrOK) and
     (frmBuscaCta.Elegido > NoEncontrado) then
  begin
    Result := frmBuscaCta.Elegido;
    C.IdCuenta := frmBuscaCta.qBuscaCtaIDCUENTA.AsInteger;
    C.Descripcion := frmBuscaCta.qBuscaCtaDESCRIPCION.AsString;
    C.DetalleCtro := frmBuscaCta.qBuscaCtaDetalleCentro.AsString;
    C.CodigoCon := frmBuscaCta.qBuscaCtaCODIGOCONTABLE.AsString;
  end;
end;

procedure TfrmBuscaCta.btnOkeyClick(Sender: TObject);
begin
  if not qBuscaCtaIdCuenta.IsNull then
    Elegido := qBuscaCtaIdCuenta.AsInteger
  else
    Elegido := NoEncontrado;
end;

procedure TfrmBuscaCta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmBuscaCta.edtCuentaExit(Sender: TObject);
begin
  if not btnCancelar.Focused then
  begin
    qBuscaCta.Close;
    qBuscaCta.ParamByName('Buscado').AsString := '%' + edtCuenta.Text + '%';
    qBuscaCta.Open;
    if not qBuscaCta.IsEmpty then
      gCuentas.SetFocus
    else
      pnlCualCta.SetFocus;
  end;
end;

procedure TfrmBuscaCta.gCuentasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    if not qBuscaCtaIdCuenta.IsNull then
      Elegido := qBuscaCtaIdCuenta.AsInteger
    else
      Elegido := NoEncontrado;
    ModalResult := mrOK;
  end;
end;

procedure TfrmBuscaCta.FormCreate(Sender: TObject);
begin
  Elegido := NoEncontrado;
end;

procedure TfrmBuscaCta.gCuentasDblClick(Sender: TObject);
begin
  if not qBuscaCtaIdCuenta.IsNull then
    Elegido := qBuscaCtaIdCuenta.AsInteger
  else
    Elegido := NoEncontrado;
  ModalResult := mrOK;
end;

end.
