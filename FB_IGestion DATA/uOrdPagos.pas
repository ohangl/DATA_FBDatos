unit uOrdPagos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppDB, ppDBPipe, ppMemo, ppCtrls, ppBands, ppReport, ppStrtch, uTools,
  ppSubRpt, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, DB,
  DBClient, ppRichTx, MDOCustomDataSet, MDOQuery, DateUtils;

type
  TfrmOrdPagos = class(TForm)
    lstDetOrdenPago: TppReport;
    hbOrdPago: TppHeaderBand;
    ppShapeOP1: TppShape;
    lblTitulo1: TppLabel;
    lblEmision1: TppSystemVariable;
    lblOP: TppLabel;
    srDetComp: TppSubReport;
    ppChildReport1: TppChildReport;
    tpItmOP: TppTitleBand;
    ppShapeOP3: TppShape;
    lblComprobanteP: TppLabel;
    lblFecP: TppLabel;
    lblImpP: TppLabel;
    lbpPagP: TppLabel;
    lblSdoP: TppLabel;
    dpItmOP: TppDetailBand;
    lblNCompP: TppDBText;
    lblImporteP: TppDBText;
    lblTCompP: TppDBText;
    lblPagadoP: TppDBText;
    lblSaldoP: TppDBText;
    lblFechaP: TppDBText;
    sbItmOP: TppSummaryBand;
    lblTotComp: TppLabel;
    lblProv: TppLabel;
    lblDirec: TppLabel;
    dbOrdPago: TppDetailBand;
    sbOrdPago: TppSummaryBand;
    ppShapeOP2: TppShape;
    ppShapeOP6: TppShape;
    ppShapeOP7: TppShape;
    lblRecibi: TppLabel;
    lblRecibo: TppMemo;
    ppShapeOP5: TppShape;
    lblGerente: TppLabel;
    ppItemsPg: TppDBPipeline;
    ppItemsOP: TppDBPipeline;
    ppOrdenes: TppDBPipeline;
    srDetPagos: TppSubReport;
    ppChildReport2: TppChildReport;
    tpItmPg: TppTitleBand;
    dbItmPg: TppDetailBand;
    sbItmPg: TppSummaryBand;
    lnItmPg: TppLine;
    ppShapeOP4: TppShape;
    lblDetPago: TppLabel;
    lblVto: TppLabel;
    lblImpOP: TppLabel;
    lblTPago: TppDBText;
    lblDescripcion: TppDBText;
    lblFVto: TppDBText;
    lblImporteOP: TppDBText;
    lblDetalle: TppDBText;
    lblTotPag: TppLabel;
    dbTotPagos: TppDBCalc;
    lblNomEnt1: TppDBText;
    lblNOrdPagos: TppDBText;
    lblNomEnt2: TppDBText;
    lblFecE: TppDBText;
    ppShapeOP8: TppShape;
    lblIdOrd: TppDBText;
    lblUsr: TppDBText;
    lblTotalPagado: TppDBText;
    ppShapeOP9: TppShape;
    lblTotalSaldos: TppDBCalc;
    lblTotalComprobantes: TppDBCalc;
    lblOperCan: TppLabel;
    lblPagRealizados: TppLabel;
    ppShapeOP10: TppShape;
    lblTotaPag: TppLabel;
    lblTotal: TppDBText;
    lblNroCompPago: TppDBText;
    lblImpComprobante: TppDBText;
    lblTipoPago: TppLabel;
    lstCertRet: TppReport;
    hbEncCertRet: TppHeaderBand;
    dbCertRet: TppDetailBand;
    fbPieCertRet: TppFooterBand;
    lblDGR: TppLabel;
    lblAfip: TppImage;
    lblTituloCert: TppLabel;
    lblCNro: TppLabel;
    lblNroCert: TppDBText;
    lblCFecha: TppLabel;
    lblFechaCert: TppDBText;
    lblFirma: TppLabel;
    lblCAclaracion: TppLabel;
    lblCCargo: TppLabel;
    lblDeclaro: TppLabel;
    lblCDatosAR: TppLabel;
    lblCDatosSR: TppLabel;
    lblCDatosRP: TppLabel;
    lblCANDAg: TppLabel;
    lblCDocAg: TppLabel;
    lblCDomAg: TppLabel;
    lblCANDsr: TppLabel;
    lblCDocSR: TppLabel;
    lblCDomSR: TppLabel;
    lblCDetImp: TppLabel;
    lblDetReg: TppLabel;
    lblCNroOP: TppLabel;
    lblCMtoOP: TppLabel;
    ppLabel2: TppLabel;
    lblCAdicLH: TppLabel;
    lblMtoLetras1: TppDBText;
    lblMtoLetras2: TppDBText;
    lblCDetalleImp: TppDBText;
    lblCDetalleRegimen: TppDBText;
    lblCNroOrdenDePago: TppDBText;
    lblCMontoOP: TppDBText;
    lblCPrcRet1: TppDBText;
    lblCPrcRet2: TppDBText;
    lnCertRet1: TppLine;
    lnCertRet2: TppLine;
    lnCertRet3: TppLine;
    shpPieCertRet: TppShape;
    lblCNomARet: TppDBText;
    lblCDocARet: TppDBText;
    lblCDomARet: TppDBText;
    lblCNomSRet: TppDBText;
    lblCDocSRet: TppDBText;
    lblCDomSRet: TppDBText;
    lblCNroIBt: TppLabel;
    lblCNIBSRet: TppDBText;
    lblCMtoRet1: TppDBText;
    lblCMtoRet2: TppDBText;
    ppCertRet: TppDBPipeline;
    lblNroPag: TppSystemVariable;
    shpTitCertRet: TppShape;
    ppCertRetppField20: TppField;

    CertRet: TClientDataSet;
    dsCertRet: TDataSource;
    CertRetNroCert: TStringField;
    CertRetFechaC: TDateField;
    CertRetNomRet: TStringField;
    CertRetDocRet: TStringField;
    CertRetDomRet: TStringField;
    CertRetDetImp: TStringField;
    CertRetDetReg: TStringField;
    CertRetNroPag: TStringField;
    CertRetMontoOP: TCurrencyField;
    CertRetReteOP1: TCurrencyField;
    CertRetReteOP2: TCurrencyField;
    CertRetTotRete: TCurrencyField;
    CertRetMontoL1: TStringField;
    CertRetMontoL2: TStringField;
    CertRetPrcRet1: TFloatField;
    CertRetPrcRet2: TFloatField;
    CertRetNomAge: TStringField;
    CertRetDocAge: TStringField;
    CertRetDomAge: TStringField;
    CertRetDocRet2: TStringField;

    qDatosCert: TMDOQuery;
    qDatosCertIDORDEN: TIntegerField;
    qDatosCertENTIDAD: TIntegerField;
    qDatosCertFECHAOP: TDateField;
    qDatosCertNROCOMPOP: TMDOStringField;
    qDatosCertTOTALOP: TMDOBCDField;
    qDatosCertRETENCIONES: TMDOBCDField;
    qDatosCertNETOOP: TMDOBCDField;
    qDatosCertRETENCIONI: TMDOBCDField;
    qDatosCertRETENCIONG: TMDOBCDField;
    qDatosCertRETENCIONB: TMDOBCDField;
    qDatosCertPRCRETG: TMDOBCDField;
    qDatosCertPRCRETI: TMDOBCDField;
    qDatosCertPRCRETB1: TMDOBCDField;
    qDatosCertPRCRETB2: TMDOBCDField;
    qDatosCertRETENCIONS: TMDOBCDField;
    qDatosCertPRCRETS: TMDOBCDField;
    qDatosCertRETENCIONH: TMDOBCDField;
    qDatosCertNROCERTIVA: TMDOStringField;
    qDatosCertNROCERTGAN: TMDOStringField;
    qDatosCertNROCERTIBT: TMDOStringField;
    qDatosCertNROCERTSES: TMDOStringField;
    qDatosCertIDEMPRESA: TIntegerField;

  private
    { Private declarations }
    Parte1, Parte2: St80;
    procedure PrintOP(NroOP: Integer; VerOP: Boolean);
    procedure Print_Cert(NroOP: Integer; TipoCert: SmallInt);
  public
    { Public declarations }
    class procedure Imprimir_OrdenPagos(NroOP: Integer; VerOP: Boolean);
    class procedure Imprimir_Certificado(NroOP: Integer; TCert: SmallInt);
  end;

