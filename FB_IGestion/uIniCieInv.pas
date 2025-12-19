unit uIniCieInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, StdCtrls, RzEdit, Mask, RzCmboBx, RzButton, ExtCtrls, DB,
  MDOCustomDataSet, MDOQuery, DBClient, Provider, DateUtils, wwdbedit, RzSpnEdt;

type
  TfrmIniCieInv = class(TForm)
    gbIniCieInv: TRzGroupBox;
    bvIniIvent: TBevel;
    lblFechaIni: TLabel;
    lblSucAIni: TLabel;
    btnInicializarInventario: TRzBitBtn;
    cbSucursalAInicilizar: TRzComboBox;
    btnGenerarInventario: TRzBitBtn;
    edtFechaCierre: TRzDateTimeEdit;
    mmIniCieInv: TRzMemo;
    pnlInfGenInv: TRzPanel;
    qBranch: TMDOQuery;
    qBranchNOMBRESUC: TMDOStringField;
    qBranchIDSUCURSAL: TIntegerField;
    qBranchACTIVA: TSmallintField;
    dspqArtToInv: TDataSetProvider;
    ArtToInv: TClientDataSet;
    qArtToInv: TMDOQuery;
    btnSalir: TRzBitBtn;
    ArtToInvIDARTICULO: TIntegerField;
    ArtToInvMARCA: TStringField;
    ArtToInvDETALLE: TStringField;
    ArtToInvIMPINT: TBCDField;
    ArtToInvPRECIO: TBCDField;
    ArtToInvCOSTO: TBCDField;
    ArtToInvPNETO: TBCDField;
    gbTest: TRzGroupBox;
    edtDesTstFec: TRzDateTimeEdit;
    cbSucursalTest: TRzComboBox;
    lblDesTstFec: TLabel;
    lblTestSuc: TLabel;
    lblCodArtTest: TLabel;
    lblDetProdTest: TLabel;
    lblProdTest: TLabel;
    lblRdoTest: TLabel;
    lblResultadoTstStk: TLabel;
    lblHasTstFec: TLabel;
    edtHasTstFec: TRzDateTimeEdit;
    edtTstCodArt: TRzNumericEdit;
    lblFecIni: TLabel;
    edtFechaInicio: TRzDateTimeEdit;
    edtPerInv: TRzSpinner;
    lblPerInv: TLabel;
    lblPrecioAFec: TLabel;
    lblResultadoTstPrc: TLabel;
    ArtToInvTTALLE: TSmallintField;
    ArtToInvCANTIDAD: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btnInicializarInventarioClick(Sender: TObject);
    procedure cbSucursalAInicilizarChange(Sender: TObject);
    procedure btnGenerarInventarioClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtTstCodArtExit(Sender: TObject);
    procedure edtDesTstFecEnter(Sender: TObject);
  private
    { Private declarations }
    IdSucInv: Integer;

    procedure Actualizar_Memo_Inv(S, M: String);
    procedure Inicializar_Inventario;
    procedure Generar_RemitosInventario(IdSucInv, AnoInv: Integer; FechaIni, FechaInv: TDate);
  public
    { Public declarations }
  end;

var
  frmIniCieInv: TfrmIniCieInv;

implementation

uses uTools, udmGestion, udmSaveFile, uMovStk;

{$R *.dfm}

procedure TfrmIniCieInv.Actualizar_Memo_Inv(S, M: String);
begin
  if Trim(S) = '0' then
    mmIniCieInv.Clear;

  if (Trim(M) > Vacio) then
    mmIniCieInv.Lines.Add(DateTimeToStr(Now)+' - '+S+' - '+M)
  else
    mmIniCieInv.Lines.Add(DateTimeToStr(Now)+' - '+S+' - ');
  mmIniCieInv.Refresh;
  Application.ProcessMessages
end;

