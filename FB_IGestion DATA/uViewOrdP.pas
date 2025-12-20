unit uViewOrdP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, wwdbedit, wwdblook, wwdbdatetimepicker,
  Grids, Wwdbigrd, Wwdbgrid, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel,
  Wwdotdot, Wwdbcomb, RzPanel, MDOCustomDataSet, MDOTable, MDOQuery, DateUtils,
  RzButton, RzEdit, RzDBEdit, RzDBBnEd, Menus, DBGrids;

type
  TfrmViewOrdP = class(TForm)
    gItemsPg: TwwDBGrid;

    pnlDatosOP: TRzPanel;
    lblEntidad: TLabel;
    lblFechaOP: TLabel;
    lblNroCompOP: TLabel;
    lblCantOP: TLabel;
    lblTotalOP: TLabel;
    lblContado: TLabel;
    lblTickets: TLabel;
    lblBancoProp: TLabel;
    lblBancoTer: TLabel;
    lblBonifProv: TLabel;
    edtNroCompOP: TwwDBEdit;
    edtCantOP: TwwDBEdit;
    edtTotalOp: TwwDBEdit;
    edtContado: TwwDBEdit;
    edtTickets: TwwDBEdit;
    edtBancoProp: TwwDBEdit;
    edtBancoTer: TwwDBEdit;
    edtBonifProv: TwwDBEdit;
    edtFechaOP: TwwDBDateTimePicker;
    gItemsOP: TwwDBGrid;
    lblEstado: TLabel;
    cbEstado: TwwDBComboBox;
    pnlNavOP: TRzPanel;
    btnSaveOP: TRzBitBtn;
    btnAnularOP: TRzBitBtn;
    btnCancelOP: TRzBitBtn;
    btnSalirOP: TRzBitBtn;
    btnEditOP: TRzBitBtn;
    edtEntidad: TwwDBEdit;
    lblNomEntidad: TDBText;
    lblIdOrd: TDBText;
    lblRGan: TLabel;
    lblRIBtos: TLabel;
    lblRLHogar: TLabel;
    edtRetGan: TwwDBEdit;
    edtRIBtos: TwwDBEdit;
    edtRLHogar: TwwDBEdit;
    lblRIva: TLabel;
    lblRSS: TLabel;
    edtRIva: TwwDBEdit;
    edtRSS: TwwDBEdit;
    btnReImprimir: TRzMenuButton;
    pmImpOp_Cert: TPopupMenu;
    ReImprimirOrdendePagos: TMenuItem;
    ReImprimirCertificadoRetGan: TMenuItem;
    ReImprimirCertificadodeRetIBLH: TMenuItem;
    ReImprimirCertificadodeRetencionSegSocial: TMenuItem;
    ReImprimirCertificadodeRetencionIVA: TMenuItem;
    lblNomUsuario: TDBText;
    lblUsuario: TLabel;
    ReImprimirValoresPropios: TMenuItem;
    lblDetEmp: TLabel;
    cbDetEmp: TwwDBLookupCombo;
    lblNCGan: TLabel;
    edtNCGan: TwwDBEdit;
    lblNCIBLH: TLabel;
    edtNCIBLH: TwwDBEdit;

    procedure ReImprimirValoresPropiosClick(Sender: TObject);
    procedure edtTotalOpKeyPress(Sender: TObject; var Key: Char);
    procedure edtNroOrdenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gItemsOPDblClick(Sender: TObject);
    procedure btnAnularOPClick(Sender: TObject);
    procedure btnSalirOPClick(Sender: TObject);
    procedure btnSaveOPClick(Sender: TObject);
    procedure btnEditOPClick(Sender: TObject);
    procedure btnCancelOPClick(Sender: TObject);
    procedure ReImprimirOrdendePagosClick(Sender: TObject);
    procedure ReImprimirCertificadoRetGanClick(Sender: TObject);
    procedure ReImprimirCertificadodeRetIBLHClick(Sender: TObject);
    procedure ReImprimirCertificadodeRetencionSegSocialClick(Sender: TObject);
    procedure ReImprimirCertificadodeRetencionIVAClick(Sender: TObject);
    procedure gItemsPgDblClick(Sender: TObject);
    procedure gItemsPgKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    IdOrdAct,
    OldEstado: Integer;
    OldAfterPost: TDataSetNotifyEvent;
    procedure Delete_Ordenes;
    procedure MyAfterPost(DataSet: TDataSet);
  public
    { Public declarations }
  end;