var
  frmOrdPagos: TfrmOrdPagos;

implementation

uses udmSaveFile, udmGestion, uEgresos;

{$R *.dfm}

procedure TfrmOrdPagos.PrintOP(NroOP: Integer; VerOP: Boolean);
var
  TotItPg: Currency;
  j: SmallInt;
  q: TMDOQuery;
  DtEmpresa, Direccion,
  Documento, NroIngBto: String;
begin
  dmSaveFile.qOrdenes.Close;
  dmSaveFile.qItemsOP.Close;
  dmSaveFile.qItemsPG.Close;
  dmSaveFile.qOrdenes.SelectSQL.Text := Ordenes+' Where O.IDORDEN =:IdOrden';
  dmSaveFile.qOrdenes.ParamByName('IdOrden').AsInteger := NroOP;
  dmSaveFile.qOrdenes.Open;
  if not dmSaveFile.qOrdenes.IsEmpty then
  begin
    TotItPg := 0;
    dmSaveFile.qItemsOP.First;
    while not dmSaveFile.qItemsOP.Eof do
    begin
      TotItPg := TotItPg + dmSaveFile.qItemsOPMontoOrg.AsCurrency;
      dmSaveFile.qItemsOP.Next;
    end;

    try
      q := TMDOQuery.Create(nil);
      q.Database := dmGestion.dbGestion;
      q.Transaction := dmSaveFile.trVerComp;
      q.SQL.Add('Select NombreEmpresa, Direccion,');
      q.SQL.Add('       Localidad, Provincia, ');
      q.SQL.Add('       DocuEmp, IngBrutEmp ');
      q.SQL.Add('From DatosSis ');
      q.SQL.Add('Where IdEmpresa =:IdEmp ');
      q.ParamByName('IdEmp').AsInteger := dmSaveFile.qOrdenesIdEmpresa.AsInteger;
      q.Open;
      if not q.IsEmpty then
      begin
        DtEmpresa := q.FieldByName('NombreEmpresa').AsString;
        Direccion := q.FieldByName('Direccion').AsString+' '+
                     q.FieldByName('Localidad').AsString+' '+
                     q.FieldByName('Provincia').AsString;
        Documento := q.FieldByName('DocuEmp').AsString;
        NroIngBto := q.FieldByName('IngBrutEmp').AsString
      end
      else begin
        raise EUsuario.Create('No se Encuentran o no se puede acceder a los datos de la Empresa Nº '+IntToStr(qDatosCertIDEMPRESA.AsInteger));
      end;
    finally
      q.Free;
    end;


    lblTitulo1.Caption := DtEmpresa;
    lblGerente.Caption := 'p/ '+DtEmpresa;
    lblDirec.Caption := Direccion;
    lblRecibo.Lines.Add('Recibí de '+DtEmpresa+' en concepto');
    lblRecibo.Lines.Add('de pago de los comprobantes detallados');
    lblRecibo.Lines.Add('precedentemente la Suma de: ');
    N_A_L('Pesos', dmSaveFile.qOrdenesTotalOP.AsCurrency, 80, ' ', Parte1, Parte2);
    lblRecibo.Lines.Add(Parte1+' '+Parte2);
    lstDetOrdenPago.PrinterSetup.Copies := 2;
    dmSaveFile.qItemsOP.First;

    if VerOP then
      lstDetOrdenPago.DeviceType := 'Screen'
    else
      lstDetOrdenPago.DeviceType := 'Printer';

    try
      lstDetOrdenPago.Print;
    except
      on E:Exception do
        raise EUsuario.Create('Error: '+E.Message);
    end;

    // Imprimir cheques propios
    if not dmSaveFile.AuxBcoPro.IsEmpty then
    begin
      if Application.MessageBox('¿Imprime los Cheques asociados a la Orden de Pagos?.', 'Cheques',MB_ICONQUESTION+MB_YESNO) = ID_YES then
      begin
        with dmSaveFile do
        begin
          if ChqModel.Active then
            ChqModel.EmptyDataSet
          else
            ChqModel.CreateDataSet;
          Parte1 := '';
          Parte2 := '';
          AuxBcoPro.First;
          While not AuxBcoPro.Eof do
          begin
            try
              if GetDatosChequesP(AuxBcoProIdMov.AsInteger, DatosChqP) then
              begin
                if DatosChqP.MPIm then
                begin
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
                  try
                    if not qOrdenes.Transaction.InTransaction then
                      qOrdenes.Transaction.StartTransaction;
                    try
                      q := TMDOQuery.Create(nil);
                      q.Database := qOrdenes.Database;
                      q.Transaction := qOrdenes.Transaction;
                      q.SQL.Add('UpDate Bancos');
                      q.SQL.Add('   Set NROCHQDESDE = :NrChq ');
                      q.SQL.Add('Where IdBanco =:IdBco ');
                      q.ParamByName('NrChq').AsInteger := AuxBcoProNroCheque.AsInteger;
                      q.ParamByName('IdBco').AsInteger := AuxBcoProIdBanco.AsInteger;
                      q.ExecSQL;
                    finally
                      q.Free;
                    end;
                    qOrdenes.Transaction.Commit;
                  except
                    qOrdenes.Transaction.Rollback;
                  end;
                end;
              end;
            except
              on E:Exception do
                raise EUsuario.Create('Error: '+E.Message);
            end;
            AuxBcoPro.Next;
          end;

          if not ChqModel.IsEmpty then
          begin
            try
              lstModelChq.DeviceType := 'Screen';
              if Application.MessageBox('Prepare impresora y formulario de cheques.',
                 PChar('para imprimir '+IntToStr(ChqModel.RecordCount)+' Cheque(s) ') ,MB_ICONQUESTION+MB_YESNO) = ID_YES then
              begin
                lstModelChq.Print;
              end;
            except
              On E:Exception do
                raise EUsuario.Create('Error '+E.Message);
            end;
          end;
          Application.ProcessMessages;
        end;
      end;
    end;

    // Imprimir certificados de retencion
    if (dmSaveFile.qOrdenesRETENCIONES.AsCurrency <> 0) and
       (dmSaveFile.qOrdenesIDORDEN.AsInteger > NoEncontrado) And
       (Application.MessageBox('¿Imprime los Certificados de Retención?', 'Retenciones',MB_ICONQUESTION+MB_YESNO) = ID_YES) then
    begin
      if dmSaveFile.qOrdenesRETENCIONI.AsCurrency <> 0 then
        Print_Cert(dmSaveFile.qOrdenesIDORDEN.AsInteger, 1);
      if dmSaveFile.qOrdenesRETENCIONG.AsCurrency <> 0 then
        Print_Cert(dmSaveFile.qOrdenesIDORDEN.AsInteger, 2);
      if dmSaveFile.qOrdenesRETENCIONB.AsCurrency <> 0 then
        Print_Cert(dmSaveFile.qOrdenesIDORDEN.AsInteger, 3);
      if dmSaveFile.qOrdenesRETENCIONS.AsCurrency <> 0 then
        Print_Cert(dmSaveFile.qOrdenesIDORDEN.AsInteger, 4);
    end;
  end
  else begin
    ShowMessage('No se encuentra la Orden de Pagos.-');
  end;