procedure TfrmIniCieInv.Generar_RemitosInventario(IdSucInv, AnoInv: Integer; FechaIni, FechaInv: TDate);
Var
  q: TMDOQuery;
  CanPrd, CanRem, Actual, StkAct: Integer;
  TPNeto,
  TCosto,
  TNoCmp,
  RTotal: Currency;
  AuxNCmp: St13;
  Llenando: Boolean;
begin
  try
    pnlInfGenInv.Caption := Format('Inicio %s ',[DateTimeToStr(Now)]);
    Actualizar_Memo_Inv('0', 'Calculando inventario....');
    Actualizar_Memo_Inv(Get_DetSuc(IdSucInv, 2), 'Inicio recuento de Stk....');
    Screen.Cursor := crSQLWait;
    Application.ProcessMessages;
    ArtToInv.Close;
    if (FechaIni < FechaInv) then
    begin
      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := dmGestion.trGestion;
        q.SQL.Add('Select NroRemitoI ');
        q.SQL.Add('From Sucursales ');
        q.SQL.Add('Where IdSucursal = :IdSuc ');
        q.ParamByName('IdSuc').AsInteger := IdSucInv;
        q.Open;
        if not q.IsEmpty then
          AuxNCmp := q.FieldByName('NroRemitoI').AsString
        else
          AuxNCmp := Format('%.4d-%.8d',[IdSucInv, 0]);
      finally
        q.Free;
      end;
      CanPrd := 0;
      ArtToInv.Params.ParamByName('IdStk').AsInteger := IdSucInv;
      ArtToInv.Params.ParamByName('Desde').AsDate := FechaIni;
      ArtToInv.Params.ParamByName('Hasta').AsDate := FechaInv;
      ArtToInv.Open;
      CanPrd := ArtToInv.RecordCount;
      Actualizar_Memo_Inv(Get_DetSuc(IdSucInv, 2), Format('Periodo %s - %s ', [DateToStr(FechaIni), DateToStr(FechaInv) ]));
      Actualizar_Memo_Inv(Get_DetSuc(IdSucInv, 2), Format('Cantidad de Productos en uso: %d ',[CanPrd]));
      if not ArtToInv.IsEmpty then
      begin
        Actual := 0;
        CanRem := 0;
        TPNeto := 0;
        TCosto := 0;
        TNoCmp := 0;
        RTotal := 0;
        Actual := 0;
        CanRem := 0;
        StkAct := 0;
        FillChar(Factura, SizeOf(Factura), 0);
        FillChar(ItemsFiscal, SizeOf(ItemsFiscal), 0);
        ArtToInv.First;
        Llenando := False;
        Actualizar_Memo_Inv(Get_DetSuc(IdSucInv, 2), 'Inicio generación remitos');
        While not ArtToInv.Eof do
        begin
          if ArtToInvCANTIDAD.AsInteger > 0 then
          begin
            Llenando := True;
            if (Actual <= 25) then
            begin
              Inc(Actual);
              ItemsFiscal[Actual].IdItem := Actual;
              ItemsFiscal[Actual].IdSucursal := IdBranch;
              ItemsFiscal[Actual].IdProducto := ArtToInvIdArticulo.AsInteger;
              ItemsFiscal[Actual].IdPuntoVenta := IdSalesPoint;
              ItemsFiscal[Actual].TipoAj := 0;
              ItemsFiscal[Actual].Cantidad := ArtToInvCANTIDAD.AsInteger;
              ItemsFiscal[Actual].PrecioNetoT := ArtToInvPNeto.AsCurrency * ArtToInvCANTIDAD.AsInteger;
              ItemsFiscal[Actual].PrecioCosto := ArtToInvCosto.AsCurrency;
              ItemsFiscal[Actual].PrecioFinal := ArtToInvPrecio.AsCurrency;
              ItemsFiscal[Actual].PrecioTotal := ArtToInvPrecio.AsCurrency * ArtToInvCANTIDAD.AsInteger;
              ItemsFiscal[Actual].NoComputable :=ArtToInvImpInt.AsCurrency;
              ItemsFiscal[Actual].Servicio := False;
              TPNeto := TPNeto + (ArtToInvPNeto.AsCurrency * ArtToInvCANTIDAD.Value);
              TCosto := TCosto + (ArtToInvCosto.AsCurrency* ArtToInvCANTIDAD.Value);
              TNoCmp := TNoCmp + (ArtToInvImpInt.AsCurrency* ArtToInvCANTIDAD.Value);
              RTotal := RTotal + (ArtToInvPrecio.AsCurrency * ArtToInvCANTIDAD.Value);
            end;

            if (Actual >= 25) or
               (ArtToInv.Eof) then
            begin
              Inc(CanRem);
              with Factura do
              begin
                IdSucursal := CanRem;
                IdSucursal := IdBranch;
                IdPuntoVenta := IdSalesPoint;
                TipoFactura := RemitoInventario;
                CantArtic := Actual;
                IdStOrigen := IdSucInv;
                IdStDestino := AnoInv;
                FechaF := FechaInv;
                AuxNCmp := Inc_NComp(AuxNCmp);
                NroFactura := AuxNCmp;
                IdCompRef := 0;
                NombreEnt := Vacio;
                Neto := TPNeto;
                Exento := TCosto;
                NoComputables := TNoCmp;
                Total := RTotal;
                Empleado := Usuario;
                TipoAj := 0;
              end;

              if dmSaveFile.GrabarComprobanteInventario(Factura, ItemsFiscal) then
                Actualizar_Memo_Inv(Get_DetSuc(IdSucInv, 2), 'RI Nº '+Factura.NroFactura+' Ok.! ')
              else
                Actualizar_Memo_Inv(Get_DetSuc(IdSucInv, 2), 'RI Nº '+Factura.NroFactura+' Error');
              StkAct := StkAct + Actual;
              Actualizar_Memo_Inv(Get_DetSuc(IdSucInv, 2),Format('Inventariados %d ',[StkAct]));
              Llenando := False;
              TPNeto := 0;
              TCosto := 0;
              TNoCmp := 0;
              RTotal := 0;
              Actual := 0;
              FillChar(Factura, SizeOf(Factura), 0);
              FillChar(ItemsFiscal, SizeOf(ItemsFiscal), 0);
            end;
          end;
          ArtToInv.Next;
        end;

        if (Actual > 0) and
           (Llenando) then
        begin
          Inc(CanRem);
          with Factura do
          begin
            IdSucursal := CanRem;
            IdSucursal := IdBranch;
            IdPuntoVenta := IdSalesPoint;
            TipoFactura := RemitoInventario;
            CantArtic := Actual;
            IdStOrigen := IdSucInv;
            IdStDestino := AnoInv;
            FechaF := FechaInv;
            AuxNCmp := Inc_NComp(AuxNCmp);
            NroFactura := AuxNCmp;
            IdCompRef := 0;
            NombreEnt := Vacio;
            Neto := TPNeto;
            Exento := TCosto;
            NoComputables := TNoCmp;
            Total := RTotal;
            Empleado := Usuario;
            TipoAj := 0;
          end;
          if dmSaveFile.GrabarComprobanteInventario(Factura, ItemsFiscal) then
            Actualizar_Memo_Inv(Get_DetSuc(IdSucInv, 2), 'RI Nº '+Factura.NroFactura+' Ok.! ')
          else
            Actualizar_Memo_Inv(Get_DetSuc(IdSucInv, 2), 'RI Nº '+Factura.NroFactura+' Error');
          StkAct := StkAct + Actual;
          Actualizar_Memo_Inv(Get_DetSuc(IdSucInv, 2),Format('Inventariados %d ',[StkAct]));
          Llenando := False;
          TPNeto := 0;
          TCosto := 0;
          TNoCmp := 0;
          RTotal := 0;
          Actual := 0;
          FillChar(Factura, SizeOf(Factura), 0);
          FillChar(ItemsFiscal, SizeOf(ItemsFiscal), 0);
        end;
        ArtToInv.Close;
      end;
    end;
  finally
    Actualizar_Memo_Inv(Get_DetSuc(IdSucInv, 1), 'Finalizado Cierre inventario');
    Screen.Cursor := crDefault;
    pnlInfGenInv.Caption := pnlInfGenInv.Caption +
                            Format(' Fin %s ',[DateTimeToStr(Now)]);
    Application.ProcessMessages;
    try
      if not dmGestion.trGestion.InTransaction then
        dmGestion.trGestion.StartTransaction;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := dmGestion.trGestion;
        q.SQL.Add('UpDate Sucursales ');
        q.SQL.Add('Set FechaTInv = :FTInv, FechaInicio = :FTInv ');
        q.SQL.Add('Where IdSucursal = :IdSuc ');
        q.ParamByName('FTInv').AsDate := FechaInv;
        q.ParamByName('IdSuc').AsInteger := IdSucInv;
        q.ExecSQL;
      finally
        q.Free;
      end;
      dmGestion.trGestion.Commit
    except
      dmGestion.trGestion.RollBack;
    end;
  end;