var
  frmViewOrdP: TfrmViewOrdP;

  procedure Get_OP(IdOrdPago: Integer);

implementation

uses udmGestion, udmSaveFile, uTools, uSelecUsuario, uClaveMod, uViewFacC,
     uOrdPagos, uBeforeDelete, uModMovBco;

{$R *.dfm}

procedure Get_OP(IdOrdPago: Integer);
begin
  frmViewOrdP := TfrmViewOrdP.Create(nil);
  with frmViewOrdP do
  begin
    if IdOrdPago <> NoEncontrado then
    begin
      dmSaveFile.qOrdenes.Close;
      dmSaveFile.qOrdenes.SelectSQL.Text := Ordenes+' Where O.IDORDEN =:IdOrden';
      dmSaveFile.qOrdenes.ParamByName('IdOrden').AsInteger := IdOrdPago;
      dmSaveFile.qOrdenes.Open;
      dmSaveFile.qItemsOP.Open;
      dmSaveFile.qItemsPG.Open;
    end
    else begin //Last
      dmSaveFile.qOrdenes.Close;
      dmSaveFile.qOrdenes.SelectSQL.Text := Ordenes+' Where O.IDORDEN =:IdOrden';
      dmSaveFile.qOrdenes.ParamByName('IdOrden').AsInteger := 1;
      dmSaveFile.qOrdenes.Open;
      dmSaveFile.qItemsOP.Open;
      dmSaveFile.qItemsPG.Open;
    end;
    ShowModal;
  end;
end;

procedure TfrmViewOrdP.MyAfterPost(DataSet: TDataSet);
var
  q: TMDOQuery;
begin
  if Not Anulando_BcoProp then
  begin
    if Assigned(OldAfterPost) then
      OldAfterPost(DataSet);
    with dmSaveFile do
    begin
      qItemsPG.First;
      while not qItemsPG.Eof do
      begin
        if (qItemsPGTIPOPAGO.AsInteger = 3) and
           (qItemsPGIDMOVIMIENTO.AsInteger > 0) then
        begin
          try
            q := TMDOQuery.Create(nil);
            q.Database := dmGestion.dbGestion;
            q.Transaction := qItemsPG.Transaction;
            q.SQL.Add('UpDate BancoProp  ');
            q.SQL.Add('Set NroCheque =:NroChq, ');
            q.SQL.Add('    Monto =:Importe, ');
            q.SQL.Add('    FechaVencimiento =:FecVen ');
            q.SQL.Add('Where IdMov =:IdMov ');
            try
              q.ParamByName('NroChq').AsInteger := StrToInt(qItemsPGCOMPROBANTE.AsString);
            except
            end;
            q.ParamByName('Importe').AsCurrency := qItemsPGIMPORTE.AsCurrency;
            q.ParamByName('FecVen').AsDate := qItemsPGFECHA.AsDateTime;
            q.ParamByName('IdMov').AsInteger := qItemsPGIDMOVIMIENTO.AsInteger;
            q.ExecSQL;
          finally
            q.Free;
          end;
        end;
        qItemsPG.Next;
      end;
    end;
  end;
end;

procedure TfrmViewOrdP.edtTotalOpKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
end;

procedure TfrmViewOrdP.edtNroOrdenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {$INCLUDE IyC_NextEdit.INC}
end;

