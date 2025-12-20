program FB_Gestion;
{%ToDo 'FB_Gestion.todo'}
{%File 'CfgBase.ini'}
{%TogetherDiagram 'ModelSupport_FB_Gestion\default.txaPackage'}

uses
  Forms,
  Windows,
  Controls,
  uMain in 'uMain.pas' {frmMain},
  uFacV in 'uFacV.pas' {frmFacV},
  uEntidades in 'uEntidades.pas' {frmEntidades},
  udmGestion in 'udmGestion.pas' {dmGestion: TDataModule},
  uABMArticulos in 'uABMArticulos.pas' {frmABMArticulos},
  uTools in 'uTools.pas',
  uContado in 'uContado.pas' {frmContado},
  uTarjeta in 'uTarjeta.pas' {frmPagoTarjeta},
  uDemora in 'uDemora.pas' {frmDemora},
  uBuscaEmp in 'uBuscaEmp.pas' {frmBuscaEmp},
  udmSaveFile in 'udmSaveFile.pas' {dmSaveFile: TDataModule},
  uGestTarjetas in 'uGestTarjetas.pas' {frmGestTarMut},
  uFiscal in 'uFiscal.pas' {frmFiscal},
  uBuscaFac in 'uBuscaFac.pas' {frmFiltraFac},
  uPagoCh3 in 'uPagoCh3.pas' {frmPagoCheque},
  uPagoChqTer in 'uPagoChqTer.pas' {frmPagoChqTer},
  uViewFacC in 'uViewFacC.pas' {frmViewFacC},
  uViewFacV in 'uViewFacV.pas' {frmViewFacV},
  uPagoChProp in 'uPagoChProp.pas' {frmPagoChequeProp},
  uEgresos in 'uEgresos.pas' {frmEgresos},
  uError in 'uError.pas' {frmError},
  uProveedores in 'uProveedores.pas' {frmProveedores},
  If_Epson in 'If_Epson.pas',
  uSelecUsuario in 'uSelecUsuario.pas' {frmSelecUsuario},
  uBuscaMovBanco in 'uBuscaMovBanco.pas' {frmBuscaMovBanco},
  uGestBcos in 'uGestBcos.pas' {frmGestBco},
  uGestImp in 'uGestImp.pas' {frmGestImp},
  uSeguridad in 'uSeguridad.pas' {frmSeguridad},
  uFondos in 'uFondos.pas' {frmFondos},
  uTransDep in 'uTransDep.pas' {frmTransDep},
  uRecalcularStock in 'uRecalcularStock.pas' {frmRecalcularStock},
  uBuscaCta in 'uBuscaCta.pas' {frmBuscaCta},
  uDlgExt in 'uDlgExt.pas' {frmDlgExt},
  uServerFiscal in 'uServerFiscal.pas' {frmServidorFiscal},
  uFormasDePago in 'uFormasDePago.pas' {frmFormasDePago},
  uParamSis in 'uParamSis.pas' {frmParametrosSistema},
  uGestSucursales in 'uGestSucursales.pas' {frmGestSucursales},
  uClaveMod in 'uClaveMod.pas' {frmClaveMod},
  uCalcPrecios in 'uCalcPrecios.pas' {frmCalcPrecios},
  uOrdenCompra in 'uOrdenCompra.pas' {frmOrdenCompra},
  uFormasDePagoNC in 'uFormasDePagoNC.pas' {frmFormasDePagoNC},
  uMovStk in 'uMovStk.pas' {frmMovStk},
  uBonifNC in 'uBonifNC.pas' {frmBonifNC},
  uViewFacT in 'uViewFacT.pas' {frmViewFacT},
  uViewOrdP in 'uViewOrdP.pas' {frmViewOrdP},
  uModCCP in 'uModCCP.pas' {frmModCCP},
  uOrdPagos in 'uOrdPagos.pas' {frmOrdPagos},
  uListaSelectTalles in 'uListaSelectTalles.pas' {frmListaSelecTalles},
  uPedidosProv in 'uPedidosProv.pas' {frmPedProv},
  uViewMT in 'uViewMT.pas' {frmViewMT},
  uRendicion in 'uRendicion.pas' {frmRendicion},
  uNewPrec in 'uNewPrec.pas' {frmNewPrec},
  uChangePrice in 'uChangePrice.pas' {frmChangePrice},
  uCambioDeClave in 'uCambioDeClave.pas' {frmCambioDeClave},
  uSenas in 'uSenas.pas' {frmSenas},
  uImpCodBar in 'uImpCodBar.pas' {frmImpCodBar},
  uVtaConsignacion in 'uVtaConsignacion.pas' {frmVtaConsignacion},
  uInfSubDep in 'uInfSubDep.pas' {frmInfSubDep},
  uCreditos in 'uCreditos.pas' {frmCreditos},
  uRecibos in 'uRecibos.pas' {frmRecibos},
  uBeforeDelete in 'uBeforeDelete.pas' {frmBeforeDelete},
  uPagoNCred in 'uPagoNCred.pas' {frmPagoNCred},
  uModMovBco in 'uModMovBco.pas' {frmModMovBco},
  FiscalPrinterLib_TLB in 'c:\archivos de programa\borland\bds\4.0\Imports\FiscalPrinterLib_TLB.pas',
  EPSON_Impresora_Fiscal_TLB in 'c:\archivos de programa\borland\bds\4.0\Imports\EPSON_Impresora_Fiscal_TLB.pas',
  uSelectDestinoSaF in 'uSelectDestinoSaF.pas' {frmSelectDestinoSAF},
  uConfiguracion in 'uConfiguracion.pas' {frmConfiguracion},
  uVerStk in 'uVerStk.pas' {frmVerStk},
  uRegenerarStock in 'uRegenerarStock.pas' {frmRegenerarStock},
  uSearchProd in 'uSearchProd.pas' {frmSearchProd},
  uRemitosProv in 'uRemitosProv.pas' {frmRemProv};