end;

procedure TfrmIniCieInv.Inicializar_Inventario;
Const
  IniS = 'UpDate Sucursales '+
         '   Set FechaTInv = :FT, '+
         '       FechaInicio = :FI '+
         'Where IdSucursal = :DI ';

  StkG = 'UpDate StockArt '+
         '   Set StkAInv = :StkAct, '+
         '       FechaInv = :FechaI, '+
         '       DifInv = :Precio '+
         'Where (IdStock = :IDepos) And '+
         '      (Actual is not null) ';

  StkT = 'UpDate StockArtTalles '+
         '   Set StkAInv = Actual, '+
         '       FechaInv = :FechaI, '+
         '       DifInv = 0 '+
         'Where (IdStock =:Depos) And (Actual is not null) ';
var
  q: TMDOQuery;
  s: Integer;
begin
  try
    s := Integer(cbSucursalAInicilizar.Items.Objects[cbSucursalAInicilizar.ItemIndex])
  except
    s := 0;
  end;

  if s <= 0 then
  begin
    edtFechaInicio.SetFocus;
    raise EUsuario.Create('ERROR. Sucursal no existe.');
  end;
  try
    Screen.Cursor := crSQLWait;
    Application.ProcessMessages;
    Actualizar_Memo_Inv('0', 'Inicializando');
    try
      if not dmGestion.trProc.InTransaction then
        dmGestion.trProc.StartTransaction;
      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := dmSaveFile.trSaveComp;
        q.SQL.Text := IniS;
        q.ParamByName('FT').AsDate := edtFechaInicio.Date;
        q.ParamByName('FI').AsDate := edtFechaInicio.Date;
        q.ParamByName('DI').AsInteger := s;
        q.ExecSQL;
      finally
        q.Free;
      end;

      try
        q := TMDOQuery.Create(nil);
        q.Database := dmGestion.dbGestion;
        q.Transaction := dmSaveFile.trSaveComp;
        q.SQL.Text := StkG;
        q.ParamByName('StkAct').AsInteger := Get_StkF(1, 1, edtFechaInicio.Date, edtFechaCierre.Date);
        q.ParamByName('Precio').AsCurrency := 0;
        q.ParamByName('FechaI').AsDate := edtFechaInicio.Date;
        q.ParamByName('IDepos').AsInteger := s;
        q.ExecSQL;
      finally
        q.Free;
      end;

      if Control_Talles then
      begin
        try
          q := TMDOQuery.Create(nil);
          q.Database := dmGestion.dbGestion;
          q.Transaction := dmSaveFile.trSaveComp;
          q.SQL.Text := StkT;
          q.ParamByName('Fecha').AsDate := edtFechaInicio.Date;
          q.ParamByName('Depos').AsInteger := s;
          q.ExecSQL;
        finally
          q.Free;
        end;
      end;
      dmGestion.trProc.Commit;
    except
      dmGestion.trProc.Rollback;
      raise;
    end;
  finally
    Actualizar_Memo_Inv('0', 'Finalizado inicialización');
    Screen.Cursor := crDefault;
    Application.ProcessMessages
  end;
