object frmTransDep: TfrmTransDep
  Left = 265
  Top = 279
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Transferencias entre dep'#243'sitos'
  ClientHeight = 523
  ClientWidth = 792
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020040000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0088880000000000008888000000000008877880000000000887788000000000
    087887800000000008788780000000800878878008BBBB800878878008000BB0
    088778800BBBBBB0088778800BB00BB8008888008BBBBBB8008888008BB00BBB
    00000000BBBBBBBB00000000BBB008BBB800008BBBBBBBBBB800008BBBB0088B
    88888BBBBBBBBBBBBBBBBBBBBB000888BBBBB8BBB00000000000000000000888
    BBBBB8BB030BBBBBBBBBBBBBBB000888BBBB88B030BB7BBB7BBB7BBB7BB00888
    BBBBB8B030BB7BBB7BBB7BBB7BB00BB0000000B030BB7BBB7BBB7BBB7BB00007
    7999990030BB7BBB7BBB7BBB7BB000777799997030BB7BBB7BBB7BBB7BB00077
    7779977030BB7BBB7BBB7BBB7BB000777777777030BB7BBB7BBB7BBB7BB00077
    7777377030BB7BBB7BBB7BBB7BB0000777C3377030BB7BBB7BBB7BBB7BB00007
    BBBBB77030BB7BBB7BBB7BBB7BB000077BBBB77030BB7BBB7BBB7BBB7BB00007
    7777777030BB7BBB7BBB7BBB7BB00000000000030BBBBBBBBBBBBBBBBB000000
    00000000BBB0000000000000000000000000000BBB000000000000000000000B
    BBBBBBBB00000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FC3F
    FC3FF00FF00FF00FF00FE007E007E007E0078000000100000000000000000000
    0000000000000000000100000003000000010000000000000000000000008000
    000080000000800000008000000080000000C0000000C0000000C0000000C000
    0000E0000001FFE00003E001FFFFC003FFFFE00FFFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcTraspasos: TRzPageControl
    Left = 0
    Top = 0
    Width = 792
    Height = 495
    ActivePage = tsEnvios
    ActivePageDefault = tsTransferencias
    Align = alClient
    BackgroundColor = clWhite
    BoldCurrentTab = True
    Color = 16119543
    UseColoredTabs = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    FlatColor = 10263441
    ImageMargin = 0
    ParentBackgroundColor = False
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    RowIndent = 0
    RowOverlap = 0
    ShowCardFrame = False
    ShowCloseButton = True
    ShowFocusRect = False
    ShowFullFrame = False
    ShowHint = False
    ShowShadow = False
    TabColors.HighlightBar = 1350640
    TabIndex = 2
    TabOrder = 0
    TabStyle = tsBackSlant
    TextColors.Selected = clNavy
    TextColors.Unselected = clTeal
    OnChange = pcTraspasosChange
    OnClose = pcTraspasosClose
    FixedDimension = 22
    object tsTransferencias: TRzTabSheet
      Color = 16119543
      Caption = 'Transferencias'
      object gTraspasos: TwwDBGrid
        Left = 0
        Top = 45
        Width = 792
        Height = 428
        Selected.Strings = (
          'SOrigen'#9'12'#9'Sucursal~Origen'#9'F'
          'DestMov'#9'12'#9'Sucursal~Destino'#9'F'
          'FechaF'#9'8'#9'Fecha~Envio'#9'F'
          'DESCRIPCION'#9'13'#9'Tipo~Comprobante'#9'F'
          'NroFactura'#9'13'#9'N'#250'mero de~Comprobante'#9'F'
          'NomEnt'#9'15'#9'Destinatario'#9'F'
          'CantArtic'#9'2'#9'CP'#9'F'
          'Total'#9'9'#9'Total'#9'F'
          'Estado'#9'5'#9'Estado~Envio'#9'F'
          'EN_AMBAS'#9'3'#9'E~A'#9'F'
          'NomUsr'#9'15'#9'Usuario'#9'F'
          'DiaHora'#9'12'#9'Dia Hora'#9'F'
          'ENTREGARA'#9'20'#9'Destinatario~Mercaderias'#9'F'
          'DOMICILIOE'#9'30'#9'Domicilio~de Destino'#9'F'
          'FLETERO'#9'10'#9'Flete'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = 15135474
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        BorderStyle = bsNone
        Color = 15791348
        DataSource = dsTransp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16512
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyOptions = [dgEnterToTab]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = 18432
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
        OnCalcCellColors = gTraspasosCalcCellColors
        OnDblClick = gTraspasosDblClick
        OnUpdateFooter = gTraspasosUpdateFooter
        FooterColor = 15135474
        FooterCellColor = 15135474
      end
      object pnlTransF: TRzPanel
        Left = 0
        Top = 0
        Width = 792
        Height = 45
        Align = alTop
        BorderOuter = fsFlatRounded
        Color = 15398143
        GradientColorStyle = gcsCustom
        GradientColorStop = 15135474
        TabOrder = 1
        TabStop = True
        VisualStyle = vsGradient
        object lblDestDesde: TLabel
          Left = 18
          Top = 3
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
        object lblDesde: TLabel
          Left = 179
          Top = 3
          Width = 38
          Height = 13
          Caption = '&Desde:'
          FocusControl = edtDesdeRem
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object btnVerDesde: TRzBitBtn
          Left = 705
          Top = 9
          Width = 30
          Height = 30
          Hint = 'Buscar'
          FrameColor = 7617536
          Color = 15791348
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentFont = False
          TabOrder = 2
          OnClick = btnVerDesdeClick
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
        object cbSucursales: TRzComboBox
          Left = 19
          Top = 18
          Width = 153
          Height = 22
          Color = 15398143
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FlatButtons = True
          FocusColor = clWhite
          FrameHotTrack = True
          FrameVisible = True
          ItemHeight = 14
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOnEnter = True
          TabOrder = 0
          OnChange = cbSucursalesChange
        end
        object edtDesdeRem: TRzDateTimeEdit
          Left = 177
          Top = 18
          Width = 89
          Height = 22
          CaptionTodayBtn = 'hoy'
          CaptionClearBtn = 'limpiar'
          RestrictMinutes = True
          EditType = etDate
          Format = 'dd/mm/yy'
          Color = 15398143
          FlatButtons = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FocusColor = clWhite
          FrameHotTrack = True
          FrameVisible = True
          ParentColor = True
          ParentFont = False
          TabOnEnter = True
          TabOrder = 1
        end
        object btnExpOpr: TRzBitBtn
          Left = 743
          Top = 9
          Width = 30
          Height = 30
          Hint = 'Exportar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 3
          OnClick = btnExpOprClick
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
        object rgTipoTrans: TRzRadioGroup
          Left = 275
          Top = 1
          Width = 421
          Height = 38
          Caption = 'Tipo de &Transfencia'
          Columns = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GroupStyle = gsTopLine
          ItemHotTrack = True
          ItemFont.Charset = DEFAULT_CHARSET
          ItemFont.Color = clBlack
          ItemFont.Height = -11
          ItemFont.Name = 'Tahoma'
          ItemFont.Style = []
          ItemIndex = 0
          Items.Strings = (
            'Todos los Envios'
            'Desde la Sucursal'
            'Hacia la Sucursal'
            'Solo Domicilios')
          ParentColor = True
          ParentFont = False
          StartXPos = 7
          StartYPos = 4
          TabOnEnter = True
          TabOrder = 4
          TabStop = True
        end
      end
    end
    object tsRemitos: TRzTabSheet
      Color = 16119543
      Caption = 'Remitos'
      object gbHeadRemito: TRzGroupBox
        Left = 0
        Top = 0
        Width = 792
        Height = 120
        Align = alTop
        Alignment = taCenter
        BorderInner = fsFlat
        Caption = ' Datos Remito  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11403264
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 11796479
        GradientColorStop = 3831414
        GroupStyle = gsBanner
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        TabStop = True
        VisualStyle = vsGradient
        object bvlRemTra: TBevel
          Left = 158
          Top = 26
          Width = 244
          Height = 18
          Shape = bsFrame
        end
        object lblEntidad: TLabel
          Left = 20
          Top = 30
          Width = 73
          Height = 13
          Caption = '&Destinatario:'
          FocusControl = edtEmpleado
          Font.Charset = ANSI_CHARSET
          Font.Color = 4210688
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblOrigen: TLabel
          Left = 20
          Top = 47
          Width = 53
          Height = 26
          Caption = 'Dep'#243'sito '#13#10'&Origen:'
          FocusControl = cbDepOrigen
          Font.Charset = ANSI_CHARSET
          Font.Color = 4210688
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblVendedor: TDBText
          Left = 162
          Top = 29
          Width = 235
          Height = 12
          Color = clSilver
          DataField = 'NombreVendedor'
          DataSource = dsFacT
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblFecha: TLabel
          Left = 406
          Top = 30
          Width = 36
          Height = 13
          Caption = '&Fecha:'
          Font.Charset = ANSI_CHARSET
          Font.Color = 4210688
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblComprobante: TLabel
          Left = 406
          Top = 47
          Width = 44
          Height = 26
          Caption = '&N'#250'mero'#13#10'Remito:'
          FocusControl = edtComprobante
          Font.Charset = ANSI_CHARSET
          Font.Color = 4210688
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblDestino: TLabel
          Left = 215
          Top = 47
          Width = 53
          Height = 26
          Caption = 'Dep'#243'sito '#13#10'&Destino:'
          FocusControl = cbDepDestino
          Font.Charset = ANSI_CHARSET
          Font.Color = 4210688
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblTAjuste: TLabel
          Left = 570
          Top = 19
          Width = 44
          Height = 26
          Caption = 'Tipo de '#13#10'&Ajuste:'
          FocusControl = cbTipoAj
          Font.Charset = ANSI_CHARSET
          Font.Color = 4210688
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblRemSuc: TLabel
          Left = 570
          Top = 47
          Width = 77
          Height = 26
          Caption = 'Comprobante'#13'&Sucursal:'
          Font.Charset = ANSI_CHARSET
          Font.Color = 4210688
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblEntregarA: TLabel
          Left = 20
          Top = 78
          Width = 119
          Height = 39
          Alignment = taCenter
          Caption = 'Nombre Destinatario y '#13#10'Domicilio de entrega:'
          FocusControl = edtEntregarA
          Font.Charset = ANSI_CHARSET
          Font.Color = 4210688
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object lblFlete: TLabel
          Left = 652
          Top = 82
          Width = 43
          Height = 13
          Caption = '&Fletero:'
          Font.Charset = ANSI_CHARSET
          Font.Color = 4210688
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object edtEmpleado: TwwDBEdit
          Left = 100
          Top = 26
          Width = 55
          Height = 19
          BorderStyle = bsNone
          DataField = 'Vendedor'
          DataSource = dsFacT
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtEmpleadoKeyDown
        end
        object edtComprobante: TwwDBEdit
          Left = 452
          Top = 54
          Width = 112
          Height = 19
          BorderStyle = bsNone
          DataField = 'NroFactura'
          DataSource = dsFacT
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = edtComprobanteExit
          OnKeyDown = edtComprobanteKeyDown
        end
        object cbDepOrigen: TwwDBComboBox
          Left = 72
          Top = 54
          Width = 137
          Height = 19
          Cursor = crHandPoint
          ShowButton = True
          Style = csDropDownList
          MapList = True
          AllowClearKey = False
          ShowMatchText = True
          BorderStyle = bsNone
          DataField = 'IdStOrigen'
          DataSource = dsFacT
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          ItemHeight = 0
          ParentColor = True
          ParentFont = False
          Sorted = True
          TabOrder = 3
          UnboundDataType = wwDefault
          OnEnter = cbDepOrigenEnter
          OnExit = cbDepOrigenExit
          OnKeyDown = cbDepOrigenKeyDown
        end
        object cbDepDestino: TwwDBComboBox
          Left = 267
          Top = 54
          Width = 135
          Height = 19
          Cursor = crHandPoint
          ShowButton = True
          Style = csDropDownList
          MapList = True
          AllowClearKey = True
          AutoDropDown = True
          ShowMatchText = True
          BorderStyle = bsNone
          Color = clCream
          DataField = 'IdStDestino'
          DataSource = dsFacT
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          ItemHeight = 0
          ParentFont = False
          Sorted = True
          TabOrder = 4
          UnboundDataType = wwDefault
          OnEnter = cbDepDestinoEnter
          OnExit = cbDepDestinoExit
          OnKeyDown = cbDepOrigenKeyDown
        end
        object edtFecha: TwwDBDateTimePicker
          Left = 452
          Top = 25
          Width = 111
          Height = 19
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clNavy
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'FechaF'
          DataSource = dsFacT
          Epoch = 1950
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          ShowButton = True
          TabOrder = 1
          OnKeyDown = cbDepOrigenKeyDown
        end
        object cbTipoAj: TwwDBComboBox
          Left = 621
          Top = 26
          Width = 146
          Height = 19
          Cursor = crHandPoint
          ShowButton = True
          Style = csDropDownList
          MapList = True
          AllowClearKey = False
          BorderStyle = bsNone
          Color = clCream
          DataField = 'TipoAjuste'
          DataSource = dsFacT
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          ItemHeight = 0
          Items.Strings = (
            'Entrada'#9'1'
            'Salida'#9'-1')
          ParentFont = False
          Sorted = False
          TabOrder = 2
          UnboundDataType = wwDefault
          OnExit = cbTipoAjExit
          OnKeyDown = cbTipoAjKeyDown
        end
        object edtEntregarA: TwwDBEdit
          Left = 141
          Top = 76
          Width = 507
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'EntregarA'
          DataSource = dsFacT
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtEntregarAKeyDown
        end
        object edtDomicilioE: TwwDBEdit
          Left = 141
          Top = 97
          Width = 507
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DomicilioE'
          DataSource = dsFacT
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 8
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtEntregarAKeyDown
        end
        object edtRemSuc: TwwDBLookupComboDlg
          Left = 652
          Top = 54
          Width = 115
          Height = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          Options = [opShowOKCancel, opFixFirstColumn]
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taCenter
          Caption = 'Comprobantes Clientes'
          MaxWidth = 0
          MaxHeight = 209
          Selected.Strings = (
            'NROFACTURA'#9'13'#9'Comprobante'#9'F'
            'DESCCORTA'#9'4'#9'TC'#9'F'
            'FECHAF'#9'8'#9'Fecha'#9'F'
            'CLIENTE'#9'5'#9'Cuenta'#9'F'
            'NOMBRE'#9'15'#9'Cliente'#9'F'
            'DIR_ENTREGA'#9'20'#9'Domicilio Entrega'#9'F'
            'TELEFONOS'#9'10'#9'Telefono'#9'F'
            'CANTDOM'#9'3'#9'CP'#9'F')
          DataField = 'NroRemSuc'
          DataSource = dsFacT
          LookupTable = qTraDom
          LookupField = 'NROFACTURA'
          Style = csDropDownList
          ButtonStyle = cbsDownArrow
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 6
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = True
          UseTFields = False
          OnCloseUp = edtRemSucCloseUp
          OnExit = edtRemSucExit
          OnKeyDown = edtComprobanteKeyDown
        end
        object cbFletero: TwwDBLookupCombo
          Left = 652
          Top = 97
          Width = 115
          Height = 19
          Cursor = crHandPoint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'NOMBRE'#9'20'#9'Fletero'#9'F'
            'IDEMPLEADO'#9'3'#9'N'#186#9'F')
          DataField = 'IdFletero'
          DataSource = dsFacT
          LookupTable = qFleteros
          LookupField = 'IDEMPLEADO'
          Options = [loTitles]
          Style = csDropDownList
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 9
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnKeyDown = cbFleteroKeyDown
        end
      end
      object gbItemsR: TRzGroupBox
        Left = 0
        Top = 120
        Width = 792
        Height = 353
        Align = alClient
        Alignment = taCenter
        Caption = '  Productos '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11403264
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 11796479
        GradientColorStop = 3831414
        GroupStyle = gsBanner
        ParentColor = True
        ParentFont = False
        TabOrder = 1
        Transparent = True
        object pnlBtnRemito: TRzPanel
          Left = 0
          Top = 46
          Width = 63
          Height = 307
          Align = alLeft
          BorderOuter = fsFlat
          Caption = 'PP'
          Color = 15791348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GridColor = 14609651
          GridStyle = gsSolidLines
          ParentFont = False
          ShowGrid = True
          TabOrder = 1
          Transparent = True
          object lblState: TDBText
            Left = 1
            Top = 43
            Width = 61
            Height = 13
            Alignment = taCenter
            DataField = 'Estado'
            DataSource = dsFacT
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object pnlTipoComp: TRzPanel
            Left = 1
            Top = 1
            Width = 61
            Height = 39
            Align = alTop
            BorderInner = fsFlatBold
            BorderOuter = fsFlatRounded
            BorderColor = clGreen
            BorderShadow = clRed
            Caption = 'T'
            Color = 11726079
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -27
            Font.Name = 'Arial Black'
            Font.Style = [fsBold]
            GridStyle = gsSolidLines
            ParentFont = False
            ShowGrid = True
            TabOrder = 0
          end
          object btnModificar: TRzBitBtn
            Left = 3
            Top = 260
            Width = 57
            Height = 40
            Hint = 'buscar transferencias'
            Caption = '&ver'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentColor = True
            ParentFont = False
            TabOrder = 5
            Visible = False
            OnClick = btnModificarClick
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
              88B3E6E634D7D7D7E688E8E8E8E8E8E3E2ACACAC81E3E3E3ACE2E8E8E8E8E888
              E6E6898934E6E6D7E682E8E8E8E8E8E2E3ACACAC81ACE3E3AC81E8E8E8E8E882
              E6E61034343434B3B382E8E8E8E8E881ACAC8181818181ACAC81E8E8E8E8E888
              E6E6898934E6E6B3E682E8E8E8E8E8E2ACACACAC81ACACACAC81E8E8E8E8E8AD
              88B3B38934B3E6B38888E8E8E8E8E8E3E2E3E3AC81ACACACE2E2E8E8E8E8E8E3
              82E3D7E6E6E6E68982E3E8E8E8E8E8E381E3E3ACACACACE381E3E8E8E8E8E8E8
              AD82ADE6E6E68982ADE8E8E8E8E8E8E8E381E3ACACACE281E3E8E8E8E8E8E8E8
              E8E38882828282E3E8E8E8E8E8E8E8E8E8E3E281818181E3E8E8}
            Layout = blGlyphTop
            NumGlyphs = 2
            Spacing = 0
          end
          object btnRemitoPrint: TRzBitBtn
            Left = 3
            Top = 219
            Width = 57
            Height = 40
            Hint = 'imprimir remito y etiquetas'
            FrameColor = 7617536
            Caption = '&Imprimir'
            Color = 15791348
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 6
            OnClick = btnRemitoPrintClick
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
            Layout = blGlyphTop
            NumGlyphs = 2
            Spacing = 0
          end
          object btnRemitoSearch: TRzBitBtn
            Left = 3
            Top = 179
            Width = 57
            Height = 40
            Hint = 'buscar transferencias'
            Caption = '&Buscar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentColor = True
            ParentFont = False
            TabOrder = 4
            OnClick = btnRemitoSearchClick
            Glyph.Data = {
              36060000424D3606000000000000360400002800000020000000100000000100
              08000000000000020000830E0000830E00000001000000000000000000003300
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
              E8E8E8E8E8E8E8820982E8E8E8E8E8E8E8E8E8E8E8E8E8AC81ACE85E5E5E5E5E
              5E5E5E5E5E5E82090909E88181818181818181818181AC818181E85ED7D7D7D7
              D7D7D7D7D7DF09090982E881E8E8E8E8E8E8E8E8E8DF818181ACE85ED7E3E3E3
              E3E3DFDFDF09090982E8E881E8ACACACACACDFDFDF818181ACE8E85ED7D7D7D7
              E35DB3B3D7880982E8E8E881E8E8E8E8AC81E3E3D7E381ACE8E8E85ED7E3E3E3
              81E6B3B3B3D756E8E8E8E881E8ACACAC81E3E3E3E3D756E8E8E8E85ED7D7D7D7
              81E6D7E6B3B356E8E8E8E881E8E8E8E881E3D7E3E3E356E8E8E8E85ED7E3E3E3
              81E6D7D7E6B356E8E8E8E881E8ACACAC81E3D7D7E3E356E8E8E8E85ED7D7D7D7
              D781E6E6E65DDFE8E8E8E881E8E8E8E8E881E3E3E381DFE8E8E8E85ED7E3E3E3
              E3E3818181E35EE8E8E8E881E8ACACACACAC818181E381E8E8E8E85ED7D7D7D7
              D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3E3
              E3E3D75E5E5E5EE8E8E8E881E8ACACACACACE881818181E8E8E8E85ED7D7D7D7
              D7D7D75EE35EE8E8E8E8E881E8E8E8E8E8E8E881E381E8E8E8E8E85ED7D7D7D7
              D7D7D75E5EE8E8E8E8E8E881E8E8E8E8E8E8E88181E8E8E8E8E8E85E5E5E5E5E
              5E5E5E5EE8E8E8E8E8E8E8818181818181818181E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
            Layout = blGlyphTop
            NumGlyphs = 2
            Spacing = 0
          end
          object btnRemitoCancel: TRzBitBtn
            Left = 3
            Top = 139
            Width = 57
            Height = 40
            Hint = 'cancelar nueva transferencia'
            Caption = '&Cancelar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentColor = True
            ParentFont = False
            TabOrder = 3
            OnClick = btnRemitoCancelClick
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
            Layout = blGlyphTop
            NumGlyphs = 2
            Spacing = 0
          end
          object btnRemitoGrabar: TRzBitBtn
            Left = 3
            Top = 99
            Width = 57
            Height = 40
            Hint = 'grabar transferencia'
            FrameColor = 7617536
            Caption = '&Grabar'
            Color = 16119543
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 2
            OnClick = btnRemitoGrabarClick
            Glyph.Data = {
              36060000424D3606000000000000360400002800000020000000100000000100
              08000000000000020000830E0000830E00000001000000000000000000003300
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
              0000000000000000000000000000000000000000000000000000E8E8E8090909
              09090909090909090909E8E8E881818181818181818181818181E8E809101009
              E31009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E80909101009
              E31009E3E3E309101009E88181ACAC81E3AC81E3E3E381ACAC81091009101009
              E31009E3E3E30910100981AC81ACAC81E3AC81E3E3E381ACAC81091009101009
              E3E3E3E3E3E30910100981AC81ACAC81E3E3E3E3E3E381ACAC81091009101010
              0909090909091010100981AC81ACACAC818181818181ACACAC81091009101010
              1010101010101010100981AC81ACACACACACACACACACACACAC81091009101009
              0909090909090910100981AC81ACAC8181818181818181ACAC810910091009D7
              D7D7D7D7D7D7D709100981AC81AC81D7D7D7D7D7D7D7D781AC810910091009D7
              090909090909D709100981AC81AC81D7818181818181D781AC810910091009D7
              D7D7D7D7D7D7D709100981AC81AC81D7D7D7D7D7D7D7D781AC81091009E309D7
              090909090909D709090981AC81E381D7818181818181D78181810910091009D7
              D7D7D7D7D7D7D709100981AC81AC81D7D7D7D7D7D7D7D781AC8109E309090909
              0909090909090909090981E38181818181818181818181818181091009D7D7D7
              D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E8090909090909
              0909090909090909E8E88181818181818181818181818181E8E8}
            Layout = blGlyphTop
            NumGlyphs = 2
            Spacing = 0
          end
          object btnRemitoNuevo: TRzBitBtn
            Left = 3
            Top = 59
            Width = 57
            Height = 40
            Hint = 'ingresar nueva transferencia'
            Caption = '&Nuevo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            OnClick = btnRemitoNuevoClick
            Glyph.Data = {
              36060000424D3606000000000000360400002800000020000000100000000100
              08000000000000020000830B0000830B00000001000000000000000000003300
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
              09090909E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8E8
              09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
              09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
              09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E809090909
              0910100909090909E8E8E8E88181818181ACAC8181818181E8E8E8E809101010
              1010101010101009E8E8E8E881ACACACACACACACACACAC81E8E8E8E809101010
              1010101010101009E8E8E8E881ACACACACACACACACACAC81E8E8E8E809090909
              0910100909090909E8E8E8E88181818181ACAC8181818181E8E8E8E8E8E8E8E8
              09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
              09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
              09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
              09090909E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
            Layout = blGlyphTop
            NumGlyphs = 2
            Spacing = 0
          end
        end
        object gFacT: TwwDBGrid
          Left = 63
          Top = 46
          Width = 729
          Height = 307
          ControlType.Strings = (
            'Marca;CustomEdit;cbMarca;F')
          Selected.Strings = (
            'IdItems'#9'3'#9'N'#186#9'F'
            'IdArticulo'#9'6'#9'C'#243'digo'
            'Talle'#9'3'#9'Talle'#9'F'
            'DescripcionArticulo'#9'35'#9'Descripci'#243'n Producto'#9'F'
            'StkAct'#9'7'#9'Stk O'#9'F'
            'Cantidad'#9'8'#9'Cantidad'
            'Observacion'#9'10'#9'Observaci'#243'n'#9'F'
            'PrecioFinal'#9'9'#9'Unitario'#9'F'
            'PrecioTotal'#9'12'#9'Precio Total'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = 12704488
          FixedCols = 1
          ShowHorzScrollBar = False
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsItemsT
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = False
          UseTFields = False
          OnCalcCellColors = gFacTCalcCellColors
          OnColEnter = gFacTColEnter
          OnColExit = gFacTColExit
          OnEnter = gFacTEnter
          OnKeyDown = gFacTKeyDown
          OnKeyPress = gFacTKeyPress
          IndicatorIconColor = clRed
          OnUpdateFooter = gFacTUpdateFooter
          FooterColor = 12704488
          FooterCellColor = clWhite
          PaintOptions.ActiveRecordColor = 14811076
        end
        object pnlPrint: TRzPanel
          Left = 60
          Top = 265
          Width = 145
          Height = 40
          BorderOuter = fsFlatBold
          Color = 10930928
          GradientColorStyle = gcsCustom
          GradientColorStop = 10930928
          GridColor = clSilver
          GridStyle = gsSolidLines
          ShowGrid = True
          TabOrder = 2
          Visible = False
          VisualStyle = vsGradient
          object btnImpFiscal: TRzBitBtn
            Left = 3
            Top = 4
            Width = 34
            Height = 31
            Hint = 'Impresora Fiscal '
            HotTrack = True
            ParentColor = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = btnImpFiscalClick
            Glyph.Data = {
              E6040000424DE604000000000000360000002800000014000000140000000100
              180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFEDEDED4D4D4D3939393C3C3C3C3C3C3C3C3C3C3C3C3939
              394D4D4DEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF9595957C7C7CC2C2C2BDBDBDBDBDBDBDBDBDBDBDBDC2C2C27C7C7C
              959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF5353534D4D4D4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4D4D4D575757FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3A0A0A0000000F3F3F3
              C9C9C9CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDCDCDBFBFBF363636C8C8
              C8DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFABABAB878787404040FFFFFFB8B8B8BD
              BDBDBDBDBDBDBDBDBDBDBDBDBDBDC4C4C4C8C8C8D3D3D30505055F5F5FAFAFAF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C2C2CFFFFFFE6E6E6E9E9E9E9E9
              E9E9E9E9E9E9E9F1F1F19A9A9A6B6B6BEFEFEF363636FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB2A2A2A3C3C3C3C3C3C3C3C3C464646
              3C3C3C3C3C3C444444494949202020ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9D7D7D7D5B5B5BFAFAFAFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF8080809C9C9C535353EFEFEFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFC4C4C4767676454545FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEB4B4BCD9D9DBFFFFFFFFFFFF
              FFFFFFFFFFFFCDCDCD0606065A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFC8C8D24E4E0A5E5E66DFDFE4FFFFFFFFFFFFCE
              CED2EFEFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF5F5F5BEFEF00CBCB0052525EEBEBEED9D9DF4D4D388888
              91EFEFF0E5E5E5EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF4A4A39FFFF00CECE005555894C4C63EDED00929200898999
              8686999999A8F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF4E4E4BF6F600C2C200E4E400E6E6005959669595BC9494007E
              7E00AFAFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF4E4E4CFFFF00FEFE004141498F8FB07D7D00FFFF00696908E6E6
              F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF474739F7F700C6C600888800FFFF0047470EEDEDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF5C5C52F7F700FFFF004E4E02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF67674A505011EEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            Margin = 3
            Spacing = 0
          end
          object btnImpComun: TRzBitBtn
            Left = 38
            Top = 4
            Width = 34
            Height = 31
            Hint = 'Impresora comun'
            HotTrack = True
            ParentColor = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = btnImpComunClick
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
            Margin = 3
            NumGlyphs = 2
            Spacing = 0
          end
          object btnCodeBar: TRzBitBtn
            Left = 74
            Top = 4
            Width = 34
            Height = 31
            Hint = 'Imprimir c'#243'digos de '#13'barra ingresados en '#13'el remito'
            HotTrack = True
            ParentColor = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = btnCodeBarClick
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              20000000000000040000C40E0000C40E00000000000000000000000000000000
              00FF00000000000000FF000000FF00000000000000FF00000000000000FF0000
              00FF00000000000000FF000000FF000000FF00000000000000FF000000000000
              00FF00000000000000FF000000FF00000000000000FF00000000000000FF0000
              00FF00000000000000FF000000FF000000FF00000000000000FF000000000000
              00FF00000000000000FF000000FF00000000000000FF00000000000000FF0000
              00FF00000000000000FF000000FF000000FF00000000000000FF000000000000
              00FF00000000000000FF000000FF00000000000000FF00000000000000FF0000
              00FF00000000000000FF000000FF000000FF00000000000000FF000000000000
              00FF00000000000000FF000000FF00000000000000FF00000000000000FF0000
              00FF00000000000000FF000000FF000000FF00000000000000FF000000000000
              00FF00000000000000FF000000FF00000000000000FF00000000000000FF0000
              00FF00000000000000FF000000FF000000FF00000000000000FF000000000000
              00FF00000000000000FF000000FF00000000000000FF00000000000000FF0000
              00FF00000000000000FF000000FF000000FF00000000000000FF000000000000
              00FF00000000000000FF000000FF00000000000000FF00000000000000FF0000
              00FF00000000000000FF000000FF000000FF00000000000000FF000000000000
              00FF00000000000000FF000000FF00000000000000FF00000000000000FF0000
              00FF00000000000000FF000000FF000000FF00000000000000FF000000000000
              00FF00000000000000FF000000FF00000000000000FF00000000000000FF0000
              00FF00000000000000FF000000FF000000FF00000000000000FF000000000000
              00FF00000000000000FF000000FF00000000000000FF00000000000000FF0000
              00FF00000000000000FF000000FF000000FF00000000000000FF000000000000
              00FF00000000000000FF000000FF00000000000000FF00000000000000FF0000
              00FF00000000000000FF000000FF000000FF00000000000000FF000000000000
              00FF00000000000000FF000000FF00000000000000FF00000000000000FF0000
              00FF00000000000000FF000000FF000000FF00000000000000FF000000000000
              00FF00000000000000FF000000FF00000000000000FF00000000000000FF0000
              00FF00000000000000FF000000FF000000FF00000000000000FF000000000000
              00FF00000000000000FF000000FF00000000000000FF00000000000000FF0000
              00FF00000000000000FF000000FF000000FF00000000000000FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Margin = 3
            NumGlyphs = 2
            Spacing = 0
          end
          object btnCerrarPrint: TRzBitBtn
            Left = 110
            Top = 4
            Width = 34
            Height = 31
            Hint = 'Salir de impresi'#243'n'
            HotTrack = True
            ParentColor = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = btnCerrarPrintClick
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
              090909E8E8E8E8E8E8E8E8E8E8E8E8E8818181E8E8E8E8E8E8E8E8E8E8E8E809
              101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E80910
              101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8091010
              101009090909090909E8E8E8E881ACACACAC81818181818181E8E8E809101010
              101010101010101009E8E8E881ACACACACACACACACACACAC81E8E80910101010
              101010101010101009E8E881ACACACACACACACACACACACAC81E8E8E809101010
              101010101010101009E8E8E881ACACACACACACACACACACAC81E8E8E8E8091010
              101009090909090909E8E8E8E881ACACACAC81818181818181E8E8E8E8E80910
              101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E8E809
              101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8E8
              090909E8E8E8E8E8E8E8E8E8E8E8E8E8818181E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
            Margin = 3
            NumGlyphs = 2
            Spacing = 0
          end
        end
        object pnlSubDep: TRzPanel
          Left = 0
          Top = 22
          Width = 792
          Height = 24
          Align = alTop
          BorderOuter = fsFlat
          Enabled = False
          ParentColor = True
          TabOrder = 3
          object lblSubDepO: TLabel
            Left = 104
            Top = 7
            Width = 117
            Height = 13
            Caption = 'Sub Dep'#243'sito Origen:'
            Enabled = False
            FocusControl = cbSubDepOr
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object lblSubDepD: TLabel
            Left = 360
            Top = 7
            Width = 123
            Height = 13
            Caption = 'Sub Dep'#243'sito Destino:'
            Enabled = False
            FocusControl = cbSubDepD
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object cbSubDepOr: TwwDBComboBox
            Left = 227
            Top = 2
            Width = 121
            Height = 19
            Cursor = crHandPoint
            ShowButton = True
            Style = csDropDownList
            MapList = True
            AllowClearKey = False
            ShowMatchText = True
            BorderStyle = bsNone
            Color = clCream
            DataField = 'IdSubDepO'
            DataSource = dsFacT
            DropDownCount = 8
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ButtonEffects.Transparent = True
            ButtonEffects.Flat = True
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameEtched
            Frame.NonFocusStyle = efsFrameSingle
            ItemHeight = 0
            ParentFont = False
            Sorted = True
            TabOrder = 0
            UnboundDataType = wwDefault
            Visible = False
            OnEnter = cbSubDepOrEnter
            OnKeyDown = cbDepOrigenKeyDown
          end
          object cbSubDepD: TwwDBComboBox
            Left = 487
            Top = 2
            Width = 121
            Height = 19
            Cursor = crHandPoint
            ShowButton = True
            Style = csDropDownList
            MapList = True
            AllowClearKey = True
            AutoDropDown = True
            ShowMatchText = True
            BorderStyle = bsNone
            Color = clCream
            DataField = 'IdSubDepD'
            DataSource = dsFacT
            DropDownCount = 8
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ButtonEffects.Transparent = True
            ButtonEffects.Flat = True
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameEtched
            Frame.NonFocusStyle = efsFrameSingle
            ItemHeight = 0
            ParentFont = False
            Sorted = True
            TabOrder = 1
            UnboundDataType = wwDefault
            Visible = False
            OnEnter = cbSubDepDEnter
            OnKeyDown = cbDepOrigenKeyDown
          end
        end
      end
    end
    object tsEnvios: TRzTabSheet
      Color = 16119543
      Caption = 'Envios de datos a sucursal'
      object pcEnvioASucursales: TRzPageControl
        Left = 0
        Top = 0
        Width = 792
        Height = 473
        ActivePage = tsEnviarRemitos
        ActivePageDefault = tsEnviarRemitos
        Align = alClient
        BackgroundColor = 14871263
        BoldCurrentTab = True
        Color = 16119543
        UseColoredTabs = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FlatColor = 10263441
        ParentBackgroundColor = False
        ParentColor = False
        ParentFont = False
        ShowCardFrame = False
        ShowFocusRect = False
        TabColors.HighlightBar = 1350640
        TabIndex = 0
        TabOrder = 0
        TabStyle = tsBackSlant
        FixedDimension = 22
        object tsEnviarRemitos: TRzTabSheet
          Color = 15000804
          Caption = 'Envios'
          object pnlEnvSuc: TRzPanel
            Left = 0
            Top = 0
            Width = 792
            Height = 37
            Align = alTop
            Alignment = taLeftJustify
            BorderOuter = fsNone
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GradientColorStyle = gcsCustom
            GradientColorStop = 13434879
            ParentFont = False
            TabOrder = 1
            VisualStyle = vsGradient
            object lblSucAEnv: TLabel
              Left = 19
              Top = 4
              Width = 55
              Height = 28
              Caption = 'Sucursal a Enviar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object btnBuscarTrans: TRzBitBtn
              Left = 321
              Top = 1
              Width = 93
              Height = 30
              Hint = 'buscar transferencias'
              FrameColor = 7617536
              Caption = '&Buscar remitos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 9764864
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 0
              TextStyle = tsRecessed
              OnClick = btnBuscarTransClick
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                04000000000020010000330B0000330B00001000000000000000000000007F00
                00007F7F00007F7F7F00FF0000000038B0000000FF0080008000FF00FF0000FF
                FF00BFBFBF00CFCFCF00D0D8D000F0D8CF00EFF0EF00FFFFFF00777777777777
                777777777777000000000000000000777777FFFFFFFFFFFFEA3AA0777777FFFF
                FFFFFFEA3AEEF0777777FFFFFFFFFA3AFFFFF0777777FFDDDDD0AAFFFFFFF077
                7777FFFFFFFA02AFFFFFF0777777FFDDDDDF410AFFFFF0777777FFFFFFFFF410
                AFFFF0777777FFDDDDDDDF410AFFF0777777FFFFFFFFFFF410AFF0777777FFDD
                DDDDDDDF410AF0777777FFFFFFFFFFFFF41030777777FFDDDDDDDDDDDF410077
                7777FFFFFFFFFFFFFFF410707777FFDDDDDDDDDDDFFF41070777FFFFFFFFFFFF
                FFFFF3907077FFDDDDDDFFFFFCFFF0410707FFFFFFFFFFFFA63FF0741070FFFF
                FFFFFFFF6F5FF0774100FFFFFFFFFFFF6F6FF0777411FFFFFFFFFFFF8F8FF077
                7741FFFFFFFFFFFF6FBFF0777777777777777777777777777777}
              Margin = 0
              Spacing = 5
            end
            object cbSucAEnviar: TRzComboBox
              Left = 80
              Top = 7
              Width = 222
              Height = 24
              CharCase = ecUpperCase
              Color = clWhite
              Ctl3D = False
              FlatButtons = True
              FrameHotTrack = True
              FrameVisible = True
              ItemHeight = 16
              ParentColor = True
              ParentCtl3D = False
              TabOnEnter = True
              TabOrder = 1
              OnChange = cbSucAEnviarChange
              OnEnter = cbSucAEnviarEnter
            end
          end
          object gEnvios: TwwDBGrid
            Left = 0
            Top = 37
            Width = 711
            Height = 414
            ControlType.Strings = (
              'Selected;CheckBox;Yes;No')
            Selected.Strings = (
              'FechaF'#9'8'#9'Fecha'#9'F'
              'DESCRIPCION'#9'13'#9'TC'#9'T'
              'NroFactura'#9'13'#9'Comprobante'#9'T'
              'CantArtic'#9'3'#9'CP'#9'T'
              'Total'#9'9'#9'Total'#9'T'
              'Origen'#9'15'#9'Origen'#9'T'
              'Destino'#9'15'#9'Destino'#9'T'
              'Selected'#9'8'#9'Enviar'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 13434879
            OnMultiSelectRecord = gEnviosMultiSelectRecord
            FixedCols = 7
            ShowHorzScrollBar = True
            EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm, ecoDisableDateTimePicker]
            Align = alClient
            BorderStyle = bsNone
            Color = 15000804
            DataSource = dsqEnvios
            EditCalculated = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyOptions = [dgEnterToTab]
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnDblClick = gEnviosDblClick
            OnUpdateFooter = gEnviosUpdateFooter
            FooterColor = 13434879
            FooterCellColor = 13434879
          end
          object pnlBotEnv: TRzPanel
            Left = 711
            Top = 37
            Width = 81
            Height = 414
            Align = alRight
            BorderInner = fsFlatRounded
            BorderOuter = fsNone
            GradientColorStyle = gcsCustom
            GradientColorStop = 13434879
            GradientDirection = gdBigSquareBox
            ParentColor = True
            TabOrder = 2
            VisualStyle = vsGradient
            object lblCantEnc: TLabel
              Left = 8
              Top = 385
              Width = 64
              Height = 14
              Alignment = taRightJustify
              Caption = 'lblCantEnc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object btnSelAllEnv: TRzBitBtn
              Left = 7
              Top = 36
              Width = 65
              Height = 49
              Hint = 'Seleccionar todos'
              FrameColor = 7617536
              Caption = 'Marcar Todos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 3026524
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              LightTextStyle = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = btnSelAllEnvClick
              Glyph.Data = {
                36060000424D3606000000000000360400002800000020000000100000000100
                08000000000000020000930E0000930E00000001000000000000000000003300
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
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E85E5E5E5E
                5E5E5E5E5E5E5E5EE8E8E8E8818181818181818181818181E8E8E8E85ED7D7D7
                D7D7D7D7D7D7D75EE8E8E8E881ACACACACACACACACACAC81E8E8E8E85ED7D7D7
                09D7D7D7D7D7D75EE8E8E8E881ACACAC81ACACACACACAC81E8E8E8E85ED7D709
                0909D7D7D7D7D75EE8E8E8E881ACAC818181ACACACACAC81E8E8E8E85ED70909
                090909D7D7D7D75EE8E8E8E881AC8181818181ACACACAC81E8E8E8E85ED70909
                D7090909D7D7D75EE8E8E8E881AC8181AC818181ACACAC81E8E8E8E85ED709D7
                D7D7090909D7D75EE8E8E8E881AC81ACACAC818181ACAC81E8E8E8E85ED7D7D7
                D7D7D70909D7D75EE8E8E8E881ACACACACACAC8181ACAC81E8E8E8E85ED7D7D7
                D7D7D7D709D7D75EE8E8E8E881ACACACACACACAC81ACAC81E8E8E8E85ED7D7D7
                D7D7D7D7D7D7D75EE8E8E8E881ACACACACACACACACACAC81E8E8E8E85ED7D7D7
                D7D7D7D75E5E5E5EE8E8E8E881ACACACACACACAC81818181E8E8E8E85ED7D7D7
                D7D7D7D75EE35EE8E8E8E8E881ACACACACACACAC81AC81E8E8E8E8E85ED7D7D7
                D7D7D7D75E5EE8E8E8E8E8E881ACACACACACACAC8181E8E8E8E8E8E85E5E5E5E
                5E5E5E5E5EE8E8E8E8E8E8E8818181818181818181E8E8E8E8E8E8E8E8E8E8E8
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
              Layout = blGlyphTop
              NumGlyphs = 2
              Spacing = 0
            end
            object btnEnviar: TRzBitBtn
              Left = 7
              Top = 221
              Width = 65
              Height = 49
              Hint = 'enviar transferencias'
              FrameColor = 7617536
              Caption = 'Enviar remitos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 3026524
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              LightTextStyle = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              TextStyle = tsRecessed
              OnClick = btnEnviarClick
              Glyph.Data = {
                36060000424D3606000000000000360400002800000020000000100000000100
                08000000000000020000630D0000630D00000001000000000000000000003300
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
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E80909E8
                E80909E8E8E8E8E8E8E8E8E8E88181E8E88181E8E8E8E8E8E8E8E8E8E8091009
                E8091009E8E8E8E8E8E8E8E8E881AC81E881AC81E8E8E8E8E8E8E8E8E8091010
                0909101009E8E8E8E8E8E8E8E881ACAC8181ACAC81E8E8E8E8E8E80909091010
                100910101009E8E8E8E8E8818181ACACAC81ACACAC81E8E8E8E8E80910101010
                10100910101009E8E8E8E881ACACACACACAC81ACACAC81E8E8E8E80910101010
                1010100910101009E8E8E881ACACACACACACAC81ACACAC81E8E8E80910101010
                101010100910101009E8E881ACACACACACACACAC81ACACAC81E8E80910101010
                1010100910101009E8E8E881ACACACACACACAC81ACACAC81E8E8E80910101010
                10100910101009E8E8E8E881ACACACACACAC81ACACAC81E8E8E8E80909091010
                100910101009E8E8E8E8E8818181ACACAC81ACACAC81E8E8E8E8E8E8E8091010
                0909101009E8E8E8E8E8E8E8E881ACAC8181ACAC81E8E8E8E8E8E8E8E8091009
                E8091009E8E8E8E8E8E8E8E8E881AC81E881AC81E8E8E8E8E8E8E8E8E80909E8
                E80909E8E8E8E8E8E8E8E8E8E88181E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
              Layout = blGlyphTop
              Margin = 0
              NumGlyphs = 2
              Spacing = 0
            end
            object btnDesSelEnv: TRzBitBtn
              Left = 8
              Top = 89
              Width = 65
              Height = 49
              Hint = 'deseleccionar todos'
              FrameColor = 7617536
              Caption = 'Desmarcar Todos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 3026524
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              LightTextStyle = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = btnDesSelEnvClick
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
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E85E5E5E5E
                5E5E5E5E5E5E5E5EE8E8E8E8818181818181818181818181E8E8E8E85ED7D7D7
                D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3
                E3E3E3E3E3E3D75EE8E8E8E881E8ACACACACACACACACE881E8E8E8E85ED7D7D7
                D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3
                E3E3E3E3E3E3D75EE8E8E8E881E8ACACACACACACACACE881E8E8E8E85ED7D7D7
                D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3
                E3E3E3E3E3E3D75EE8E8E8E881E8ACACACACACACACACE881E8E8E8E85ED7D7D7
                D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3
                E3E3E3E3E3E3D75EE8E8E8E881E8ACACACACACACACACE881E8E8E8E85ED7D7D7
                D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3
                E3E3E3D75E5E5E5EE8E8E8E881E8ACACACACACE881818181E8E8E8E85ED7D7D7
                D7D7D7D75EE35EE8E8E8E8E881E8E8E8E8E8E8E881E881E8E8E8E8E85ED7D7D7
                D7D7D7D75E5EE8E8E8E8E8E881E8E8E8E8E8E8E88181E8E8E8E8E8E85E5E5E5E
                5E5E5E5E5EE8E8E8E8E8E8E8818181818181818181E8E8E8E8E8E8E8E8E8E8E8
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
              Layout = blGlyphTop
              NumGlyphs = 2
              Spacing = 0
            end
          end
        end
        object tsEnviados: TRzTabSheet
          Color = 16119543
          Caption = 'Comprobantes Enviados'
          object pnlReEnvios: TRzPanel
            Left = 0
            Top = 0
            Width = 185
            Height = 451
            Align = alLeft
            Alignment = taLeftJustify
            BorderOuter = fsFlat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GradientColorStyle = gcsCustom
            GradientColorStop = 13034239
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            VisualStyle = vsGradient
            object lblSucEnv: TLabel
              Left = 9
              Top = 162
              Width = 55
              Height = 16
              Caption = '&Sucursal'
              Transparent = True
            end
            object lblDesdeEnv: TLabel
              Left = 9
              Top = 210
              Width = 40
              Height = 16
              Caption = '&Desde'
              Transparent = True
            end
            object btnBuscarEnv: TRzBitBtn
              Left = 111
              Top = 222
              Width = 65
              Height = 30
              Hint = 'buscar transferencias realizadas'
              Caption = '&Buscar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HighlightColor = 16026986
              HotTrack = True
              HotTrackColor = 3983359
              ParentColor = True
              ParentFont = False
              TabOrder = 2
              OnClick = btnBuscarEnvClick
              Glyph.Data = {
                36060000424D3606000000000000360400002800000020000000100000000100
                08000000000000020000830E0000830E00000001000000000000000000003300
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
                E8E8E8E8E8E8E8820982E8E8E8E8E8E8E8E8E8E8E8E8E8AC81ACE85E5E5E5E5E
                5E5E5E5E5E5E82090909E88181818181818181818181AC818181E85ED7D7D7D7
                D7D7D7D7D7DF09090982E881E8E8E8E8E8E8E8E8E8DF818181ACE85ED7E3E3E3
                E3E3DFDFDF09090982E8E881E8ACACACACACDFDFDF818181ACE8E85ED7D7D7D7
                E35DB3B3D7880982E8E8E881E8E8E8E8AC81E3E3D7E381ACE8E8E85ED7E3E3E3
                81E6B3B3B3D756E8E8E8E881E8ACACAC81E3E3E3E3D756E8E8E8E85ED7D7D7D7
                81E6D7E6B3B356E8E8E8E881E8E8E8E881E3D7E3E3E356E8E8E8E85ED7E3E3E3
                81E6D7D7E6B356E8E8E8E881E8ACACAC81E3D7D7E3E356E8E8E8E85ED7D7D7D7
                D781E6E6E65DDFE8E8E8E881E8E8E8E8E881E3E3E381DFE8E8E8E85ED7E3E3E3
                E3E3818181E35EE8E8E8E881E8ACACACACAC818181E381E8E8E8E85ED7D7D7D7
                D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3E3
                E3E3D75E5E5E5EE8E8E8E881E8ACACACACACE881818181E8E8E8E85ED7D7D7D7
                D7D7D75EE35EE8E8E8E8E881E8E8E8E8E8E8E881E381E8E8E8E8E85ED7D7D7D7
                D7D7D75E5EE8E8E8E8E8E881E8E8E8E8E8E8E88181E8E8E8E8E8E85E5E5E5E5E
                5E5E5E5EE8E8E8E8E8E8E8818181818181818181E8E8E8E8E8E8E8E8E8E8E8E8
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
              NumGlyphs = 2
              Spacing = 0
            end
            object cbSucARe_Env: TRzComboBox
              Left = 9
              Top = 179
              Width = 167
              Height = 24
              Color = clWhite
              Ctl3D = False
              FlatButtons = True
              FrameHotTrack = True
              FrameVisible = True
              ItemHeight = 16
              ParentCtl3D = False
              TabOnEnter = True
              TabOrder = 0
              OnChange = cbSucARe_EnvChange
            end
            object edtDesdeEnv: TRzDateTimeEdit
              Left = 9
              Top = 227
              Width = 100
              Height = 24
              CaptionTodayBtn = 'hoy'
              CaptionClearBtn = 'borrar'
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = clWhite
              FlatButtons = True
              FrameHotTrack = True
              FrameVisible = True
              TabOnEnter = True
              TabOrder = 1
            end
            object btnSaveRem: TRzBitBtn
              Left = 9
              Top = 260
              Width = 167
              Height = 30
              Hint = 'grabar transferencias modificadas'
              Caption = '&Aplicar cambios en Remitos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HighlightColor = 16026986
              HotTrack = True
              HotTrackColor = 3983359
              ParentColor = True
              ParentFont = False
              TabOrder = 3
              OnClick = btnSaveRemClick
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
              Spacing = 0
            end
          end
          object gRemEnv: TwwDBGrid
            Left = 185
            Top = 0
            Width = 607
            Height = 451
            Hint = 'Click en estado para modificarlo'
            ControlType.Strings = (
              'Estado;CustomEdit;cbEstado;F'
              'ESTADO;CustomEdit;cbEstado;T')
            Selected.Strings = (
              'FechaF'#9'9'#9'Fecha'#9'T'#9'Comprobantes enviados'
              'DESCRIPCION'#9'20'#9'TC'#9'F'#9'Comprobantes enviados'
              'NroFactura'#9'15'#9'N'#186' de Remito '#9'T'#9'Comprobantes enviados'
              'CantArtic'#9'10'#9'Productos'#9'T'#9'Comprobantes enviados'
              'Estado'#9'20'#9'Estado'#9'F'#9'Comprobantes enviados')
            IniAttributes.Delimiter = ';;'
            TitleColor = 15396334
            FixedCols = 4
            ShowHorzScrollBar = True
            EditControlOptions = [ecoSearchOwnerForm, ecoDisableDateTimePicker]
            Align = alClient
            BorderStyle = bsNone
            Color = 16777185
            DataSource = dsqRemEnv
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
          end
          object cbEstado: TwwDBComboBox
            Left = 584
            Top = 38
            Width = 142
            Height = 24
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            DataField = 'ESTADO'
            DataSource = dsqRemEnv
            DropDownCount = 8
            ButtonEffects.Transparent = True
            ButtonEffects.Flat = True
            ItemHeight = 0
            Items.Strings = (
              'Sin Enviar'#9'1'
              'En Envio'#9'2'
              'Recibido'#9'3')
            Sorted = False
            TabOrder = 2
            UnboundDataType = wwDefault
          end
        end
      end
    end
    object tsPendientes: TRzTabSheet
      Color = 16119543
      Caption = 'Productos a domicilio'
      object pnlTopDom: TRzPanel
        Left = 0
        Top = 0
        Width = 792
        Height = 43
        Align = alTop
        BorderOuter = fsFlatRounded
        Color = 15398143
        GradientColorStyle = gcsCustom
        GradientColorStop = 14941691
        TabOrder = 0
        VisualStyle = vsGradient
        object lblSucDom: TLabel
          Left = 83
          Top = 3
          Width = 51
          Height = 13
          Caption = '&Sucursal:'
          FocusControl = cbSucA_Domic
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblDesDom: TLabel
          Left = 244
          Top = 3
          Width = 38
          Height = 13
          Caption = '&Desde:'
          FocusControl = edtDesdeDom
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblHasDom: TLabel
          Left = 339
          Top = 3
          Width = 36
          Height = 13
          Caption = '&Hasta:'
          FocusControl = edtHastaDom
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblEstado: TLabel
          Left = 434
          Top = 3
          Width = 38
          Height = 13
          Caption = 'Estado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object btnBusDom: TRzBitBtn
          Left = 572
          Top = 9
          Width = 30
          Height = 30
          Hint = 'Buscar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 4
          OnClick = btnBusDomClick
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
        object cbSucA_Domic: TRzComboBox
          Left = 83
          Top = 17
          Width = 151
          Height = 21
          Color = 15398143
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3355392
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
          TabOnEnter = True
          TabOrder = 0
          OnChange = cbSucA_DomicChange
        end
        object edtDesdeDom: TRzDateTimeEdit
          Left = 242
          Top = 17
          Width = 89
          Height = 21
          CaptionTodayBtn = 'Hoy'
          CaptionClearBtn = 'borrar'
          Date = 39287.000000000000000000
          EditType = etDate
          Format = 'dd/mm/yy'
          Color = 15398143
          FlatButtons = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FocusColor = clWhite
          FrameHotTrack = True
          FrameVisible = True
          ParentColor = True
          ParentFont = False
          TabOnEnter = True
          TabOrder = 1
        end
        object edtHastaDom: TRzDateTimeEdit
          Left = 338
          Top = 17
          Width = 89
          Height = 21
          CaptionTodayBtn = 'Hoy'
          CaptionClearBtn = 'borrar'
          Date = 39287.000000000000000000
          EditType = etDate
          Format = 'dd/mm/yy'
          Color = 15398143
          FlatButtons = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3355392
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
        object btnExpPrdDom: TRzBitBtn
          Left = 638
          Top = 9
          Width = 30
          Height = 30
          Hint = 'Exportar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 5
          OnClick = btnExpPrdDomClick
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
        object cbEstadoDom: TRzComboBox
          Left = 433
          Top = 17
          Width = 112
          Height = 21
          Color = 15398143
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3355392
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
          TabOnEnter = True
          TabOrder = 3
          Text = 'Para Enviar'
          OnChange = cbSucA_DomicChange
          Items.Strings = (
            'Para Enviar'
            'Enviados')
          ItemIndex = 0
          Values.Strings = (
            '1'
            '-1')
        end
        object btnImpProdDom: TRzBitBtn
          Left = 605
          Top = 9
          Width = 30
          Height = 30
          Hint = 'Exportar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 6
          OnClick = btnImpProdDomClick
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
      object gProdDom: TwwDBGrid
        Left = 0
        Top = 43
        Width = 792
        Height = 430
        Selected.Strings = (
          'FechaF'#9'8'#9'Fecha'#9'F'#9'Comprobantes de Venta'
          'DESCCORTA'#9'4'#9'TC'#9'F'#9'Comprobantes de Venta'
          'NroFactura'#9'13'#9'Comprobante'#9'F'#9'Comprobantes de Venta'
          'CLIENTE'#9'5'#9'N'#186#9'F'#9'Cliente'
          'NOMBRE'#9'17'#9'Nombre / RS'#9'F'#9'Cliente'
          'TELEFONOS'#9'6'#9'Tel'#9'F'#9'Cliente'
          'DIR_ENTREGA'#9'14'#9'Domicilio'#9'F'#9'Cliente'
          'CANTIDAD'#9'2'#9'CP'#9'F'#9'Producto a enviar'
          'MARCA'#9'10'#9'Marca'#9'F'#9'Producto a enviar'
          'DETALLE'#9'20'#9'Producto'#9'F'#9'Producto a enviar'
          'NOMBRESUC'#9'12'#9'Sucursal~de Salida'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = 15135474
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        BorderStyle = bsNone
        Color = 14941691
        DataSource = dsqPrdDom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2642176
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyOptions = [dgEnterToTab]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = 18432
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
        OnDblClick = gProdDomDblClick
      end
    end
    object tsInventario: TRzTabSheet
      Color = 16119543
      Caption = 'Inventario anual'
      object pcInventario: TRzPageControl
        Left = 0
        Top = 0
        Width = 792
        Height = 473
        ActivePage = tsInvInventarios
        ActivePageDefault = tsInvInventarios
        Align = alClient
        AlignTabs = True
        BoldCurrentTab = True
        Color = 14024703
        UseColoredTabs = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FlatColor = 10263441
        HotTrackColor = 3983359
        HotTrackColorType = htctComplement
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowCardFrame = False
        ShowFocusRect = False
        ShowFullFrame = False
        ShowHint = True
        ShowShadow = False
        TabColors.HighlightBar = 3983359
        TabIndex = 0
        TabOrder = 0
        TabStyle = tsCutCorner
        TextColors.Selected = clMaroon
        TextColors.Unselected = clGreen
        FixedDimension = 20
        object tsInvInventarios: TRzTabSheet
          Color = 14024703
          Caption = 'In&ventarios'
          object lblInitInv: TRzLabel
            Left = 35
            Top = 24
            Width = 119
            Height = 202
            AutoSize = False
            Caption = 
              'Esta operaci'#243'n se '#13'realiza  una sola '#13'vez, el  dia de '#13'comienzo ' +
              'del '#13'inventario y en '#13'el  dep'#243'sito a '#13'inventariar, antes '#13'de rea' +
              'lizar  '#13'cualquier '#13'otro tipo de operaci'#243'n en  el '#13'sistema, la '#13'm' +
              'odificaci'#243'n de '#13'datos que realiza '#13'es irreversible.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12642
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
            Blinking = True
            BorderInner = fsFlat
            BorderOuter = fsFlat
          end
          object pnlInventario: TRzPanel
            Left = 0
            Top = 0
            Width = 792
            Height = 33
            Align = alTop
            BorderOuter = fsFlatRounded
            Color = 14286809
            GradientColorStyle = gcsCustom
            GradientColorStop = 14286809
            TabOrder = 0
            TabStop = True
            VisualStyle = vsGradient
            object lblPerInv: TLabel
              Left = 131
              Top = 16
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
            object lblSucAInv: TLabel
              Left = 264
              Top = 16
              Width = 48
              Height = 13
              Caption = '&Sucursal'
              FocusControl = cbTInventario
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 5439488
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object cbTInventario: TRzComboBox
              Left = 315
              Top = 8
              Width = 152
              Height = 21
              AutoDropDown = True
              CharCase = ecUpperCase
              Color = 14286809
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FlatButtons = True
              FocusColor = 16119543
              FrameHotTrack = True
              FrameHotStyle = fsFlat
              FrameVisible = True
              ItemHeight = 13
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              TabOnEnter = True
              TabOrder = 1
            end
            object btnBuscarInv: TRzBitBtn
              Left = 476
              Top = 1
              Width = 30
              Height = 30
              Cursor = crHandPoint
              Hint = 'buscar remitos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 2
              OnClick = btnBuscarInvClick
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
            object btnExpRemInv: TRzBitBtn
              Left = 512
              Top = 1
              Width = 30
              Height = 30
              Cursor = crHandPoint
              Hint = 'exportar remitos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 3
              OnClick = btnExpRemInvClick
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
            object edtPerInventario: TRzSpinner
              Left = 178
              Top = 8
              Width = 71
              ButtonColor = 13041606
              Max = 2045
              Min = 2000
              TabOnEnter = True
              Value = 2007
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object gInventarios: TwwDBGrid
            Left = 0
            Top = 33
            Width = 450
            Height = 420
            Selected.Strings = (
              'IDSTDESTINO'#9'4'#9'A'#241'o'#9'F'
              'IDSTORIGEN'#9'2'#9'S'#186#9'F'
              'NROFACTURA'#9'13'#9'N'#186' Remito'#9'F'
              'CANTARTIC'#9'2'#9'CP'#9'F'
              'Total'#9'15'#9'Total PVU'#9'F'
              'TCosto'#9'15'#9'P.Costo'#9'F'
              'TNeto'#9'14'#9'Total P. Neto'#9'F'
              'TNoComp'#9'9'#9'II/No Comp.'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 16119543
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alLeft
            BorderStyle = bsNone
            Color = 14286809
            DataSource = dsqInventario
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentFont = False
            TabOrder = 1
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnDblClick = gInventariosDblClick
            OnUpdateFooter = gInventariosUpdateFooter
            FooterColor = 16119543
            FooterCellColor = 16119543
          end
          object RzSplitter1: TRzSplitter
            Left = 450
            Top = 33
            Width = 2
            Height = 420
            Position = -2
            Percent = 0
            Align = alLeft
            Color = clAqua
            TabOrder = 2
            BarSize = (
              -2
              0
              2
              420)
            UpperLeftControls = ()
            LowerRightControls = ()
          end
          object gItemsIV: TwwDBGrid
            Left = 452
            Top = 33
            Width = 340
            Height = 420
            Selected.Strings = (
              'IdArticulo'#9'5'#9'C'#243'digo'#9'F'
              'MARCA'#9'10'#9'Marca'#9'F'
              'DETALLE'#9'17'#9'Producto'#9'F'
              'Cantidad'#9'3'#9'#'#9'F'
              'PRECIOCOSTO'#9'8'#9'Costo'#9'F'
              'PRECIOFINAL'#9'12'#9'Final'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = clWhite
            FixedCols = 0
            ShowHorzScrollBar = False
            Align = alClient
            BorderStyle = bsNone
            Color = 13565951
            DataSource = dsqItemsIv
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentFont = False
            TabOrder = 3
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnDblClick = gItemsIVDblClick
            OnUpdateFooter = gItemsIVUpdateFooter
            FooterColor = clWhite
            FooterCellColor = clWhite
          end
        end
        object tsInvRemitosInventario: TRzTabSheet
          Color = 14024703
          Caption = '&Ingreso de inventario'
          object gbIngresoRInv: TRzGroupBox
            Left = 0
            Top = 0
            Width = 219
            Height = 453
            Align = alLeft
            BorderOuter = fsFlatRounded
            Caption = 'Remitos de inventarios'
            Color = 13565951
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GradientColorStyle = gcsCustom
            GroupStyle = gsBanner
            ParentFont = False
            TabOrder = 0
            object btnIniCieInv: TRzBitBtn
              Left = 40
              Top = 25
              Width = 117
              Height = 61
              Cursor = crHandPoint
              Hint = 'inicializar / generar inventario'
              Caption = 'inicializar / generar inventario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16384
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 0
              OnClick = btnIniCieInvClick
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
              Margin = 0
              NumGlyphs = 2
              Spacing = -3
            end
            object gbABMRtoManual: TRzGroupBox
              Left = 2
              Top = 95
              Width = 215
              Height = 356
              Align = alBottom
              BorderColor = 15396334
              Caption = 'Remitos Manuales / Datos remitos '
              Color = 15527920
              GroupStyle = gsUnderline
              TabOrder = 1
              object lblNomEmpRI: TDBText
                Left = 19
                Top = 277
                Width = 178
                Height = 15
                DataField = 'NomEmp'
                DataSource = dsFacIv
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblPeriodo: TLabel
                Left = 19
                Top = 139
                Width = 43
                Height = 13
                Caption = '&Periodo'
                FocusControl = edtPeriodoRI
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 5439488
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object Label1: TLabel
                Left = 19
                Top = 190
                Width = 33
                Height = 13
                Caption = '&Fecha'
                FocusControl = edtFechaRI
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 5439488
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object lblEmpleado: TLabel
                Left = 19
                Top = 240
                Width = 55
                Height = 13
                Caption = '&Empleado'
                FocusControl = edtEmpleadoRI
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 5439488
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object lblSucursal: TLabel
                Left = 19
                Top = 89
                Width = 48
                Height = 13
                Caption = '&Sucursal'
                FocusControl = cbSucursalRI
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 5439488
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object lblNroFac: TLabel
                Left = 19
                Top = 296
                Width = 77
                Height = 13
                Caption = '&Comprobante'
                FocusControl = edtComprobanteRI
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 5439488
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object lblRemAct: TDBText
                Left = 88
                Top = 159
                Width = 44
                Height = 17
                Alignment = taRightJustify
                DataField = 'IdFactura'
                DataSource = dsFacIv
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clPurple
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object edtPeriodoRI: TwwDBEdit
                Left = 19
                Top = 154
                Width = 56
                Height = 19
                BorderStyle = bsNone
                DataField = 'Periodo'
                DataSource = dsFacIv
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
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
                OnKeyDown = edtPeriodoRIKeyDown
              end
              object edtFechaRI: TwwDBDateTimePicker
                Left = 19
                Top = 205
                Width = 92
                Height = 19
                BorderStyle = bsNone
                CalendarAttributes.Font.Charset = DEFAULT_CHARSET
                CalendarAttributes.Font.Color = clWindowText
                CalendarAttributes.Font.Height = -11
                CalendarAttributes.Font.Name = 'MS Sans Serif'
                CalendarAttributes.Font.Style = []
                DataField = 'FechaI'
                DataSource = dsFacIv
                Epoch = 1950
                ButtonEffects.Transparent = True
                ButtonEffects.Flat = True
                Frame.Enabled = True
                Frame.Transparent = True
                Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
                Frame.NonFocusStyle = efsFrameSingle
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                ShowButton = True
                TabOrder = 1
                OnKeyDown = edtPeriodoRIKeyDown
              end
              object edtEmpleadoRI: TwwDBEdit
                Left = 19
                Top = 256
                Width = 53
                Height = 19
                BorderStyle = bsNone
                DataField = 'Empleado'
                DataSource = dsFacIv
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
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
                OnKeyDown = edtEmpleadoRIKeyDown
              end
              object cbSucursalRI: TwwDBComboBox
                Left = 19
                Top = 104
                Width = 126
                Height = 19
                ShowButton = True
                Style = csDropDown
                MapList = True
                AllowClearKey = False
                BorderStyle = bsNone
                DataField = 'IdDeposito'
                DataSource = dsFacIv
                DropDownCount = 8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ButtonEffects.Transparent = True
                ButtonEffects.Flat = True
                Frame.Enabled = True
                Frame.Transparent = True
                Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
                Frame.NonFocusStyle = efsFrameSingle
                ItemHeight = 0
                ParentColor = True
                ParentFont = False
                Sorted = False
                TabOrder = 3
                UnboundDataType = wwDefault
                OnEnter = cbSucursalRIEnter
                OnKeyDown = edtPeriodoRIKeyDown
              end
              object edtComprobanteRI: TwwDBEdit
                Left = 19
                Top = 312
                Width = 108
                Height = 19
                BorderStyle = bsNone
                DataField = 'NroFac'
                DataSource = dsFacIv
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
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
                OnExit = edtComprobanteRIExit
                OnKeyDown = edtPeriodoRIKeyDown
              end
              object btnNuevoRI: TRzBitBtn
                Left = 16
                Top = 24
                Width = 86
                Caption = 'Nuevo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HotTrack = True
                ParentFont = False
                TabOrder = 5
                Glyph.Data = {
                  36060000424D3606000000000000360400002800000020000000100000000100
                  08000000000000020000830B0000830B00000001000000000000000000003300
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
                  09090909E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8E8
                  09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
                  09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
                  09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E809090909
                  0910100909090909E8E8E8E88181818181ACAC8181818181E8E8E8E809101010
                  1010101010101009E8E8E8E881ACACACACACACACACACAC81E8E8E8E809101010
                  1010101010101009E8E8E8E881ACACACACACACACACACAC81E8E8E8E809090909
                  0910100909090909E8E8E8E88181818181ACAC8181818181E8E8E8E8E8E8E8E8
                  09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
                  09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
                  09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
                  09090909E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8E8
                  E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                  E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
                NumGlyphs = 2
              end
              object btnGrabarRI: TRzBitBtn
                Left = 104
                Top = 24
                Width = 86
                Caption = 'Grabar'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HotTrack = True
                ParentFont = False
                TabOrder = 6
                OnClick = btnGrabarRIClick
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
              object btnCancelarRI: TRzBitBtn
                Left = 16
                Top = 56
                Width = 86
                Caption = 'Cancelar'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HotTrack = True
                ParentFont = False
                TabOrder = 7
                OnClick = btnCancelarRIClick
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
              object btnImprimirRI: TRzBitBtn
                Left = 104
                Top = 56
                Width = 86
                Caption = 'Imprimir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HotTrack = True
                ParentFont = False
                TabOrder = 8
                OnClick = btnImprimirRIClick
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
          object gItemsI: TwwDBGrid
            Left = 219
            Top = 0
            Width = 573
            Height = 453
            Selected.Strings = (
              'IdItem'#9'3'#9'I'#186#9'F'
              'IdArticulo'#9'6'#9'C'#243'digo'#9'F'
              'Talle'#9'4'#9'Talle'#9'F'
              'DetArt'#9'40'#9'Detalle Producto'#9'F'
              'Precio'#9'10'#9'Precio'#9'F'
              'Cantidad'#9'8'#9'Cantidad'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 14019306
            FixedCols = 1
            ShowHorzScrollBar = False
            Align = alClient
            BorderStyle = bsNone
            Color = 15527920
            DataSource = dsItemsIv
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentFont = False
            TabOrder = 1
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clNavy
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnCalcCellColors = gItemsICalcCellColors
            OnColEnter = gItemsIColEnter
            OnColExit = gItemsIColExit
            OnDblClick = gItemsIDblClick
            OnEnter = gItemsIEnter
            OnKeyDown = gItemsIKeyDown
            OnKeyPress = gItemsIKeyPress
            OnUpdateFooter = gItemsIUpdateFooter
            FooterColor = 14019306
            FooterCellColor = clWhite
          end
        end
        object tsInvResultados: TRzTabSheet
          Color = 14024703
          Caption = 'Resu&ltado inventario'
          object pnlInfInv: TRzPanel
            Left = 0
            Top = 0
            Width = 792
            Height = 47
            Align = alTop
            BorderOuter = fsFlatRounded
            GradientColorStyle = gcsCustom
            GradientColorStop = 15786979
            ParentColor = True
            TabOrder = 0
            TabStop = True
            VisualStyle = vsGradient
            object lblPerInf: TLabel
              Left = 4
              Top = 5
              Width = 43
              Height = 13
              Caption = '&Periodo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16384
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblSucInf: TLabel
              Left = 75
              Top = 5
              Width = 51
              Height = 13
              Caption = '&Sucursal:'
              FocusControl = cbSucResInv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16384
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblAreaResInv: TLabel
              Left = 186
              Top = 5
              Width = 30
              Height = 13
              Caption = '&Area:'
              FocusControl = cbAreasResInv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16384
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object cbSucResInv: TRzComboBox
              Left = 75
              Top = 20
              Width = 106
              Height = 21
              AutoDropDown = True
              CharCase = ecUpperCase
              Color = 14024703
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FlatButtons = True
              FrameHotTrack = True
              FrameVisible = True
              ItemHeight = 13
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              TabOnEnter = True
              TabOrder = 1
            end
            object btnCalcResInv: TRzBitBtn
              Left = 519
              Top = 7
              Width = 86
              Height = 33
              Cursor = crHandPoint
              Hint = 'calcular resultado'
              Caption = 'Calcular resultado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16384
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 4
              OnClick = btnCalcResInvClick
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
              Margin = 0
              NumGlyphs = 2
              Spacing = -3
            end
            object btnExpDif: TRzBitBtn
              Left = 608
              Top = 7
              Width = 86
              Height = 33
              Cursor = crHandPoint
              Hint = 'exportar diferencias'
              Caption = 'Exportar resultados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16384
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 5
              OnClick = btnExpDifClick
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
              Margin = 0
              NumGlyphs = 2
              Spacing = -3
            end
            object cbAreasResInv: TRzComboBox
              Left = 186
              Top = 20
              Width = 176
              Height = 21
              Cursor = crHandPoint
              AutoDropDown = True
              Style = csDropDownList
              CharCase = ecUpperCase
              Color = 14024703
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FlatButtons = True
              FrameHotTrack = True
              FrameVisible = True
              ItemHeight = 13
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              TabOnEnter = True
              TabOrder = 2
            end
            object btnImpDif: TRzBitBtn
              Left = 698
              Top = 7
              Width = 86
              Height = 33
              Cursor = crHandPoint
              Hint = 'calcular diferencias'#13'todos los Deposito'
              Caption = 'Imprimir resultados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16384
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 6
              OnClick = btnImpDifClick
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
              Margin = 0
              NumGlyphs = 2
              Spacing = -3
            end
            object rgResTallesInv: TRzRadioGroup
              Left = 370
              Top = 2
              Width = 139
              Height = 40
              Alignment = taCenter
              Caption = '&Talles'
              Columns = 2
              Font.Charset = ANSI_CHARSET
              Font.Color = 16384
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              GradientColorStyle = gcsCustom
              GradientColorStop = 13303807
              GroupStyle = gsBanner
              ItemHotTrack = True
              ItemFont.Charset = ANSI_CHARSET
              ItemFont.Color = clNavy
              ItemFont.Height = -11
              ItemFont.Name = 'Tahoma'
              ItemFont.Style = []
              ItemIndex = 0
              Items.Strings = (
                'sin Talles'
                'con Talles')
              ParentColor = True
              ParentFont = False
              StartXPos = 4
              StartYPos = 1
              TabOnEnter = True
              TabOrder = 3
              TabStop = True
              Transparent = True
              OnClick = rgResTallesInvClick
            end
            object edtPerResInv: TRzSpinner
              Left = 4
              Top = 20
              Width = 65
              ButtonColor = clYellow
              Max = 2045
              Min = 2000
              TabOnEnter = True
              Value = 2007
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object gResInv: TwwDBGrid
            Left = 0
            Top = 47
            Width = 792
            Height = 406
            Selected.Strings = (
              'AREA'#9'10'#9'Area'#9'F'
              'Grupo'#9'14'#9'Grupo'#9'F'
              'SubGrupo'#9'15'#9'Sub Grupo'#9'F'
              'IdArticulo'#9'6'#9'C'#243'digo~Producto'#9'F'
              'DetArt'#9'25'#9'Detalle~Producto'#9'F'
              'COLOR'#9'4'#9'Color'#9'F'
              'Cantidad'#9'8'#9'Cantidad~Contada'#9'F'
              'NOCOMPUTABLES'#9'9'#9'No Comp~Imp.Int.'#9'F'
              'PRECIOCOSTO'#9'15'#9'Precio~de Costo '#9'F'
              'PRECIONETO'#9'15'#9'Precio~Neto'#9'F'
              'PRECIOFINAL'#9'15'#9'Precio~Final'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 14937849
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            BorderStyle = bsNone
            Color = 15786979
            DataSource = dsqResInv
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentFont = False
            TabOrder = 1
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = 18432
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            OnDblClick = gResInvDblClick
            OnUpdateFooter = gResInvUpdateFooter
            FooterColor = 14937849
            FooterCellColor = 14937849
          end
        end
        object tsComparativo: TRzTabSheet
          Color = 14478829
          Caption = 'Informe Comparativo'
          object pnlTopCom: TRzPanel
            Left = 0
            Top = 0
            Width = 792
            Height = 40
            Align = alTop
            Alignment = taRightJustify
            BorderOuter = fsFlatRounded
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            object lblPerCom1: TLabel
              Left = 189
              Top = 1
              Width = 53
              Height = 13
              Caption = 'Periodo 1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16384
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblSucACom: TLabel
              Left = 59
              Top = 1
              Width = 51
              Height = 13
              Caption = '&Sucursal:'
              FocusControl = cbSucComInv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16384
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblPerCom2: TLabel
              Left = 279
              Top = 1
              Width = 53
              Height = 13
              Caption = 'Periodo 2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16384
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object edtComInvPer1: TRzSpinner
              Left = 189
              Top = 16
              Width = 76
              ButtonColor = clYellow
              Max = 2045
              Min = 2000
              TabOnEnter = True
              Value = 2006
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = 6160478
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object cbSucComInv: TRzComboBox
              Left = 59
              Top = 16
              Width = 120
              Height = 21
              AutoDropDown = True
              CharCase = ecUpperCase
              Color = 14478829
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = 6160478
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FlatButtons = True
              FrameHotTrack = True
              FrameVisible = True
              ItemHeight = 13
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              TabOnEnter = True
              TabOrder = 0
            end
            object edtComInvPer2: TRzSpinner
              Left = 279
              Top = 16
              Width = 76
              ButtonColor = clYellow
              Max = 2045
              Min = 2000
              TabOnEnter = True
              Value = 2005
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = 6160478
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object btnComInv: TRzBitBtn
              Left = 364
              Top = 7
              Width = 90
              Height = 30
              FrameColor = 7617536
              Caption = 'Comparar'
              Color = 15791348
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentFont = False
              TabOrder = 3
              OnClick = btnComInvClick
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
              Spacing = 0
            end
            object btnExpComInv: TRzBitBtn
              Left = 460
              Top = 7
              Width = 30
              Height = 30
              Cursor = crHandPoint
              Hint = 'exportar remitos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 4
              OnClick = btnExpComInvClick
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
          object gComPerInv: TwwDBGrid
            Left = 0
            Top = 40
            Width = 792
            Height = 413
            Selected.Strings = (
              'DETSUCURSAL'#9'13'#9'Sucursal'#9'F'
              'IDARTICULO'#9'6'#9'Codigo'#9'F'#9'Producto'
              'MARCA'#9'15'#9'Marca'#9'F'#9'Producto'
              'DETALLE'#9'23'#9'Detalle'#9'F'#9'Producto'
              'CANT1'#9'6'#9'Cantidad'#9'F'#9'Primer Periodo'
              'COSTO1'#9'14'#9'Costo'#9'F'#9'Primer Periodo'
              'FECHA1'#9'8'#9'Fecha TI'#9'F'#9'Primer Periodo'
              'CANT2'#9'6'#9'Cantidad'#9'F'#9'Segundo Periodo'
              'COSTO2'#9'14'#9'Costo'#9'F'#9'Segundo Periodo'
              'FECHA2'#9'8'#9'Fecha TI'#9'F'#9'Segundo Periodo')
            IniAttributes.Delimiter = ';;'
            TitleColor = 14478829
            FixedCols = 0
            ShowHorzScrollBar = False
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DataSource = dsqPerComInv
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentFont = False
            TabOrder = 1
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clNavy
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            OnDblClick = gComPerInvDblClick
            OnUpdateFooter = gComPerInvUpdateFooter
            FooterColor = 14478829
            FooterCellColor = 14478829
          end
        end
      end
    end
    object tsControles: TRzTabSheet
      Color = 16119543
      Caption = 'Controles'
      object gbLectCtrl: TRzGroupBox
        Left = 0
        Top = 0
        Width = 792
        Height = 473
        Align = alClient
        Caption = 'Lecturas de control y Generaci'#243'n de Ajustes'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 0
        object pnlLectCtrl: TRzPanel
          Left = 0
          Top = 22
          Width = 792
          Height = 60
          Align = alTop
          BorderOuter = fsFlatRounded
          Color = 14017279
          GradientColorStyle = gcsCustom
          GradientColorStop = 14017279
          TabOrder = 0
          TabStop = True
          VisualStyle = vsGradient
          object lblSucLec: TLabel
            Left = 5
            Top = 4
            Width = 42
            Height = 11
            Caption = '&Sucursal'
            FocusControl = cbSucLectCtrl
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5570560
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblEstadoLect: TLabel
            Left = 4
            Top = 42
            Width = 115
            Height = 13
            Caption = 'Sin Procesar archivo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblContDesde: TLabel
            Left = 134
            Top = 4
            Width = 91
            Height = 11
            Caption = '&Inventario/Desde:'
            FocusControl = edtStkDes
            Font.Charset = ANSI_CHARSET
            Font.Color = 5570560
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblContHasta: TLabel
            Left = 228
            Top = 4
            Width = 87
            Height = 11
            Caption = '&Fecha de Control:'
            FocusControl = edtStkHas
            Font.Charset = ANSI_CHARSET
            Font.Color = 5570560
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblEstadoProc: TLabel
            Left = 737
            Top = 42
            Width = 47
            Height = 13
            Alignment = taRightJustify
            Caption = 'Estado...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cbSucLectCtrl: TRzComboBox
            Left = 5
            Top = 16
            Width = 133
            Height = 22
            AutoDropDown = True
            Color = 14017279
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            FlatButtons = True
            FocusColor = 16119543
            FrameHotTrack = True
            FrameHotStyle = fsFlat
            FrameVisible = True
            ItemHeight = 14
            ParentColor = True
            ParentCtl3D = False
            ParentFont = False
            TabOnEnter = True
            TabOrder = 0
            OnChange = cbSucLectCtrlChange
            OnEnter = cbSucLectCtrlEnter
          end
          object btnLectCtrl: TRzBitBtn
            Left = 316
            Top = 5
            Width = 117
            Height = 34
            Cursor = crHandPoint
            Caption = '1 - Ingresar Lecturas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HotTrack = True
            LightTextStyle = True
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            OnClick = btnLectCtrlClick
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
          object btnAjustesControl: TRzBitBtn
            Left = 552
            Top = 5
            Width = 117
            Height = 34
            Cursor = crHandPoint
            Hint = 'exportar remitos'
            Caption = '3 - Ver diferencias a Ajustar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HotTrack = True
            LightTextStyle = True
            ParentColor = True
            ParentFont = False
            TabOrder = 3
            OnClick = btnAjustesControlClick
            Glyph.Data = {
              36060000424D3606000000000000360400002800000020000000100000000100
              08000000000000020000620B0000620B00000001000000000000000000003300
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
              0000000000000000000000000000000000000000000000000000E8E8E8E8E809
              0910091009E8E8E8E8E8E8E8E8E8E88181AC81AC81E8E8E8E8E8E8E8E8E8E809
              1009100909E8E8E8E8E8E8E8E8E8E881AC81AC8181E8E8E8E8E8E8E8E8E8E809
              0910091009E8E8E8E8E8E8E8E8E8E88181AC81AC81E8E8E8E8E8E8E8E8E8E881
              0909090981E8E8E8E8E8E8E8E8E8E8818181818181E8E8E8E8E8E8E8E8E8E8E8
              81D7AD56E8E8E8E8E8E8E8E8E8E8E8E881D7AC81E8E8E8E8E8E8E8E8E8E8E8E8
              81D7AD56E8E8E8E8E8E8E8E8E8E8E8E881D7AC81E8E8E8E8E8E8E8E8E8E8E8E8
              81D7AD56E8E8E8E8E8E8E8E8E8E8E8E881D7AC81E8E8E8E8E8E8E8E8E8E8E8E8
              81D7AD56E8E8E8E8E8E8E8E8E8E8E8E881D7AC81E8E8E8E8E8E8E8E8E8E8E8E8
              81D7AD56E8E8E8E8E8E8E8E8E8E8E8E881D7AC81E8E8E8E8E8E8E8E8E8E8E8E8
              56565656E8E8E8E8E856E8E8E8E8E8E881818181E8E8E8E8E881E85656E8E856
              8181818156E8E8E85656E88181E8E8818181818181E8E8E88181818181565681
              ACACAC8156565656AC56818181818181ACACAC8181818181AC8181D7ACACACAC
              ACACACAC818181AC56E881D7ACACACACACACACAC818181AC81E881D7ACACD7AC
              ACACACACACACAC81E8E881D7ACACD7ACACACACACACACAC81E8E881D7D78181D7
              D7D7D7D7D78181E8E8E881D7D78181D7D7D7D7D7D78181E8E8E8E88181E8E881
              8181818181E8E8E8E8E8E88181E8E8818181818181E8E8E8E8E8}
            NumGlyphs = 2
            Spacing = 0
          end
          object btnProcLect: TRzMenuButton
            Left = 434
            Top = 5
            Width = 117
            Height = 34
            Cursor = crHandPoint
            Caption = '2 - Comparar Datos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HotTrack = True
            LightTextStyle = True
            ParentColor = True
            ParentFont = False
            PopupMenu = pmCompAjte
            TabOrder = 2
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
            DropDownMenu = pmCompAjte
          end
          object edtStkDes: TRzDateTimeEdit
            Left = 145
            Top = 16
            Width = 80
            Height = 22
            CaptionTodayBtn = 'Hoy'
            CaptionClearBtn = 'borrar'
            Date = 39287.000000000000000000
            EditType = etDate
            Format = 'dd/mm/yy'
            Color = 14017279
            FlatButtons = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            FocusColor = clWhite
            FrameHotTrack = True
            FrameHotStyle = fsFlat
            FrameVisible = True
            ParentColor = True
            ParentFont = False
            TabOnEnter = True
            TabOrder = 4
          end
          object edtStkHas: TRzDateTimeEdit
            Left = 232
            Top = 16
            Width = 80
            Height = 22
            CaptionTodayBtn = 'Hoy'
            CaptionClearBtn = 'borrar'
            Date = 39287.000000000000000000
            EditType = etDate
            Format = 'dd/mm/yy'
            Color = 14017279
            FlatButtons = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            FocusColor = clWhite
            FrameHotTrack = True
            FrameHotStyle = fsFlat
            FrameVisible = True
            ParentColor = True
            ParentFont = False
            TabOnEnter = True
            TabOrder = 5
          end
          object btnExportar: TRzMenuButton
            Left = 670
            Top = 5
            Width = 117
            Height = 34
            Hint = 'exportar datos'
            Caption = '&Exportar Ajustes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HotTrack = True
            LightTextStyle = True
            ParentColor = True
            ParentFont = False
            PopupMenu = pmExpCtrlAjts
            TabOrder = 6
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
            Spacing = 0
            DropDownMenu = pmExpCtrlAjts
          end
        end
        object pcLectCtrl: TRzPageControl
          Left = 0
          Top = 82
          Width = 792
          Height = 391
          ActivePage = tsLecturas
          ActivePageDefault = tsLecturas
          Align = alClient
          UseColoredTabs = True
          ShowFocusRect = False
          ShowFullFrame = False
          ShowShadow = False
          SoftCorners = True
          TabIndex = 0
          TabOrder = 1
          FixedDimension = 20
          object tsLecturas: TRzTabSheet
            Color = clWhite
            Caption = 'Lecturas tomadas'
            object mmLectCtrl: TRzMemo
              Left = 0
              Top = 0
              Width = 792
              Height = 370
              Align = alClient
              BevelKind = bkTile
              BorderStyle = bsNone
              Color = 15790320
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              WordWrap = False
            end
          end
          object tsTransformacion: TRzTabSheet
            Color = clWhite
            Caption = 'Transformaci'#243'n'
            object gLectCtrl: TwwDBGrid
              Left = 0
              Top = 0
              Width = 792
              Height = 370
              Selected.Strings = (
                'NrLec'#9'5'#9#186' L'#9'F'#9'Control'
                'IdEmp'#9'3'#9'E'#170#9'F'#9'Control'
                'IdSuc'#9'3'#9'S'#170#9'F'#9'Control'
                'IdReg'#9'5'#9'R'#186#9'F'#9'Productos controlados'
                'CodLec'#9'14'#9'C'#243'digo leido'#9'F'#9'Productos controlados'
                'IdArt'#9'15'#9'C'#243'digo procesado'#9'F'#9'Productos controlados'
                'Marca'#9'20'#9'Marca'#9'F'#9'Productos controlados'
                'Detalle'#9'35'#9'Producto'#9'F'#9'Productos controlados'
                'CantLect'#9'15'#9'Lectura tomada'#9'F'#9'Productos controlados')
              IniAttributes.Delimiter = ';;'
              TitleColor = 16119543
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alClient
              BorderStyle = bsNone
              Color = 14017279
              DataSource = dsLectCtrl
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 18944
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              KeyOptions = [dgEnterToTab]
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
              ParentFont = False
              TabOrder = 0
              TitleAlignment = taCenter
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              TitleLines = 2
              TitleButtons = False
              UseTFields = False
              FooterColor = 16119543
              FooterCellColor = 16119543
            end
          end
          object tsComparacion: TRzTabSheet
            Color = clWhite
            Caption = 'Comparaci'#243'n'
            object gLectTran: TwwDBGrid
              Left = 0
              Top = 0
              Width = 792
              Height = 370
              Selected.Strings = (
                'IdSuc'#9'3'#9'S'#170#9'F'
                'IdArt'#9'5'#9'Codigo'#9'F'#9'Producto'
                'Marca'#9'14'#9'Marca'#9'F'#9'Producto'
                'Detalle'#9'25'#9'Producto'#9'F'#9'Producto'
                'CantLect'#9'7'#9'Lectura'#9'F'#9'Control'
                'CantSist'#9'7'#9'Sistema'#9'F'#9'Control'
                'Dif_Cant'#9'15'#9'Diferencia p/Ajustar~con el Sistema'#9'F'
                'DetAjuste'#9'10'#9'Tipo Ajuste~a Realizar'#9'F'
                'TipoAj'#9'2'#9'TA'#9'F')
              IniAttributes.Delimiter = ';;'
              TitleColor = 16119543
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alClient
              BorderStyle = bsNone
              Color = 14017279
              DataSource = dsLectTran
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyOptions = [dgEnterToTab]
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
              ParentFont = False
              TabOrder = 0
              TitleAlignment = taCenter
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              TitleLines = 2
              TitleButtons = False
              UseTFields = False
              OnCalcCellColors = gLectTranCalcCellColors
              OnDblClick = gLectTranDblClick
              FooterColor = 16119543
              FooterCellColor = 16119543
            end
          end
          object tsAjustes: TRzTabSheet
            Color = clWhite
            Caption = 'Ajustes'
            object pnlAjuste: TRzPanel
              Left = 0
              Top = 0
              Width = 792
              Height = 38
              Align = alTop
              BorderOuter = fsFlatRounded
              Color = 14017279
              TabOrder = 0
              object btnGenerar_Ajustes: TRzBitBtn
                Left = 6
                Top = 2
                Width = 117
                Height = 34
                Cursor = crHandPoint
                Hint = 'generar remitos de ajustes'
                Caption = '4 - Generar Ajustes'
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HotTrack = True
                LightTextStyle = True
                ParentColor = True
                ParentFont = False
                TabOrder = 0
                OnClick = btnGenerar_AjustesClick
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
                Spacing = 0
              end
            end
            object gAjustes: TwwDBGrid
              Left = 0
              Top = 38
              Width = 792
              Height = 332
              Selected.Strings = (
                'IdSuc'#9'5'#9'S'#170#9'F'
                'IdArt'#9'10'#9'Codigo'#9'F'#9'Producto'
                'Marca'#9'15'#9'Marca'#9'F'#9'Producto'
                'Detalle'#9'25'#9'Producto'#9'F'#9'Producto'
                'Dif_Cant'#9'15'#9'Diferencia ~p/Ajustar'#9'F'
                'DetAjuste'#9'20'#9'Tipo Ajuste~a Realizar'#9'F')
              IniAttributes.Delimiter = ';;'
              TitleColor = 16119543
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alClient
              BorderStyle = bsNone
              Color = 14017279
              DataSource = dsLectTran
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyOptions = [dgEnterToTab]
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              ParentFont = False
              TabOrder = 1
              TitleAlignment = taCenter
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              TitleLines = 2
              TitleButtons = False
              UseTFields = False
              Visible = False
              OnCalcCellColors = gLectTranCalcCellColors
              OnDblClick = gLectTranDblClick
              FooterColor = 16119543
              FooterCellColor = 16119543
            end
          end
        end
      end
    end
  end
  object pnlFootTrasp: TRzPanel
    Left = 0
    Top = 495
    Width = 792
    Height = 28
    Align = alBottom
    BorderInner = fsFlatRounded
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStop = 14024661
    GridColor = 14609651
    GridStyle = gsSolidLines
    ParentColor = True
    ShowGrid = True
    TabOrder = 1
    VisualStyle = vsGradient
    object btnSalir: TRzBitBtn
      Left = 633
      Top = 2
      Width = 71
      Height = 24
      Hint = 'Salir de transferencias'
      Caption = '&Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
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
  object dsFacT: TDataSource
    DataSet = FacT
    Left = 53
    Top = 430
  end
  object FacT: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = FacTBeforePost
    OnNewRecord = FacTNewRecord
    Left = 24
    Top = 430
    object FacTIdFactura: TIntegerField
      FieldName = 'IdFactura'
    end
    object FacTIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
    end
    object FacTIdPuntoVenta: TIntegerField
      FieldName = 'IdPuntoVenta'
    end
    object FacTTipoFactura: TSmallintField
      FieldName = 'TipoFactura'
    end
    object FacTTipoFacStr: TStringField
      FieldName = 'TipoFacStr'
      Size = 25
    end
    object FacTFechaF: TDateField
      FieldName = 'FechaF'
    end
    object FacTNroFactura: TStringField
      FieldName = 'NroFactura'
      EditMask = '9999-99999999;1;_'
      Size = 13
    end
    object FacTCantArtic: TSmallintField
      FieldName = 'CantArtic'
    end
    object FacTVendedor: TIntegerField
      FieldName = 'Vendedor'
      Required = True
      OnValidate = FacTVendedorValidate
    end
    object FacTNombreVendedor: TStringField
      FieldName = 'NombreVendedor'
      KeyFields = 'Vendedor'
      Size = 25
    end
    object FacTIdStOrigen: TIntegerField
      FieldName = 'IdStOrigen'
      OnValidate = FacTIdStOrigenValidate
    end
    object FacTOrigenStr: TStringField
      FieldName = 'OrigenStr'
      KeyFields = 'IdStOrigen'
      Size = 60
    end
    object FacTDestinoStr: TStringField
      FieldName = 'DestinoStr'
      Size = 60
    end
    object FacTIdStDestino: TIntegerField
      FieldName = 'IdStDestino'
      OnValidate = FacTIdStDestinoValidate
    end
    object FacTTotal: TMDOBCDField
      FieldName = 'Total'
    end
    object FacTSucRemO: TSmallintField
      FieldName = 'SucRemO'
    end
    object FacTSucRemD: TSmallintField
      FieldName = 'SucRemD'
    end
    object FacTEstado: TSmallintField
      FieldName = 'Estado'
      OnGetText = FacTEstadoGetText
    end
    object FacTIdMotivo: TIntegerField
      FieldName = 'IdMotivo'
      OnValidate = FacTIdMotivoValidate
    end
    object FacTTipoAjuste: TIntegerField
      FieldName = 'TipoAjuste'
      OnValidate = FacTTipoAjusteValidate
    end
    object FacTTipoAjusteStr: TStringField
      FieldName = 'TipoAjusteStr'
      Size = 15
    end
    object FacTNroRemSuc: TStringField
      FieldName = 'NroRemSuc'
      Size = 13
    end
    object FacTIdSubDepO: TIntegerField
      FieldName = 'IdSubDepO'
      OnChange = FacTIdSubDepOChange
      OnValidate = FacTIdSubDepOValidate
    end
    object FacTIdSubDepD: TIntegerField
      FieldName = 'IdSubDepD'
      OnChange = FacTIdSubDepDChange
      OnValidate = FacTIdSubDepDValidate
    end
    object FacTSubDepOStr: TStringField
      FieldName = 'SubDepOStr'
      Size = 30
    end
    object FacTSubDepDStr: TStringField
      FieldName = 'SubDepDStr'
      Size = 30
    end
    object FacTEntregarA: TStringField
      DisplayWidth = 60
      FieldName = 'EntregarA'
      Size = 60
    end
    object FacTDomicilioE: TStringField
      DisplayWidth = 60
      FieldName = 'DomicilioE'
      Size = 60
    end
    object FacTIdFacDom: TIntegerField
      FieldName = 'IdFacDom'
      OnChange = FacTIdFacDomChange
    end
    object FacTIdSucDom: TIntegerField
      FieldName = 'IdSucDom'
    end
    object FacTIdFletero: TIntegerField
      FieldName = 'IdFletero'
    end
    object FacTFletero: TStringField
      FieldName = 'Fletero'
    end
  end
  object dsItemsT: TDataSource
    DataSet = ItemsT
    Left = 110
    Top = 430
  end
  object ItemsT: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    BeforeInsert = ItemsTBeforeInsert
    BeforePost = ItemsTBeforePost
    AfterPost = ItemsTAfterPost
    AfterDelete = ItemsTAfterDelete
    OnNewRecord = ItemsTNewRecord
    Left = 83
    Top = 430
    object ItemsTIdItems: TIntegerField
      FieldName = 'IdItems'
    end
    object ItemsTIdArticulo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'IdArticulo'
      OnSetText = ItemsTIdArticuloSetText
      OnValidate = ItemsTIdArticuloValidate
    end
    object ItemsTMarca: TStringField
      FieldName = 'Marca'
      Visible = False
    end
    object ItemsTDescripcion: TStringField
      FieldName = 'Descripcion'
      Visible = False
      Size = 80
    end
    object ItemsTDescripcionArticulo: TStringField
      DisplayLabel = 'Producto'
      DisplayWidth = 40
      FieldName = 'DescripcionArticulo'
      Size = 70
    end
    object ItemsTCantidad: TMDOBCDField
      DisplayWidth = 8
      FieldName = 'Cantidad'
      OnChange = ItemsTCantidadChange
      OnValidate = ItemsTCantidadValidate
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object ItemsTPrecioFinal: TMDOBCDField
      DisplayLabel = 'Unitario'
      DisplayWidth = 10
      FieldName = 'PrecioFinal'
      OnChange = ItemsTPrecioFinalChange
      currency = True
    end
    object ItemsTPrecioTotal: TMDOBCDField
      DisplayLabel = 'Precio Total'
      DisplayWidth = 13
      FieldName = 'PrecioTotal'
      currency = True
    end
    object ItemsTIdFactura: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdFactura'
      Visible = False
    end
    object ItemsTServicio: TSmallintField
      FieldName = 'Servicio'
    end
    object ItemsTCodBarra: TStringField
      FieldName = 'CodBarra'
    end
    object ItemsTGrupoSubGrupo: TStringField
      FieldName = 'GrupoSubGrupo'
      Size = 40
    end
    object ItemsTTieneTalle: TSmallintField
      FieldName = 'TieneTalle'
    end
    object ItemsTColor: TStringField
      FieldName = 'Color'
    end
    object ItemsTStkAct: TMDOBCDField
      FieldName = 'StkAct'
      DisplayFormat = '0.0'
      EditFormat = '0.0'
    end
    object ItemsTTalle: TIntegerField
      FieldName = 'Talle'
      OnGetText = ItemsTTalleGetText
      OnSetText = ItemsTTalleSetText
      OnValidate = ItemsTTalleValidate
    end
    object ItemsTTipoAj: TIntegerField
      FieldName = 'TipoAj'
    end
    object ItemsTTieneStk: TSmallintField
      FieldName = 'TieneStk'
    end
    object ItemsTObservacion: TStringField
      FieldName = 'Observacion'
      Size = 15
    end
    object ItemsTDetalle1: TStringField
      DisplayWidth = 50
      FieldName = 'Detalle1'
      Size = 50
    end
    object ItemsTDetalle2: TStringField
      DisplayWidth = 50
      FieldName = 'Detalle2'
      Size = 50
    end
    object ItemsTDetalle3: TStringField
      DisplayWidth = 50
      FieldName = 'Detalle3'
      Size = 50
    end
    object ItemsTDetalle4: TStringField
      DisplayWidth = 50
      FieldName = 'Detalle4'
      Size = 50
    end
    object ItemsTParaDomicilio: TSmallintField
      FieldName = 'ParaDomicilio'
    end
    object ItemsTIdFacDomCli: TIntegerField
      FieldName = 'IdFacDomCli'
    end
    object ItemsTIdSucDomCli: TIntegerField
      FieldName = 'IdSucDomCli'
    end
  end
  object qTrasp: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      
        'Select T.IdFactura, T.IdSucursal, T.IdPuntoVenta, T.TipoFactura,' +
        ' '
      
        '           T.FechaF,T.NroFactura,  T.TipoAJ, T.Empleado, T.IdStO' +
        'rigen, '
      '           T.IdStDestino, T.Total, T.DiaHora, T.CantArtic, '
      '           T.Estado, T.NroRemSuc, T.ENTREGARA, T.IdFletero,'
      '           T.DOMICILIOE,  T.En_Ambas, E.Nombre as NomEnt, '
      '           D.NombreSuc as DestMov, O.NombreSuc as SOrigen, '
      '           T.IdSubDepO, T.IdSubDepD, U.Nombre as NomUsr,'
      '           C.Descripcion, F.Nombre as Fletero'
      'From Traspaso T'
      'Join Sucursales O'
      '  on O.IdSucursal = T.IdStOrigen'
      'Left Outer Join Sucursales D'
      '  on D.IdSucursal = T.IdStDestino'
      'Join TiposComp C'
      '  on C.IdComprobante = T.TipoFactura'
      'Join Empleados E'
      '  on E.IdEmpleado = T.Empleado'
      'Join Empleados U'
      '  on U.IdEmpleado = T.Usuario'
      'Left Outer Join Empleados F'
      '  on  F.IdEmpleado = T.IdFletero'
      'Where (T.TipoFactura =:TFac)  And '
      '            (T.FechaF >=:Desde) And '
      '            (T.IdStOrigen = :IdSuc) And '
      '            (T.State = 0)'
      'Order By T.FechaF desc'
      '')
    Left = 24
    Top = 458
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TFac'
        ParamType = ptUnknown
        Value = 39
      end
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'IdSuc'
        ParamType = ptUnknown
      end>
  end
  object qItemsT: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsqTransp
    LoadDefaults = False
    SQL.Strings = (
      'Select I.IdFactura, I.IdSucursal, I.IdPuntoVenta, I.IdItem, '
      
        '           I.IdSucursalO, I.IdSucursalD, I.IdArticulo, I.Talle, ' +
        'I.TMov, '
      
        '           I.FechaF, I.Cantidad, I.TipoAj,  I.PrecioFinal, I.Pre' +
        'cioTotal, '
      
        '           I.DETALLE1,I.DETALLE2,  I.DETALLE3, I.DETALLE4, A.Mar' +
        'ca, '
      
        '           A.Detalle,  A.CodBarra, A.TieneTalle,  G.Grupo, S.Sub' +
        'Grupo'
      'From ItemsTR I'
      'Join Articulos A'
      '   on A.IdArticulo = I.IdArticulo'
      'Join Grupos G'
      '   on G.IdArea = A.IdArea And '
      '        G.IdGrupo = A.IdGrupo'
      'Join SubGrupos S'
      '   on S.IdArea = A.IdArea And '
      '        S.IdGrupo = A.IdGrupo and '
      '        S.IdSubGrupo = A.IdSubGrupo'
      'Where I.IdFactura =:IdFactura And '
      '            I.IdSucursal =:IdSucursal And '
      '            I.IdPuntoVenta =:IdPuntoVenta And '
      '            I.TMov =:TipoFactura')
    Left = 167
    Top = 458
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
      end
      item
        DataType = ftSmallint
        Name = 'TIPOFACTURA'
        ParamType = ptUnknown
        Size = 2
      end>
  end
  object dsTransp: TDataSource
    DataSet = Trasp
    Left = 138
    Top = 458
  end
  object dsItems: TDataSource
    DataSet = Items
    Left = 220
    Top = 458
  end
  object qEnvios: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      
        'Select T.IdFactura, T.IdSucursal, T.IdPuntoVenta, T.TipoFactura,' +
        ' '
      
        '           T.IdStOrigen, T.IdStDestino, T.Estado, T.Empleado, T.' +
        'DiaHora, '
      
        '           T.FechaF,  T.CantArtic, T.Total, T.Usuario, T.NroFact' +
        'ura,'
      
        '           O.NombreSuc as Origen, D.NombreSuc as Destino, C.Desc' +
        'ripcion'
      'From Traspaso T'
      'Join Sucursales O'
      '  On O.IdSucursal = T.IdStOrigen'
      'Join Sucursales D'
      '  On D.IdSucursal = T.IdStDestino'
      'Join TiposComp C'
      '  on C.IdComprobante = T.TipoFactura'
      'Where (T.IdStDestino =:D Or T.IdStOrigen =:D)'
      '            And (T.Estado = 1) And (T.TipoFactura =:T)'
      'Order By T.FechaF desc'
      '')
    Left = 249
    Top = 458
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'D'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'D'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'T'
        ParamType = ptUnknown
      end>
    object qEnviosIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"TRASPASO"."IDFACTURA"'
      Required = True
    end
    object qEnviosIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"TRASPASO"."IDSUCURSAL"'
      Required = True
    end
    object qEnviosIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Origin = '"TRASPASO"."IDPUNTOVENTA"'
      Required = True
    end
    object qEnviosTIPOFACTURA: TSmallintField
      FieldName = 'TIPOFACTURA'
      Origin = '"TRASPASO"."TIPOFACTURA"'
    end
    object qEnviosIDSTORIGEN: TIntegerField
      FieldName = 'IDSTORIGEN'
      Origin = '"TRASPASO"."IDSTORIGEN"'
    end
    object qEnviosIDSTDESTINO: TIntegerField
      FieldName = 'IDSTDESTINO'
      Origin = '"TRASPASO"."IDSTDESTINO"'
    end
    object qEnviosESTADO: TSmallintField
      FieldName = 'ESTADO'
      Origin = '"TRASPASO"."ESTADO"'
    end
    object qEnviosEMPLEADO: TIntegerField
      FieldName = 'EMPLEADO'
      Origin = '"TRASPASO"."EMPLEADO"'
    end
    object qEnviosDIAHORA: TDateTimeField
      FieldName = 'DIAHORA'
      Origin = '"TRASPASO"."DIAHORA"'
    end
    object qEnviosFECHAF: TDateField
      FieldName = 'FECHAF'
      Origin = '"TRASPASO"."FECHAF"'
    end
    object qEnviosCANTARTIC: TSmallintField
      FieldName = 'CANTARTIC'
      Origin = '"TRASPASO"."CANTARTIC"'
    end
    object qEnviosTOTAL: TMDOBCDField
      FieldName = 'TOTAL'
      Origin = '"TRASPASO"."TOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qEnviosUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"TRASPASO"."USUARIO"'
    end
    object qEnviosDESCRIPCION: TMDOStringField
      FieldName = 'DESCRIPCION'
      Origin = '"TIPOSCOMP"."DESCRIPCION"'
    end
    object qEnviosNROFACTURA: TMDOStringField
      FieldName = 'NROFACTURA'
      Origin = '"TRASPASO"."NROFACTURA"'
      Size = 13
    end
    object qEnviosORIGEN: TMDOStringField
      FieldName = 'ORIGEN'
    end
    object qEnviosDESTINO: TMDOStringField
      FieldName = 'DESTINO'
    end
    object qEnviosSelected: TBooleanField
      Alignment = taCenter
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Selected'
      Calculated = True
    end
  end
  object dsqEnvios: TDataSource
    DataSet = qEnvios
    Left = 278
    Top = 458
  end
  object qSetEnviados: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'UpDate Traspaso '
      '       Set Estado = 2 '
      'Where IdFactura =:IdFac And '
      '            IdSucursal =:IdSuc And '
      '            IdPuntoVenta =:IdPto And '
      '            TipoFactura =:TipoR')
    Left = 308
    Top = 458
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IdFac'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'IdSuc'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'IdPto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoR'
        ParamType = ptUnknown
      end>
  end
  object qRemEnv: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      
        'Select T.IdFactura, T.IdSucursal, T.IdPuntoVenta, T.FechaF, T.Nr' +
        'oFactura,'
      '       T.CantArtic, T.TipoFactura, T.Estado, C.Descripcion'
      'From Traspaso T'
      'Join TiposComp C'
      '  on C.IdComprobante = T.TipoFactura'
      'Where ((IdStOrigen = :IdOrg) Or (IdStDestino = :IdDes)) And'
      '            (FechaF >= :Desde) And'
      '            (Estado >= 2) And'
      '            (T.TipoFactura = :TipoR)'
      '')
    Left = 337
    Top = 458
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IdOrg'
        ParamType = ptUnknown
        Value = 4
      end
      item
        DataType = ftInteger
        Name = 'IdDes'
        ParamType = ptUnknown
        Value = 4
      end
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptUnknown
        Value = 39448d
      end
      item
        DataType = ftInteger
        Name = 'TipoR'
        ParamType = ptUnknown
        Value = 39
      end>
    object qRemEnvIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"TRASPASO"."IDFACTURA"'
      Required = True
    end
    object qRemEnvIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"TRASPASO"."IDSUCURSAL"'
      Required = True
    end
    object qRemEnvFECHAF: TDateField
      Alignment = taCenter
      FieldName = 'FECHAF'
      Origin = '"TRASPASO"."FECHAF"'
    end
    object qRemEnvNROFACTURA: TMDOStringField
      FieldName = 'NROFACTURA'
      Origin = '"TRASPASO"."NROFACTURA"'
      Size = 13
    end
    object qRemEnvCANTARTIC: TSmallintField
      Alignment = taCenter
      FieldName = 'CANTARTIC'
      Origin = '"TRASPASO"."CANTARTIC"'
    end
    object qRemEnvESTADO: TSmallintField
      FieldName = 'ESTADO'
      Origin = '"TRASPASO"."ESTADO"'
    end
    object qRemEnvTIPOFACTURA: TSmallintField
      FieldName = 'TIPOFACTURA'
      Origin = '"TRASPASO"."TIPOFACTURA"'
    end
    object qRemEnvDESCRIPCION: TMDOStringField
      FieldName = 'DESCRIPCION'
      Origin = '"TIPOSCOMP"."DESCRIPCION"'
    end
    object qRemEnvIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Origin = '"TRASPASO"."IDPUNTOVENTA"'
      Required = True
    end
  end
  object dsqRemEnv: TDataSource
    DataSet = ModEnviados
    Left = 367
    Top = 458
  end
  object qPrdDom: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select F.IdFactura, F.IdSucursal, F.IdPuntoVenta, F.FechaF, '
      '           F.NroFactura, F.Cliente, F.Dir_Entrega, T.DescCorta, '
      '           C.Nombre, C.Telefonos, I.IdArticulo, I.Cantidad, '
      '           I.IdSucSalida, I.FechaSal, K.NombreSuc, A.Marca, '
      '           A.Detalle'
      'From FacVen F'
      'Join ItemsFV I'
      '  on (I.IdFactura = F.IdFactura) And '
      '       (I.IdSucursal = F.IdSucursal) And '
      '       (I.IdPuntoVenta = F.IdPuntoVenta)'
      'Join TiposComp T'
      '  on T.IdComprobante = F.TipoFactura'
      'Join Clientes C'
      '  on (C.IdCliente = F.Cliente) And '
      '       (C.IdSucursal = F.IdSucursal)'
      'Left Outer Join Sucursales K'
      '  on K.IdSucursal = I.IdSucSalida'
      'Join Articulos A'
      '  on A.IdArticulo = I.IdArticulo'
      'Where (F.FechaF between :Desde And :Hasta) And'
      '            (F.IdSucursal = :IdSuc) And'
      '            (F.State = 0) And (I.MosDom = :Cual)')
    Left = 514
    Top = 458
    ParamData = <
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptUnknown
        Value = 39448d
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptUnknown
        Value = 39691d
      end
      item
        DataType = ftInteger
        Name = 'IdSuc'
        ParamType = ptUnknown
        Value = 4
      end
      item
        DataType = ftInteger
        Name = 'Cual'
        ParamType = ptUnknown
      end>
    object qPrdDomIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"FACVEN"."IDFACTURA"'
      Required = True
      Visible = False
    end
    object qPrdDomIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"FACVEN"."IDSUCURSAL"'
      Required = True
      Visible = False
    end
    object qPrdDomIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Origin = '"FACVEN"."IDPUNTOVENTA"'
      Required = True
      Visible = False
    end
    object qPrdDomFECHAF: TDateField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAF'
      Origin = '"FACVEN"."FECHAF"'
    end
    object qPrdDomNROFACTURA: TMDOStringField
      DisplayLabel = 'Comprobante'
      FieldName = 'NROFACTURA'
      Origin = '"FACVEN"."NROFACTURA"'
      Size = 13
    end
    object qPrdDomCLIENTE: TIntegerField
      DisplayLabel = 'C'#186
      FieldName = 'CLIENTE'
      Origin = '"FACVEN"."CLIENTE"'
    end
    object qPrdDomDIR_ENTREGA: TMDOStringField
      DisplayLabel = 'Domicilio'
      FieldName = 'DIR_ENTREGA'
      Origin = '"FACVEN"."DIR_ENTREGA"'
      Size = 80
    end
    object qPrdDomDESCCORTA: TMDOStringField
      DisplayLabel = 'TC'
      FieldName = 'DESCCORTA'
      Origin = '"TIPOSCOMP"."DESCCORTA"'
      Size = 5
    end
    object qPrdDomNOMBRE: TMDOStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOMBRE'
      Origin = '"CLIENTES"."NOMBRE"'
      Size = 30
    end
    object qPrdDomTELEFONOS: TMDOStringField
      DisplayLabel = 'Tel'
      FieldName = 'TELEFONOS'
      Origin = '"CLIENTES"."TELEFONOS"'
      Size = 30
    end
    object qPrdDomCANTIDAD: TMDOBCDField
      DisplayLabel = 'Cant'
      FieldName = 'CANTIDAD'
      Origin = '"ITEMSFV"."CANTIDAD"'
      Precision = 18
      Size = 4
    end
    object qPrdDomIDARTICULO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDARTICULO'
      Origin = '"ITEMSFV"."IDARTICULO"'
    end
    object qPrdDomMARCA: TMDOStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = '"ARTICULOS"."MARCA"'
    end
    object qPrdDomDETALLE: TMDOStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = '"ARTICULOS"."DETALLE"'
      Size = 60
    end
    object qPrdDomIDSUCSALIDA: TIntegerField
      FieldName = 'IDSUCSALIDA'
      Origin = '"ITEMSFV"."IDSUCSALIDA"'
    end
    object qPrdDomNOMBRESUC: TMDOStringField
      FieldName = 'NOMBRESUC'
      Origin = '"SUCURSALES"."NOMBRESUC"'
      OnGetText = qPrdDomNOMBRESUCGetText
    end
    object qPrdDomFECHASAL: TDateField
      FieldName = 'FECHASAL'
      Origin = '"ITEMSFV"."FECHASAL"'
    end
  end
  object dsqPrdDom: TDataSource
    DataSet = qPrdDom
    Left = 544
    Top = 458
  end
  object qTraDom: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select F.IdFactura, F.IdSucursal, F.IdPuntoVenta, F.FechaF, '
      '           F.NroFactura, F.Cliente, F.Dir_Entrega, T.DescCorta, '
      '           C.Nombre, C.Telefonos, Count(I.MosDom) as CantDom'
      'From FacVen F'
      'Join ItemsFV I'
      '  on (I.IdFactura = F.IdFactura) And '
      '       (I.IdSucursal = F.IdSucursal) And '
      '       (I.IdPuntoVenta = F.IdPuntoVenta)'
      'Join TiposComp T'
      '  on T.IdComprobante = F.TipoFactura'
      'Join Clientes C'
      '  on (C.IdCliente = F.Cliente) And '
      '       (C.IdSucursal = F.IdSucursal)'
      'Where  (F.FechaF <= :Hasta) And'
      '            (F.IdSucursal = :IdSuc) And'
      '            (F.State = 0) And '
      '            (I.MosDom = 1)'
      'Group By  F.IdFactura, F.IdSucursal, F.IdPuntoVenta, F.FechaF, '
      '           F.NroFactura, F.Cliente, F.Dir_Entrega, T.DescCorta, '
      '           C.Nombre, C.Telefonos')
    Left = 573
    Top = 458
    ParamData = <
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptUnknown
        Value = 39691d
      end
      item
        DataType = ftInteger
        Name = 'IdSuc'
        ParamType = ptUnknown
        Value = 4
      end>
    object qTraDomIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Required = True
    end
    object qTraDomIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Required = True
    end
    object qTraDomIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Required = True
    end
    object qTraDomFECHAF: TDateField
      DisplayLabel = 'Fecha'
      DisplayWidth = 8
      FieldName = 'FECHAF'
    end
    object qTraDomNROFACTURA: TMDOStringField
      FieldName = 'NROFACTURA'
      Size = 13
    end
    object qTraDomCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object qTraDomDIR_ENTREGA: TMDOStringField
      FieldName = 'DIR_ENTREGA'
      Size = 80
    end
    object qTraDomDESCCORTA: TMDOStringField
      FieldName = 'DESCCORTA'
      Size = 5
    end
    object qTraDomNOMBRE: TMDOStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object qTraDomTELEFONOS: TMDOStringField
      FieldName = 'TELEFONOS'
      Size = 30
    end
    object qTraDomCANTDOM: TIntegerField
      FieldName = 'CANTDOM'
      Required = True
    end
  end
  object dsqTraDom: TDataSource
    DataSet = qTraDom
    Left = 603
    Top = 458
  end
  object dbpPrdDom: TppDBPipeline
    DataSource = dsqPrdDom
    UserName = 'dbpPrdDom'
    Left = 455
    Top = 458
  end
  object rpPrdDom: TppReport
    AutoStop = False
    DataPipeline = dbpPrdDom
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Transferencias a domicilio'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 11430
    PrinterSetup.mmMarginLeft = 8890
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 16510
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 485
    Top = 458
    Version = '10.02'
    mmColumnWidth = 284300
    DataPipelineName = 'dbpPrdDom'
    object hbPrdDom: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object shPDom1: TppShape
        UserName = 'shPDom1'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 0
        mmWidth = 194760
        BandType = 0
      end
      object lblPDTitulo: TppLabel
        UserName = 'lblPDTitulo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblPDTitulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 87048
        mmTop = 1588
        mmWidth = 19431
        BandType = 0
      end
    end
    object dbPrdDom: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object lblPDCodArt: TppDBText
        UserName = 'lblPDCodArt'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'IDARTICULO'
        DataPipeline = dbpPrdDom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpPrdDom'
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 265
        mmWidth = 18256
        BandType = 4
      end
      object lblPDMarca: TppDBText
        UserName = 'lblPDMarca'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MARCA'
        DataPipeline = dbpPrdDom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpPrdDom'
        mmHeight = 3440
        mmLeft = 25400
        mmTop = 265
        mmWidth = 30692
        BandType = 4
      end
      object lblPDDetalle: TppDBText
        UserName = 'lblPDDetalle'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DETALLE'
        DataPipeline = dbpPrdDom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpPrdDom'
        mmHeight = 3440
        mmLeft = 58208
        mmTop = 265
        mmWidth = 90488
        BandType = 4
      end
      object lblPDCant: TppDBText
        UserName = 'lblPDCant'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CANTIDAD'
        DataPipeline = dbpPrdDom
        DisplayFormat = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrdDom'
        mmHeight = 3440
        mmLeft = 158750
        mmTop = 265
        mmWidth = 5292
        BandType = 4
      end
      object lblPDFecEnt: TppDBText
        UserName = 'lblFechaF1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FECHASAL'
        DataPipeline = dbpPrdDom
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpPrdDom'
        mmHeight = 3440
        mmLeft = 174625
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
    end
    object fbPrdDom: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object shPDom3: TppShape
        UserName = 'shPDom3'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 194760
        BandType = 8
      end
      object lblPDEmision: TppSystemVariable
        UserName = 'lblPDEmision'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 2117
        mmTop = 1323
        mmWidth = 28025
        BandType = 8
      end
      object lblPDNroPag: TppSystemVariable
        UserName = 'lblPDNroPag'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 175419
        mmTop = 1323
        mmWidth = 16933
        BandType = 8
      end
    end
    object grpPrdDom: TppGroup
      BreakName = 'CLIENTE'
      DataPipeline = dbpPrdDom
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'grpPrdDom'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpPrdDom'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12435
        mmPrintPosition = 0
        object shPDom2: TppShape
          UserName = 'shPDom2'
          ParentHeight = True
          ParentWidth = True
          Shape = stRoundRect
          mmHeight = 12435
          mmLeft = 0
          mmTop = 0
          mmWidth = 194760
          BandType = 3
          GroupNo = 0
        end
        object lblPDTComp: TppDBText
          UserName = 'lblPDTComp'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'DESCCORTA'
          DataPipeline = dbpPrdDom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpPrdDom'
          mmHeight = 3440
          mmLeft = 147373
          mmTop = 5027
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
        object lblPDTelCli: TppDBText
          UserName = 'lblPDTelCli'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TELEFONOS'
          DataPipeline = dbpPrdDom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpPrdDom'
          mmHeight = 3440
          mmLeft = 115888
          mmTop = 5027
          mmWidth = 29633
          BandType = 3
          GroupNo = 0
        end
        object lblPDDomicilio: TppDBText
          UserName = 'lblPDDomicilio'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'DIR_ENTREGA'
          DataPipeline = dbpPrdDom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpPrdDom'
          mmHeight = 3440
          mmLeft = 55563
          mmTop = 5027
          mmWidth = 57944
          BandType = 3
          GroupNo = 0
        end
        object lblPDNomCli: TppDBText
          UserName = 'lblPDNomCli'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'NOMBRE'
          DataPipeline = dbpPrdDom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpPrdDom'
          mmHeight = 3440
          mmLeft = 14817
          mmTop = 5027
          mmWidth = 39158
          BandType = 3
          GroupNo = 0
        end
        object lblPDNroCli: TppDBText
          UserName = 'lblPDNroCli'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'CLIENTE'
          DataPipeline = dbpPrdDom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpPrdDom'
          mmHeight = 3429
          mmLeft = 1852
          mmTop = 5027
          mmWidth = 11113
          BandType = 3
          GroupNo = 0
        end
        object lblPDNroFac: TppDBText
          UserName = 'lblPDNroFac'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'NROFACTURA'
          DataPipeline = dbpPrdDom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpPrdDom'
          mmHeight = 3440
          mmLeft = 157163
          mmTop = 5027
          mmWidth = 21696
          BandType = 3
          GroupNo = 0
        end
        object lblPDProducto: TppLabel
          UserName = 'lblPDProducto'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Productos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2963
          mmLeft = 48154
          mmTop = 8996
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object lblPDCantidad: TppLabel
          UserName = 'lblPDCantidad'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Cantidad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2963
          mmLeft = 152929
          mmTop = 9260
          mmWidth = 11091
          BandType = 3
          GroupNo = 0
        end
        object lblPDFecVen: TppDBText
          UserName = 'lblPDFecVen'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'FECHAF'
          DataPipeline = dbpPrdDom
          DisplayFormat = 'dd/mm/yy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpPrdDom'
          mmHeight = 3429
          mmLeft = 180182
          mmTop = 5027
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object lblPDFSal: TppLabel
          UserName = 'lblPDFSal'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'FE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2963
          mmLeft = 187855
          mmTop = 9260
          mmWidth = 3440
          BandType = 3
          GroupNo = 0
        end
        object lblDatosCli: TppLabel
          UserName = 'lblDatosCli'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = ' Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3969
          mmTop = 529
          mmWidth = 10837
          BandType = 3
          GroupNo = 0
        end
        object lblPDComprobantes: TppLabel
          UserName = 'lblPDComprobantes'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Datos Comprobantes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 148961
          mmTop = 529
          mmWidth = 41010
          BandType = 3
          GroupNo = 0
        end
      end
      object gfbPDom: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ModEnviados: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IdOrg'
        ParamType = ptUnknown
        Value = 4
      end
      item
        DataType = ftInteger
        Name = 'IdDes'
        ParamType = ptUnknown
        Value = 4
      end
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptUnknown
        Value = 39448d
      end
      item
        DataType = ftInteger
        Name = 'TipoR'
        ParamType = ptUnknown
        Value = 39
      end>
    ProviderName = 'dspqRemEnv'
    AfterPost = ModEnviadosAfterPost
    OnReconcileError = ModEnviadosReconcileError
    Left = 426
    Top = 458
    object ModEnviadosIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"TRASPASO"."IDFACTURA"'
      Required = True
    end
    object ModEnviadosIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"TRASPASO"."IDSUCURSAL"'
      Required = True
    end
    object ModEnviadosFECHAF: TDateField
      Alignment = taCenter
      FieldName = 'FECHAF'
      Origin = '"TRASPASO"."FECHAF"'
      DisplayFormat = 'dd/mm/yy'
    end
    object ModEnviadosNROFACTURA: TStringField
      FieldName = 'NROFACTURA'
      Origin = '"TRASPASO"."NROFACTURA"'
      Size = 13
    end
    object ModEnviadosCANTARTIC: TSmallintField
      Alignment = taCenter
      FieldName = 'CANTARTIC'
      Origin = '"TRASPASO"."CANTARTIC"'
    end
    object ModEnviadosESTADO: TSmallintField
      FieldName = 'ESTADO'
      Origin = '"TRASPASO"."ESTADO"'
    end
    object ModEnviadosTIPOFACTURA: TSmallintField
      FieldName = 'TIPOFACTURA'
      Origin = '"TRASPASO"."TIPOFACTURA"'
    end
    object ModEnviadosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = '"TIPOSCOMP"."DESCRIPCION"'
    end
    object ModEnviadosIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Required = True
    end
  end
  object dspqRemEnv: TDataSetProvider
    DataSet = qRemEnv
    Options = [poIncFieldProps]
    BeforeUpdateRecord = dspqRemEnvBeforeUpdateRecord
    Left = 396
    Top = 458
  end
  object qFleteros: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IdEmpleado, Nombre'
      'From Empleados'
      'Where TipoE = 2')
    Left = 633
    Top = 458
    object qFleterosNOMBRE: TMDOStringField
      DisplayLabel = 'Fletero'
      DisplayWidth = 20
      FieldName = 'NOMBRE'
      Size = 30
    end
    object qFleterosIDEMPLEADO: TIntegerField
      DisplayLabel = 'N'#186
      DisplayWidth = 3
      FieldName = 'IDEMPLEADO'
      Required = True
    end
  end
  object ItemsIv: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterDelete = ItemsIvAfterDelete
    OnNewRecord = ItemsIvNewRecord
    Left = 584
    Top = 177
    object ItemsIvIdFactura: TIntegerField
      FieldName = 'IdFactura'
    end
    object ItemsIvIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
    end
    object ItemsIvIdItem: TIntegerField
      FieldName = 'IdItem'
    end
    object ItemsIvIdArticulo: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdArticulo'
      OnSetText = ItemsIvIdArticuloSetText
      OnValidate = ItemsIvIdArticuloValidate
    end
    object ItemsIvTalle: TIntegerField
      DisplayWidth = 10
      FieldName = 'Talle'
      OnGetText = ItemsIvTalleGetText
      OnSetText = ItemsIvTalleSetText
    end
    object ItemsIvDetArt: TStringField
      DisplayWidth = 50
      FieldName = 'DetArt'
      Size = 50
    end
    object ItemsIvCantidad: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'Cantidad'
      OnValidate = ItemsIvCantidadValidate
    end
    object ItemsIvPrecio: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'Precio'
    end
    object ItemsIvActual: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'Actual'
      Visible = False
    end
    object ItemsIvCosto: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'Costo'
      Visible = False
    end
    object ItemsIvNeto: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'Neto'
      Visible = False
    end
    object ItemsIvImpInt: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'ImpInt'
      Visible = False
    end
    object ItemsIvFechaI: TDateField
      DisplayWidth = 10
      FieldName = 'FechaI'
      Visible = False
    end
    object ItemsIvMarca: TStringField
      FieldName = 'Marca'
      Size = 25
    end
    object ItemsIvDetalle: TStringField
      FieldName = 'Detalle'
      Size = 60
    end
    object ItemsIvColor: TStringField
      FieldName = 'Color'
    end
    object ItemsIvTieneTalle: TSmallintField
      FieldName = 'TieneTalle'
    end
    object ItemsIvTotal: TMDOBCDField
      FieldName = 'Total'
    end
    object ItemsIvIdDeposito: TIntegerField
      FieldName = 'IdDeposito'
    end
  end
  object dsItemsIv: TDataSource
    DataSet = ItemsIv
    Left = 585
    Top = 208
  end
  object qAjusteDeInv: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      
        'Select I.IdFactura, I.IdSucursal, I.FechaI, I.NroFact, I.IdStock' +
        ', '
      
        '           I.Empleado, I.Periodo, I.CantArt, I.TNeto, I.TNoComp,' +
        ' I.TCosto, '
      
        '           I.Total, S.NombreSuc as DepositoStr, E.Nombre as NomE' +
        'nt, '
      '           Sum(I.CantArt) as TotalAr,'
      '           Sum(I.TNeto) as TotalNt, Sum(I.TNoComp) as TotalNC,'
      '            Sum(I.TCosto) as TotalCt, Sum(I.Total) as TotalSuc'
      'From Inventario I'
      'Join Sucursales S'
      '  on S.IdSucursal = I.IdStock'
      'Join Empleados E'
      '  on E.IdEmpleado = I.Empleado'
      'Where I.IdSucursal > 0   '
      
        'Group By I.IdFactura, I.IdSucursal, I.FechaI, I.NroFact, I.IdSto' +
        'ck, '
      
        '          I.Empleado, I.Periodo, I.CantArt, I.TNeto, I.TNoComp, ' +
        'I.TCosto, '
      '          I.Total, S.NombreSuc, E.Nombre'
      'Order By I.IdStock, I.NroFact')
    Left = 709
    Top = 369
    object qAjusteDeInvIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Required = True
    end
    object qAjusteDeInvIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Required = True
    end
    object qAjusteDeInvFECHAI: TDateField
      FieldName = 'FECHAI'
      DisplayFormat = 'dd/mm/yy'
    end
    object qAjusteDeInvNROFACT: TMDOStringField
      FieldName = 'NROFACT'
      Size = 13
    end
    object qAjusteDeInvIDSTOCK: TIntegerField
      FieldName = 'IDSTOCK'
      Required = True
    end
    object qAjusteDeInvEMPLEADO: TIntegerField
      FieldName = 'EMPLEADO'
    end
    object qAjusteDeInvPERIODO: TIntegerField
      FieldName = 'PERIODO'
    end
    object qAjusteDeInvCANTART: TSmallintField
      FieldName = 'CANTART'
    end
    object qAjusteDeInvTNETO: TMDOBCDField
      FieldName = 'TNETO'
      currency = True
      Precision = 18
      Size = 4
    end
    object qAjusteDeInvTNOCOMP: TMDOBCDField
      FieldName = 'TNOCOMP'
      currency = True
      Precision = 18
      Size = 4
    end
    object qAjusteDeInvTCOSTO: TMDOBCDField
      FieldName = 'TCOSTO'
      currency = True
      Precision = 18
      Size = 4
    end
    object qAjusteDeInvTOTAL: TMDOBCDField
      FieldName = 'TOTAL'
      currency = True
      Precision = 18
      Size = 4
    end
    object qAjusteDeInvDEPOSITOSTR: TMDOStringField
      FieldName = 'DEPOSITOSTR'
    end
    object qAjusteDeInvNOMENT: TMDOStringField
      FieldName = 'NOMENT'
      Size = 30
    end
    object qAjusteDeInvTOTALAR: TLargeintField
      FieldName = 'TOTALAR'
    end
    object qAjusteDeInvTOTALNT: TMDOBCDField
      FieldName = 'TOTALNT'
      currency = True
      Precision = 18
      Size = 4
    end
    object qAjusteDeInvTOTALNC: TMDOBCDField
      FieldName = 'TOTALNC'
      currency = True
      Precision = 18
      Size = 4
    end
    object qAjusteDeInvTOTALCT: TMDOBCDField
      FieldName = 'TOTALCT'
      currency = True
      Precision = 18
      Size = 4
    end
    object qAjusteDeInvTOTALSUC: TMDOBCDField
      FieldName = 'TOTALSUC'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object dsqAjusteDeInv: TDataSource
    DataSet = qAjusteDeInv
    Left = 710
    Top = 400
  end
  object qAjustes: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select I.IdFactura, I.IdSucursal, I.IdStock, I.FechaI, '
      '           I.NroFact, I.DiaHora,  I.Empleado, I.Periodo, '
      '           I.Total, I.CantArt, I.TNeto, I.TNoComp, '
      '           I.TCosto, S.NombreSuc as DepositoStr, '
      '           E.Nombre as NomEnt'
      'From Inventario I'
      'Join Sucursales S'
      '  on S.IdSucursal = I.IdStock'
      'Join Empleados E'
      '  on E.IdEmpleado = I.Empleado'
      'Where  (I.IdFactura = :IdFactura) And '
      '             (I.IdSucursal = :IdSucursal) And '
      '             (I.Periodo =:Periodo) And '
      '             (I.TFac = 46)'
      'Order By I.FechaI desc ')
    Left = 588
    Top = 369
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdFactura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdSucursal'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Periodo'
        ParamType = ptUnknown
      end>
    object qAjustesIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"INVENTARIO"."IDFACTURA"'
      Required = True
    end
    object qAjustesIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"INVENTARIO"."IDSUCURSAL"'
      Required = True
    end
    object qAjustesFECHAI: TDateField
      FieldName = 'FECHAI'
      Origin = '"INVENTARIO"."FECHAI"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qAjustesNROFACT: TMDOStringField
      FieldName = 'NROFACT'
      Origin = '"INVENTARIO"."NROFACT"'
      Size = 13
    end
    object qAjustesDIAHORA: TDateTimeField
      FieldName = 'DIAHORA'
      Origin = '"INVENTARIO"."DIAHORA"'
    end
    object qAjustesIDSTOCK: TIntegerField
      FieldName = 'IDSTOCK'
      Origin = '"INVENTARIO"."IDSTOCK"'
      Required = True
    end
    object qAjustesEMPLEADO: TIntegerField
      FieldName = 'EMPLEADO'
      Origin = '"INVENTARIO"."EMPLEADO"'
    end
    object qAjustesPERIODO: TIntegerField
      FieldName = 'PERIODO'
      Origin = '"INVENTARIO"."PERIODO"'
    end
    object qAjustesTOTAL: TMDOBCDField
      FieldName = 'TOTAL'
      Origin = '"INVENTARIO"."TOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qAjustesCANTART: TSmallintField
      FieldName = 'CANTART'
      Origin = '"INVENTARIO"."CANTART"'
    end
    object qAjustesTNETO: TMDOBCDField
      FieldName = 'TNETO'
      Origin = '"INVENTARIO"."TNETO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qAjustesTNOCOMP: TMDOBCDField
      FieldName = 'TNOCOMP'
      Origin = '"INVENTARIO"."TNOCOMP"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qAjustesTCOSTO: TMDOBCDField
      FieldName = 'TCOSTO'
      Origin = '"INVENTARIO"."TCOSTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qAjustesDEPOSITOSTR: TMDOStringField
      FieldKind = fkCalculated
      FieldName = 'DEPOSITOSTR'
      Calculated = True
    end
    object qAjustesNOMENT: TMDOStringField
      FieldKind = fkCalculated
      FieldName = 'NOMENT'
      Size = 30
      Calculated = True
    end
  end
  object dsqAjustes: TDataSource
    DataSet = qAjusteDeInv
    Left = 590
    Top = 400
  end
  object qItemsAj: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsqAjustes
    LoadDefaults = False
    SQL.Strings = (
      'Select I.IdFactura, I.IdSucursal, I.IdStock, I.IdItem, '
      '           I.IdArticulo, I.Talle, I.FechaI, I.Periodo, '
      '           I.Cantidad, I.IPrecio, I.ITotal, I.INeto, I.INoComp, '
      '           I.Costo, A.Marca, A.Detalle, A.TieneTalle, C.Color'
      'From ItemsIN I'
      'Join Articulos A'
      '  on A.IdArticulo = I.IdArticulo'
      'left Outer Join Colores C'
      '   on C.IdColor = A.IdColor'
      'Where I.IdFactura =:IdFactura And '
      '            I.IdSucursal =:IdSucursal And '
      '            I.IdStock =:IdStock'
      '')
    Left = 620
    Top = 369
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
    object qItemsAjIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"ITEMSIN"."IDFACTURA"'
      Required = True
    end
    object qItemsAjIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"ITEMSIN"."IDSUCURSAL"'
      Required = True
    end
    object qItemsAjIDSTOCK: TIntegerField
      FieldName = 'IDSTOCK'
      Origin = '"ITEMSIN"."IDSTOCK"'
      Required = True
    end
    object qItemsAjIDITEM: TSmallintField
      FieldName = 'IDITEM'
      Origin = '"ITEMSIN"."IDITEM"'
      Required = True
    end
    object qItemsAjIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
      Origin = '"ITEMSIN"."IDARTICULO"'
    end
    object qItemsAjTALLE: TIntegerField
      FieldName = 'TALLE'
      Origin = '"ITEMSIN"."TALLE"'
    end
    object qItemsAjFECHAI: TDateField
      FieldName = 'FECHAI'
      Origin = '"ITEMSIN"."FECHAI"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qItemsAjPERIODO: TIntegerField
      FieldName = 'PERIODO'
      Origin = '"ITEMSIN"."PERIODO"'
    end
    object qItemsAjCANTIDAD: TMDOBCDField
      FieldName = 'CANTIDAD'
      Origin = '"ITEMSIN"."CANTIDAD"'
      DisplayFormat = '0.0'
      EditFormat = '0.0'
      Precision = 18
      Size = 4
    end
    object qItemsAjIPRECIO: TMDOBCDField
      FieldName = 'IPRECIO'
      Origin = '"ITEMSIN"."IPRECIO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsAjITOTAL: TMDOBCDField
      FieldName = 'ITOTAL'
      Origin = '"ITEMSIN"."ITOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsAjINETO: TMDOBCDField
      FieldName = 'INETO'
      Origin = '"ITEMSIN"."INETO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsAjINOCOMP: TMDOBCDField
      FieldName = 'INOCOMP'
      Origin = '"ITEMSIN"."INOCOMP"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsAjCOSTO: TMDOBCDField
      FieldName = 'COSTO'
      Origin = '"ITEMSIN"."COSTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsAjMARCA: TMDOStringField
      FieldName = 'MARCA'
      Origin = '"ARTICULOS"."MARCA"'
    end
    object qItemsAjDETALLE: TMDOStringField
      FieldName = 'DETALLE'
      Origin = '"ARTICULOS"."DETALLE"'
      Size = 60
    end
    object qItemsAjTIENETALLE: TSmallintField
      FieldName = 'TIENETALLE'
      Origin = '"ARTICULOS"."TIENETALLE"'
    end
    object qItemsAjCOLOR: TMDOStringField
      FieldName = 'COLOR'
      Origin = '"COLORES"."COLOR"'
      Size = 30
    end
  end
  object dsqItemsAj: TDataSource
    DataSet = qItemsAj
    Left = 622
    Top = 400
  end
  object FacIv: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = FacIvAfterPost
    OnNewRecord = FacIvNewRecord
    Left = 552
    Top = 177
    object FacIvIdFactura: TIntegerField
      FieldName = 'IdFactura'
    end
    object FacIvIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
    end
    object FacIvIdDeposito: TIntegerField
      FieldName = 'IdDeposito'
      OnValidate = FacIvIdDepositoValidate
    end
    object FacIvFechaI: TDateField
      FieldName = 'FechaI'
    end
    object FacIvEmpleado: TIntegerField
      FieldName = 'Empleado'
      OnValidate = FacIvEmpleadoValidate
    end
    object FacIvCantArt: TSmallintField
      FieldName = 'CantArt'
    end
    object FacIvTotal: TMDOBCDField
      FieldName = 'Total'
    end
    object FacIvTNeto: TMDOBCDField
      FieldName = 'TNeto'
    end
    object FacIvTNoCmp: TMDOBCDField
      FieldName = 'TNoCmp'
    end
    object FacIvNomEmp: TStringField
      FieldName = 'NomEmp'
      Size = 25
    end
    object FacIvNroFac: TStringField
      FieldName = 'NroFac'
      Size = 13
    end
    object FacIvDepositoStr: TStringField
      FieldName = 'DepositoStr'
      Size = 50
    end
    object FacIvPeriodo: TIntegerField
      FieldName = 'Periodo'
      OnValidate = FacIvPeriodoValidate
    end
    object FacIvTCosto: TMDOBCDField
      FieldName = 'TCosto'
    end
    object FacIvTipoComp: TSmallintField
      FieldName = 'TipoComp'
    end
  end
  object dsFacIv: TDataSource
    DataSet = FacIv
    Left = 553
    Top = 208
  end
  object qItemsIv: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsqInventario
    LoadDefaults = False
    SQL.Strings = (
      'Select IdFactura, IdSucursal, IdPuntoVenta,'
      '       IdItem, IdArticulo, Talle,'
      '       IdSucursalO, IdSucursalD, Cantidad,'
      '       PrecioFinal, PrecioTotal, PrecioCosto,'
      '       PrecioNeto, NoComputables, Marca,'
      '       Detalle, TieneTalle, Color'
      'From Remitos_Inventarios_Items(:IdFactura, :IdSucursal,'
      
        '                                                       :IdPuntoV' +
        'enta, :IdStOrigen,'
      
        '                                                       :IdStDest' +
        'ino)'
      ''
      '')
    Left = 484
    Top = 177
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
      end
      item
        DataType = ftInteger
        Name = 'IDSTORIGEN'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'IDSTDESTINO'
        ParamType = ptUnknown
        Size = 4
      end>
    object qItemsIvIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
    end
    object qItemsIvIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
    end
    object qItemsIvIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
    end
    object qItemsIvIDITEM: TIntegerField
      FieldName = 'IDITEM'
    end
    object qItemsIvIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object qItemsIvTALLE: TIntegerField
      FieldName = 'TALLE'
    end
    object qItemsIvIDSUCURSALO: TIntegerField
      FieldName = 'IDSUCURSALO'
    end
    object qItemsIvIDSUCURSALD: TIntegerField
      FieldName = 'IDSUCURSALD'
    end
    object qItemsIvCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
    end
    object qItemsIvPRECIOFINAL: TMDOBCDField
      FieldName = 'PRECIOFINAL'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qItemsIvPRECIOTOTAL: TMDOBCDField
      FieldName = 'PRECIOTOTAL'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qItemsIvPRECIOCOSTO: TMDOBCDField
      FieldName = 'PRECIOCOSTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qItemsIvPRECIONETO: TMDOBCDField
      FieldName = 'PRECIONETO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qItemsIvNOCOMPUTABLES: TMDOBCDField
      FieldName = 'NOCOMPUTABLES'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qItemsIvMARCA: TMDOStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object qItemsIvDETALLE: TMDOStringField
      FieldName = 'DETALLE'
      Size = 60
    end
    object qItemsIvTIENETALLE: TSmallintField
      FieldName = 'TIENETALLE'
    end
    object qItemsIvCOLOR: TMDOStringField
      FieldName = 'COLOR'
      Size = 30
    end
  end
  object dsqItemsIv: TDataSource
    DataSet = qItemsIv
    Left = 485
    Top = 208
  end
  object qResultadoInv: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    Filtered = True
    LoadDefaults = False
    SQL.Strings = (
      'Select Area, Grupo, SubGrupo, IdArticulo, Talle, DetArt, Color,'
      '           Cantidad, PrecioCosto, PrecioNeto, NoComputables, '
      '          TieneTalle, PrecioFinal, PrecioTotal'
      'from REMITOS_INVENTARIOS_RESULTADO(:IdSuc, :IdPer, :IdArea)'
      'Order by Area, Grupo, SubGrupo'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 622
    Top = 177
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IdSuc'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'IdPer'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'IdArea'
        ParamType = ptUnknown
      end>
    object qResultadoInvGRUPO: TMDOStringField
      FieldName = 'GRUPO'
      Origin = '"REMITOS_INVENTARIOS_RESULTADO"."GRUPO"'
      Size = 60
    end
    object qResultadoInvAREA: TMDOStringField
      FieldName = 'AREA'
      Origin = '"REMITOS_INVENTARIOS_RESULTADO"."AREA"'
      Size = 60
    end
    object qResultadoInvSUBGRUPO: TMDOStringField
      FieldName = 'SUBGRUPO'
      Origin = '"REMITOS_INVENTARIOS_RESULTADO"."SUBGRUPO"'
      Size = 60
    end
    object qResultadoInvIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
      Origin = '"REMITOS_INVENTARIOS_RESULTADO"."IDARTICULO"'
    end
    object qResultadoInvTIENETALLE: TSmallintField
      FieldName = 'TIENETALLE'
      Origin = '"REMITOS_INVENTARIOS_RESULTADO"."TIENETALLE"'
    end
    object qResultadoInvTALLE: TIntegerField
      FieldName = 'TALLE'
      Origin = '"REMITOS_INVENTARIOS_RESULTADO"."TALLE"'
    end
    object qResultadoInvDETART: TMDOStringField
      FieldName = 'DETART'
      Origin = '"REMITOS_INVENTARIOS_RESULTADO"."DETART"'
      Size = 100
    end
    object qResultadoInvCOLOR: TMDOStringField
      FieldName = 'COLOR'
      Origin = '"REMITOS_INVENTARIOS_RESULTADO"."COLOR"'
      Size = 30
    end
    object qResultadoInvCANTIDAD: TIntegerField
      Alignment = taCenter
      FieldName = 'CANTIDAD'
      Origin = '"REMITOS_INVENTARIOS_RESULTADO"."CANTIDAD"'
    end
    object qResultadoInvPRECIOCOSTO: TMDOBCDField
      FieldName = 'PRECIOCOSTO'
      Origin = '"REMITOS_INVENTARIOS_RESULTADO"."PRECIOCOSTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qResultadoInvPRECIONETO: TMDOBCDField
      FieldName = 'PRECIONETO'
      Origin = '"REMITOS_INVENTARIOS_RESULTADO"."PRECIONETO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qResultadoInvNOCOMPUTABLES: TMDOBCDField
      FieldName = 'NOCOMPUTABLES'
      Origin = '"REMITOS_INVENTARIOS_RESULTADO"."NOCOMPUTABLES"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qResultadoInvPRECIOFINAL: TMDOBCDField
      FieldName = 'PRECIOFINAL'
      Origin = '"REMITOS_INVENTARIOS_RESULTADO"."PRECIOFINAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qResultadoInvPRECIOTOTAL: TMDOBCDField
      FieldName = 'PRECIOTOTAL'
      Origin = '"REMITOS_INVENTARIOS_RESULTADO"."PRECIOTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object dsqResInv: TDataSource
    DataSet = qResultadoInv
    Left = 623
    Top = 208
  end
  object rpResInv: TppReport
    AutoStop = False
    DataPipeline = dbpResInv
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Inventario'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 658
    Top = 177
    Version = '10.02'
    mmColumnWidth = 197300
    DataPipelineName = 'dbpResInv'
    object hbDifInv: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object shResInv1: TppShape
        UserName = 'shResInv1'
        ParentHeight = True
        ParentWidth = True
        mmHeight = 9525
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 0
      end
      object lblTituloDifInv1: TppLabel
        UserName = 'lblTituloDifInv1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTituloDifInv1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 2381
        mmWidth = 27728
        BandType = 0
      end
      object lblTituloDifInv2: TppLabel
        UserName = 'lblTituloDifInv2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTituloDifInv2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 167535
        mmTop = 2381
        mmWidth = 27728
        BandType = 0
      end
    end
    object dbDifInv: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'lblIdArt'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'IdArticulo'
        DataPipeline = dbpResInv
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpResInv'
        mmHeight = 3440
        mmLeft = 794
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object lblDArt: TppDBText
        UserName = 'lblDArt'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DetArt'
        DataPipeline = dbpResInv
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpResInv'
        mmHeight = 3440
        mmLeft = 17992
        mmTop = 0
        mmWidth = 92604
        BandType = 4
      end
      object lblCant: TppDBText
        UserName = 'lblCant'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Cantidad'
        DataPipeline = dbpResInv
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpResInv'
        mmHeight = 3440
        mmLeft = 114300
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object lblPrecioCosto: TppDBText
        UserName = 'lblPrecioCosto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRECIOCOSTO'
        DataPipeline = dbpResInv
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpResInv'
        mmHeight = 3440
        mmLeft = 138377
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object lblPrecioFinal: TppDBText
        UserName = 'lblDifer1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRECIOFINAL'
        DataPipeline = dbpResInv
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpResInv'
        mmHeight = 3440
        mmLeft = 176742
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 10319
      mmPrintPosition = 0
      object shResInv6: TppShape
        UserName = 'shResInv6'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 10319
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 7
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 92604
        mmTop = 6350
        mmWidth = 13494
        BandType = 7
      end
      object lblRITotCto: TppDBCalc
        UserName = 'lblRITotCto'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRECIOCOSTO'
        DataPipeline = dbpResInv
        DisplayFormat = '0.00;(0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpResInv'
        mmHeight = 4233
        mmLeft = 116417
        mmTop = 529
        mmWidth = 39158
        BandType = 7
      end
      object lblRITotFin: TppDBCalc
        UserName = 'lblRITotFin'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRECIOFINAL'
        DataPipeline = dbpResInv
        DisplayFormat = '0.00;(0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpResInv'
        mmHeight = 4233
        mmLeft = 156104
        mmTop = 529
        mmWidth = 37888
        BandType = 7
      end
      object lblEmisionDifInv: TppSystemVariable
        UserName = 'lblEmision'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DisplayFormat = '"Emisi'#243'n " dd/mm/yyyy '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3351
        mmLeft = 2646
        mmTop = 6085
        mmWidth = 26882
        BandType = 7
      end
    end
    object grDifInv1: TppGroup
      BreakName = 'GRUPO'
      DataPipeline = dbpResInv
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpResInv'
      object ppGroupHeaderBand9: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object shResInv2: TppShape
          UserName = 'shResInv2'
          Brush.Color = 15658734
          ParentHeight = True
          ParentWidth = True
          Shape = stRoundRect
          mmHeight = 4763
          mmLeft = 0
          mmTop = 0
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
        end
        object lblDGrp: TppDBText
          UserName = 'lblDGrp'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'GRUPO'
          DataPipeline = dbpResInv
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbpResInv'
          mmHeight = 3440
          mmLeft = 11377
          mmTop = 529
          mmWidth = 17251
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand9: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object shResInv5: TppShape
          UserName = 'shResInv5'
          Brush.Color = 15658734
          ParentWidth = True
          Shape = stRoundRect
          mmHeight = 5556
          mmLeft = 0
          mmTop = 0
          mmWidth = 197300
          BandType = 5
          GroupNo = 0
        end
        object lblGrTotCto: TppDBCalc
          UserName = 'lblRITotCto2'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'PRECIOCOSTO'
          DataPipeline = dbpResInv
          DisplayFormat = '0.00;(0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = grDifInv1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpResInv'
          mmHeight = 3351
          mmLeft = 124565
          mmTop = 794
          mmWidth = 31433
          BandType = 5
          GroupNo = 0
        end
        object lblGRTotFin: TppDBCalc
          UserName = 'lblRITotFin2'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'PRECIOFINAL'
          DataPipeline = dbpResInv
          DisplayFormat = '0.00;(0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = grDifInv1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpResInv'
          mmHeight = 3351
          mmLeft = 164095
          mmTop = 794
          mmWidth = 30268
          BandType = 5
          GroupNo = 0
        end
        object lblTotGrp: TppLabel
          UserName = 'lblTotGrp'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total Grupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3881
          mmLeft = 4021
          mmTop = 794
          mmWidth = 18733
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object grDifInv2: TppGroup
      BreakName = 'SUBGRUPO'
      DataPipeline = dbpResInv
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpResInv'
      object ghbDifInv1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object shResInv3: TppShape
          UserName = 'shResInv3'
          ParentHeight = True
          ParentWidth = True
          Shape = stRoundRect
          mmHeight = 5821
          mmLeft = 0
          mmTop = 0
          mmWidth = 197300
          BandType = 3
          GroupNo = 1
        end
        object lblSubG: TppDBText
          UserName = 'lblSubG'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'SUBGRUPO'
          DataPipeline = dbpResInv
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpResInv'
          mmHeight = 4057
          mmLeft = 1852
          mmTop = 794
          mmWidth = 66993
          BandType = 3
          GroupNo = 1
        end
        object lblProd: TppLabel
          UserName = 'lblProd'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Detalle del Producto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 69850
          mmTop = 1323
          mmWidth = 35983
          BandType = 3
          GroupNo = 1
        end
        object lblContado: TppLabel
          UserName = 'lblContado'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Inventariado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 109009
          mmTop = 1323
          mmWidth = 22490
          BandType = 3
          GroupNo = 1
        end
        object lblPrCosto: TppLabel
          UserName = 'lblPrCosto'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Pr.Costo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 139700
          mmTop = 1323
          mmWidth = 15875
          BandType = 3
          GroupNo = 1
        end
        object lblPrefin: TppLabel
          UserName = 'lblDif1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Pr. Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 177536
          mmTop = 1323
          mmWidth = 16404
          BandType = 3
          GroupNo = 1
        end
      end
      object gfbDifInv1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object shResInv4: TppShape
          UserName = 'shResInv4'
          ParentHeight = True
          ParentWidth = True
          Shape = stRoundRect
          mmHeight = 4233
          mmLeft = 0
          mmTop = 0
          mmWidth = 197300
          BandType = 5
          GroupNo = 1
        end
        object lblSGTotCto: TppDBCalc
          UserName = 'lblRITotCto1'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'PRECIOCOSTO'
          DataPipeline = dbpResInv
          DisplayFormat = '0.00;(0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = grDifInv2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpResInv'
          mmHeight = 3351
          mmLeft = 127689
          mmTop = 265
          mmWidth = 27834
          BandType = 5
          GroupNo = 1
        end
        object lblSGTotFin: TppDBCalc
          UserName = 'lblRITotFin1'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'PRECIOFINAL'
          DataPipeline = dbpResInv
          DisplayFormat = '0.00;(0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = grDifInv2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpResInv'
          mmHeight = 3351
          mmLeft = 167692
          mmTop = 265
          mmWidth = 26353
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
  object qStkInv: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 500
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select S.STKAINV, S.FECHAINV,K.NOMBRESUC '
      'From STOCKART S'
      'Join SUCURSALES K'
      '  on K.IDSUCURSAL = S.IDSTOCK'
      'Where S.IDARTICULO =:IdArticulo ')
    Left = 515
    Top = 177
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdArticulo'
        ParamType = ptUnknown
      end>
    object qStkInvSTKAINV: TMDOBCDField
      Alignment = taCenter
      FieldName = 'STKAINV'
      Origin = '"STOCKART"."STKAINV"'
      DisplayFormat = '0'
      Precision = 18
      Size = 4
    end
    object qStkInvFECHAINV: TDateField
      FieldName = 'FECHAINV'
      Origin = '"STOCKART"."FECHAINV"'
    end
    object qStkInvNOMBRESUC: TMDOStringField
      FieldName = 'NOMBRESUC'
    end
  end
  object dsqStkInv: TDataSource
    AutoEdit = False
    DataSet = qStkInv
    Left = 516
    Top = 207
  end
  object qInventario: TMDOQuery
    AfterScroll = qInventarioAfterScroll
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IdFactura, IdSucursal, IdPuntoVenta,'
      '          IdStOrigen, IdStDestino, FechaF,'
      '          NroFactura, CantArtic, TNeto,'
      '          TNoComp, TCosto, Total, '
      '          IdEmpleado, NomEmpleado, DiaHora'
      'From Remitos_Inventarios(:IdSucur, :Periodo)')
    Left = 450
    Top = 177
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IdSucur'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Periodo'
        ParamType = ptUnknown
      end>
    object qInventarioIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"REMITOS_INVENTARIOS"."IDFACTURA"'
    end
    object qInventarioIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"REMITOS_INVENTARIOS"."IDSUCURSAL"'
    end
    object qInventarioIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Origin = '"REMITOS_INVENTARIOS"."IDPUNTOVENTA"'
    end
    object qInventarioIDSTORIGEN: TIntegerField
      FieldName = 'IDSTORIGEN'
      Origin = '"REMITOS_INVENTARIOS"."IDSTORIGEN"'
      OnGetText = qInventarioIDSTORIGENGetText
    end
    object qInventarioIDSTDESTINO: TIntegerField
      FieldName = 'IDSTDESTINO'
      Origin = '"REMITOS_INVENTARIOS"."IDSTDESTINO"'
    end
    object qInventarioFECHAF: TDateField
      FieldName = 'FECHAF'
      Origin = '"REMITOS_INVENTARIOS"."FECHAF"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qInventarioNROFACTURA: TMDOStringField
      FieldName = 'NROFACTURA'
      Origin = '"REMITOS_INVENTARIOS"."NROFACTURA"'
      Size = 13
    end
    object qInventarioCANTARTIC: TSmallintField
      FieldName = 'CANTARTIC'
      Origin = '"REMITOS_INVENTARIOS"."CANTARTIC"'
    end
    object qInventarioTNETO: TMDOBCDField
      FieldName = 'TNETO'
      Origin = '"REMITOS_INVENTARIOS"."TNETO"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qInventarioTNOCOMP: TMDOBCDField
      FieldName = 'TNOCOMP'
      Origin = '"REMITOS_INVENTARIOS"."TNOCOMP"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qInventarioTCOSTO: TMDOBCDField
      FieldName = 'TCOSTO'
      Origin = '"REMITOS_INVENTARIOS"."TCOSTO"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qInventarioTOTAL: TMDOBCDField
      FieldName = 'TOTAL'
      Origin = '"REMITOS_INVENTARIOS"."TOTAL"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qInventarioNOMEMPLEADO: TMDOStringField
      FieldName = 'NOMEMPLEADO'
      Origin = '"REMITOS_INVENTARIOS"."NOMEMPLEADO"'
      Size = 30
    end
    object qInventarioIDEMPLEADO: TIntegerField
      FieldName = 'IDEMPLEADO'
    end
    object qInventarioDIAHORA: TDateTimeField
      FieldName = 'DIAHORA'
    end
  end
  object dsqInventario: TDataSource
    DataSet = qInventario
    Left = 451
    Top = 208
  end
  object qProvByArt: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 500
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select P.PRECIOPROV, P.ULTIMACOMPRA, '
      '           P.CANTIDAD,  P.DESCUENTO, '
      '           S.Nombre '
      'From PROVBYART P'
      'Join Proveedores S'
      '  on P.IdProveedor = S.IdProveedor'
      'Where P.IdArticulo =:IdArticulo')
    Left = 423
    Top = 377
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IdArticulo'
        ParamType = ptUnknown
      end>
    object qProvByArtPRECIOPROV: TMDOBCDField
      FieldName = 'PRECIOPROV'
      currency = True
      Precision = 18
      Size = 4
    end
    object qProvByArtULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      DisplayFormat = 'dd/mm/yy'
    end
    object qProvByArtCANTIDAD: TMDOBCDField
      FieldName = 'CANTIDAD'
      DisplayFormat = '0'
      EditFormat = '0'
      Precision = 18
      Size = 4
    end
    object qProvByArtDESCUENTO: TMDOBCDField
      FieldName = 'DESCUENTO'
      EditFormat = '0.00'
      currency = True
      Precision = 18
      Size = 4
    end
    object qProvByArtNOMBRE: TMDOStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
  end
  object dsqProvByArt: TDataSource
    AutoEdit = False
    DataSet = qProvByArt
    Left = 424
    Top = 408
  end
  object qLstAreas: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trProc
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IdArea, Area'
      'From Areas'
      'Order By Area')
    Left = 453
    Top = 377
    object qLstAreasIDAREA: TIntegerField
      FieldName = 'IDAREA'
      Required = True
    end
    object qLstAreasAREA: TMDOStringField
      FieldName = 'AREA'
      Required = True
      Size = 40
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
    Left = 454
    Top = 408
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
  object Trasp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TFac'
        ParamType = ptUnknown
        Value = 39
      end
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'IdSuc'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspqTrasp'
    AfterOpen = TraspAfterOpen
    Left = 110
    Top = 458
    object TraspIdFactura: TIntegerField
      FieldName = 'IdFactura'
      Origin = '"TRASPASO"."IDFACTURA"'
    end
    object TraspIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
      Origin = '"TRASPASO"."IDSUCURSAL"'
    end
    object TraspIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Origin = '"TRASPASO"."IDPUNTOVENTA"'
      Required = True
    end
    object TraspTipoFactura: TSmallintField
      FieldName = 'TipoFactura'
      Origin = '"TRASPASO"."TIPOFACTURA"'
    end
    object TraspFechaF: TDateField
      FieldName = 'FechaF'
      Origin = '"TRASPASO"."FECHAF"'
    end
    object TraspNroFactura: TStringField
      FieldName = 'NroFactura'
      Origin = '"TRASPASO"."NROFACTURA"'
      Size = 13
    end
    object TraspEmpleado: TIntegerField
      FieldName = 'Empleado'
      Origin = '"TRASPASO"."EMPLEADO"'
    end
    object TraspIdStOrigen: TIntegerField
      FieldName = 'IdStOrigen'
      Origin = '"TRASPASO"."IDSTORIGEN"'
    end
    object TraspIdStDestino: TIntegerField
      FieldName = 'IdStDestino'
      Origin = '"TRASPASO"."IDSTDESTINO"'
    end
    object TraspCantArtic: TSmallintField
      FieldName = 'CantArtic'
      Origin = '"TRASPASO"."CANTARTIC"'
    end
    object TraspEstado: TSmallintField
      FieldName = 'Estado'
      Origin = '"TRASPASO"."ESTADO"'
      OnGetText = TraspEstadoGetText
    end
    object TraspSOrigen: TStringField
      FieldName = 'SOrigen'
    end
    object TraspDestMov: TStringField
      FieldName = 'DestMov'
    end
    object TraspTipoAJ: TSmallintField
      FieldName = 'TipoAJ'
      Origin = '"TRASPASO"."TIPOAJ"'
      OnGetText = TraspTipoAJGetText
    end
    object TraspNomEnt: TStringField
      FieldName = 'NomEnt'
      Size = 30
    end
    object TraspDiaHora: TDateTimeField
      FieldName = 'DiaHora'
      Origin = '"TRASPASO"."DIAHORA"'
    end
    object TraspNomUsr: TStringField
      FieldName = 'NomUsr'
      Size = 30
    end
    object TraspNroRemSuc: TStringField
      FieldName = 'NroRemSuc'
      Origin = '"TRASPASO"."NROREMSUC"'
      Size = 13
    end
    object TraspIdSubDepO: TIntegerField
      FieldName = 'IdSubDepO'
      Origin = '"TRASPASO"."IDSUBDEPO"'
    end
    object TraspIdSubDepD: TIntegerField
      FieldName = 'IdSubDepD'
      Origin = '"TRASPASO"."IDSUBDEPD"'
    end
    object TraspTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = '"TRASPASO"."TOTAL"'
      currency = True
      Precision = 18
    end
    object TraspENTREGARA: TStringField
      FieldName = 'ENTREGARA'
      Origin = '"TRASPASO"."ENTREGARA"'
      Size = 60
    end
    object TraspDOMICILIOE: TStringField
      FieldName = 'DOMICILIOE'
      Origin = '"TRASPASO"."DOMICILIOE"'
      Size = 60
    end
    object TraspDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = '"TIPOSCOMP"."DESCRIPCION"'
    end
    object TraspIDFLETERO: TIntegerField
      FieldName = 'IDFLETERO'
      Origin = '"TRASPASO"."IDFLETERO"'
    end
    object TraspFLETERO: TStringField
      FieldName = 'FLETERO'
      Size = 30
    end
    object TraspEN_AMBAS: TSmallintField
      FieldName = 'EN_AMBAS'
      Origin = '"TRASPASO"."EN_AMBAS"'
      OnGetText = TraspEN_AMBASGetText
    end
    object TraspqItemsT: TDataSetField
      FieldName = 'qItemsT'
    end
  end
  object dspqTrasp: TDataSetProvider
    DataSet = qTrasp
    Options = [poIncFieldProps, poUseQuoteChar]
    Left = 80
    Top = 459
  end
  object dsqTransp: TDataSource
    DataSet = qTrasp
    Left = 52
    Top = 458
  end
  object Items: TClientDataSet
    Aggregates = <>
    DataSetField = TraspqItemsT
    Params = <
      item
        DataType = ftInteger
        Name = 'IdFactura'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'IdSucursal'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'IDPUNTOVENTA'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftSmallint
        Name = 'TipoFactura'
        ParamType = ptUnknown
        Size = 2
      end>
    Left = 192
    Top = 458
    object ItemsIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Required = True
    end
    object ItemsIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Required = True
    end
    object ItemsIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Required = True
    end
    object ItemsIDITEM: TSmallintField
      FieldName = 'IDITEM'
      Required = True
    end
    object ItemsIDSUCURSALO: TIntegerField
      FieldName = 'IDSUCURSALO'
    end
    object ItemsIDSUCURSALD: TIntegerField
      FieldName = 'IDSUCURSALD'
    end
    object ItemsIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object ItemsTALLE: TIntegerField
      FieldName = 'TALLE'
    end
    object ItemsTMOV: TIntegerField
      FieldName = 'TMOV'
    end
    object ItemsFECHAF: TDateField
      FieldName = 'FECHAF'
    end
    object ItemsCANTIDAD: TBCDField
      FieldName = 'CANTIDAD'
      Precision = 18
    end
    object ItemsTIPOAJ: TSmallintField
      FieldName = 'TIPOAJ'
    end
    object ItemsPRECIOFINAL: TBCDField
      FieldName = 'PRECIOFINAL'
      Precision = 18
    end
    object ItemsPRECIOTOTAL: TBCDField
      FieldName = 'PRECIOTOTAL'
      Precision = 18
    end
    object ItemsDETALLE1: TStringField
      FieldName = 'DETALLE1'
      Size = 50
    end
    object ItemsDETALLE2: TStringField
      FieldName = 'DETALLE2'
      Size = 50
    end
    object ItemsDETALLE3: TStringField
      FieldName = 'DETALLE3'
      Size = 50
    end
    object ItemsDETALLE4: TStringField
      FieldName = 'DETALLE4'
      Size = 50
    end
    object ItemsMARCA: TStringField
      FieldName = 'MARCA'
    end
    object ItemsDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 60
    end
    object ItemsCODBARRA: TStringField
      FieldName = 'CODBARRA'
    end
    object ItemsTIENETALLE: TSmallintField
      FieldName = 'TIENETALLE'
    end
    object ItemsGRUPO: TStringField
      FieldName = 'GRUPO'
      Required = True
      Size = 60
    end
    object ItemsSUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      Required = True
      Size = 60
    end
  end
  object ItemsAj: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 651
    Top = 369
    object ItemsAjIdFactura: TIntegerField
      FieldName = 'IdFactura'
    end
    object ItemsAjIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
    end
    object ItemsAjIdItem: TIntegerField
      FieldName = 'IdItem'
    end
    object ItemsAjIdArticulo: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdArticulo'
    end
    object ItemsAjTalle: TIntegerField
      DisplayWidth = 10
      FieldName = 'Talle'
    end
    object ItemsAjDetArt: TStringField
      DisplayWidth = 50
      FieldName = 'DetArt'
      Size = 50
    end
    object ItemsAjCantidad: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'Cantidad'
    end
    object ItemsAjPrecio: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'Precio'
    end
    object ItemsAjActual: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'Actual'
      Visible = False
    end
    object ItemsAjCosto: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'Costo'
      Visible = False
    end
    object ItemsAjNeto: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'Neto'
      Visible = False
    end
    object ItemsAjImpInt: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'ImpInt'
      Visible = False
    end
    object ItemsAjFechaI: TDateField
      DisplayWidth = 10
      FieldName = 'FechaI'
      Visible = False
    end
    object ItemsAjMarca: TStringField
      FieldName = 'Marca'
      Size = 25
    end
    object ItemsAjDetalle: TStringField
      FieldName = 'Detalle'
      Size = 60
    end
    object ItemsAjColor: TStringField
      FieldName = 'Color'
    end
    object ItemsAjTieneTalle: TSmallintField
      FieldName = 'TieneTalle'
    end
    object ItemsAjTotal: TMDOBCDField
      FieldName = 'Total'
    end
  end
  object FacAj: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 682
    Top = 368
    object FacAjIdFactura: TIntegerField
      FieldName = 'IdFactura'
    end
    object FacAjIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
    end
    object FacAjIdDeposito: TIntegerField
      FieldName = 'IdDeposito'
    end
    object FacAjFechaI: TDateField
      FieldName = 'FechaI'
    end
    object FacAjEmpleado: TIntegerField
      FieldName = 'Empleado'
    end
    object FacAjCantArt: TSmallintField
      FieldName = 'CantArt'
    end
    object FacAjTotal: TMDOBCDField
      FieldName = 'Total'
    end
    object FacAjTNeto: TMDOBCDField
      FieldName = 'TNeto'
    end
    object FacAjTNoCmp: TMDOBCDField
      FieldName = 'TNoCmp'
    end
    object FacAjNomEmp: TStringField
      FieldName = 'NomEmp'
      Size = 25
    end
    object FacAjNroFac: TStringField
      FieldName = 'NroFac'
      Size = 13
    end
    object FacAjDepositoStr: TStringField
      FieldName = 'DepositoStr'
      Size = 50
    end
    object FacAjPeriodo: TIntegerField
      FieldName = 'Periodo'
    end
    object FacAjTCosto: TMDOBCDField
      FieldName = 'TCosto'
    end
    object FacAjTipoComp: TSmallintField
      FieldName = 'TipoComp'
    end
  end
  object dsItemsAj: TDataSource
    DataSet = ItemsAj
    Left = 652
    Top = 402
  end
  object dsFacAj: TDataSource
    DataSet = FacAj
    Left = 683
    Top = 400
  end
  object odFileLec: TRzOpenDialog
    ShowButtonGlyphs = True
    HotTrack = True
    Title = 'Archivos de control de stock'
    Options = [osoAllowMultiselect, osoHideReadOnly, osoAllowTree, osoShowTree, osoShowHints, osoOleDrag, osoOleDrop, osoShowHidden]
    Filter = '*.dat'
    DefaultExt = '*.dat'
    Left = 265
    Top = 274
  end
  object LectCtrl: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'LectCtrlIndex1'
        Fields = 'NrLec'
      end>
    Params = <
      item
        DataType = ftInteger
        Name = 'TFac'
        ParamType = ptUnknown
        Value = 39
      end
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'IdSuc'
        ParamType = ptUnknown
      end>
    StoreDefs = True
    Left = 266
    Top = 307
    object LectCtrlNrLec: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'NLec'
      FieldName = 'NrLec'
      Visible = False
    end
    object LectCtrlIdReg: TIntegerField
      FieldName = 'IdReg'
      Visible = False
    end
    object LectCtrlIdEmp: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'IdEmp'
      Visible = False
    end
    object LectCtrlIdSuc: TIntegerField
      FieldName = 'IdSuc'
    end
    object LectCtrlIdArt: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Codigo'
      FieldName = 'IdArt'
      OnValidate = LectCtrlIdArtValidate
    end
    object LectCtrlCodLec: TStringField
      FieldName = 'CodLec'
      Size = 30
    end
    object LectCtrlMarca: TStringField
      FieldName = 'Marca'
    end
    object LectCtrlDetalle: TStringField
      FieldName = 'Detalle'
      Size = 40
    end
    object LectCtrlTalle: TIntegerField
      FieldName = 'Talle'
      Visible = False
    end
    object LectCtrlCantLect: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Leido'
      FieldName = 'CantLect'
    end
  end
  object dsLectCtrl: TDataSource
    DataSet = LectCtrl
    Left = 296
    Top = 307
  end
  object LectTran: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IdSuc'
        DataType = ftInteger
      end
      item
        Name = 'IdArt'
        DataType = ftInteger
      end
      item
        Name = 'Marca'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Detalle'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Talle'
        DataType = ftInteger
      end
      item
        Name = 'CantLect'
        DataType = ftInteger
      end
      item
        Name = 'CantSist'
        DataType = ftInteger
      end
      item
        Name = 'Dif_Cant'
        DataType = ftInteger
      end
      item
        Name = 'TipoAj'
        DataType = ftSmallint
      end
      item
        Name = 'DetAjuste'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PFinal'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'iIdArt'
        Fields = 'IdArt'
      end
      item
        Name = 'iAjuste'
        Fields = 'IdArt;TipoAj;Dif_Cant'
      end>
    Params = <>
    StoreDefs = True
    Left = 266
    Top = 337
    object LectTranIdSuc: TIntegerField
      FieldName = 'IdSuc'
      OnGetText = LectTranIdSucGetText
    end
    object LectTranIdArt: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'IdArt'
    end
    object LectTranMarca: TStringField
      FieldName = 'Marca'
    end
    object LectTranDetalle: TStringField
      FieldName = 'Detalle'
      Size = 40
    end
    object LectTranTalle: TIntegerField
      FieldName = 'Talle'
      Visible = False
    end
    object LectTranCantLect: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Leido'
      FieldName = 'CantLect'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object LectTranCantSist: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Sistema'
      FieldName = 'CantSist'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object LectTranDif_Cant: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Diferencia'
      FieldName = 'Dif_Cant'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object LectTranDetAjuste: TStringField
      DisplayLabel = 'Tipo Ajuste'
      FieldName = 'DetAjuste'
    end
    object LectTranTipoAj: TSmallintField
      FieldName = 'TipoAj'
      Visible = False
      OnGetText = LectTranTipoAjGetText
    end
    object LectTranPFinal: TCurrencyField
      DisplayLabel = 'Final'
      FieldName = 'PFinal'
    end
  end
  object dsLectTran: TDataSource
    DataSet = LectTran
    Left = 296
    Top = 337
  end
  object pmExpCtrlAjts: TPopupMenu
    Left = 296
    Top = 275
    object ExportarComparacindedatos1: TMenuItem
      Caption = 'Exportar Datos transformados'
      OnClick = ExportarComparacindedatos1Click
    end
    object ExportarDatosdelAjuste1: TMenuItem
      Caption = 'Exportar Datos para Ajustar'
      OnClick = ExportarDatosdelAjuste1Click
    end
    object ExportarAjustes1: TMenuItem
      Caption = 'Exportar Ajustes a realizar'
      OnClick = ExportarAjustes1Click
    end
  end
  object pmCompAjte: TPopupMenu
    Left = 328
    Top = 275
    object CompararProductosLeidos: TMenuItem
      Caption = 'Comparar productos leidos'
      OnClick = CompararProductosLeidosClick
    end
    object ComparaTodosLosProductos: TMenuItem
      Caption = 'Compara Todos los productos'
      OnClick = ComparaTodosLosProductosClick
    end
  end
  object qProductos: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IdArticulo, Marca, Detalle, '
      '           TieneTalle, Precio '
      'From Articulos'
      'Where (Activo = 1) And  (Servicio = 0)'
      'Order By IdArticulo')
    Left = 328
    Top = 306
    object qProductosIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object qProductosMARCA: TMDOStringField
      FieldName = 'MARCA'
    end
    object qProductosDETALLE: TMDOStringField
      FieldName = 'DETALLE'
      Size = 60
    end
    object qProductosTIENETALLE: TSmallintField
      FieldName = 'TIENETALLE'
    end
    object qProductosPRECIO: TMDOBCDField
      FieldName = 'PRECIO'
      Precision = 18
      Size = 4
    end
  end
  object dbpResInv: TppDBPipeline
    DataSource = dsqResInv
    UserName = 'dbpResInv'
    Left = 658
    Top = 208
  end
  object qPerComInv: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    Filtered = True
    LoadDefaults = False
    SQL.Strings = (
      'Select DetSucursal, '
      '          IdArticulo, Marca, Detalle,'
      '          Cant1, Costo1, Fecha1,'
      '          Cant2, Costo2, Fecha2'
      'From PRODUCTOS_STOCK_COMPARATIVO_2I(:SC, :P1, :P2)'
      'Order By IdArticulo'
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 693
    Top = 177
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P2'
        ParamType = ptUnknown
      end>
    object qPerComInvDETSUCURSAL: TMDOStringField
      DisplayLabel = 'Sucursal'
      DisplayWidth = 15
      FieldName = 'DETSUCURSAL'
      Origin = '"PRODUCTOS_STOCK_COMPARATIVO_2I"."DETSUCURSAL"'
      Size = 30
    end
    object qPerComInvIDARTICULO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 6
      FieldName = 'IDARTICULO'
      Origin = '"PRODUCTOS_STOCK_COMPARATIVO_2I"."IDARTICULO"'
    end
    object qPerComInvMARCA: TMDOStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 20
      FieldName = 'MARCA'
      Origin = '"PRODUCTOS_STOCK_COMPARATIVO_2I"."MARCA"'
      Size = 40
    end
    object qPerComInvDETALLE: TMDOStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 40
      FieldName = 'DETALLE'
      Origin = '"PRODUCTOS_STOCK_COMPARATIVO_2I"."DETALLE"'
      Size = 60
    end
    object qPerComInvCANT1: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Periodo 1'
      DisplayWidth = 10
      FieldName = 'CANT1'
      Origin = '"PRODUCTOS_STOCK_COMPARATIVO_2I"."CANT1"'
      DisplayFormat = '0'
    end
    object qPerComInvCOSTO1: TMDOBCDField
      DisplayLabel = 'Costo Periodo 1'
      DisplayWidth = 19
      FieldName = 'COSTO1'
      Origin = '"PRODUCTOS_STOCK_COMPARATIVO_2I"."COSTO1"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qPerComInvFECHA1: TDateField
      Alignment = taCenter
      DisplayLabel = 'Fecha Periodo 1'
      DisplayWidth = 10
      FieldName = 'FECHA1'
      Origin = '"PRODUCTOS_STOCK_COMPARATIVO_2I"."FECHA1"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qPerComInvCANT2: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Periodo 2'
      DisplayWidth = 10
      FieldName = 'CANT2'
      Origin = '"PRODUCTOS_STOCK_COMPARATIVO_2I"."CANT2"'
      DisplayFormat = '0'
    end
    object qPerComInvCOSTO2: TMDOBCDField
      DisplayLabel = 'Costo Periodo 2'
      DisplayWidth = 19
      FieldName = 'COSTO2'
      Origin = '"PRODUCTOS_STOCK_COMPARATIVO_2I"."COSTO2"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qPerComInvFECHA2: TDateField
      Alignment = taCenter
      DisplayLabel = 'Fecha Periodo 2'
      DisplayWidth = 10
      FieldName = 'FECHA2'
      Origin = '"PRODUCTOS_STOCK_COMPARATIVO_2I"."FECHA2"'
      DisplayFormat = 'dd/mm/yy'
    end
  end
  object dsqPerComInv: TDataSource
    DataSet = qPerComInv
    Left = 694
    Top = 208
  end
end
