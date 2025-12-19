unit uMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Forms, Dialogs,
  Menus, ExtCtrls, ImgList, Buttons, ActnList, ComCtrls, ToolWin, WwIntl,
  jpeg, RzBHints, RzGroupBar, RzStatus, RzPanel, RzForms, RzBorder, Controls;

type
  TfrmMain = class(TForm)
    bhIyC_Gestion: TRzBalloonHints;
    wwIyC_Gestion: TwwIntl;
    cbMain_IyC: TCoolBar;
    tbMain_G32: TToolBar;
    btnEntidades: TToolButton;
    btnVentas: TToolButton;
    btnCaja: TToolButton;
    btnOrdComp: TToolButton;
    btnSucursales: TToolButton;
    btnTransDep: TToolButton;
    btnSalir: TToolButton;
    btnProductos: TToolButton;
    btnGastos: TToolButton;
    btnBancos: TToolButton;
    btnTarjetas: TToolButton;
    btnPtoVtas: TToolButton;
    btnCamPrecios: TToolButton;
    btnImpuestos: TToolButton;
    btnServerFiscal: TToolButton;
    tbMain1: TToolButton;
    tbMain2: TToolButton;
    tbMain3: TToolButton;
    tbMain4: TToolButton;

    alGestion32: TActionList;
    aFacturacion: TAction;
    aFondos: TAction;
    aProductos: TAction;
    aClientes: TAction;
    aBancos: TAction;
    aTarjMutual: TAction;
    aProveedores: TAction;
    aEgresos: TAction;
    aTransDep: TAction;
    aImpuestos: TAction;
    aConsVtas: TAction;
    aConsCpras: TAction;
    aConfiguracion: TAction;
    aServerFiscal: TAction;
    aSucursales: TAction;
    aOrddeCompras: TAction;
    aAjusteStk: TAction;
    aMovStk: TAction;
    aDevProv: TAction;
    aSalir: TAction;
    aSenas: TAction;
    aCamPre: TAction;

    sbGestion32: TRzStatusBar;
    pnl1: TRzStatusPane;
    pnlClk: TRzClockStatus;
    pnl2: TRzStatusPane;
    pnl3: TRzStatusPane;
    pnl4: TRzStatusPane;

    gbFB_IyC: TRzGroupBar;
    rgProductos: TRzGroup;
    rgVentas: TRzGroup;
    rgEgresos: TRzGroup;
    rgFondos: TRzGroup;
    rgSistema: TRzGroup;
    rgStocks: TRzGroup;

    iPrincipal: TImage;
    aInventarios: TAction;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure aFacturacionExecute(Sender: TObject);
    procedure aFondosExecute(Sender: TObject);
    procedure aClientesExecute(Sender: TObject);
    procedure aProductosExecute(Sender: TObject);
    procedure aBancosExecute(Sender: TObject);
    procedure aTarjMutualExecute(Sender: TObject);
    procedure aProveedoresExecute(Sender: TObject);
    procedure aEgresosExecute(Sender: TObject);
    procedure aTransDepExecute(Sender: TObject);
    procedure aImpuestosExecute(Sender: TObject);
    procedure aConsVtasExecute(Sender: TObject);
    procedure aConsCprasExecute(Sender: TObject);
    procedure aConfiguracionExecute(Sender: TObject);
    procedure aServerFiscalExecute(Sender: TObject);
    procedure aSucursalesExecute(Sender: TObject);
    procedure aOrddeComprasExecute(Sender: TObject);
    procedure aAjusteStkExecute(Sender: TObject);
    procedure aMovStkExecute(Sender: TObject);
    procedure aDevProvExecute(Sender: TObject);
    procedure aSalirExecute(Sender: TObject);
    procedure aSenasExecute(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure aCamPreExecute(Sender: TObject);
  private
    { Private declarations }
    procedure EnableTasks(Level: Integer);
    procedure LoadMenuAccesLevel;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses uEntidades, uABMArticulos, uFacV, uCalcPrecios,
     uTools, uFondos, udmSaveFile, uOrdenCompra,
     uConfiguracion, uGestTarjetas, udmGestion,
     uGestSucursales, uViewFacC, uEgresos,
     uProveedores, uTransDep, uSenas, uFiscal,
     uGestImp, uMovStk, uInfSubDep, uViewFacV,
     uGestBcos, uServerFiscal, uChangePrice;

{$R *.DFM}

procedure TfrmMain.LoadMenuAccesLevel;
var
  i: Integer;
  Texto: String;
begin
  with dmGestion do
  begin
    MPAccesos.Open;
    if MPAccesos.IsEmpty then
    begin
      for i := 0 to alGestion32.ActionCount - 1 do
      begin
        if (alGestion32.Actions[i] is TAction) then
        begin
          Texto := TAction(alGestion32.Actions[i]).Caption;
          if Texto <> '-' then
          begin
            Delete(Texto, Pos('&', Texto),1);
            MPAccesos.Insert;
            MPAccesosMenuText.AsString := Texto;
            MPAccesosTag.AsInteger := 0;
            MPAccesosNivel.AsInteger := 0; //Nivel Cero = Menu principal
            MPAccesosAcceso.AsInteger := AccesoLibre;
            MPAccesosAccesoStr.AsString := AccesoLibreStr;
            MPAccesos.Post;
          end;
        end;
      end;
    end
    else begin
      for i := 0 to alGestion32.ActionCount - 1 do
      begin
        if (alGestion32.Actions[i] is TAction) then
        begin
          Texto := TAction(alGestion32.Actions[i]).Caption;
          if Texto <> '-' then
          begin
            Delete(Texto, Pos('&', Texto),1);
            if not MPAccesos.Locate(MPAccesosMenuText.FieldName, Texto, []) then
            begin
              MPAccesos.Insert;
              MPAccesosMenuText.AsString := Texto;
              MPAccesosTag.AsInteger := 0;
              MPAccesosNivel.AsInteger := 0; //Nivel Cero = Menu principal
              MPAccesosAcceso.AsInteger := AccesoLibre;
              MPAccesosAccesoStr.AsString := AccesoLibreStr;
              MPAccesos.Post;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmMain.EnableTasks(Level: Integer);
var
  i: Integer;
  Texto: String;
begin
  if Level > AccesoLibre then
    Exit;
  with dmGestion do
  begin
    MPAccesos.Open;
    for i := 0 to alGestion32.ActionCount - 1 do
    begin
      if (alGestion32.Actions[i] is TAction) then
      begin
        Texto := Trim(TAction(alGestion32.Actions[i]).Caption);
        Delete(Texto, Pos('&', Texto), 1);
        if MPAccesos.Locate(MPAccesosMenuText.FieldName, Texto, []) then
          TAction(alGestion32.Actions[i]).Tag := MPAccesosAcceso.Value;
      end;
    end;

    for i := 0 to alGestion32.ActionCount - 1 do
    begin
      if (alGestion32.Actions[i] is TAction) then
        TAction(alGestion32.Actions[i]).Enabled := TAction(alGestion32.Actions[i]).Tag >= Level;
    end;
    MPAccesos.Close;
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  wwIyC_Gestion.Connected := False;
  wwIyC_Gestion.Connected := True;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.OnException := nil;
  if Assigned(frmFiscal) then
    frmFiscal.Epson := nil;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  Caption := Caption+' - '+OwnerName;
  if IdSalesPoint = 0 then
    Application.MessageBox('No hay Punto de Red asignado. Por favor configurelo.-','Punto de Ventas');
  LoadMenuAccesLevel;
  EnableTasks(Tarea);
  Pnl1.Caption := OwnerName;
  if DetalleTarea > Cero then
    Pnl2.Caption := DetalleTarea
  else
    Pnl2.Caption := SysFirm;
  Pnl3.Caption := 'S: '+NameBranch+' / P: '+IntToStr(IdSalesPoint);
  if Usuario > 0 then
    Pnl4.Caption := 'Usr: '+IntToStr(Usuario)+' - '+NombreUsuario
  else
    Pnl4.Caption := SysFirm;
end;

procedure TfrmMain.aFacturacionExecute(Sender: TObject);
begin
  if not ExisteForm('TfrmFacV') then
    frmFacV := TfrmFacV.Create(Self);
  frmFacV.WindowState := wsNormal;
  frmFacV.BringToFront;
  frmFacV.Show;
end;

procedure TfrmMain.aFondosExecute(Sender: TObject);
begin
  frmFondos := TfrmFondos.Create(Self);
  frmFondos.ShowModal
end;

procedure TfrmMain.aClientesExecute(Sender: TObject);
begin
  frmEntidades := TfrmEntidades.Create(Self);
  frmEntidades.ShowModal;
end;

procedure TfrmMain.aProductosExecute(Sender: TObject);
begin
  if not ExisteForm('TfrmABMArticulos') then
    frmABMArticulos := TfrmABMArticulos.Create(Self);
  frmABMArticulos.WindowState := wsNormal;
  frmABMArticulos.Cual_Art := 0;
  frmABMArticulos.ShowModal;
end;

procedure TfrmMain.aCamPreExecute(Sender: TObject);
begin
  frmChangePrice := TfrmChangePrice.Create(Self);
  frmChangePrice.ShowModal;
end;

procedure TfrmMain.aBancosExecute(Sender: TObject);
begin
  frmGestBco := TfrmGestBco.Create(Self);
  frmGestBco.ShowModal;
end;

procedure TfrmMain.aTarjMutualExecute(Sender: TObject);
begin
  frmGestTarMut := TfrmGestTarMut.Create(Self);
  frmGestTarMut.ShowModal;
end;

procedure TfrmMain.aProveedoresExecute(Sender: TObject);
begin
  frmProveedores := TfrmProveedores.Create(Self);
  frmProveedores.ShowModal;
end;

procedure TfrmMain.aEgresosExecute(Sender: TObject);
begin
  frmEgresos := TfrmEgresos.Create(Self);
  frmEgresos.ShowModal;
end;

procedure TfrmMain.aTransDepExecute(Sender: TObject);
begin
  Remito(RemitoTraspaso);
end;

procedure TfrmMain.aImpuestosExecute(Sender: TObject);
begin
  frmGestImp := TfrmGestImp.Create(Self);
  frmGestImp.ShowModal;
end;

procedure TfrmMain.aConsVtasExecute(Sender: TObject);
begin
  Get_FacV(NoEncontrado, IdBranch, IdSalesPoint);
end;

procedure TfrmMain.aConsCprasExecute(Sender: TObject);
begin
  Get_FacC(NoEncontrado, IdBranch, IdSalesPoint);
end;

procedure TfrmMain.aConfiguracionExecute(Sender: TObject);
begin
  frmConfiguracion := TfrmConfiguracion.Create(Self);
  frmConfiguracion.ShowModal;
end;

procedure TfrmMain.aServerFiscalExecute(Sender: TObject);
begin
  frmServidorFiscal := TfrmServidorFiscal.Create(Self);
  frmServidorFiscal.ShowModal;
end;

procedure TfrmMain.aSucursalesExecute(Sender: TObject);
begin
  frmGestSucursales := TfrmGestSucursales.Create(Self);
  frmGestSucursales.ShowModal;
end;

procedure TfrmMain.aOrddeComprasExecute(Sender: TObject);
begin
  frmOrdenCompra := TfrmOrdenCompra.Create(Self);
  frmOrdenCompra.ShowModal;
end;

procedure TfrmMain.aAjusteStkExecute(Sender: TObject);
begin
  Remito(RemitoAjusteSt);
end;

procedure TfrmMain.aMovStkExecute(Sender: TObject);
begin
  Get_MStk(0, 0);
end;

procedure TfrmMain.aDevProvExecute(Sender: TObject);
begin
  Remito(Descuento_D);
end;

procedure TfrmMain.aSalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.aSenasExecute(Sender: TObject);
begin
  frmSenas := TfrmSenas.Create(Self);
  frmSenas.ShowModal;
end;

procedure TfrmMain.btnSalirClick(Sender: TObject);
begin
  aSalir.Execute;
end;

end.