procedure TfrmViewOrdP.FormShow(Sender: TObject);
begin
  //
end;

procedure TfrmViewOrdP.FormCreate(Sender: TObject);
begin
  OldAfterPost := dmSaveFile.qItemsPG.AfterPost;
  dmSaveFile.qItemsPG.AfterPost := MyAfterPost;
  with dmGestion do
  begin
    MotivosBJ.Open;
    cbEstado.Items.Clear;
    cbEstado.Items.Add('NORMAL'+ #9 + '0');
    MotivosBJ.First;
    while not MotivosBJ.EoF do
    begin
      cbEstado.Items.Add(MotivosBJMOTIVOBJ.AsString+ #9 +MotivosBJIDMOTBJ.AsString);
      MotivosBJ.Next;
    end;
    MotivosBJ.Close;
  end;
  cbEstado.MapList := True;
  cbEstado.ApplyList;
end;

procedure TfrmViewOrdP.Delete_Ordenes;
var
  q: TMDOQuery;
  b: Integer;
begin
  b := AntesDeBorrar;
  with dmSaveFile do
  begin
    try
      if not trSaveComp.InTransaction then
        trSaveComp.StartTransaction;
      qItemsOP.First;
      while not qItemsOP.Eof do
      begin
        try
          q := TMDOQuery.Create(nil);
          q.Database := dmGestion.dbGestion;
          q.Transaction := trSaveComp;
          q.SQL.Add('UpDate CCProv Set ');
          if qItemsOPTipoMov.AsInteger in [CreA, CreB, CreC,
                    CreditoAjuste, Descuento_B, Descuento_D] then
          begin
            q.SQL.Add('   PagoACta = PagoACta + :Importe, ');
            q.SQL.Add('   SaldoMov = SaldoMov - :Importe, ');
          end
          else begin
            q.SQL.Add('   PagoACta = PagoACta - :Importe, ');
            q.SQL.Add('   SaldoMov = SaldoMov + :Importe, ');
          end;
          q.SQL.Add('   Estado = 1 '); //ccPendiente
          q.SQL.Add('Where IdComprobante = :IdComprobante And ');
          q.SQL.Add('      Entidad = :IdEntidad And ');
          q.SQL.Add('      TComp = :TComp ');
          q.ParamByName('Importe').AsCurrency := qItemsOPImporte.AsCurrency;
          q.ParamByName('IdComprobante').AsInteger := qItemsOPIdFactura.AsInteger;
          q.ParamByName('IdEntidad').AsInteger := qItemsOPEntidad.AsInteger;
          q.ParamByName('TComp').AsInteger := qItemsOPTipoMov.AsInteger;
          q.ExecSQL;
        finally
          q.Free;
        end;
        qItemsOP.Edit;
        qItemsOPEstado.AsInteger := b;
        qItemsOP.Next;
      end;
      try
        Anulando_BcoProp := True;
        qItemsPg.First;
        while not qItemsPg.Eof do
        begin
          if qItemsPGTIPOPAGO.AsInteger = 3 then
            Grabar_Cheque_Anulado(qItemsPgIdMovimiento.AsInteger, 1);
          if qItemsPgTIPOPAGO.AsInteger = 4 then
            Grabar_Cheque_Anulado(qItemsPgIdMovimiento.AsInteger, 2);
          qItemsPg.Edit;
          qItemsPgEstado.AsInteger := b;
          qItemsPg.Next;
        end;
      finally
        Anulando_BcoProp := False;
      end;

      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := trSaveComp;
        q.SQL.Add('Delete From CCProv ');
        q.SQL.Add('Where (IdComprobante =:IdComprobante) And ');
        q.SQL.Add('      (Entidad = :Entidad) ');
        q.ParamByName('IdComprobante').AsInteger := qOrdenesIdOrden.AsInteger;
        q.ParamByName('Entidad').AsInteger := qOrdenesEntidad.AsInteger;
        q.ExecSQL;
      finally
        q.Free;
      end;
      qOrdenes.Edit;
      qOrdenesEstado.AsInteger := b;
      qOrdenes.Post;
      trSaveComp.Commit;
    except
      trSaveComp.Rollback;
      raise;
    end;
  end;
end;

procedure TfrmViewOrdP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dmSaveFile.qOrdenes.State in dsEditModes then
  begin
    dmSaveFile.qOrdenes.Post;
    dmSaveFile.qOrdenes.Transaction.Commit;
  end;

  if dmSaveFile.qItemsOP.State in dsEditModes then
  begin
    dmSaveFile.qItemsOP.Post;
    dmSaveFile.qItemsOP.Transaction.Commit;
  end;

  if dmSaveFile.qItemsPG.State in dsEditModes then
  begin
    dmSaveFile.qItemsPG.Post;
    dmSaveFile.qItemsPG.Transaction.Commit;
  end;

  dmSaveFile.qOrdenes.Close;
  dmSaveFile.qItemsOP.Close;
  dmSaveFile.qItemsPg.Close;
  dmSaveFile.qItemsPG.AfterPost := OldAfterPost;
  Action := caFree;
end;

procedure TfrmViewOrdP.gItemsOPDblClick(Sender: TObject);
begin
  Get_FacC(dmSaveFile.qItemsOPIdFactura.AsInteger,
           dmSaveFile.qItemsOPIdSucursal.AsInteger,
           dmSaveFile.qItemsOPIdPuntoVenta.AsInteger);
end;

procedure TfrmViewOrdP.btnAnularOPClick(Sender: TObject);
begin
  if not Check_Seg(Nivel_Adm, 'Ordenes', AutorDto) then
    raise EUsuario.Create('No esta habilitado para esta función');
  if Application.MessageBox('¿Anula la Orden de Pagos?', 'Anulación', MB_ICONQUESTION+MB_YESNO) = ID_YES then
  begin
    Delete_Ordenes;
    ShowMessage('Borrado movimiento. OK ');
    Close;
  end;
end;

procedure TfrmViewOrdP.ReImprimirOrdendePagosClick(Sender: TObject);
begin
  if Application.MessageBox('¿ReImprime Orden de Pagos?', 'Imprimir',MB_ICONQUESTION+MB_YESNO) = ID_YES then
    TfrmOrdPagos.Imprimir_OrdenPagos(dmSaveFile.qOrdenesIdOrden.AsInteger, True);
end;

procedure TfrmViewOrdP.ReImprimirValoresPropiosClick(Sender: TObject);
var
  q: TMDOQuery;
  y_nro: Boolean;
begin
  y_nro := false;
  with dmSaveFile do
  begin
    if ChqModel.Active then
      ChqModel.EmptyDataSet
    else
      ChqModel.CreateDataSet;
    y_nro := Application.MessageBox('¿Actualiza contador de números de cheques?', 'Cheques',MB_ICONQUESTION+MB_YESNO) = ID_YES;
    qItemsPG.First;
    while not qItemsPG.Eof do
    begin
      if (qItemsPGTIPOPAGO.AsInteger = 3) and
         (qItemsPGIDMOVIMIENTO.AsInteger > 0) then
      begin
        try
          if GetDatosChequesP(qItemsPGIDMOVIMIENTO.AsInteger, DatosChqP) then
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
              if y_nro then
              begin
                try
                  if not dmGestion.trGestion.InTransaction then
                    dmGestion.trGestion.StartTransaction;
                  try
                    q := TMDOQuery.Create(nil);
                    q.Database := qOrdenes.Database;
                    q.Transaction := qOrdenes.Transaction;
                    q.SQL.Add('UpDate Bancos');
                    q.SQL.Add('   Set NROCHQDESDE = :NrChq ');
                    q.SQL.Add('Where IdBanco = :IdBco ');
                    q.ParamByName('NrChq').AsInteger :=  DatosChqP.NChq;
                    q.ParamByName('IdBco').AsInteger := DatosChqP.IdBco;
                    q.ExecSQL;
                  finally
                    q.Free;
                  end;
                  dmGestion.trGestion.Commit;
                except
                  on E:Exception do
                  begin
                    raise EUsuario.Create('Error: '+E.Message);
                    dmGestion.trGestion.Rollback;
                  end;
                end;
              end;
            end;
          end;
        except
          on E:Exception do
            raise EUsuario.Create('Error: '+E.Message);
        end;
      end;
      qItemsPG.Next;
    end;

    if not ChqModel.IsEmpty then
    begin
      try
        lstModelChq.DeviceType := 'Screen';
        if Application.MessageBox('Prepare impresora y formulario de cheques.',
           PChar('para imprimir '+IntToStr(ChqModel.RecordCount)+' Cheque ') ,MB_ICONQUESTION+MB_YESNO) = ID_YES then
          lstModelChq.Print;
      except
        On E:Exception do
          raise EUsuario.Create('Error '+E.Message);
      end;
    end;
    Application.ProcessMessages;
  end;
end;

// 1 Iva, 2 Gan, 3 IBLH, 4 RSS
procedure TfrmViewOrdP.ReImprimirCertificadoRetGanClick(Sender: TObject);
begin
  if Application.MessageBox('¿ReImprime Certificado de Retención?', 'Ganancias', MB_ICONQUESTION+MB_YESNO) = ID_YES then
    TfrmOrdPagos.Imprimir_Certificado(dmSaveFile.qOrdenesIdOrden.AsInteger, 2);
end;

procedure TfrmViewOrdP.ReImprimirCertificadodeRetIBLHClick(Sender: TObject);
begin
  if Application.MessageBox('¿ReImprime Certificado de Retención?', 'IB y LH', MB_ICONQUESTION+MB_YESNO) = ID_YES then
    TfrmOrdPagos.Imprimir_Certificado(dmSaveFile.qOrdenesIdOrden.AsInteger, 3);
end;

procedure TfrmViewOrdP.ReImprimirCertificadodeRetencionSegSocialClick(Sender: TObject);
begin
  if Application.MessageBox('¿ReImprime Certificado de Retención?', 'Seguridad Social', MB_ICONQUESTION+MB_YESNO) = ID_YES then
    TfrmOrdPagos.Imprimir_Certificado(dmSaveFile.qOrdenesIdOrden.AsInteger, 4);
end;

procedure TfrmViewOrdP.ReImprimirCertificadodeRetencionIVAClick(Sender: TObject);
begin
  if Application.MessageBox('¿ReImprime Certificado de Retención?', 'IVA', MB_ICONQUESTION+MB_YESNO) = ID_YES then
    TfrmOrdPagos.Imprimir_Certificado(dmSaveFile.qOrdenesIdOrden.AsInteger, 1);
end;

procedure TfrmViewOrdP.btnSalirOPClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmViewOrdP.btnSaveOPClick(Sender: TObject);
begin
  try
    if (not dmSaveFile.trSaveComp.InTransaction) then
      dmSaveFile.trSaveComp.StartTransaction;
    if dmSaveFile.qOrdenes.State in dsEditModes then
      dmSaveFile.qOrdenes.Post;

    if dmSaveFile.qItemsOP.State in dsEditModes then
      dmSaveFile.qItemsOP.Post;

    if dmSaveFile.qItemsPG.State in dsEditModes then
      dmSaveFile.qItemsPG.Post;
    dmSaveFile.trSaveComp.Commit;
  except
    dmSaveFile.trSaveComp.Rollback;
    raise;
  end;

  if IdOrdAct <> NoEncontrado then
  begin
    dmSaveFile.qOrdenes.Close;
    dmSaveFile.qOrdenes.SelectSQL.Text := Ordenes+' Where O.IDORDEN =:IdOrden';
    dmSaveFile.qOrdenes.ParamByName('IdOrden').AsInteger := IdOrdAct;
    dmSaveFile.qOrdenes.Open;
    dmSaveFile.qItemsOP.Open;
    dmSaveFile.qItemsPG.Open;
  end
  else begin //Primera
    dmSaveFile.qOrdenes.Close;
    dmSaveFile.qOrdenes.SelectSQL.Text := Ordenes+' Where O.IDORDEN =:IdOrden';
    dmSaveFile.qOrdenes.ParamByName('IdOrden').AsInteger := 1;
    dmSaveFile.qOrdenes.Open;
    dmSaveFile.qItemsOP.Open;
    dmSaveFile.qItemsPG.Open;
  end;
  IdOrdAct := NoEncontrado;
  btnCancelOP.Enabled := False;
  btnSaveOP.Enabled := False;
end;

procedure TfrmViewOrdP.btnEditOPClick(Sender: TObject);
begin
  if not Check_Seg(Nivel_Adm, 'Ordenes', AutorDto) then
    raise EUsuario.Create('No esta habilitado para esta función');
  btnCancelOP.Enabled := True;
  btnSaveOP.Enabled := True;
  IdOrdAct := dmSaveFile.qOrdenesIDORDEN.AsInteger;
  dmSaveFile.qOrdenes.Edit;
  dmSaveFile.qItemsOP.Edit;
  dmSaveFile.qItemsPG.Edit;
end;

procedure TfrmViewOrdP.btnCancelOPClick(Sender: TObject);
begin
  if dmSaveFile.qOrdenes.State in dsEditModes then
    dmSaveFile.qOrdenes.Cancel;
  if dmSaveFile.qItemsOP.State in dsEditModes then
    dmSaveFile.qItemsOP.Cancel;
  if dmSaveFile.qItemsPG.State in dsEditModes then
    dmSaveFile.qItemsPG.Cancel;
  if IdOrdAct <> NoEncontrado then
  begin
    dmSaveFile.qOrdenes.Close;
    dmSaveFile.qOrdenes.SelectSQL.Text := Ordenes+' Where O.IDORDEN =:IdOrden';
    dmSaveFile.qOrdenes.ParamByName('IdOrden').AsInteger := IdOrdAct;
    dmSaveFile.qOrdenes.Open;
    dmSaveFile.qItemsOP.Open;
    dmSaveFile.qItemsPG.Open;
  end
  else begin //Primera
    dmSaveFile.qOrdenes.Close;
    dmSaveFile.qOrdenes.SelectSQL.Text := Ordenes+' Where O.IDORDEN =:IdOrden';
    dmSaveFile.qOrdenes.ParamByName('IdOrden').AsInteger := 1;
    dmSaveFile.qOrdenes.Open;
    dmSaveFile.qItemsOP.Open;
    dmSaveFile.qItemsPG.Open;
  end;
  IdOrdAct := NoEncontrado;
  btnCancelOP.Enabled := False;
  btnSaveOP.Enabled := False;
end;

procedure TfrmViewOrdP.gItemsPgDblClick(Sender: TObject);
begin
  with dmSaveFile do
  begin
    if (qItemsPGTIPOPAGO.AsInteger = 3) and
       (qItemsPGIDMOVIMIENTO.AsInteger > 0) then
      Get_ModBco(qItemsPGIDMOVIMIENTO.AsInteger)
  end;
end;

procedure TfrmViewOrdP.gItemsPgKeyPress(Sender: TObject; var Key: Char);
begin
  if (gItemsPg.SelectedField.DataType in [ftFloat, ftCurrency, ftBCD]) and
     (Key in [',', '.']) then
    Key := DecimalSeparator;
end;

end.
