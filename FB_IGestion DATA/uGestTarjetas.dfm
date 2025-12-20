object frmGestTarMut: TfrmGestTarMut
  Left = 265
  Top = 279
  ActiveControl = pcTarjetasMutuales
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Tarjetas y Mutuales'
  ClientHeight = 535
  ClientWidth = 784
  Color = 15791348
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020040000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000000000000000000000BB
    BBBBBBBBBBBBBBBBBBBBBBBBBB0000BBBBBBBBBBBBBBBBBBBBBBBBBBBB0000BB
    B7BB77B7B7B7B7BBBB555555BB0000BBBBBBBBBBBBBBBBBBBB555555BB0000BB
    BBBBBBBBBBBBBBBBBB555555BB0000BBB00B000B0B0B0B00BBBBBBBBBB0000BB
    BBBBBBBBBBBBBBBBBBBBBBBBBB0000BBBBB00B0B0B00B00BB0BB0BBBBB0000BB
    BBB0BB0B0B0BB0B0B0BB0BBBBB0000BBBBB0BB00BB00B0B0B0BB0BBBBB0000BB
    BBB0BB0B0B0BB0B0B0BB0BBBBB0000BBBBB00B00BB00B00BB0B000BBBB0000BB
    BBBBBBBBBBBBBBBBBBBBBBBBBB00000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFC00000038000000180000001800000018000000180000001800000018000
    0001800000018000000180000001800000018000000180000001C0000003FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcTarjetasMutuales: TRzPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 509
    Cursor = crHandPoint
    ActivePage = tsOperaciones
    ActivePageDefault = tsOperaciones
    Align = alClient
    BoldCurrentTab = True
    UseColoredTabs = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShowCardFrame = False
    ShowCloseButton = True
    ShowFocusRect = False
    ShowFullFrame = False
    ShowShadow = False
    TabHeight = 22
    TabHints = True
    TabIndex = 0
    TabOrder = 0
    TabStyle = tsBackSlant
    TextColors.Selected = clBlack
    TextColors.Unselected = clGreen
    OnClose = pcTarjetasMutualesClose
    OnTabClick = pcTarjetasMutualesTabClick
    FixedDimension = 22
    object tsOperaciones: TRzTabSheet
      Color = 16514045
      ImageIndex = 1
      Caption = 'Consultas de &Operaciones'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gMovTarMut: TwwDBGrid
        Left = 0
        Top = 33
        Width = 784
        Height = 454
        Hint = 'doble click para modificar'
        Selected.Strings = (
          'IDTERMINAL'#9'5'#9'N'#250'mero~Terminal'#9'F'
          'FechaOp'#9'8'#9'Fecha~Operaci'#243'n'#9'F'
          'NROFACTURA'#9'13'#9'N'#250'mero de~Factura'#9'F'
          'NOMBRE'#9'15'#9'Nombre~Cliente'#9'F'
          'CodTar'#9'15'#9'C'#243'digo~Tarjeta'#9'F'
          'TARJETA'#9'10'#9'Detalle~Entidad'#9'F'
          'NroCuota'#9'2'#9#186'C~Op'#9'F'
          'ImpCuota'#9'8'#9'Monto~Cuota'#9'F'
          'TOTALOP'#9'12'#9'Total~Operaci'#243'n'#9'F'
          'CuotaPag'#9'2'#9#186'C~Pg'#9'F'
          'Cobrado'#9'12'#9'Monto~Cobrado'#9'F'
          'Saldo'#9'12'#9'Saldo~a Cobrar'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = 15726840
        FixedCols = 0
        ShowHorzScrollBar = False
        EditControlOptions = [ecoSearchOwnerForm, ecoDisableDateTimePicker]
        Align = alClient
        BorderStyle = bsNone
        DataSource = dsMovTar
        DragCursor = crDefault
        EditCalculated = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyOptions = [dgEnterToTab]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgShowFooter, dgFooter3DCells, dgHideBottomDataLine]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
        LineColors.DataColor = clMaroon
        OnCalcCellColors = gMovTarMutCalcCellColors
        OnDblClick = gMovTarMutDblClick
        IndicatorIconColor = clRed
        OnUpdateFooter = gMovTarMutUpdateFooter
        FooterColor = 15000817
        FooterCellColor = 15000817
        DragVertOffset = 10
        PaintOptions.BackgroundDrawStyle = bdsCenter
        PaintOptions.ActiveRecordColor = 174
      end
      object pnlConsTar: TRzPanel
        Left = 0
        Top = 0
        Width = 784
        Height = 33
        Align = alTop
        BorderInner = fsFlatRounded
        BorderOuter = fsNone
        GradientColorStyle = gcsCustom
        GradientColorStart = 14079702
        GradientColorStop = 15726840
        GridColor = 14089935
        GridStyle = gsSolidLines
        ParentColor = True
        ShowGrid = True
        TabOrder = 1
        VisualStyle = vsGradient
        object lblEntOper: TLabel
          Left = 195
          Top = 17
          Width = 45
          Height = 13
          Caption = '&Entidad:'
          FocusControl = cbEntOper
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblHastaO: TLabel
          Left = 518
          Top = 17
          Width = 36
          Height = 13
          Caption = '&Hasta:'
          FocusControl = edtHastaO
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblDesdeO: TLabel
          Left = 383
          Top = 17
          Width = 38
          Height = 13
          Caption = '&Desde:'
          FocusControl = edtDesdeO
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblSucOper: TLabel
          Left = 13
          Top = 17
          Width = 51
          Height = 13
          Caption = '&Sucursal:'
          FocusControl = cbSucOper
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object cbEntOper: TRzComboBox
          Left = 243
          Top = 9
          Width = 133
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          Color = 16514045
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 16448
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FlatButtons = True
          FocusColor = clWhite
          FrameHotTrack = True
          FrameVisible = True
          ItemHeight = 13
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          Sorted = True
          TabOnEnter = True
          TabOrder = 1
        end
        object btnBusOper: TRzBitBtn
          Left = 658
          Top = 2
          Width = 30
          Height = 30
          Hint = 'Buscar movimientos.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 4
          OnClick = btnBusOperClick
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
        end
        object edtDesdeO: TRzDateTimeEdit
          Left = 426
          Top = 9
          Width = 80
          Height = 21
          CaptionTodayBtn = 'Hoy'
          Date = 39289.000000000000000000
          EditType = etDate
          Format = 'dd/mm/yy'
          CharCase = ecUpperCase
          Color = 16514045
          FlatButtons = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 16448
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FocusColor = clWhite
          FrameHotTrack = True
          FrameVisible = True
          ParentColor = True
          ParentFont = False
          TabOnEnter = True
          TabOrder = 2
        end
        object edtHastaO: TRzDateTimeEdit
          Left = 558
          Top = 9
          Width = 81
          Height = 21
          CaptionTodayBtn = 'Hoy'
          Date = 39289.000000000000000000
          EditType = etDate
          Format = 'dd/mm/yy'
          CharCase = ecUpperCase
          Color = 16514045
          FlatButtons = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 16448
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FocusColor = clWhite
          FrameHotTrack = True
          FrameVisible = True
          ParentColor = True
          ParentFont = False
          TabOnEnter = True
          TabOrder = 3
        end
        object btnExpOper: TRzBitBtn
          Left = 726
          Top = 2
          Width = 30
          Height = 30
          Hint = 'exportar movimientos.'
          Color = 16514045
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 6
          OnClick = btnExpOperClick
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000A30E0000A30E00000001000000000000000000003300
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
            E8E8E8E809E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E80909E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8090909
            09090909090909E8E8E8E8E8E881818181818181818181E8E8E8E8E8E8E8E8E8
            E8E8E8E80909E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8
            E8E8E8E809E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E85E5E5E5E5E5E
            5EE8E8A378787878787881818181818181E8E8818181818181815ED7D7D7D7D7
            5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D7D7D7D7
            5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D7D7D7D7
            5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D7D7D7D7
            5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D75E5E5E
            5EE8E8A3D5D5A3A3A3A381E8E881818181E8E881ACAC818181815ED7D75EE35E
            E8E8E8A3D5D5A3D678E881E8E881E381E8E8E881ACAC81AC81E85ED7D75E5EE8
            E8E8E8A3D5D5A378E8E881E8E88181E8E8E8E881ACAC8181E8E85E5E5E5EE8E8
            E8E8E8A3A3A3A3E8E8E881818181E8E8E8E8E881818181E8E8E8}
          NumGlyphs = 2
        end
        object cbSucOper: TRzComboBox
          Left = 67
          Top = 9
          Width = 122
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          Color = 16514045
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 16448
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FlatButtons = True
          FocusColor = clWhite
          FrameHotTrack = True
          FrameVisible = True
          ItemHeight = 13
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          Sorted = True
          TabOnEnter = True
          TabOrder = 0
        end
        object btnPrnOper: TRzBitBtn
          Left = 692
          Top = 2
          Width = 30
          Height = 30
          Hint = 'imprimir informe.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 5
          OnClick = btnPrnOperClick
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000730E0000730E00000001000000000000000000003300
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
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
            09090909090909E8E8E8E8E88181818181818181818181E8E8E8E85E89898989
            89898989895E5E09E8E8E8E2ACACACACACACACACACE2E281E8E85E5E5E5E5E5E
            5E5E5E5E5E5E095E09E8E2E2E2E2E2E2E2E2E2E2E2E281E281E85ED789898989
            8989898989895E0909E8E2E8ACACACACACACACACACACE28181E85ED789898989
            181289B490895E5E09E8E2E8ACACACACE281ACE281ACE2E281E85ED7D7D7D7D7
            D7D7D7D7D7D75E5E5E09E2E8E8E8E8E8E8E8E8E8E8E8E2E2E2815ED789898989
            8989898989895E5E5E09E2E8ACACACACACACACACACACE2E2E281E85E5E5E5E5E
            5E5E5E5E5E89895E5E09E8E2E2E2E2E2E2E2E2E2E2ACACE2E281E8E85ED7D7D7
            D7D7D7D7D75E89895E09E8E8E2E8E8E8E8E8E8E8E8E2ACACE281E8E8E85ED7E3
            E3E3E3E3D75E5E5E09E8E8E8E8E2E8ACACACACACE8E2E2E281E8E8E8E85ED7D7
            D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85ED7
            E3E3E3E3E3D75EE8E8E8E8E8E8E8E2E8ACACACACACE8E2E8E8E8E8E8E8E85ED7
            D7D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85E
            5E5E5E5E5E5E5E5EE8E8E8E8E8E8E8E2E2E2E2E2E2E2E2E2E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
          NumGlyphs = 2
        end
      end
    end
    object tsConciliaciones: TRzTabSheet
      Color = 15791348
      ImageIndex = 2
      Caption = '&Presentaciones / Conciliaciones / Cobros'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pcConcLiq: TRzPageControl
        Left = 0
        Top = 0
        Width = 784
        Height = 487
        ActivePage = tsPresentaciones
        ActivePageDefault = tsPresentaciones
        Align = alClient
        BackgroundColor = 14811135
        BoldCurrentTab = True
        Color = 15461355
        UseColoredTabs = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackgroundColor = False
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowCardFrame = False
        ShowFocusRect = False
        ShowFullFrame = False
        ShowHint = False
        ShowShadow = False
        TabColors.Unselected = clWhite
        TabIndex = 0
        TabOrder = 0
        TabStyle = tsRoundCorners
        TextColors.Selected = clMaroon
        TextColors.Unselected = 16711808
        FixedDimension = 20
        object tsPresentaciones: TRzTabSheet
          Color = 15461355
          Caption = 'Ingreso de Presentaciones/Conciliaciones'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object pnlTop_PCL: TRzPanel
            Left = 0
            Top = 0
            Width = 784
            Height = 39
            Align = alTop
            BorderInner = fsFlatRounded
            BorderOuter = fsNone
            Color = 14680031
            GradientColorStyle = gcsCustom
            GradientColorStop = 14680031
            GridColor = 12046079
            GridStyle = gsSolidLines
            TabOrder = 0
            VisualStyle = vsGradient
            object lblEntPres: TLabel
              Left = 133
              Top = 1
              Width = 45
              Height = 13
              Caption = '&Entidad:'
              FocusControl = cbEnt_PCL
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object lblFecPres: TLabel
              Left = 262
              Top = 1
              Width = 106
              Height = 13
              Caption = '&Periodo a resolver:'
              FocusControl = edtDesPCL
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblSucPres: TLabel
              Left = 5
              Top = 1
              Width = 51
              Height = 13
              Caption = '&Sucursal:'
              FocusControl = cbSuc_PCL
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblCantOP_PCL: TLabel
              Left = 772
              Top = 20
              Width = 7
              Height = 14
              Alignment = taRightJustify
              Caption = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblTipoPCL: TLabel
              Left = 408
              Top = 1
              Width = 87
              Height = 13
              Caption = '&Tipo Operaci'#243'n:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object cbEnt_PCL: TRzComboBox
              Left = 133
              Top = 15
              Width = 124
              Height = 21
              Hint = 'entidades financieras'
              Style = csDropDownList
              Color = 14680031
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = 13056
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FlatButtons = True
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ItemHeight = 13
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Sorted = True
              TabOnEnter = True
              TabOrder = 1
              OnChange = cbEnt_PCLChange
            end
            object edtDesPCL: TRzDateTimeEdit
              Left = 262
              Top = 15
              Width = 69
              Height = 21
              Hint = 'fecha del resumen o liquidaci'#243'n'
              CaptionTodayBtn = 'Hoy'
              Date = 39289.000000000000000000
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 14680031
              FlatButtons = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 13056
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              TabOnEnter = True
              TabOrder = 2
            end
            object btnBusMovPCL: TRzBitBtn
              Left = 628
              Top = 6
              Width = 83
              Height = 30
              Hint = 'Buscar movimientos en la'#13'fecha, en la cuenta elegida.'
              Caption = '&Buscar Operaciones'
              Color = 14680031
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              OnClick = btnBusMovPCLClick
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
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809
                09E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E809
                1009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E8E809
                101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E809
                10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
                1010101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E8E809
                101010101009E8E8E8E8E8E8E8E8E881ACACACACAC81E8E8E8E8E8E8E8E8E809
                1010101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E8E809
                10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
                101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E809
                1009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E8E809
                09E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
              NumGlyphs = 2
            end
            object cbSuc_PCL: TRzComboBox
              Left = 5
              Top = 15
              Width = 124
              Height = 21
              Color = 14680031
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = 13056
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FlatButtons = True
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ItemHeight = 13
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              TabOnEnter = True
              TabOrder = 0
              OnChange = cbSuc_PCLChange
            end
            object edtHasPCL: TRzDateTimeEdit
              Left = 335
              Top = 15
              Width = 69
              Height = 21
              Hint = 'fecha del resumen o liquidaci'#243'n'
              CaptionTodayBtn = 'Hoy'
              Date = 39289.000000000000000000
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 14680031
              FlatButtons = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 13056
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              TabOnEnter = True
              TabOrder = 3
            end
            object cbTipoOP_PCL: TRzComboBox
              Left = 408
              Top = 15
              Width = 114
              Height = 21
              Hint = 'tipo de operaci'#243'n'
              CharCase = ecUpperCase
              Color = 14680031
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = 13056
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FlatButtons = True
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ItemHeight = 13
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Sorted = True
              TabOnEnter = True
              TabOrder = 4
              OnChange = cbTipoOP_PCLChange
              OnEnter = cbTipoOP_PCLEnter
              Items.Strings = (
                'CONCILIACI'#211'N'
                'PRESENTACI'#211'N')
              Values.Strings = (
                '1'
                '2')
            end
            object cbxIncConciliados: TRzCheckBox
              Left = 537
              Top = 7
              Width = 83
              Height = 27
              Hint = 'Incluye Operaciones ya conciliadas '#13'o presentadas anteriormente'
              Alignment = taLeftJustify
              Caption = 'Incluir Mov. Conciliados'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              State = cbUnchecked
              TabOnEnter = True
              TabOrder = 5
            end
            object btnExportarPC: TRzBitBtn
              Left = 715
              Top = 6
              Width = 30
              Height = 30
              Hint = 'exportar movimientos.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 7
              OnClick = btnExportarPCClick
              Glyph.Data = {
                36060000424D3606000000000000360400002800000020000000100000000100
                08000000000000020000A30E0000A30E00000001000000000000000000003300
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
                E8E8E8E809E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8
                E8E8E8E80909E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8090909
                09090909090909E8E8E8E8E8E881818181818181818181E8E8E8E8E8E8E8E8E8
                E8E8E8E80909E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8
                E8E8E8E809E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E85E5E5E5E5E5E
                5EE8E8A378787878787881818181818181E8E8818181818181815ED7D7D7D7D7
                5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D7D7D7D7
                5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D7D7D7D7
                5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D7D7D7D7
                5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D75E5E5E
                5EE8E8A3D5D5A3A3A3A381E8E881818181E8E881ACAC818181815ED7D75EE35E
                E8E8E8A3D5D5A3D678E881E8E881E381E8E8E881ACAC81AC81E85ED7D75E5EE8
                E8E8E8A3D5D5A378E8E881E8E88181E8E8E8E881ACAC8181E8E85E5E5E5EE8E8
                E8E8E8A3A3A3A3E8E8E881818181E8E8E8E8E881818181E8E8E8}
              NumGlyphs = 2
            end
          end
          object gPCL_Movs: TwwDBGrid
            Left = 0
            Top = 39
            Width = 784
            Height = 272
            LineStyle = glsSingle
            ControlType.Strings = (
              'Estado3;CheckBox;True;False'
              'Estado2;CheckBox;True;False'
              'Estado1;CheckBox;True;False'
              'Estado4;CheckBox;True;False')
            Selected.Strings = (
              
                'IDMOVCRED'#9'4'#9#186'OP'#9'T'#9'<N I> = NO Incluir. <P1C> = Presentar/Cobrar 1' +
                ' Cta. <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada/Anulada.'
              
                'TFAC'#9'4'#9'T~C'#9'T'#9'<N I> = NO Incluir. <P1C> = Presentar/Cobrar 1 Cta.' +
                ' <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada/Anulada.'
              
                'NROFACTURA'#9'13'#9'N'#250'mero de~Comprobante'#9'T'#9'<N I> = NO Incluir. <P1C> ' +
                '= Presentar/Cobrar 1 Cta. <PTO> = Presentar/Cobrar Todo. <R/A> =' +
                ' Rechazada/Anulada.'
              
                'FechaOp'#9'7'#9'Fecha~Oper.'#9'T'#9'<N I> = NO Incluir. <P1C> = Presentar/Co' +
                'brar 1 Cta. <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada/Anu' +
                'lada.'
              
                'IDCLIENTE'#9'4'#9'C'#186#9'T'#9'<N I> = NO Incluir. <P1C> = Presentar/Cobrar 1 ' +
                'Cta. <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada/Anulada.'
              
                'NOMBRE'#9'13'#9'Cliente'#9'T'#9'<N I> = NO Incluir. <P1C> = Presentar/Cobrar' +
                ' 1 Cta. <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada/Anulada' +
                '.'
              
                'FECHAV'#9'7'#9'Fecha~Vto.'#9'T'#9'<N I> = NO Incluir. <P1C> = Presentar/Cobr' +
                'ar 1 Cta. <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada/Anula' +
                'da.'
              
                'Cupon'#9'4'#9'N'#186' de~Cup'#243'n'#9'T'#9'<N I> = NO Incluir. <P1C> = Presentar/Cobr' +
                'ar 1 Cta. <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada/Anula' +
                'da.'
              
                'Lote'#9'3'#9'Lote'#9'T'#9'<N I> = NO Incluir. <P1C> = Presentar/Cobrar 1 Cta' +
                '. <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada/Anulada.'
              
                'CodTar'#9'8'#9'N'#186'/C'#243'digo~de Tarjeta'#9'T'#9'<N I> = NO Incluir. <P1C> = Pres' +
                'entar/Cobrar 1 Cta. <PTO> = Presentar/Cobrar Todo. <R/A> = Recha' +
                'zada/Anulada.'
              
                'IDCUOTA'#9'2'#9'N'#186'~Cta'#9'T'#9'<N I> = NO Incluir. <P1C> = Presentar/Cobrar ' +
                '1 Cta. <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada/Anulada.'
              
                'MONTOCUOTA'#9'12'#9'Monto~Cuota'#9'T'#9'<N I> = NO Incluir. <P1C> = Presenta' +
                'r/Cobrar 1 Cta. <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada' +
                '/Anulada.'
              
                'Estado1'#9'4'#9'N I'#9'F'#9'<N I> = NO Incluir. <P1C> = Presentar/Cobrar 1 C' +
                'ta. <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada/Anulada.'
              
                'Estado2'#9'4'#9'P1C'#9'F'#9'<N I> = NO Incluir. <P1C> = Presentar/Cobrar 1 C' +
                'ta. <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada/Anulada.'
              
                'Estado3'#9'4'#9'PTO'#9'F'#9'<N I> = NO Incluir. <P1C> = Presentar/Cobrar 1 C' +
                'ta. <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada/Anulada.'
              
                'NROCUOTA'#9'2'#9'C'#186'~Op'#9'T'#9'<N I> = NO Incluir. <P1C> = Presentar/Cobrar ' +
                '1 Cta. <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada/Anulada.'
              
                'CuotaPag'#9'2'#9'C'#170'~Pag'#9'T'#9'<N I> = NO Incluir. <P1C> = Presentar/Cobrar' +
                ' 1 Cta. <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada/Anulada' +
                '.'
              
                'TotalOp'#9'8'#9'Total~Operaci'#243'n'#9'T'#9'<N I> = NO Incluir. <P1C> = Presenta' +
                'r/Cobrar 1 Cta. <PTO> = Presentar/Cobrar Todo. <R/A> = Rechazada' +
                '/Anulada.')
            IniAttributes.Delimiter = ';;'
            TitleColor = 15461355
            FixedCols = 0
            ShowHorzScrollBar = False
            EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm, ecoDisableDateTimePicker, ecoDisableEditorIfReadOnly]
            Align = alClient
            BorderStyle = bsNone
            Color = 14680031
            DataSource = dsPresConc
            EditCalculated = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter, dgFooter3DCells]
            ParentFont = False
            ParentShowHint = False
            RowHeightPercent = 130
            ShowHint = False
            TabOrder = 1
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 4
            TitleButtons = False
            UseTFields = False
            OnCalcCellColors = gPCL_MovsCalcCellColors
            OnDblClick = gPCL_MovsDblClick
            OnExit = gPCL_MovsExit
            OnKeyDown = gPCL_MovsKeyDown
            OnUpdateFooter = gPCL_MovsUpdateFooter
            FooterColor = 15461355
            FooterCellColor = 15323601
            PaintOptions.ActiveRecordColor = clInfoBk
          end
          object gbTotales_PCL: TRzGroupBox
            Left = 0
            Top = 311
            Width = 784
            Height = 153
            Align = alBottom
            Alignment = taCenter
            BorderOuter = fsFlatRounded
            Caption = 'Totales'
            Color = 15269875
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GradientColorStyle = gcsCustom
            GradientColorStart = 15329769
            GradientColorStop = clWhite
            GroupStyle = gsBanner
            ParentFont = False
            TabOrder = 2
            VisualStyle = vsGradient
            object bvlProvLQ: TBevel
              Left = 506
              Top = 37
              Width = 195
              Height = 20
              Shape = bsFrame
            end
            object lblProvPCL: TLabel
              Left = 459
              Top = 22
              Width = 45
              Height = 13
              Caption = 'E&ntidad:'
              FocusControl = edtProveedorPCL
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblProveedorLQ: TDBText
              Left = 509
              Top = 39
              Width = 188
              Height = 14
              DataField = 'NombreProveedor'
              DataSource = dsLiqPreCon
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lblComprobantePCL: TLabel
              Left = 204
              Top = 22
              Width = 80
              Height = 13
              Caption = 'Co&mprobante:'
              FocusControl = edtComprobantePCL
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblPeriodoPCL: TLabel
              Left = 309
              Top = 22
              Width = 46
              Height = 13
              Caption = 'P&eriodo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblTotalPCL: TLabel
              Left = 6
              Top = 57
              Width = 70
              Height = 26
              AutoSize = False
              Caption = 'Total Liquidaci'#243'n: '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object lblNoCompPCL: TLabel
              Left = 309
              Top = 57
              Width = 79
              Height = 26
              AutoSize = False
              Caption = 'No '#13'Computables:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object lblPercepPCL: TLabel
              Left = 6
              Top = 104
              Width = 92
              Height = 27
              AutoSize = False
              Caption = 'Percepciones y '#13#10'pagos a cta IVA:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object lblPrcComPCL: TLabel
              Left = 204
              Top = 57
              Width = 68
              Height = 26
              AutoSize = False
              Caption = 'Procentaje'#13'Comisi'#243'n:'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object lblRetGanPCL: TLabel
              Left = 410
              Top = 57
              Width = 69
              Height = 26
              AutoSize = False
              Caption = 'Retenci'#243'n'#13#10'Ganancias:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object lblRetIBtPCL: TLabel
              Left = 508
              Top = 57
              Width = 82
              Height = 26
              AutoSize = False
              Caption = 'Retenci'#243'n de'#13#10'Ing. Brutos:'
              FocusControl = edtRetIBtPCL
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object lblRetLHPCL: TLabel
              Left = 612
              Top = 57
              Width = 70
              Height = 26
              AutoSize = False
              Caption = 'Retenci'#243'n'#13#10'Lote Hogar:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object lblNetoPCL: TLabel
              Left = 136
              Top = 104
              Width = 40
              Height = 27
              AutoSize = False
              Caption = 'Monto '#13#10'Neto:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblIvaTGPCL: TLabel
              Left = 228
              Top = 104
              Width = 53
              Height = 26
              Caption = 'IVA Tasa '#13#10'General:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object lblIvaTDPCL: TLabel
              Left = 321
              Top = 104
              Width = 63
              Height = 26
              Caption = 'IVA Tasa'#13#10'Diferencial:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object lblIvaOTPCL: TLabel
              Left = 409
              Top = 104
              Width = 54
              Height = 26
              Caption = 'IVA Otras'#13#10'Tasas:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object lblFechaPCL: TLabel
              Left = 373
              Top = 22
              Width = 36
              Height = 13
              Caption = '&Fecha:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblComTarMutPCL: TLabel
              Left = 107
              Top = 57
              Width = 54
              Height = 26
              Caption = 'Comisi'#243'n Entidad:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object lblEmprePCL: TLabel
              Left = 6
              Top = 22
              Width = 52
              Height = 13
              Caption = '&Empresa:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblDetObsPCL: TLabel
              Left = 508
              Top = 104
              Width = 86
              Height = 26
              Caption = '&Detalles/'#13'Observaci'#243'nes:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 2894934
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object edtProveedorPCL: TwwDBEdit
              Left = 458
              Top = 37
              Width = 45
              Height = 19
              BorderStyle = bsNone
              DataField = 'Proveedor'
              DataSource = dsLiqPreCon
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 4
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
            end
            object edtComprobantePCL: TwwDBEdit
              Left = 204
              Top = 37
              Width = 98
              Height = 19
              BorderStyle = bsNone
              DataField = 'NroPresConc'
              DataSource = dsLiqPreCon
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnExit = edtComprobantePCLExit
              OnKeyDown = cbEmpresaPCLKeyDown
            end
            object edtPeriodoPCL: TwwDBDateTimePicker
              Left = 309
              Top = 37
              Width = 55
              Height = 19
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'Tahoma'
              CalendarAttributes.Font.Style = []
              DataField = 'Periodo'
              DataSource = dsLiqPreCon
              Epoch = 1950
              ButtonEffects.Transparent = True
              ButtonEffects.Flat = True
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              ShowButton = False
              TabOrder = 2
              UnboundDataType = wwDTEdtDate
              DisplayFormat = 'mm/yy'
              OnKeyDown = cbEmpresaPCLKeyDown
            end
            object edtTotalPCL: TwwDBEdit
              Left = 6
              Top = 85
              Width = 88
              Height = 19
              BorderStyle = bsNone
              DataField = 'Total'
              DataSource = dsLiqPreCon
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 5
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
              OnKeyPress = edtTotalPCLKeyPress
            end
            object edtNoCompPCL: TwwDBEdit
              Left = 309
              Top = 85
              Width = 88
              Height = 19
              AutoFillDate = False
              BorderStyle = bsNone
              DataField = 'NoComputables'
              DataSource = dsLiqPreCon
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 8
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
              OnKeyPress = edtTotalPCLKeyPress
            end
            object edtPercepPCL: TwwDBEdit
              Left = 57
              Top = 132
              Width = 75
              Height = 19
              AutoFillDate = False
              BorderStyle = bsNone
              DataField = 'RetIva'
              DataSource = dsLiqPreCon
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 14
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
              OnKeyPress = edtTotalPCLKeyPress
            end
            object edtPrcComPCL: TwwDBEdit
              Left = 204
              Top = 85
              Width = 88
              Height = 19
              TabStop = False
              AutoFillDate = False
              BorderStyle = bsNone
              DataField = 'PrcComP'
              DataSource = dsLiqPreCon
              EditAlignment = eaRightAlignEditing
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 7
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
              OnKeyPress = edtTotalPCLKeyPress
            end
            object edtAlcPerPCL: TwwDBEdit
              Left = 6
              Top = 132
              Width = 47
              Height = 19
              AutoFillDate = False
              BorderStyle = bsNone
              DataField = 'AlcPercep'
              DataSource = dsLiqPreCon
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 13
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
              OnKeyPress = edtTotalPCLKeyPress
            end
            object edtRetGanPCL: TwwDBEdit
              Left = 410
              Top = 85
              Width = 88
              Height = 19
              AutoFillDate = False
              BorderStyle = bsNone
              DataField = 'RetGan'
              DataSource = dsLiqPreCon
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 9
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
              OnKeyPress = edtTotalPCLKeyPress
            end
            object edtRetIBtPCL: TwwDBEdit
              Left = 508
              Top = 85
              Width = 88
              Height = 19
              AutoFillDate = False
              BorderStyle = bsNone
              DataField = 'RetIBt'
              DataSource = dsLiqPreCon
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 10
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
              OnKeyPress = edtTotalPCLKeyPress
            end
            object edtRetLHPCL: TwwDBEdit
              Left = 612
              Top = 85
              Width = 88
              Height = 19
              AutoFillDate = False
              BorderStyle = bsNone
              DataField = 'RetLH'
              DataSource = dsLiqPreCon
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 11
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
              OnKeyPress = edtTotalPCLKeyPress
            end
            object edtNroPerPCL: TwwDBEdit
              Left = 100
              Top = 109
              Width = 32
              Height = 19
              AutoFillDate = False
              BorderStyle = bsNone
              DataField = 'NroRegPrc'
              DataSource = dsLiqPreCon
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameBump
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 12
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
              OnKeyPress = edtTotalPCLKeyPress
            end
            object edtNetoPCL: TwwDBEdit
              Left = 135
              Top = 132
              Width = 88
              Height = 19
              AutoFillDate = False
              BorderStyle = bsNone
              DataField = 'Neto'
              DataSource = dsLiqPreCon
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 15
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
              OnKeyPress = edtTotalPCLKeyPress
            end
            object edtIvaTGPCL: TwwDBEdit
              Left = 227
              Top = 132
              Width = 88
              Height = 19
              BorderStyle = bsNone
              DataField = 'MtoIvaAlc1'
              DataSource = dsLiqPreCon
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 16
              UnboundDataType = wwDefault
              UnboundAlignment = taRightJustify
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
              OnKeyPress = edtTotalPCLKeyPress
            end
            object edtIvaTDPCL: TwwDBEdit
              Left = 320
              Top = 132
              Width = 86
              Height = 19
              BorderStyle = bsNone
              DataField = 'MtoIvaAlc2'
              DataSource = dsLiqPreCon
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 17
              UnboundDataType = wwDefault
              UnboundAlignment = taRightJustify
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
              OnKeyPress = edtTotalPCLKeyPress
            end
            object edtIvaOTPCL: TwwDBEdit
              Left = 410
              Top = 132
              Width = 88
              Height = 19
              BorderStyle = bsNone
              DataField = 'MtoIvaOAlc'
              DataSource = dsLiqPreCon
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 18
              UnboundDataType = wwDefault
              UnboundAlignment = taRightJustify
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
              OnKeyPress = edtTotalPCLKeyPress
            end
            object btnCancel_PCL: TRzBitBtn
              Left = 712
              Top = 121
              Width = 71
              Height = 30
              Caption = 'Cancelar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 22
              OnClick = btnCancel_PCLClick
              Glyph.Data = {
                36060000424D3606000000000000360400002800000020000000100000000100
                08000000000000020000630B0000630B00000001000000000000000000003300
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
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8A5D8
                D8D8D8D8A5E8E8E8E8E8E8E8E8E8AC8181818181ACE8E8E8E8E8E8E8E8D890B4
                B4B4B4B490D8E8E8E8E8E8E8E881E2ACACACACACE281E8E8E8E8E8E8D8B4B490
                D8D8D8D8B4B4D8E8E8E8E8E881ACACE281818181ACAC81E8E8E8E8D8B4B4D8A5
                E8E8E8E8D8B4B4D8E8E8E881ACAC81ACE8E8E8E881ACAC81E8E8A590B4D8E8E8
                E8E8E8D8B4D8B490A5E8ACE2AC81E8E8E8E8E881AC81ACE2ACE8D8B490A5E8E8
                E8E8D8B4D8E8D8B4D8E881ACE2ACE8E8E8E881AC81E881AC81E8D8B4D8E8E8E8
                E8D8B4D8E8E8D8B4D8E881AC81E8E8E8E881AC81E8E881AC81E8D8B4D8E8E8E8
                D8B4D8E8E8E8D8B4D8E881AC81E8E8E881AC81E8E8E881AC81E8D8B4D8E8E8D8
                B4D8E8E8E8E8D8B4D8E881AC81E8E881AC81E8E8E8E881AC81E8D8B4D8E8D8B4
                D8E8E8E8E8A590B4D8E881AC81E881AC81E8E8E8E8ACE2AC81E8A590B4D8B4D8
                E8E8E8E8E8D8B490A5E8ACE2AC81AC81E8E8E8E8E881ACE2ACE8E8D8B4B4D8E8
                E8E8E8A5D8B4B4D8E8E8E881ACAC81E8E8E8E8AC81ACAC81E8E8E8E8D8B4B4D8
                D8D8D890B4B4D8E8E8E8E8E881ACAC81818181E2ACAC81E8E8E8E8E8E8D890B4
                B4B4B4B490D8E8E8E8E8E8E8E881E2ACACACACACE281E8E8E8E8E8E8E8E8A5D8
                D8D8D8D8A5E8E8E8E8E8E8E8E8E8AC8181818181ACE8E8E8E8E8}
              NumGlyphs = 2
            end
            object btnPrn_PCL: TRzBitBtn
              Left = 712
              Top = 76
              Width = 71
              Height = 30
              Hint = 'imprimir resultado de la conciliaci'#243'n'
              Caption = 'Imprimir operaci'#243'n'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 21
              OnClick = btnPrn_PCLClick
              Glyph.Data = {
                36060000424D3606000000000000360400002800000020000000100000000100
                08000000000000020000730E0000730E00000001000000000000000000003300
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
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
                09090909090909E8E8E8E8E88181818181818181818181E8E8E8E85E89898989
                89898989895E5E09E8E8E8E2ACACACACACACACACACE2E281E8E85E5E5E5E5E5E
                5E5E5E5E5E5E095E09E8E2E2E2E2E2E2E2E2E2E2E2E281E281E85ED789898989
                8989898989895E0909E8E2E8ACACACACACACACACACACE28181E85ED789898989
                181289B490895E5E09E8E2E8ACACACACE281ACE281ACE2E281E85ED7D7D7D7D7
                D7D7D7D7D7D75E5E5E09E2E8E8E8E8E8E8E8E8E8E8E8E2E2E2815ED789898989
                8989898989895E5E5E09E2E8ACACACACACACACACACACE2E2E281E85E5E5E5E5E
                5E5E5E5E5E89895E5E09E8E2E2E2E2E2E2E2E2E2E2ACACE2E281E8E85ED7D7D7
                D7D7D7D7D75E89895E09E8E8E2E8E8E8E8E8E8E8E8E2ACACE281E8E8E85ED7E3
                E3E3E3E3D75E5E5E09E8E8E8E8E2E8ACACACACACE8E2E2E281E8E8E8E85ED7D7
                D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85ED7
                E3E3E3E3E3D75EE8E8E8E8E8E8E8E2E8ACACACACACE8E2E8E8E8E8E8E8E85ED7
                D7D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85E
                5E5E5E5E5E5E5E5EE8E8E8E8E8E8E8E2E2E2E2E2E2E2E2E2E8E8E8E8E8E8E8E8
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
              NumGlyphs = 2
            end
            object edtFechaPCL: TwwDBDateTimePicker
              Left = 373
              Top = 37
              Width = 78
              Height = 19
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'Tahoma'
              CalendarAttributes.Font.Style = []
              DataField = 'FechaF'
              DataSource = dsLiqPreCon
              Epoch = 1950
              ButtonEffects.Transparent = True
              ButtonEffects.Flat = True
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              ShowButton = True
              TabOrder = 3
              UnboundDataType = wwDTEdtDate
              DisplayFormat = 'dd/mm/yy'
              OnKeyDown = cbEmpresaPCLKeyDown
            end
            object edtComisionPCL: TwwDBEdit
              Left = 107
              Top = 85
              Width = 88
              Height = 19
              BorderStyle = bsNone
              DataField = 'Comision'
              DataSource = dsLiqPreCon
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 6
              UnboundDataType = wwDefault
              UnboundAlignment = taRightJustify
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
              OnKeyPress = edtTotalPCLKeyPress
            end
            object cbEmpresaPCL: TwwDBLookupCombo
              Left = 6
              Top = 37
              Width = 189
              Height = 19
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              BorderStyle = bsNone
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'NOMBREEMPRESA'#9'20'#9'Empresa'#9'F')
              DataField = 'IdEmpresa'
              DataSource = dsLiqPreCon
              LookupTable = dmGestion.Empresas
              LookupField = 'IDEMPRESA'
              Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
              Style = csDropDownList
              ButtonEffects.Transparent = True
              ButtonEffects.Flat = True
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 0
              AutoDropDown = True
              ShowButton = True
              UseTFields = False
              PreciseEditRegion = False
              AllowClearKey = True
              ShowMatchText = True
              OnKeyDown = cbEmpresaPCLKeyDown
            end
            object btnSave_PCL: TRzBitBtn
              Left = 712
              Top = 35
              Width = 71
              Height = 30
              Caption = 'Grabar operaci'#243'n'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 20
              OnClick = btnSave_PCLClick
              Glyph.Data = {
                36060000424D3606000000000000360400002800000020000000100000000100
                08000000000000020000730E0000730E00000001000000000000000000003300
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
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
                090909090909090909E8E8E881818181818181818181818181E8E809101009E3
                1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
                1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
                1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
                E3E3E3E3E309101009E8E881ACAC81E3E3E3E3E3E381ACAC81E8E80910101009
                090909090910101009E8E881ACACAC818181818181ACACAC81E8E80910101010
                101010101010101009E8E881ACACACACACACACACACACACAC81E8E80910100909
                090909090909101009E8E881ACAC8181818181818181ACAC81E8E8091009D7D7
                D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E8091009D709
                0909090909D7091009E8E881AC81D7818181818181D781AC81E8E8091009D7D7
                D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E809E309D709
                0909090909D7090909E8E881E381D7818181818181D7818181E8E8091009D7D7
                D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E80909090909
                090909090909090909E8E88181818181818181818181818181E8E8E8E8E8E8E8
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
              NumGlyphs = 2
            end
            object edtDetObsPCL: TwwDBEdit
              Left = 508
              Top = 132
              Width = 192
              Height = 19
              AutoFillDate = False
              BorderStyle = bsNone
              DataField = 'Detalle'
              DataSource = dsLiqPreCon
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameBump
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              TabOrder = 19
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = cbEmpresaPCLKeyDown
              OnKeyPress = edtTotalPCLKeyPress
            end
          end
        end
        object tsConsultasLiq: TRzTabSheet
          Color = 14680063
          Caption = 'Consulta liquidaciones'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object pnlTopCons: TRzPanel
            Left = 0
            Top = 0
            Width = 784
            Height = 35
            Align = alTop
            BorderInner = fsFlatRounded
            BorderOuter = fsNone
            GradientColorStyle = gcsCustom
            GradientColorStart = 14079702
            GradientColorStop = 15726840
            GridColor = 14089935
            GridStyle = gsSolidLines
            ParentColor = True
            ShowGrid = True
            TabOrder = 0
            VisualStyle = vsGradient
            object lblEntCons: TLabel
              Left = 206
              Top = 19
              Width = 45
              Height = 13
              Caption = '&Entidad:'
              FocusControl = cbEnt_Con
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblHastaC: TLabel
              Left = 521
              Top = 19
              Width = 36
              Height = 13
              Caption = '&Hasta:'
              FocusControl = edtHastaC
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblDesdeC: TLabel
              Left = 400
              Top = 19
              Width = 38
              Height = 13
              Caption = '&Desde:'
              FocusControl = edtDesdeC
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblSucCons: TLabel
              Left = 16
              Top = 19
              Width = 51
              Height = 13
              Caption = '&Sucursal:'
              FocusControl = cbSuc_Con
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object cbEnt_Con: TRzComboBox
              Left = 254
              Top = 10
              Width = 139
              Height = 21
              Style = csDropDownList
              Color = 14680063
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FlatButtons = True
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ItemHeight = 13
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              Sorted = True
              TabOnEnter = True
              TabOrder = 1
              OnChange = cbEnt_ConChange
            end
            object btnBusCons: TRzBitBtn
              Left = 640
              Top = 2
              Width = 30
              Height = 30
              Hint = 'Buscar movimientos.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = btnBusConsClick
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
            end
            object edtDesdeC: TRzDateTimeEdit
              Left = 440
              Top = 10
              Width = 72
              Height = 21
              CaptionTodayBtn = 'Hoy'
              Date = 39289.000000000000000000
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 14680063
              FlatButtons = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              TabOnEnter = True
              TabOrder = 2
            end
            object edtHastaC: TRzDateTimeEdit
              Left = 558
              Top = 10
              Width = 73
              Height = 21
              CaptionTodayBtn = 'Hoy'
              Date = 39289.000000000000000000
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 14680063
              FlatButtons = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              TabOnEnter = True
              TabOrder = 3
            end
            object btnExpCons: TRzBitBtn
              Left = 676
              Top = 2
              Width = 30
              Height = 30
              Hint = 'exportar movimientos.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              OnClick = btnExpConsClick
              Glyph.Data = {
                36060000424D3606000000000000360400002800000020000000100000000100
                08000000000000020000A30E0000A30E00000001000000000000000000003300
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
                E8E8E8E809E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8
                E8E8E8E80909E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8090909
                09090909090909E8E8E8E8E8E881818181818181818181E8E8E8E8E8E8E8E8E8
                E8E8E8E80909E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8
                E8E8E8E809E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E85E5E5E5E5E5E
                5EE8E8A378787878787881818181818181E8E8818181818181815ED7D7D7D7D7
                5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D7D7D7D7
                5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D7D7D7D7
                5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D7D7D7D7
                5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D75E5E5E
                5EE8E8A3D5D5A3A3A3A381E8E881818181E8E881ACAC818181815ED7D75EE35E
                E8E8E8A3D5D5A3D678E881E8E881E381E8E8E881ACAC81AC81E85ED7D75E5EE8
                E8E8E8A3D5D5A378E8E881E8E88181E8E8E8E881ACAC8181E8E85E5E5E5EE8E8
                E8E8E8A3A3A3A3E8E8E881818181E8E8E8E8E881818181E8E8E8}
              NumGlyphs = 2
            end
            object cbSuc_Con: TRzComboBox
              Left = 69
              Top = 10
              Width = 127
              Height = 21
              Style = csDropDownList
              Color = 14680063
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FlatButtons = True
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ItemHeight = 13
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              Sorted = True
              TabOnEnter = True
              TabOrder = 0
              OnChange = cbSuc_ConChange
            end
          end
          object gConsPCL: TwwDBGrid
            Left = 0
            Top = 35
            Width = 784
            Height = 429
            Hint = 'doble click para ver'
            ControlType.Strings = (
              'FECHAF;CustomEdit;ebItemsConsPCL;T')
            Selected.Strings = (
              'IDNUMEROLIQ'#9'4'#9'N'#186'~Liq'#9'T'
              'TARJETA'#9'10'#9'Detalle'#9'T'#9'Entidad'
              'IDEMPRESA'#9'2'#9'E'#170#9'T'#9'Entidad'
              'DETSUC'#9'2'#9'S'#170#9'T'#9'Entidad'
              'DESCCORTA'#9'5'#9'Tipo'#9'T'#9'Operaci'#243'n'
              'NROFACTURA'#9'13'#9'Comprobante'#9'T'#9'Operaci'#243'n'
              'FECHAF'#9'8'#9'Presentaci'#243'n'#9'T'#9'Operaci'#243'n'
              'FECPRELIQDESDE'#9'8'#9'Desde'#9'T'#9'Periodo'
              'FECPRELIQHASTA'#9'8'#9'Hasta'#9'T'#9'Periodo'
              'CANTARTIC'#9'2'#9'OP'#9'T'#9'Totales'
              'COMISION'#9'11'#9'Comisi'#243'n'#9'T'#9'Totales'
              'TOTAL'#9'11'#9'Presentado'#9'T'#9'Totales'
              'NETO'#9'10'#9'Neto'#9'T'#9'Totales'
              'ESTADO'#9'2'#9'E'#186#9'T'#9'Pagos'
              'FECHAPAG'#9'8'#9'Fecha'#9'T'#9'Pagos'
              'NRORECPAGO'#9'13'#9'N'#186' Recibo'#9'T'#9'Pagos')
            IniAttributes.Delimiter = ';;'
            TitleColor = 15726840
            FixedCols = 0
            ShowHorzScrollBar = True
            EditControlOptions = [ecoSearchOwnerForm, ecoDisableDateTimePicker, ecoDisableEditorIfReadOnly]
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsqVerMovPCL
            DragCursor = crDefault
            EditCalculated = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgShowFooter, dgFooter3DCells, dgHideBottomDataLine]
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clNavy
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            LineColors.DataColor = clMaroon
            OnDblClick = gConsPCLDblClick
            IndicatorIconColor = clRed
            FooterColor = 15000817
            FooterCellColor = 15000817
            DragVertOffset = 10
            PaintOptions.BackgroundDrawStyle = bdsCenter
            PaintOptions.ActiveRecordColor = 174
          end
          object ebItemsConsPCL: TwwExpandButton
            Left = 259
            Top = 66
            Width = 66
            Height = 16
            DisableThemes = False
            Grid = gItemsPCL
            DataField = 'FECHAF'
            DataSource = dsqVerMovPCL
            ShowText = True
            TabOrder = 2
            ButtonAlignment = taRightJustify
          end
          object gItemsPCL: TwwDBGrid
            Left = 262
            Top = 81
            Width = 363
            Height = 119
            Selected.Strings = (
              'TALLE'#9'5'#9'N'#186'OP'#9'F'
              'IDALCIVA'#9'5'#9'N'#186' C'#9'F'
              'NOMBRE'#9'20'#9'Cliente'#9'F'
              'CANTIDAD'#9'4'#9'Cuota'#9'F'
              'PRECIOFINAL'#9'8'#9'Monto'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 12713983
            FixedCols = 0
            ShowHorzScrollBar = True
            Color = 12713983
            Ctl3D = False
            DataSource = dsqVerItmPCL
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyOptions = [dgEnterToTab]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            Visible = False
            OnDblClick = gItemsPCLDblClick
          end
        end
        object tsCobros: TRzTabSheet
          Color = 15461355
          Caption = 'Ingreso de Cobros a Mutuales'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object gPagoMutual: TwwDBGrid
            Left = 0
            Top = 40
            Width = 784
            Height = 291
            ControlType.Strings = (
              'Selected;CheckBox;True;False')
            Selected.Strings = (
              'IDLIQUIDACION'#9'10'#9'N'#186' LQ'#9'F'
              'IDSUCOPER'#9'4'#9'S'#186#9'F'
              'TARJETA'#9'25'#9'Entidad'#9'T'
              'FECHA'#9'10'#9'Fecha'#9'T'
              'CANTOP'#9'3'#9#186'OP'#9'T'
              'NETO'#9'9'#9'Neto'#9'T'
              'COMISION'#9'9'#9'Comisi'#243'n'#9'T'
              'TOTAL'#9'10'#9'Total'#9'F'
              'TIPOOP'#9'9'#9'TO'#9'F'
              'NROOPERACION'#9'14'#9'N'#250'mero'#9'T'
              'Selected'#9'12'#9#191'Agregar?'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 15461355
            OnMultiSelectRecord = gPagoMutualMultiSelectRecord
            FixedCols = 0
            ShowHorzScrollBar = True
            EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DataSource = dsqPagoMutual
            EditCalculated = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
            ParentFont = False
            TabOrder = 1
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clMaroon
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnDblClick = gPagoMutualDblClick
            OnKeyDown = gPagoMutualKeyDown
          end
          object gbPagoMutual: TRzGroupBox
            Left = 0
            Top = 331
            Width = 784
            Height = 133
            Align = alBottom
            Caption = 'Ingreso del pago de liquidaciones presentadas a Mutuales'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GroupStyle = gsBanner
            ParentColor = True
            ParentFont = False
            TabOrder = 2
            VisualStyle = vsGradient
            object lblNomPro: TDBText
              Left = 8
              Top = 38
              Width = 212
              Height = 14
              DataField = 'NomPro'
              DataSource = dsPagoMutual
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblNroRecPag: TLabel
              Left = 232
              Top = 36
              Width = 94
              Height = 13
              Caption = '&Recibo de Cobro:'
              FocusControl = edtNroRecPag
              Font.Charset = ANSI_CHARSET
              Font.Color = 5855488
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object lblFecPag: TLabel
              Left = 232
              Top = 85
              Width = 36
              Height = 13
              Caption = '&Fecha:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 5855488
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object lblTotLiq: TLabel
              Left = 343
              Top = 36
              Width = 95
              Height = 13
              AutoSize = False
              Caption = 'Total Liquidado: '
              Font.Charset = ANSI_CHARSET
              Font.Color = 5855488
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object lblTotRetIB: TLabel
              Left = 447
              Top = 24
              Width = 96
              Height = 25
              AutoSize = False
              Caption = 'Retencion  de'#13'Ingresos Brutos: '
              Font.Charset = ANSI_CHARSET
              Font.Color = 5855488
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
              WordWrap = True
            end
            object lblTotComi: TLabel
              Left = 343
              Top = 85
              Width = 59
              Height = 13
              AutoSize = False
              Caption = 'Comisi'#243'n:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 5855488
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
              WordWrap = True
            end
            object lblTotNeto: TLabel
              Left = 551
              Top = 36
              Width = 61
              Height = 12
              AutoSize = False
              Caption = 'A Cobrar:'
              Font.Charset = ANSI_CHARSET
              Font.Color = 5855488
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object lblCantOP: TLabel
              Left = 8
              Top = 82
              Width = 31
              Height = 13
              Caption = 'N'#186' OP'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblTotRetLH: TLabel
              Left = 447
              Top = 72
              Width = 75
              Height = 26
              AutoSize = False
              Caption = 'Retenciones '#13'Lote Hogar: '
              Font.Charset = ANSI_CHARSET
              Font.Color = 5855488
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
              WordWrap = True
            end
            object edtNroRecPag: TwwDBEdit
              Left = 232
              Top = 52
              Width = 105
              Height = 19
              Hint = 'ingrese n'#186' de recibo oficial'
              BorderStyle = bsNone
              DataField = 'NroRecibo'
              DataSource = dsPagoMutual
              Font.Charset = ANSI_CHARSET
              Font.Color = clPurple
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnExit = edtNroRecPagExit
              OnKeyDown = edtNroRecPagKeyDown
            end
            object edtlFecPag: TwwDBDateTimePicker
              Left = 232
              Top = 100
              Width = 82
              Height = 19
              Hint = 'fecha de cobro'
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'Tahoma'
              CalendarAttributes.Font.Style = []
              DataField = 'FechaPag'
              DataSource = dsPagoMutual
              Epoch = 1950
              ButtonEffects.Transparent = True
              ButtonEffects.Flat = True
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              Font.Charset = ANSI_CHARSET
              Font.Color = clPurple
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              ShowButton = True
              TabOrder = 1
              UnboundDataType = wwDTEdtDate
              DisplayFormat = 'dd/mm/yy'
              OnKeyDown = edtNroRecPagKeyDown
            end
            object edtTotLiq: TwwDBEdit
              Left = 343
              Top = 52
              Width = 98
              Height = 19
              BorderStyle = bsNone
              DataField = 'TotNeto'
              DataSource = dsPagoMutual
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clPurple
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = edtNroRecPagKeyDown
              OnKeyPress = edtRetIBKeyPress
            end
            object btnSavePago: TRzBitBtn
              Left = 654
              Top = 47
              Width = 118
              Hint = 'grabar recibo de pago'
              Caption = 'Ingresar cobro'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 7
              OnClick = btnSavePagoClick
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E000000000000000000000000006C4C6C
                E4C4E4D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8
                D8D8B8D8D8C8D854545400800000FF0000FF0000FF0000FF0000FF0000FF0000
                FF0000FF0000FF0000FF0000FF0000FF0000FF0060F06060506000700000FF00
                6C6F00607F00607F006C6F0000FF0024B70018C700687700607F006877001CBF
                0000FF006CEC6C60506000700000FF00E40000CC0000CC0000F0000000FF0050
                6000388000E40000CC0000DC00003C780000FF006CEC6C60506000700000FF00
                D80000C00000E000005C870000FF0020BF0010D7008C2800D00000D000003880
                0000FF006CEC6C60506000700000FF00D80000D4000000E70008D70000FF0020
                BF0020BF0000FF00883000D8000038800000FF006CEC6C60506000700000FF00
                D80000D8000000FF00FF000000FF004C68004478004C6800289800E000003880
                0000FF006CEC6C60506000700000FF00D80000C00000E00000F0000000FF0050
                60004C680014D700249800E0000038800000FF006CEC6C60506000700000FF00
                D80000C8000090200000FF0000FF0000FF0000FF0000E700E40000D000003880
                0000FF006CEC6C60506000700000FF00D80000D8000000FF00A8000000FF0050
                6000388000F40000D00000D0000038800000FF006CEC6C60506000700000FF00
                D80000D8000000FF00FF000000FF004C680044780038800018A800E000003880
                0000FF006CEC6C60506000700000FF00D80000D4000000E70008D70000FF0020
                BF0020BF0000FF00883000D8000038800000FF006CEC6C60506000700000FF00
                D80000C00000E000005C870000FF0020BF0010D7008C2800D00000D000003880
                0000FF006CEC6C60506000700000FF00E40000CC0000CC0000F0000000FF0050
                6000388000E40000CC0000DC00003C780000FF006CEC6C60506000700000FF00
                6C6F00607F00607F006C6F0000FF0024B70018C700687700607F006877001CBF
                0000FF0078F8786C5C6C00700000FF0000FF0000FF0000FF0000FF0000FF0000
                FF0000FF0000FF0000FF0000FF0000FF0000FF00007400000000}
            end
            object edtRetIB: TwwDBEdit
              Left = 447
              Top = 52
              Width = 98
              Height = 19
              BorderStyle = bsNone
              DataField = 'TotRetIB'
              DataSource = dsPagoMutual
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clPurple
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = edtNroRecPagKeyDown
              OnKeyPress = edtRetIBKeyPress
            end
            object edtTotCom: TwwDBEdit
              Left = 343
              Top = 101
              Width = 98
              Height = 19
              BorderStyle = bsNone
              DataField = 'TotComi'
              DataSource = dsPagoMutual
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clPurple
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = edtNroRecPagKeyDown
              OnKeyPress = edtRetIBKeyPress
            end
            object edtTotNeto: TwwDBEdit
              Left = 551
              Top = 52
              Width = 97
              Height = 19
              BorderStyle = bsNone
              DataField = 'TotLiqui'
              DataSource = dsPagoMutual
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clPurple
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = edtNroRecPagKeyDown
              OnKeyPress = edtRetIBKeyPress
            end
            object btnCancelPago: TRzBitBtn
              Left = 654
              Top = 94
              Width = 118
              Hint = 'cancelar recibo de pagos'
              Caption = 'Cancelar operaci'#243'n'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              OnClick = btnCancelPagoClick
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
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8A5D8
                D8D8D8D8A5E8E8E8E8E8E8E8E8E8AC8181818181ACE8E8E8E8E8E8E8E8D890B4
                B4B4B4B490D8E8E8E8E8E8E8E881E2ACACACACACE281E8E8E8E8E8E8D8B4B4B4
                B4B4B4B4B4B4D8E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8D8B4B4B4B4
                B4B4B4B4B4B4B4D8E8E8E881ACACACACACACACACACACAC81E8E8A590B4B4D7D7
                B4B4B4D7D7B4B490A5E8ACE2ACACD7D7ACACACD7D7ACACE2ACE8D8B4B4B4D7D7
                D7B4D7D7D7B4B4B4D8E881ACACACD7D7D7ACD7D7D7ACACAC81E8D8B4B4B4B4D7
                D7D7D7D7B4B4B4B4D8E881ACACACACD7D7D7D7D7ACACACAC81E8D8B4B4B4B4B4
                D7D7D7B4B4B4B4B4D8E881ACACACACACD7D7D7ACACACACAC81E8D8B4B4B4B4D7
                D7D7D7D7B4B4B4B4D8E881ACACACACD7D7D7D7D7ACACACAC81E8D8B4B4B4D7D7
                D7B4D7D7D7B4B4B4D8E881ACACACD7D7D7ACD7D7D7ACACAC81E8A590B4B4D7D7
                B4B4B4D7D7B4B490A5E8ACE2ACACD7D7ACACACD7D7ACACE2ACE8E8D8B4B4B4B4
                B4B4B4B4B4B4B4D8E8E8E881ACACACACACACACACACACAC81E8E8E8E8D8B4B4B4
                B4B4B4B4B4B4D8E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E8E8D890B4
                B4B4B4B490D8E8E8E8E8E8E8E881E2ACACACACACE281E8E8E8E8E8E8E8E8A5D8
                D8D8D8D8A5E8E8E8E8E8E8E8E8E8AC8181818181ACE8E8E8E8E8}
              NumGlyphs = 2
            end
            object edtRetLH: TwwDBEdit
              Left = 447
              Top = 100
              Width = 98
              Height = 19
              BorderStyle = bsNone
              DataField = 'TotRetLH'
              DataSource = dsPagoMutual
              EditAlignment = eaRightAlignEditing
              Font.Charset = ANSI_CHARSET
              Font.Color = clPurple
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Frame.Enabled = True
              Frame.Transparent = True
              Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
              Frame.FocusStyle = efsFrameRaised
              Frame.NonFocusStyle = efsFrameSingle
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
              OnKeyDown = edtNroRecPagKeyDown
              OnKeyPress = edtRetIBKeyPress
            end
          end
          object pnlTopCobMut: TRzPanel
            Left = 0
            Top = 0
            Width = 784
            Height = 40
            Align = alTop
            BorderOuter = fsFlatRounded
            Color = 15791348
            TabOrder = 0
            object lblSucPagMt: TLabel
              Left = 37
              Top = 1
              Width = 51
              Height = 13
              Caption = '&Sucursal:'
              FocusControl = cbSucPagM
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblEntPagMt: TLabel
              Left = 176
              Top = 1
              Width = 45
              Height = 13
              Caption = '&Entidad:'
              FocusControl = cbEntPagM
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object cbSucPagM: TRzComboBox
              Left = 36
              Top = 16
              Width = 118
              Height = 21
              Style = csDropDownList
              Color = 15791348
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FlatButtons = True
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ItemHeight = 13
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              Sorted = True
              TabOnEnter = True
              TabOrder = 0
              OnChange = cbSucPagMChange
            end
            object cbEntPagM: TRzComboBox
              Left = 175
              Top = 16
              Width = 118
              Height = 21
              Style = csDropDownList
              Color = 15791348
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FlatButtons = True
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ItemHeight = 13
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              Sorted = True
              TabOnEnter = True
              TabOrder = 1
              OnChange = cbEntPagMChange
            end
            object btnExpPag: TRzBitBtn
              Left = 346
              Top = 7
              Width = 30
              Height = 30
              Hint = 'exportar movimientos.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 2
              OnClick = btnExpPagClick
              Glyph.Data = {
                36060000424D3606000000000000360400002800000020000000100000000100
                08000000000000020000A30E0000A30E00000001000000000000000000003300
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
                E8E8E8E809E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8
                E8E8E8E80909E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8090909
                09090909090909E8E8E8E8E8E881818181818181818181E8E8E8E8E8E8E8E8E8
                E8E8E8E80909E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8
                E8E8E8E809E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E85E5E5E5E5E5E
                5EE8E8A378787878787881818181818181E8E8818181818181815ED7D7D7D7D7
                5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D7D7D7D7
                5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D7D7D7D7
                5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D7D7D7D7
                5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D75E5E5E
                5EE8E8A3D5D5A3A3A3A381E8E881818181E8E881ACAC818181815ED7D75EE35E
                E8E8E8A3D5D5A3D678E881E8E881E381E8E8E881ACAC81AC81E85ED7D75E5EE8
                E8E8E8A3D5D5A378E8E881E8E88181E8E8E8E881ACAC8181E8E85E5E5E5EE8E8
                E8E8E8A3A3A3A3E8E8E881818181E8E8E8E8E881818181E8E8E8}
              NumGlyphs = 2
            end
            object btnBusPag: TRzBitBtn
              Left = 305
              Top = 7
              Width = 30
              Height = 30
              Hint = 'Buscar movimientos impagos.'
              FrameColor = 7617536
              Color = 15791348
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = btnBusPagClick
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
            end
          end
        end
      end
    end
    object tsEntFinancieras: TRzTabSheet
      Hint = 'tarjetas y/o mutuales, ingreso de coeficientes '
      Color = 14017279
      Caption = '&Entidades / coeficientes'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbCoefT: TRzGroupBox
        Left = 377
        Top = 0
        Width = 407
        Height = 487
        Align = alRight
        Alignment = taCenter
        Caption = 'Coeficientes y planes habilitados por Entidad'
        Color = 15791348
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 16763594
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 0
        object gCoeficientes: TwwDBGrid
          Left = 0
          Top = 24
          Width = 407
          Height = 463
          ControlType.Strings = (
            'IdSucursal;CustomEdit;cbSucCtas;T')
          Selected.Strings = (
            'IdTarjeta'#9'2'#9#186'T'#9'F'
            'NroCuota'#9'8'#9'N'#250'mero~de Cuotas'#9'F'
            'IdSucursal'#9'20'#9'Sucursal'#9'F'
            'CoefPlan'#9'10'#9'Coeficiente~del Plan'#9'F'
            'MAXDCTO'#9'10'#9'Maximo~Descuento'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clWhite
          FixedCols = 1
          ShowHorzScrollBar = True
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsTarPlan
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
          OnKeyPress = gCoeficientesKeyPress
          IndicatorIconColor = clMaroon
        end
        object cbSucCtas: TwwDBComboBox
          Left = 92
          Top = 55
          Width = 144
          Height = 24
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          DataField = 'IdSucursal'
          DataSource = dsTarPlan
          DropDownCount = 8
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          ItemHeight = 0
          Sorted = False
          TabOrder = 1
          UnboundDataType = wwDefault
        end
      end
      object gbEntidades: TRzRadioGroup
        Left = 0
        Top = 0
        Width = 377
        Height = 487
        Align = alClient
        Alignment = taCenter
        Caption = 'Entidades financieras: Tarjetas, Mutuales.'
        Color = 15329769
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 16763594
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 1
        object lblNomEnt: TLabel
          Left = 5
          Top = 24
          Width = 87
          Height = 13
          Caption = 'Tarjeta/Mutual'
          FocusControl = edtNomEnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblTelAut: TLabel
          Left = 5
          Top = 60
          Width = 104
          Height = 13
          Caption = 'Tel Autorizaciones'
          FocusControl = edtTelAut
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblCodCom: TLabel
          Left = 128
          Top = 60
          Width = 94
          Height = 13
          Caption = 'C'#243'digo Comercio'
          FocusControl = edtCodCom
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblCodEnt: TLabel
          Left = 226
          Top = 60
          Width = 131
          Height = 13
          Caption = 'C'#243'digo en sistema Unix'
          FocusControl = edtCodEnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
        end
        object lblTipoEnt: TLabel
          Left = 215
          Top = 24
          Width = 69
          Height = 13
          Caption = 'Tipo Entidad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblIdEntidad: TRzDBLabel
          Left = 123
          Top = 24
          Width = 47
          Height = 17
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          DataField = 'IdTarjeta'
          DataSource = dsTarjetas
        end
        object cbTEntTar: TwwDBComboBox
          Left = 216
          Top = 38
          Width = 155
          Height = 20
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          BorderStyle = bsNone
          DataField = 'TIPOENT'
          DataSource = dsTarjetas
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          ItemHeight = 0
          Items.Strings = (
            'Tarjeta de Cr'#233'ditos'#9'1'
            'Mutual / Sindicatos'#9'2'
            'Financiaci'#243'n Propia'#9'3'
            'Convenios Especiales'#9'4'
            'Creditos internos'#9'5')
          ParentColor = True
          ParentFont = False
          Sorted = False
          TabOrder = 1
          UnboundDataType = wwDefault
          OnKeyDown = edtNomEntKeyDown
        end
        object edtNomEnt: TwwDBEdit
          Left = 5
          Top = 38
          Width = 165
          Height = 20
          BorderStyle = bsNone
          DataField = 'Tarjeta'
          DataSource = dsTarjetas
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtNomEntKeyDown
        end
        object edtTelAut: TwwDBEdit
          Left = 5
          Top = 75
          Width = 118
          Height = 20
          BorderStyle = bsNone
          DataField = 'TelAutorizacion'
          DataSource = dsTarjetas
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtNomEntKeyDown
        end
        object edtCodCom: TwwDBEdit
          Left = 136
          Top = 75
          Width = 86
          Height = 20
          BorderStyle = bsNone
          DataField = 'CodComercio'
          DataSource = dsTarjetas
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtNomEntKeyDown
        end
        object edtCodEnt: TwwDBEdit
          Left = 225
          Top = 75
          Width = 146
          Height = 20
          BorderStyle = bsNone
          DataField = 'CodEntidad'
          DataSource = dsTarjetas
          Font.Charset = ANSI_CHARSET
          Font.Color = clPurple
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtNomEntKeyDown
        end
        object navTarjetas: TRzDBNavigator
          Left = 7
          Top = 258
          Width = 248
          Height = 28
          DataSource = dsTarjetas
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
          BorderOuter = fsFlatRounded
          Color = 14017279
          TabOrder = 6
          TabStop = True
          Transparent = True
        end
        object btnImpCoefT: TRzBitBtn
          Left = 256
          Top = 256
          Width = 83
          Height = 31
          Hint = 'imprimir listado de coeficientes'
          Caption = 'Imprimir Coeficientes'
          Color = 13361901
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HighlightColor = 16026986
          HotTrack = True
          HotTrackColor = 3983359
          ParentFont = False
          TabOrder = 7
          OnClick = btnImpCoefTClick
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000730E0000730E00000001000000000000000000003300
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
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
            09090909090909E8E8E8E8E88181818181818181818181E8E8E8E85E89898989
            89898989895E5E09E8E8E8E2ACACACACACACACACACE2E281E8E85E5E5E5E5E5E
            5E5E5E5E5E5E095E09E8E2E2E2E2E2E2E2E2E2E2E2E281E281E85ED789898989
            8989898989895E0909E8E2E8ACACACACACACACACACACE28181E85ED789898989
            181289B490895E5E09E8E2E8ACACACACE281ACE281ACE2E281E85ED7D7D7D7D7
            D7D7D7D7D7D75E5E5E09E2E8E8E8E8E8E8E8E8E8E8E8E2E2E2815ED789898989
            8989898989895E5E5E09E2E8ACACACACACACACACACACE2E2E281E85E5E5E5E5E
            5E5E5E5E5E89895E5E09E8E2E2E2E2E2E2E2E2E2E2ACACE2E281E8E85ED7D7D7
            D7D7D7D7D75E89895E09E8E8E2E8E8E8E8E8E8E8E8E2ACACE281E8E8E85ED7E3
            E3E3E3E3D75E5E5E09E8E8E8E8E2E8ACACACACACE8E2E2E281E8E8E8E85ED7D7
            D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85ED7
            E3E3E3E3E3D75EE8E8E8E8E8E8E8E2E8ACACACACACE8E2E8E8E8E8E8E8E85ED7
            D7D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85E
            5E5E5E5E5E5E5E5EE8E8E8E8E8E8E8E2E2E2E2E2E2E2E2E2E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
          NumGlyphs = 2
          Spacing = 0
        end
        object gSelTarMut: TwwDBGrid
          Left = 0
          Top = 288
          Width = 377
          Height = 199
          Selected.Strings = (
            'IDTARJETA'#9'5'#9'N'#186#9'F'#9'Entidades Vigentes'
            'DiaPresentacion'#9'2'#9'D'#237'a'#9'F'#9'Entidades Vigentes'
            'TARJETA'#9'27'#9'Entidad'#9'F'#9'Entidades Vigentes'
            'TIPOENT'#9'5'#9'TE'#9'F'#9'Entidades Vigentes'
            'IDPROVEEDOR'#9'5'#9#186'Prv/EP'#9'F'#9'Entidades Vigentes')
          IniAttributes.Delimiter = ';;'
          TitleColor = clWhite
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alBottom
          BorderStyle = bsNone
          DataSource = dsTarjetas
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentColor = True
          ParentFont = False
          TabOrder = 8
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
          IndicatorIconColor = clMaroon
        end
        object gbEntPag: TRzGroupBox
          Left = 1
          Top = 98
          Width = 374
          Height = 158
          Alignment = taCenter
          Caption = 'Entidad Pagadora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GradientColorStyle = gcsCustom
          GradientColorStart = 16763594
          GroupStyle = gsBanner
          ParentColor = True
          ParentFont = False
          TabOrder = 5
          VisualStyle = vsGradient
          object lblLimiteVta: TLabel
            Left = 209
            Top = 20
            Width = 88
            Height = 13
            Caption = 'Limite de Venta'
            FocusControl = edtLimiteVta
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblDomEnt: TLabel
            Left = 5
            Top = 54
            Width = 51
            Height = 13
            Caption = 'Domicilio'
            FocusControl = edtDomEnt
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblDepEnt: TLabel
            Left = 5
            Top = 88
            Width = 53
            Height = 13
            Caption = 'Localidad'
            FocusControl = edtDepEnt
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblProvEnt: TLabel
            Left = 155
            Top = 88
            Width = 52
            Height = 13
            Caption = 'Provincia'
            FocusControl = edtProvEnt
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblComEnt: TLabel
            Left = 303
            Top = 20
            Width = 67
            Height = 13
            Caption = 'Comisi'#243'n %'
            FocusControl = edtComEnt
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblDocEnt: TLabel
            Left = 155
            Top = 123
            Width = 121
            Height = 13
            Caption = 'Tipo y N'#186' Documento:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblTIvaEnt: TLabel
            Left = 5
            Top = 123
            Width = 87
            Height = 13
            Caption = 'Situaci'#243'n I.V.A.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblCPEnt: TLabel
            Left = 294
            Top = 88
            Width = 76
            Height = 13
            Caption = 'C'#243'digo Postal'
            FocusControl = edtCPEnt
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblAltaMod: TDBText
            Left = 291
            Top = 122
            Width = 79
            Height = 13
            Alignment = taRightJustify
            DataField = 'FECHAMOD'
            DataSource = dsTarjetas
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblPrvEntPag: TLabel
            Left = 6
            Top = 20
            Width = 112
            Height = 13
            Caption = 'Proveedor/Pagador'
            FocusControl = edtComEnt
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblDiaPres: TLabel
            Left = 275
            Top = 54
            Width = 95
            Height = 13
            Caption = 'Dia Presentaci'#243'n'
            FocusControl = edtDiaPres
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblIdProvEnt: TRzDBLabel
            Left = 143
            Top = 20
            Width = 59
            Height = 17
            Alignment = taRightJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            DataField = 'IDPROVEEDOR'
            DataSource = dsTarjetas
          end
          object edtLimiteVta: TwwDBEdit
            Left = 208
            Top = 34
            Width = 93
            Height = 20
            BorderStyle = bsNone
            DataField = 'LIMITE'
            DataSource = dsTarjetas
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.NonFocusStyle = efsFrameSingle
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtNomEntKeyDown
            OnKeyPress = edtLimiteVtaKeyPress
          end
          object edtDomEnt: TwwDBEdit
            Left = 5
            Top = 68
            Width = 313
            Height = 20
            BorderStyle = bsNone
            DataField = 'DOMICILIO'
            DataSource = dsTarjetas
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.NonFocusStyle = efsFrameSingle
            ParentColor = True
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtNomEntKeyDown
          end
          object edtDepEnt: TwwDBEdit
            Left = 5
            Top = 101
            Width = 144
            Height = 20
            BorderStyle = bsNone
            DataField = 'DEPARTAMENTO'
            DataSource = dsTarjetas
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.NonFocusStyle = efsFrameSingle
            ParentColor = True
            ParentFont = False
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtNomEntKeyDown
          end
          object edtProvEnt: TwwDBEdit
            Left = 155
            Top = 101
            Width = 136
            Height = 20
            BorderStyle = bsNone
            DataField = 'PROVINCIA'
            DataSource = dsTarjetas
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.NonFocusStyle = efsFrameSingle
            ParentColor = True
            ParentFont = False
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtNomEntKeyDown
          end
          object edtComEnt: TwwDBEdit
            Left = 305
            Top = 34
            Width = 65
            Height = 20
            BorderStyle = bsNone
            DataField = 'COMISION'
            DataSource = dsTarjetas
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.NonFocusStyle = efsFrameSingle
            ParentColor = True
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtNomEntKeyDown
            OnKeyPress = edtLimiteVtaKeyPress
          end
          object cbTipoIvaEnt: TwwDBLookupCombo
            Left = 5
            Top = 137
            Width = 144
            Height = 20
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'IvaLargo'#9'20'#9'Detalle'#9'F'
              'TipoIva'#9'5'#9'C'#243'digo'#9'F')
            DataField = 'TIPOIVA'
            DataSource = dsTarjetas
            LookupTable = dmGestion.TipoIva
            LookupField = 'TipoIva'
            Options = [loColLines, loRowLines, loFixedDropDownHeight, loSearchOnBackspace]
            ButtonEffects.Transparent = True
            ButtonEffects.Flat = True
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.NonFocusStyle = efsFrameSingle
            ParentColor = True
            ParentFont = False
            TabOrder = 8
            AutoDropDown = True
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
            OnKeyDown = edtNomEntKeyDown
          end
          object edtDocEnt: TwwDBEdit
            Left = 246
            Top = 137
            Width = 124
            Height = 20
            AutoSize = False
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'DOCUMENTO'
            DataSource = dsTarjetas
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.NonFocusStyle = efsFrameSingle
            ParentColor = True
            ParentFont = False
            TabOrder = 10
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtNomEntKeyDown
          end
          object cbTipoDocEnt: TwwDBLookupCombo
            Left = 155
            Top = 137
            Width = 89
            Height = 20
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            CharCase = ecUpperCase
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Documento'#9'20'#9'Documento'#9'F'#9
              'TipoDoc'#9'10'#9'Tipo'#9'F')
            DataField = 'TDOCFISCAL'
            DataSource = dsTarjetas
            LookupTable = dmGestion.TipoDoc
            LookupField = 'TipoDoc'
            Options = [loColLines, loRowLines, loFixedDropDownHeight, loSearchOnBackspace]
            ButtonEffects.Transparent = True
            ButtonEffects.Flat = True
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.NonFocusStyle = efsFrameSingle
            ParentColor = True
            ParentFont = False
            TabOrder = 9
            AutoDropDown = True
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
            OnKeyDown = edtNomEntKeyDown
          end
          object edtCPEnt: TwwDBEdit
            Left = 297
            Top = 101
            Width = 72
            Height = 20
            BorderStyle = bsNone
            DataField = 'CODPOSTAL'
            DataSource = dsTarjetas
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.NonFocusStyle = efsFrameSingle
            ParentColor = True
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtNomEntKeyDown
          end
          object cbPrvEntPag: TwwDBLookupCombo
            Left = 5
            Top = 34
            Width = 197
            Height = 20
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'NOMBRE'#9'20'#9'Proveedor'#9'F'
              'IDPROVEEDOR'#9'5'#9'N'#186#9'F'
              'DOCUMENTO'#9'13'#9'Documento'#9'F')
            DataField = 'IDPROVEEDOR'
            DataSource = dsTarjetas
            LookupTable = qProv
            LookupField = 'IDPROVEEDOR'
            Options = [loColLines]
            ButtonEffects.Transparent = True
            ButtonEffects.Flat = True
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.NonFocusStyle = efsFrameSingle
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
          end
          object edtDiaPres: TwwDBEdit
            Left = 326
            Top = 68
            Width = 44
            Height = 20
            BorderStyle = bsNone
            DataField = 'DiaPresentacion'
            DataSource = dsTarjetas
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.NonFocusStyle = efsFrameSingle
            ParentColor = True
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtNomEntKeyDown
          end
        end
        object btnProveedores: TRzBitBtn
          Left = 341
          Top = 256
          Width = 30
          Height = 31
          Hint = 'ver Proveedores'
          Font.Charset = ANSI_CHARSET
          Font.Color = 106
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 9
          OnClick = btnProveedoresClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF6060800000
            8000008000408000008000408000008000408000008000400000004060C040A0
            A04060C040A0C04060C0FF60A0FF6040FF6060FF6060FF6060FF6060FF6060FF
            6060FF60608040008060A080C0FF80C0FF80C0FF80C0FF4060A0FFA060FF6060
            FF6060FF6060FF6060FF6060FF6060FF6060FF606000000080C0C080C0FF80C0
            FF80C0FF80C0FF4060C0FF60A0FF6040FF6060FF6040FF4060FF6060FF60A0FF
            A060FF60A0000000FFFFFF80C0FF80A0FF80C0FF80C0FF4060A0FFA060FF6060
            FF6060FF60A0804040000000000000000000000000000000000000806060FFFF
            FF80C0FF80C0FF4060C0FF60A0FF6040FF6060000000804040FF6060FF6060FF
            6060FF60A0000000FFFFFF406060000000FFFFFF80A0FF4060A0FFA0A0FF6060
            FF6060FF6060FF6060FF6060FF6060FF6060FFA060000000FFFFFF80C0FF80FF
            FF80A0FF80C0FF4060C0FF60A0FF6040FF4060FF6040FF4060FF606000000000
            000000000000000080C0FF80C0FF80A0FF80C0FF80C0FF4060A0FFA060FF6060
            FF6060FF6060FF6060FF6060000000FFFFFF80FFFF80C0FF80C0FF80C0FF80C0
            FF80C0FF80C0FF4060C0FF60A0FF6040FF4060FF6040FF6060FF6060000000FF
            FFFF80A0FF80C0FF80A0FF80C0FF80A0FF80C0FF80A0FF4060A0FFA0A0FF6060
            FF6060FF6060FFA060FF6060400000FFC0C080C0FF80C0FF80C0FFFFFFFF80C0
            FF80C0FF80C0FF4060C0FF60A0FF6040FF6060FF6060000000FFA06080004080
            A06080C0FF80C0FF40406080604080A0FF80C0FF80C0FF4060A0FFA060FF6060
            FF6060FF6060000000FF6060FFA060000000FFFFFF80C0FF40606040606080C0
            FF80C0FF80C0FF4060C0FF60A0FF6040FF4060FF6060FF6060FF6040FF606080
            40008060A080C0FF80C0FF80C0FF80A0FF80C0FF80C0FF4060A0FFA0A0FF4060
            FF6060FF6060FF6060FF6060FF6060FF6060000000FFFFFF80C0FF80A0FF80C0
            FF80A0FF80C0FF0060A0FF60A0FFA060FF60A0FFA060FF60A0FFA060FF60A0FF
            A060FF60A0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0}
        end
      end
    end
  end
  object pnlSalirCards: TRzPanel
    Left = 0
    Top = 509
    Width = 784
    Height = 26
    Align = alBottom
    BorderOuter = fsFlatRounded
    Color = 15329769
    TabOrder = 1
    object btnSalir: TRzBitBtn
      Left = 51
      Top = 2
      Width = 58
      Height = 22
      Hint = 'cerrar y salir'
      Caption = '&Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentColor = True
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
  object dsMovTar: TDataSource
    DataSet = qMovTar
    Left = 444
    Top = 221
  end
  object dsTarjetas: TDataSource
    AutoEdit = False
    DataSet = Tarjetas
    Left = 560
    Top = 256
  end
  object dsTarPlan: TDataSource
    DataSet = TarPlan
    Left = 649
    Top = 256
  end
  object rpCoefTar: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '6350'
      '72116'
      '137882')
    DataPipeline = dbpTarCoef
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'coeficientes'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 682
    Top = 288
    Version = '10.02'
    mmColumnWidth = 65766
    DataPipelineName = 'dbpTarCoef'
    object hbTitCoef: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object lblTitulo1: TppLabel
        UserName = 'lblTitulo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTitulo1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 528
        mmWidth = 16679
        BandType = 0
      end
      object lblTitulo2: TppLabel
        UserName = 'lblTitulo2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTitulo2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 180436
        mmTop = 529
        mmWidth = 16679
        BandType = 0
      end
    end
    object chbCoef: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object dbCoefTar: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object lblNCtas: TppDBText
        UserName = 'lblNCtas'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NroCuota'
        DataPipeline = dbpTarCoef
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpTarCoef'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 7408
        BandType = 4
      end
      object lblCoefPlan: TppDBText
        UserName = 'lblCoefPlan'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COEFPLAN'
        DataPipeline = dbpTarCoef
        DisplayFormat = '0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpTarCoef'
        mmHeight = 4233
        mmLeft = 16404
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object shpCoefTar2: TppShape
        UserName = 'shpCoefTar2'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 8
      end
      object lblEmisionCoefTar: TppSystemVariable
        UserName = 'lblEmisionCoefTar'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 77523
        mmTop = 1058
        mmWidth = 32808
        BandType = 8
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'TARJETA'
      DataPipeline = dbpTarCoef
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpTarCoef'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object shpCoefTar1: TppShape
          UserName = 'shpCoefTar1'
          Brush.Color = 14737632
          ParentHeight = True
          ParentWidth = True
          Shape = stRoundRect
          mmHeight = 5292
          mmLeft = 0
          mmTop = 0
          mmWidth = 65766
          BandType = 3
          GroupNo = 0
        end
        object lblDetTar: TppDBText
          UserName = 'lblDetTar'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TARJETA'
          DataPipeline = dbpTarCoef
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'dbpTarCoef'
          mmHeight = 4233
          mmLeft = 17727
          mmTop = 265
          mmWidth = 28279
          BandType = 3
          GroupNo = 0
        end
        object lblIdTarCoefTar: TppDBText
          UserName = 'lblIdTarCoefTar'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'IDTARJETA'
          DataPipeline = dbpTarCoef
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpTarCoef'
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 0
          mmWidth = 2646
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'NOMBRESUC'
      DataPipeline = dbpTarCoef
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpTarCoef'
      object ghbCoefTar: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object lblDetSuc: TppDBText
          UserName = 'lblDetSuc'
          OnGetText = lblDetSucGetText
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'NOMBRESUC'
          DataPipeline = dbpTarCoef
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpTarCoef'
          mmHeight = 4233
          mmLeft = 45508
          mmTop = 265
          mmWidth = 20151
          BandType = 3
          GroupNo = 1
        end
        object lblNCta: TppLabel
          UserName = 'lblNCta'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Cuotas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 529
          mmTop = 794
          mmWidth = 9790
          BandType = 3
          GroupNo = 1
        end
        object lblCoef: TppLabel
          UserName = 'lblCoef'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Coeficiente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 16933
          mmTop = 1058
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object dbpTarCoef: TppDBPipeline
    DataSource = dsqLstCoefTar
    UserName = 'dbpTarCoef'
    Left = 714
    Top = 288
    object dbpTarCoefppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDTARJETA'
      FieldName = 'IDTARJETA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object dbpTarCoefppField2: TppField
      FieldAlias = 'TARJETA'
      FieldName = 'TARJETA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object dbpTarCoefppField3: TppField
      FieldAlias = 'NOMBRESUC'
      FieldName = 'NOMBRESUC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object dbpTarCoefppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'NROCUOTA'
      FieldName = 'NROCUOTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object dbpTarCoefppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'COEFPLAN'
      FieldName = 'COEFPLAN'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object dbpTarCoefppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'MAXDCTO'
      FieldName = 'MAXDCTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
    end
    object dbpTarCoefppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'MAXDCTOII'
      FieldName = 'MAXDCTOII'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
  end
  object qMovTar: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trProc
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      
        'Select M.IdMov, M.IdTarjeta, M.IdSucursal, M.IdFactura, M.IdClie' +
        'nte,'
      
        '           M.FechaOP, M.CodTar, M.NroCuota, M.ImpCuota, M.TotalO' +
        'P, '
      
        '           M.Autorizacion, M.Estado, M.FechaResumen, M.CuotaPag,' +
        ' '
      
        '           M.FechaIS, M.Lote, M.NroLiquidacion, F.NroFactura, T.' +
        'Tarjeta, '
      '           C.Nombre, (M.ImpCuota * M.CuotaPag) as Cobrado, '
      '           (M.TotalOP -(M.ImpCuota * M.CuotaPag)) as Saldo,'
      '           M.IdPuntoVenta, M.IdTerminal'
      'From MovTar M'
      'Left Outer Join Clientes C'
      '  on (C.IdCliente = M.IdCliente and C.IdSucursal = M.IdSucursal)'
      'Left Outer Join FacVen F'
      
        '   on (F.IdFactura = M.IdFactura and F.IdSucursal = M.IdSucursal' +
        ')'
      'Left Outer Join Tarjetas T'
      '   on T.IdTarjeta = M.IdTarjeta'
      'Where M.FechaOp between :Desde and :Hasta '
      'Group by M.IdMov, M.IdTarjeta, M.IdSucursal, M.IdFactura, '
      '           M.IdCliente,  F.IdPuntoVenta,'
      
        '           M.FechaOP, M.CodTar, M.NroCuota, M.ImpCuota, M.TotalO' +
        'P, '
      
        '           M.Autorizacion, M.Estado, M.FechaResumen, M.CuotaPag,' +
        ' '
      
        '           M.FechaIS, M.Lote, M.NroLiquidacion, F.NroFactura, T.' +
        'Tarjeta, '
      '           M.IdPuntoVenta, M.IdTerminal, C.Nombre, C.Telefonos')
    Left = 444
    Top = 193
    ParamData = <
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
    object qMovTarIDMOV: TIntegerField
      FieldName = 'IDMOV'
      Required = True
    end
    object qMovTarIdTarjeta: TIntegerField
      FieldName = 'IdTarjeta'
    end
    object qMovTarIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
    end
    object qMovTarIdFactura: TIntegerField
      FieldName = 'IdFactura'
    end
    object qMovTarIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object qMovTarNOMBRE: TMDOStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object qMovTarNROFACTURA: TMDOStringField
      FieldName = 'NROFACTURA'
      Size = 13
    end
    object qMovTarFechaOP: TDateField
      FieldName = 'FechaOP'
    end
    object qMovTarCodTar: TStringField
      DisplayLabel = 'Nro Tarjeta'
      FieldName = 'CodTar'
    end
    object qMovTarNroCuota: TSmallintField
      FieldName = 'NroCuota'
    end
    object qMovTarAutorizacion: TStringField
      FieldName = 'Autorizacion'
      Size = 10
    end
    object qMovTarFechaResumen: TDateField
      FieldName = 'FechaResumen'
      OnGetText = qMovTarFechaResumenGetText
    end
    object qMovTarCuotaPag: TIntegerField
      FieldName = 'CuotaPag'
    end
    object qMovTarFechaIS: TDateField
      FieldName = 'FechaIS'
    end
    object qMovTarTARJETA: TMDOStringField
      FieldName = 'TARJETA'
      Required = True
      Size = 30
    end
    object qMovTarEstado: TSmallintField
      FieldName = 'Estado'
    end
    object qMovTarIMPCUOTA: TMDOBCDField
      FieldName = 'IMPCUOTA'
      currency = True
      Precision = 18
      Size = 4
    end
    object qMovTarTOTALOP: TMDOBCDField
      FieldName = 'TOTALOP'
      currency = True
      Precision = 18
      Size = 4
    end
    object qMovTarCOBRADO: TMDOBCDField
      FieldName = 'COBRADO'
      currency = True
      Precision = 18
      Size = 4
    end
    object qMovTarSALDO: TMDOBCDField
      FieldName = 'SALDO'
      currency = True
      Precision = 18
      Size = 4
    end
    object qMovTarNROLIQUIDACION: TMDOStringField
      FieldName = 'NROLIQUIDACION'
      Size = 10
    end
    object qMovTarIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
    end
    object qMovTarIDTERMINAL: TIntegerField
      DisplayWidth = 8
      FieldName = 'IDTERMINAL'
    end
    object qMovTarLOTE: TMDOStringField
      DisplayWidth = 4
      FieldName = 'LOTE'
      Size = 4
    end
  end
  object dbpMovTar: TppDBPipeline
    DataSource = dsMovTar
    UserName = 'dbpMovTar'
    Left = 475
    Top = 193
  end
  object rpMovTar: TppReport
    AutoStop = False
    DataPipeline = dbpMovTar
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Movimiento de Tarjetas'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 7350
    PrinterSetup.mmMarginRight = 7350
    PrinterSetup.mmMarginTop = 8350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 473
    Top = 221
    Version = '10.02'
    mmColumnWidth = 284300
    DataPipelineName = 'dbpMovTar'
    object hbMovTar: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object shMovTar1: TppShape
        UserName = 'shMovTar1'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 0
        mmWidth = 282300
        BandType = 0
      end
      object lblTitMT1: TppLabel
        UserName = 'lblTitMT1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTitMT1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 2381
        mmTop = 1323
        mmWidth = 14986
        BandType = 0
      end
      object lblTitMT2: TppLabel
        UserName = 'lblTitMT2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTitMT2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 133397
        mmTop = 1588
        mmWidth = 14986
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 245534
        mmTop = 1323
        mmWidth = 34396
        BandType = 0
      end
    end
    object dbMovTar: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object lblFechaMT: TppDBText
        UserName = 'lblFechaMT'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaOP'
        DataPipeline = dbpMovTar
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3683
        mmLeft = 9525
        mmTop = 265
        mmWidth = 13758
        BandType = 4
      end
      object lblNomCliMT: TppDBText
        UserName = 'lblNomCliMT'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOMBRE'
        DataPipeline = dbpMovTar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3683
        mmLeft = 25135
        mmTop = 265
        mmWidth = 30427
        BandType = 4
      end
      object lblCodTarMT: TppDBText
        UserName = 'lblCodTarMT'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CodTar'
        DataPipeline = dbpMovTar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3683
        mmLeft = 57150
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object lblAutoMT: TppDBText
        UserName = 'lblAutoMT'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Autorizacion'
        DataPipeline = dbpMovTar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3683
        mmLeft = 76200
        mmTop = 265
        mmWidth = 14552
        BandType = 4
      end
      object lblNFactMT: TppDBText
        UserName = 'lblNFactMT'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NROFACTURA'
        DataPipeline = dbpMovTar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3683
        mmLeft = 92869
        mmTop = 265
        mmWidth = 20108
        BandType = 4
      end
      object lblImpCtaMT: TppDBText
        UserName = 'lblImpCtaMT'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'IMPCUOTA'
        DataPipeline = dbpMovTar
        DisplayFormat = '$0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3704
        mmLeft = 143404
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
      object lblNroCtaMT: TppDBText
        UserName = 'lblNroCtaMT'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NroCuota'
        DataPipeline = dbpMovTar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3683
        mmLeft = 157427
        mmTop = 265
        mmWidth = 5821
        BandType = 4
      end
      object lblCtaPagMT: TppDBText
        UserName = 'lblCtaPagMT'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CuotaPag'
        DataPipeline = dbpMovTar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3683
        mmLeft = 164571
        mmTop = 265
        mmWidth = 5556
        BandType = 4
      end
      object lblTotOPMT: TppDBText
        UserName = 'lblTotOPMT'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTALOP'
        DataPipeline = dbpMovTar
        DisplayFormat = '$0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3683
        mmLeft = 172244
        mmTop = 265
        mmWidth = 21696
        BandType = 4
      end
      object lblCobMT: TppDBText
        UserName = 'lblCobMT'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COBRADO'
        DataPipeline = dbpMovTar
        DisplayFormat = '$0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3683
        mmLeft = 195263
        mmTop = 265
        mmWidth = 21696
        BandType = 4
      end
      object lblSdoMT: TppDBText
        UserName = 'lblSdoMT'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SALDO'
        DataPipeline = dbpMovTar
        DisplayFormat = '$0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3683
        mmLeft = 221986
        mmTop = 265
        mmWidth = 21696
        BandType = 4
      end
      object lblEstadoMT: TppDBText
        UserName = 'lblEstadoMT'
        OnGetText = lblEstadoMTGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Estado'
        DataPipeline = dbpMovTar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3683
        mmLeft = 245534
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object lblFResMT: TppDBText
        UserName = 'lblFResMT'
        OnGetText = lblFResMTGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaResumen'
        DataPipeline = dbpMovTar
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3683
        mmLeft = 264319
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object lblDetSucMT: TppDBText
        UserName = 'lblDetSucMT'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'IdSucursal'
        DataPipeline = dbpMovTar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3429
        mmLeft = 1323
        mmTop = 265
        mmWidth = 6350
        BandType = 4
      end
      object lblIdTerminalMT: TppDBText
        UserName = 'lblNFactMT1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'IDTERMINAL'
        DataPipeline = dbpMovTar
        DisplayFormat = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3704
        mmLeft = 117475
        mmTop = 265
        mmWidth = 15081
        BandType = 4
      end
      object lblNroLoteMT: TppDBText
        UserName = 'lblNroLoteMT'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LOTE'
        DataPipeline = dbpMovTar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpMovTar'
        mmHeight = 3683
        mmLeft = 134673
        mmTop = 265
        mmWidth = 6879
        BandType = 4
      end
    end
    object sbMovTat: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object shMovTar3: TppShape
        UserName = 'shMovTar3'
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 6879
        mmLeft = 0
        mmTop = 0
        mmWidth = 282300
        BandType = 7
      end
      object lblEmisionMT: TppSystemVariable
        UserName = 'lblEmisionMT'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 37042
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'IdTarjeta'
      DataPipeline = dbpMovTar
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpMovTar'
      object ghbMovTar: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 11377
        mmPrintPosition = 0
        object shpTMut: TppShape
          UserName = 'shpTMut'
          ParentHeight = True
          ParentWidth = True
          Shape = stRoundRect
          mmHeight = 11377
          mmLeft = 0
          mmTop = 0
          mmWidth = 282300
          BandType = 3
          GroupNo = 0
        end
        object lblEntidadMT: TppLabel
          UserName = 'lblEntidadMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Entidad:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold, fsUnderline]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3810
          mmLeft = 2328
          mmTop = 1323
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
        object lblDetEntMT: TppDBText
          UserName = 'lblDetEntMT'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TARJETA'
          DataPipeline = dbpMovTar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          DataPipelineName = 'dbpMovTar'
          mmHeight = 3810
          mmLeft = 20108
          mmTop = 1323
          mmWidth = 14055
          BandType = 3
          GroupNo = 0
        end
        object lblDSucMT: TppLabel
          UserName = 'lblDSucMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'S'#186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 2646
          mmTop = 6615
          mmWidth = 2963
          BandType = 3
          GroupNo = 0
        end
        object lblFecOPMT: TppLabel
          UserName = 'lblFecOPMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Fecha OP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 11906
          mmTop = 6615
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object lblEntMT: TppLabel
          UserName = 'lblEntMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 25400
          mmTop = 6615
          mmWidth = 8424
          BandType = 3
          GroupNo = 0
        end
        object lblCodTMT: TppLabel
          UserName = 'lblCodTMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'N'#186' Tarjeta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 57415
          mmTop = 6615
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
        end
        object lblAutMT: TppLabel
          UserName = 'lblAutMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Autorizaci'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 74613
          mmTop = 6615
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
        end
        object lblCompMT: TppLabel
          UserName = 'lblCompMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Comprobante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 92869
          mmTop = 6615
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
        end
        object lblCuotaMT: TppLabel
          UserName = 'lblCuotaMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Cuota $'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 145257
          mmTop = 6615
          mmWidth = 9652
          BandType = 3
          GroupNo = 0
        end
        object lblNCtaMT: TppLabel
          UserName = 'lblNCtaMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'NC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 159544
          mmTop = 6615
          mmWidth = 3598
          BandType = 3
          GroupNo = 0
        end
        object lblCtaPMT: TppLabel
          UserName = 'lblCtaPMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'CP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 165365
          mmTop = 6615
          mmWidth = 3260
          BandType = 3
          GroupNo = 0
        end
        object lblTotOMT: TppLabel
          UserName = 'lblTotOMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total OP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 183092
          mmTop = 6615
          mmWidth = 10668
          BandType = 3
          GroupNo = 0
        end
        object lblCobOMT: TppLabel
          UserName = 'lblCobOMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Cobrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 205846
          mmTop = 6615
          mmWidth = 11113
          BandType = 3
          GroupNo = 0
        end
        object lblSdoOMT: TppLabel
          UserName = 'lblSdoOMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Saldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 236803
          mmTop = 6615
          mmWidth = 6773
          BandType = 3
          GroupNo = 0
        end
        object lblEstMT: TppLabel
          UserName = 'lblEstMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 254265
          mmTop = 6615
          mmWidth = 8382
          BandType = 3
          GroupNo = 0
        end
        object lblResLMT: TppLabel
          UserName = 'lblResLMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Resumen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 268553
          mmTop = 6615
          mmWidth = 11515
          BandType = 3
          GroupNo = 0
        end
        object lblIdTermMT: TppLabel
          UserName = 'lblCompMT1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'ID Terminal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 117475
          mmTop = 6615
          mmWidth = 14690
          BandType = 3
          GroupNo = 0
        end
        object lblNLoteMT: TppLabel
          UserName = 'lblNLoteMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 135996
          mmTop = 6615
          mmWidth = 5334
          BandType = 3
          GroupNo = 0
        end
      end
      object gfbMovTar: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object shMovTar2: TppShape
          UserName = 'shMovTar2'
          ParentHeight = True
          ParentWidth = True
          Shape = stRoundRect
          mmHeight = 5556
          mmLeft = 0
          mmTop = 0
          mmWidth = 282300
          BandType = 5
          GroupNo = 0
        end
        object lblTotTotOPMT: TppDBCalc
          UserName = 'lblTotTotOPMT'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TOTALOP'
          DataPipeline = dbpMovTar
          DisplayFormat = '$ 0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpMovTar'
          mmHeight = 3440
          mmLeft = 170127
          mmTop = 794
          mmWidth = 23548
          BandType = 5
          GroupNo = 0
        end
        object lblTotCobMT: TppDBCalc
          UserName = 'lblTotTotOPMT1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'COBRADO'
          DataPipeline = dbpMovTar
          DisplayFormat = '$ 0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpMovTar'
          mmHeight = 3440
          mmLeft = 195263
          mmTop = 794
          mmWidth = 23548
          BandType = 5
          GroupNo = 0
        end
        object lblTotSdoMT: TppDBCalc
          UserName = 'lblTotTotOPMT2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TOTALOP'
          DataPipeline = dbpMovTar
          DisplayFormat = '$ 0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpMovTar'
          mmHeight = 3440
          mmLeft = 220134
          mmTop = 794
          mmWidth = 23548
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object LiqPreCon: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = LiqPreConNewRecord
    Left = 559
    Top = 288
    object LiqPreConIdFactura: TIntegerField
      FieldName = 'IdFactura'
    end
    object LiqPreConIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
    end
    object LiqPreConIdEmpresa: TIntegerField
      FieldName = 'IdEmpresa'
    end
    object LiqPreConIdEntidad: TIntegerField
      FieldName = 'IdEntidad'
    end
    object LiqPreConTipoFactura: TSmallintField
      FieldName = 'TipoFactura'
    end
    object LiqPreConNroPresConc: TStringField
      FieldName = 'NroPresConc'
      EditMask = '9999-99999999;1;_'
      Size = 13
    end
    object LiqPreConPeriodo: TDateField
      DisplayWidth = 5
      FieldName = 'Periodo'
      DisplayFormat = 'mm/yy'
      EditMask = '!99/99;1;_'
    end
    object LiqPreConFechaF: TDateField
      FieldName = 'FechaF'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object LiqPreConProveedor: TIntegerField
      FieldName = 'Proveedor'
      Required = True
      OnValidate = LiqPreConProveedorValidate
    end
    object LiqPreConNombreProveedor: TStringField
      FieldName = 'NombreProveedor'
      Size = 80
    end
    object LiqPreConEntidad: TStringField
      FieldName = 'Entidad'
      Size = 50
    end
    object LiqPreConTipoIva: TSmallintField
      FieldName = 'TipoIva'
    end
    object LiqPreConCantItm: TSmallintField
      FieldName = 'CantItm'
    end
    object LiqPreConTotal: TMDOBCDField
      FieldName = 'Total'
      currency = True
    end
    object LiqPreConNroRegPrc: TStringField
      FieldName = 'NroRegPrc'
      Size = 4
    end
    object LiqPreConAlcPercep: TMDOBCDField
      FieldName = 'AlcPercep'
      OnChange = CalculoDiscrimChange
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
      currency = True
    end
    object LiqPreConRetGan: TMDOBCDField
      FieldName = 'RetGan'
      OnChange = CalculoDiscrimChange
      currency = True
    end
    object LiqPreConRetIva: TMDOBCDField
      FieldName = 'RetIva'
      currency = True
    end
    object LiqPreConPrcRetIBt: TFloatField
      FieldName = 'PrcRetIBt'
    end
    object LiqPreConRetIBt: TMDOBCDField
      FieldName = 'RetIBt'
      OnChange = CalculoDiscrimChange
      currency = True
    end
    object LiqPreConPrcRetLH: TFloatField
      FieldName = 'PrcRetLH'
    end
    object LiqPreConRetLH: TMDOBCDField
      FieldName = 'RetLH'
      OnChange = CalculoDiscrimChange
      currency = True
    end
    object LiqPreConMtoIvaAlc1: TCurrencyField
      FieldName = 'MtoIvaAlc1'
      OnChange = CalculoDiscrimChange
    end
    object LiqPreConMtoIvaAlc2: TCurrencyField
      FieldName = 'MtoIvaAlc2'
      OnChange = CalculoDiscrimChange
    end
    object LiqPreConMtoIvaOAlc: TCurrencyField
      FieldName = 'MtoIvaOAlc'
      OnChange = CalculoDiscrimChange
    end
    object LiqPreConNoComputables: TMDOBCDField
      FieldName = 'NoComputables'
      OnChange = CalculoDiscrimChange
      currency = True
    end
    object LiqPreConNeto: TMDOBCDField
      FieldName = 'Neto'
      currency = True
    end
    object LiqPreConSubTotal: TCurrencyField
      FieldName = 'SubTotal'
    end
    object LiqPreConPrcComP: TFloatField
      FieldName = 'PrcComP'
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
    end
    object LiqPreConComision: TCurrencyField
      FieldName = 'Comision'
    end
    object LiqPreConDesdeP: TDateField
      FieldName = 'DesdeP'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object LiqPreConHastaP: TDateField
      FieldName = 'HastaP'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object LiqPreConDetalle: TStringField
      FieldName = 'Detalle'
      Size = 60
    end
  end
  object dsLiqPreCon: TDataSource
    DataSet = LiqPreCon
    Left = 589
    Top = 288
  end
  object PresConc: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IDTARJETA'
        DataType = ftInteger
      end
      item
        Name = 'IDFACTURA'
        DataType = ftInteger
      end
      item
        Name = 'IDSUCURSAL'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IDCLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'IDMOVCRED'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IDCUOTA'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'FECHAOP'
        DataType = ftDate
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TFAC'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NROFACTURA'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CUPON'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LOTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODTAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NROCUOTA'
        DataType = ftSmallint
      end
      item
        Name = 'ESTADOMOV'
        DataType = ftSmallint
      end
      item
        Name = 'ESTADOOP'
        DataType = ftSmallint
      end
      item
        Name = 'TOTALOP'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'CUOTAPAG'
        DataType = ftInteger
      end
      item
        Name = 'FECHAV'
        DataType = ftDate
      end
      item
        Name = 'MONTOCUOTA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'NRORECPAGO'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'FECHAP'
        DataType = ftDate
      end
      item
        Name = 'IDRECIBO'
        DataType = ftInteger
      end
      item
        Name = 'IDSUCREC'
        DataType = ftInteger
      end
      item
        Name = 'IDPUNTOVENTA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Estado3'
        DataType = ftBoolean
      end
      item
        Name = 'Estado2'
        DataType = ftBoolean
      end
      item
        Name = 'Estado1'
        DataType = ftBoolean
      end
      item
        Name = 'MontoACob'
        DataType = ftCurrency
      end
      item
        Name = 'EstadoPCL'
        DataType = ftSmallint
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'EstCt'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'IdSuc'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'IdSuc'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptUnknown
        Value = '01/03/07'
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptUnknown
        Value = '31/03/07'
      end
      item
        DataType = ftInteger
        Name = 'IdTar'
        ParamType = ptUnknown
        Value = 12
      end>
    ProviderName = 'dspPresConc'
    StoreDefs = True
    BeforeOpen = PresConcBeforeOpen
    AfterOpen = PresConcAfterOpen
    Left = 502
    Top = 288
    object PresConcIDTARJETA: TIntegerField
      FieldName = 'IDTARJETA'
      Origin = '"MOVTAR"."IDTARJETA"'
    end
    object PresConcIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"MOVCUOTAS"."IDFACTURA"'
    end
    object PresConcIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"MOVCUOTAS"."IDSUCURSAL"'
      Required = True
    end
    object PresConcIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Origin = '"FACVEN"."IDPUNTOVENTA"'
      Required = True
    end
    object PresConcCUPON: TStringField
      FieldName = 'CUPON'
      Origin = '"MOVTAR"."CUPON"'
    end
    object PresConcLOTE: TStringField
      FieldName = 'LOTE'
      Origin = '"MOVTAR"."LOTE"'
    end
    object PresConcFECHAOP: TDateField
      FieldName = 'FECHAOP'
      Origin = '"MOVTAR"."FECHAOP"'
      DisplayFormat = 'dd/mm/yy'
    end
    object PresConcCODTAR: TStringField
      FieldName = 'CODTAR'
      Origin = '"MOVTAR"."CODTAR"'
    end
    object PresConcNROCUOTA: TSmallintField
      FieldName = 'NROCUOTA'
      Origin = '"MOVTAR"."NROCUOTA"'
    end
    object PresConcTOTALOP: TBCDField
      FieldName = 'TOTALOP'
      Origin = '"MOVTAR"."TOTALOP"'
      currency = True
      Precision = 18
    end
    object PresConcCUOTAPAG: TIntegerField
      FieldName = 'CUOTAPAG'
      Origin = '"MOVTAR"."CUOTAPAG"'
    end
    object PresConcIDMOVCRED: TIntegerField
      FieldName = 'IDMOVCRED'
      Origin = '"MOVCUOTAS"."IDMOVCRED"'
      Required = True
    end
    object PresConcIDCUOTA: TSmallintField
      FieldName = 'IDCUOTA'
      Required = True
    end
    object PresConcFECHAV: TDateField
      FieldName = 'FECHAV'
      Origin = '"MOVCUOTAS"."FECHAV"'
      DisplayFormat = 'dd/mm/yy'
    end
    object PresConcMONTOCUOTA: TBCDField
      FieldName = 'MONTOCUOTA'
      Origin = '"MOVCUOTAS"."MONTOCUOTA"'
      currency = True
      Precision = 18
    end
    object PresConcNRORECPAGO: TStringField
      FieldName = 'NRORECPAGO'
      Origin = '"MOVCUOTAS"."NRORECPAGO"'
      Size = 13
    end
    object PresConcFECHAP: TDateField
      FieldName = 'FECHAP'
      Origin = '"MOVCUOTAS"."FECHAP"'
      DisplayFormat = 'dd/mm/yy'
    end
    object PresConcIDRECIBO: TIntegerField
      FieldName = 'IDRECIBO'
      Origin = '"MOVCUOTAS"."IDRECIBO"'
    end
    object PresConcIDSUCREC: TIntegerField
      FieldName = 'IDSUCREC'
      Origin = '"MOVCUOTAS"."IDSUCREC"'
    end
    object PresConcIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = '"MOVCUOTAS"."IDCLIENTE"'
    end
    object PresConcESTADOMOV: TSmallintField
      FieldName = 'ESTADOMOV'
    end
    object PresConcNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = '"CLIENTES"."NOMBRE"'
      Size = 30
    end
    object PresConcTFAC: TStringField
      FieldName = 'TFAC'
      Size = 5
    end
    object PresConcNROFACTURA: TStringField
      FieldName = 'NROFACTURA'
      Origin = '"FACVEN"."NROFACTURA"'
      Size = 13
    end
    object PresConcEstado3: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'Estado3'
      OnChange = PresConcEstado3Change
    end
    object PresConcEstado2: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'Estado2'
      OnChange = PresConcEstado2Change
    end
    object PresConcEstado1: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'Estado1'
      OnChange = PresConcEstado1Change
    end
    object PresConcMontoACob: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MontoACob'
    end
    object PresConcEstadoPCL: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'EstadoPCL'
      OnChange = PresConcEstadoPCLChange
    end
    object PresConcESTADOOP: TSmallintField
      FieldName = 'ESTADOOP'
    end
  end
  object dsPresConc: TDataSource
    DataSet = PresConc
    Left = 531
    Top = 288
  end
  object qPresConc: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trProc
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select M.IDMOVCRED, M.NROCUOTA as IdCuota, '
      '           M.IDFACTURA,  M.IDSUCURSAL,  M.FECHAV, '
      '           M.MONTOCUOTA,  M.NRORECPAGO, M.FECHAP, '
      '           M.IDRECIBO, M.IDSUCREC,  M.IDCLIENTE, '
      '           M.ESTADO as EstadoOP,  T.IDTARJETA, T.CUPON, '
      '           T.LOTE,  T.FECHAOP, T.CODTAR, T.TOTALOP, '
      '           T.ESTADO as EstadoMov,  T.NROCUOTA, '
      '           T.CUOTAPAG, F.NROFACTURA, F.IDPUNTOVENTA,  '
      '           K.DESCCORTA as TFac, C.NOMBRE'
      'From MovCuotas M'
      'Join MovTar T'
      '  on (T.IdMov = M.IdMovCred) And '
      '       (T.IdSucursal = M.IdSucursal)'
      'Join FacVen F'
      '   on (F.IdFactura = M.IdFactura) And'
      '        (F.IdSucursal = M.IdSucursal)'
      'Join TiposComp K'
      '   on (K.IdComprobante = F.TipoFactura)'
      'Join Clientes C'
      '   on (C.IdCliente = M.IdCliente) And'
      '        (C.IdSucursal = M.IdSucursal)'
      'Where  (M.Estado <= :EstCt) And '
      '            ((M.IdSucursal = :IdSuc) or (:IdSuc = 0))  And'
      '            (M.FechaV between :Desde And :Hasta) And'
      '            (T.Estado not in (3,4,60)) And'
      '            (T.IdTarjeta = :IdTar) And '
      '            (T.State = 0)'
      'Order By M.IDMOVCRED, M.NROCUOTA, M.FECHAV')
    Left = 445
    Top = 288
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EstCt'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'IdSuc'
        ParamType = ptUnknown
        Value = 6
      end
      item
        DataType = ftInteger
        Name = 'IdSuc'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptUnknown
        Value = '01/03/07'
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptUnknown
        Value = '31/03/07'
      end
      item
        DataType = ftInteger
        Name = 'IdTar'
        ParamType = ptUnknown
        Value = 12
      end>
    object qPresConcIDTARJETA: TIntegerField
      FieldName = 'IDTARJETA'
      Origin = '"MOVTAR"."IDTARJETA"'
    end
    object qPresConcIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"MOVCUOTAS"."IDFACTURA"'
    end
    object qPresConcIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"MOVCUOTAS"."IDSUCURSAL"'
      Required = True
    end
    object qPresConcIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = '"MOVCUOTAS"."IDCLIENTE"'
    end
    object qPresConcIDMOVCRED: TIntegerField
      FieldName = 'IDMOVCRED'
      Origin = '"MOVCUOTAS"."IDMOVCRED"'
      Required = True
    end
    object qPresConcIDCUOTA: TSmallintField
      FieldName = 'IDCUOTA'
      Required = True
    end
    object qPresConcFECHAOP: TDateField
      FieldName = 'FECHAOP'
      Origin = '"MOVTAR"."FECHAOP"'
    end
    object qPresConcNOMBRE: TMDOStringField
      FieldName = 'NOMBRE'
      Origin = '"CLIENTES"."NOMBRE"'
      Size = 30
    end
    object qPresConcTFAC: TMDOStringField
      FieldName = 'TFAC'
      Size = 5
    end
    object qPresConcNROFACTURA: TMDOStringField
      FieldName = 'NROFACTURA'
      Origin = '"FACVEN"."NROFACTURA"'
      Size = 13
    end
    object qPresConcCUPON: TMDOStringField
      FieldName = 'CUPON'
      Origin = '"MOVTAR"."CUPON"'
    end
    object qPresConcLOTE: TMDOStringField
      FieldName = 'LOTE'
      Origin = '"MOVTAR"."LOTE"'
    end
    object qPresConcCODTAR: TMDOStringField
      FieldName = 'CODTAR'
      Origin = '"MOVTAR"."CODTAR"'
    end
    object qPresConcNROCUOTA: TSmallintField
      FieldName = 'NROCUOTA'
      Origin = '"MOVTAR"."NROCUOTA"'
    end
    object qPresConcESTADOMOV: TSmallintField
      FieldName = 'ESTADOMOV'
    end
    object qPresConcESTADOOP: TSmallintField
      FieldName = 'ESTADOOP'
    end
    object qPresConcTOTALOP: TMDOBCDField
      FieldName = 'TOTALOP'
      Origin = '"MOVTAR"."TOTALOP"'
      Precision = 18
      Size = 4
    end
    object qPresConcCUOTAPAG: TIntegerField
      FieldName = 'CUOTAPAG'
      Origin = '"MOVTAR"."CUOTAPAG"'
    end
    object qPresConcFECHAV: TDateField
      FieldName = 'FECHAV'
      Origin = '"MOVCUOTAS"."FECHAV"'
    end
    object qPresConcMONTOCUOTA: TMDOBCDField
      FieldName = 'MONTOCUOTA'
      Origin = '"MOVCUOTAS"."MONTOCUOTA"'
      Precision = 18
      Size = 4
    end
    object qPresConcNRORECPAGO: TMDOStringField
      FieldName = 'NRORECPAGO'
      Origin = '"MOVCUOTAS"."NRORECPAGO"'
      Size = 13
    end
    object qPresConcFECHAP: TDateField
      FieldName = 'FECHAP'
      Origin = '"MOVCUOTAS"."FECHAP"'
    end
    object qPresConcIDRECIBO: TIntegerField
      FieldName = 'IDRECIBO'
      Origin = '"MOVCUOTAS"."IDRECIBO"'
    end
    object qPresConcIDSUCREC: TIntegerField
      FieldName = 'IDSUCREC'
      Origin = '"MOVCUOTAS"."IDSUCREC"'
    end
    object qPresConcIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Origin = '"FACVEN"."IDPUNTOVENTA"'
      Required = True
    end
  end
  object dspPresConc: TDataSetProvider
    DataSet = qPresConc
    Options = [poIncFieldProps]
    Left = 473
    Top = 288
  end
  object Tarjetas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTarjetas'
    BeforeInsert = TarjetasBeforeInsert
    AfterInsert = TarjetasAfterInsert
    BeforeEdit = TarjetasBeforeEdit
    BeforePost = TarjetasBeforePost
    AfterPost = TarjetasAfterPost
    OnCalcFields = TarjetasCalcFields
    OnNewRecord = TarjetasNewRecord
    OnReconcileError = TarjetasReconcileError
    Left = 531
    Top = 256
    object TarjetasTarjeta: TStringField
      DisplayWidth = 25
      FieldName = 'Tarjeta'
      Origin = '"TARJETAS"."TARJETA"'
      Size = 30
    end
    object TarjetasCodComercio: TStringField
      DisplayWidth = 20
      FieldName = 'CodComercio'
      Origin = '"TARJETAS"."CODCOMERCIO"'
      Visible = False
    end
    object TarjetasDiaPresentacion: TSmallintField
      Alignment = taCenter
      DisplayWidth = 2
      FieldName = 'DiaPresentacion'
      Origin = '"TARJETAS"."DIAPRESENTACION"'
      Visible = False
      MaxValue = 31
      MinValue = 1
    end
    object TarjetasCodEntidad: TStringField
      DisplayWidth = 20
      FieldName = 'CodEntidad'
      Origin = '"TARJETAS"."CODENTIDAD"'
      Visible = False
    end
    object TarjetasTelAutorizacion: TStringField
      DisplayLabel = 'Tel'#233'fono~Autorizaciones'
      DisplayWidth = 20
      FieldName = 'TelAutorizacion'
      Origin = '"TARJETAS"."TELAUTORIZACION"'
      Visible = False
    end
    object TarjetasLIMITE: TBCDField
      FieldName = 'LIMITE'
      Origin = '"TARJETAS"."LIMITE"'
      currency = True
      Precision = 18
    end
    object TarjetasCOMISION: TBCDField
      FieldName = 'COMISION'
      Origin = '"TARJETAS"."COMISION"'
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
      Precision = 18
    end
    object TarjetasSALDOVENCIDO: TBCDField
      FieldName = 'SALDOVENCIDO'
      Origin = '"TARJETAS"."SALDOVENCIDO"'
      currency = True
      Precision = 18
    end
    object TarjetasSALDOAVENCER: TBCDField
      FieldName = 'SALDOAVENCER'
      Origin = '"TARJETAS"."SALDOAVENCER"'
      currency = True
      Precision = 18
    end
    object TarjetasTIPOENT: TSmallintField
      Alignment = taCenter
      FieldName = 'TIPOENT'
      Origin = '"TARJETAS"."TIPOENT"'
      OnGetText = TarjetasTIPOENTGetText
    end
    object TarjetasIDTARJETA: TIntegerField
      FieldName = 'IDTARJETA'
      Origin = '"TARJETAS"."IDTARJETA"'
      OnGetText = TarjetasIDTARJETAGetText
    end
    object TarjetasDOMICILIO: TStringField
      FieldName = 'DOMICILIO'
      Origin = '"TARJETAS"."DOMICILIO"'
      Size = 60
    end
    object TarjetasDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Origin = '"TARJETAS"."DEPARTAMENTO"'
      Size = 30
    end
    object TarjetasPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      Origin = '"TARJETAS"."PROVINCIA"'
      Size = 30
    end
    object TarjetasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = '"TARJETAS"."DOCUMENTO"'
      OnValidate = TarjetasDOCUMENTOValidate
      Size = 13
    end
    object TarjetasTDOCFISCAL: TSmallintField
      FieldName = 'TDOCFISCAL'
      Origin = '"TARJETAS"."TDOCFISCAL"'
      OnChange = TarjetasTDOCFISCALChange
    end
    object TarjetasTIPOIVA: TSmallintField
      FieldName = 'TIPOIVA'
      Origin = '"TARJETAS"."TIPOIVA"'
      OnValidate = TarjetasTIPOIVAValidate
    end
    object TarjetasIDPROVEEDOR: TIntegerField
      FieldName = 'IDPROVEEDOR'
      Origin = '"TARJETAS"."IDPROVEEDOR"'
    end
    object TarjetasCODPOSTAL: TStringField
      FieldName = 'CODPOSTAL'
      Origin = '"TARJETAS"."CODPOSTAL"'
      Size = 10
    end
    object TarjetasFECHAMOD: TDateField
      FieldName = 'FECHAMOD'
      Origin = '"TARJETAS"."FECHAMOD"'
    end
    object TarjetasqTarPlan: TDataSetField
      FieldName = 'qTarPlan'
    end
    object TarjetasNomProv: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomProv'
      Size = 30
      Calculated = True
    end
  end
  object dspTarjetas: TDataSetProvider
    DataSet = qTarjetas
    Options = [poIncFieldProps]
    Left = 502
    Top = 256
  end
  object TarPlan: TClientDataSet
    Aggregates = <>
    DataSetField = TarjetasqTarPlan
    Params = <>
    OnCalcFields = TarPlanCalcFields
    OnNewRecord = TarPlanNewRecord
    Left = 621
    Top = 256
    object TarPlanIdTarjeta: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdTarjeta'
      Origin = '"TARPLAN"."IDTARJETA"'
    end
    object TarPlanNroCuota: TIntegerField
      DisplayWidth = 10
      FieldName = 'NroCuota'
      Origin = '"TARPLAN"."NROCUOTA"'
    end
    object TarPlanIdSucursal: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdSucursal'
      Origin = '"TARPLAN"."IDSUCURSAL"'
    end
    object TarPlanModoPago: TSmallintField
      DisplayWidth = 10
      FieldName = 'ModoPago'
      Origin = '"TARPLAN"."MODOPAGO"'
    end
    object TarPlanCOEFPLAN: TBCDField
      FieldName = 'COEFPLAN'
      Origin = '"TARPLAN"."COEFPLAN"'
      DisplayFormat = '0.0000%'
      EditFormat = '0.0000'
      Precision = 18
    end
    object TarPlanMAXDCTO: TBCDField
      FieldName = 'MAXDCTO'
      Origin = '"TARPLAN"."MAXDCTO"'
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
      Precision = 18
    end
    object TarPlanMAXDCTOII: TBCDField
      FieldName = 'MAXDCTOII'
      Origin = '"TARPLAN"."MAXDCTOII"'
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
      Precision = 18
    end
    object TarPlanDetSuc: TStringField
      FieldKind = fkCalculated
      FieldName = 'DetSuc'
      Calculated = True
    end
    object TarPlanDetTar: TStringField
      FieldKind = fkLookup
      FieldName = 'DetTar'
      LookupDataSet = dmGestion.qTarjetas
      LookupKeyFields = 'IDTARJETA'
      LookupResultField = 'TARJETA'
      KeyFields = 'IdTarjeta'
      Size = 30
      Lookup = True
    end
  end
  object qTarjetas: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trProc
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IDTARJETA, TARJETA, DIAPRESENTACION, '
      '          TELAUTORIZACION, CODCOMERCIO, CODENTIDAD, '
      '          LIMITE, DOMICILIO, DEPARTAMENTO, PROVINCIA, '
      '          COMISION, SALDOVENCIDO, SALDOAVENCER, TIPOENT, '
      '          DOCUMENTO, TDOCFISCAL, TIPOIVA, IDPROVEEDOR,'
      '          CODPOSTAL, FECHAMOD  '
      'From TARJETAS'
      'Order By IDTARJETA')
    Left = 474
    Top = 256
    object qTarjetasIDTARJETA: TIntegerField
      FieldName = 'IDTARJETA'
      Origin = '"TARJETAS"."IDTARJETA"'
      Required = True
    end
    object qTarjetasTARJETA: TMDOStringField
      FieldName = 'TARJETA'
      Origin = '"TARJETAS"."TARJETA"'
      Required = True
      Size = 30
    end
    object qTarjetasDIAPRESENTACION: TSmallintField
      FieldName = 'DIAPRESENTACION'
      Origin = '"TARJETAS"."DIAPRESENTACION"'
    end
    object qTarjetasTELAUTORIZACION: TMDOStringField
      FieldName = 'TELAUTORIZACION'
      Origin = '"TARJETAS"."TELAUTORIZACION"'
    end
    object qTarjetasCODCOMERCIO: TMDOStringField
      FieldName = 'CODCOMERCIO'
      Origin = '"TARJETAS"."CODCOMERCIO"'
    end
    object qTarjetasCODENTIDAD: TMDOStringField
      FieldName = 'CODENTIDAD'
      Origin = '"TARJETAS"."CODENTIDAD"'
    end
    object qTarjetasLIMITE: TMDOBCDField
      FieldName = 'LIMITE'
      Origin = '"TARJETAS"."LIMITE"'
      Precision = 18
      Size = 4
    end
    object qTarjetasDOMICILIO: TMDOStringField
      FieldName = 'DOMICILIO'
      Origin = '"TARJETAS"."DOMICILIO"'
      Size = 60
    end
    object qTarjetasDEPARTAMENTO: TMDOStringField
      FieldName = 'DEPARTAMENTO'
      Origin = '"TARJETAS"."DEPARTAMENTO"'
      Size = 30
    end
    object qTarjetasPROVINCIA: TMDOStringField
      FieldName = 'PROVINCIA'
      Origin = '"TARJETAS"."PROVINCIA"'
      Size = 30
    end
    object qTarjetasCOMISION: TMDOBCDField
      FieldName = 'COMISION'
      Origin = '"TARJETAS"."COMISION"'
      Precision = 18
      Size = 4
    end
    object qTarjetasSALDOVENCIDO: TMDOBCDField
      FieldName = 'SALDOVENCIDO'
      Origin = '"TARJETAS"."SALDOVENCIDO"'
      Precision = 18
      Size = 4
    end
    object qTarjetasSALDOAVENCER: TMDOBCDField
      FieldName = 'SALDOAVENCER'
      Origin = '"TARJETAS"."SALDOAVENCER"'
      Precision = 18
      Size = 4
    end
    object qTarjetasTIPOENT: TSmallintField
      FieldName = 'TIPOENT'
      Origin = '"TARJETAS"."TIPOENT"'
    end
    object qTarjetasDOCUMENTO: TMDOStringField
      FieldName = 'DOCUMENTO'
      Origin = '"TARJETAS"."DOCUMENTO"'
      Size = 13
    end
    object qTarjetasTDOCFISCAL: TSmallintField
      FieldName = 'TDOCFISCAL'
      Origin = '"TARJETAS"."TDOCFISCAL"'
    end
    object qTarjetasTIPOIVA: TSmallintField
      FieldName = 'TIPOIVA'
      Origin = '"TARJETAS"."TIPOIVA"'
    end
    object qTarjetasIDPROVEEDOR: TIntegerField
      FieldName = 'IDPROVEEDOR'
      Origin = '"TARJETAS"."IDPROVEEDOR"'
    end
    object qTarjetasCODPOSTAL: TMDOStringField
      FieldName = 'CODPOSTAL'
      Origin = '"TARJETAS"."CODPOSTAL"'
      Size = 10
    end
    object qTarjetasFECHAMOD: TDateField
      FieldName = 'FECHAMOD'
      Origin = '"TARJETAS"."FECHAMOD"'
    end
  end
  object qTarPlan: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trProc
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsqTarjetas
    LoadDefaults = False
    SQL.Strings = (
      'select IDTARJETA, NROCUOTA, IDSUCURSAL, COEFPLAN,'
      '           MODOPAGO, MAXDCTO, MAXDCTOII, FECHAMOD '
      'From TARPLAN'
      'Where IDTARJETA =:IdTarjeta'
      'Order By IDTARJETA, NROCUOTA, IDSUCURSAL')
    Left = 588
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDTARJETA'
        ParamType = ptUnknown
        Size = 4
      end>
    object qTarPlanIDTARJETA: TIntegerField
      FieldName = 'IDTARJETA'
      Origin = '"TARPLAN"."IDTARJETA"'
      Required = True
    end
    object qTarPlanNROCUOTA: TIntegerField
      FieldName = 'NROCUOTA'
      Origin = '"TARPLAN"."NROCUOTA"'
      Required = True
    end
    object qTarPlanIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"TARPLAN"."IDSUCURSAL"'
      Required = True
    end
    object qTarPlanCOEFPLAN: TMDOBCDField
      FieldName = 'COEFPLAN'
      Origin = '"TARPLAN"."COEFPLAN"'
      Precision = 18
      Size = 4
    end
    object qTarPlanMODOPAGO: TSmallintField
      FieldName = 'MODOPAGO'
      Origin = '"TARPLAN"."MODOPAGO"'
    end
    object qTarPlanMAXDCTO: TMDOBCDField
      FieldName = 'MAXDCTO'
      Origin = '"TARPLAN"."MAXDCTO"'
      Precision = 18
      Size = 4
    end
    object qTarPlanMAXDCTOII: TMDOBCDField
      FieldName = 'MAXDCTOII'
      Origin = '"TARPLAN"."MAXDCTOII"'
      Precision = 18
      Size = 4
    end
    object qTarPlanFECHAMOD: TDateField
      FieldName = 'FECHAMOD'
      Origin = '"TARPLAN"."FECHAMOD"'
    end
  end
  object dsqTarjetas: TDataSource
    DataSet = qTarjetas
    Left = 444
    Top = 256
  end
  object qLstCoefTar: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trProc
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select T.IdTarjeta, T.Tarjeta, S.NombreSuc, P.IdSucursal, '
      '           P.NroCuota, P.CoefPlan, P.MaxDcto, P.MaxDctoII'
      'From Tarjetas T'
      'Join TarPlan P'
      '  on T.IdTarjeta = P.IdTarjeta'
      'Left Outer Join Sucursales S'
      '  on S.IdSucursal = P.IdSucursal'
      'Order By T.IdTarjeta, P.IdSucursal, P.NroCuota Desc')
    Left = 683
    Top = 256
    object qLstCoefTarIDTARJETA: TIntegerField
      FieldName = 'IDTARJETA'
      Origin = '"TARJETAS"."IDTARJETA"'
      Required = True
    end
    object qLstCoefTarTARJETA: TMDOStringField
      FieldName = 'TARJETA'
      Origin = '"TARJETAS"."TARJETA"'
      Required = True
      Size = 30
    end
    object qLstCoefTarNOMBRESUC: TMDOStringField
      FieldName = 'NOMBRESUC'
      Origin = '"SUCURSALES"."NOMBRESUC"'
    end
    object qLstCoefTarNROCUOTA: TIntegerField
      FieldName = 'NROCUOTA'
      Origin = '"TARPLAN"."NROCUOTA"'
      Required = True
    end
    object qLstCoefTarCOEFPLAN: TMDOBCDField
      FieldName = 'COEFPLAN'
      Origin = '"TARPLAN"."COEFPLAN"'
      Precision = 18
      Size = 4
    end
    object qLstCoefTarMAXDCTO: TMDOBCDField
      FieldName = 'MAXDCTO'
      Origin = '"TARPLAN"."MAXDCTO"'
      Precision = 18
      Size = 4
    end
    object qLstCoefTarMAXDCTOII: TMDOBCDField
      FieldName = 'MAXDCTOII'
      Origin = '"TARPLAN"."MAXDCTOII"'
      Precision = 18
      Size = 4
    end
  end
  object dsqLstCoefTar: TDataSource
    DataSet = qLstCoefTar
    Left = 712
    Top = 256
  end
  object qVerMovPCL: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trProc
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select  F.IdFactura, F.IdSucursal, F.IdPuntoVenta, F.FechaF,'
      '            F.Proveedor, F.FecPreLiqDesde, F.FecPreLiqHasta,'
      '            F.IdEmpresa, F.IdNumeroLiq, F.Comision, F.Total,'
      '            F.TipoFactura, F.NroFactura, F.IdEntTarMut, F.Neto,'
      '            F.IdCompRef, F.CantArtic, T.Tarjeta, S.DetSuc,'
      '            K.DescCorta, P.Estado, P.FechaPag, P.NroRecPago  '
      'From  FacCom F'
      'Join Tarjetas T'
      '  on T.IdTarjeta = F.IdEntTarMut'
      'Join Sucursales S'
      '  on S.IdSucursal = F.IdCompRef'
      'Join TiposComp K'
      '  on K.IdComprobante = F.TipoFactura'
      'Join PCL_TarMut P'
      '  on  P.IdLiquidacion = F.IdNumeroLiq And'
      '        P.IdProveedor = F.Proveedor And'
      '        P.IdEntidad = F.IdEntTarMut'
      'Where (F.FechaF Between :D And :H) And'
      '            ((F.IdEntTarMut = :E) or (:E = 0)) And'
      '            (F.IdCompRef = :S) And '
      '            (F.TipoFactura in (54,55,56)) And'
      '            (F.State = 0) '
      'Order By F.Proveedor, F.FechaF desc ')
    Left = 532
    Top = 221
    ParamData = <
      item
        DataType = ftDate
        Name = 'D'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'H'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'E'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'E'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'S'
        ParamType = ptUnknown
      end>
    object qVerMovPCLIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"FACCOM"."IDFACTURA"'
      Required = True
    end
    object qVerMovPCLIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"FACCOM"."IDSUCURSAL"'
      Required = True
    end
    object qVerMovPCLIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Origin = '"FACCOM"."IDPUNTOVENTA"'
      Required = True
    end
    object qVerMovPCLFECHAF: TDateField
      FieldName = 'FECHAF'
      Origin = '"FACCOM"."FECHAF"'
    end
    object qVerMovPCLPROVEEDOR: TIntegerField
      FieldName = 'PROVEEDOR'
      Origin = '"FACCOM"."PROVEEDOR"'
    end
    object qVerMovPCLFECPRELIQDESDE: TDateField
      Alignment = taCenter
      FieldName = 'FECPRELIQDESDE'
      Origin = '"FACCOM"."FECPRELIQDESDE"'
    end
    object qVerMovPCLFECPRELIQHASTA: TDateField
      Alignment = taCenter
      FieldName = 'FECPRELIQHASTA'
      Origin = '"FACCOM"."FECPRELIQHASTA"'
    end
    object qVerMovPCLIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = '"FACCOM"."IDEMPRESA"'
    end
    object qVerMovPCLIDNUMEROLIQ: TIntegerField
      FieldName = 'IDNUMEROLIQ'
      Origin = '"FACCOM"."IDNUMEROLIQ"'
    end
    object qVerMovPCLCOMISION: TMDOBCDField
      FieldName = 'COMISION'
      Origin = '"FACCOM"."COMISION"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qVerMovPCLTOTAL: TMDOBCDField
      FieldName = 'TOTAL'
      Origin = '"FACCOM"."TOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qVerMovPCLTIPOFACTURA: TSmallintField
      FieldName = 'TIPOFACTURA'
      Origin = '"FACCOM"."TIPOFACTURA"'
    end
    object qVerMovPCLNROFACTURA: TMDOStringField
      FieldName = 'NROFACTURA'
      Origin = '"FACCOM"."NROFACTURA"'
      Size = 13
    end
    object qVerMovPCLIDENTTARMUT: TIntegerField
      FieldName = 'IDENTTARMUT'
      Origin = '"FACCOM"."IDENTTARMUT"'
    end
    object qVerMovPCLIDCOMPREF: TIntegerField
      FieldName = 'IDCOMPREF'
      Origin = '"FACCOM"."IDCOMPREF"'
    end
    object qVerMovPCLTARJETA: TMDOStringField
      FieldName = 'TARJETA'
      Origin = '"TARJETAS"."TARJETA"'
      Required = True
      Size = 30
    end
    object qVerMovPCLCANTARTIC: TSmallintField
      FieldName = 'CANTARTIC'
      Origin = '"FACCOM"."CANTARTIC"'
    end
    object qVerMovPCLDETSUC: TMDOStringField
      FieldName = 'DETSUC'
      Origin = '"SUCURSALES"."DETSUC"'
      Size = 2
    end
    object qVerMovPCLDESCCORTA: TMDOStringField
      FieldName = 'DESCCORTA'
      Origin = '"TIPOSCOMP"."DESCCORTA"'
      Size = 5
    end
    object qVerMovPCLNETO: TMDOBCDField
      FieldName = 'NETO'
      Origin = '"FACCOM"."NETO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qVerMovPCLESTADO: TSmallintField
      FieldName = 'ESTADO'
      Origin = '"PCL_TARMUT"."ESTADO"'
      OnGetText = qVerMovPCLESTADOGetText
    end
    object qVerMovPCLFECHAPAG: TDateField
      FieldName = 'FECHAPAG'
      Origin = '"PCL_TARMUT"."FECHAPAG"'
    end
    object qVerMovPCLNRORECPAGO: TMDOStringField
      FieldName = 'NRORECPAGO'
      Origin = '"PCL_TARMUT"."NRORECPAGO"'
      Size = 13
    end
  end
  object dsqVerMovPCL: TDataSource
    DataSet = qVerMovPCL
    Left = 561
    Top = 221
  end
  object qVerItmPCL: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trProc
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsqVerMovPCL
    LoadDefaults = False
    SQL.Strings = (
      'Select I.IdFactura, I.IdSucursal, I.IdPuntoVenta, I.Talle, '
      '           I.IdAlcIva, I.MtoIva, I.ImpInt, I.Exento, I.Sector, '
      '           I.Cantidad, I.PrecioFinal, C.Nombre'
      'From ItemsFC I'
      'Left Outer Join Clientes C '
      '  on C.IdCliente = I.IdAlcIva And'
      '       C.IdSucursal  = I.Sector'
      'Where I.IdFactura = :IdFactura And'
      '            I.IdSucursal =:IdSucursal And'
      '            I.IdPuntoVenta =:IdPuntoVenta'
      '            ')
    Left = 533
    Top = 192
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
        Name = 'IDPUNTOVENTA'
        ParamType = ptUnknown
        Size = 4
      end>
    object qVerItmPCLIDFACTURA: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDFACTURA'
      Origin = '"ITEMSFC"."IDFACTURA"'
      Required = True
    end
    object qVerItmPCLIDPUNTOVENTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDPUNTOVENTA'
      Origin = '"ITEMSFC"."IDPUNTOVENTA"'
      Required = True
    end
    object qVerItmPCLTALLE: TIntegerField
      DisplayLabel = 'N'#186'OP'
      DisplayWidth = 5
      FieldName = 'TALLE'
      Origin = '"ITEMSFC"."TALLE"'
    end
    object qVerItmPCLIDALCIVA: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDALCIVA'
      Origin = '"ITEMSFC"."IDALCIVA"'
    end
    object qVerItmPCLSECTOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'SECTOR'
      Origin = '"ITEMSFC"."SECTOR"'
    end
    object qVerItmPCLCANTIDAD: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'CANTIDAD'
      Origin = '"ITEMSFC"."CANTIDAD"'
      Precision = 18
      Size = 4
    end
    object qVerItmPCLPRECIOFINAL: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'PRECIOFINAL'
      Origin = '"ITEMSFC"."PRECIOFINAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qVerItmPCLNOMBRE: TMDOStringField
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Origin = '"CLIENTES"."NOMBRE"'
      Size = 30
    end
    object qVerItmPCLIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"ITEMSFC"."IDSUCURSAL"'
      Required = True
    end
    object qVerItmPCLMTOIVA: TMDOBCDField
      FieldName = 'MTOIVA'
      Origin = '"ITEMSFC"."MTOIVA"'
      Precision = 18
      Size = 4
    end
    object qVerItmPCLIMPINT: TMDOBCDField
      FieldName = 'IMPINT'
      Origin = '"ITEMSFC"."IMPINT"'
      Precision = 18
      Size = 4
    end
    object qVerItmPCLEXENTO: TMDOBCDField
      FieldName = 'EXENTO'
      Origin = '"ITEMSFC"."EXENTO"'
      Precision = 18
      Size = 4
    end
  end
  object dsqVerItmPCL: TDataSource
    DataSet = qVerItmPCL
    Left = 562
    Top = 192
  end
  object qPagoMutual: TMDOQuery
    AfterOpen = qPagoMutualAfterOpen
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trProc
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select M.IdLiquidacion, M.IdEntidad, M.IdSucOper, M.IdProveedor,'
      
        '           M.Fecha, M.CantOp, M.Total, M.Neto, M.Comision, M.IdF' +
        'actura,'
      
        '           M.IdSucursal, M.IdPuntoVenta, M.TipoOP, M.Usuario, M.' +
        'State,'
      '           M.NroOperacion, M.Estado, M.IdRecibo, M.IdEmpresa, '
      '           M.RetenIB, M.RetenLH, M.FechaPag, M.NroCertRet, '
      '           P.Nombre, T.Tarjeta'
      'From PCL_TarMut M'
      'Join Proveedores P'
      '  on P.IdProveedor = M.IdProveedor'
      'Join Tarjetas T'
      '  on T.IdTarjeta = M.IdEntidad'
      'Where (M.State = 0) And'
      '            (M.TipoOP = 54) And '
      '            (M.IdEntidad = :IdEntM) And'
      '            (M.Estado = :Estado) And'
      '            ((M.IdSucOper = :IdSucM) or (:IdSucM = 0))'
      'Order By M.Fecha desc')
    Left = 621
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdEntM'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'IdSucM'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'IdSucM'
        ParamType = ptUnknown
      end>
    object qPagoMutualIDLIQUIDACION: TIntegerField
      DisplayLabel = 'N'#186'L'
      DisplayWidth = 5
      FieldName = 'IDLIQUIDACION'
      Origin = '"PCL_TARMUT"."IDLIQUIDACION"'
      Required = True
    end
    object qPagoMutualIDENTIDAD: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDENTIDAD'
      Origin = '"PCL_TARMUT"."IDENTIDAD"'
      Required = True
    end
    object qPagoMutualIDSUCOPER: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDSUCOPER'
      Origin = '"PCL_TARMUT"."IDSUCOPER"'
      OnGetText = qPagoMutualIDSUCOPERGetText
    end
    object qPagoMutualIDPROVEEDOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDPROVEEDOR'
      Origin = '"PCL_TARMUT"."IDPROVEEDOR"'
    end
    object qPagoMutualFECHA: TDateField
      DisplayWidth = 10
      FieldName = 'FECHA'
      Origin = '"PCL_TARMUT"."FECHA"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qPagoMutualCANTOP: TSmallintField
      DisplayWidth = 10
      FieldName = 'CANTOP'
      Origin = '"PCL_TARMUT"."CANTOP"'
    end
    object qPagoMutualTOTAL: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'TOTAL'
      Origin = '"PCL_TARMUT"."TOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qPagoMutualNETO: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'NETO'
      Origin = '"PCL_TARMUT"."NETO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qPagoMutualCOMISION: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'COMISION'
      Origin = '"PCL_TARMUT"."COMISION"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qPagoMutualIDFACTURA: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDFACTURA'
      Origin = '"PCL_TARMUT"."IDFACTURA"'
    end
    object qPagoMutualIDSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDSUCURSAL'
      Origin = '"PCL_TARMUT"."IDSUCURSAL"'
    end
    object qPagoMutualIDPUNTOVENTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDPUNTOVENTA'
      Origin = '"PCL_TARMUT"."IDPUNTOVENTA"'
    end
    object qPagoMutualTIPOOP: TSmallintField
      DisplayWidth = 10
      FieldName = 'TIPOOP'
      Origin = '"PCL_TARMUT"."TIPOOP"'
      OnGetText = qPagoMutualTIPOOPGetText
    end
    object qPagoMutualUSUARIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'USUARIO'
      Origin = '"PCL_TARMUT"."USUARIO"'
    end
    object qPagoMutualSTATE: TSmallintField
      DisplayWidth = 10
      FieldName = 'STATE'
      Origin = '"PCL_TARMUT"."STATE"'
    end
    object qPagoMutualNROOPERACION: TMDOStringField
      DisplayWidth = 13
      FieldName = 'NROOPERACION'
      Origin = '"PCL_TARMUT"."NROOPERACION"'
      Size = 13
    end
    object qPagoMutualESTADO: TSmallintField
      DisplayWidth = 10
      FieldName = 'ESTADO'
      Origin = '"PCL_TARMUT"."ESTADO"'
    end
    object qPagoMutualIDEMPRESA: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDEMPRESA'
      Origin = '"PCL_TARMUT"."IDEMPRESA"'
    end
    object qPagoMutualNOMBRE: TMDOStringField
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Origin = '"PROVEEDORES"."NOMBRE"'
      Size = 30
    end
    object qPagoMutualTARJETA: TMDOStringField
      DisplayWidth = 30
      FieldName = 'TARJETA'
      Origin = '"TARJETAS"."TARJETA"'
      Required = True
      Size = 30
    end
    object qPagoMutualRETENIB: TMDOBCDField
      FieldName = 'RETENIB'
      Origin = '"PCL_TARMUT"."RETENIB"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qPagoMutualRETENLH: TMDOBCDField
      FieldName = 'RETENLH'
      Origin = '"PCL_TARMUT"."RETENLH"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qPagoMutualFECHAPAG: TDateField
      FieldName = 'FECHAPAG'
      Origin = '"PCL_TARMUT"."FECHAPAG"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qPagoMutualIDRECIBO: TIntegerField
      FieldName = 'IDRECIBO'
      Origin = '"PCL_TARMUT"."IDRECIBO"'
    end
    object qPagoMutualNROCERTRET: TMDOStringField
      FieldName = 'NROCERTRET'
      Origin = '"PCL_TARMUT"."NROCERTRET"'
      Size = 13
    end
    object qPagoMutualSelected: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Selected'
      Calculated = True
    end
  end
  object dsqPagoMutual: TDataSource
    DataSet = qPagoMutual
    Left = 652
    Top = 192
  end
  object PagoMutual: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = PagoMutualNewRecord
    Left = 620
    Top = 223
    object PagoMutualIdEmpresa: TIntegerField
      FieldName = 'IdEmpresa'
    end
    object PagoMutualNroRecibo: TStringField
      FieldName = 'NroRecibo'
      Size = 13
    end
    object PagoMutualFechaPag: TDateField
      FieldName = 'FechaPag'
    end
    object PagoMutualTotLiqui: TCurrencyField
      FieldName = 'TotLiqui'
    end
    object PagoMutualTotRetIB: TCurrencyField
      FieldName = 'TotRetIB'
    end
    object PagoMutualTotRetLH: TCurrencyField
      FieldName = 'TotRetLH'
    end
    object PagoMutualIdProv: TIntegerField
      FieldName = 'IdProv'
    end
    object PagoMutualIdEntM: TIntegerField
      FieldName = 'IdEntM'
    end
    object PagoMutualIdSucP: TIntegerField
      FieldName = 'IdSucP'
    end
    object PagoMutualTotNeto: TCurrencyField
      FieldName = 'TotNeto'
    end
    object PagoMutualTotComi: TCurrencyField
      FieldName = 'TotComi'
    end
    object PagoMutualNomPro: TStringField
      FieldName = 'NomPro'
      Size = 40
    end
    object PagoMutualNCertRet: TStringField
      FieldName = 'NCertRet'
      Size = 13
    end
  end
  object dsPagoMutual: TDataSource
    DataSet = PagoMutual
    Left = 649
    Top = 223
  end
  object rpRecPagoMut: TppReport
    AutoStop = False
    DataPipeline = dbpDetPagMut
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Recibo de Mutuales'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 5350
    PrinterSetup.mmMarginLeft = 10350
    PrinterSetup.mmMarginRight = 3350
    PrinterSetup.mmMarginTop = 10350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 682
    Top = 223
    Version = '10.02'
    mmColumnWidth = 197300
    DataPipelineName = 'dbpDetPagMut'
    object hbRepPagMut: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 18256
      mmPrintPosition = 0
      object shpPagMuT2: TppShape
        UserName = 'shpPagMuT2'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 18256
        mmLeft = 0
        mmTop = 0
        mmWidth = 196300
        BandType = 0
      end
      object lblTitPagMut1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTitPagMut'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 4498
        mmWidth = 22543
        BandType = 0
      end
      object lblTitPagMut2: TppLabel
        UserName = 'lblTitPagMut1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTitPagMut'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 10848
        mmWidth = 22543
        BandType = 0
      end
    end
    object dbRepPagMut: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object lblRPMNroPre: TppDBText
        UserName = 'lblRPMNroPre'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NroPresent'
        DataPipeline = dbpDetPagMut
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpDetPagMut'
        mmHeight = 3704
        mmLeft = 10848
        mmTop = 1852
        mmWidth = 26988
        BandType = 4
      end
      object lblRPMFecPre: TppDBText
        UserName = 'lblRPMFecPre'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaOP'
        DataPipeline = dbpDetPagMut
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpDetPagMut'
        mmHeight = 3704
        mmLeft = 39688
        mmTop = 1852
        mmWidth = 18521
        BandType = 4
      end
      object lblRPMNOp: TppDBText
        UserName = 'lblRPMNOp'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CantOP'
        DataPipeline = dbpDetPagMut
        DisplayFormat = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpDetPagMut'
        mmHeight = 3810
        mmLeft = 63236
        mmTop = 1852
        mmWidth = 8467
        BandType = 4
      end
      object lblRPMTotOp: TppDBText
        UserName = 'lblRPMTotOp'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Total'
        DataPipeline = dbpDetPagMut
        DisplayFormat = '$ 0.00; ($ 0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpDetPagMut'
        mmHeight = 3704
        mmLeft = 76465
        mmTop = 1852
        mmWidth = 17198
        BandType = 4
      end
      object lblRPMRetIB: TppDBText
        UserName = 'lblRPMRetIB'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RetenIB'
        DataPipeline = dbpDetPagMut
        DisplayFormat = '$ 0.00; ($ 0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpDetPagMut'
        mmHeight = 3704
        mmLeft = 101865
        mmTop = 1852
        mmWidth = 17198
        BandType = 4
      end
      object lblRPMRetLH: TppDBText
        UserName = 'lblRPMRetLH'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RetenLH'
        DataPipeline = dbpDetPagMut
        DisplayFormat = '$ 0.00; ($ 0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpDetPagMut'
        mmHeight = 3704
        mmLeft = 124090
        mmTop = 1852
        mmWidth = 17198
        BandType = 4
      end
      object lblRPMCom: TppDBText
        UserName = 'lblRPMCom'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Comision'
        DataPipeline = dbpDetPagMut
        DisplayFormat = '$ 0.00; ($ 0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpDetPagMut'
        mmHeight = 3704
        mmLeft = 149225
        mmTop = 1852
        mmWidth = 17198
        BandType = 4
      end
      object lblRPMNeto: TppDBText
        UserName = 'lblRPMNeto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NetoOP'
        DataPipeline = dbpDetPagMut
        DisplayFormat = '$ 0.00; ($ 0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpDetPagMut'
        mmHeight = 3810
        mmLeft = 176213
        mmTop = 1852
        mmWidth = 17198
        BandType = 4
      end
      object lnRecPagMut1: TppLine
        UserName = 'lnRecPagMut1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 10848
        mmTop = 529
        mmWidth = 182563
        BandType = 4
      end
    end
    object fbRepPagMut: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object shpPagMuT1: TppShape
        UserName = 'shpPagMuT1'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 14817
        mmLeft = 0
        mmTop = 0
        mmWidth = 196300
        BandType = 8
      end
      object lblRPMEmision: TppSystemVariable
        UserName = 'lblRPMEmision'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 5292
        mmTop = 2910
        mmWidth = 23813
        BandType = 8
      end
      object lblRPMPaginas: TppSystemVariable
        UserName = 'lblRPMPaginas'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3429
        mmLeft = 173567
        mmTop = 2910
        mmWidth = 17145
        BandType = 8
      end
    end
    object groupNomPro: TppGroup
      BreakName = 'NomPro'
      DataPipeline = dbpDetPagMut
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'groupNomPro'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpDetPagMut'
      object ghbNomPro: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object shpPagMuT3: TppShape
          UserName = 'shpPagMuT3'
          ParentHeight = True
          ParentWidth = True
          Shape = stRoundRect
          mmHeight = 5556
          mmLeft = 0
          mmTop = 0
          mmWidth = 196300
          BandType = 3
          GroupNo = 0
        end
        object lblRPMTarjeta: TppDBText
          UserName = 'lblRPMTarjeta'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'Tarjeta'
          DataPipeline = dbpDetPagMut
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpDetPagMut'
          mmHeight = 4233
          mmLeft = 179653
          mmTop = 529
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object lblRPMNomPro: TppDBText
          UserName = 'lblRPMNomPro'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'NomPro'
          DataPipeline = dbpDetPagMut
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbpDetPagMut'
          mmHeight = 4233
          mmLeft = 11642
          mmTop = 529
          mmWidth = 14393
          BandType = 3
          GroupNo = 0
        end
      end
      object gfbNomPro: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 9260
        mmPrintPosition = 0
        object lblRPMTotTot: TppDBCalc
          UserName = 'lblRPMTotTot'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'Total'
          DataPipeline = dbpDetPagMut
          DisplayFormat = '$ 0.00; ($ 0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          ResetGroup = groupNomPro
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpDetPagMut'
          mmHeight = 3704
          mmLeft = 76994
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object lblRPMTotRIB: TppDBCalc
          UserName = 'lblRPMTotRIB'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'RetenIB'
          DataPipeline = dbpDetPagMut
          DisplayFormat = '$ 0.00; ($ 0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          ResetGroup = groupNomPro
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpDetPagMut'
          mmHeight = 3810
          mmLeft = 101865
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object lblRPMTotRLH: TppDBCalc
          UserName = 'lblRPMTotRLH'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'RetenLH'
          DataPipeline = dbpDetPagMut
          DisplayFormat = '$ 0.00; ($ 0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          ResetGroup = groupNomPro
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpDetPagMut'
          mmHeight = 3810
          mmLeft = 123825
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object lblRPMTotCom: TppDBCalc
          UserName = 'lblRPMTotCom'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'Comision'
          DataPipeline = dbpDetPagMut
          DisplayFormat = '$ 0.00; ($ 0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          ResetGroup = groupNomPro
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpDetPagMut'
          mmHeight = 3810
          mmLeft = 149490
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object lblRPMTotNet: TppDBCalc
          UserName = 'lblRPMTotNet'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'NetoOP'
          DataPipeline = dbpDetPagMut
          DisplayFormat = '$ 0.00; ($ 0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          ResetGroup = groupNomPro
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpDetPagMut'
          mmHeight = 3810
          mmLeft = 175684
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object lnRecPagMut2: TppLine
          UserName = 'lnRecPagMut2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Style = lsDouble
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 11642
          mmTop = 0
          mmWidth = 180975
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object dsDetPagMut: TDataSource
    DataSet = DetPagMut
    Left = 711
    Top = 192
  end
  object dbpDetPagMut: TppBDEPipeline
    DataSource = dsDetPagMut
    UserName = 'dbpDetPagMut'
    Left = 712
    Top = 223
    object dbpDetPagMutppField1: TppField
      FieldAlias = 'NroPresent'
      FieldName = 'NroPresent'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbpDetPagMutppField2: TppField
      FieldAlias = 'Comision'
      FieldName = 'Comision'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbpDetPagMutppField3: TppField
      FieldAlias = 'NomPro'
      FieldName = 'NomPro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbpDetPagMutppField4: TppField
      FieldAlias = 'FechaOP'
      FieldName = 'FechaOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbpDetPagMutppField5: TppField
      FieldAlias = 'CantOP'
      FieldName = 'CantOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbpDetPagMutppField6: TppField
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object dbpDetPagMutppField7: TppField
      FieldAlias = 'NetoOP'
      FieldName = 'NetoOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object dbpDetPagMutppField8: TppField
      FieldAlias = 'RetenIB'
      FieldName = 'RetenIB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object dbpDetPagMutppField9: TppField
      FieldAlias = 'RetenLH'
      FieldName = 'RetenLH'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object dbpDetPagMutppField10: TppField
      FieldAlias = 'IdLiquidacion'
      FieldName = 'IdLiquidacion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object dbpDetPagMutppField11: TppField
      FieldAlias = 'Tarjeta'
      FieldName = 'Tarjeta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
  end
  object DetPagMut: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NroPresent'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Comision'
        DataType = ftCurrency
      end
      item
        Name = 'NomPro'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FechaOP'
        DataType = ftDate
      end
      item
        Name = 'CantOP'
        DataType = ftSmallint
      end
      item
        Name = 'Total'
        DataType = ftCurrency
      end
      item
        Name = 'NetoOP'
        DataType = ftCurrency
      end
      item
        Name = 'RetenIB'
        DataType = ftCurrency
      end
      item
        Name = 'RetenLH'
        DataType = ftCurrency
      end
      item
        Name = 'IdLiquidacion'
        DataType = ftInteger
      end
      item
        Name = 'Tarjeta'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 682
    Top = 192
    object DetPagMutNroPresent: TStringField
      FieldName = 'NroPresent'
    end
    object DetPagMutComision: TCurrencyField
      FieldName = 'Comision'
    end
    object DetPagMutNomPro: TStringField
      FieldName = 'NomPro'
      Size = 30
    end
    object DetPagMutFechaOP: TDateField
      FieldName = 'FechaOP'
    end
    object DetPagMutCantOP: TSmallintField
      FieldName = 'CantOP'
    end
    object DetPagMutTotal: TCurrencyField
      FieldName = 'Total'
    end
    object DetPagMutNetoOP: TCurrencyField
      FieldName = 'NetoOP'
    end
    object DetPagMutRetenIB: TCurrencyField
      FieldName = 'RetenIB'
    end
    object DetPagMutRetenLH: TCurrencyField
      FieldName = 'RetenLH'
    end
    object DetPagMutIdLiquidacion: TIntegerField
      FieldName = 'IdLiquidacion'
    end
    object DetPagMutTarjeta: TStringField
      FieldName = 'Tarjeta'
      Size = 30
    end
  end
  object dsqProv: TDataSource
    DataSet = qProv
    Left = 504
    Top = 221
  end
  object qProv: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trProc
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IdProveedor, Nombre, Documento '
      'From Proveedores'
      'Where Activo = 1'
      'Order By Nombre')
    Left = 504
    Top = 193
    object qProvIDPROVEEDOR: TIntegerField
      DisplayLabel = 'N'#186
      DisplayWidth = 5
      FieldName = 'IDPROVEEDOR'
      Required = True
    end
    object qProvNOMBRE: TMDOStringField
      DisplayLabel = 'Proveedor'
      DisplayWidth = 20
      FieldName = 'NOMBRE'
      Size = 30
    end
    object qProvDOCUMENTO: TMDOStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Size = 13
    end
  end
end
