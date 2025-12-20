object frmIniCieInv: TfrmIniCieInv
  Left = 0
  Top = 0
  Caption = 'Inicializaci'#243'n - Cierre de Inventario anual'
  ClientHeight = 471
  ClientWidth = 477
  Color = 15791348
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF008888
    8888888888888888888888888888888888888888888888888888888888888800
    0000000000088000000000000088888000000000000888000000000000888888
    8888888880088888888888880088888888899988800888888888988800888888
    8898889880088888888898880088888888888898800888888888988800888888
    8888998880088888899999880088888888888898800888888988988800888888
    8898889880088888889898880088888888899988800888888898988800888888
    8888888880088888888888880088888888888888880888888888888880888888
    8888888888888888888888888888888888888888888888888888888888888888
    8888888888888888888888888888880000000000000880000000000000888880
    0000000000088800000000000088888888888888800888888888888800888888
    8889998880088888899999880088888888889888800888888898888800888888
    8888988880088888888988880088888888889888800888888888988800888888
    8888988880088888898889880088888888899888800888888988898800888888
    8888988880088888889998880088888888888888800888888888888800888888
    8888888888088888888888888088888888888888888888888888888888888888
    8888888888888888888888888888888888888888888888888888888888880000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbIniCieInv: TRzGroupBox
    Left = 0
    Top = 0
    Width = 477
    Height = 471
    Align = alClient
    Caption = 'Inicializar y Generar Inventario'
    Color = 15066597
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GroupStyle = gsBanner
    ParentFont = False
    TabOrder = 0
    TabStop = True
    Transparent = True
    object bvIniIvent: TBevel
      AlignWithMargins = True
      Left = 0
      Top = 24
      Width = 134
      Height = 315
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Shape = bsFrame
      ExplicitTop = 21
    end
    object lblFechaIni: TLabel
      Left = 10
      Top = 129
      Width = 70
      Height = 13
      Caption = '&Fecha Cierre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5439488
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblSucAIni: TLabel
      Left = 10
      Top = 34
      Width = 63
      Height = 26
      Caption = '&Sucursal a'#13'inventariar'
      FocusControl = cbSucursalAInicilizar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5439488
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblFecIni: TLabel
      Left = 10
      Top = 87
      Width = 64
      Height = 13
      Caption = '&Fecha Incio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5439488
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblPerInv: TLabel
      Left = 10
      Top = 172
      Width = 43
      Height = 13
      Caption = '&Periodo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5439488
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btnInicializarInventario: TRzBitBtn
      Left = 10
      Top = 218
      Width = 116
      Height = 48
      Caption = '1'#186' - Inicializar Inventario'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentColor = True
      ParentFont = False
      TabOrder = 4
      OnClick = btnInicializarInventarioClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000430B0000430B00000001000000000000000000003300
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8090909
        09090909090909E8E8E8E8E8E881818181818181818181E8E8E8E8E8E8091010
        10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8091010
        10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8091010
        10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8091010
        10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8091010
        10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8091010
        10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8091010
        10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8091010
        10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8090909
        09090909090909E8E8E8E8E8E881818181818181818181E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
      Spacing = 0
    end
    object cbSucursalAInicilizar: TRzComboBox
      Left = 10
      Top = 62
      Width = 113
      Height = 21
      AllowEdit = False
      AutoDropDown = True
      Color = 15066597
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FlatButtons = True
      FocusColor = 13231332
      FrameHotTrack = True
      FrameVisible = True
      ItemHeight = 13
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      TabOnEnter = True
      TabOrder = 0
      OnChange = cbSucursalAInicilizarChange
    end
    object btnGenerarInventario: TRzBitBtn
      Left = 10
      Top = 273
      Width = 116
      Height = 48
      Cursor = crHandPoint
      Hint = 'generar inventario'
      FrameColor = 7617536
      Caption = '2'#186' - Generar Remitos de Inventario'
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnGenerarInventarioClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000530B0000530B00000001000000000000000000003300
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        09090909E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8E8E8E8E85E09
        10101010095EE8E8E8E8E8E8E8E8AC81ACACACAC81ACE8E8E8E8E8E8E8E80910
        101010101009E8E8E8E8E8E8E8E881ACACACACACAC81E8E8E8E8E8E8E8091010
        10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8091010
        10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8091010
        10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8091010
        10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8E80910
        101010101009E8E8E8E8E8E8E8E881ACACACACACAC81E8E8E8E8E8E8E8E85E09
        10101010095EE8E8E8E8E8E8E8E8AC81ACACACAC81ACE8E8E8E8E8E8E8E8E8E8
        09090909E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
      Spacing = 0
    end
    object edtFechaCierre: TRzDateTimeEdit
      Left = 10
      Top = 145
      Width = 96
      Height = 21
      CaptionTodayBtn = 'Hoy'
      CaptionClearBtn = 'Borrar'
      EditType = etDate
      Format = 'dd/mm/yy'
      Color = 15066597
      FlatButtons = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 13231332
      FrameHotTrack = True
      FrameVisible = True
      ParentColor = True
      ParentFont = False
      TabOnEnter = True
      TabOrder = 2
    end
    object mmIniCieInv: TRzMemo
      Left = 134
      Top = 24
      Width = 343
      Height = 315
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      FrameHotStyle = fsNone
      FrameHotTrack = True
      FrameVisible = True
    end
    object pnlInfGenInv: TRzPanel
      Left = 0
      Top = 440
      Width = 477
      Height = 31
      Align = alBottom
      BorderOuter = fsButtonUp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      VisualStyle = vsGradient
      object btnSalir: TRzBitBtn
        Left = 406
        Top = 4
        Width = 61
        Height = 24
        Hint = 'Salir de transferencias'
        FrameColor = 7617536
        Caption = '&Salir'
        Color = 15791348
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
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
    object gbTest: TRzGroupBox
      Left = 0
      Top = 339
      Width = 477
      Height = 101
      Align = alBottom
      Alignment = taCenter
      Caption = 'Test Stk y precio a fecha'
      Color = 15791348
      GradientColorStop = clWhite
      GradientDirection = gdBigSquareBox
      GroupStyle = gsUnderline
      TabOrder = 8
      VisualStyle = vsGradient
      object lblDesTstFec: TLabel
        Left = 10
        Top = 19
        Width = 35
        Height = 13
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblTestSuc: TLabel
        Left = 187
        Top = 19
        Width = 48
        Height = 13
        Caption = 'Sucursal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblCodArtTest: TLabel
        Left = 303
        Top = 19
        Width = 38
        Height = 13
        Caption = '&C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblDetProdTest: TLabel
        Left = 10
        Top = 62
        Width = 51
        Height = 13
        Caption = 'Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblProdTest: TLabel
        Left = 10
        Top = 85
        Width = 259
        Height = 13
        AutoSize = False
        Caption = 'Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5439488
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblRdoTest: TLabel
        Left = 336
        Top = 62
        Width = 32
        Height = 13
        Alignment = taRightJustify
        Caption = 'Stock'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblResultadoTstStk: TLabel
        Left = 314
        Top = 85
        Width = 54
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Stk'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5439488
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblHasTstFec: TLabel
        Left = 98
        Top = 19
        Width = 33
        Height = 13
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblPrecioAFec: TLabel
        Left = 429
        Top = 62
        Width = 35
        Height = 13
        Alignment = taRightJustify
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblResultadoTstPrc: TLabel
        Left = 410
        Top = 85
        Width = 54
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Prc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5439488
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object edtDesTstFec: TRzDateTimeEdit
        Left = 10
        Top = 34
        Width = 86
        Height = 22
        CaptionTodayBtn = 'Hoy'
        CaptionClearBtn = 'Borrar'
        EditType = etDate
        Format = 'dd/mm/yy'
        Color = 15791348
        FlatButtons = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        FocusColor = 13231332
        FrameHotTrack = True
        FrameVisible = True
        ParentColor = True
        ParentFont = False
        TabOnEnter = True
        TabOrder = 0
        OnEnter = edtDesTstFecEnter
      end
      object cbSucursalTest: TRzComboBox
        Left = 187
        Top = 34
        Width = 110
        Height = 22
        AllowEdit = False
        AutoDropDown = True
        Color = 15791348
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        FlatButtons = True
        FocusColor = 13231332
        FrameHotTrack = True
        FrameVisible = True
        ItemHeight = 14
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        TabOnEnter = True
        TabOrder = 2
      end
      object edtHasTstFec: TRzDateTimeEdit
        Left = 98
        Top = 34
        Width = 86
        Height = 22
        CaptionTodayBtn = 'Hoy'
        CaptionClearBtn = 'Borrar'
        EditType = etDate
        Format = 'dd/mm/yy'
        Color = 15791348
        FlatButtons = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        FocusColor = 13231332
        FrameHotTrack = True
        FrameVisible = True
        ParentColor = True
        ParentFont = False
        TabOnEnter = True
        TabOrder = 1
      end
      object edtTstCodArt: TRzNumericEdit
        Left = 301
        Top = 34
        Width = 48
        Height = 22
        Color = 15791348
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        FocusColor = clWhite
        FrameHotTrack = True
        FrameVisible = True
        ParentColor = True
        ParentFont = False
        TabOnEnter = True
        TabOrder = 3
        OnExit = edtTstCodArtExit
        DisplayFormat = ',0;(,0)'
      end
    end
    object edtFechaInicio: TRzDateTimeEdit
      Left = 10
      Top = 104
      Width = 96
      Height = 21
      CaptionTodayBtn = 'Hoy'
      CaptionClearBtn = 'Borrar'
      EditType = etDate
      Format = 'dd/mm/yy'
      Color = 15066597
      FlatButtons = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 13231332
      FrameHotTrack = True
      FrameVisible = True
      ParentColor = True
      ParentFont = False
      TabOnEnter = True
      TabOrder = 1
    end
    object edtPerInv: TRzSpinner
      Left = 10
      Top = 187
      Width = 81
      ButtonColor = 13041606
      Max = 2045
      Min = 2000
      TabOnEnter = True
      Value = 2009
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
  end
  object qBranch: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select NombreSuc, IdSucursal, Activa'
      'From Sucursales')
    Left = 294
    Top = 80
    object qBranchNOMBRESUC: TMDOStringField
      FieldName = 'NOMBRESUC'
      Origin = '"SUCURSALES"."NOMBRESUC"'
    end
    object qBranchIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"SUCURSALES"."IDSUCURSAL"'
      Required = True
    end
    object qBranchACTIVA: TSmallintField
      FieldName = 'ACTIVA'
    end
  end
  object dspqArtToInv: TDataSetProvider
    DataSet = qArtToInv
    Options = [poIncFieldProps, poUseQuoteChar]
    Left = 324
    Top = 114
  end
  object ArtToInv: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IdStk'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspqArtToInv'
    Left = 357
    Top = 114
    object ArtToInvIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object ArtToInvMARCA: TStringField
      FieldName = 'MARCA'
    end
    object ArtToInvDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 60
    end
    object ArtToInvIMPINT: TBCDField
      FieldName = 'IMPINT'
      currency = True
      Precision = 18
    end
    object ArtToInvPRECIO: TBCDField
      FieldName = 'PRECIO'
      currency = True
      Precision = 18
    end
    object ArtToInvCOSTO: TBCDField
      FieldName = 'COSTO'
      currency = True
      Precision = 18
    end
    object ArtToInvPNETO: TBCDField
      FieldName = 'PNETO'
      currency = True
      Precision = 18
    end
    object ArtToInvTTALLE: TSmallintField
      FieldName = 'TTALLE'
    end
    object ArtToInvCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
    end
  end
  object qArtToInv: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IdArticulo, Marca, Detalle, ImpInt, '
      '           Costo, PNeto, Precio, TTalle, Cantidad'
      'From PRODUCTOS_STOCK_FECHA(:IdStk, :Desde, :Hasta)'
      'Where (Cantidad > 0)'
      'Order By IdArticulo')
    Left = 294
    Top = 113
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IdStk'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptUnknown
      end>
  end
end