end;

procedure TfrmOrdPagos.Print_Cert(NroOP: Integer; TipoCert: SmallInt);  // 1 Iva, 2 Gan, 3 IBLH, 4 RSS
Const
  OP = 'Select IDORDEN, ENTIDAD, FECHAOP, NROCOMPOP, TOTALOP, '+
       '       RETENCIONES, NETOOP, RETENCIONI, RETENCIONG, '+
       '       RETENCIONB, PRCRETG, PRCRETI, PRCRETB1, PRCRETB2, '+
       '       RETENCIONS, PRCRETS, RETENCIONH, NROCERTIVA, '+
       '       NROCERTGAN, NROCERTIBT, NROCERTSES, IDEMPRESA '+
       'From ORDENES ';
var
  DtEmpresa, Direccion,
  Documento, NroIngBto: String;
  q: TMDOQuery;
begin
  qDatosCert.Close;
  qDatosCert.SQL.Clear;
  Case TipoCert of
    1: begin //iva
         qDatosCert.SQL.Text := OP+' Where (IDORDEN = :IdOrden) And (RETENCIONI > 0) ';
       end;
    2: begin // Ganancias
         qDatosCert.SQL.Text := OP+' Where (IDORDEN = :IdOrden) And (RETENCIONG > 0) ';
       end;
    3: begin // Ing. Brutos y Lote Hogar
         qDatosCert.SQL.Text := OP+' Where (IDORDEN = :IdOrden) And (RETENCIONB > 0) ';
       end;
    4: begin // Seguridad Social
         qDatosCert.SQL.Text := OP+' Where (IDORDEN = :IdOrden) And (RETENCIONS > 0) ';
       end;
  end;
  try
    qDatosCert.ParamByName('IdOrden').AsInteger := NroOP;
    try
      qDatosCert.Open;
    except
      on E:Exception do
      begin
        raise EUsuario.Create(Format('No se puede Abrir el Certificado Idº %d Tipo %d ',[NroOP, TipoCert])+E.Message);
      end;
    end;

    if not qDatosCert.IsEmpty then
    begin
      if GetDatosEnt(qDatosCertENTIDAD.AsInteger, IdBranch, 2, Datos_Ent) then
      begin
        try
          q := TMDOQuery.Create(nil);
          q.Database := dmGestion.dbGestion;
          q.Transaction := dmSaveFile.trVerComp;
          q.SQL.Add('Select NombreEmpresa, Direccion,');
          q.SQL.Add('       Localidad, Provincia, ');
          q.SQL.Add('       DocuEmp, IngBrutEmp ');
          q.SQL.Add('From DatosSis ');
          q.SQL.Add('Where IdEmpresa =:IdEmp ');
          q.ParamByName('IdEmp').AsInteger := qDatosCertIDEMPRESA.AsInteger;
          q.Open;
          if not q.IsEmpty then
          begin
            DtEmpresa := q.FieldByName('NombreEmpresa').AsString;
            Direccion := q.FieldByName('Direccion').AsString+' '+
                         q.FieldByName('Localidad').AsString+' '+
                         q.FieldByName('Provincia').AsString;
            Documento := q.FieldByName('DocuEmp').AsString;
            NroIngBto := q.FieldByName('IngBrutEmp').AsString
          end
          else begin
            raise EUsuario.Create('No se Encuentran o no se puede acceder a los datos de la Empresa Nº '+IntToStr(qDatosCertIDEMPRESA.AsInteger));
          end;
        finally
          q.Free;
        end;
      end
      else begin
        raise EUsuario.Create('No se Encuentran o no se puede acceder a los datos del Proveedor Nº '+IntToStr(qDatosCertENTIDAD.AsInteger));
      end;

      try
        if CertRet.Active then
          CertRet.EmptyDataSet
        else
          CertRet.CreateDataSet;
        CertRet.Append;
        CertRetNomAge.AsString := DtEmpresa;
        CertRetDomAge.AsString := Direccion;
        CertRetDocAge.AsString := Documento;
        CertRetFechaC.AsDateTime := qDatosCertFECHAOP.AsDateTime;
        CertRetNroPag.AsString := 'ORDEN DE PAGO Nº '+qDatosCertNROCOMPOP.AsString;
        CertRetNomRet.AsString := Datos_Ent.Nombre;
        CertRetDomRet.AsString := Datos_Ent.Direccion+' '+Datos_Ent.Localidad+' '+Datos_Ent.Provincia+' ('+Datos_Ent.CodPostal+')';
        CertRetDocRet.AsString := Datos_Ent.Documento;
        CertRetDocRet2.AsString:= Datos_Ent.IngBrutos;
        CertRetMontoOP.AsCurrency := qDatosCertNETOOP.AsCurrency;
        Case TipoCert of
          1: begin //iva

             end;
          2: begin // Ganancias
               lblTituloCert.Caption := 'SI.CO.RE - Sistema de Control de Retenciones';
               CertRetReteOP1.AsCurrency := qDatosCertRETENCIONG.AsCurrency;
               CertRetPrcRet1.AsFloat := qDatosCertPRCRETG.AsFloat;
               lblCAdicLH.Visible := False;
               CertRetReteOP2.Visible := False;
               lblCMtoRet2.Visible := False;
               CertRetNroCert.AsString := qDatosCertNROCERTGAN.AsString;
               CertRetDetImp.AsString := 'Impuesto a las Ganancias';
               CertRetDetReg.AsString := Datos_Ent.DETRETENCION_G;
               lblDetReg.Visible := True;
               lblCDetalleRegimen.Visible := True;
               CertRetTotRete.AsCurrency := qDatosCertRETENCIONG.AsCurrency;
               lblAfip.Visible := True;
               lblDGR.Visible := False;
             end;
          3: begin // Ing. Brutos y Lote Hogar
               lblTituloCert.Caption := 'RETENCIÓN INGRESOS BRUTOS Y LOTE HOGAR RG 1460/02 D.G.R';
               CertRetReteOP1.AsCurrency := qDatosCertRETENCIONB.AsCurrency;
               CertRetPrcRet1.AsFloat := qDatosCertPRCRETB1.AsFloat;
               lblCAdicLH.Visible := True;
               CertRetReteOP2.Visible := True;
               lblCMtoRet2.Visible := True;
               CertRetReteOP2.AsCurrency := qDatosCertRETENCIONH.AsCurrency;
               CertRetPrcRet2.AsFloat := qDatosCertPRCRETB2.AsFloat;
               CertRetNroCert.AsString := qDatosCertNROCERTIBT.AsString;
               CertRetDetImp.AsString := 'Ingresos Brutos y Lote Hogar';
               CertRetDetReg.AsString := '';
               lblDetReg.Visible := False;
               lblCDetalleRegimen.Visible := False;
               CertRetTotRete.AsCurrency := qDatosCertRETENCIONB.AsCurrency + qDatosCertRETENCIONH.AsCurrency;
               lblAfip.Visible := False;
               lblDGR.Visible := True;
               lblDetReg.Visible := False;
             end;
          4: begin // Seguridad Social
               lblTituloCert.Caption := 'RETENCIÓN SEGURIDAD SOCIAL';
               CertRetReteOP1.AsCurrency := qDatosCertRETENCIONS.AsCurrency;
               CertRetPrcRet1.AsFloat := qDatosCertPRCRETS.AsFloat;
               lblCAdicLH.Visible := False;
               CertRetReteOP2.Visible := False;
               lblCMtoRet2.Visible := False;
               CertRetNroCert.AsString := qDatosCertNROCERTSES.AsString;
               CertRetDetImp.AsString := 'Seguridad Social';
               CertRetDetReg.AsString := '';
               lblDetReg.Visible := False;
               lblCDetalleRegimen.Visible := False;
               CertRetTotRete.AsCurrency := qDatosCertRETENCIONS.AsCurrency;
               lblDetReg.Visible := False;
               lblAfip.Visible := False;
               lblDGR.Visible := False;
             end;
        end;
        N_A_L('Son Pesos', CertRetTotRete.AsCurrency, 80, ' ', Parte1, Parte2);
        CertRetMontoL1.AsString := Parte1;
        CertRetMontoL2.AsString := Parte2;
        CertRet.Post;
      finally
        lstCertRet.Print;
      end;
    end
    else begin
      Application.MessageBox(PChar(Format('No existe el Certificado Idº %d Tipo %d ',[NroOP, TipoCert])),'Retenciones',MB_ICONEXCLAMATION);
    end;
  except
    On E:Exception do
    begin
      raise EUsuario('Error: '+E.Message);
    end;
  end;
end;

class procedure TfrmOrdPagos.Imprimir_OrdenPagos(NroOP: Integer; VerOP: Boolean);
begin
  frmOrdPagos := TfrmOrdPagos.Create(nil);
  with frmOrdPagos do
  begin
    try
      PrintOP(NroOP, VerOP);
    finally
      Free;
    end;
  end;
end;

class procedure TfrmOrdPagos.Imprimir_Certificado(NroOP: Integer; TCert: SmallInt);
begin
  frmOrdPagos := TfrmOrdPagos.Create(nil);
  with frmOrdPagos do
  begin
    try
      Print_Cert(NroOP, TCert);
    finally
      Free;
    end;
  end;
end;

end.
