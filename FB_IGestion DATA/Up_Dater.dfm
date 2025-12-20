object frmFB_UpDater: TfrmFB_UpDater
  Left = 0
  Top = 0
  Caption = 'Actualizador'
  ClientHeight = 406
  ClientWidth = 690
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000088888888800000000000000
    0000000008888888880000000000088888888000088111118800000000000888
    8888800008888888880000000000088111188000088888888800000000000881
    1118800000000800000000000000088888888000000008000000000000000888
    8888800000000800008888888880000008000000000008000088888888800000
    0800000000000800008811111880000008000000000008888888111118800000
    0800088888888000008888888880000008000888888880000088888888800000
    0888888111188000000000800000000000000888888880000000008000000000
    0000088888888000000000800000000000000000080000888888888000000000
    0000000008000080000000000000000000000000080000800000000000000000
    0000000008000080000000000000000000000000080000800000000000000000
    0000888888888888880000000000000000008888888888888800000000000000
    0000881111111111880000000000000000008811111111118800000000000000
    0000881111111111880000000000000000008811111111118800000000000000
    0000888888888888880000000000000000008888888888888800000000000000
    000000000000000000000000000000000000000000000000000000000000FFF0
    07FFFFF003FF00F003FF007003FF007003FF007803FF007F3FFF007F3801807F
    3801F3FF3801F3FF3801F3000001F3007801F3007C01F8007F9FFF007F9FFF80
    001FFFF3801FFFF39FFFFFF39FFFFFF39FFFFE0007FFFE0003FFFE0003FFFE00
    03FFFE0003FFFE0003FFFE0003FFFE0003FFFF0003FFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcLecturas: TRzPageControl
    Left = 0
    Top = 0
    Width = 690
    Height = 386
    ActivePage = tsLecturas
    ActivePageDefault = tsLecturas
    Align = alClient
    BackgroundColor = clWhite
    BoldCurrentTab = True
    Color = clWhite
    UseColoredTabs = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackgroundColor = False
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowCardFrame = False
    ShowCloseButton = True
    ShowFocusRect = False
    ShowFullFrame = False
    ShowHint = False
    ShowShadow = False
    SoftCorners = True
    TabHeight = 220
    TabHints = True
    TabIndex = 0
    TabOrder = 0
    TabOrientation = toLeft
    TabSequence = tsReverse
    TabStyle = tsDoubleSlant
    TextColors.Selected = clMaroon
    OnClose = pcLecturasClose
    FixedDimension = 78
    object tsLecturas: TRzTabSheet
      Color = clWhite
      Caption = '&Estado'#13#10'Lecturas'
      object gbControles: TRzGroupBox
        Left = 0
        Top = 0
        Width = 613
        Height = 53
        Align = alTop
        Alignment = taCenter
        Caption = 'Controles'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 14211288
        GradientColorStop = 13828050
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 0
        VisualStyle = vsGradient
        object btnBuscarOper: TRzBitBtn
          Left = 54
          Top = 21
          Width = 104
          Height = 30
          Caption = '&Buscar/Leer Operaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2839808
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          OnClick = btnBuscarOperClick
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000330B0000330B00000001000000000000000000003300
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
            0000000000000000000000000000000000000000000000000000E8ACDEE3E8E8
            E8E8E8E8E8E8E8E8E8E8E8ACDEE3E8E8E8E8E8E8E8E8E8E8E8E8AC807A81E3E8
            E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8E8CEA37A81E3
            E8E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A81
            E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A
            81E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA3
            7AACAD82828288E3E8E8E8E8E8E3ACE281ACE3818181E2E3E8E8E8E8E8E8D0CE
            E28288E6B3E6E682EBE8E8E8E8E8E3ACE281E2ACACACAC81E3E8E8E8E8E8E8E3
            8289B3B3B3D7D7D782E3E8E8E8E8E8E381E3ACACACE3E3E381E3E8E8E8E8E8AD
            88B3E6B3B3D7D7D7E688E8E8E8E8E8E3E2ACACACACE3E3E3ACE2E8E8E8E8E888
            89E6E6B3B3B3D7D7E682E8E8E8E8E8E2E3ACACACACACE3E3AC81E8E8E8E8E882
            E6E6E6E6B3B3B3B3B382E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E888
            E6B3E6E6E6B3B3B3E682E8E8E8E8E8E2ACACACACACACACACAC81E8E8E8E8E8AD
            88D7D7E6E6E6E6B38888E8E8E8E8E8E3E2E3E3ACACACACACE2E2E8E8E8E8E8E3
            82EBD7B3E6E6E68982E3E8E8E8E8E8E381E3E3ACACACACE381E3E8E8E8E8E8E8
            AD82ADE6E6E68882ADE8E8E8E8E8E8E8E381E3ACACACE281E3E8E8E8E8E8E8E8
            E8E38882828282E3E8E8E8E8E8E8E8E8E8E3E281818181E3E8E8}
          NumGlyphs = 2
          Spacing = 0
        end
        object btnDetenerLectura: TRzBitBtn
          Left = 161
          Top = 21
          Width = 104
          Height = 30
          Caption = '&Detener Lecturas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2839808
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 1
          OnClick = btnDetenerLecturaClick
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000E30E0000E30E00000001000000000000000000003300
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
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E86C6C6C
            6C6C6C6C6C6C6CE8E8E8E8E8E881818181818181818181E8E8E8E8E86C909090
            90906C906C6C6C6CE8E8E8E881E2E2E2E2E281E281818181E8E8E8E86CB49090
            9090906C906C6C6CE8E8E8E881ACE2E2E2E2E281E2818181E8E8E8E86C90B490
            909090906C906C6CE8E8E8E881E2ACE2E2E2E2E281E28181E8E8E8E86CB490B4
            90909090906C906CE8E8E8E881ACE2ACE2E2E2E2E281E281E8E8E8E86CB4B490
            B490909090906C6CE8E8E8E881ACACE2ACE2E2E2E2E28181E8E8E8E86CC9B4B4
            90B490909090906CE8E8E8E881E3ACACE2ACE2E2E2E2E281E8E8E8E86CC9C9B4
            B490B4909090906CE8E8E8E881E3E3ACACE2ACE2E2E2E281E8E8E8E8E86C6C6C
            6C6C6C6C6C6C6CE8E8E8E8E8E881818181818181818181E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
          NumGlyphs = 2
          Spacing = 0
        end
        object btnSalir_Ocultar: TRzBitBtn
          Left = 474
          Top = 21
          Width = 104
          Height = 30
          Caption = '&Finalizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4473890
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 2
          OnClick = btnSalir_OcultarClick
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
            E809E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E8
            091009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E809
            10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E80910
            1010101009E8E8E8E8E8E8E8E8E881ACACACACAC81E8E8E8E8E8E8E8E8091010
            101010101009E8E8E8E8E8E8E881ACACACACACACAC81E8E8E8E8E8E809101010
            10101010101009E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E809101010
            10101010101009E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E809090909
            10101009090909E8E8E8E8E881818181ACACAC81818181E8E8E8E8E8E8E8E809
            10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
            10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
            10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
            10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
            10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
            09090909E8E8E8E8E8E8E8E8E8E8E88181818181E8E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
          NumGlyphs = 2
          Spacing = 0
        end
      end
      object gbEstado: TRzGroupBox
        Left = 0
        Top = 53
        Width = 613
        Height = 333
        Align = alClient
        Alignment = taCenter
        Caption = 'Estado de los procesos'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 14211288
        GradientColorStop = 13828050
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 1
        VisualStyle = vsGradient
        object mmEstado: TRzMemo
          Left = 0
          Top = 22
          Width = 613
          Height = 311
          TabStop = False
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          OnDblClick = mmEstadoDblClick
          FrameHotTrack = True
          FrameVisible = True
          TabOnEnter = True
        end
      end
    end
    object tsSucursales: TRzTabSheet
      Color = clWhite
      Caption = '&Datos'#13#10'Sucursales'
      ExplicitLeft = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gSucur: TwwDBGrid
        Left = 0
        Top = 0
        Width = 613
        Height = 386
        Selected.Strings = (
          'IDSUCURSAL'#9'4'#9'S'#186#9'T'#9'Sucursales en proceso'
          'DETSUC'#9'4'#9'DS'#9'T'#9'Sucursales en proceso'
          'HOSTNAME'#9'40'#9'Ubicaci'#243'n~Datos Sucursal'#9'T'#9'Sucursales en proceso'
          'PROXIMA_LECT'#9'10'#9'Ultima~Lectura'#9'T'#9'Sucursales en proceso'
          'ULTIMA_ACT'#9'10'#9'Ultimos~Precios'#9'T'#9'Sucursales en proceso'
          'ULTIMA_ACT_ORG'#9'10'#9'Ultimo~Datos'#9'T'#9'Sucursales en proceso')
        IniAttributes.Delimiter = ';;'
        TitleColor = clWhite
        FixedCols = 0
        ShowHorzScrollBar = False
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = dsSucur
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyOptions = [dgEnterToTab]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        TitleLines = 4
        TitleButtons = False
        UseTFields = False
        OnDblClick = gSucurDblClick
      end
    end
  end
  object pnlSalir: TRzPanel
    Left = 0
    Top = 386
    Width = 690
    Height = 20
    Align = alBottom
    Alignment = taLeftJustify
    BorderOuter = fsFlatRounded
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStyle = gcsCustom
    GradientColorStop = 16311249
    ParentFont = False
    TabOrder = 1
    VisualStyle = vsGradient
  end
  object tRead_Branch: TTimer
    OnTimer = tRead_BranchTimer
    Left = 412
    Top = 231
  end
  object dbBranch: TMDODatabase
    ClientLib = clFBClient
    DatabaseName = 'C:\IyC\FB_Datos\Insolito\INSOLITOSRL.FDB'
    IdleTimer = 0
    LoginPrompt = False
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    SQLDialect = 3
    TraceFlags = []
    Left = 412
    Top = 171
  end
  object trGrabar: TMDOTransaction
    Active = False
    AutoCommit = False
    DefaultDatabase = dbCentral
    Params.Strings = (
      'concurrency'
      'nowait')
    Left = 382
    Top = 171
  end
  object spUpDateInsertFacItm: TMDOStoredProc
    Database = dbCentral
    Transaction = trGrabar
    Params = <>
    StoredProcName = 'PUT_FACVEN'
    Left = 442
    Top = 231
  end
  object qSendSuc: TMDOQuery
    Database = dbBranch
    Transaction = trGrabar
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'select * from SND_FV')
    Left = 381
    Top = 200
  end
  object qUpDateStkV: TMDOQuery
    Database = dbCentral
    Transaction = trGrabar
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      
        'Select I.IdArticulo, I.IdSucursal, I.Cantidad, I.Talle, A.IdGrup' +
        'o, '
      '           A.IdSubGrupo, F.TipoFactura, A.Servicio, A.EsKit'
      'From FacVen F'
      'Join ItemsFV I'
      '   on I.IdFactura = F.IdFactura and '
      '        I.IdSucursal = F.IdSucursal and '
      '        I.IdPuntoVenta = F.IdPuntoVenta'
      'Join Articulos A'
      '   on  A.IdArticulo = I.IdArticulo '
      'Where ((F.FechaIS is null) or'
      '            (FechaIS < '#39'12/31/2000'#39')) and '
      '            (I.DctoStk = 1)')
    Left = 411
    Top = 200
    object qUpDateStkVIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
      Origin = '"ITEMSFV"."IDARTICULO"'
    end
    object qUpDateStkVIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"ITEMSFV"."IDSUCURSAL"'
      Required = True
    end
    object qUpDateStkVCANTIDAD: TMDOBCDField
      FieldName = 'CANTIDAD'
      Origin = '"ITEMSFV"."CANTIDAD"'
      Precision = 18
      Size = 4
    end
    object qUpDateStkVTALLE: TIntegerField
      FieldName = 'TALLE'
      Origin = '"ITEMSFV"."TALLE"'
    end
    object qUpDateStkVIDGRUPO: TIntegerField
      FieldName = 'IDGRUPO'
      Origin = '"ARTICULOS"."IDGRUPO"'
    end
    object qUpDateStkVIDSUBGRUPO: TIntegerField
      FieldName = 'IDSUBGRUPO'
      Origin = '"ARTICULOS"."IDSUBGRUPO"'
    end
    object qUpDateStkVTIPOFACTURA: TSmallintField
      FieldName = 'TIPOFACTURA'
      Origin = '"FACVEN"."TIPOFACTURA"'
    end
    object qUpDateStkVSERVICIO: TSmallintField
      FieldName = 'SERVICIO'
      Origin = '"ARTICULOS"."SERVICIO"'
    end
    object qUpDateStkVESKIT: TIntegerField
      FieldName = 'ESKIT'
      Origin = '"ARTICULOS"."ESKIT"'
    end
  end
  object qUpDateStkT: TMDOQuery
    Database = dbCentral
    Transaction = trGrabar
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select F.TipoFactura, F.IdStOrigen, F.IdStDestino, '
      '          I.IdArticulo, I.Cantidad, I.Talle, I.TipoAJ '
      'From Traspaso F '
      'Join ItemsTR I '
      '  on I.IdFactura = F.IdFactura and'
      '       I.IdSucursal = F.IdSucursal '
      'Where (F.FechaEnv = :FecEnv) And'
      '            (F.Estado = 3) And '
      '            ((F.IDSTORIGEN =:Id_Suc) Or'
      '            (F.IDSTDESTINO =:Id_Suc))')
    Left = 442
    Top = 200
    ParamData = <
      item
        DataType = ftDate
        Name = 'FecEnv'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Id_Suc'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Id_Suc'
        ParamType = ptUnknown
      end>
    object qUpDateStkTTIPOFACTURA: TSmallintField
      FieldName = 'TIPOFACTURA'
    end
    object qUpDateStkTIDSTORIGEN: TIntegerField
      FieldName = 'IDSTORIGEN'
    end
    object qUpDateStkTIDSTDESTINO: TIntegerField
      FieldName = 'IDSTDESTINO'
    end
    object qUpDateStkTIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object qUpDateStkTCANTIDAD: TMDOBCDField
      FieldName = 'CANTIDAD'
      Precision = 18
      Size = 4
    end
    object qUpDateStkTTALLE: TIntegerField
      FieldName = 'TALLE'
    end
    object qUpDateStkTTIPOAJ: TSmallintField
      FieldName = 'TIPOAJ'
    end
  end
  object qDatosSuc: TMDOQuery
    Database = dbCentral
    Transaction = trCentral
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IDSUCURSAL, NOMBRESUC, REMOTA, DETSUC, '
      '           HOSTNAME, ACTIVA, TIEMPOEL, PROXIMA_LECT, '
      '           ULTIMA_ACT, ULTIMA_ACT_ORG '
      'From Sucursales'
      'Where (Activa = 1)  and '
      '           (Remota = 1)')
    Left = 472
    Top = 200
  end
  object dspqSucur: TDataSetProvider
    DataSet = qDatosSuc
    Options = [poIncFieldProps, poUseQuoteChar]
    Left = 503
    Top = 200
  end
  object Sucur: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspqSucur'
    Left = 473
    Top = 231
    object SucurIDSUCURSAL: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'S'#186
      DisplayWidth = 2
      FieldName = 'IDSUCURSAL'
      Origin = '"SUCURSALES"."IDSUCURSAL"'
      Required = True
    end
    object SucurNOMBRESUC: TStringField
      DisplayWidth = 20
      FieldName = 'NOMBRESUC'
      Origin = '"SUCURSALES"."NOMBRESUC"'
    end
    object SucurREMOTA: TSmallintField
      DisplayWidth = 10
      FieldName = 'REMOTA'
      Origin = '"SUCURSALES"."REMOTA"'
    end
    object SucurDETSUC: TStringField
      Alignment = taCenter
      DisplayWidth = 2
      FieldName = 'DETSUC'
      Origin = '"SUCURSALES"."DETSUC"'
      Size = 2
    end
    object SucurHOSTNAME: TStringField
      DisplayWidth = 80
      FieldName = 'HOSTNAME'
      Origin = '"SUCURSALES"."HOSTNAME"'
      Size = 80
    end
    object SucurACTIVA: TSmallintField
      DisplayWidth = 10
      FieldName = 'ACTIVA'
      Origin = '"SUCURSALES"."ACTIVA"'
    end
    object SucurTIEMPOEL: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIEMPOEL'
      Origin = '"SUCURSALES"."TIEMPOEL"'
    end
    object SucurPROXIMA_LECT: TTimeField
      Alignment = taCenter
      DisplayWidth = 10
      FieldName = 'PROXIMA_LECT'
      Origin = '"SUCURSALES"."PROXIMA_LECT"'
    end
    object SucurULTIMA_ACT: TDateField
      Alignment = taCenter
      FieldName = 'ULTIMA_ACT'
    end
    object SucurULTIMA_ACT_ORG: TDateField
      Alignment = taCenter
      FieldName = 'ULTIMA_ACT_ORG'
    end
  end
  object dsSucur: TDataSource
    DataSet = Sucur
    Left = 504
    Top = 231
  end
  object trCentral: TMDOTransaction
    Active = False
    AutoCommit = False
    DefaultDatabase = dbCentral
    Params.Strings = (
      'concurrency'
      'nowait')
    Left = 472
    Top = 171
  end
  object dbCentral: TMDODatabase
    ClientLib = clFBClient
    DatabaseName = 'C:\IyC\FB_Datos\Insolito\INSOLITOSRL.FDB'
    DefaultTransaction = trCentral
    IdleTimer = 0
    LoginPrompt = False
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    SQLDialect = 3
    TraceFlags = []
    Left = 502
    Top = 171
  end
  object trLeidos: TMDOTransaction
    Active = False
    AutoCommit = False
    DefaultDatabase = dbBranch
    Params.Strings = (
      'concurrency'
      'nowait')
    Left = 443
    Top = 171
  end
  object trUpdBranch: TMDOTransaction
    Active = False
    AutoCommit = False
    DefaultDatabase = dbBranch
    Params.Strings = (
      'concurrency'
      'nowait')
    Left = 443
    Top = 142
  end
  object qMark_EnSuc: TMDOStoredProc
    Database = dbBranch
    Transaction = trLeidos
    Params = <
      item
        DataType = ftDate
        Name = 'FECENV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUC'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'EST_TR'
        ParamType = ptInput
      end>
    StoredProcName = 'PUT_TRASPASO_MRK'
    Left = 380
    Top = 231
    ParamData = <
      item
        DataType = ftDate
        Name = 'FECENV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUC'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'EST_TR'
        ParamType = ptInput
      end>
  end
end