end;

procedure TfrmIniCieInv.btnGenerarInventarioClick(Sender: TObject);
 begin
   Generar_RemitosInventario(IdSucInv,
                             edtPerInv.Value,
                             edtFechaInicio.Date,
                             edtFechaCierre.Date);
end;

procedure TfrmIniCieInv.btnInicializarInventarioClick(Sender: TObject);
begin
  Inicializar_Inventario;
end;

procedure TfrmIniCieInv.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmIniCieInv.cbSucursalAInicilizarChange(Sender: TObject);
begin
  IdSucInv := Integer(cbSucursalAInicilizar.Items.Objects[cbSucursalAInicilizar.ItemIndex]);
end;

procedure TfrmIniCieInv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ArtToInv.Close;
  Action := caFree;
end;

procedure TfrmIniCieInv.FormCreate(Sender: TObject);
begin
  edtFechaInicio.Date := Ano_2000;
  edtFechaCierre.Date := Date;
  edtPerInv.Value := CurrentYear;
  cbSucursalAInicilizar.ClearItems;
  cbSucursalTest.ClearItems;
  qBranch.Open;
  qBranch.First;
  while not qBranch.Eof do
  begin
    if qBranchActiva.AsInteger = Verdadero then
    begin
      cbSucursalAInicilizar.Items.AddObject(qBranchNombreSuc.AsString,
                                  TObject(qBranchIdSucursal.AsInteger));
      cbSucursalTest.Items.AddObject(qBranchNombreSuc.AsString,
                                     TObject(qBranchIdSucursal.AsInteger));
    end;
    qBranch.Next;
  end;