{$R *.RES}

procedure CheckInstance;
begin
  CreateMutex(nil, false, 'FB_Gestión');
  if GetLastError = ERROR_ALREADY_EXISTS then begin
    SendMessage(HWND_BROADCAST, RegisterWindowMessage('FB_Gestión'), 0, 0);
    Halt(0);
  end;
  ShowWindow(Application.Handle, SW_RESTORE);
end;

begin
  CheckInstance;

  // Variables Globales
  ServidorFiscal := False;
  AutoFacturacion := False;
  ControladorLocal := False;
  IdSalesPoint := 0;
  SectorSistema := 0;
  IdBranch := 0;
  IdListaPre := 0;
  Usuario := 0;
  MaxCta := 0;
  ConSubDep := False;
  NombreUsuario := Cero;
  EsRemota := False;
  IntMoraDia := 0;
  PasoWin := '';

  Control_Talles := False;
  ConSubDep  := False;
  EsRemota   := False;
  ModoTest   := False;
  NameBranch := Cero;
  Max_Suc := 0;
  MaxDtoArtII := 0;
  Hacer_Trans_EnFact := False;
  Sistema_DeCreditos := False;
  Incluir_CostoConII := False;
  Con_Señas_Creditos := False;
  Con_ListasDePrecio := False;
  PermitirRem_DeProv := False;

  Application.Initialize;
  Application.ProcessMessages;
  Application.Title := 'FB_Gestión';
  Application.CreateForm(TdmGestion, dmGestion);
  Application.CreateForm(TdmSaveFile, dmSaveFile);
  with dmGestion do
  begin
    Application.ProcessMessages;
    frmSelecUsuario := TfrmSelecUsuario.Create(nil);
    if frmSelecUsuario.ShowModal = mrOK then
    begin
      Application.ProcessMessages;
      Set_Terminal(IdSalesPoint, IdBranch, Usuario, 1);
      Case Tarea of
        SoloVentas: begin
          Application.CreateForm(TfrmFacV, frmFacV);
          Application.CreateForm(TfrmError, frmError);
          Application.OnException := frmError.IyCException;
        end;
        ServerFiscal: begin
          Application.CreateForm(TfrmServidorFiscal, frmServidorFiscal);
          Application.CreateForm(TfrmError, frmError);
          Application.OnException := frmError.IyCException;
        end;
        else begin
          Application.CreateForm(TfrmMain, frmMain);
          Application.CreateForm(TfrmFiscal, frmFiscal);
          Application.CreateForm(TfrmError, frmError);
          Application.OnException := frmError.IyCException;
        end;
      end;
      Application.Run;
    end
    else begin
      dbGestion.Close;
      Application.Run;
    end;
  end;
end.
