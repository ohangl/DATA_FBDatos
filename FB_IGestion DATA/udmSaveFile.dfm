object dmSaveFile: TdmSaveFile
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 429
  Width = 622
  object AuxBcoTer: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NombreBanco'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NroCuenta'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NroCheque'
        DataType = ftInteger
      end
      item
        Name = 'IdTitular'
        DataType = ftInteger
      end
      item
        Name = 'Titular'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'IdEndoso'
        DataType = ftInteger
      end
      item
        Name = 'Endoso'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FechaVencimiento'
        DataType = ftDate
      end
      item
        Name = 'FechaEntrega'
        DataType = ftDate
      end
      item
        Name = 'IdEntrega'
        DataType = ftInteger
      end
      item
        Name = 'Entrega'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Monto'
        DataType = ftCurrency
      end
      item
        Name = 'IdOrdPago'
        DataType = ftInteger
      end
      item
        Name = 'IdFactura'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 480
    Top = 60
    object AuxBcoTerNombreBanco: TStringField
      DisplayLabel = 'Nombre~Banco'
      DisplayWidth = 10
      FieldName = 'NombreBanco'
      Size = 30
    end
    object AuxBcoTerNroCuenta: TStringField
      DisplayLabel = 'N'#186' Cuenta'
      DisplayWidth = 10
      FieldName = 'NroCuenta'
      Size = 30
    end
    object AuxBcoTerNroCheque: TIntegerField
      DisplayLabel = 'N'#186' Cheque'
      DisplayWidth = 10
      FieldName = 'NroCheque'
    end
    object AuxBcoTerIdTitular: TIntegerField
      DisplayLabel = 'Titular'
      DisplayWidth = 5
      FieldName = 'IdTitular'
      OnChange = AuxBcoTerIdTitularChange
    end
    object AuxBcoTerTitular: TStringField
      DisplayWidth = 22
      FieldName = 'Titular'
      Size = 30
    end
    object AuxBcoTerIdEndoso: TIntegerField
      DisplayLabel = 'Endoso'
      DisplayWidth = 5
      FieldName = 'IdEndoso'
      OnChange = AuxBcoTerIdEndosoChange
    end
    object AuxBcoTerEndoso: TStringField
      DisplayWidth = 20
      FieldName = 'Endoso'
      Size = 30
    end
    object AuxBcoTerFechaVencimiento: TDateField
      DisplayLabel = 'Vto.'
      DisplayWidth = 8
      FieldName = 'FechaVencimiento'
    end
    object AuxBcoTerFechaEntrega: TDateField
      DisplayLabel = 'Entrega'
      DisplayWidth = 10
      FieldName = 'FechaEntrega'
      Visible = False
    end
    object AuxBcoTerIdEntrega: TIntegerField
      DisplayLabel = 'Proveedor'
      DisplayWidth = 10
      FieldName = 'IdEntrega'
      Visible = False
    end
    object AuxBcoTerEntrega: TStringField
      DisplayLabel = 'Nombre proveedor'
      DisplayWidth = 30
      FieldName = 'Entrega'
      Visible = False
      Size = 30
    end
    object AuxBcoTerMonto: TCurrencyField
      FieldName = 'Monto'
    end
    object AuxBcoTerIdOrdPago: TIntegerField
      FieldName = 'IdOrdPago'
    end
    object AuxBcoTerIdFactura: TIntegerField
      FieldName = 'IdFactura'
    end
  end
  object SalChq3: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IdMov'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 479
    Top = 11
    object SalChq3IdMov: TIntegerField
      FieldName = 'IdMov'
    end
  end
  object AuxBcoPro: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IdBanco'
        DataType = ftInteger
      end
      item
        Name = 'IdMov'
        DataType = ftInteger
      end
      item
        Name = 'TipoMov'
        DataType = ftSmallint
      end
      item
        Name = 'NroCheque'
        DataType = ftInteger
      end
      item
        Name = 'FechaEmision'
        DataType = ftDate
      end
      item
        Name = 'FechaVencimiento'
        DataType = ftDate
      end
      item
        Name = 'FechaResumen'
        DataType = ftDate
      end
      item
        Name = 'IdEntidad'
        DataType = ftInteger
      end
      item
        Name = 'DetalleMov'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'IdOrdPago'
        DataType = ftInteger
      end
      item
        Name = 'IdFactura'
        DataType = ftInteger
      end
      item
        Name = 'IdSucursal'
        DataType = ftInteger
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Monto'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'iNroCheque'
        Fields = 'NroCheque'
      end>
    Params = <>
    StoreDefs = True
    AfterOpen = AuxBcoProAfterOpen
    Left = 480
    Top = 109
    object AuxBcoProIdBanco: TIntegerField
      FieldName = 'IdBanco'
    end
    object AuxBcoProDetalleBco: TStringField
      FieldKind = fkLookup
      FieldName = 'DetalleBco'
      LookupDataSet = dmGestion.Bancos
      LookupKeyFields = 'IdBanco'
      LookupResultField = 'Banco'
      KeyFields = 'IdBanco'
      Size = 25
      Lookup = True
    end
    object AuxBcoProIdMov: TIntegerField
      FieldName = 'IdMov'
    end
    object AuxBcoProTipoMov: TSmallintField
      FieldName = 'TipoMov'
      OnValidate = AuxBcoProTipoMovValidate
    end
    object AuxBcoProNroCheque: TIntegerField
      FieldName = 'NroCheque'
      OnValidate = AuxBcoProNroChequeValidate
    end
    object AuxBcoProFechaEmision: TDateField
      FieldName = 'FechaEmision'
    end
    object AuxBcoProFechaVencimiento: TDateField
      FieldName = 'FechaVencimiento'
    end
    object AuxBcoProFechaResumen: TDateField
      FieldName = 'FechaResumen'
    end
    object AuxBcoProIdEntidad: TIntegerField
      FieldName = 'IdEntidad'
    end
    object AuxBcoProDetalleMov: TStringField
      FieldName = 'DetalleMov'
      Size = 30
    end
    object AuxBcoProIdOrdPago: TIntegerField
      FieldName = 'IdOrdPago'
    end
    object AuxBcoProIdFactura: TIntegerField
      FieldName = 'IdFactura'
    end
    object AuxBcoProIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
    end
    object AuxBcoProDescripcion: TStringField
      DisplayWidth = 30
      FieldName = 'Descripcion'
      Size = 30
    end
    object AuxBcoProDetTipoMov: TStringField
      FieldKind = fkLookup
      FieldName = 'DetTipoMov'
      LookupDataSet = dmGestion.TipoMovBco
      LookupKeyFields = 'IdMovBco'
      LookupResultField = 'TIPOMOVBCO'
      KeyFields = 'TipoMov'
      Size = 15
      Lookup = True
    end
    object AuxBcoProMonto: TCurrencyField
      FieldName = 'Monto'
    end
    object AuxBcoProSumaResta: TIntegerField
      FieldKind = fkLookup
      FieldName = 'SumaResta'
      LookupDataSet = dmGestion.TipoMovBco
      LookupKeyFields = 'TIPOMOVBCO'
      LookupResultField = 'SUMA_RESTA'
      KeyFields = 'TipoMov'
      Lookup = True
    end
  end
  object tUltimos: TMDOTable
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'IDULTIMOS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ULTIMOCCPROVEEDOR'
        DataType = ftInteger
      end
      item
        Name = 'ULTIMORENDICION'
        DataType = ftInteger
      end
      item
        Name = 'ULTIMOFACC'
        DataType = ftInteger
      end
      item
        Name = 'ULTIMOFACV'
        DataType = ftInteger
      end
      item
        Name = 'ULTIMOFACT'
        DataType = ftInteger
      end
      item
        Name = 'ULTIMOFACO'
        DataType = ftInteger
      end
      item
        Name = 'ULTIMOORDPAGO'
        DataType = ftInteger
      end
      item
        Name = 'ULTIMOREGPRE'
        DataType = ftInteger
      end
      item
        Name = 'ULTIMOINVENTARIO'
        DataType = ftInteger
      end
      item
        Name = 'ULTIMOCCCLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'ULTIMOLIQUIDACION'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'ULTIMOS_PK'
        Fields = 'IDULTIMOS'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'ULTIMOS'
    Left = 95
    Top = 61
    object tUltimosIDULTIMOS: TIntegerField
      FieldName = 'IDULTIMOS'
      Origin = '"ULTIMOS"."IDULTIMOS"'
    end
    object tUltimosUltimoCCCliente: TIntegerField
      FieldName = 'UltimoCCCliente'
      Origin = '"ULTIMOS"."ULTIMOCCCLIENTE"'
    end
    object tUltimosUltimoCCProveedor: TIntegerField
      FieldName = 'UltimoCCProveedor'
      Origin = '"ULTIMOS"."ULTIMOCCPROVEEDOR"'
    end
    object tUltimosUltimoRendicion: TIntegerField
      FieldName = 'UltimoRendicion'
      Origin = '"ULTIMOS"."ULTIMORENDICION"'
    end
    object tUltimosUltimoFacC: TIntegerField
      FieldName = 'UltimoFacC'
      Origin = '"ULTIMOS"."ULTIMOFACC"'
    end
    object tUltimosUltimoFacV: TIntegerField
      FieldName = 'UltimoFacV'
      Origin = '"ULTIMOS"."ULTIMOFACV"'
    end
    object tUltimosUltimoFacT: TIntegerField
      FieldName = 'UltimoFacT'
      Origin = '"ULTIMOS"."ULTIMOFACT"'
    end
    object tUltimosUltimoFacO: TIntegerField
      FieldName = 'UltimoFacO'
      Origin = '"ULTIMOS"."ULTIMOFACO"'
    end
    object tUltimosUltimoOrdPago: TIntegerField
      FieldName = 'UltimoOrdPago'
      Origin = '"ULTIMOS"."ULTIMOORDPAGO"'
    end
    object tUltimosUltimoRegPre: TIntegerField
      FieldName = 'UltimoRegPre'
      Origin = '"ULTIMOS"."ULTIMOREGPRE"'
    end
    object tUltimosUltimoInventario: TIntegerField
      FieldName = 'UltimoInventario'
      Origin = '"ULTIMOS"."ULTIMOINVENTARIO"'
    end
    object tUltimosULTIMOLIQUIDACION: TIntegerField
      FieldName = 'ULTIMOLIQUIDACION'
      Origin = '"ULTIMOS"."ULTIMOLIQUIDACION"'
    end
  end
  object tCliServFiscal: TMDOTable
    Database = dmGestion.dbGestion
    Transaction = trSaveComp
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'IDFACTURA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = '_CLISERVFISCAL'
        Fields = 'IDFACTURA'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'CLISERVFISCAL'
    Left = 95
    Top = 11
    object tCliServFiscalIdFactura: TIntegerField
      FieldName = 'IdFactura'
      Origin = '"CLISERVFISCAL"."IDFACTURA"'
    end
    object tCliServFiscalNombre: TStringField
      FieldName = 'Nombre'
      Origin = '"CLISERVFISCAL"."NOMBRE"'
      Size = 30
    end
  end
  object tR_Rend: TMDOTable
    Database = dmGestion.dbGestion
    Transaction = trSaveComp
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'TSAF'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'TCOBOSUC'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'TCOBRADO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'IDREND'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IDSUC'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FECHAR'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'TVENTA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'TPESOS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'TTICKETS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'TTARJETA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'TCHEQUES'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'TSENAS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'TNCRED'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'TGASTOSE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'TGASTOST'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'DIFERENCIA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'IDCUENTA'
        DataType = ftInteger
      end
      item
        Name = 'DEPOSITO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'FECHAIS'
        DataType = ftDate
      end
      item
        Name = 'IDMOVBCO'
        DataType = ftInteger
      end
      item
        Name = 'BOLDEP'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = '_R_REND'
        Fields = 'IDREND;IDSUC;FECHAR'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'R_REND'
    Left = 95
    Top = 111
    object tR_RendIdRend: TIntegerField
      FieldName = 'IdRend'
      Origin = '"R_REND"."IDREND"'
    end
    object tR_RendIdSuc: TIntegerField
      FieldName = 'IdSuc'
      Origin = '"R_REND"."IDSUC"'
    end
    object tR_RendFechaR: TDateField
      FieldName = 'FechaR'
      Origin = '"R_REND"."FECHAR"'
    end
    object tR_RendIdCuenta: TIntegerField
      FieldName = 'IdCuenta'
      Origin = '"R_REND"."IDCUENTA"'
    end
    object tR_RendFechaIS: TDateField
      FieldName = 'FechaIS'
      Origin = '"R_REND"."FECHAIS"'
    end
    object tR_RendTVENTA: TMDOBCDField
      FieldName = 'TVENTA'
      Origin = '"R_REND"."TVENTA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object tR_RendTPESOS: TMDOBCDField
      FieldName = 'TPESOS'
      Origin = '"R_REND"."TPESOS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object tR_RendTTICKETS: TMDOBCDField
      FieldName = 'TTICKETS'
      Origin = '"R_REND"."TTICKETS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object tR_RendTTARJETA: TMDOBCDField
      FieldName = 'TTARJETA'
      Origin = '"R_REND"."TTARJETA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object tR_RendTCHEQUES: TMDOBCDField
      FieldName = 'TCHEQUES'
      Origin = '"R_REND"."TCHEQUES"'
      currency = True
      Precision = 18
      Size = 4
    end
    object tR_RendTSENAS: TMDOBCDField
      FieldName = 'TSENAS'
      Origin = '"R_REND"."TSENAS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object tR_RendTNCRED: TMDOBCDField
      FieldName = 'TNCRED'
      Origin = '"R_REND"."TNCRED"'
      currency = True
      Precision = 18
      Size = 4
    end
    object tR_RendTGASTOSE: TMDOBCDField
      FieldName = 'TGASTOSE'
      Origin = '"R_REND"."TGASTOSE"'
      currency = True
      Precision = 18
      Size = 4
    end
    object tR_RendTGASTOST: TMDOBCDField
      FieldName = 'TGASTOST'
      Origin = '"R_REND"."TGASTOST"'
      currency = True
      Precision = 18
      Size = 4
    end
    object tR_RendDIFERENCIA: TMDOBCDField
      FieldName = 'DIFERENCIA'
      Origin = '"R_REND"."DIFERENCIA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object tR_RendDEPOSITO: TMDOBCDField
      FieldName = 'DEPOSITO'
      Origin = '"R_REND"."DEPOSITO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object tR_RendIDMOVBCO: TIntegerField
      FieldName = 'IDMOVBCO'
      Origin = '"R_REND"."IDMOVBCO"'
    end
    object tR_RendTSAF: TMDOBCDField
      FieldName = 'TSAF'
      Origin = '"R_REND"."TSAF"'
      Precision = 18
      Size = 4
    end
    object tR_RendTCOBOSUC: TMDOBCDField
      FieldName = 'TCOBOSUC'
      Origin = '"R_REND"."TCOBOSUC"'
      Precision = 18
      Size = 4
    end
    object tR_RendTCOBRADO: TMDOBCDField
      FieldName = 'TCOBRADO'
      Origin = '"R_REND"."TCOBRADO"'
      Precision = 18
      Size = 4
    end
    object tR_RendBOLDEP: TIntegerField
      FieldName = 'BOLDEP'
      Origin = '"R_REND"."BOLDEP"'
    end
  end
  object qSaveMovTar: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = trSaveComp
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Insert into'
      'MovTar (IdMov, IdTarjeta, CodTar, IdCliente, '
      '              IdFactura, IdSucursal, IdPuntoVenta, '
      '              Autorizacion, NroCuota, ImpCuota, '
      '              TotalOp, FechaOp, Cupon, Lote, Estado, '
      
        '              CuotaPag, State, FechaIS,  UltimoPago,            ' +
        '    '
      '              NroFactOrg, IdTerminal)'
      'Values (:IdMov, :IdTarjeta, :CodTar, :IdCliente, '
      '             :IdFactura, :IdSucursal, :IdPuntoVenta, '
      '             :Autorizacion, :NroCuota, :ImpCuota, '
      '             :TotalOp, :FechaOp, :Cupon, :Lote, :Estado,'
      '             :CuotaPag, :State, :FechaIS, :UltimoPago, '
      '             :NroFactOrg, :IdTerminal)')
    Left = 334
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'IdTarjeta'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CodTar'
        ParamType = ptUnknown
      end
      item
        DataType = ftInterface
        Name = 'IdCliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftInterface
        Name = 'IdFactura'
        ParamType = ptUnknown
      end
      item
        DataType = ftInterface
        Name = 'IdSucursal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdPuntoVenta'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Autorizacion'
        ParamType = ptUnknown
      end
      item
        DataType = ftSmallint
        Name = 'NroCuota'
        ParamType = ptUnknown
      end
      item
        DataType = ftCurrency
        Name = 'ImpCuota'
        ParamType = ptUnknown
      end
      item
        DataType = ftCurrency
        Name = 'TotalOp'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'FechaOp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Cupon'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Lote'
        ParamType = ptUnknown
      end
      item
        DataType = ftSmallint
        Name = 'Estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CuotaPag'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'State'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UltimoPago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NroFactOrg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdTerminal'
        ParamType = ptUnknown
      end>
  end
  object qSaveStk: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = trSaveComp
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 334
    Top = 11
  end
  object qSaveComp: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = trSaveComp
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 406
    Top = 11
  end
  object trSaveComp: TMDOTransaction
    Active = False
    AutoCommit = False
    DefaultDatabase = dmGestion.dbGestion
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 23
    Top = 11
  end
  object spModVrs: TMDOStoredProc
    Database = dmGestion.dbGestion
    ForcedRefresh = True
    Transaction = trSaveComp
    Params = <>
    Left = 23
    Top = 109
  end
  object qOrdenes: TMDODataSet
    AfterOpen = qOrdenesAfterOpen
    AfterPost = qOrdenesAfterPost
    BeforeEdit = qOrdenesBeforeEdit
    Database = dmGestion.dbGestion
    OnCalcFields = qOrdenesCalcFields
    Transaction = trSaveComp
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM ORDENES'
      'WHERE'
      '  IDORDEN = :OLD_IDORDEN')
    InsertSQL.Strings = (
      'INSERT INTO ORDENES'
      
        '  (IDORDEN, ENTIDAD, FECHAOP, NROCOMPOP, CANTOP, TOTALOP, CONTAD' +
        'O, TICKETS, '
      
        '   BANCOPROP, BANCOTER, BONIFPROV, USUARIO, ESTADO, NETOOP, PRCR' +
        'ETI, RETENCIONI, '
      
        '   RETENCIONG, PRCRETG, RETENCIONB, PRCRETB1, RETENCIONH, PRCRET' +
        'B2, RETENCIONS, '
      
        '   NOCOMPOP, PRCRETS, RETENCIONES, NROCERTIVA, NROCERTGAN, NROCE' +
        'RTIBT, '
      '   NROCERTSES, IDEMPRESA)'
      'VALUES'
      
        '  (:IDORDEN, :ENTIDAD, :FECHAOP, :NROCOMPOP, :CANTOP, :TOTALOP, ' +
        ':CONTADO, '
      
        '   :TICKETS, :BANCOPROP, :BANCOTER, :BONIFPROV, :USUARIO, :ESTAD' +
        'O, :NETOOP, '
      
        '   :PRCRETI, :RETENCIONI, :RETENCIONG, :PRCRETG, :RETENCIONB, :P' +
        'RCRETB1, '
      
        '   :RETENCIONH, :PRCRETB2, :RETENCIONS, :NOCOMPOP, :PRCRETS, :RE' +
        'TENCIONES, '
      
        '   :NROCERTIVA, :NROCERTGAN, :NROCERTIBT, :NROCERTSES, :IDEMPRES' +
        'A)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE ORDENES'
      'SET'
      '  IDORDEN = :IDORDEN,'
      '  ENTIDAD = :ENTIDAD,'
      '  FECHAOP = :FECHAOP,'
      '  NROCOMPOP = :NROCOMPOP,'
      '  CANTOP = :CANTOP,'
      '  TOTALOP = :TOTALOP,'
      '  CONTADO = :CONTADO,'
      '  TICKETS = :TICKETS,'
      '  BANCOPROP = :BANCOPROP,'
      '  BANCOTER = :BANCOTER,'
      '  BONIFPROV = :BONIFPROV,'
      '  USUARIO = :USUARIO,'
      '  ESTADO = :ESTADO,'
      '  NETOOP = :NETOOP,'
      '  PRCRETI = :PRCRETI,'
      '  RETENCIONI = :RETENCIONI,'
      '  RETENCIONG = :RETENCIONG,'
      '  PRCRETG = :PRCRETG,'
      '  RETENCIONB = :RETENCIONB,'
      '  PRCRETB1 = :PRCRETB1,'
      '  RETENCIONH = :RETENCIONH,'
      '  PRCRETB2 = :PRCRETB2,'
      '  RETENCIONS = :RETENCIONS,'
      '  NOCOMPOP = :NOCOMPOP,'
      '  PRCRETS = :PRCRETS,'
      '  RETENCIONES = :RETENCIONES,'
      '  NROCERTIVA = :NROCERTIVA,'
      '  NROCERTGAN = :NROCERTGAN,'
      '  NROCERTIBT = :NROCERTIBT,'
      '  NROCERTSES = :NROCERTSES,'
      '  IDEMPRESA = :IDEMPRESA'
      'WHERE'
      '  IDORDEN = :OLD_IDORDEN')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDORDEN,'
      '  ENTIDAD,'
      '  FECHAOP,'
      '  NROCOMPOP,'
      '  CANTOP,'
      '  TOTALOP,'
      '  CONTADO,'
      '  TICKETS,'
      '  BANCOPROP,'
      '  BANCOTER,'
      '  BONIFPROV,'
      '  USUARIO,'
      '  ESTADO,'
      '  NETOOP,'
      '  PRCRETI,'
      '  RETENCIONI,'
      '  RETENCIONG,'
      '  PRCRETG,'
      '  RETENCIONB,'
      '  PRCRETB1,'
      '  RETENCIONH,'
      '  PRCRETB2,'
      '  RETENCIONS,'
      '  NOCOMPOP,'
      '  PRCRETS,'
      '  RETENCIONES,'
      '  NROCERTIVA,'
      '  NROCERTGAN,'
      '  NROCERTIBT,'
      '  NROCERTSES,'
      '  IDEMPRESA'
      'FROM ORDENES '
      'WHERE'
      '  IDORDEN = :IDORDEN')
    SelectSQL.Strings = (
      'Select O.IDORDEN, O.ENTIDAD, O.FECHAOP, O.NROCOMPOP, '
      '           O.CANTOP, O.TOTALOP, O.CONTADO, O.TICKETS, '
      '           O.BANCOPROP, O.BANCOTER, O.BONIFPROV, '
      '           O.RETENCIONES, O.USUARIO, O.ESTADO, O.NOCOMPOP, '
      '           O.NETOOP, O.RETENCIONI, O.RETENCIONG, O.RETENCIONB, '
      '           O.PRCRETG, O.PRCRETI, O.PRCRETB1, O.PRCRETB2,  '
      '           O.RETENCIONS, O.PRCRETS, O.RETENCIONH, '
      '           O.NROCERTIVA, O.NROCERTGAN, O.NROCERTIBT, '
      '           O.NROCERTSES, O.IDEMPRESA '
      'From ORDENES O'
      'Where O.IDORDEN =:IdOrden')
    Left = 334
    Top = 159
    object qOrdenesIDORDEN: TIntegerField
      FieldName = 'IDORDEN'
      Origin = '"ORDENES"."IDORDEN"'
      Required = True
    end
    object qOrdenesENTIDAD: TIntegerField
      FieldName = 'ENTIDAD'
      Origin = '"ORDENES"."ENTIDAD"'
    end
    object qOrdenesFECHAOP: TDateField
      FieldName = 'FECHAOP'
      Origin = '"ORDENES"."FECHAOP"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qOrdenesNROCOMPOP: TMDOStringField
      FieldName = 'NROCOMPOP'
      Origin = '"ORDENES"."NROCOMPOP"'
      Size = 13
    end
    object qOrdenesCANTOP: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'CANTOP'
      Origin = '"ORDENES"."CANTOP"'
    end
    object qOrdenesTOTALOP: TMDOBCDField
      FieldName = 'TOTALOP'
      Origin = '"ORDENES"."TOTALOP"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qOrdenesCONTADO: TMDOBCDField
      FieldName = 'CONTADO'
      Origin = '"ORDENES"."CONTADO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qOrdenesTICKETS: TMDOBCDField
      FieldName = 'TICKETS'
      Origin = '"ORDENES"."TICKETS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qOrdenesBANCOPROP: TMDOBCDField
      FieldName = 'BANCOPROP'
      Origin = '"ORDENES"."BANCOPROP"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qOrdenesBANCOTER: TMDOBCDField
      FieldName = 'BANCOTER'
      Origin = '"ORDENES"."BANCOTER"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qOrdenesBONIFPROV: TMDOBCDField
      FieldName = 'BONIFPROV'
      Origin = '"ORDENES"."BONIFPROV"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qOrdenesUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"ORDENES"."USUARIO"'
    end
    object qOrdenesESTADO: TSmallintField
      FieldName = 'ESTADO'
      Origin = '"ORDENES"."ESTADO"'
    end
    object qOrdenesNOMENTIDAD: TMDOStringField
      FieldKind = fkCalculated
      FieldName = 'NOMENTIDAD'
      Size = 30
      Calculated = True
    end
    object qOrdenesAUTORIZADO: TMDOStringField
      FieldKind = fkCalculated
      FieldName = 'AUTORIZADO'
      Size = 61
      Calculated = True
    end
    object qOrdenesNOMUSR: TMDOStringField
      FieldKind = fkCalculated
      FieldName = 'NOMUSR'
      Size = 30
      Calculated = True
    end
    object qOrdenesNOCOMPOP: TMDOBCDField
      FieldName = 'NOCOMPOP'
      Origin = '"ORDENES"."NOCOMPOP"'
      Required = True
      Precision = 18
      Size = 4
    end
    object qOrdenesNETOOP: TMDOBCDField
      FieldName = 'NETOOP'
      Origin = '"ORDENES"."NETOOP"'
      Precision = 18
      Size = 4
    end
    object qOrdenesRETENCIONI: TMDOBCDField
      FieldName = 'RETENCIONI'
      Origin = '"ORDENES"."RETENCIONI"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qOrdenesRETENCIONG: TMDOBCDField
      FieldName = 'RETENCIONG'
      Origin = '"ORDENES"."RETENCIONG"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qOrdenesRETENCIONB: TMDOBCDField
      FieldName = 'RETENCIONB'
      Origin = '"ORDENES"."RETENCIONB"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qOrdenesPRCRETG: TMDOBCDField
      FieldName = 'PRCRETG'
      Origin = '"ORDENES"."PRCRETG"'
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qOrdenesPRCRETI: TMDOBCDField
      FieldName = 'PRCRETI'
      Origin = '"ORDENES"."PRCRETI"'
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qOrdenesPRCRETB1: TMDOBCDField
      FieldName = 'PRCRETB1'
      Origin = '"ORDENES"."PRCRETB1"'
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qOrdenesPRCRETB2: TMDOBCDField
      FieldName = 'PRCRETB2'
      Origin = '"ORDENES"."PRCRETB2"'
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qOrdenesRETENCIONS: TMDOBCDField
      FieldName = 'RETENCIONS'
      Origin = '"ORDENES"."RETENCIONS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qOrdenesPRCRETS: TMDOBCDField
      FieldName = 'PRCRETS'
      Origin = '"ORDENES"."PRCRETS"'
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qOrdenesRETENCIONH: TMDOBCDField
      FieldName = 'RETENCIONH'
      Origin = '"ORDENES"."RETENCIONH"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qOrdenesRETENCIONES: TMDOBCDField
      FieldName = 'RETENCIONES'
      Origin = '"ORDENES"."RETENCIONES"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qOrdenesNROCERTIVA: TMDOStringField
      FieldName = 'NROCERTIVA'
      Origin = '"ORDENES"."NROCERTIVA"'
      Size = 16
    end
    object qOrdenesNROCERTGAN: TMDOStringField
      FieldName = 'NROCERTGAN'
      Origin = '"ORDENES"."NROCERTGAN"'
      Size = 16
    end
    object qOrdenesNROCERTIBT: TMDOStringField
      FieldName = 'NROCERTIBT'
      Origin = '"ORDENES"."NROCERTIBT"'
      Size = 16
    end
    object qOrdenesNROCERTSES: TMDOStringField
      FieldName = 'NROCERTSES'
      Origin = '"ORDENES"."NROCERTSES"'
      Size = 16
    end
    object qOrdenesIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
    end
    object qOrdenesDetEmp: TStringField
      FieldKind = fkCalculated
      FieldName = 'DetEmp'
      Size = 5
      Calculated = True
    end
  end
  object qItemsPG: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = trSaveComp
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsqOrdenes
    DeleteSQL.Strings = (
      'DELETE FROM ITEMSPG'
      'WHERE'
      '  IDORDEN = :OLD_IDORDEN AND'
      '  IDITEMPAG = :OLD_IDITEMPAG')
    InsertSQL.Strings = (
      'INSERT INTO ITEMSPG'
      
        '  (IDORDEN, IDITEMPAG, ENTIDAD, COMPROBANTE, FECHA, IMPORTE, DET' +
        'ALLE, DESCRIPCION, '
      '   IDMOVIMIENTO, ESTADO, TIPOPAGO)'
      'VALUES'
      
        '  (:IDORDEN, :IDITEMPAG, :ENTIDAD, :COMPROBANTE, :FECHA, :IMPORT' +
        'E, :DETALLE, '
      '   :DESCRIPCION, :IDMOVIMIENTO, :ESTADO, :TIPOPAGO)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE ITEMSPG'
      'SET'
      '  IDORDEN = :IDORDEN,'
      '  IDITEMPAG = :IDITEMPAG,'
      '  ENTIDAD = :ENTIDAD,'
      '  COMPROBANTE = :COMPROBANTE,'
      '  FECHA = :FECHA,'
      '  IMPORTE = :IMPORTE,'
      '  DETALLE = :DETALLE,'
      '  DESCRIPCION = :DESCRIPCION,'
      '  IDMOVIMIENTO = :IDMOVIMIENTO,'
      '  ESTADO = :ESTADO,'
      '  TIPOPAGO = :TIPOPAGO'
      'WHERE'
      '  IDORDEN = :OLD_IDORDEN AND'
      '  IDITEMPAG = :OLD_IDITEMPAG')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDORDEN,'
      '  IDITEMPAG,'
      '  ENTIDAD,'
      '  COMPROBANTE,'
      '  FECHA,'
      '  IMPORTE,'
      '  DETALLE,'
      '  DESCRIPCION,'
      '  IDMOVIMIENTO,'
      '  ESTADO,'
      '  TIPOPAGO'
      'FROM ITEMSPG '
      'WHERE'
      '  IDORDEN = :IDORDEN AND'
      '  IDITEMPAG = :IDITEMPAG')
    SelectSQL.Strings = (
      'Select I.IDORDEN, I.IDITEMPAG, I.ENTIDAD, I.COMPROBANTE, '
      
        '           I.TIPOPAGO, I.FECHA, I.IMPORTE, I.DETALLE, I.DESCRIPC' +
        'ION, '
      '           I.IDMOVIMIENTO, I.ESTADO, T.TipOP'
      'From ITEMSPG I'
      'left Outer Join TiposPago T'
      '   on T.IdTipoP = I.TIPOPAGO'
      'Where IdOrden =:IdOrden'
      'Order By I.TIPOPAGO,  I.COMPROBANTE ')
    Left = 334
    Top = 259
    object qItemsPGIDORDEN: TIntegerField
      FieldName = 'IDORDEN'
      Origin = '"ITEMSPG"."IDORDEN"'
      Required = True
    end
    object qItemsPGIDITEMPAG: TSmallintField
      FieldName = 'IDITEMPAG'
      Origin = '"ITEMSPG"."IDITEMPAG"'
      Required = True
    end
    object qItemsPGENTIDAD: TIntegerField
      FieldName = 'ENTIDAD'
      Origin = '"ITEMSPG"."ENTIDAD"'
    end
    object qItemsPGCOMPROBANTE: TMDOStringField
      FieldName = 'COMPROBANTE'
      Origin = '"ITEMSPG"."COMPROBANTE"'
    end
    object qItemsPGFECHA: TDateField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      DisplayWidth = 8
      FieldName = 'FECHA'
      OnGetText = qItemsPGFECHAGetText
      DisplayFormat = 'dd/mm/yy'
    end
    object qItemsPGIMPORTE: TMDOBCDField
      FieldName = 'IMPORTE'
      Origin = '"ITEMSPG"."IMPORTE"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsPGDETALLE: TMDOStringField
      FieldName = 'DETALLE'
      Origin = '"ITEMSPG"."DETALLE"'
      Size = 30
    end
    object qItemsPGDESCRIPCION: TMDOStringField
      FieldName = 'DESCRIPCION'
      Origin = '"ITEMSPG"."DESCRIPCION"'
      Size = 30
    end
    object qItemsPGIDMOVIMIENTO: TIntegerField
      FieldName = 'IDMOVIMIENTO'
      Origin = '"ITEMSPG"."IDMOVIMIENTO"'
    end
    object qItemsPGESTADO: TSmallintField
      FieldName = 'ESTADO'
      Origin = '"ITEMSPG"."ESTADO"'
    end
    object qItemsPGTIPOP: TMDOStringField
      FieldName = 'TIPOP'
      Origin = '"TIPOSPAGO"."TIPOP"'
      Size = 30
    end
    object qItemsPGTIPOPAGO: TSmallintField
      FieldName = 'TIPOPAGO'
      Origin = '"ITEMSPG"."TIPOPAGO"'
    end
  end
  object qItemsOP: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = trSaveComp
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsqOrdenes
    DeleteSQL.Strings = (
      'DELETE FROM ITEMSOP'
      'WHERE'
      '  IDORDPAGO = :OLD_IDORDPAGO AND'
      '  IDITEMOP = :OLD_IDITEMOP')
    InsertSQL.Strings = (
      'INSERT INTO ITEMSOP'
      
        '  (IDPUNTOVENTA, IDORDPAGO, IDITEMOP, ENTIDAD, FECHAOP, FECHAOR,' +
        ' IDFACTURA, '
      
        '   IDSUCURSAL, IMPORTE, SALDOMOV, MONTOORG, TIPOMOV, COMPROBANTE' +
        ', NROFACTURA, '
      '   ESTADO)'
      'VALUES'
      
        '  (:IDPUNTOVENTA, :IDORDPAGO, :IDITEMOP, :ENTIDAD, :FECHAOP, :FE' +
        'CHAOR, '
      
        '   :IDFACTURA, :IDSUCURSAL, :IMPORTE, :SALDOMOV, :MONTOORG, :TIP' +
        'OMOV, '
      ':COMPROBANTE, '
      '   :NROFACTURA, :ESTADO)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE ITEMSOP'
      'SET'
      '  IDPUNTOVENTA = :IDPUNTOVENTA,'
      '  IDORDPAGO = :IDORDPAGO,'
      '  IDITEMOP = :IDITEMOP,'
      '  ENTIDAD = :ENTIDAD,'
      '  FECHAOP = :FECHAOP,'
      '  FECHAOR = :FECHAOR,'
      '  IDFACTURA = :IDFACTURA,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  IMPORTE = :IMPORTE,'
      '  SALDOMOV = :SALDOMOV,'
      '  MONTOORG = :MONTOORG,'
      '  TIPOMOV = :TIPOMOV,'
      '  COMPROBANTE = :COMPROBANTE,'
      '  NROFACTURA = :NROFACTURA,'
      '  ESTADO = :ESTADO'
      'WHERE'
      '  IDORDPAGO = :OLD_IDORDPAGO AND'
      '  IDITEMOP = :OLD_IDITEMOP')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDPUNTOVENTA,'
      '  IDORDPAGO,'
      '  IDITEMOP,'
      '  ENTIDAD,'
      '  FECHAOP,'
      '  FECHAOR,'
      '  IDFACTURA,'
      '  IDSUCURSAL,'
      '  IMPORTE,'
      '  SALDOMOV,'
      '  MONTOORG,'
      '  TIPOMOV,'
      '  COMPROBANTE,'
      '  NROFACTURA,'
      '  ESTADO'
      'FROM ITEMSOP '
      'WHERE'
      '  IDORDPAGO = :IDORDPAGO AND'
      '  IDITEMOP = :IDITEMOP')
    SelectSQL.Strings = (
      'Select I.IDORDPAGO, I.IDITEMOP, I.ENTIDAD, I.FECHAOP,'
      '           I.FECHAOR,  I.IDFACTURA, I.IDSUCURSAL, '
      '           I.IDPUNTOVENTA, I.IMPORTE, I.SALDOMOV, '
      '           I.MONTOORG, I.TIPOMOV, I.COMPROBANTE, '
      '           I.NROFACTURA, I.ESTADO, C.Total as MontoComprobante, '
      '           T.DescCorta as DetMov'
      'From ITEMSOP I'
      'left Outer Join FacCom C'
      '  on C.IdFactura = I.IDFACTURA And '
      '       C.IdSucursal = I.IDSUCURSAL'
      'left Outer Join TiposComp T'
      '   on T.IdComprobante = I.TIPOMOV'
      'Where I.IDORDPAGO =:IdOrden')
    Left = 334
    Top = 208
    object qItemsOPIDORDPAGO: TIntegerField
      FieldName = 'IDORDPAGO'
      Origin = '"ITEMSOP"."IDORDPAGO"'
      Required = True
    end
    object qItemsOPIDITEMOP: TIntegerField
      FieldName = 'IDITEMOP'
      Origin = '"ITEMSOP"."IDITEMOP"'
      Required = True
    end
    object qItemsOPENTIDAD: TIntegerField
      FieldName = 'ENTIDAD'
      Origin = '"ITEMSOP"."ENTIDAD"'
    end
    object qItemsOPFECHAOP: TDateField
      FieldName = 'FECHAOP'
      Origin = '"ITEMSOP"."FECHAOP"'
    end
    object qItemsOPFECHAOR: TDateField
      FieldName = 'FECHAOR'
      Origin = '"ITEMSOP"."FECHAOR"'
    end
    object qItemsOPIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"ITEMSOP"."IDFACTURA"'
    end
    object qItemsOPIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"ITEMSOP"."IDSUCURSAL"'
    end
    object qItemsOPIMPORTE: TMDOBCDField
      FieldName = 'IMPORTE'
      Origin = '"ITEMSOP"."IMPORTE"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsOPSALDOMOV: TMDOBCDField
      FieldName = 'SALDOMOV'
      Origin = '"ITEMSOP"."SALDOMOV"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsOPMONTOORG: TMDOBCDField
      FieldName = 'MONTOORG'
      Origin = '"ITEMSOP"."MONTOORG"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsOPTIPOMOV: TSmallintField
      FieldName = 'TIPOMOV'
      Origin = '"ITEMSOP"."TIPOMOV"'
    end
    object qItemsOPCOMPROBANTE: TMDOStringField
      FieldName = 'COMPROBANTE'
      Origin = '"ITEMSOP"."COMPROBANTE"'
      Size = 13
    end
    object qItemsOPNROFACTURA: TMDOStringField
      FieldName = 'NROFACTURA'
      Origin = '"ITEMSOP"."NROFACTURA"'
      Size = 13
    end
    object qItemsOPESTADO: TSmallintField
      FieldName = 'ESTADO'
      Origin = '"ITEMSOP"."ESTADO"'
    end
    object qItemsOPMONTOCOMPROBANTE: TMDOBCDField
      FieldName = 'MONTOCOMPROBANTE'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsOPDETMOV: TMDOStringField
      FieldName = 'DETMOV'
      Size = 5
    end
    object qItemsOPIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
    end
  end
  object dsqOrdenes: TDataSource
    AutoEdit = False
    DataSet = qOrdenes
    Left = 407
    Top = 158
  end
  object dsqItemsOP: TDataSource
    AutoEdit = False
    DataSet = qItemsOP
    Left = 407
    Top = 209
  end
  object dsqItemsPG: TDataSource
    AutoEdit = False
    DataSet = qItemsPG
    Left = 407
    Top = 259
  end
  object trVerComp: TMDOTransaction
    Active = False
    AutoCommit = False
    DefaultDatabase = dmGestion.dbGestion
    Left = 23
    Top = 60
  end
  object qSaveMovCta: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = trSaveComp
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Insert into'
      'MovCuotas (IdMovCred, IdSucursal, NroCuota, IdFactura, '
      
        '                    IdPuntoVenta, IdTarjeta, FechaV, MontoCuota,' +
        ' '
      
        '                    NroRecPago, FechaP, MontoDebito, MontoCredit' +
        'o,'
      '                    NroNotaDeb,  IdNroNota, IdRecibo, IdSucRec, '
      '                    IdPuntoRec, IdCliente, Cobrado, SaldoCuota, '
      '                    FecVtoOrg, Estado, FechaIS, FechaIC)'
      'Values (:IdMovCred, :IdSucursal, :NroCuota, :IdFactura,  '
      '             :IdPuntoVenta, :IdTarjeta, :FechaV, :MontoCuota,'
      '             :NroRecPago, :FechaP, :MontoDebito, :MontoCredito, '
      '             :NroNotaDeb, :IdNroNota, :IdRecibo, :IdSucRec, '
      '             :IdPuntoRec, :IdCliente, :Cobrado, :SaldoCuota, '
      '             :FecVtoOrg, :Estado, :FechaIS, :FechaIC)'
      '')
    Left = 334
    Top = 109
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdMovCred'
        ParamType = ptUnknown
      end
      item
        DataType = ftInterface
        Name = 'IdSucursal'
        ParamType = ptUnknown
      end
      item
        DataType = ftSmallint
        Name = 'NroCuota'
        ParamType = ptUnknown
      end
      item
        DataType = ftInterface
        Name = 'IdFactura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdPuntoVenta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdTarjeta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MontoCuota'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NroRecPago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MontoDebito'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MontoCredito'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NroNotaDeb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdNroNota'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdRecibo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdSucRec'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdPuntoRec'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdCliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cobrado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SaldoCuota'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FecVtoOrg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaIC'
        ParamType = ptUnknown
      end>
  end
  object dspCliServFiscal: TDataSetProvider
    DataSet = tCliServFiscal
    Options = [poIncFieldProps]
    Left = 176
    Top = 11
  end
  object CliServFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliServFiscal'
    AfterPost = Save_Safe
    Left = 258
    Top = 11
    object CliServFiscalIdFactura: TIntegerField
      FieldName = 'IdFactura'
    end
    object CliServFiscalNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
  end
  object Ultimos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUltimos'
    AfterPost = UltimosAfterPost
    Left = 258
    Top = 61
    object UltimosIDULTIMOS: TIntegerField
      FieldName = 'IDULTIMOS'
    end
    object UltimosUltimoCCCliente: TIntegerField
      FieldName = 'UltimoCCCliente'
    end
    object UltimosUltimoCCProveedor: TIntegerField
      FieldName = 'UltimoCCProveedor'
    end
    object UltimosUltimoRendicion: TIntegerField
      FieldName = 'UltimoRendicion'
    end
    object UltimosUltimoFacC: TIntegerField
      FieldName = 'UltimoFacC'
    end
    object UltimosUltimoFacV: TIntegerField
      FieldName = 'UltimoFacV'
    end
    object UltimosUltimoFacT: TIntegerField
      FieldName = 'UltimoFacT'
    end
    object UltimosUltimoFacO: TIntegerField
      FieldName = 'UltimoFacO'
    end
    object UltimosUltimoOrdPago: TIntegerField
      FieldName = 'UltimoOrdPago'
    end
    object UltimosUltimoRegPre: TIntegerField
      FieldName = 'UltimoRegPre'
    end
    object UltimosUltimoInventario: TIntegerField
      FieldName = 'UltimoInventario'
    end
    object UltimosULTIMOLIQUIDACION: TIntegerField
      FieldName = 'ULTIMOLIQUIDACION'
    end
  end
  object dspUltimos: TDataSetProvider
    DataSet = tUltimos
    Options = [poIncFieldProps]
    Left = 176
    Top = 61
  end
  object R_Rend: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspR_Rend'
    AfterPost = Save_Safe
    Left = 258
    Top = 111
    object R_RendIdRend: TIntegerField
      FieldName = 'IdRend'
    end
    object R_RendIdSuc: TIntegerField
      FieldName = 'IdSuc'
    end
    object R_RendFechaR: TDateField
      FieldName = 'FechaR'
    end
    object R_RendIdCuenta: TIntegerField
      FieldName = 'IdCuenta'
    end
    object R_RendFechaIS: TDateField
      FieldName = 'FechaIS'
    end
    object R_RendTVENTA: TBCDField
      FieldName = 'TVENTA'
      currency = True
      Precision = 18
    end
    object R_RendTPESOS: TBCDField
      FieldName = 'TPESOS'
      currency = True
      Precision = 18
    end
    object R_RendTTICKETS: TBCDField
      FieldName = 'TTICKETS'
      currency = True
      Precision = 18
    end
    object R_RendTTARJETA: TBCDField
      FieldName = 'TTARJETA'
      currency = True
      Precision = 18
    end
    object R_RendTCHEQUES: TBCDField
      FieldName = 'TCHEQUES'
      currency = True
      Precision = 18
    end
    object R_RendTSENAS: TBCDField
      FieldName = 'TSENAS'
      currency = True
      Precision = 18
    end
    object R_RendTNCRED: TBCDField
      FieldName = 'TNCRED'
      currency = True
      Precision = 18
    end
    object R_RendTGASTOSE: TBCDField
      FieldName = 'TGASTOSE'
      currency = True
      Precision = 18
    end
    object R_RendTGASTOST: TBCDField
      FieldName = 'TGASTOST'
      currency = True
      Precision = 18
    end
    object R_RendDIFERENCIA: TBCDField
      FieldName = 'DIFERENCIA'
      currency = True
      Precision = 18
    end
    object R_RendDEPOSITO: TBCDField
      FieldName = 'DEPOSITO'
      currency = True
      Precision = 18
    end
    object R_RendIDMOVBCO: TIntegerField
      FieldName = 'IDMOVBCO'
    end
    object R_RendTSAF: TBCDField
      FieldName = 'TSAF'
      Precision = 18
    end
    object R_RendTCOBOSUC: TBCDField
      FieldName = 'TCOBOSUC'
      Precision = 18
    end
    object R_RendTCOBRADO: TBCDField
      FieldName = 'TCOBRADO'
      Precision = 18
    end
    object R_RendBOLDEP: TIntegerField
      FieldName = 'BOLDEP'
    end
  end
  object dspR_Rend: TDataSetProvider
    DataSet = tR_Rend
    Options = [poIncFieldProps]
    Left = 176
    Top = 111
  end
  object ChqModel: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 366
    object ChqModelIdCheque: TSmallintField
      FieldName = 'IdCheque'
    end
    object ChqModelChNroChq: TStringField
      FieldName = 'ChNroChq'
      Size = 10
    end
    object ChqModelChMonto: TCurrencyField
      FieldName = 'ChMonto'
    end
    object ChqModelChDiaEmi: TSmallintField
      FieldName = 'ChDiaEmi'
    end
    object ChqModelChMesEmi: TStringField
      FieldName = 'ChMesEmi'
    end
    object ChqModelChAnoEmi: TSmallintField
      FieldName = 'ChAnoEmi'
    end
    object ChqModelChDiaVto: TSmallintField
      FieldName = 'ChDiaVto'
    end
    object ChqModelChMesVto: TStringField
      FieldName = 'ChMesVto'
    end
    object ChqModelChAnoVto: TSmallintField
      FieldName = 'ChAnoVto'
    end
    object ChqModelChTitular: TStringField
      FieldName = 'ChTitular'
      Size = 100
    end
    object ChqModelChPesos1: TStringField
      FieldName = 'ChPesos1'
      Size = 100
    end
    object ChqModelChPesos2: TStringField
      FieldName = 'ChPesos2'
      Size = 100
    end
    object ChqModelChFirma: TStringField
      FieldName = 'ChFirma'
      Size = 100
    end
    object ChqModelChCruzado: TBooleanField
      FieldName = 'ChCruzado'
    end
    object ChqModelIdMov: TIntegerField
      FieldName = 'IdMov'
    end
  end
  object lstModelChq: TppReport
    AutoStop = False
    DataPipeline = dbpModelChq
    PrinterSetup.BinName = 'Alimentador de tracci'#243'n'
    PrinterSetup.DocumentName = 'Cheque'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 76000
    PrinterSetup.mmPaperWidth = 180000
    PrinterSetup.PaperSize = 256
    Template.DatabaseSettings.DataPipeline = dbpBancos
    Template.DatabaseSettings.Name = '2'
    Template.DatabaseSettings.NameField = 'MODNAME'
    Template.DatabaseSettings.TemplateField = 'REPORTE'
    Template.FileName = 'C:\IyC\FB_IGestion\Forms\ChqBcoNacion.rtm'
    Template.SaveTo = stDatabase
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    SavePrinterSetup = True
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 242
    Top = 366
    Version = '10.02'
    mmColumnWidth = 180000
    DataPipelineName = 'dbpModelChq'
    object dbModelChq: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 65088
      mmPrintPosition = 0
      object lblDiaEmi: TppDBText
        UserName = 'lblDiaEmi'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ChDiaEmi'
        DataPipeline = dbpModelChq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpModelChq'
        mmHeight = 3429
        mmLeft = 23813
        mmTop = 5821
        mmWidth = 3175
        BandType = 4
      end
      object lblMesEmi: TppDBText
        UserName = 'lblMesEmi'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ChMesEmi'
        DataPipeline = dbpModelChq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpModelChq'
        mmHeight = 3429
        mmLeft = 33602
        mmTop = 5821
        mmWidth = 19844
        BandType = 4
      end
      object lblAnoEmi: TppDBText
        UserName = 'lblAnoEmi'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ChAnoEmi'
        DataPipeline = dbpModelChq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpModelChq'
        mmHeight = 3429
        mmLeft = 60061
        mmTop = 5821
        mmWidth = 6615
        BandType = 4
      end
      object lblDiaVto: TppDBText
        UserName = 'lblDiaVto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ChDiaVto'
        DataPipeline = dbpModelChq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpModelChq'
        mmHeight = 4233
        mmLeft = 19844
        mmTop = 11113
        mmWidth = 4233
        BandType = 4
      end
      object lblMesVto: TppDBText
        UserName = 'lblMesVto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ChMesVto'
        DataPipeline = dbpModelChq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpModelChq'
        mmHeight = 4233
        mmLeft = 32544
        mmTop = 11113
        mmWidth = 23813
        BandType = 4
      end
      object lblAnoVto: TppDBText
        UserName = 'lblAnoVto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ChAnoVto'
        DataPipeline = dbpModelChq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpModelChq'
        mmHeight = 4233
        mmLeft = 64558
        mmTop = 10583
        mmWidth = 17198
        BandType = 4
      end
      object lblTitChq: TppDBText
        UserName = 'lblTitChq'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ChTitular'
        DataPipeline = dbpModelChq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpModelChq'
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 16140
        mmWidth = 26035
        BandType = 4
      end
      object lblPesos1Chq: TppDBText
        UserName = 'lblPesos1Chq'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ChPesos1'
        DataPipeline = dbpModelChq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpModelChq'
        mmHeight = 4233
        mmLeft = 41540
        mmTop = 21167
        mmWidth = 84667
        BandType = 4
      end
      object lblPesos2Chq: TppDBText
        UserName = 'lblPesos2Chq'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ChPesos2'
        DataPipeline = dbpModelChq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpModelChq'
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 26458
        mmWidth = 98108
        BandType = 4
      end
      object lblMontoChq: TppDBText
        UserName = 'lblMontoChq'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ChMonto'
        DataPipeline = dbpModelChq
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbpModelChq'
        mmHeight = 5027
        mmLeft = 111390
        mmTop = 1323
        mmWidth = 26988
        BandType = 4
      end
      object lblDiaDelMes: TppLabel
        UserName = 'lblDiaDelMes'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3351
        mmLeft = 29104
        mmTop = 5821
        mmWidth = 3069
        BandType = 4
      end
    end
    object lpModelChq: TppParameterList
    end
  end
  object dsgModelChq: TppDesigner
    Caption = 'dsgModelchq'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Icon.Data = {
      0000010001002020100000000000E80200001600000028000000200000004000
      0000010004000000000080020000000000000000000000000000000000000000
      0000000080000080000000808000800000008000800080800000C0C0C0008080
      80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
      0000000000000000000000000000077777777777777777777777777777700777
      77777777777777777777777777F0000000000000000000000000000000000007
      777777777777777777777777770000077777777777777777777777777F000000
      0000000000000000000000000000000077F07F000001BF00000F70F770000000
      77F07F0001BBBB11000F70F77000000077F07F001BBBBBBB100F70F770000000
      77F07F01B001BF0BB10F70F77000000077F07F000001BF0BB10F70F770000000
      77F07F0001BBBBBB100F70F77000000077F07F001BBBBBB1000F70F770000000
      77F07F01BB01BF00000F70F77000000077F07F01BB01BF00B10F70F770000000
      77F07F001BBBBBBB100F70F77000000077F07F00011BBBB1000F70F770000000
      77F07F000001BF00000F70F77000000000000000000000000000000000000777
      77777777777777777777777777F0077777777777777777777777777777F00000
      000000000000000000000000000000077007777777777F77F777770077000000
      077007777777F777F7770077000000000007700777777F7F7700770000000000
      0000077007777F7F007700000000000000000007700777007700000000000000
      0000000007700077000000000000000000000000000777000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000C0000001C0000001E0000003E0000003E000
      0003E0000003E0000003E0000003E0000003E0000003E0000003E0000003E000
      0003E0000003E00000030000000000000000000000000000000080000000E000
      0003F800000FFE00003FFF8000FFFFE003FFFFF80FFFFFFE3FFFFFFFFFFF}
    Position = poScreenCenter
    Report = lstModelChq
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 60
    WindowWidth = 600
    Left = 388
    Top = 366
  end
  object dbpModelChq: TppDBPipeline
    DataSource = dsChqModel
    UserName = 'dbpModelChq'
    Left = 315
    Top = 366
    object dbpModelChqppField1: TppField
      FieldAlias = 'IdCheque'
      FieldName = 'IdCheque'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbpModelChqppField2: TppField
      FieldAlias = 'ChNroChq'
      FieldName = 'ChNroChq'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbpModelChqppField3: TppField
      FieldAlias = 'ChMonto'
      FieldName = 'ChMonto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbpModelChqppField4: TppField
      FieldAlias = 'ChDiaEmi'
      FieldName = 'ChDiaEmi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbpModelChqppField5: TppField
      FieldAlias = 'ChMesEmi'
      FieldName = 'ChMesEmi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbpModelChqppField6: TppField
      FieldAlias = 'ChAnoEmi'
      FieldName = 'ChAnoEmi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object dbpModelChqppField7: TppField
      FieldAlias = 'ChDiaVto'
      FieldName = 'ChDiaVto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object dbpModelChqppField8: TppField
      FieldAlias = 'ChMesVto'
      FieldName = 'ChMesVto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object dbpModelChqppField9: TppField
      FieldAlias = 'ChAnoVto'
      FieldName = 'ChAnoVto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object dbpModelChqppField10: TppField
      FieldAlias = 'ChTitular'
      FieldName = 'ChTitular'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object dbpModelChqppField11: TppField
      FieldAlias = 'ChPesos1'
      FieldName = 'ChPesos1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object dbpModelChqppField12: TppField
      FieldAlias = 'ChPesos2'
      FieldName = 'ChPesos2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object dbpModelChqppField13: TppField
      FieldAlias = 'ChFirma'
      FieldName = 'ChFirma'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object dbpModelChqppField14: TppField
      FieldAlias = 'ChCruzado'
      FieldName = 'ChCruzado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object dbpModelChqppField15: TppField
      FieldAlias = 'IdMov'
      FieldName = 'IdMov'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
  end
  object dsChqModel: TDataSource
    DataSet = ChqModel
    Left = 169
    Top = 366
  end
  object NroChq: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 484
    Top = 260
    object NroChqIdBanco: TIntegerField
      FieldName = 'IdBanco'
    end
    object NroChqCantMov: TSmallintField
      FieldName = 'CantMov'
    end
    object NroChqNroCheque: TIntegerField
      FieldName = 'NroCheque'
    end
  end
  object tTransBank: TMDOTable
    Database = dmGestion.dbGestion
    Transaction = trSaveComp
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'IDTBANK'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IDCTAORG'
        DataType = ftInteger
      end
      item
        Name = 'IDMOVORG'
        DataType = ftInteger
      end
      item
        Name = 'IDCTADES'
        DataType = ftInteger
      end
      item
        Name = 'IDMOVDES'
        DataType = ftInteger
      end
      item
        Name = 'MONTOT'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'FECHAT'
        DataType = ftDate
      end
      item
        Name = 'USUARIO'
        DataType = ftInteger
      end
      item
        Name = 'ESTADO'
        DataType = ftSmallint
      end
      item
        Name = 'CANTMOV'
        DataType = ftSmallint
      end>
    IndexDefs = <
      item
        Name = 'TRANSBANK_PK'
        Fields = 'IDTBANK'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'TRANSBANK'
    Left = 96
    Top = 261
    object tTransBankIDTBANK: TIntegerField
      FieldName = 'IDTBANK'
      Origin = '"TRANSBANK"."IDTBANK"'
    end
    object tTransBankIDCTAORG: TIntegerField
      FieldName = 'IDCTAORG'
      Origin = '"TRANSBANK"."IDCTAORG"'
    end
    object tTransBankIDMOVORG: TIntegerField
      FieldName = 'IDMOVORG'
      Origin = '"TRANSBANK"."IDMOVORG"'
    end
    object tTransBankIDCTADES: TIntegerField
      FieldName = 'IDCTADES'
      Origin = '"TRANSBANK"."IDCTADES"'
    end
    object tTransBankIDMOVDES: TIntegerField
      FieldName = 'IDMOVDES'
      Origin = '"TRANSBANK"."IDMOVDES"'
    end
    object tTransBankMONTOT: TMDOBCDField
      FieldName = 'MONTOT'
      Origin = '"TRANSBANK"."MONTOT"'
      Precision = 18
      Size = 4
    end
    object tTransBankFECHAT: TDateField
      FieldName = 'FECHAT'
      Origin = '"TRANSBANK"."FECHAT"'
    end
    object tTransBankUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"TRANSBANK"."USUARIO"'
    end
    object tTransBankESTADO: TSmallintField
      FieldName = 'ESTADO'
      Origin = '"TRANSBANK"."ESTADO"'
    end
    object tTransBankCANTMOV: TSmallintField
      FieldName = 'CANTMOV'
      Origin = '"TRANSBANK"."CANTMOV"'
    end
  end
  object dspTransBank: TDataSetProvider
    DataSet = tTransBank
    Options = [poIncFieldProps]
    Left = 179
    Top = 262
  end
  object TransBank: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransBank'
    BeforeInsert = TransBankBeforeInsert
    AfterPost = Save_Safe
    Left = 263
    Top = 262
    object TransBankIDTBANK: TIntegerField
      FieldName = 'IDTBANK'
      Origin = '"TRANSBANK"."IDTBANK"'
    end
    object TransBankIDCTAORG: TIntegerField
      FieldName = 'IDCTAORG'
      Origin = '"TRANSBANK"."IDCTAORG"'
    end
    object TransBankIDMOVORG: TIntegerField
      FieldName = 'IDMOVORG'
      Origin = '"TRANSBANK"."IDMOVORG"'
    end
    object TransBankIDCTADES: TIntegerField
      FieldName = 'IDCTADES'
      Origin = '"TRANSBANK"."IDCTADES"'
    end
    object TransBankIDMOVDES: TIntegerField
      FieldName = 'IDMOVDES'
      Origin = '"TRANSBANK"."IDMOVDES"'
    end
    object TransBankMONTOT: TBCDField
      FieldName = 'MONTOT'
      Origin = '"TRANSBANK"."MONTOT"'
      Precision = 18
    end
    object TransBankFECHAT: TDateField
      FieldName = 'FECHAT'
      Origin = '"TRANSBANK"."FECHAT"'
    end
    object TransBankUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"TRANSBANK"."USUARIO"'
    end
    object TransBankESTADO: TSmallintField
      FieldName = 'ESTADO'
      Origin = '"TRANSBANK"."ESTADO"'
    end
    object TransBankCANTMOV: TSmallintField
      FieldName = 'CANTMOV'
      Origin = '"TRANSBANK"."CANTMOV"'
    end
  end
  object tTBItems: TMDOTable
    Database = dmGestion.dbGestion
    Transaction = trSaveComp
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'IDTBANK'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IDITEMTB'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'FECHA'
        DataType = ftDate
      end
      item
        Name = 'DETALLE'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'MONTO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'TBITEMS_PK'
        Fields = 'IDTBANK;IDITEMTB'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'TBITEMS'
    Left = 97
    Top = 313
    object tTBItemsIDTBANK: TIntegerField
      FieldName = 'IDTBANK'
      Origin = '"TBITEMS"."IDTBANK"'
    end
    object tTBItemsIDITEMTB: TSmallintField
      FieldName = 'IDITEMTB'
      Origin = '"TBITEMS"."IDITEMTB"'
    end
    object tTBItemsFECHA: TDateField
      FieldName = 'FECHA'
      Origin = '"TBITEMS"."FECHA"'
    end
    object tTBItemsDETALLE: TMDOStringField
      FieldName = 'DETALLE'
      Origin = '"TBITEMS"."DETALLE"'
      Size = 25
    end
    object tTBItemsMONTO: TMDOBCDField
      FieldName = 'MONTO'
      Origin = '"TBITEMS"."MONTO"'
      Precision = 18
      Size = 4
    end
  end
  object dspTBItems: TDataSetProvider
    DataSet = tTBItems
    Options = [poIncFieldProps]
    Left = 181
    Top = 313
  end
  object TBItems: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTBItems'
    AfterPost = Save_Safe
    Left = 264
    Top = 314
    object TBItemsIDTBANK: TIntegerField
      FieldName = 'IDTBANK'
      Origin = '"TBITEMS"."IDTBANK"'
    end
    object TBItemsIDITEMTB: TSmallintField
      FieldName = 'IDITEMTB'
      Origin = '"TBITEMS"."IDITEMTB"'
    end
    object TBItemsFECHA: TDateField
      FieldName = 'FECHA'
      Origin = '"TBITEMS"."FECHA"'
    end
    object TBItemsDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = '"TBITEMS"."DETALLE"'
      Size = 25
    end
    object TBItemsMONTO: TBCDField
      FieldName = 'MONTO'
      Origin = '"TBITEMS"."MONTO"'
      Precision = 18
    end
  end
  object qCCProv: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM CCPROV'
      'WHERE'
      '  NROMOVIMIENTO = :OLD_NROMOVIMIENTO')
    InsertSQL.Strings = (
      'INSERT INTO CCPROV'
      
        '  (NROMOVIMIENTO, IDCOMPROBANTE, IDSUCURSAL, TCOMP, ENTIDAD, FEC' +
        'HA, FECHAORG, '
      
        '   COMPROBANTE, DEBE, HABER, PAGOACTA, SALDOMOV, SALDO, ESTADO, ' +
        'STATE, '
      
        '   IMPNETO, IMPNCOM, SALDONETO, IDORDPAGO, IDSUCORDP, FECHAPAGO,' +
        ' MONTORETI, '
      
        '   MONTORETG, MONTORETB, SALDOIMPINT, MONTORETH, MONTORETS, IDNR' +
        'OPREOP)'
      'VALUES'
      
        '  (:NROMOVIMIENTO, :IDCOMPROBANTE, :IDSUCURSAL, :TCOMP, :ENTIDAD' +
        ', :FECHA, '
      
        '   :FECHAORG, :COMPROBANTE, :DEBE, :HABER, :PAGOACTA, :SALDOMOV,' +
        ' :SALDO, '
      
        '   :ESTADO, :STATE, :IMPNETO, :IMPNCOM, :SALDONETO, :IDORDPAGO, ' +
        ':IDSUCORDP, '
      
        '   :FECHAPAGO, :MONTORETI, :MONTORETG, :MONTORETB, :SALDOIMPINT,' +
        ' :MONTORETH, '
      '   :MONTORETS, :IDNROPREOP)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE CCPROV'
      'SET'
      '  NROMOVIMIENTO = :NROMOVIMIENTO,'
      '  IDCOMPROBANTE = :IDCOMPROBANTE,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  TCOMP = :TCOMP,'
      '  ENTIDAD = :ENTIDAD,'
      '  FECHA = :FECHA,'
      '  FECHAORG = :FECHAORG,'
      '  COMPROBANTE = :COMPROBANTE,'
      '  DEBE = :DEBE,'
      '  HABER = :HABER,'
      '  PAGOACTA = :PAGOACTA,'
      '  SALDOMOV = :SALDOMOV,'
      '  SALDO = :SALDO,'
      '  ESTADO = :ESTADO,'
      '  STATE = :STATE,'
      '  IMPNETO = :IMPNETO,'
      '  IMPNCOM = :IMPNCOM,'
      '  SALDONETO = :SALDONETO,'
      '  IDORDPAGO = :IDORDPAGO,'
      '  IDSUCORDP = :IDSUCORDP,'
      '  FECHAPAGO = :FECHAPAGO,'
      '  MONTORETI = :MONTORETI,'
      '  MONTORETG = :MONTORETG,'
      '  MONTORETB = :MONTORETB,'
      '  SALDOIMPINT = :SALDOIMPINT,'
      '  MONTORETH = :MONTORETH,'
      '  MONTORETS = :MONTORETS,'
      '  IDNROPREOP = :IDNROPREOP'
      'WHERE'
      '  NROMOVIMIENTO = :OLD_NROMOVIMIENTO')
    RefreshSQL.Strings = (
      'SELECT '
      '  NROMOVIMIENTO,'
      '  IDCOMPROBANTE,'
      '  IDSUCURSAL,'
      '  TCOMP,'
      '  ENTIDAD,'
      '  FECHA,'
      '  FECHAORG,'
      '  COMPROBANTE,'
      '  DEBE,'
      '  HABER,'
      '  PAGOACTA,'
      '  SALDOMOV,'
      '  SALDO,'
      '  ESTADO,'
      '  STATE,'
      '  IMPNETO,'
      '  IMPNCOM,'
      '  SALDONETO,'
      '  IDORDPAGO,'
      '  IDSUCORDP,'
      '  FECHAPAGO,'
      '  MONTORETI,'
      '  MONTORETG,'
      '  MONTORETB,'
      '  SALDOIMPINT,'
      '  MONTORETH,'
      '  MONTORETS,'
      '  IDNROPREOP'
      'FROM CCPROV '
      'WHERE'
      '  NROMOVIMIENTO = :NROMOVIMIENTO')
    SelectSQL.Strings = (
      'Select NROMOVIMIENTO, IDCOMPROBANTE, IDSUCURSAL, TCOMP, '
      '           ENTIDAD, FECHA, FECHAORG, COMPROBANTE, DEBE, '
      '           HABER, PAGOACTA, SALDOMOV, SALDO, ESTADO, STATE, '
      '           IMPNETO, IMPNCOM, SALDONETO, IDORDPAGO, IDSUCORDP, '
      '           FECHAPAGO, MONTORETI,  MONTORETG, MONTORETB, '
      '           MONTORETH, MONTORETS CCPROV, IDNROPREOP, IDEMPRESA '
      'From CCPROV')
    Left = 24
    Top = 159
    object qCCProvNROMOVIMIENTO: TIntegerField
      FieldName = 'NROMOVIMIENTO'
      Origin = '"CCPROV"."NROMOVIMIENTO"'
      Required = True
    end
    object qCCProvIDCOMPROBANTE: TIntegerField
      FieldName = 'IDCOMPROBANTE'
      Origin = '"CCPROV"."IDCOMPROBANTE"'
    end
    object qCCProvIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"CCPROV"."IDSUCURSAL"'
    end
    object qCCProvTCOMP: TSmallintField
      FieldName = 'TCOMP'
      Origin = '"CCPROV"."TCOMP"'
    end
    object qCCProvENTIDAD: TIntegerField
      FieldName = 'ENTIDAD'
      Origin = '"CCPROV"."ENTIDAD"'
    end
    object qCCProvFECHA: TDateField
      FieldName = 'FECHA'
      Origin = '"CCPROV"."FECHA"'
    end
    object qCCProvFECHAORG: TDateField
      FieldName = 'FECHAORG'
      Origin = '"CCPROV"."FECHAORG"'
    end
    object qCCProvCOMPROBANTE: TMDOStringField
      FieldName = 'COMPROBANTE'
      Origin = '"CCPROV"."COMPROBANTE"'
      Size = 15
    end
    object qCCProvDEBE: TMDOBCDField
      FieldName = 'DEBE'
      Origin = '"CCPROV"."DEBE"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCCProvHABER: TMDOBCDField
      FieldName = 'HABER'
      Origin = '"CCPROV"."HABER"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCCProvPAGOACTA: TMDOBCDField
      FieldName = 'PAGOACTA'
      Origin = '"CCPROV"."PAGOACTA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCCProvSALDOMOV: TMDOBCDField
      FieldName = 'SALDOMOV'
      Origin = '"CCPROV"."SALDOMOV"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCCProvSALDO: TMDOBCDField
      FieldName = 'SALDO'
      Origin = '"CCPROV"."SALDO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCCProvESTADO: TSmallintField
      FieldName = 'ESTADO'
      Origin = '"CCPROV"."ESTADO"'
    end
    object qCCProvSTATE: TSmallintField
      FieldName = 'STATE'
      Origin = '"CCPROV"."STATE"'
    end
    object qCCProvIMPNETO: TMDOBCDField
      FieldName = 'IMPNETO'
      Origin = '"CCPROV"."IMPNETO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCCProvIMPNCOM: TMDOBCDField
      FieldName = 'IMPNCOM'
      Origin = '"CCPROV"."IMPNCOM"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCCProvSALDONETO: TMDOBCDField
      FieldName = 'SALDONETO'
      Origin = '"CCPROV"."SALDONETO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCCProvIDORDPAGO: TIntegerField
      FieldName = 'IDORDPAGO'
      Origin = '"CCPROV"."IDORDPAGO"'
    end
    object qCCProvIDSUCORDP: TIntegerField
      FieldName = 'IDSUCORDP'
      Origin = '"CCPROV"."IDSUCORDP"'
    end
    object qCCProvFECHAPAGO: TDateField
      FieldName = 'FECHAPAGO'
      Origin = '"CCPROV"."FECHAPAGO"'
    end
    object qCCProvMONTORETG: TMDOBCDField
      FieldName = 'MONTORETG'
      Origin = '"CCPROV"."MONTORETG"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCCProvMONTORETB: TMDOBCDField
      FieldName = 'MONTORETB'
      Origin = '"CCPROV"."MONTORETB"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCCProvMONTORETI: TMDOBCDField
      FieldName = 'MONTORETI'
      Origin = '"CCPROV"."MONTORETI"'
      Precision = 18
      Size = 4
    end
    object qCCProvMONTORETH: TMDOBCDField
      FieldName = 'MONTORETH'
      Origin = '"CCPROV"."MONTORETH"'
      Precision = 18
      Size = 4
    end
    object qCCProvMONTORETS: TMDOBCDField
      FieldName = 'MONTORETS'
      Origin = '"CCPROV"."MONTORETS"'
      Precision = 18
      Size = 4
    end
    object qCCProvIDNROPREOP: TIntegerField
      FieldName = 'IDNROPREOP'
    end
    object qCCProvIDEMPRESA: TIntegerField
      FieldName = ' IDEMPRESA '
    end
  end
  object qTransBco: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = trSaveComp
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM TRANSBANK'
      'WHERE'
      '  IDTBANK = :OLD_IDTBANK')
    InsertSQL.Strings = (
      'INSERT INTO TRANSBANK'
      
        '  (IDTBANK, IDCTAORG, IDMOVORG, IDCTADES, IDMOVDES, MONTOT, FECH' +
        'AT, USUARIO, '
      '   ESTADO, CANTMOV)'
      'VALUES'
      
        '  (:IDTBANK, :IDCTAORG, :IDMOVORG, :IDCTADES, :IDMOVDES, :MONTOT' +
        ', :FECHAT, '
      '   :USUARIO, :ESTADO, :CANTMOV)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE TRANSBANK'
      'SET'
      '  IDTBANK = :IDTBANK,'
      '  IDCTAORG = :IDCTAORG,'
      '  IDMOVORG = :IDMOVORG,'
      '  IDCTADES = :IDCTADES,'
      '  IDMOVDES = :IDMOVDES,'
      '  MONTOT = :MONTOT,'
      '  FECHAT = :FECHAT,'
      '  USUARIO = :USUARIO,'
      '  ESTADO = :ESTADO,'
      '  CANTMOV = :CANTMOV'
      'WHERE'
      '  IDTBANK = :OLD_IDTBANK')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDTBANK,'
      '  IDCTAORG,'
      '  IDMOVORG,'
      '  IDCTADES,'
      '  IDMOVDES,'
      '  MONTOT,'
      '  FECHAT,'
      '  USUARIO,'
      '  ESTADO,'
      '  CANTMOV'
      'FROM TRANSBANK '
      'WHERE'
      '  IDTBANK = :IDTBANK')
    SelectSQL.Strings = (
      
        'select IDTBANK, IDCTAORG, IDMOVORG, IDCTADES, IDMOVDES, MONTOT, ' +
        'FECHAT, USUARIO, ESTADO, CANTMOV from TRANSBANK')
    Left = 26
    Top = 262
    object qTransBcoIDTBANK: TIntegerField
      FieldName = 'IDTBANK'
      Required = True
    end
    object qTransBcoIDCTAORG: TIntegerField
      FieldName = 'IDCTAORG'
    end
    object qTransBcoIDMOVORG: TIntegerField
      FieldName = 'IDMOVORG'
    end
    object qTransBcoIDCTADES: TIntegerField
      FieldName = 'IDCTADES'
    end
    object qTransBcoIDMOVDES: TIntegerField
      FieldName = 'IDMOVDES'
    end
    object qTransBcoMONTOT: TMDOBCDField
      FieldName = 'MONTOT'
      Precision = 18
      Size = 4
    end
    object qTransBcoFECHAT: TDateField
      FieldName = 'FECHAT'
    end
    object qTransBcoUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object qTransBcoESTADO: TSmallintField
      FieldName = 'ESTADO'
    end
    object qTransBcoCANTMOV: TSmallintField
      FieldName = 'CANTMOV'
    end
  end
  object qItemsTB: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = trSaveComp
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM TBITEMS'
      'WHERE'
      '  IDTBANK = :OLD_IDTBANK AND'
      '  IDITEMTB = :OLD_IDITEMTB')
    InsertSQL.Strings = (
      'INSERT INTO TBITEMS'
      '  (IDTBANK, IDITEMTB, FECHA, DETALLE, MONTO)'
      'VALUES'
      '  (:IDTBANK, :IDITEMTB, :FECHA, :DETALLE, :MONTO)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE TBITEMS'
      'SET'
      '  IDTBANK = :IDTBANK,'
      '  IDITEMTB = :IDITEMTB,'
      '  FECHA = :FECHA,'
      '  DETALLE = :DETALLE,'
      '  MONTO = :MONTO'
      'WHERE'
      '  IDTBANK = :OLD_IDTBANK AND'
      '  IDITEMTB = :OLD_IDITEMTB')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDTBANK,'
      '  IDITEMTB,'
      '  FECHA,'
      '  DETALLE,'
      '  MONTO'
      'FROM TBITEMS '
      'WHERE'
      '  IDTBANK = :IDTBANK AND'
      '  IDITEMTB = :IDITEMTB')
    SelectSQL.Strings = (
      'select IDTBANK, IDITEMTB, FECHA, DETALLE, MONTO '
      'from TBITEMS')
    Left = 27
    Top = 313
    object qItemsTBIDTBANK: TIntegerField
      FieldName = 'IDTBANK'
      Required = True
    end
    object qItemsTBIDITEMTB: TSmallintField
      FieldName = 'IDITEMTB'
      Required = True
    end
    object qItemsTBFECHA: TDateField
      FieldName = 'FECHA'
    end
    object qItemsTBDETALLE: TMDOStringField
      FieldName = 'DETALLE'
      Size = 25
    end
    object qItemsTBMONTO: TMDOBCDField
      FieldName = 'MONTO'
      Precision = 18
      Size = 4
    end
  end
  object qCards: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM TARJETAS'
      'WHERE'
      '  IDTARJETA = :OLD_IDTARJETA')
    InsertSQL.Strings = (
      'INSERT INTO TARJETAS'
      
        '  (IDTARJETA, TARJETA, DIAPRESENTACION, TELAUTORIZACION, CODCOME' +
        'RCIO, '
      'CODENTIDAD, '
      
        '   LIMITE, DOMICILIO, DEPARTAMENTO, PROVINCIA, COMISION, SALDOVE' +
        'NCIDO, '
      
        '   SALDOAVENCER, TIPOENT, DOCUMENTO, TDOCFISCAL, TIPOIVA, IDPROV' +
        'EEDOR, '
      '   CODPOSTAL)'
      'VALUES'
      
        '  (:IDTARJETA, :TARJETA, :DIAPRESENTACION, :TELAUTORIZACION, :CO' +
        'DCOMERCIO, '
      
        '   :CODENTIDAD, :LIMITE, :DOMICILIO, :DEPARTAMENTO, :PROVINCIA, ' +
        ':COMISION, '
      
        '   :SALDOVENCIDO, :SALDOAVENCER, :TIPOENT, :DOCUMENTO, :TDOCFISC' +
        'AL, :TIPOIVA, '
      '   :IDPROVEEDOR, :CODPOSTAL)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE TARJETAS'
      'SET'
      '  IDTARJETA = :IDTARJETA,'
      '  TARJETA = :TARJETA,'
      '  DIAPRESENTACION = :DIAPRESENTACION,'
      '  TELAUTORIZACION = :TELAUTORIZACION,'
      '  CODCOMERCIO = :CODCOMERCIO,'
      '  CODENTIDAD = :CODENTIDAD,'
      '  LIMITE = :LIMITE,'
      '  DOMICILIO = :DOMICILIO,'
      '  DEPARTAMENTO = :DEPARTAMENTO,'
      '  PROVINCIA = :PROVINCIA,'
      '  COMISION = :COMISION,'
      '  SALDOVENCIDO = :SALDOVENCIDO,'
      '  SALDOAVENCER = :SALDOAVENCER,'
      '  TIPOENT = :TIPOENT,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  TDOCFISCAL = :TDOCFISCAL,'
      '  TIPOIVA = :TIPOIVA,'
      '  IDPROVEEDOR = :IDPROVEEDOR,'
      '  CODPOSTAL = :CODPOSTAL'
      'WHERE'
      '  IDTARJETA = :OLD_IDTARJETA')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDTARJETA,'
      '  TARJETA,'
      '  DIAPRESENTACION,'
      '  TELAUTORIZACION,'
      '  CODCOMERCIO,'
      '  CODENTIDAD,'
      '  LIMITE,'
      '  DOMICILIO,'
      '  DEPARTAMENTO,'
      '  PROVINCIA,'
      '  COMISION,'
      '  SALDOVENCIDO,'
      '  SALDOAVENCER,'
      '  TIPOENT,'
      '  DOCUMENTO,'
      '  TDOCFISCAL,'
      '  TIPOIVA,'
      '  IDPROVEEDOR,'
      '  CODPOSTAL'
      'FROM TARJETAS '
      'WHERE'
      '  IDTARJETA = :IDTARJETA')
    SelectSQL.Strings = (
      
        'select IDTARJETA, TARJETA, DIAPRESENTACION, TELAUTORIZACION, COD' +
        'COMERCIO, CODENTIDAD, LIMITE, DOMICILIO, DEPARTAMENTO, PROVINCIA' +
        ', COMISION, SALDOVENCIDO, SALDOAVENCER, TIPOENT, DOCUMENTO, TDOC' +
        'FISCAL, TIPOIVA, IDPROVEEDOR, CODPOSTAL'
      ' from TARJETAS')
    Left = 555
    Top = 12
    object qCardsIDTARJETA: TIntegerField
      FieldName = 'IDTARJETA'
      Required = True
    end
    object qCardsTARJETA: TMDOStringField
      FieldName = 'TARJETA'
      Required = True
      Size = 30
    end
    object qCardsDIAPRESENTACION: TSmallintField
      FieldName = 'DIAPRESENTACION'
    end
    object qCardsTELAUTORIZACION: TMDOStringField
      FieldName = 'TELAUTORIZACION'
    end
    object qCardsCODCOMERCIO: TMDOStringField
      FieldName = 'CODCOMERCIO'
    end
    object qCardsCODENTIDAD: TMDOStringField
      FieldName = 'CODENTIDAD'
    end
    object qCardsLIMITE: TMDOBCDField
      FieldName = 'LIMITE'
      Precision = 18
      Size = 4
    end
    object qCardsDOMICILIO: TMDOStringField
      FieldName = 'DOMICILIO'
      Size = 60
    end
    object qCardsDEPARTAMENTO: TMDOStringField
      FieldName = 'DEPARTAMENTO'
      Size = 30
    end
    object qCardsPROVINCIA: TMDOStringField
      FieldName = 'PROVINCIA'
      Size = 30
    end
    object qCardsCOMISION: TMDOBCDField
      FieldName = 'COMISION'
      Precision = 18
      Size = 4
    end
    object qCardsSALDOVENCIDO: TMDOBCDField
      FieldName = 'SALDOVENCIDO'
      Precision = 18
      Size = 4
    end
    object qCardsSALDOAVENCER: TMDOBCDField
      FieldName = 'SALDOAVENCER'
      Precision = 18
      Size = 4
    end
    object qCardsTIPOENT: TSmallintField
      FieldName = 'TIPOENT'
    end
    object qCardsDOCUMENTO: TMDOStringField
      FieldName = 'DOCUMENTO'
      Size = 13
    end
    object qCardsTDOCFISCAL: TSmallintField
      FieldName = 'TDOCFISCAL'
    end
    object qCardsTIPOIVA: TSmallintField
      FieldName = 'TIPOIVA'
    end
    object qCardsIDPROVEEDOR: TIntegerField
      FieldName = 'IDPROVEEDOR'
    end
    object qCardsCODPOSTAL: TMDOStringField
      FieldName = 'CODPOSTAL'
      Size = 10
    end
  end
  object qPlanCard: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM TARPLAN'
      'WHERE'
      '  IDTARJETA = :OLD_IDTARJETA AND'
      '  NROCUOTA = :OLD_NROCUOTA AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL')
    InsertSQL.Strings = (
      'INSERT INTO TARPLAN'
      
        '  (IDTARJETA, NROCUOTA, IDSUCURSAL, COEFPLAN, MODOPAGO, MAXDCTO,' +
        ' MAXDCTOII)'
      'VALUES'
      
        '  (:IDTARJETA, :NROCUOTA, :IDSUCURSAL, :COEFPLAN, :MODOPAGO, :MA' +
        'XDCTO, '
      '   :MAXDCTOII)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE TARPLAN'
      'SET'
      '  IDTARJETA = :IDTARJETA,'
      '  NROCUOTA = :NROCUOTA,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  COEFPLAN = :COEFPLAN,'
      '  MODOPAGO = :MODOPAGO,'
      '  MAXDCTO = :MAXDCTO,'
      '  MAXDCTOII = :MAXDCTOII'
      'WHERE'
      '  IDTARJETA = :OLD_IDTARJETA AND'
      '  NROCUOTA = :OLD_NROCUOTA AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDTARJETA,'
      '  NROCUOTA,'
      '  IDSUCURSAL,'
      '  COEFPLAN,'
      '  MODOPAGO,'
      '  MAXDCTO,'
      '  MAXDCTOII'
      'FROM TARPLAN '
      'WHERE'
      '  IDTARJETA = :IDTARJETA AND'
      '  NROCUOTA = :NROCUOTA AND'
      '  IDSUCURSAL = :IDSUCURSAL')
    SelectSQL.Strings = (
      
        'select IDTARJETA, NROCUOTA, IDSUCURSAL, COEFPLAN, MODOPAGO, MAXD' +
        'CTO, MAXDCTOII from TARPLAN')
    Left = 557
    Top = 62
    object qPlanCardIDTARJETA: TIntegerField
      FieldName = 'IDTARJETA'
      Required = True
    end
    object qPlanCardNROCUOTA: TIntegerField
      FieldName = 'NROCUOTA'
      Required = True
    end
    object qPlanCardIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Required = True
    end
    object qPlanCardCOEFPLAN: TMDOBCDField
      FieldName = 'COEFPLAN'
      Precision = 18
      Size = 4
    end
    object qPlanCardMODOPAGO: TSmallintField
      FieldName = 'MODOPAGO'
    end
    object qPlanCardMAXDCTO: TMDOBCDField
      FieldName = 'MAXDCTO'
      Precision = 18
      Size = 4
    end
    object qPlanCardMAXDCTOII: TMDOBCDField
      FieldName = 'MAXDCTOII'
      Precision = 18
      Size = 4
    end
  end
  object qMovCard: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM MOVTAR'
      'WHERE'
      '  IDMOV = :OLD_IDMOV AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL')
    InsertSQL.Strings = (
      'INSERT INTO MOVTAR'
      
        '  (IDMOV, IDSUCURSAL, IDTARJETA, IDFACTURA, IDCLIENTE, CUPON, LO' +
        'TE, FECHAOP, '
      
        '   CODTAR, NROCUOTA, IMPCUOTA, TOTALOP, AUTORIZACION, ESTADO, FE' +
        'CHARESUMEN, '
      
        '   FECHAIS, CUOTAPAG, NROLIQUIDACION, VENCUOTA, NRORECPAGO, INTM' +
        'ORA, '
      'CANTCUOTAS, '
      
        '   IDULTAVISO, INTCUOTA, NROULTAVISO, STATE, ULTIMOPAGO, IDPUNTO' +
        'VENTA, '
      '   IDTERMINAL, NROFACTORG)'
      'VALUES'
      
        '  (:IDMOV, :IDSUCURSAL, :IDTARJETA, :IDFACTURA, :IDCLIENTE, :CUP' +
        'ON, :LOTE, '
      
        '   :FECHAOP, :CODTAR, :NROCUOTA, :IMPCUOTA, :TOTALOP, :AUTORIZAC' +
        'ION, :ESTADO, '
      
        '   :FECHARESUMEN, :FECHAIS, :CUOTAPAG, :NROLIQUIDACION, :VENCUOT' +
        'A, :NRORECPAGO, '
      
        '   :INTMORA, :CANTCUOTAS, :IDULTAVISO, :INTCUOTA, :NROULTAVISO, ' +
        ':STATE, '
      '   :ULTIMOPAGO, :IDPUNTOVENTA, :IDTERMINAL, :NROFACTORG)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE MOVTAR'
      'SET'
      '  IDMOV = :IDMOV,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  IDTARJETA = :IDTARJETA,'
      '  IDFACTURA = :IDFACTURA,'
      '  IDCLIENTE = :IDCLIENTE,'
      '  CUPON = :CUPON,'
      '  LOTE = :LOTE,'
      '  FECHAOP = :FECHAOP,'
      '  CODTAR = :CODTAR,'
      '  NROCUOTA = :NROCUOTA,'
      '  IMPCUOTA = :IMPCUOTA,'
      '  TOTALOP = :TOTALOP,'
      '  AUTORIZACION = :AUTORIZACION,'
      '  ESTADO = :ESTADO,'
      '  FECHARESUMEN = :FECHARESUMEN,'
      '  FECHAIS = :FECHAIS,'
      '  CUOTAPAG = :CUOTAPAG,'
      '  NROLIQUIDACION = :NROLIQUIDACION,'
      '  VENCUOTA = :VENCUOTA,'
      '  NRORECPAGO = :NRORECPAGO,'
      '  INTMORA = :INTMORA,'
      '  CANTCUOTAS = :CANTCUOTAS,'
      '  IDULTAVISO = :IDULTAVISO,'
      '  INTCUOTA = :INTCUOTA,'
      '  NROULTAVISO = :NROULTAVISO,'
      '  STATE = :STATE,'
      '  ULTIMOPAGO = :ULTIMOPAGO,'
      '  IDPUNTOVENTA = :IDPUNTOVENTA,'
      '  IDTERMINAL = :IDTERMINAL,'
      '  NROFACTORG = :NROFACTORG'
      'WHERE'
      '  IDMOV = :OLD_IDMOV AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDMOV,'
      '  IDSUCURSAL,'
      '  IDTARJETA,'
      '  IDFACTURA,'
      '  IDCLIENTE,'
      '  CUPON,'
      '  LOTE,'
      '  FECHAOP,'
      '  CODTAR,'
      '  NROCUOTA,'
      '  IMPCUOTA,'
      '  TOTALOP,'
      '  AUTORIZACION,'
      '  ESTADO,'
      '  FECHARESUMEN,'
      '  FECHAIS,'
      '  CUOTAPAG,'
      '  NROLIQUIDACION,'
      '  VENCUOTA,'
      '  NRORECPAGO,'
      '  INTMORA,'
      '  CANTCUOTAS,'
      '  IDULTAVISO,'
      '  INTCUOTA,'
      '  NROULTAVISO,'
      '  STATE,'
      '  ULTIMOPAGO,'
      '  IDPUNTOVENTA,'
      '  IDTERMINAL,'
      '  NROFACTORG'
      'FROM MOVTAR '
      'WHERE'
      '  IDMOV = :IDMOV AND'
      '  IDSUCURSAL = :IDSUCURSAL')
    SelectSQL.Strings = (
      'Select IDMOV, IDTARJETA, IDFACTURA, IDPUNTOVENTA,'
      '          IDSUCURSAL, IDCLIENTE, CUPON, LOTE, FECHAOP, '
      '          CODTAR, NROCUOTA, IMPCUOTA, TOTALOP, '
      '          AUTORIZACION, ESTADO, FECHARESUMEN, FECHAIS,  '
      '          CUOTAPAG, NROLIQUIDACION, VENCUOTA, '
      '          NRORECPAGO, CANTCUOTAS, INTCUOTA, '
      '          STATE, ULTIMOPAGO '
      'From MOVTAR')
    Left = 558
    Top = 111
    object qMovCardIDMOV: TIntegerField
      FieldName = 'IDMOV'
      Origin = '"MOVTAR"."IDMOV"'
      Required = True
    end
    object qMovCardIDTARJETA: TIntegerField
      FieldName = 'IDTARJETA'
      Origin = '"MOVTAR"."IDTARJETA"'
    end
    object qMovCardIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"MOVTAR"."IDFACTURA"'
    end
    object qMovCardIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = '"MOVTAR"."IDCLIENTE"'
    end
    object qMovCardCUPON: TMDOStringField
      FieldName = 'CUPON'
      Origin = '"MOVTAR"."CUPON"'
    end
    object qMovCardLOTE: TMDOStringField
      FieldName = 'LOTE'
      Origin = '"MOVTAR"."LOTE"'
    end
    object qMovCardFECHAOP: TDateField
      FieldName = 'FECHAOP'
      Origin = '"MOVTAR"."FECHAOP"'
    end
    object qMovCardCODTAR: TMDOStringField
      FieldName = 'CODTAR'
      Origin = '"MOVTAR"."CODTAR"'
    end
    object qMovCardNROCUOTA: TSmallintField
      FieldName = 'NROCUOTA'
      Origin = '"MOVTAR"."NROCUOTA"'
    end
    object qMovCardIMPCUOTA: TMDOBCDField
      FieldName = 'IMPCUOTA'
      Origin = '"MOVTAR"."IMPCUOTA"'
      Precision = 18
      Size = 4
    end
    object qMovCardTOTALOP: TMDOBCDField
      FieldName = 'TOTALOP'
      Origin = '"MOVTAR"."TOTALOP"'
      Precision = 18
      Size = 4
    end
    object qMovCardAUTORIZACION: TMDOStringField
      FieldName = 'AUTORIZACION'
      Origin = '"MOVTAR"."AUTORIZACION"'
      Size = 10
    end
    object qMovCardESTADO: TSmallintField
      FieldName = 'ESTADO'
      Origin = '"MOVTAR"."ESTADO"'
    end
    object qMovCardFECHARESUMEN: TDateField
      FieldName = 'FECHARESUMEN'
      Origin = '"MOVTAR"."FECHARESUMEN"'
    end
    object qMovCardFECHAIS: TDateField
      FieldName = 'FECHAIS'
      Origin = '"MOVTAR"."FECHAIS"'
    end
    object qMovCardCUOTAPAG: TIntegerField
      FieldName = 'CUOTAPAG'
      Origin = '"MOVTAR"."CUOTAPAG"'
    end
    object qMovCardNROLIQUIDACION: TMDOStringField
      FieldName = 'NROLIQUIDACION'
      Origin = '"MOVTAR"."NROLIQUIDACION"'
      Size = 10
    end
    object qMovCardVENCUOTA: TDateField
      FieldName = 'VENCUOTA'
      Origin = '"MOVTAR"."VENCUOTA"'
    end
    object qMovCardNRORECPAGO: TMDOStringField
      FieldName = 'NRORECPAGO'
      Origin = '"MOVTAR"."NRORECPAGO"'
      Size = 13
    end
    object qMovCardCANTCUOTAS: TSmallintField
      FieldName = 'CANTCUOTAS'
      Origin = '"MOVTAR"."CANTCUOTAS"'
    end
    object qMovCardSTATE: TSmallintField
      FieldName = 'STATE'
      Origin = '"MOVTAR"."STATE"'
    end
    object qMovCardIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"MOVTAR"."IDSUCURSAL"'
      Required = True
    end
    object qMovCardULTIMOPAGO: TDateField
      FieldName = 'ULTIMOPAGO'
      Origin = '"MOVTAR"."ULTIMOPAGO"'
    end
    object qMovCardIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
    end
    object qMovCardINTCUOTA: TMDOBCDField
      FieldName = 'INTCUOTA'
      Precision = 18
      Size = 4
    end
  end
  object qMovCtas: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM MOVCUOTAS'
      'WHERE'
      '  IDMOVCRED = :OLD_IDMOVCRED AND'
      '  NROCUOTA = :OLD_NROCUOTA AND'
      '  IDFACTURA = :OLD_IDFACTURA AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL')
    InsertSQL.Strings = (
      'INSERT INTO MOVCUOTAS'
      
        '  (IDMOVCRED, NROCUOTA, IDFACTURA, IDSUCURSAL, FECHAV, MONTOCUOT' +
        'A, NRORECPAGO, '
      
        '   FECHAP, MONTODEBITO, NRONOTADEB, IDRECIBO, IDSUCREC, IDCLIENT' +
        'E, ESTADO, '
      '   FECHAIS)'
      'VALUES'
      
        '  (:IDMOVCRED, :NROCUOTA, :IDFACTURA, :IDSUCURSAL, :FECHAV, :MON' +
        'TOCUOTA, '
      
        '   :NRORECPAGO, :FECHAP, :MONTODEBITO, :NRONOTADEB, :IDRECIBO, :' +
        'IDSUCREC, '
      '   :IDCLIENTE, :ESTADO, :FECHAIS)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE MOVCUOTAS'
      'SET'
      '  IDMOVCRED = :IDMOVCRED,'
      '  NROCUOTA = :NROCUOTA,'
      '  IDFACTURA = :IDFACTURA,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  FECHAV = :FECHAV,'
      '  MONTOCUOTA = :MONTOCUOTA,'
      '  NRORECPAGO = :NRORECPAGO,'
      '  FECHAP = :FECHAP,'
      '  MONTODEBITO = :MONTODEBITO,'
      '  NRONOTADEB = :NRONOTADEB,'
      '  IDRECIBO = :IDRECIBO,'
      '  IDSUCREC = :IDSUCREC,'
      '  IDCLIENTE = :IDCLIENTE,'
      '  ESTADO = :ESTADO,'
      '  FECHAIS = :FECHAIS'
      'WHERE'
      '  IDMOVCRED = :OLD_IDMOVCRED AND'
      '  NROCUOTA = :OLD_NROCUOTA AND'
      '  IDFACTURA = :OLD_IDFACTURA AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDMOVCRED,'
      '  NROCUOTA,'
      '  IDFACTURA,'
      '  IDSUCURSAL,'
      '  FECHAV,'
      '  MONTOCUOTA,'
      '  NRORECPAGO,'
      '  FECHAP,'
      '  MONTODEBITO,'
      '  NRONOTADEB,'
      '  IDRECIBO,'
      '  IDSUCREC,'
      '  IDCLIENTE,'
      '  ESTADO,'
      '  FECHAIS'
      'FROM MOVCUOTAS '
      'WHERE'
      '  IDMOVCRED = :IDMOVCRED AND'
      '  NROCUOTA = :NROCUOTA AND'
      '  IDFACTURA = :IDFACTURA AND'
      '  IDSUCURSAL = :IDSUCURSAL')
    SelectSQL.Strings = (
      'select IDMOVCRED, NROCUOTA, IDFACTURA, IDSUCURSAL, FECHAV, '
      '           MONTOCUOTA, NRORECPAGO, FECHAP, MONTODEBITO, '
      '           NRONOTADEB, IDRECIBO, IDSUCREC, IDCLIENTE, ESTADO, '
      '           FECHAIS '
      'from MOVCUOTAS')
    Left = 560
    Top = 160
    object qMovCtasIDMOVCRED: TIntegerField
      FieldName = 'IDMOVCRED'
      Required = True
    end
    object qMovCtasNROCUOTA: TSmallintField
      FieldName = 'NROCUOTA'
      Required = True
    end
    object qMovCtasIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
    end
    object qMovCtasIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
    end
    object qMovCtasFECHAV: TDateField
      FieldName = 'FECHAV'
    end
    object qMovCtasMONTOCUOTA: TMDOBCDField
      FieldName = 'MONTOCUOTA'
      Precision = 18
      Size = 4
    end
    object qMovCtasNRORECPAGO: TMDOStringField
      FieldName = 'NRORECPAGO'
      Size = 13
    end
    object qMovCtasFECHAP: TDateField
      FieldName = 'FECHAP'
    end
    object qMovCtasMONTODEBITO: TMDOBCDField
      FieldName = 'MONTODEBITO'
      Precision = 18
      Size = 4
    end
    object qMovCtasNRONOTADEB: TMDOStringField
      FieldName = 'NRONOTADEB'
      Size = 13
    end
    object qMovCtasIDRECIBO: TIntegerField
      FieldName = 'IDRECIBO'
    end
    object qMovCtasIDSUCREC: TIntegerField
      FieldName = 'IDSUCREC'
    end
    object qMovCtasIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object qMovCtasESTADO: TSmallintField
      FieldName = 'ESTADO'
    end
    object qMovCtasFECHAIS: TDateField
      FieldName = 'FECHAIS'
    end
  end
  object qSucursales: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM SUCURSALES'
      'WHERE'
      '  IDSUCURSAL = :OLD_IDSUCURSAL')
    InsertSQL.Strings = (
      'INSERT INTO SUCURSALES'
      
        '  (IDSUCURSAL, NOMBRESUC, DIRECCIONSUC, LOCALIDADSUC, PROVINCIAS' +
        'UC, '
      'COPOSTALSUC, '
      
        '   TELEFONOSUC, DIRECTORIO, ACTUALIZACIONES, REMOTA, DETSUC, FEC' +
        'HAINICIO, '
      
        '   FECHATINV, NROREMITOT, NROREMITOI, NEMP, NPTO, TIPOFTP, HOSTN' +
        'AME, USUARIO, '
      
        '   PASSWFTP, DIRFTPENVIOS, DIRFTPRECEP, CONSUBDEP, ULTIMA_ACT, U' +
        'LTIMA_ACT_ORG, '
      '   IDBANCOT, IDBANCOB, IDBANCOE, IDBANCOP, IDLISTA, PRCLISTA)'
      'VALUES'
      
        '  (:IDSUCURSAL, :NOMBRESUC, :DIRECCIONSUC, :LOCALIDADSUC, :PROVI' +
        'NCIASUC, '
      
        '   :COPOSTALSUC, :TELEFONOSUC, :DIRECTORIO, :ACTUALIZACIONES, :R' +
        'EMOTA, '
      
        '   :DETSUC, :FECHAINICIO, :FECHATINV, :NROREMITOT, :NROREMITOI, ' +
        ':NEMP, '
      
        '   :NPTO, :TIPOFTP, :HOSTNAME, :USUARIO, :PASSWFTP, :DIRFTPENVIO' +
        'S, :DIRFTPRECEP, '
      
        '   :CONSUBDEP, :ULTIMA_ACT, :ULTIMA_ACT_ORG, :IDBANCOT, :IDBANCO' +
        'B, :IDBANCOE, '
      '   :IDBANCOP, :IDLISTA, :PRCLISTA)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE SUCURSALES'
      'SET'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  NOMBRESUC = :NOMBRESUC,'
      '  DIRECCIONSUC = :DIRECCIONSUC,'
      '  LOCALIDADSUC = :LOCALIDADSUC,'
      '  PROVINCIASUC = :PROVINCIASUC,'
      '  COPOSTALSUC = :COPOSTALSUC,'
      '  TELEFONOSUC = :TELEFONOSUC,'
      '  DIRECTORIO = :DIRECTORIO,'
      '  ACTUALIZACIONES = :ACTUALIZACIONES,'
      '  REMOTA = :REMOTA,'
      '  DETSUC = :DETSUC,'
      '  FECHAINICIO = :FECHAINICIO,'
      '  FECHATINV = :FECHATINV,'
      '  NROREMITOT = :NROREMITOT,'
      '  NROREMITOI = :NROREMITOI,'
      '  NEMP = :NEMP,'
      '  NPTO = :NPTO,'
      '  TIPOFTP = :TIPOFTP,'
      '  HOSTNAME = :HOSTNAME,'
      '  USUARIO = :USUARIO,'
      '  PASSWFTP = :PASSWFTP,'
      '  DIRFTPENVIOS = :DIRFTPENVIOS,'
      '  DIRFTPRECEP = :DIRFTPRECEP,'
      '  CONSUBDEP = :CONSUBDEP,'
      '  ULTIMA_ACT = :ULTIMA_ACT,'
      '  ULTIMA_ACT_ORG = :ULTIMA_ACT_ORG,'
      '  IDBANCOT = :IDBANCOT,'
      '  IDBANCOB = :IDBANCOB,'
      '  IDBANCOE = :IDBANCOE,'
      '  IDBANCOP = :IDBANCOP,'
      '  IDLISTA = :IDLISTA,'
      '  PRCLISTA = :PRCLISTA'
      'WHERE'
      '  IDSUCURSAL = :OLD_IDSUCURSAL')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDSUCURSAL,'
      '  NOMBRESUC,'
      '  DIRECCIONSUC,'
      '  LOCALIDADSUC,'
      '  PROVINCIASUC,'
      '  COPOSTALSUC,'
      '  TELEFONOSUC,'
      '  DIRECTORIO,'
      '  ACTUALIZACIONES,'
      '  REMOTA,'
      '  DETSUC,'
      '  FECHAINICIO,'
      '  FECHATINV,'
      '  NROREMITOT,'
      '  NROREMITOI,'
      '  NEMP,'
      '  NPTO,'
      '  TIPOFTP,'
      '  HOSTNAME,'
      '  USUARIO,'
      '  PASSWFTP,'
      '  DIRFTPENVIOS,'
      '  DIRFTPRECEP,'
      '  CONSUBDEP,'
      '  ULTIMA_ACT,'
      '  ULTIMA_ACT_ORG,'
      '  IDBANCOT,'
      '  IDBANCOB,'
      '  IDBANCOE,'
      '  IDBANCOP,'
      '  IDLISTA,'
      '  PRCLISTA'
      'FROM SUCURSALES '
      'WHERE'
      '  IDSUCURSAL = :IDSUCURSAL')
    SelectSQL.Strings = (
      'Select IDSUCURSAL, NOMBRESUC, DIRECCIONSUC, LOCALIDADSUC, '
      '          PROVINCIASUC, COPOSTALSUC, TELEFONOSUC, DIRECTORIO, '
      '          ACTUALIZACIONES, REMOTA, DETSUC, FECHAINICIO, '
      '          FECHATINV, NROREMITOT, NROREMITOI, NEMP, NPTO, '
      '         TIPOFTP, HOSTNAME, USUARIO, PASSWFTP, DIRFTPENVIOS, '
      '          DIRFTPRECEP, CONSUBDEP, ULTIMA_ACT, '
      '          ULTIMA_ACT_ORG, IDBANCOT, IDBANCOB, IDBANCOE, '
      
        '          IDBANCOP, IDLISTA, PRCLISTA, EMPRESA, DOCEMPRE, ACTIVA' +
        ' '
      'From SUCURSALES')
    Left = 561
    Top = 209
    object qSucursalesIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"SUCURSALES"."IDSUCURSAL"'
      Required = True
    end
    object qSucursalesNOMBRESUC: TMDOStringField
      FieldName = 'NOMBRESUC'
      Origin = '"SUCURSALES"."NOMBRESUC"'
    end
    object qSucursalesDIRECCIONSUC: TMDOStringField
      FieldName = 'DIRECCIONSUC'
      Origin = '"SUCURSALES"."DIRECCIONSUC"'
      Size = 30
    end
    object qSucursalesLOCALIDADSUC: TMDOStringField
      FieldName = 'LOCALIDADSUC'
      Origin = '"SUCURSALES"."LOCALIDADSUC"'
    end
    object qSucursalesPROVINCIASUC: TMDOStringField
      FieldName = 'PROVINCIASUC'
      Origin = '"SUCURSALES"."PROVINCIASUC"'
    end
    object qSucursalesCOPOSTALSUC: TMDOStringField
      FieldName = 'COPOSTALSUC'
      Origin = '"SUCURSALES"."COPOSTALSUC"'
      Size = 10
    end
    object qSucursalesTELEFONOSUC: TMDOStringField
      FieldName = 'TELEFONOSUC'
      Origin = '"SUCURSALES"."TELEFONOSUC"'
    end
    object qSucursalesDIRECTORIO: TMDOStringField
      FieldName = 'DIRECTORIO'
      Origin = '"SUCURSALES"."DIRECTORIO"'
      Size = 100
    end
    object qSucursalesACTUALIZACIONES: TMDOStringField
      FieldName = 'ACTUALIZACIONES'
      Origin = '"SUCURSALES"."ACTUALIZACIONES"'
      Size = 100
    end
    object qSucursalesREMOTA: TSmallintField
      FieldName = 'REMOTA'
      Origin = '"SUCURSALES"."REMOTA"'
    end
    object qSucursalesDETSUC: TMDOStringField
      FieldName = 'DETSUC'
      Origin = '"SUCURSALES"."DETSUC"'
      Size = 2
    end
    object qSucursalesFECHAINICIO: TDateField
      FieldName = 'FECHAINICIO'
      Origin = '"SUCURSALES"."FECHAINICIO"'
    end
    object qSucursalesFECHATINV: TDateField
      FieldName = 'FECHATINV'
      Origin = '"SUCURSALES"."FECHATINV"'
    end
    object qSucursalesNROREMITOT: TMDOStringField
      FieldName = 'NROREMITOT'
      Origin = '"SUCURSALES"."NROREMITOT"'
      Size = 13
    end
    object qSucursalesNROREMITOI: TMDOStringField
      FieldName = 'NROREMITOI'
      Origin = '"SUCURSALES"."NROREMITOI"'
      Size = 13
    end
    object qSucursalesNEMP: TIntegerField
      FieldName = 'NEMP'
      Origin = '"SUCURSALES"."NEMP"'
    end
    object qSucursalesNPTO: TIntegerField
      FieldName = 'NPTO'
      Origin = '"SUCURSALES"."NPTO"'
    end
    object qSucursalesTIPOFTP: TSmallintField
      FieldName = 'TIPOFTP'
      Origin = '"SUCURSALES"."TIPOFTP"'
    end
    object qSucursalesHOSTNAME: TMDOStringField
      FieldName = 'HOSTNAME'
      Origin = '"SUCURSALES"."HOSTNAME"'
      Size = 80
    end
    object qSucursalesUSUARIO: TMDOStringField
      FieldName = 'USUARIO'
      Origin = '"SUCURSALES"."USUARIO"'
      Size = 50
    end
    object qSucursalesPASSWFTP: TMDOStringField
      FieldName = 'PASSWFTP'
      Origin = '"SUCURSALES"."PASSWFTP"'
      Size = 50
    end
    object qSucursalesDIRFTPENVIOS: TMDOStringField
      FieldName = 'DIRFTPENVIOS'
      Origin = '"SUCURSALES"."DIRFTPENVIOS"'
      Size = 100
    end
    object qSucursalesDIRFTPRECEP: TMDOStringField
      FieldName = 'DIRFTPRECEP'
      Origin = '"SUCURSALES"."DIRFTPRECEP"'
      Size = 100
    end
    object qSucursalesCONSUBDEP: TSmallintField
      FieldName = 'CONSUBDEP'
      Origin = '"SUCURSALES"."CONSUBDEP"'
    end
    object qSucursalesULTIMA_ACT: TDateField
      FieldName = 'ULTIMA_ACT'
      Origin = '"SUCURSALES"."ULTIMA_ACT"'
    end
    object qSucursalesULTIMA_ACT_ORG: TDateField
      FieldName = 'ULTIMA_ACT_ORG'
      Origin = '"SUCURSALES"."ULTIMA_ACT_ORG"'
    end
    object qSucursalesIDBANCOT: TIntegerField
      FieldName = 'IDBANCOT'
      Origin = '"SUCURSALES"."IDBANCOT"'
    end
    object qSucursalesIDBANCOB: TIntegerField
      FieldName = 'IDBANCOB'
      Origin = '"SUCURSALES"."IDBANCOB"'
    end
    object qSucursalesIDBANCOE: TIntegerField
      FieldName = 'IDBANCOE'
      Origin = '"SUCURSALES"."IDBANCOE"'
    end
    object qSucursalesIDBANCOP: TIntegerField
      FieldName = 'IDBANCOP'
      Origin = '"SUCURSALES"."IDBANCOP"'
    end
    object qSucursalesIDLISTA: TIntegerField
      FieldName = 'IDLISTA'
      Origin = '"SUCURSALES"."IDLISTA"'
    end
    object qSucursalesPRCLISTA: TMDOBCDField
      FieldName = 'PRCLISTA'
      Origin = '"SUCURSALES"."PRCLISTA"'
      Precision = 18
      Size = 4
    end
    object qSucursalesEMPRESA: TMDOStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qSucursalesDOCEMPRE: TMDOStringField
      FieldName = 'DOCEMPRE'
    end
    object qSucursalesACTIVA: TSmallintField
      FieldName = 'ACTIVA'
    end
  end
  object qArtModPrc: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM ARTMODPRC'
      'WHERE'
      '  IDREMMOD = :OLD_IDREMMOD')
    InsertSQL.Strings = (
      'INSERT INTO ARTMODPRC'
      
        '  (IDREMMOD, IDARTICULO, TIPOCOMP, NROREMITO, FECHAR, DIAHORA, U' +
        'SUARIO, '
      
        '   COSTOOLD, COSTONEW, PRECIOOLD, PRECIONEW, DETALLE, CANTCTAS, ' +
        'IDSUCURSAL, '
      '   FECHAALTA, FECHAFIN, VALORCTAS)'
      'VALUES'
      
        '  (:IDREMMOD, :IDARTICULO, :TIPOCOMP, :NROREMITO, :FECHAR, :DIAH' +
        'ORA, :USUARIO, '
      
        '   :COSTOOLD, :COSTONEW, :PRECIOOLD, :PRECIONEW, :DETALLE, :CANT' +
        'CTAS, :IDSUCURSAL, '
      '   :FECHAALTA, :FECHAFIN, :VALORCTAS)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE ARTMODPRC'
      'SET'
      '  IDREMMOD = :IDREMMOD,'
      '  IDARTICULO = :IDARTICULO,'
      '  TIPOCOMP = :TIPOCOMP,'
      '  NROREMITO = :NROREMITO,'
      '  FECHAR = :FECHAR,'
      '  DIAHORA = :DIAHORA,'
      '  USUARIO = :USUARIO,'
      '  COSTOOLD = :COSTOOLD,'
      '  COSTONEW = :COSTONEW,'
      '  PRECIOOLD = :PRECIOOLD,'
      '  PRECIONEW = :PRECIONEW,'
      '  DETALLE = :DETALLE,'
      '  CANTCTAS = :CANTCTAS,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  FECHAALTA = :FECHAALTA,'
      '  FECHAFIN = :FECHAFIN,'
      '  VALORCTAS = :VALORCTAS'
      'WHERE'
      '  IDREMMOD = :OLD_IDREMMOD')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDREMMOD,'
      '  IDARTICULO,'
      '  TIPOCOMP,'
      '  NROREMITO,'
      '  FECHAR,'
      '  DIAHORA,'
      '  USUARIO,'
      '  COSTOOLD,'
      '  COSTONEW,'
      '  PRECIOOLD,'
      '  PRECIONEW,'
      '  DETALLE,'
      '  CANTCTAS,'
      '  IDSUCURSAL,'
      '  FECHAALTA,'
      '  FECHAFIN,'
      '  VALORCTAS'
      'FROM ARTMODPRC '
      'WHERE'
      '  IDREMMOD = :IDREMMOD')
    SelectSQL.Strings = (
      'select IDREMMOD, IDARTICULO, TIPOCOMP, NROREMITO, FECHAR, '
      '          DIAHORA, USUARIO, COSTOOLD, COSTONEW, PRECIOOLD, '
      '          PRECIONEW, DETALLE, CANTCTAS, IDSUCURSAL, '
      '          FECHAALTA, FECHAFIN, VALORCTAS '
      'from ARTMODPRC')
    Left = 563
    Top = 258
    object qArtModPrcIDREMMOD: TIntegerField
      FieldName = 'IDREMMOD'
      Required = True
    end
    object qArtModPrcIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object qArtModPrcTIPOCOMP: TSmallintField
      FieldName = 'TIPOCOMP'
    end
    object qArtModPrcNROREMITO: TMDOStringField
      FieldName = 'NROREMITO'
      Size = 13
    end
    object qArtModPrcFECHAR: TDateField
      FieldName = 'FECHAR'
    end
    object qArtModPrcDIAHORA: TDateTimeField
      FieldName = 'DIAHORA'
    end
    object qArtModPrcUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object qArtModPrcCOSTOOLD: TMDOBCDField
      FieldName = 'COSTOOLD'
      Precision = 18
      Size = 4
    end
    object qArtModPrcCOSTONEW: TMDOBCDField
      FieldName = 'COSTONEW'
      Precision = 18
      Size = 4
    end
    object qArtModPrcPRECIOOLD: TMDOBCDField
      FieldName = 'PRECIOOLD'
      Precision = 18
      Size = 4
    end
    object qArtModPrcPRECIONEW: TMDOBCDField
      FieldName = 'PRECIONEW'
      Precision = 18
      Size = 4
    end
    object qArtModPrcDETALLE: TMDOStringField
      FieldName = 'DETALLE'
      Size = 60
    end
    object qArtModPrcCANTCTAS: TSmallintField
      FieldName = 'CANTCTAS'
    end
    object qArtModPrcIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
    end
    object qArtModPrcFECHAALTA: TDateField
      FieldName = 'FECHAALTA'
    end
    object qArtModPrcFECHAFIN: TDateField
      FieldName = 'FECHAFIN'
    end
    object qArtModPrcVALORCTAS: TMDOBCDField
      FieldName = 'VALORCTAS'
      Precision = 18
      Size = 4
    end
  end
  object qArtOfertas: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM ARTOFERTAS'
      'WHERE'
      '  IDARTICULO = :OLD_IDARTICULO AND'
      '  CANTCTAS = :OLD_CANTCTAS AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL')
    InsertSQL.Strings = (
      'INSERT INTO ARTOFERTAS'
      
        '  (IDARTICULO, CANTCTAS, IDSUCURSAL, FECHAALTA, FECHAFIN, PNETO,' +
        ' PRECIO, '
      '   GANANCIAO, VALORCTAS, CANTAUT, CANTVEN)'
      'VALUES'
      
        '  (:IDARTICULO, :CANTCTAS, :IDSUCURSAL, :FECHAALTA, :FECHAFIN, :' +
        'PNETO, '
      '   :PRECIO, :GANANCIAO, :VALORCTAS, :CANTAUT, :CANTVEN)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE ARTOFERTAS'
      'SET'
      '  IDARTICULO = :IDARTICULO,'
      '  CANTCTAS = :CANTCTAS,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  FECHAALTA = :FECHAALTA,'
      '  FECHAFIN = :FECHAFIN,'
      '  PNETO = :PNETO,'
      '  PRECIO = :PRECIO,'
      '  GANANCIAO = :GANANCIAO,'
      '  VALORCTAS = :VALORCTAS,'
      '  CANTAUT = :CANTAUT,'
      '  CANTVEN = :CANTVEN'
      'WHERE'
      '  IDARTICULO = :OLD_IDARTICULO AND'
      '  CANTCTAS = :OLD_CANTCTAS AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDARTICULO,'
      '  CANTCTAS,'
      '  IDSUCURSAL,'
      '  FECHAALTA,'
      '  FECHAFIN,'
      '  PNETO,'
      '  PRECIO,'
      '  GANANCIAO,'
      '  VALORCTAS,'
      '  CANTAUT,'
      '  CANTVEN'
      'FROM ARTOFERTAS '
      'WHERE'
      '  IDARTICULO = :IDARTICULO AND'
      '  CANTCTAS = :CANTCTAS AND'
      '  IDSUCURSAL = :IDSUCURSAL')
    SelectSQL.Strings = (
      'Select IDARTICULO, CANTCTAS, IDSUCURSAL, FECHAALTA, '
      
        '           FECHAFIN, PNETO, PRECIO, GANANCIAO, VALORCTAS,       ' +
        '     CANTAUT, CANTVEN '
      'From ARTOFERTAS')
    Left = 406
    Top = 110
    object qArtOfertasIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
      Origin = '"ARTOFERTAS"."IDARTICULO"'
      Required = True
    end
    object qArtOfertasCANTCTAS: TIntegerField
      FieldName = 'CANTCTAS'
      Origin = '"ARTOFERTAS"."CANTCTAS"'
      Required = True
    end
    object qArtOfertasIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"ARTOFERTAS"."IDSUCURSAL"'
      Required = True
    end
    object qArtOfertasFECHAALTA: TDateField
      FieldName = 'FECHAALTA'
      Origin = '"ARTOFERTAS"."FECHAALTA"'
    end
    object qArtOfertasFECHAFIN: TDateField
      FieldName = 'FECHAFIN'
      Origin = '"ARTOFERTAS"."FECHAFIN"'
    end
    object qArtOfertasPNETO: TMDOBCDField
      FieldName = 'PNETO'
      Origin = '"ARTOFERTAS"."PNETO"'
      Precision = 18
      Size = 4
    end
    object qArtOfertasPRECIO: TMDOBCDField
      FieldName = 'PRECIO'
      Origin = '"ARTOFERTAS"."PRECIO"'
      Precision = 18
      Size = 4
    end
    object qArtOfertasGANANCIAO: TMDOBCDField
      FieldName = 'GANANCIAO'
      Origin = '"ARTOFERTAS"."GANANCIAO"'
      Precision = 18
      Size = 4
    end
    object qArtOfertasVALORCTAS: TMDOBCDField
      FieldName = 'VALORCTAS'
      Origin = '"ARTOFERTAS"."VALORCTAS"'
      Precision = 18
      Size = 4
    end
    object qArtOfertasCANTAUT: TIntegerField
      FieldName = 'CANTAUT'
      Origin = '"ARTOFERTAS"."CANTAUT"'
    end
    object qArtOfertasCANTVEN: TIntegerField
      FieldName = 'CANTVEN'
      Origin = '"ARTOFERTAS"."CANTVEN"'
    end
  end
  object qStocks: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM STOCKART'
      'WHERE'
      '  IDARTICULO = :OLD_IDARTICULO AND'
      '  IDSTOCK = :OLD_IDSTOCK')
    InsertSQL.Strings = (
      'INSERT INTO STOCKART'
      
        '  (IDARTICULO, IDSTOCK, ACTUAL, INGRESOS, EGRESOS, FECHACONTROL,' +
        ' STKAINV, '
      '   FECHAINV, DIFINV)'
      'VALUES'
      
        '  (:IDARTICULO, :IDSTOCK, :ACTUAL, :INGRESOS, :EGRESOS, :FECHACO' +
        'NTROL, '
      '   :STKAINV, :FECHAINV, :DIFINV)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE STOCKART'
      'SET'
      '  IDARTICULO = :IDARTICULO,'
      '  IDSTOCK = :IDSTOCK,'
      '  ACTUAL = :ACTUAL,'
      '  INGRESOS = :INGRESOS,'
      '  EGRESOS = :EGRESOS,'
      '  FECHACONTROL = :FECHACONTROL,'
      '  STKAINV = :STKAINV,'
      '  FECHAINV = :FECHAINV,'
      '  DIFINV = :DIFINV'
      'WHERE'
      '  IDARTICULO = :OLD_IDARTICULO AND'
      '  IDSTOCK = :OLD_IDSTOCK')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDARTICULO,'
      '  IDSTOCK,'
      '  ACTUAL,'
      '  INGRESOS,'
      '  EGRESOS,'
      '  FECHACONTROL,'
      '  STKAINV,'
      '  FECHAINV,'
      '  DIFINV'
      'FROM STOCKART '
      'WHERE'
      '  IDARTICULO = :IDARTICULO AND'
      '  IDSTOCK = :IDSTOCK')
    SelectSQL.Strings = (
      'Select IDARTICULO, IDSTOCK, ACTUAL, INGRESOS, EGRESOS, '
      '          FECHACONTROL, STKAINV, FECHAINV, DIFINV '
      'From STOCKART')
    Left = 405
    Top = 56
    object qStocksIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
      Required = True
    end
    object qStocksIDSTOCK: TIntegerField
      FieldName = 'IDSTOCK'
      Required = True
    end
    object qStocksACTUAL: TMDOBCDField
      FieldName = 'ACTUAL'
      Precision = 18
      Size = 4
    end
    object qStocksINGRESOS: TMDOBCDField
      FieldName = 'INGRESOS'
      Precision = 18
      Size = 4
    end
    object qStocksEGRESOS: TMDOBCDField
      FieldName = 'EGRESOS'
      Precision = 18
      Size = 4
    end
    object qStocksFECHACONTROL: TDateField
      FieldName = 'FECHACONTROL'
    end
    object qStocksSTKAINV: TMDOBCDField
      FieldName = 'STKAINV'
      Precision = 18
      Size = 4
    end
    object qStocksFECHAINV: TDateField
      FieldName = 'FECHAINV'
    end
    object qStocksDIFINV: TMDOBCDField
      FieldName = 'DIFINV'
      Precision = 18
      Size = 4
    end
  end
  object qConcBanc: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = trSaveComp
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM BANCOS_CONC'
      'WHERE'
      '  IDCONCILIACION = :OLD_IDCONCILIACION AND'
      '  IDBANCO = :OLD_IDBANCO AND'
      '  FECHA_CONC = :OLD_FECHA_CONC')
    InsertSQL.Strings = (
      'INSERT INTO BANCOS_CONC'
      
        '  (DIF_CONC, IDCONCILIACION, IDBANCO, OBSERVACION, FECHA_CONC, C' +
        'ANT_MOV, '
      '   SSBANCO)'
      'VALUES'
      
        '  (:DIF_CONC, :IDCONCILIACION, :IDBANCO, :OBSERVACION, :FECHA_CO' +
        'NC, :CANT_MOV, '
      '   :SSBANCO)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE BANCOS_CONC'
      'SET'
      '  DIF_CONC = :DIF_CONC,'
      '  IDCONCILIACION = :IDCONCILIACION,'
      '  IDBANCO = :IDBANCO,'
      '  OBSERVACION = :OBSERVACION,'
      '  FECHA_CONC = :FECHA_CONC,'
      '  CANT_MOV = :CANT_MOV,'
      '  SSBANCO = :SSBANCO'
      'WHERE'
      '  IDCONCILIACION = :OLD_IDCONCILIACION AND'
      '  IDBANCO = :OLD_IDBANCO AND'
      '  FECHA_CONC = :OLD_FECHA_CONC')
    RefreshSQL.Strings = (
      'SELECT '
      '  DIF_CONC,'
      '  IDCONCILIACION,'
      '  IDBANCO,'
      '  OBSERVACION,'
      '  FECHA_CONC,'
      '  CANT_MOV,'
      '  SSBANCO'
      'FROM BANCOS_CONC '
      'WHERE'
      '  IDCONCILIACION = :IDCONCILIACION AND'
      '  IDBANCO = :IDBANCO AND'
      '  FECHA_CONC = :FECHA_CONC')
    SelectSQL.Strings = (
      'Select C.DIF_CONC, C.IDCONCILIACION, C.IDBANCO,'
      '           C.OBSERVACION, C.FECHA_CONC, C.CANT_MOV, '
      '           C.SSBANCO, B.NROCTA, B.BANCO'
      'From BANCOS_CONC C'
      'Join BANCOS B'
      '  ON C.IDBANCO = B.IDBANCO')
    Left = 25
    Top = 213
    object qConcBancDIF_CONC: TMDOBCDField
      FieldName = 'DIF_CONC'
      Origin = '"BANCOS_CONC"."DIF_CONC"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qConcBancIDCONCILIACION: TIntegerField
      FieldName = 'IDCONCILIACION'
      Origin = '"BANCOS_CONC"."IDCONCILIACION"'
      Required = True
    end
    object qConcBancIDBANCO: TIntegerField
      FieldName = 'IDBANCO'
      Origin = '"BANCOS_CONC"."IDBANCO"'
      Required = True
    end
    object qConcBancOBSERVACION: TMDOStringField
      FieldName = 'OBSERVACION'
      Origin = '"BANCOS_CONC"."OBSERVACION"'
      Size = 100
    end
    object qConcBancFECHA_CONC: TDateField
      FieldName = 'FECHA_CONC'
      Origin = '"BANCOS_CONC"."FECHA_CONC"'
      Required = True
    end
    object qConcBancCANT_MOV: TIntegerField
      FieldName = 'CANT_MOV'
      Origin = '"BANCOS_CONC"."CANT_MOV"'
    end
    object qConcBancSSBANCO: TMDOBCDField
      FieldName = 'SSBANCO'
      Origin = '"BANCOS_CONC"."SSBANCO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qConcBancNROCTA: TMDOStringField
      FieldName = 'NROCTA'
      Origin = '"BANCOS"."NROCTA"'
      Size = 30
    end
    object qConcBancBANCO: TMDOStringField
      FieldName = 'BANCO'
      Origin = '"BANCOS"."BANCO"'
      Size = 30
    end
  end
  object Senas_Cobradas: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IdFactura'
        DataType = ftInteger
      end
      item
        Name = 'IdSucursal'
        DataType = ftInteger
      end
      item
        Name = 'IdPuntoVenta'
        DataType = ftInteger
      end
      item
        Name = 'IdCliente'
        DataType = ftInteger
      end
      item
        Name = 'Total'
        DataType = ftBCD
        Precision = 32
        Size = 8
      end
      item
        Name = 'TipoFac'
        DataType = ftSmallint
      end
      item
        Name = 'NroSena'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'FecSena'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 483
    Top = 209
    object Senas_CobradasIdFactura: TIntegerField
      FieldName = 'IdFactura'
    end
    object Senas_CobradasIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
    end
    object Senas_CobradasIdPuntoVenta: TIntegerField
      FieldName = 'IdPuntoVenta'
    end
    object Senas_CobradasIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object Senas_CobradasTotal: TMDOBCDField
      FieldName = 'Total'
      currency = True
    end
    object Senas_CobradasTipoFac: TSmallintField
      FieldName = 'TipoFac'
    end
    object Senas_CobradasNroSena: TStringField
      FieldName = 'NroSena'
      Size = 13
    end
    object Senas_CobradasFecSena: TDateField
      FieldName = 'FecSena'
    end
  end
  object qArtPreEsp: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM ARTPREESP'
      'WHERE'
      '  IDARTICULO = :OLD_IDARTICULO AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL')
    InsertSQL.Strings = (
      'INSERT INTO ARTPREESP'
      '  (IDARTICULO, IDSUCURSAL, PRECIOESP, DURACION, FECHAALTA)'
      'VALUES'
      '  (:IDARTICULO, :IDSUCURSAL, :PRECIOESP, :DURACION, :FECHAALTA)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE ARTPREESP'
      'SET'
      '  IDARTICULO = :IDARTICULO,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  PRECIOESP = :PRECIOESP,'
      '  DURACION = :DURACION,'
      '  FECHAALTA = :FECHAALTA'
      'WHERE'
      '  IDARTICULO = :OLD_IDARTICULO AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDARTICULO,'
      '  IDSUCURSAL,'
      '  PRECIOESP,'
      '  DURACION,'
      '  FECHAALTA'
      'FROM ARTPREESP '
      'WHERE'
      '  IDARTICULO = :IDARTICULO AND'
      '  IDSUCURSAL = :IDSUCURSAL')
    SelectSQL.Strings = (
      'select IDARTICULO, IDSUCURSAL, PRECIOESP, '
      '           DURACION, FECHAALTA'
      'from ARTPREESP')
    Left = 563
    Top = 311
    object qArtPreEspIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
      Required = True
    end
    object qArtPreEspIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Required = True
    end
    object qArtPreEspPRECIOESP: TMDOBCDField
      FieldName = 'PRECIOESP'
      currency = True
      Precision = 18
      Size = 4
    end
    object qArtPreEspDURACION: TDateField
      FieldName = 'DURACION'
    end
    object qArtPreEspFECHAALTA: TDateField
      FieldName = 'FECHAALTA'
    end
  end
  object qBancoProp: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM BANCOPROP'
      'WHERE'
      '  IDMOV = :OLD_IDMOV')
    InsertSQL.Strings = (
      'INSERT INTO BANCOPROP'
      
        '  (IDMOV, IDBANCO, IDORDPAGO, TIPOMOV, FECHAEMISION, FECHAVENCIM' +
        'IENTO, '
      
        '   FECHARESUMEN, IDENTIDAD, DETALLEMOV, MONTO, DEBE, HABER, USUA' +
        'RIO, IDFACTURA, '
      '   IDSUCURSAL, ESTADO, NROCHEQUE, IDNROCONCILIACION, IDEMPRESA)'
      'VALUES'
      
        '  (:IDMOV, :IDBANCO, :IDORDPAGO, :TIPOMOV, :FECHAEMISION, :FECHA' +
        'VENCIMIENTO, '
      
        '   :FECHARESUMEN, :IDENTIDAD, :DETALLEMOV, :MONTO, :DEBE, :HABER' +
        ', :USUARIO, '
      
        '   :IDFACTURA, :IDSUCURSAL, :ESTADO, :NROCHEQUE, :IDNROCONCILIAC' +
        'ION, :IDEMPRESA)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE BANCOPROP'
      'SET'
      '  IDMOV = :IDMOV,'
      '  IDBANCO = :IDBANCO,'
      '  IDORDPAGO = :IDORDPAGO,'
      '  TIPOMOV = :TIPOMOV,'
      '  FECHAEMISION = :FECHAEMISION,'
      '  FECHAVENCIMIENTO = :FECHAVENCIMIENTO,'
      '  FECHARESUMEN = :FECHARESUMEN,'
      '  IDENTIDAD = :IDENTIDAD,'
      '  DETALLEMOV = :DETALLEMOV,'
      '  MONTO = :MONTO,'
      '  DEBE = :DEBE,'
      '  HABER = :HABER,'
      '  USUARIO = :USUARIO,'
      '  IDFACTURA = :IDFACTURA,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  ESTADO = :ESTADO,'
      '  NROCHEQUE = :NROCHEQUE,'
      '  IDNROCONCILIACION = :IDNROCONCILIACION,'
      '  IDEMPRESA = :IDEMPRESA'
      'WHERE'
      '  IDMOV = :OLD_IDMOV')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDMOV,'
      '  IDBANCO,'
      '  IDORDPAGO,'
      '  TIPOMOV,'
      '  FECHAEMISION,'
      '  FECHAVENCIMIENTO,'
      '  FECHARESUMEN,'
      '  IDENTIDAD,'
      '  DETALLEMOV,'
      '  MONTO,'
      '  DEBE,'
      '  HABER,'
      '  USUARIO,'
      '  IDFACTURA,'
      '  IDSUCURSAL,'
      '  ESTADO,'
      '  NROCHEQUE,'
      '  IDNROCONCILIACION,'
      '  IDEMPRESA'
      'FROM BANCOPROP '
      'WHERE'
      '  IDMOV = :IDMOV')
    SelectSQL.Strings = (
      'select IDMOV, IDBANCO, IDORDPAGO, TIPOMOV, FECHAEMISION, '
      '          FECHAVENCIMIENTO, FECHARESUMEN, IDENTIDAD, '
      '          DETALLEMOV, MONTO, DEBE, HABER, USUARIO, IDFACTURA, '
      '          IDSUCURSAL, ESTADO, NROCHEQUE, IDNROCONCILIACION, '
      '          IDEMPRESA '
      'from BANCOPROP')
    Left = 408
    Top = 314
    object qBancoPropIDMOV: TIntegerField
      FieldName = 'IDMOV'
      Required = True
    end
    object qBancoPropIDBANCO: TIntegerField
      FieldName = 'IDBANCO'
    end
    object qBancoPropIDORDPAGO: TIntegerField
      FieldName = 'IDORDPAGO'
    end
    object qBancoPropTIPOMOV: TSmallintField
      FieldName = 'TIPOMOV'
    end
    object qBancoPropFECHAEMISION: TDateField
      FieldName = 'FECHAEMISION'
      DisplayFormat = 'dd/mm/yy'
    end
    object qBancoPropFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
      DisplayFormat = 'dd/mm/yy'
    end
    object qBancoPropFECHARESUMEN: TDateField
      FieldName = 'FECHARESUMEN'
      DisplayFormat = 'dd/mm/yy'
    end
    object qBancoPropIDENTIDAD: TIntegerField
      FieldName = 'IDENTIDAD'
    end
    object qBancoPropDETALLEMOV: TMDOStringField
      FieldName = 'DETALLEMOV'
      Size = 30
    end
    object qBancoPropMONTO: TMDOBCDField
      FieldName = 'MONTO'
      currency = True
      Precision = 18
      Size = 4
    end
    object qBancoPropDEBE: TMDOBCDField
      FieldName = 'DEBE'
      currency = True
      Precision = 18
      Size = 4
    end
    object qBancoPropHABER: TMDOBCDField
      FieldName = 'HABER'
      currency = True
      Precision = 18
      Size = 4
    end
    object qBancoPropUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object qBancoPropIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
    end
    object qBancoPropIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
    end
    object qBancoPropESTADO: TSmallintField
      FieldName = 'ESTADO'
    end
    object qBancoPropNROCHEQUE: TIntegerField
      FieldName = 'NROCHEQUE'
    end
    object qBancoPropIDNROCONCILIACION: TIntegerField
      FieldName = 'IDNROCONCILIACION'
    end
    object qBancoPropIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
    end
  end
  object dbpBancos: TppDBPipeline
    DataSource = dmGestion.dsBancos
    UserName = 'dbpBancos'
    Left = 24
    Top = 366
  end
  object CompOP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 482
    Top = 158
    object CompOPIdFactura: TIntegerField
      FieldName = 'IdFactura'
    end
    object CompOPIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
    end
    object CompOPIdPuntoVenta: TIntegerField
      FieldName = 'IdPuntoVenta'
    end
    object CompOPIdEmpresa: TIntegerField
      FieldName = 'IdEmpresa'
    end
    object CompOPNroMovCC: TIntegerField
      FieldName = 'NroMovCC'
    end
    object CompOPTipoMov: TIntegerField
      FieldName = 'TipoMov'
    end
    object CompOPFechaOr: TDateField
      FieldName = 'FechaOr'
    end
    object CompOPFechaPg: TDateField
      FieldName = 'FechaPg'
    end
    object CompOPEntidad: TIntegerField
      FieldName = 'Entidad'
    end
    object CompOPNroComp: TStringField
      FieldName = 'NroComp'
      Size = 13
    end
    object CompOPMontoOrg: TCurrencyField
      FieldName = 'MontoOrg'
    end
    object CompOPImporte: TCurrencyField
      FieldName = 'Importe'
    end
    object CompOPSaldoMov: TCurrencyField
      FieldName = 'SaldoMov'
    end
    object CompOPSaldoNeto: TCurrencyField
      FieldName = 'SaldoNeto'
    end
    object CompOPSaldoImpInt: TCurrencyField
      FieldName = 'SaldoImpInt'
    end
  end
  object TransBySuc: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'iIdDestino'
        Fields = 'iIdDestino'
      end>
    Params = <>
    StoreDefs = True
    Left = 564
    Top = 366
    object TransBySucIdOrigen: TIntegerField
      FieldName = 'IdOrigen'
    end
    object TransBySucIdDestino: TIntegerField
      FieldName = 'IdDestino'
    end
    object TransBySucIdEmpleado: TIntegerField
      FieldName = 'IdEmpleado'
    end
    object TransBySucIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object TransBySucFechaF: TDateField
      FieldName = 'FechaF'
    end
    object TransBySucNroCompRef: TStringField
      FieldName = 'NroCompRef'
      Size = 13
    end
    object TransBySucIdFacOrg: TIntegerField
      FieldName = 'IdFacOrg'
    end
    object TransBySucIdSucOrg: TIntegerField
      FieldName = 'IdSucOrg'
    end
    object TransBySucIdArticulo: TIntegerField
      FieldName = 'IdArticulo'
    end
    object TransBySucCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
  end
end