end;

procedure TfrmIniCieInv.FormShow(Sender: TObject);
begin
  pnlInfGenInv.Caption := 'Listo';
  lblResultadoTstStk.Caption := '--';
  edtTstCodArt.Text := '0';
  edtDesTstFec.Date := Date;
  edtHasTstFec.Date := Date;
end;

procedure TfrmIniCieInv.edtDesTstFecEnter(Sender: TObject);
begin
  lblResultadoTstStk.Caption := '--';
end;

procedure TfrmIniCieInv.edtTstCodArtExit(Sender: TObject);
var
  TstSuc,
  TstPrd,
  TstRdo: Integer;
  TstDes, TstHas: TDate;
begin
  lblResultadoTstStk.Caption := '(--)';
  TstDes := edtDesTstFec.Date;
  TstHas := edtHasTstFec.Date;
  if TstDes <= TstHas then
  begin
    try
      TstSuc := Integer(cbSucursalTest.Items.Objects[cbSucursalTest.ItemIndex]);
    except
      TstSuc := 0;
    end;
    try
      TstPrd := edtTstCodArt.IntValue;
    except
      TstPrd := 0;
    end;

    if TstPrd > 0 then
    begin
      If GetDatosArt(TstPrd, Vacio, Datos_Art) then
      begin
        lblProdTest.Caption := Datos_Art.DetProd;
        TstRdo := Get_StkF(TstPrd, TstSuc, TstDes, TstHas);
        try
          lblResultadoTstStk.Caption := IntToStr(TstRdo);
        except
          lblResultadoTstStk.Caption := 'error';
        end;
      end;
      lblResultadoTstPrc.Caption := Format('%m', [Datos_Art.Precio]);
    end;
  end;
end;

end.
