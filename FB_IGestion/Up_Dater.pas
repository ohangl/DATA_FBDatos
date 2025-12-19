unit Up_Dater;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  MDOQuery, Dialogs, RzSplit, StdCtrls, RzEdit, ExtCtrls, RzPanel, RzButton,
  IniFiles, uTools, MDODatabase, DB, MDOCustomDataSet, MDOStoredProc, RzTabs,
  Grids, Wwdbigrd, Wwdbgrid, DBClient, Provider;

type
  TfrmFB_UpDater = class(TForm)
    tRead_Branch: TTimer;

    dbBranch: TMDODatabase;
    dbCentral: TMDODatabase;
    trGrabar: TMDOTransaction;
    trCentral: TMDOTransaction;
    trLeidos: TMDOTransaction;
    trUpdBranch: TMDOTransaction;
    spUpDateInsertFacItm: TMDOStoredProc;
    qMark_EnSuc: TMDOStoredProc;

    qSendSuc: TMDOQuery;
    qUpDateStkV: TMDOQuery;
    qUpDateStkVIDARTICULO: TIntegerField;
    qUpDateStkVIDSUCURSAL: TIntegerField;
    qUpDateStkVCANTIDAD: TMDOBCDField;
    qUpDateStkVTALLE: TIntegerField;
    qUpDateStkVIDGRUPO: TIntegerField;
    qUpDateStkVIDSUBGRUPO: TIntegerField;
    qUpDateStkVTIPOFACTURA: TSmallintField;
    qUpDateStkVSERVICIO: TSmallintField;
    qUpDateStkVESKIT: TIntegerField;

    qUpDateStkT: TMDOQuery;
    qUpDateStkTTIPOFACTURA: TSmallintField;
    qUpDateStkTIDSTORIGEN: TIntegerField;
    qUpDateStkTIDSTDESTINO: TIntegerField;
    qUpDateStkTIDARTICULO: TIntegerField;
    qUpDateStkTCANTIDAD: TMDOBCDField;
    qUpDateStkTTALLE: TIntegerField;
    qUpDateStkTTIPOAJ: TSmallintField;

    qDatosSuc: TMDOQuery;

    dspqSucur: TDataSetProvider;
    dsSucur: TDataSource;
    Sucur: TClientDataSet;
    SucurIDSUCURSAL: TIntegerField;
    SucurNOMBRESUC: TStringField;
    SucurREMOTA: TSmallintField;
    SucurDETSUC: TStringField;
    SucurHOSTNAME: TStringField;
    SucurACTIVA: TSmallintField;
    SucurTIEMPOEL: TIntegerField;
    SucurPROXIMA_LECT: TTimeField;
    SucurULTIMA_ACT: TDateField;
    SucurULTIMA_ACT_ORG: TDateField;

    pcLecturas: TRzPageControl;
    tsLecturas: TRzTabSheet;
    tsSucursales: TRzTabSheet;
    gbControles: TRzGroupBox;
    btnBuscarOper: TRzBitBtn;
    btnDetenerLectura: TRzBitBtn;
    pnlSalir: TRzPanel;
    gbEstado: TRzGroupBox;
    mmEstado: TRzMemo;
    gSucur: TwwDBGrid;
    btnSalir_Ocultar: TRzBitBtn;

    procedure btnSalir_OcultarClick(Sender: TObject);
    procedure btnDetenerLecturaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarOperClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gSucurDblClick(Sender: TObject);
    procedure mmEstadoDblClick(Sender: TObject);
    procedure tRead_BranchTimer(Sender: TObject);
    procedure pcLecturasClose(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
    Anio, Mes, Dia: Word;
    Fecha, ProxL: TDateTime;
    Parate_Che: Boolean;
    procedure Actualizar_Memo(S,M: String);
    procedure Recibir_Transferencias(IdB: Integer; Det: String; Fec_Desde: TDate);
    procedure RODS(IdB: Integer; Det: String; Fec_Desde: TDate);
  public
    { Public declarations }
  end;

Const
  Max_Trans = 5;

var
  frmFB_UpDater: TfrmFB_UpDater;

implementation

uses DateUtils;

{$R *.dfm}

procedure TfrmFB_UpDater.Actualizar_Memo(S,M: String);
begin
  if (Trim(M) > Vacio) then
    mmEstado.Lines.Add(DateTimeToStr(Now)+ ' - '+S+' - '+M)
  else
    mmEstado.Lines.Add(DateTimeToStr(Now)+ ' - '+S+' - ');
  mmEstado.Refresh;
  Application.ProcessMessages
end;

procedure TfrmFB_UpDater.Recibir_Transferencias(IdB: Integer; Det: String; Fec_Desde: TDate);
var
  Actual, i: Integer;
begin
  // Transferencias  ESTADO_TR //  2 En la Central para enviar //  1 para traer de sucursales

  Actualizar_Memo(Det,'Leyendo transferencias...');
  spUpDateInsertFacItm.StoredProcName := 'PUT_TRASPASO';
  spUpDateInsertFacItm.Prepare;
  qSendSuc.Close;
  qSendSuc.SQL.Clear;
  qSendSuc.Database := dbBranch;
  qSendSuc.Transaction := trLeidos;
  qSendSuc.SQL.Add('Select * From SEND_TRASPASO(:ID_SUCURSAL, :ESTADO_TR, :FEC_DESDE)');
  qSendSuc.Prepare;
  qSendSuc.ParamByName('ID_SUCURSAL').AsInteger := IdB;
  if IdBranch = 1 then
    qSendSuc.ParamByName('ESTADO_TR').AsInteger := 1  // leer transfencias de sucursal
  else
    qSendSuc.ParamByName('ESTADO_TR').AsInteger := 2; // leer transfencias de central
  qSendSuc.ParamByName('FEC_DESDE').asDate := Fec_Desde;

  try
    qSendSuc.Open;
  except
    on E:Exception do
      Actualizar_Memo(Det,'Error abriendo transferencias. '+E.Message);
  end;

  if not qSendSuc.IsEmpty then
  begin
    try
      spUpDateInsertFacItm.StoredProcName := 'PUT_TRASPASO';
      spUpDateInsertFacItm.Prepare;
      qSendSuc.First;
      while not qSendSuc.Eof do
      begin
        For i := 0 to qSendSuc.FieldCount-1 do
        begin
          if spUpDateInsertFacItm.Params.FindParam(qSendSuc.Fields[i].FieldName) <> nil then
          begin
            if UpperCase(qSendSuc.Fields[i].FieldName) = 'FECHAENV' then
              spUpDateInsertFacItm.ParamByName(qSendSuc.Fields[i].FieldName).Value := Date
            else
              spUpDateInsertFacItm.ParamByName(qSendSuc.Fields[i].FieldName).Value := qSendSuc.Fields[i].Value;
          end;
        end;
        try
          if not trGrabar.InTransaction then
            trGrabar.StartTransaction;
          spUpDateInsertFacItm.ExecProc;
          trGrabar.Commit;
        except
          on E:Exception do
          begin
            trGrabar.Rollback;
            Actualizar_Memo(Det, 'Error en Transferencias. '+E.Message);
          end;
        end;
        Inc(Actual);
        qSendSuc.Next;
      end;
      qSendSuc.Close;

      // Items TR
      Actualizar_Memo(Det, 'Leyendo productos transferidos...');
      qSendSuc.SQL.Clear;
      qSendSuc.SQL.Add('Select * From SEND_ITEMSTR(:ID_SUCURSAL, :ESTADO_TR, :FEC_DESDE)');
      qSendSuc.Prepare;
      qSendSuc.ParamByName('ID_SUCURSAL').AsInteger := IdB;
      if IdBranch = 1 then
        qSendSuc.ParamByName('ESTADO_TR').AsInteger := 1  // leer transfencias de sucursal
      else
        qSendSuc.ParamByName('ESTADO_TR').AsInteger := 2; // leer transfencias de central
      qSendSuc.ParamByName('FEC_DESDE').asDate := Fec_Desde;

      try
        qSendSuc.Open;
      except
        on E:Exception do
          Actualizar_Memo(Det, 'Error leyendo items TR. '+E.Message);
      end;

      if not qSendSuc.IsEmpty then
      begin
        spUpDateInsertFacItm.StoredProcName := 'PUT_ITEMSTR';
        spUpDateInsertFacItm.Prepare;
        qSendSuc.First;
        While not qSendSuc.Eof do
        begin
          For i:= 0 to qSendSuc.FieldCount-1 do
            if spUpDateInsertFacItm.Params.FindParam(qSendSuc.Fields[i].FieldName) <> nil then
              spUpDateInsertFacItm.ParamByName(qSendSuc.Fields[i].FieldName).Value := qSendSuc.Fields[i].Value;
          try
            if not trGrabar.InTransaction then
              trGrabar.StartTransaction;
            spUpDateInsertFacItm.ExecProc;
            trGrabar.Commit;
          except
            on E:Exception do
            begin
              trGrabar.Rollback;
              Actualizar_Memo(Det, 'Error en items Transferidos. '+E.Message);
            end;
          end;
          qSendSuc.Next;
        end;
      end;

      try
        if not qMark_EnSuc.Transaction.InTransaction then
          qMark_EnSuc.Transaction.StartTransaction;
        qMark_EnSuc.Close;

        qMark_EnSuc.StoredProcName := 'SETEAR_TRANSF(:Fecha_Lec, :Id_Suc, :Est_TR)';
        qMark_EnSuc.Prepare;
        qMark_EnSuc.ParamByName('Fecha_Lec').AsDate:= Date;
        qMark_EnSuc.ParamByName('Id_Suc').AsInteger := IdB;
        if IdBranch = 1 then
          qMark_EnSuc.ParamByName('Est_TR').AsInteger := 1  // MARCAR transfencias de sucursal
        else
          qMark_EnSuc.ParamByName('Est_TR').AsInteger := 2; // MARCAR transfencias de central
        qMark_EnSuc.ExecProc;
        qMark_EnSuc.Transaction.Commit;
      except
        on E:Exception do
        begin
          qMark_EnSuc.Transaction.Rollback;
          Actualizar_Memo(Det, 'Error marcando lecturas. '+E.Message);
        end;
      end;
      Actualizar_Memo(Det, 'Fin transferencias de productos.-');
    finally
      dbBranch.Connected := False;
    end;
  end;
end;

procedure TfrmFB_UpDater.RODS(IdB: Integer; Det: String; Fec_Desde: TDate);
var
  Actual, i, TotLei, Leidos: Integer;
  Name_Suc: String;
  q: TMDOQuery;
  Conectado: Boolean;
begin
  pcLecturas.ActivePage := tsLecturas;
  tsLecturas.Show;
  Actualizar_Memo('-','******************');
  try
    Screen.Cursor := crHourGlass;
    try
      Conectado := False;
      q := TMDOQuery.Create(nil);
      q.Database := dbCentral;
      q.Transaction := trCentral;
      q.SQL.Add('Select NombreSuc, HostName ');
      q.SQL.Add('From Sucursales ');
      q.SQL.Add('Where (IdSucursal = :S) And ');
      q.SQL.Add('      (Remota = 1) And ');
      q.SQL.Add('      (Activa = 1) ');
      q.ParamByName('S').AsInteger := IdB;
      q.Open;
      trGrabar.Active := True;
      if not q.IsEmpty then
      begin
        Name_Suc := q.FieldByName('NombreSuc').AsString;
        try
          Actualizar_Memo(Det, 'Conectando a '+ Name_Suc);
          dbBranch.Connected := False;
          dbBranch.DatabaseName := q.FieldByName('HostName').AsString;
          dbBranch.Params.Clear;
          dbBranch.Params.Add('user_name=sysdba');
          dbBranch.Params.Add('password=masterkey');
          dbBranch.Connected := True;
          q.Close;
          Conectado := True;
        except
          on E: Exception do
          begin
            Conectado := False;
            Actualizar_Memo(DET, 'Sin Conexión...' + E.Message);
          end;
        end;
      end;
    finally
      q.Free;
    end;

    if Conectado then
    begin
      Actualizar_Memo(Det, 'Conectado a '+ Name_Suc);
      try
        // Facturas
        Actualizar_Memo(Det, 'Leyendo ventas ');
        qSendSuc.Database := dbBranch;
        qSendSuc.Transaction := trLeidos;
        qSendSuc.SQL.Clear;
        qSendSuc.SQL.Add('Select * From SEND_FACVEN(:FEC_DESDE) ');
        qSendSuc.Prepare;
        qSendSuc.ParamByName('FEC_DESDE').AsDate := Fec_Desde;
        try
          qSendSuc.Open;
        except
          on E:Exception do
            Actualizar_Memo(Det,'Error leyendo ventas. '+E.Message);
        end;

        if not qSendSuc.IsEmpty then
        begin
          spUpDateInsertFacItm.StoredProcName := 'PUT_FACVEN';
          spUpDateInsertFacItm.Prepare;

          TotLei := 0;
          Leidos := 0;
          qSendSuc.First;
          while not qSendSuc.Eof do
          begin
            if Leidos = 0 then
            begin
              if not trGrabar.InTransaction then
                trGrabar.StartTransaction;
            end;
            For i := 0 to qSendSuc.FieldCount-1 do
              if spUpDateInsertFacItm.Params.FindParam(qSendSuc.Fields[i].FieldName) <> nil then
                spUpDateInsertFacItm.ParamByName(qSendSuc.Fields[i].FieldName).Value := qSendSuc.Fields[i].Value;
            try
              spUpDateInsertFacItm.ExecProc;
            except
              on E:Exception do
                Actualizar_Memo(Det, E.Message);
            end;
            Inc(Actual);
            Inc(Leidos);
            qSendSuc.Next;
            if (Leidos = Max_Trans) or
               (qSendSuc.Eof) then
            begin
              TotLei := TotLei + Leidos;
              Leidos := 0;
              try
                trGrabar.Commit;
                Actualizar_Memo(Det, 'Grabados '+IntToStr(TotLei));
              except
                on E:Exception do
                begin
                  trGrabar.Rollback;
                  Actualizar_Memo(Det, E.Message);
                end;
              end;
            end;
          end;
          qSendSuc.Close;
          Actualizar_Memo(Det, 'Ventas leidas '+IntToStr(Actual));

          // Clientes
          qSendSuc.SQL.Clear;
          qSendSuc.Database := dbBranch;
          qSendSuc.Transaction := trLeidos;
          qSendSuc.SQL.Add('Select * From SEND_CLIENTES');
          qSendSuc.Prepare;
          try
            qSendSuc.Open;
          except
            on E:Exception do
              Actualizar_Memo(Det, 'Error leyendo clientes. '+E.Message);
          end;
          Actualizar_Memo(Det, 'Leyendo clientes ');
          if not qSendSuc.IsEmpty then
          begin
            spUpDateInsertFacItm.StoredProcName := 'PUT_CLIENTES';
            spUpDateInsertFacItm.Prepare;
            qSendSuc.First;
            TotLei := 0;
            Leidos := 0;
            While not qSendSuc.Eof do
            begin
              if Leidos = 0 then
              begin
                if not trGrabar.InTransaction then
                  trGrabar.StartTransaction;
              end;
              For i:= 0 to qSendSuc.FieldCount-1 do
                if spUpDateInsertFacItm.Params.FindParam(qSendSuc.Fields[i].FieldName) <> nil then
                  spUpDateInsertFacItm.ParamByName(qSendSuc.Fields[i].FieldName).Value := qSendSuc.Fields[i].Value;
              try
                spUpDateInsertFacItm.ExecProc;
              except
                on E:Exception do
                  Actualizar_Memo(Det, E.Message);
              end;
              Inc(Leidos);
              qSendSuc.Next;
              if (Leidos = Max_Trans) or
                 (qSendSuc.Eof) then
              begin
                TotLei := TotLei + Leidos;
                Leidos := 0;
                try
                  trGrabar.Commit;
                  Actualizar_Memo(Det, 'Grabados '+IntToStr(TotLei));
                except
                  on E:Exception do
                  begin
                    trGrabar.Rollback;
                    Actualizar_Memo(Det, E.Message);
                  end;
                end;
              end;
            end;
          end;
        end
        else begin
          Actualizar_Memo(Det, 'No hay operaciones para actualizar. ');
        end;

        // Items FV
        Actualizar_Memo(Det, 'Leyendo productos ');
        qSendSuc.SQL.Clear;
        qSendSuc.Database := dbBranch;
        qSendSuc.Transaction := trLeidos;
        qSendSuc.SQL.Add('Select * From SEND_ITEMSFV(:FEC_DESDE)');
        qSendSuc.Prepare;
        qSendSuc.ParamByName('FEC_DESDE').AsDate := Fec_Desde;
        try
          qSendSuc.Open;
        except
          on E:Exception do
            Actualizar_Memo(Det, 'Error leyendo items comprobantes. '+E.Message);
        end;

        if not qSendSuc.IsEmpty then
        begin
          spUpDateInsertFacItm.StoredProcName := 'PUT_ITEMSFV';
          spUpDateInsertFacItm.Prepare;
          qSendSuc.First;
          TotLei := 0;
          Leidos := 0;
          While not qSendSuc.Eof do
          begin
            if Leidos = 0 then
            begin
              if not trGrabar.InTransaction then
                trGrabar.StartTransaction;
            end;
            For i := 0 to qSendSuc.FieldCount-1 do
              if spUpDateInsertFacItm.Params.FindParam(qSendSuc.Fields[i].FieldName) <> nil then
                spUpDateInsertFacItm.ParamByName(qSendSuc.Fields[i].FieldName).Value := qSendSuc.Fields[i].Value;
            try
              spUpDateInsertFacItm.ExecProc;
            except
              on E:Exception do
                Actualizar_Memo(Det, E.Message);
            end;
            Inc(Leidos);
            qSendSuc.Next;
            if (Leidos = Max_Trans) or
               (qSendSuc.Eof) then
            begin
              TotLei := TotLei + Leidos;
              Leidos := 0;
              try
                trGrabar.Commit;
                Actualizar_Memo(Det, 'Grabados '+IntToStr(TotLei));
              except
                on E:Exception do
                begin
                  trGrabar.Rollback;
                  Actualizar_Memo(Det, E.Message);
                end;
              end;
            end;
          end;
        end;

        // Tarjetas, creditos y mutuales
        Actual := 0;
        qSendSuc.SQL.Clear;
        qSendSuc.Database := dbBranch;
        qSendSuc.Transaction := trLeidos;
        qSendSuc.SQL.Add('Select * From SEND_MOVTAR(:FEC_DESDE)');
        qSendSuc.Prepare;
        qSendSuc.ParamByName('FEC_DESDE').AsDate := Fec_Desde;
        try
          qSendSuc.Open;
        except
          on E:Exception do
            Actualizar_Memo(Det, 'Error abriendo Tarjetas. '+E.Message);
        end;
        if not qSendSuc.IsEmpty then
        begin
          Actualizar_Memo(Det, 'Leyendo Tarjetas ');
          spUpDateInsertFacItm.StoredProcName := 'PUT_MOVTAR';
          spUpDateInsertFacItm.Prepare;
          qSendSuc.First;
          TotLei := 0;
          Leidos := 0;
          While not qSendSuc.Eof do
          begin
            if Leidos = 0 then
            begin
              if not trGrabar.InTransaction then
                trGrabar.StartTransaction;
            end;
            For i:= 0 to qSendSuc.FieldCount-1 do
              if spUpDateInsertFacItm.Params.FindParam(qSendSuc.Fields[i].FieldName) <> nil then
                spUpDateInsertFacItm.ParamByName(qSendSuc.Fields[i].FieldName).Value := qSendSuc.Fields[i].Value;
            try
              spUpDateInsertFacItm.ExecProc;
            except
              on E:Exception do
              begin
                Actualizar_Memo(Det, E.Message);
              end;
            end;
            Inc(Actual);
            Inc(Leidos);
            qSendSuc.Next;
            if (Leidos = Max_Trans) or
               (qSendSuc.Eof) then
            begin
              TotLei := TotLei + Leidos;
              Leidos := 0;
              try
                trGrabar.Commit;
                Actualizar_Memo(Det, 'Grabados '+IntToStr(TotLei));
              except
                on E:Exception do
                begin
                  trGrabar.Rollback;
                  Actualizar_Memo(Det, E.Message);
                end;
              end;
            end;
          end;
        end;

        // Cuotas
        Actual := 0;
        qSendSuc.SQL.Clear;
        qSendSuc.Database := dbBranch;
        qSendSuc.Transaction := trLeidos;
        qSendSuc.SQL.Add('Select * From SEND_MOVCTA(:FEC_DESDE)');
        qSendSuc.Prepare;
        qSendSuc.ParamByName('FEC_DESDE').AsDate := Fec_Desde;
        try
          qSendSuc.Open;
        except
          on E:Exception do
            Actualizar_Memo(Det, 'Error abriendo items Tarjetas. '+E.Message);
        end;
        if not qSendSuc.IsEmpty then
        begin
          Actualizar_Memo(Det, 'Leyendo items Tarjetas ');
          spUpDateInsertFacItm.StoredProcName:= 'PUT_CUOTAS';
          spUpDateInsertFacItm.Prepare;
          qSendSuc.First;
          TotLei := 0;
          Leidos := 0;
          While not qSendSuc.Eof do
          begin
            if Leidos = 0 then
            begin
              if not trGrabar.InTransaction then
                trGrabar.StartTransaction;
            end;
            For i:= 0 to qSendSuc.FieldCount-1 do
              if spUpDateInsertFacItm.Params.FindParam(qSendSuc.Fields[i].FieldName) <> nil then
                spUpDateInsertFacItm.ParamByName(qSendSuc.Fields[i].FieldName).Value := qSendSuc.Fields[i].Value;
            try
              spUpDateInsertFacItm.ExecProc;
            except
              on E:Exception do
              begin
                Actualizar_Memo(Det, E.Message);
              end;
            end;
            Inc(Actual);
            Inc(Leidos);
            qSendSuc.Next;
            if (Leidos = Max_Trans) or (qSendSuc.Eof) then
            begin
              TotLei := TotLei + Leidos;
              Leidos := 0;
              try
                trGrabar.Commit;
                Actualizar_Memo(Det, 'Grabados '+IntToStr(TotLei));
              except
                on E:Exception do
                begin
                  trGrabar.Rollback;
                  Actualizar_Memo(Det, E.Message);
                end;
              end;
            end;
          end;
        end;

        // Cheques
        Actual := 0;
        qSendSuc.SQL.Clear;
        qSendSuc.Database := dbBranch;
        qSendSuc.Transaction := trLeidos;
        qSendSuc.SQL.Add('Select * From SEND_BCOTER(:FEC_DESDE)');
        qSendSuc.Prepare;
        qSendSuc.ParamByName('FEC_DESDE').AsDate := Fec_Desde;
        qSendSuc.Open;
        try
          qSendSuc.Open;
        except
          on E:Exception do
            Actualizar_Memo(Det, 'Error abriendo Chk 3º. '+E.Message);
        end;

        if not qSendSuc.IsEmpty then
        begin
          Actualizar_Memo(Det, 'Leyendo Cheques ingresados ');
          spUpDateInsertFacItm.StoredProcName:= 'PUT_BCOTER';
          spUpDateInsertFacItm.Prepare;
          qSendSuc.First;
          TotLei := 0;
          Leidos := 0;
          While not qSendSuc.Eof do
          begin
            if Leidos = 0 then
            begin
              if not trGrabar.InTransaction then
                trGrabar.StartTransaction;
            end;
            For i:= 0 to qSendSuc.FieldCount-1 do
              if spUpDateInsertFacItm.Params.FindParam(qSendSuc.Fields[i].FieldName) <> nil then
                spUpDateInsertFacItm.ParamByName(qSendSuc.Fields[i].FieldName).Value := qSendSuc.Fields[i].Value;
            try
              spUpDateInsertFacItm.ExecProc;
            except
              on E:Exception do
              begin
                Actualizar_Memo(Det, E.Message);
              end;
            end;
            Inc(Actual);
            Inc(Leidos);
            qSendSuc.Next;
            if (Leidos = Max_Trans) or
               (qSendSuc.Eof) then
            begin
              TotLei := TotLei + Leidos;
              Leidos := 0;
              try
                trGrabar.Commit;
                Actualizar_Memo(Det, 'Grabados '+IntToStr(TotLei));
              except
                on E:Exception do
                begin
                  trGrabar.Rollback;
                  Actualizar_Memo(Det, E.Message);
                end;
              end;
            end;
          end;
        end;

        // Rendiciones
        Actual := 0;
        qSendSuc.SQL.Clear;
        qSendSuc.Database := dbBranch;
        qSendSuc.Transaction := trLeidos;
        qSendSuc.SQL.Add('Select * From SEND_RENDCJ(:FEC_DESDE)');
        qSendSuc.Prepare;
        qSendSuc.ParamByName('FEC_DESDE').AsDate := Fec_Desde;
        try
          qSendSuc.Open;
        except
          on E:Exception do
            Actualizar_Memo(Det, 'Error leyendo rendiciones. '+E.Message);
        end;
        if not qSendSuc.IsEmpty then
        begin
          Actualizar_Memo(Det, 'Leyendo rendiciones en remota ');
          spUpDateInsertFacItm.StoredProcName := 'PUT_RENDCJ';
          spUpDateInsertFacItm.Prepare;
          qSendSuc.First;
          TotLei := 0;
          Leidos := 0;
          While not qSendSuc.Eof do
          begin
            if Leidos = 0 then
            begin
              if not trGrabar.InTransaction then
                trGrabar.StartTransaction;
            end;
            For i := 0 to qSendSuc.FieldCount-1 do
              if spUpDateInsertFacItm.Params.FindParam(qSendSuc.Fields[i].FieldName) <> nil then
                spUpDateInsertFacItm.ParamByName(qSendSuc.Fields[i].FieldName).Value := qSendSuc.Fields[i].Value;
            try
              spUpDateInsertFacItm.ExecProc;
            except
              on E:Exception do
                Actualizar_Memo(Det, E.Message);
            end;
            Inc(Actual);
            Inc(Leidos);
            qSendSuc.Next;
            if (Leidos = Max_Trans) or
               (qSendSuc.Eof) then
            begin
              TotLei := TotLei + Leidos;
              Leidos := 0;
              try
                trGrabar.Commit;
                Actualizar_Memo(Det, 'Grabados '+IntToStr(TotLei));
              except
                on E:Exception do
                begin
                  trGrabar.Rollback;
                  Actualizar_Memo(Det, E.Message);
                end;
              end;
            end;
          end;
        end;
        Recibir_Transferencias(IdB, Det, Fec_Desde);
        Actualizar_Memo(DET, 'Marcando en sucursal lecturas...  ');
        Application.ProcessMessages;
        try
          if not qMark_EnSuc.Transaction.InTransaction then
            qMark_EnSuc.Transaction.StartTransaction;
          qMark_EnSuc.Close;
          qMark_EnSuc.StoredProcName := 'SETEAR_LECTURAS(:FECHA_LEC)';
          qMark_EnSuc.Prepare;
          qMark_EnSuc.ParamByName('FECHA_LEC').AsDate:= Date;
          qMark_EnSuc.ExecProc;
          qMark_EnSuc.Transaction.Commit;
        except
          on E:Exception do
          begin
            qMark_EnSuc.Transaction.Rollback;
            Actualizar_Memo(Det, 'Error marcando lecturas. '+E.Message);
          end;
        end;
      except
        on E:Exception do
        begin
          Conectado := False;
          Actualizar_Memo(DET, 'Error en proceso de Lecturas ' + E.Message);
        end;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    if dbBranch.Connected then
    begin
      dbBranch.Connected := False;
      Conectado := False;
      Actualizar_Memo(Det, 'Desconectando de '+Name_Suc);
    end;
    Actualizar_Memo(Det, 'Finalizando en '+Name_Suc);
  end;
end;

procedure TfrmFB_UpDater.tRead_BranchTimer(Sender: TObject);
var
  q: TMDOQuery;
begin
  try
    tRead_Branch.Enabled := False;
    Parate_Che := True;
    Actualizar_Memo(' ', 'Inicio Lecturas');
    tRead_Branch.Enabled := False;
    if not Sucur.Active then
      Sucur.Open;
    if not Sucur.IsEmpty then
    begin
      Sucur.First;
      While (not Sucur.Eof) and (Parate_Che) do
      begin
        try
          RODS(SucurIDSUCURSAL.AsInteger, SucurDETSUC.AsString, Ano_2000);
        except
          on E:Exception do
            Actualizar_Memo(SucurDETSUC.AsString, 'Error: '+E.Message);
        end;
        try
          if not dbCentral.Connected then
          begin
            dbCentral.DatabaseName := DataDirectory;
            dbCentral.Connected := true;
          end;

          if not trCentral.InTransaction then
            trCentral.StartTransaction;
          try
            q := TMDOQuery.Create(nil);
            q.Database := dbCentral;
            q.Transaction := trCentral;
            q.SQL.Add('UpDate Sucursales ');
            q.SQL.Add('   Set Proxima_Lect = :T ');
            q.SQL.Add('Where IdSucursal = :S ');
            q.ParamByName('T').AsDateTime := NOW;
            q.ParamByName('S').AsInteger := SucurIDSUCURSAL.AsInteger;
            q.ExecSQL;
          finally
            q.Free;
          end;
          trCentral.Commit;
        except
          on E:Exception do
          begin
            trCentral.Rollback;
            Actualizar_Memo(SucurDETSUC.AsString, 'Act. UL: '+E.Message);
          end;
        end;
        Sucur.Next;
      end;
      Actualizar_Memo(' ', 'Fin Lecturas');
    end;
  finally
    try
      ProxL := 0;
      if Time > EncodeTime(22, 0, 0, 0) then
      begin
        Fecha := IncDay(Now, 1);
        DecodeDate(Fecha, Anio, Mes, Dia);
        ProxL := EncodeDateTime(Anio, Mes, Dia, 8,30, 0, 0);
      end
      else begin
        if (Time > EncodeTime(13, 0, 0, 0)) and
           (Time < EncodeTime(17, 0, 0, 0)) then
        begin
          Fecha := Date;
          DecodeDate(Fecha, Anio, Mes, Dia);
          ProxL := EncodeDateTime(Anio, Mes, Dia, 17,30, 0, 0);
        end
        else begin
          Fecha := IncHour(Now, 1);
          ProxL := Fecha;
        end;
      end;
      tRead_Branch.Interval := MilliSecondsBetween(Now, ProxL);
      Actualizar_Memo('  ', '******************');
      Actualizar_Memo('  ', 'Inicio Proxima Tanda: '+DateTimeToStr(ProxL));
      tRead_Branch.Enabled := True;
    except
      on E:Exception do
      begin
        tRead_Branch.Enabled := False;
        Actualizar_Memo('Error ', E.Message);
        Fecha := Now;
        ProxL := Fecha;
        tRead_Branch.Interval := MilliSecondsBetween(Now, Fecha);
        tRead_Branch.Enabled := True;
      end;
    end;
  end;
end;

procedure TfrmFB_UpDater.btnBuscarOperClick(Sender: TObject);
begin
  try
    Parate_Che := True;
    Actualizar_Memo('  ', 'Inicio Lectura');
    tRead_Branch.Enabled := False;
    if not Sucur.Active then
      Sucur.Open;
    if not Sucur.IsEmpty then
    begin
      Sucur.First;
      While (not Sucur.Eof) and
            (Parate_Che) do
      begin
        RODS(SucurIDSUCURSAL.AsInteger, SucurDETSUC.AsString, Ano_2000);
        Sucur.Edit;
        SucurPROXIMA_LECT.AsDateTime := NOW;
        Sucur.Post;
        Sucur.Next;
      end;
      Actualizar_Memo('  ', 'Fin Lectura ');
    end;
  finally
    try
      ProxL := 0;
      if Time > EncodeTime(22, 0, 0, 0) then
      begin
        Fecha := IncDay(Now, 1);
        DecodeDate(Fecha, Anio, Mes, Dia);
        ProxL := EncodeDateTime(Anio, Mes, Dia, 8,30, 0, 0);
      end
      else begin
        if (Time > EncodeTime(13, 0, 0, 0)) and
           (Time < EncodeTime(17, 0, 0, 0)) then
        begin
          Fecha := Date;
          DecodeDate(Fecha, Anio, Mes, Dia);
          ProxL := EncodeDateTime(Anio, Mes, Dia,17,30, 0, 0);
        end
        else begin
          Fecha := IncHour(Now, 1);
          ProxL := Fecha;
        end;
      end;
      tRead_Branch.Interval := MilliSecondsBetween(Now, ProxL);
      Actualizar_Memo('  ', '******************');
      Actualizar_Memo('  ', 'Inicio Proxima Tanda: '+DateTimeToStr(ProxL));
      tRead_Branch.Enabled := True;
    except
      on E:Exception do
      begin
        tRead_Branch.Enabled := False;
        Actualizar_Memo('  ', E.Message);
        Fecha := Now;
        ProxL := Fecha;
        tRead_Branch.Interval := MilliSecondsBetween(Now, Fecha);
        tRead_Branch.Enabled := True;
      end;
    end;
  end;
end;

procedure TfrmFB_UpDater.btnDetenerLecturaClick(Sender: TObject);
begin
  Actualizar_Memo('  ', 'Lecturas detenidas forzosamente');
  Parate_Che := False;
  tRead_Branch.Enabled := False;
end;

procedure TfrmFB_UpDater.btnSalir_OcultarClick(Sender: TObject);
begin
  if not tRead_Branch.Enabled then
  begin
    Parate_Che := False;
    Actualizar_Memo('  ', 'Salida actualizador.');
  end;
  Close;
end;

procedure TfrmFB_UpDater.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmFB_UpDater.FormCreate(Sender: TObject);
var
  Reg: TIniFile;
begin
  tRead_Branch.Enabled := False;
  mmEstado.Lines.Clear;
  NameBranch := Cero;
  Max_Suc := 0;
  Parate_Che := True;

  PasoExe := ExtractFilePath(Application.ExeName);
  DataDirectory := Cero;
  BranchConfig := Cero;
  PointConfig := Cero;

  Application.ProcessMessages;
  Reg := TIniFile.Create(PasoExe + 'CfgBase.ini');
  try
    DataDirectory:= Reg.ReadString('FBICfg', 'Locacion', '');
    BranchConfig := Reg.ReadString('FBICfg', 'Sucursal', '');
    PointConfig  := Reg.ReadString('FBICfg', 'Terminal', '');
    if (Trim(DataDirectory) = Vacio) or
       (Trim(BranchConfig) = Vacio) or
       (Trim(PointConfig) = Vacio) then
    begin
      Application.Terminate;
    end;
  finally
    Reg.Free;
  end;

  // Punto de Venta
  try
    IdSalesPoint := StrToInt(PointConfig);
  except
    raise EUsuario.Create('Punto mal configurado');
  end;
  // Sucursal
  try
    IdBranch := StrToInt(BranchConfig);
  except
    raise EUsuario.Create('Sucursal mal configurado');
  end;

  try
    dbCentral.Connected := False;
    dbCentral.DatabaseName := DataDirectory;
    dbCentral.Connected := True;
  except
    on E: Exception do
    begin
      Actualizar_Memo('','Sin conexión' + E.Message);
      raise EUsuario.Create('Sin conexión' + E.Message);
    end;
  end;
  pnlSalir.Caption := DataDirectory+' '+BranchConfig+' '+PointConfig+' '+DateTimeToStr(Now);
end;

procedure TfrmFB_UpDater.FormShow(Sender: TObject);
begin
  Sucur.Open;
  gSucur.RefreshDisplay;
  if not tRead_Branch.Enabled then
    tRead_Branch.Enabled := True;
end;

procedure TfrmFB_UpDater.gSucurDblClick(Sender: TObject);
begin
  if Sucur.Active then
    RODS(SucurIDSUCURSAL.AsInteger, SucurDETSUC.AsString, Date);
end;

procedure TfrmFB_UpDater.mmEstadoDblClick(Sender: TObject);
begin
  mmEstado.Lines.Clear;
end;

procedure TfrmFB_UpDater.pcLecturasClose(Sender: TObject; var AllowClose: Boolean);
begin
  if not tRead_Branch.Enabled then
  begin
    Parate_Che := False;
    Actualizar_Memo('  ', 'Salida actualizador.');
  end;
  mmEstado.Lines.Clear;
  Close;
end;

end.
