object frmTransInv: TfrmTransInv
  Left = 0
  Top = 0
  Caption = 'Tranformaci'#243'n  de tablas de inventarios'
  ClientHeight = 425
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gbTrfInv: TRzGroupBox
    Left = 0
    Top = 0
    Width = 487
    Height = 71
    Align = alTop
    Alignment = taCenter
    Caption = 'Inventarios'
    Color = 15659506
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GroupStyle = gsBanner
    ParentFont = False
    TabOrder = 0
    object lblSucursalTI: TLabel
      Left = 43
      Top = 22
      Width = 51
      Height = 13
      Caption = '&Sucursal:'
      FocusControl = cbSucursales
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblPeriodoTI: TLabel
      Left = 212
      Top = 22
      Width = 38
      Height = 13
      Caption = '&Desde:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btnTrfInf: TRzBitBtn
      Left = 320
      Top = 28
      Width = 107
      Height = 31
      FrameColor = 7617536
      Caption = 'Transformar inventario'
      Color = 15791348
      HotTrack = True
      TabOrder = 0
      OnClick = btnTrfInfClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000420B0000420B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        0000E8E8E8E8E8E8E8E8E8E8E8E8E8E8DFDFE8E8E8E8E8E8E8E8E8E8E8E8E8DF
        0000DFE8E8E8E8E8E8E8E8E8E8E8E8DFDFDFDFE8E8E8E8E8E8E8E8E8E8E8DFD7
        0000DFE8E8E8E8E8E8E8E8E8E8E8DFD7DFDFDFE8E8E8E8E8E8E8E8E8E800D7D7
        00D7D7E8E8E8E8E8E8E8E8E8E8DFD7D7DFD7D7E8E8E8E8E8E8E8E8E80000D700
        00D7DFDFE8E8E8E8E8E8E8E8DFDFD7DFDFD7DFDFE8E8E8E8E8E8E8DF00000000
        00DF0000E8E8E8E8E87AE8DFDFDFDFDFDFDFDFDFE8E8E8E8E881DFD7D700D700
        00DE000000E8E8E87AA3DFD7D7DFD7DFDFDEDFDFDFE8E8E881ACDFD70000D7DF
        DED7DF00D7DFE87AA3CEDFD7DFDFD7DFDED7DFDFD7DFE881ACD7DF000000DF00
        00D700D7D7D77AA3CEE8DFDFDFDFDFDFDFD7DFD7D7D781ACD7E8E80000DF0000
        00000000D77AA3CEE8E8E8DFDFDFDFDFDFDFDFDFD781ACD7E8E8E800DEDE0000
        D70000007AA3CEE8E8E8E8DFDEDEDFDFD7DFDFDF81ACD7E8E8E8E8DFDED700D7
        D7D7007AA3CEE8E8E8E8E8DFDED7DFD7D7D7DF81ACD7E8E8E8E8E8E8DFDF0000
        D7D77AA3CEE8E8E8E8E8E8E8DFDFDFDFD7D781ACD7E8E8E8E8E8E8E8E8000000
        007AA3CEE8E8E8E8E8E8E8E8E8DFDFDFDF81ACD7E8E8E8E8E8E8E8E8E8E80000
        7AA3CEE8E8E8E8E8E8E8E8E8E8E8DFDF81ACD7E8E8E8E8E8E8E8E8E8E8E8E87A
        A3CEE8E8E8E8E8E8E8E8E8E8E8E8E881ACD7E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object cbSucursales: TRzComboBox
      Left = 44
      Top = 37
      Width = 160
      Height = 22
      Color = clWhite
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FlatButtons = True
      FrameHotTrack = True
      FrameVisible = True
      ItemHeight = 14
      ParentCtl3D = False
      ParentFont = False
      TabOnEnter = True
      TabOrder = 1
      OnChange = cbSucursalesChange
    end
    object spPeriodo: TRzSpinner
      Left = 212
      Top = 37
      Width = 87
      Height = 22
      ButtonColor = clGradientActiveCaption
      Max = 2010
      Min = 2004
      PageSize = 1
      TabOnEnter = True
      Value = 2004
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
  end
  object gbEstado: TRzGroupBox
    Left = 0
    Top = 71
    Width = 487
    Height = 325
    Align = alClient
    Alignment = taCenter
    Caption = 'Estado del proceso'
    Color = 15659506
    GroupStyle = gsBanner
    TabOrder = 1
    object mmEstadoTI: TRzMemo
      Left = 0
      Top = 21
      Width = 487
      Height = 304
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      FrameHotTrack = True
      FrameVisible = True
      TabOnEnter = True
    end
  end
  object pnlSalirTI: TRzPanel
    Left = 0
    Top = 396
    Width = 487
    Height = 29
    Align = alBottom
    BorderOuter = fsFlatRounded
    TabOrder = 2
    VisualStyle = vsGradient
    object btnSalir: TRzBitBtn
      Left = 392
      Top = 3
      Width = 81
      FrameColor = 7617536
      Caption = '&Salir'
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 0
      OnClick = btnSalirClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730B0000730B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        EEE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8EEE8E8E8E8E8E8E8E8E8E8E8E8EEE3AC
        E3EEE8E8E8E8E8E8E8E8E8E8E8EEE8ACE3EEE8E8E8E8E8E8E8E8E8EEE3E28257
        57E2ACE3EEE8E8E8E8E8E8EEE8E2818181E2ACE8EEE8E8E8E8E8E382578282D7
        578181E2E3E8E8E8E8E8E881818181D7818181E2E8E8E8E8E8E857828989ADD7
        57797979EEE8E8E8E8E88181DEDEACD781818181EEE8E8E8E8E857898989ADD7
        57AAAAA2D7ADE8E8E8E881DEDEDEACD781DEDE81D7ACE8E8E8E857898989ADD7
        57AACEA3AD10E8E8E8E881DEDEDEACD781DEAC81AC81E8E8E8E85789825EADD7
        57ABCFE21110E8E8E8E881DE8181ACD781ACACE28181E8E8E8E8578957D7ADD7
        57ABDE101010101010E881DE56D7ACD781ACDE818181818181E857898257ADD7
        57E810101010101010E881DE8156ACD781E381818181818181E857898989ADD7
        57E882101010101010E881DEDEDEACD781E381818181818181E857898989ADD7
        57ACEE821110E8E8E8E881DEDEDEACD781ACEE818181E8E8E8E857898989ADD7
        57ABE8AB8910E8E8E8E881DEDEDEACD781ACE3ACDE81E8E8E8E857828989ADD7
        57ACE8A3E889E8E8E8E88181DEDEACD781ACE381E8DEE8E8E8E8E8DE5E8288D7
        57A2A2A2E8E8E8E8E8E8E8DE8181DED781818181E8E8E8E8E8E8E8E8E8AC8257
        57E8E8E8E8E8E8E8E8E8E8E8E8AC818181E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
  end
  object qInven: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select I.IdFactura, I.IdSucursal, I.FechaI, I.NroFact, '
      '           I.DiaHora, I.IdStock, I.Empleado, I.Periodo, '
      '           I.Total, I.CantArt, I.TNeto, I.TNoComp, '
      '           I.TCosto, I.TFac'
      'From Inventario I'
      'Join Sucursales S'
      '  on S.IdSucursal = I.IdStock'
      'Join Empleados E'
      '  on E.IdEmpleado = I.Empleado'
      'Where (I.Periodo =:Periodo) and'
      '           ( I.IdStock =:IdSucur)'
      'Order By I.NroFact')
    Left = 26
    Top = 281
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Periodo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'IdSucur'
        ParamType = ptUnknown
      end>
  end
  object dsqInven: TDataSource
    DataSet = qInven
    Left = 58
    Top = 312
  end
  object qItemsIv: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsqInven
    LoadDefaults = False
    SQL.Strings = (
      
        'Select I.IdFactura, I.IdSucursal, I.IdStock, I.IdItem, I.IdArtic' +
        'ulo,'
      
        '           I.Talle, I.FechaI, I.Periodo, I.Cantidad, I.IPrecio, ' +
        'I.ITotal,'
      
        '           I.INeto, I.INoComp, I.Costo, A.Marca, A.Detalle, A.Ti' +
        'eneTalle,'
      '           C.Color'
      'From ItemsIN I'
      'Join Articulos A'
      '  on A.IdArticulo = I.IdArticulo'
      'Left Outer Join Colores C'
      '   on C.IdColor = A.IdColor'
      'Where I.IdFactura =:IdFactura And '
      '            I.IdSucursal =:IdSucursal And '
      '            I.IdStock =:IdStock'
      '')
    Left = 25
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDFACTURA'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'IDSUCURSAL'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'IDSTOCK'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Inven: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Periodo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'IdSucur'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspqInvent'
    AfterOpen = InvenAfterOpen
    Left = 88
    Top = 280
    object InvenIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"INVENTARIO"."IDFACTURA"'
    end
    object InvenIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"INVENTARIO"."IDSUCURSAL"'
    end
    object InvenFECHAI: TDateField
      FieldName = 'FECHAI'
      Origin = '"INVENTARIO"."FECHAI"'
    end
    object InvenNROFACT: TStringField
      FieldName = 'NROFACT'
      Origin = '"INVENTARIO"."NROFACT"'
      Size = 13
    end
    object InvenDIAHORA: TDateTimeField
      FieldName = 'DIAHORA'
      Origin = '"INVENTARIO"."DIAHORA"'
    end
    object InvenIDSTOCK: TIntegerField
      FieldName = 'IDSTOCK'
      Origin = '"INVENTARIO"."IDSTOCK"'
    end
    object InvenEMPLEADO: TIntegerField
      FieldName = 'EMPLEADO'
      Origin = '"INVENTARIO"."EMPLEADO"'
    end
    object InvenPERIODO: TIntegerField
      FieldName = 'PERIODO'
      Origin = '"INVENTARIO"."PERIODO"'
    end
    object InvenTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = '"INVENTARIO"."TOTAL"'
      Precision = 18
    end
    object InvenCANTART: TSmallintField
      FieldName = 'CANTART'
      Origin = '"INVENTARIO"."CANTART"'
    end
    object InvenTNETO: TBCDField
      FieldName = 'TNETO'
      Origin = '"INVENTARIO"."TNETO"'
      Precision = 18
    end
    object InvenTNOCOMP: TBCDField
      FieldName = 'TNOCOMP'
      Origin = '"INVENTARIO"."TNOCOMP"'
      Precision = 18
    end
    object InvenTCOSTO: TBCDField
      FieldName = 'TCOSTO'
      Origin = '"INVENTARIO"."TCOSTO"'
      Precision = 18
    end
    object InvenTFAC: TIntegerField
      FieldName = 'TFAC'
      Origin = '"INVENTARIO"."TFAC"'
    end
    object InvenqItemsIv: TDataSetField
      FieldName = 'qItemsIv'
    end
  end
  object ItemsIv: TClientDataSet
    Aggregates = <>
    DataSetField = InvenqItemsIv
    Params = <>
    Left = 88
    Top = 311
    object ItemsIvIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
    end
    object ItemsIvIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
    end
    object ItemsIvIDSTOCK: TIntegerField
      FieldName = 'IDSTOCK'
    end
    object ItemsIvIDITEM: TSmallintField
      FieldName = 'IDITEM'
    end
    object ItemsIvIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object ItemsIvTALLE: TIntegerField
      FieldName = 'TALLE'
    end
    object ItemsIvFECHAI: TDateField
      FieldName = 'FECHAI'
    end
    object ItemsIvPERIODO: TIntegerField
      FieldName = 'PERIODO'
    end
    object ItemsIvCANTIDAD: TBCDField
      FieldName = 'CANTIDAD'
      Precision = 18
    end
    object ItemsIvIPRECIO: TBCDField
      FieldName = 'IPRECIO'
      Precision = 18
    end
    object ItemsIvITOTAL: TBCDField
      FieldName = 'ITOTAL'
      Precision = 18
    end
    object ItemsIvINETO: TBCDField
      FieldName = 'INETO'
      Precision = 18
    end
    object ItemsIvINOCOMP: TBCDField
      FieldName = 'INOCOMP'
      Precision = 18
    end
    object ItemsIvCOSTO: TBCDField
      FieldName = 'COSTO'
      Precision = 18
    end
    object ItemsIvMARCA: TStringField
      FieldName = 'MARCA'
    end
    object ItemsIvDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 60
    end
    object ItemsIvTIENETALLE: TSmallintField
      FieldName = 'TIENETALLE'
    end
    object ItemsIvCOLOR: TStringField
      FieldName = 'COLOR'
      Size = 30
    end
  end
  object dspqInvent: TDataSetProvider
    DataSet = qInven
    Options = [poIncFieldProps, poUseQuoteChar]
    Left = 58
    Top = 281
  end
end
