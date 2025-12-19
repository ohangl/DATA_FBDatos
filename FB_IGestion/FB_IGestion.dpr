program FB_IGestion;
{%ToDo 'FB_IGestion.todo'}
{%File 'CfgBase.ini'}
{%TogetherDiagram 'ModelSupport_FB_Gestion\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\If_Epson\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uGestSucursales\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uSenas\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uContado\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uFormasDePagoNC\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uPagoChProp\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uPagoCh3\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uModMovBco\default.txaPackage'}
{%TogetherDiagram 'ModewlSupport_FB_IGestion\uCalcPrecios\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uVerStk\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uGestImp\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uParamSis\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uDlgExt\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uRendicion\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uProveedores\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uEgresos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uBonifNC\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uListaSelectTalles\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uMovStk\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uModCCP\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\FB_IGestion\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uMain\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uTransInv\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uSearchProd\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uTransDep\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uPagoChqTer\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uSelecUsuario\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uViewFacT\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\udmGestion\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\udmSaveFile\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uPagoNCred\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uChangePrice\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uIniCieInv\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uViewFacV\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uViewOrdP\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uTarjeta\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uError\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uABMArticulos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uBuscaMovBanco\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uClaveMod\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uFiscal\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uEntidades\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uNewPrec\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uInfSubDep\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uOrdenCompra\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\EPSON_Impresora_Fiscal_TLB\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uSelectDestinoSaF\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uDemora\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uFormasDePago\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uViewFacC\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uBuscaFac\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uRemitosProv\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uViewMT\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uFacV\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uImpCodBar\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uGestBcos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uBuscaCta\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uBuscaEmp\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uBeforeDelete\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uRecalcularStock\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uServerFiscal\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uTools\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uVtaConsignacion\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uRegenerarStock\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uGestTarjetas\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\FiscalPrinterLib_TLB\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uFondos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uCambioDeClave\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uPedidosProv\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uOrdPagos\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uConfiguracion\default.txaPackage'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\default.txvpck'}
{%TogetherDiagram 'ModelSupport_FB_IGestion\uCalcPrecios\default.txaPackage'}

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
  uRemitosProv in 'uRemitosProv.pas' {frmRemProv},
  uTransInv in 'uTransInv.pas' {frmTransInv},
  uIniCieInv in 'uIniCieInv.pas' {frmIniCieInv};

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
  Usuario := 0;
  MaxCta := 0;
  ConSubDep := False;
  NombreUsuario := Cero;
  EsRemota := False;
  PasoWin := '';

  Control_Talles := False;
  ConSubDep  := False;
  EsRemota   := False;
  NameBranch := Cero;
  Max_Suc := 0;
  MaxDtoArtII := 0;
  Incluir_CostoConII := False;
  PermitirRem_DeProv := False;                        

  Application.Initialize;
  Application.ProcessMessages;
  Application.Title := 'FB_IGestión';
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
