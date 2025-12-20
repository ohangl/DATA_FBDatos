object frmViewFacV: TfrmViewFacV
  Left = 209
  Top = 206
  BorderStyle = bsSingle
  Caption = 'Comprobantes Realizados'
  ClientHeight = 475
  ClientWidth = 744
  Color = 14281964
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clMaroon
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020040000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000880000000000000000000000000000088008800000
    00000000000000000000880087F000000000000000000000000880087F700000
    000000000000000000880087F700000000000000000000000880087F70000000
    0000000000000000880087F700000000000000000000000880087F7000000000
    00000888888000880087F700000000000008888888888888087F700000000000
    08800000000888800FF700000000000080080000008008087000000000000008
    0800777777008007F00000000000008000770000007700000000000000000000
    7700777870007000880000000000008000000077787007080800000000000007
    0070000077770070088000000000080000000000077870708080000000000080
    0000000000777007008000000000008000000000000777070080000000000080
    0000000000007707008000000000008000000F70000077070080000000000080
    00F700FF000007070080000000000088000FF000000007070000000000000808
    000000F7000000008000000000000008800F700FF00000700000000000000080
    8880FF0000008808000000000000000008888000008888000000000000000000
    0088888888880000000000000000000008008888880080000000000000000000
    000800000080000000000000000000000000000000000000000000000000FFFF
    FFC1FFFFFF80FFFFFF00FFFFFE00FFFFFC01FFFFF803FFFFF007FFFFE00FFF81
    C01FFE00003FF800007FF00000FFE00003FFC0FC07FFC30703FF8FC183FF8DF0
    C1FF1FF841FF1FFC61FF1FFE21FF1FFF21FF1F9F21FF1CCFA1FF0E7FA3FF0FCF
    E3FF8667C7FF813F07FFC07C0FFFE0001FFFF0003FFFF8007FFFFE01FFFF}
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcCompRealizados: TRzPageControl
    Left = 0
    Top = 0
    Width = 744
    Height = 475
    ActivePage = tsComprobante
    ActivePageDefault = tsComprobante
    Align = alClient
    BoldCurrentTab = True
    Color = 16119543
    UseColoredTabs = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    FlatColor = 10263441
    ParentColor = False
    ParentFont = False
    ShowCardFrame = False
    ShowCloseButton = True
    ShowFocusRect = False
    ShowFullFrame = False
    ShowShadow = False
    TextOrientation = orVertical
    TabColors.HighlightBar = 1350640
    TabHeight = 220
    TabIndex = 0
    TabOrder = 0
    TabOrientation = toRight
    TabStyle = tsRoundCorners
    TabWidth = 25
    TextColors.Selected = 8404992
    TextColors.Unselected = clMaroon
    OnClose = pcCompRealizadosClose
    FixedDimension = 25
    object tsComprobante: TRzTabSheet
      Color = 16119543
      Caption = 'Comprobantes'
      object gbFoot: TRzPanel
        Left = 0
        Top = 325
        Width = 717
        Height = 150
        Align = alBottom
        BorderOuter = fsFlatRounded
        Color = 14281964
        TabOrder = 0
        TabStop = True
        object gTotFacVen: TRzGroupBox
          Left = 2
          Top = 2
          Width = 239
          Height = 146
          Align = alClient
          Alignment = taCenter
          Caption = ' Totales Comprobante'
          Color = 14281964
          Font.Charset = ANSI_CHARSET
          Font.Color = 94
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GradientColorStyle = gcsCustom
          GradientColorStart = 4227072
          GradientColorStop = 12246236
          GroupStyle = gsBanner
          ParentFont = False
          TabOrder = 1
          object bvlFacV: TBevel
            Left = 149
            Top = 93
            Width = 85
            Height = 55
            Shape = bsFrame
          end
          object lblDesc: TLabel
            Left = 2
            Top = 48
            Width = 56
            Height = 13
            Caption = 'Bonificaci'#243'n'
            FocusControl = edtBonificacion
            Font.Charset = ANSI_CHARSET
            Font.Color = 2839808
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblNeto: TLabel
            Left = 2
            Top = 80
            Width = 23
            Height = 13
            Caption = 'Neto'
            FocusControl = edtNeto
            Font.Charset = ANSI_CHARSET
            Font.Color = 2839808
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblExento: TLabel
            Left = 76
            Top = 48
            Width = 34
            Height = 13
            Caption = 'Exento'
            FocusControl = edtExento
            Font.Charset = ANSI_CHARSET
            Font.Color = 2839808
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblImpInt: TLabel
            Left = 2
            Top = 113
            Width = 63
            Height = 13
            Caption = 'Imp.Internos'
            FocusControl = edtNoComp
            Font.Charset = ANSI_CHARSET
            Font.Color = 2839808
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblIva1: TLabel
            Left = 76
            Top = 113
            Width = 44
            Height = 13
            Caption = 'Iva Alic 1'
            FocusControl = edtIva1
            Font.Charset = ANSI_CHARSET
            Font.Color = 2839808
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblEstSF: TLabel
            Left = 152
            Top = 96
            Width = 74
            Height = 11
            Caption = '&Servidor Fiscal'
            FocusControl = cbEstadoServF_Senas
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object lblEstadoSF_Senas: TLabel
            Left = 149
            Top = 48
            Width = 33
            Height = 13
            Caption = 'Estado'
            FocusControl = cbEstadoServF_Senas
            Font.Charset = ANSI_CHARSET
            Font.Color = 2839808
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblFechaSF: TLabel
            Left = 152
            Top = 115
            Width = 75
            Height = 11
            Caption = 'Fecha impresi'#243'n'
            FocusControl = cbEstadoServF_Senas
            Font.Charset = ANSI_CHARSET
            Font.Color = 14483456
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblIva2: TLabel
            Left = 76
            Top = 80
            Width = 44
            Height = 13
            Caption = 'Iva Alic 2'
            FocusControl = edtIva2
            Font.Charset = ANSI_CHARSET
            Font.Color = 2839808
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblFecRecep: TDBText
            Left = 2
            Top = 19
            Width = 49
            Height = 11
            AutoSize = True
            DataField = 'FechaIS'
            DataSource = dsFacturas
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblDiaHora: TDBText
            Left = 2
            Top = 33
            Width = 43
            Height = 11
            AutoSize = True
            DataField = 'DiaHora'
            DataSource = dsFacturas
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object edtBonificacion: TwwDBEdit
            Left = 2
            Top = 62
            Width = 71
            Height = 19
            BorderStyle = bsNone
            DataField = 'Bonificacion'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameSingle
            Frame.NonFocusStyle = efsFrameEtched
            ParentColor = True
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtNeto: TwwDBEdit
            Left = 2
            Top = 94
            Width = 71
            Height = 19
            BorderStyle = bsNone
            DataField = 'Neto'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameSingle
            Frame.NonFocusStyle = efsFrameEtched
            ParentColor = True
            ParentFont = False
            TabOrder = 5
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtExento: TwwDBEdit
            Left = 76
            Top = 62
            Width = 71
            Height = 19
            BorderStyle = bsNone
            DataField = 'Exento'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameSingle
            Frame.NonFocusStyle = efsFrameEtched
            ParentColor = True
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtNoComp: TwwDBEdit
            Left = 2
            Top = 128
            Width = 71
            Height = 19
            BorderStyle = bsNone
            DataField = 'NoComputables'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameSingle
            Frame.NonFocusStyle = efsFrameEtched
            ParentColor = True
            ParentFont = False
            TabOrder = 6
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtIva1: TwwDBEdit
            Left = 76
            Top = 128
            Width = 71
            Height = 19
            BorderStyle = bsNone
            DataField = 'IvaAlicuota1'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameSingle
            Frame.NonFocusStyle = efsFrameEtched
            ParentColor = True
            ParentFont = False
            TabOrder = 8
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtTotal: TwwDBEdit
            Left = 129
            Top = 20
            Width = 105
            Height = 29
            BorderStyle = bsNone
            DataField = 'Total'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameSingle
            Frame.NonFocusStyle = efsFrameEtched
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object cbEstadoServF_Senas: TwwDBComboBox
            Left = 149
            Top = 62
            Width = 86
            Height = 19
            ShowButton = True
            Style = csDropDownList
            MapList = True
            AllowClearKey = False
            AutoFillDate = False
            BorderStyle = bsNone
            DataField = 'Impresa'
            DataSource = dsFacturas
            DropDownCount = 8
            Font.Charset = ANSI_CHARSET
            Font.Color = 4802853
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ButtonEffects.Transparent = True
            ButtonEffects.Flat = True
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameSingle
            Frame.NonFocusStyle = efsFrameEtched
            ItemHeight = 0
            Items.Strings = (
              'En Impresi'#243'n'#9'2'
              'Impreso'#9'1'
              'No Impreso'#9'0')
            ParentColor = True
            ParentFont = False
            Sorted = True
            TabOrder = 4
            UnboundDataType = wwDefault
            OnKeyDown = edtClienteKeyDown
          end
          object edtFechaImp: TwwDBDateTimePicker
            Left = 152
            Top = 127
            Width = 79
            Height = 17
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            DataField = 'FechaI'
            DataSource = dsFacturas
            Epoch = 1950
            ButtonEffects.Transparent = True
            ButtonEffects.Flat = True
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameSingle
            Frame.NonFocusStyle = efsFrameEtched
            Font.Charset = ANSI_CHARSET
            Font.Color = 4802853
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            ShowButton = True
            TabOrder = 9
            OnKeyDown = edtClienteKeyDown
          end
          object edtIva2: TwwDBEdit
            Left = 76
            Top = 94
            Width = 71
            Height = 19
            BorderStyle = bsNone
            DataField = 'IVAALICUOTA2'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameSingle
            Frame.NonFocusStyle = efsFrameEtched
            ParentColor = True
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object btnDesmarcar: TRzBitBtn
            Left = 98
            Top = 19
            Width = 28
            Height = 30
            Hint = 'desmarcar para reenvio'
            HotTrack = True
            ParentColor = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = btnDesmarcarClick
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
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E856E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E856E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8AC56E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8AC56E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8AC56E8E8
              17090909E8E8E8E8E8E8E8E8AC56E8E8AC565656E8E8E8E8E8E8E8E8E8AC5617
              1010101009E8E8E8E8E8E8E8E8AC56AC8181818156E8E8E8E8E8E8E8E8E81710
              1710101009E8E8E8E8E8E8E8E8E8AC81AC81818156E8E8E8E8E8E8E8E8171017
              1717101009E8E8E8E8E8E8E8E8AC81ACACAC818156E8E8E8E8E8E8E8E8105F5F
              1717101009E8E8E8E8E8E8E8E881ACACACAC818156E8E8E8E8E8E8E8E810D7D7
              5F1017101009E8E8E8E8E8E8E881D7D7AC81AC818156E8E8E8E8E8E8E8105F5F
              10D75F171009090909E8E8E8E881ACAC81D7ACAC8156565656E8E8E8E8E81010
              1010D75F091010101009E8E8E8E881818181D7AC568181818156E8E8E8E8E8E8
              E8E81010101710101009E8E8E8E8E8E8E8E8818181AC81818156E8E8E8E8E8E8
              E8E8E8105F1717101009E8E8E8E8E8E8E8E8E881ACACAC818156E8E8E8E8E8E8
              E8E8E8105F5F17101017E8E8E8E8E8E8E8E8E881ACACAC8181ACE8E8E8E8E8E8
              E8E8E810D75F101017E8E8E8E8E8E8E8E8E8E881D7AC8181ACE8E8E8E8E8E8E8
              E8E8E8E810101017E8E8E8E8E8E8E8E8E8E8E8E8818181ACE8E8}
            NumGlyphs = 2
          end
        end
        object gbPagos: TRzGroupBox
          Left = 241
          Top = 2
          Width = 474
          Height = 146
          Align = alRight
          Alignment = taCenter
          Caption = 'Detalle de cobros realizados'
          Color = 14281964
          Font.Charset = ANSI_CHARSET
          Font.Color = 8585215
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GradientColorStyle = gcsCustom
          GradientColorStart = clMaroon
          GradientColorStop = 4424579
          GroupStyle = gsBanner
          ParentFont = False
          TabOrder = 0
          TabStop = True
          object gbTarjetas: TRzGroupBox
            Left = 0
            Top = 62
            Width = 474
            Height = 84
            Align = alBottom
            Alignment = taCenter
            Caption = 'Detalle de &Tarjetas - Mutuales'
            Color = 12910591
            Font.Charset = ANSI_CHARSET
            Font.Color = 4194368
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GradientColorStyle = gcsCustom
            GradientColorStart = 16750487
            GradientColorStop = 12320699
            GroupStyle = gsBanner
            ParentFont = False
            TabOrder = 0
            TabStop = True
            Transparent = True
            object gTarjetas: TwwDBGrid
              Left = 0
              Top = 21
              Width = 350
              Height = 63
              Selected.Strings = (
                'TARJETA'#9'16'#9'Tarjeta'#9'F'
                'NROCUOTA'#9'3'#9'NC'#9'F'
                'IMPCUOTA'#9'8'#9'M.Cuota'#9'F'
                'TOTALOP'#9'9'#9'Total'#9'F'
                'CUOTAPAG'#9'3'#9'C'#170'P'#9'F'
                'FECHAOP'#9'10'#9'Operaci'#243'n'#9'F'
                'VENCUOTA'#9'8'#9'Proximo Vto'#9'F'
                'NRORECPAGO'#9'13'#9'Ultimo Pago'#9'F')
              IniAttributes.Delimiter = ';;'
              TitleColor = 13434828
              FixedCols = 0
              ShowHorzScrollBar = False
              Align = alClient
              BorderStyle = bsNone
              Color = 14286847
              DataSource = dsMovTar
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              KeyOptions = [dgEnterToTab]
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              ParentFont = False
              TabOrder = 1
              TitleAlignment = taCenter
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              TitleLines = 1
              TitleButtons = False
              UseTFields = False
              OnDblClick = gTarjetasDblClick
              OnKeyPress = gTarjetasKeyPress
            end
            object pnlNavFV: TRzPanel
              Left = 350
              Top = 21
              Width = 124
              Height = 63
              Align = alRight
              BorderOuter = fsFlat
              Color = 15791348
              TabOrder = 0
              TabStop = True
              object btnSaveFV: TRzBitBtn
                Left = 2
                Top = 2
                Width = 30
                Height = 30
                Hint = 'grabar cambios'
                HotTrack = True
                ParentColor = True
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                OnClick = btnSaveFVClick
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
              object btnBorrarFV: TRzBitBtn
                Left = 2
                Top = 32
                Width = 30
                Height = 30
                Hint = 'anular operaci'#243'n'
                HotTrack = True
                ParentColor = True
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
                OnClick = btnBorrarFVClick
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
                  0000000000000000000000000000000000000000000000000000E8E8E8E2ACAC
                  ACACACE281E8E8E8E8E8E8E8E88181818181818181E8E8E8E8E8E8E882ACADD7
                  D7B3D7D0ADEDDFE8E8E8E8E881ACACE8E8E8E8E8ACEDDFE8E8E8E881E2ADD7D6
                  893BD03B0A0AE2DFE8E8E881E2ACE8E8DEDFE8DF8181E2DFE8E8E88182ACADD7
                  89653B0A2FA50AE2DFE8E88181ACACE8DEE2DF8181ED81E2DFE8E881E2ADD7D6
                  89234135D0D7820ADF2CE881E2ACE8E8DEE2ED81E8E88181DF81E88182ACADD7
                  89413B3B35D7D082DF2CE88181ACACE8DEEDDFDF81E8E881DF81E881E2ADD7D6
                  893BB3D7D7040404DF2CE881E2ACE8E8DEDFE8E8E8818181DF81E88182ACADD7
                  D7D041D0D6D00504DF2CE88181ACACE8E8E8EDE8E8E88181DF81E881E2ADD7D6
                  D7D7413B592F0404DF2CE881E2ACE8E8E8E8EDDFDF818181DF81E88182ACADE3
                  E3E3E33B2F056504DF2CE88181ACACE8E8E8E8DF8181E281DF81E881EDD0D6D6
                  D6D6D6D0ACACACE2DF2CE881EDE8E8E8E8E8E8E8ACACACE2DF81E881D6EC2B2C
                  2CEC5781ACD7ADE2DF2CE881E881818181818181ACE8ACE2DF81E881D678A5D0
                  A52CD78888ECE2ACDF2CE881E881EDE8ED81E8DEDE81E2ACDF81E8E88178D7D0
                  D04E2CD7B3882CEDDF2CE8E88181E8E8E88181E8E8DE81EDDF81E8E8E88178D7
                  4EDA602CD72C4E5757E8E8E8E88181E881818181E881818181E8E8E8E8E8E878
                  57A82B572C5757E8E8E8E8E8E8E8E88181E28181818181E8E8E8}
                NumGlyphs = 2
              end
              object btnCancelFV: TRzBitBtn
                Left = 62
                Top = 2
                Width = 30
                Height = 30
                Hint = 'cancelar cambios'
                HotTrack = True
                ParentColor = True
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                OnClick = btnCancelFVClick
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
                  E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                  E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                  E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8B46C6C6CE8
                  E8E8E8E8B46C6C6CE8E8E8E2DFDFDFE8E8E8E8E8E2DFDFDFE8E8E8B49090906C
                  E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8E8B4909090
                  6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8E8E8B49090
                  906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8E8E8B490
                  909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8E8E8B4
                  9090906CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8B490
                  909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8B49090
                  906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8B4909090
                  6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8B49090906C
                  E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8B4B4B4B4E8
                  E8E8E8E8B4B4B4B4E8E8E8E2E2E2E2E8E8E8E8E8E2E2E2E2E8E8E8E8E8E8E8E8
                  E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                  E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
                NumGlyphs = 2
              end
              object btnBuscarFV: TRzBitBtn
                Left = 32
                Top = 32
                Width = 30
                Height = 30
                Hint = 'buscar'
                HotTrack = True
                ParentColor = True
                ParentShowHint = False
                ShowHint = True
                TabOrder = 5
                OnClick = btnBuscarFVClick
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
              object btnImprimirFC: TRzBitBtn
                Left = 92
                Top = 2
                Width = 30
                Height = 30
                Hint = 'imprimir'
                HotTrack = True
                ParentColor = True
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                OnClick = btnImprimirFCClick
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
              object btnEditFV: TRzBitBtn
                Left = 32
                Top = 2
                Width = 30
                Height = 30
                Hint = 'modificar'
                HotTrack = True
                ParentColor = True
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                OnClick = btnEditFVClick
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
                  E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                  E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E80909090909
                  0909090909090909E8E8E881818181818181818181818181E8E8E80910101010
                  1010101010101009E8E8E881ACACACACACACACACACACAC81E8E8E8E809101010
                  10101010101009E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E8E8091010
                  101010101009E8E8E8E8E8E8E881ACACACACACACAC81E8E8E8E8E8E8E8E80910
                  1010101009E8E8E8E8E8E8E8E8E881ACACACACAC81E8E8E8E8E8E8E8E8E8E809
                  10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E8E8
                  091009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E8E8
                  E809E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                  E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                  E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                  E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
                  E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
                NumGlyphs = 2
              end
              object btnSalirFC: TRzBitBtn
                Left = 63
                Top = 32
                Width = 59
                Height = 30
                Hint = 'salir'
                Caption = '&Salir'
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                HotTrack = True
                ParentColor = True
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
                OnClick = btnSalirFCClick
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
          end
          object gPagos: TwwDBGrid
            Left = 0
            Top = 21
            Width = 474
            Height = 41
            Selected.Strings = (
              'CONTADO'#9'11'#9'Efectivo'#9'F'
              'TICKETS'#9'11'#9'Tickets'#9'F'
              'TARJETA'#9'11'#9'Tarj/Mutual'#9'F'
              'CHEQUE'#9'12'#9'Cheques'#9'F'
              'OTROSPAGOS'#9'12'#9'SAF/OP'#9'F'
              'COBSENAS'#9'12'#9'Cobro Se'#241'as'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 9764056
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsFacturas
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnKeyPress = gPagosKeyPress
          end
        end
      end
      object gbBody: TRzGroupBox
        Left = 0
        Top = 117
        Width = 717
        Height = 208
        Align = alClient
        Alignment = taCenter
        Caption = 'Productos/Servicios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 10813393
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 2
        VisualStyle = vsGradient
        object gViewProd: TwwDBGrid
          Left = 0
          Top = 21
          Width = 717
          Height = 187
          ControlType.Strings = (
            'CANTIDAD;CustomEdit;ebDetItems;T')
          Selected.Strings = (
            'IdArticulo'#9'4'#9'C'#186#9'F'#9'Producto vendido'
            'Marca'#9'10'#9'Marca'#9'F'#9'Producto vendido'
            'Detalle'#9'15'#9'Detalle'#9'F'#9'Producto vendido'
            'Cantidad'#9'6'#9'#/d'#9'F'#9'Producto vendido'
            'PrecioFinal'#9'8'#9'Unitario'#9'F'#9'Precios'
            'PrecioTotal'#9'8'#9'Total'#9'F'#9'Precios'
            'NROCTAS'#9'2'#9'C'#170#9'F'#9'Precios'
            'Oferta'#9'2'#9'Of'#9'F'#9'Descuentos'
            'PRCBONIFICACION'#9'7'#9'%'#9'F'#9'Descuentos'
            'IDAUTORDTO'#9'2'#9'A'#170#9'F'#9'Descuentos'
            'Descuento'#9'7'#9'$'#9'F'#9'Descuentos'
            'ImpInt'#9'7'#9'II'#9'F'#9'Impuestos'
            'INGBTO'#9'7'#9'I.Bts'#9'F'#9'Impuestos'
            'DCTOSTK'#9'2'#9'S'#9'F'#9'STK'
            'MOSDOM'#9'1'#9'D'#9'F'#9'STK'
            'IDSUCSALIDA'#9'2'#9'SS'#9'F'#9'STK'
            'ValorLista'#9'8'#9'Lista'#9'F'#9'Precios'
            'PrecioCosto'#9'8'#9'Costo'#9'F'#9'Precios')
          IniAttributes.Delimiter = ';;'
          TitleColor = 15268863
          FixedCols = 0
          ShowHorzScrollBar = False
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          DataSource = dsItemsFac
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyOptions = [dgEnterToTab]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = 28928
          TitleFont.Height = -9
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
          OnDblClick = gViewProdDblClick
          OnKeyDown = gViewProdKeyDown
          OnKeyPress = gViewProdKeyPress
          FooterColor = clWhite
          FooterCellColor = clWhite
        end
        object ebDetItems: TwwExpandButton
          Left = 249
          Top = 49
          Width = 46
          Height = 16
          Cursor = crHandPoint
          DisableThemes = False
          Grid = diDetItems
          Caption = 'ebDetItems'
          DataField = 'CANTIDAD'
          DataSource = dsItemsFac
          ShowText = True
          TabOrder = 1
        end
        object diDetItems: TwwDataInspector
          Left = 264
          Top = 50
          Width = 248
          Height = 61
          DisableThemes = False
          Color = 16765650
          CaptionColor = clWhite
          TreeLineColor = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 2
          DataSource = dsDetItemsFV
          Items = <
            item
              DataSource = dsDetItemsFV
              DataField = 'DETALLE1'
              Caption = '1'#186
              WordWrap = False
            end
            item
              DataSource = dsDetItemsFV
              DataField = 'DETALLE2'
              Caption = '2'#186
              WordWrap = False
            end
            item
              DataSource = dsDetItemsFV
              DataField = 'DETALLE3'
              Caption = '3'#186
              WordWrap = False
            end
            item
              DataSource = dsDetItemsFV
              DataField = 'DETALLE4'
              Caption = '4'#186
              WordWrap = False
            end>
          CaptionWidth = 28
          Options = [ovColumnResize, ovRowResize, ovEnterToTab, ovHighlightActiveRow, ovCenterCaptionVert]
          CaptionFont.Charset = DEFAULT_CHARSET
          CaptionFont.Color = clNavy
          CaptionFont.Height = -11
          CaptionFont.Name = 'Tahoma'
          CaptionFont.Style = [fsBold]
          Visible = False
        end
      end
      object gbHeader: TRzGroupBox
        Left = 0
        Top = 0
        Width = 717
        Height = 117
        Align = alTop
        Alignment = taCenter
        BorderInner = fsFlat
        BorderOuter = fsFlatRounded
        Caption = 'Datos Operaci'#243'n'
        Color = 14281964
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 12246236
        GradientColorStop = 13355928
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 1
        DesignSize = (
          717
          117)
        object bvlPosRec: TBevel
          Left = 18
          Top = 21
          Width = 93
          Height = 35
          Anchors = [akLeft, akTop, akRight, akBottom]
          Shape = bsFrame
          ExplicitHeight = 32
        end
        object lblNumF: TDBText
          Left = 23
          Top = 40
          Width = 82
          Height = 13
          Alignment = taRightJustify
          DataField = 'IdFactura'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object bvlNomVend: TBevel
          Left = 527
          Top = 35
          Width = 187
          Height = 20
          Anchors = [akLeft, akTop, akRight, akBottom]
          Shape = bsFrame
        end
        object bvlEnt: TBevel
          Left = 169
          Top = 35
          Width = 206
          Height = 20
          Anchors = [akLeft, akTop, akRight, akBottom]
          Shape = bsFrame
        end
        object lblNroCmp: TLabel
          Left = 21
          Top = 24
          Width = 15
          Height = 13
          Caption = 'N'#186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14483456
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCliente: TLabel
          Left = 113
          Top = 21
          Width = 39
          Height = 13
          Hint = 'Doble Click para '#13'ver Datos del cliente'
          Caption = '&Cliente'
          FocusControl = edtCliente
          Font.Charset = ANSI_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnDblClick = lblNomCliDblClick
        end
        object lblNomCli: TDBText
          Left = 173
          Top = 38
          Width = 196
          Height = 10
          DataField = 'NOMCLI'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnDblClick = lblNomCliDblClick
        end
        object lblFecha: TLabel
          Left = 409
          Top = 21
          Width = 29
          Height = 13
          Caption = '&Fecha'
          FocusControl = edtFechaF
          Font.Charset = ANSI_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblTipoCmp: TLabel
          Left = 18
          Top = 53
          Width = 88
          Height = 13
          Caption = '&Tipo Comprobante'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblNroComp: TLabel
          Left = 135
          Top = 53
          Width = 80
          Height = 13
          Caption = '&N'#186' Comprobante'
          FocusControl = edtNroFactura
          Font.Charset = ANSI_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblComRef: TLabel
          Left = 273
          Top = 53
          Width = 99
          Height = 13
          Hint = 'doble Click para ver el '#13'comprobante de referencia'
          Caption = 'Comp. &Referencia'
          FocusControl = edtCompRef
          Font.Charset = ANSI_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
          OnDblClick = lblComRefDblClick
        end
        object lblVend: TLabel
          Left = 492
          Top = 21
          Width = 46
          Height = 13
          Caption = '&Vendedor'
          FocusControl = edtVendedor
          Font.Charset = ANSI_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblNombreVend: TDBText
          Left = 532
          Top = 38
          Width = 175
          Height = 11
          DataField = 'NOMVEN'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIdCompRef: TDBText
          Left = 41
          Top = 24
          Width = 64
          Height = 13
          Alignment = taRightJustify
          DataField = 'IdCompRef'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblSucursal: TLabel
          Left = 615
          Top = 53
          Width = 40
          Height = 13
          Caption = 'S&ucursal'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblMotNC: TLabel
          Left = 409
          Top = 53
          Width = 87
          Height = 13
          Caption = 'Motivo Devoluci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblIdPunto: TLabel
          Left = 571
          Top = 53
          Width = 40
          Height = 13
          Caption = '&Terminal'
          FocusControl = edtPtoVta
          Font.Charset = ANSI_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblEmpre: TLabel
          Left = 517
          Top = 53
          Width = 41
          Height = 13
          Caption = '&Empresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblCantArt: TLabel
          Left = 562
          Top = 83
          Width = 48
          Height = 13
          Caption = 'Productos'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblObser: TLabel
          Left = 18
          Top = 83
          Width = 168
          Height = 13
          Caption = 'Observaciones / Direcci'#243'n de Envio'
          FocusControl = edtDirEntrega
          Font.Charset = ANSI_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblSubDep: TLabel
          Left = 614
          Top = 83
          Width = 63
          Height = 13
          Caption = 'Su&b Dep'#243'sito'
          FocusControl = cbSubDep
          Font.Charset = ANSI_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblSituacion: TDBText
          Left = 667
          Top = 22
          Width = 46
          Height = 11
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'SITUACION'
          DataSource = dsFacturas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblPuntoVta: TLabel
          Left = 236
          Top = 53
          Width = 28
          Height = 13
          Caption = '&Punto'
          FocusControl = edtPuntoVta
          Font.Charset = ANSI_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblEntCont: TLabel
          Left = 517
          Top = 83
          Width = 38
          Height = 13
          Caption = 'Anticipo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3355392
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object edtCliente: TwwDBEdit
          Left = 113
          Top = 35
          Width = 53
          Height = 19
          BorderStyle = bsNone
          DataField = 'Cliente'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSunken
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtClienteKeyDown
        end
        object edtFechaF: TwwDBDateTimePicker
          Left = 409
          Top = 35
          Width = 78
          Height = 17
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'FechaF'
          DataSource = dsFacturas
          Epoch = 1950
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSunken
          Frame.NonFocusStyle = efsFrameEtched
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          ShowButton = True
          TabOrder = 1
          OnExit = edtFechaFExit
          OnKeyDown = edtClienteKeyDown
        end
        object edtNroFactura: TwwDBEdit
          Left = 135
          Top = 67
          Width = 100
          Height = 17
          BorderStyle = bsNone
          DataField = 'NroFactura'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSunken
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = edtNroFacturaExit
          OnKeyDown = edtClienteKeyDown
        end
        object edtCompRef: TwwDBEdit
          Left = 273
          Top = 67
          Width = 102
          Height = 17
          BorderStyle = bsNone
          DataField = 'CompRef'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSunken
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtClienteKeyDown
        end
        object edtVendedor: TwwDBEdit
          Left = 492
          Top = 35
          Width = 31
          Height = 19
          BorderStyle = bsNone
          DataField = 'Empleado'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSunken
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtClienteKeyDown
        end
        object cbTipoComp: TwwDBLookupCombo
          Left = 18
          Top = 67
          Width = 116
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Descripcion'#9'13'#9'Descripci'#195#179'n'#9#9)
          DataField = 'TipoFactura'
          DataSource = dsFacturas
          LookupTable = dmGestion.TipoComp
          LookupField = 'IdComprobante'
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSunken
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 3
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnKeyDown = edtClienteKeyDown
        end
        object cbSucur: TwwDBLookupCombo
          Left = 614
          Top = 67
          Width = 100
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'NombreSuc'#9'20'#9'Sucursal'#9#9
            'DetSuc'#9'2'#9'DS'#9'F'#9
            'FechaInicio'#9'10'#9'FechaInicio'#9'F'#9)
          DataField = 'IdSucursal'
          DataSource = dsFacturas
          LookupTable = dmGestion.Sucursales
          LookupField = 'IdSucursal'
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSunken
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 11
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnKeyDown = edtClienteKeyDown
        end
        object cbMotNC: TwwDBLookupCombo
          Left = 409
          Top = 67
          Width = 106
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'MotivoNC'#9'25'#9'Motivo NC'#9'F'#9)
          DataField = 'IdMotNC'
          DataSource = dsFacturas
          LookupTable = dmGestion.MotivosNC
          LookupField = 'IdMotNc'
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSunken
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 8
          Visible = False
          AutoDropDown = False
          ShowButton = True
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = False
          OnKeyDown = edtClienteKeyDown
        end
        object edtPtoVta: TwwDBEdit
          Left = 582
          Top = 67
          Width = 31
          Height = 17
          BorderStyle = bsNone
          DataField = 'IdPuntoVenta'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSunken
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 10
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtClienteKeyDown
        end
        object cbEmpre: TwwDBLookupCombo
          Left = 516
          Top = 67
          Width = 65
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'DETEMP'#9'10'#9'Empresa'#9'F'#9
            'IDEMPRESA'#9'2'#9'N'#186#9'F'#9)
          DataField = 'IDEMPRESA'
          DataSource = dsFacturas
          LookupTable = dmGestion.Empresas
          LookupField = 'IDEMPRESA'
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSunken
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 9
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnKeyDown = edtClienteKeyDown
        end
        object edtCantPrd: TwwDBEdit
          Left = 582
          Top = 97
          Width = 29
          Height = 17
          BorderStyle = bsNone
          DataField = 'CantArtic'
          DataSource = dsFacturas
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSunken
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 14
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtTotalKeyDown
        end
        object edtDirEntrega: TwwDBEdit
          Left = 18
          Top = 97
          Width = 497
          Height = 17
          BorderStyle = bsNone
          DataField = 'DIR_ENTREGA'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSunken
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 12
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtClienteKeyDown
        end
        object cbSubDep: TwwDBLookupCombo
          Left = 614
          Top = 97
          Width = 100
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'DetSubDep'#9'20'#9'Sub Dep'#243'sito'#9'F'
            'IdSubDep'#9'2'#9'N'#186#9'F'
            'IdSucursal'#9'2'#9'S'#186#9'F')
          DataField = 'IdSubDep'
          DataSource = dsFacturas
          LookupTable = dmGestion.SubDep
          LookupField = 'IdSubDep'
          Options = [loColLines, loRowLines, loTitles]
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSunken
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 15
          AutoDropDown = False
          ShowButton = True
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = False
          OnKeyDown = edtClienteKeyDown
        end
        object edtPuntoVta: TwwDBEdit
          Left = 236
          Top = 67
          Width = 35
          Height = 17
          BorderStyle = bsNone
          DataField = 'PUNTOVTA'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSunken
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtClienteKeyDown
        end
        object btnVerCompRef: TRzBitBtn
          Left = 376
          Top = 55
          Width = 29
          Height = 29
          Hint = 'Click para ver el '#13'Comprobante de Referencia'
          HotTrack = True
          ParentColor = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = lblComRefDblClick
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
        end
        object edtEntContado: TwwDBEdit
          Left = 517
          Top = 97
          Width = 60
          Height = 17
          BorderStyle = bsNone
          DataField = 'ENTCONTADO'
          DataSource = dsFacturas
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSunken
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 13
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtTotalKeyDown
          OnKeyPress = edtEntContadoKeyPress
        end
      end
    end
    object tsBusqueda: TRzTabSheet
      Color = 16119543
      Caption = 'Busqueda de comprobantes'
      object pnlHeadFiltro: TRzPanel
        Left = 0
        Top = 0
        Width = 717
        Height = 42
        Align = alTop
        BorderOuter = fsFlatRounded
        Color = 15791348
        GradientColorStyle = gcsCustom
        GradientColorStop = 13231332
        TabOrder = 0
        VisualStyle = vsGradient
        object lblDesde: TLabel
          Left = 73
          Top = 3
          Width = 38
          Height = 13
          Caption = '&Desde:'
          FocusControl = edtDesde
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410624
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblHasta: TLabel
          Left = 165
          Top = 3
          Width = 36
          Height = 13
          Caption = '&Hasta:'
          FocusControl = edtHasta
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410624
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblEntidad: TLabel
          Left = 367
          Top = 3
          Width = 45
          Height = 13
          Caption = '&Entidad:'
          FocusControl = edtEntidad
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410624
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblComp: TLabel
          Left = 255
          Top = 3
          Width = 80
          Height = 13
          Caption = '&Comprobante:'
          FocusControl = edtComp
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410624
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblBusTComp: TLabel
          Left = 433
          Top = 3
          Width = 104
          Height = 13
          Caption = '&Tipo Comprobante'
          FocusControl = cbTipoEmitidos
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410624
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object btnFiltrar: TRzBitBtn
          Left = 593
          Top = 9
          Width = 30
          Height = 30
          Color = 15791348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HighlightColor = 16026986
          HotTrack = True
          HotTrackColor = 3983359
          ParentFont = False
          TabOrder = 5
          TextStyle = tsRecessed
          OnClick = btnFiltrarClick
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
        object edtDesde: TRzDateTimeEdit
          Left = 72
          Top = 18
          Width = 80
          Height = 21
          CaptionTodayBtn = 'Hoy'
          Date = 38649.000000000000000000
          FirstDayOfWeek = fdowMonday
          ShowHowToUseHint = False
          EditType = etDate
          Format = 'dd/mm/yy'
          Alignment = taRightJustify
          CharCase = ecUpperCase
          Color = 15791348
          FlatButtons = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FocusColor = 16645887
          FrameHotTrack = True
          FrameVisible = True
          ParentColor = True
          ParentFont = False
          TabOnEnter = True
          TabOrder = 0
        end
        object edtHasta: TRzDateTimeEdit
          Left = 164
          Top = 18
          Width = 80
          Height = 21
          CaptionTodayBtn = 'Hoy'
          Date = 38649.000000000000000000
          FirstDayOfWeek = fdowMonday
          ShowHowToUseHint = False
          EditType = etDate
          Format = 'dd/mm/yy'
          Alignment = taRightJustify
          CharCase = ecUpperCase
          Color = 15791348
          FlatButtons = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FocusColor = 16645887
          FrameHotTrack = True
          FrameVisible = True
          ParentColor = True
          ParentFont = False
          TabOnEnter = True
          TabOrder = 1
        end
        object edtEntidad: TRzNumericEdit
          Left = 367
          Top = 18
          Width = 58
          Height = 21
          CharCase = ecUpperCase
          Color = 15791348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FocusColor = 16645887
          FrameHotTrack = True
          FrameVisible = True
          ParentColor = True
          ParentFont = False
          TabOnEnter = True
          TabOrder = 3
          OnKeyDown = edtEntidadKeyDown
          DisplayFormat = '0'
        end
        object edtComp: TRzMaskEdit
          Left = 255
          Top = 18
          Width = 101
          Height = 21
          Alignment = taRightJustify
          CharCase = ecUpperCase
          Color = 15791348
          EditMask = '9999-99999999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FocusColor = 16645887
          FrameHotTrack = True
          FrameVisible = True
          MaxLength = 13
          ParentColor = True
          ParentFont = False
          TabOnEnter = True
          TabOrder = 2
          Text = '    -        '
          OnExit = edtCompExit
        end
        object cbTipoEmitidos: TRzComboBox
          Left = 433
          Top = 18
          Width = 143
          Height = 21
          Color = 15791348
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FlatButtons = True
          FocusColor = 16645887
          FrameHotTrack = True
          FrameVisible = True
          ItemHeight = 13
          ParentCtl3D = False
          ParentFont = False
          TabOnEnter = True
          TabOrder = 4
        end
        object btnExpBuscados: TRzBitBtn
          Left = 627
          Top = 9
          Width = 30
          Height = 30
          Hint = 'buscar'
          HotTrack = True
          ParentColor = True
          TabOrder = 6
          OnClick = btnExpBuscadosClick
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
        object btnVolverAComp: TRzBitBtn
          Left = 658
          Top = 9
          Width = 30
          Height = 30
          Hint = 'volver'
          Color = 15791348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HighlightColor = 16026986
          HotTrack = True
          HotTrackColor = 3983359
          ParentFont = False
          TabOrder = 7
          TextStyle = tsRecessed
          OnClick = btnVolverACompClick
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000030E0000030E00000001000000000000000000003300
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
            09E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E80910
            09E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E8091010
            095E5E5E5E5E5E5E5E5EE8E8E881ACAC81818181818181818181E8E809101010
            09D7D7D7D7D7D7D7D75EE8E881ACACAC81E8E8E8E8E8E8E8E881E80910101010
            09E3E3E3E3E3E3E3D75EE881ACACACAC81ACACACACACACACE881091010101010
            09D7D7D7D7D7D7D7D75E81ACACACACAC81E8E8E8E8E8E8E8E881E80910101010
            09E3E3E3E3E3E3E3D75EE881ACACACAC81ACACACACACACACE881E8E809101010
            09D7D7D7D7D7D7D7D75EE8E881ACACAC81E8E8E8E8E8E8E8E881E8E8E8091010
            09E3E3E3E3E3E3E3D75EE8E8E881ACAC81ACACACACACACACE881E8E8E8E80910
            09D7D7D7D7D7D7D7D75EE8E8E8E881AC81E8E8E8E8E8E8E8E881E8E8E8E85E09
            09E3E3E3E3E3E3E3D75EE8E8E8E8818181ACACACACACACACE881E8E8E8E85ED7
            D7D7D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7
            E3E3E3E3E3E3E3E3D75EE8E8E8E881E8ACACACACACACACACE881E8E8E8E85ED7
            D7D7D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7
            D7D7D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85E5E
            5E5E5E5E5E5E5E5E5E5EE8E8E8E8818181818181818181818181}
          NumGlyphs = 2
          Spacing = 0
        end
      end
      object gFacturas: TwwDBGrid
        Left = 0
        Top = 42
        Width = 717
        Height = 433
        Selected.Strings = (
          'IdFactura'#9'6'#9'F'#186#9'F'#9'Comprobante encontrados'
          'NOMBRESUC'#9'10'#9'Sucursal'#9'F'#9'Comprobante encontrados'
          'CLIENTE'#9'8'#9#186'Cliente'#9'F'#9'Comprobante encontrados'
          'NOMBRE'#9'22'#9'Nombre Cliente'#9'F'#9'Comprobante encontrados'
          'FechaF'#9'10'#9'Fecha'#9'F'#9'Comprobante encontrados'
          'DESCCORTA'#9'7'#9'TC'#9'F'#9'Comprobante encontrados'
          'NroFactura'#9'13'#9'Comprobante'#9'F'#9'Comprobante encontrados'
          'Total'#9'12'#9'Total'#9'F'#9'Comprobante encontrados'
          'EMPLEADO'#9'5'#9#186'V'#9'F'#9'Comprobante encontrados')
        IniAttributes.Delimiter = ';;'
        TitleColor = 15791348
        FixedCols = 0
        ShowHorzScrollBar = False
        Align = alClient
        BorderStyle = bsNone
        Color = 15138815
        DataSource = dsFiltroFac
        Font.Charset = ANSI_CHARSET
        Font.Color = 12615680
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyOptions = [dgEnterToTab]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = 8410624
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
        OnDblClick = gFacturasDblClick
        OnKeyDown = gFacturasKeyDown
      end
    end
  end
  object dsFacturas: TDataSource
    AutoEdit = False
    DataSet = qFacVen
    OnDataChange = dsFacturasDataChange
    Left = 308
    Top = 434
  end
  object dsItemsFac: TDataSource
    AutoEdit = False
    DataSet = qItemsFV
    Left = 370
    Top = 434
  end
  object qFacVen: TMDODataSet
    AfterClose = qFacVenAfterClose
    AfterOpen = qFacVenAfterOpen
    AfterScroll = qFacVenAfterScroll
    BeforeEdit = qFacVenBeforeEdit
    BeforePost = qFacVenBeforePost
    Database = dmGestion.dbGestion
    Transaction = dmSaveFile.trVerComp
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM FACVEN'
      'WHERE'
      '  IDFACTURA = :OLD_IDFACTURA AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL AND'
      '  IDPUNTOVENTA = :OLD_IDPUNTOVENTA')
    InsertSQL.Strings = (
      'INSERT INTO FACVEN'
      
        '  (IDFACTURA, IDSUCURSAL, IDPUNTOVENTA, TIPOFACTURA, SECTOR, IDS' +
        'UBDEP, '
      
        '   DIAHORA, FECHAF, FECHAI, PUNTOVTA, NROFACTURA, IDCOMPREF, COM' +
        'PREF, CLIENTE, '
      
        '   TIPOIVA, CANTARTIC, BONIFICACION, NETO, EXENTO, NOCOMPUTABLES' +
        ', IVAALICUOTA1, '
      
        '   IVAALICUOTA2, TOTAL, SITUACION, CONTADO, TARJETA, IDTARJETA, ' +
        'CTACTE, '
      
        '   NROCTAS, CHEQUE, TICKETS, OTROSPAGOS, EMPLEADO, IMPRESA, FECH' +
        'AIS, IDMOTNC, '
      
        '   USUARIO, DIR_ENTREGA, SENAS, COBSENAS, STATE, ENTCONTADO, IDE' +
        'MPRESA)'
      'VALUES'
      
        '  (:IDFACTURA, :IDSUCURSAL, :IDPUNTOVENTA, :TIPOFACTURA, :SECTOR' +
        ', :IDSUBDEP, '
      
        '   :DIAHORA, :FECHAF, :FECHAI, :PUNTOVTA, :NROFACTURA, :IDCOMPRE' +
        'F, :COMPREF, '
      
        '   :CLIENTE, :TIPOIVA, :CANTARTIC, :BONIFICACION, :NETO, :EXENTO' +
        ', :NOCOMPUTABLES, '
      
        '   :IVAALICUOTA1, :IVAALICUOTA2, :TOTAL, :SITUACION, :CONTADO, :' +
        'TARJETA, '
      
        '   :IDTARJETA, :CTACTE, :NROCTAS, :CHEQUE, :TICKETS, :OTROSPAGOS' +
        ', :EMPLEADO, '
      
        '   :IMPRESA, :FECHAIS, :IDMOTNC, :USUARIO, :DIR_ENTREGA, :SENAS,' +
        ' :COBSENAS, '
      '   :STATE, :ENTCONTADO, :IDEMPRESA)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE FACVEN'
      'SET'
      '  IDFACTURA = :IDFACTURA,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  IDPUNTOVENTA = :IDPUNTOVENTA,'
      '  TIPOFACTURA = :TIPOFACTURA,'
      '  SECTOR = :SECTOR,'
      '  IDSUBDEP = :IDSUBDEP,'
      '  DIAHORA = :DIAHORA,'
      '  FECHAF = :FECHAF,'
      '  FECHAI = :FECHAI,'
      '  PUNTOVTA = :PUNTOVTA,'
      '  NROFACTURA = :NROFACTURA,'
      '  IDCOMPREF = :IDCOMPREF,'
      '  COMPREF = :COMPREF,'
      '  CLIENTE = :CLIENTE,'
      '  TIPOIVA = :TIPOIVA,'
      '  CANTARTIC = :CANTARTIC,'
      '  BONIFICACION = :BONIFICACION,'
      '  NETO = :NETO,'
      '  EXENTO = :EXENTO,'
      '  NOCOMPUTABLES = :NOCOMPUTABLES,'
      '  IVAALICUOTA1 = :IVAALICUOTA1,'
      '  IVAALICUOTA2 = :IVAALICUOTA2,'
      '  TOTAL = :TOTAL,'
      '  SITUACION = :SITUACION,'
      '  CONTADO = :CONTADO,'
      '  TARJETA = :TARJETA,'
      '  IDTARJETA = :IDTARJETA,'
      '  CTACTE = :CTACTE,'
      '  NROCTAS = :NROCTAS,'
      '  CHEQUE = :CHEQUE,'
      '  TICKETS = :TICKETS,'
      '  OTROSPAGOS = :OTROSPAGOS,'
      '  EMPLEADO = :EMPLEADO,'
      '  IMPRESA = :IMPRESA,'
      '  FECHAIS = :FECHAIS,'
      '  IDMOTNC = :IDMOTNC,'
      '  USUARIO = :USUARIO,'
      '  DIR_ENTREGA = :DIR_ENTREGA,'
      '  SENAS = :SENAS,'
      '  COBSENAS = :COBSENAS,'
      '  STATE = :STATE,'
      '  ENTCONTADO = :ENTCONTADO,'
      '  IDEMPRESA = :IDEMPRESA'
      'WHERE'
      '  IDFACTURA = :OLD_IDFACTURA AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL AND'
      '  IDPUNTOVENTA = :OLD_IDPUNTOVENTA')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDFACTURA,'
      '  IDSUCURSAL,'
      '  IDPUNTOVENTA,'
      '  TIPOFACTURA,'
      '  SECTOR,'
      '  IDSUBDEP,'
      '  DIAHORA,'
      '  FECHAF,'
      '  FECHAI,'
      '  PUNTOVTA,'
      '  NROFACTURA,'
      '  IDCOMPREF,'
      '  COMPREF,'
      '  CLIENTE,'
      '  TIPOIVA,'
      '  CANTARTIC,'
      '  BONIFICACION,'
      '  NETO,'
      '  EXENTO,'
      '  NOCOMPUTABLES,'
      '  IVAALICUOTA1,'
      '  IVAALICUOTA2,'
      '  TOTAL,'
      '  SITUACION,'
      '  CONTADO,'
      '  TARJETA,'
      '  IDTARJETA,'
      '  CTACTE,'
      '  NROCTAS,'
      '  CHEQUE,'
      '  TICKETS,'
      '  OTROSPAGOS,'
      '  EMPLEADO,'
      '  IMPRESA,'
      '  FECHAIS,'
      '  IDMOTNC,'
      '  USUARIO,'
      '  DIR_ENTREGA,'
      '  SENAS,'
      '  COBSENAS,'
      '  STATE,'
      '  ENTCONTADO,'
      '  IDEMPRESA'
      'FROM FACVEN '
      'WHERE'
      '  IDFACTURA = :IDFACTURA AND'
      '  IDSUCURSAL = :IDSUCURSAL AND'
      '  IDPUNTOVENTA = :IDPUNTOVENTA')
    SelectSQL.Strings = (
      'Select F.IDFACTURA, F.IDSUCURSAL, F.IDPUNTOVENTA, '
      '           F.TIPOFACTURA, F.SECTOR, F.IDSUBDEP, F.DIAHORA, '
      '           F.FECHAF, F.FECHAI, F.PUNTOVTA, F.NROFACTURA, '
      '           F.IDCOMPREF, F.COMPREF, F.CLIENTE, F.TIPOIVA, '
      '           F.CANTARTIC, F.BONIFICACION, F.NETO, F.EXENTO, '
      '           F.NOCOMPUTABLES, F.IVAALICUOTA1, F.IVAALICUOTA2,'
      '           F.TOTAL, F.SITUACION, F.CONTADO, F.TARJETA, '
      
        '           F.IDTARJETA, F.CTACTE, F.NROCTAS, F.CHEQUE, F.TICKETS' +
        ','
      '           F.OTROSPAGOS, F.SENAS, F.COBSENAS, F.EMPLEADO, '
      '           F.IMPRESA, F.FECHAIS, F.IDMOTNC,  F.USUARIO,'
      '           F.DIR_ENTREGA, F.STATE,  F.ENTCONTADO, F.IDEMPRESA,'
      
        '           C.Nombre as NomCli, C.Documento, C.TipoDoc, C.Direcci' +
        'on, '
      '           C.Localidad, C.Provincia, C.CodPostal, C.Telefonos, '
      '           D.Documento as TipoDocStr, E.Nombre as NomVen, '
      
        '           T.IvaCorto as TipoIvaStr, U.Descripcion as TipoFacStr' +
        ', '
      '           S.NombreSuc'
      'From FACVEN F'
      'Left Outer Join Clientes C'
      '   on C.IdCliente = F.Cliente And C.IdSucursal = F.IDSUCURSAL'
      'Left Outer Join Empleados E'
      '   on E.IdEmpleado = F.Empleado'
      'Left Outer Join TipoIva T'
      '   on T.TipoIva = F.TIPOIVA'
      'Left Outer Join TiposComp U'
      '   on U.IdComprobante = F.TIPOFACTURA'
      'Left Outer Join TipoDoc D'
      '   on D.TipoDoc = C.TipoDoc'
      'Left Outer Join Sucursales S'
      '   on S.IdSucursal = F.IdSucursal'
      'Where (F.IDFACTURA =:IdFactura) And '
      '            (F.IDSUCURSAL=:IdSucursal)  And'
      '            (F.IDPUNTOVENTA =:IdPunto)  And'
      '            (F.STATE = 0)'
      'Order by F.FechaF desc')
    Left = 277
    Top = 434
    object qFacVenTOTAL: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'TOTAL'
      Origin = '"FACVEN"."TOTAL"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenCONTADO: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'CONTADO'
      Origin = '"FACVEN"."CONTADO"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenTARJETA: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'TARJETA'
      Origin = '"FACVEN"."TARJETA"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenCTACTE: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'CTACTE'
      Origin = '"FACVEN"."CTACTE"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenCHEQUE: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'CHEQUE'
      Origin = '"FACVEN"."CHEQUE"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenTICKETS: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'TICKETS'
      Origin = '"FACVEN"."TICKETS"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenOTROSPAGOS: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'OTROSPAGOS'
      Origin = '"FACVEN"."OTROSPAGOS"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenSENAS: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'SENAS'
      Origin = '"FACVEN"."SENAS"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenCOBSENAS: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'COBSENAS'
      Origin = '"FACVEN"."COBSENAS"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenENTCONTADO: TMDOBCDField
      FieldName = 'ENTCONTADO'
      Origin = '"FACVEN"."ENTCONTADO"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenBONIFICACION: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'BONIFICACION'
      Origin = '"FACVEN"."BONIFICACION"'
      Visible = False
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenNETO: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'NETO'
      Origin = '"FACVEN"."NETO"'
      Visible = False
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenEXENTO: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'EXENTO'
      Origin = '"FACVEN"."EXENTO"'
      Visible = False
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenNOCOMPUTABLES: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'NOCOMPUTABLES'
      Origin = '"FACVEN"."NOCOMPUTABLES"'
      Visible = False
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenIVAALICUOTA1: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'IVAALICUOTA1'
      Origin = '"FACVEN"."IVAALICUOTA1"'
      Visible = False
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenIVAALICUOTA2: TMDOBCDField
      FieldName = 'IVAALICUOTA2'
      Origin = '"FACVEN"."IVAALICUOTA2"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qFacVenSITUACION: TSmallintField
      DisplayWidth = 10
      FieldName = 'SITUACION'
      Origin = '"FACVEN"."SITUACION"'
      Visible = False
      OnGetText = qFacVenSITUACIONGetText
    end
    object qFacVenCANTARTIC: TSmallintField
      DisplayWidth = 10
      FieldName = 'CANTARTIC'
      Origin = '"FACVEN"."CANTARTIC"'
      Visible = False
    end
    object qFacVenTIPOIVA: TSmallintField
      DisplayWidth = 10
      FieldName = 'TIPOIVA'
      Origin = '"FACVEN"."TIPOIVA"'
      Visible = False
    end
    object qFacVenCLIENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIENTE'
      Origin = '"FACVEN"."CLIENTE"'
      Visible = False
    end
    object qFacVenCOMPREF: TMDOStringField
      DisplayWidth = 13
      FieldName = 'COMPREF'
      Origin = '"FACVEN"."COMPREF"'
      Visible = False
      OnGetText = qFacVenCOMPREFGetText
      OnSetText = qFacVenCOMPREFSetText
      Size = 13
    end
    object qFacVenIDCOMPREF: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDCOMPREF'
      Origin = '"FACVEN"."IDCOMPREF"'
      Visible = False
    end
    object qFacVenNROFACTURA: TMDOStringField
      DisplayWidth = 13
      FieldName = 'NROFACTURA'
      Origin = '"FACVEN"."NROFACTURA"'
      Visible = False
      Size = 13
    end
    object qFacVenPUNTOVTA: TSmallintField
      DisplayWidth = 10
      FieldName = 'PUNTOVTA'
      Origin = '"FACVEN"."PUNTOVTA"'
      Visible = False
    end
    object qFacVenFECHAI: TDateField
      DisplayWidth = 10
      FieldName = 'FECHAI'
      Origin = '"FACVEN"."FECHAI"'
      Visible = False
      DisplayFormat = 'dd/mm/yy'
    end
    object qFacVenFECHAF: TDateField
      DisplayWidth = 10
      FieldName = 'FECHAF'
      Origin = '"FACVEN"."FECHAF"'
      Visible = False
      DisplayFormat = 'dd/mm/yy'
    end
    object qFacVenDIAHORA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DIAHORA'
      Origin = '"FACVEN"."DIAHORA"'
      Visible = False
      OnGetText = qFacVenDIAHORAGetText
    end
    object qFacVenIDSUBDEP: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDSUBDEP'
      Origin = '"FACVEN"."IDSUBDEP"'
      Visible = False
    end
    object qFacVenSECTOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'SECTOR'
      Origin = '"FACVEN"."SECTOR"'
      Visible = False
    end
    object qFacVenTIPOFACTURA: TSmallintField
      DisplayWidth = 10
      FieldName = 'TIPOFACTURA'
      Origin = '"FACVEN"."TIPOFACTURA"'
      Visible = False
    end
    object qFacVenIDPUNTOVENTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDPUNTOVENTA'
      Origin = '"FACVEN"."IDPUNTOVENTA"'
      Required = True
      Visible = False
    end
    object qFacVenIDSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDSUCURSAL'
      Origin = '"FACVEN"."IDSUCURSAL"'
      Required = True
      Visible = False
    end
    object qFacVenIDFACTURA: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDFACTURA'
      Origin = '"FACVEN"."IDFACTURA"'
      Required = True
      Visible = False
    end
    object qFacVenIDTARJETA: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDTARJETA'
      Origin = '"FACVEN"."IDTARJETA"'
      Visible = False
    end
    object qFacVenNROCTAS: TIntegerField
      DisplayWidth = 10
      FieldName = 'NROCTAS'
      Origin = '"FACVEN"."NROCTAS"'
      Visible = False
    end
    object qFacVenEMPLEADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'EMPLEADO'
      Origin = '"FACVEN"."EMPLEADO"'
      Visible = False
    end
    object qFacVenIMPRESA: TSmallintField
      DisplayWidth = 10
      FieldName = 'IMPRESA'
      Origin = '"FACVEN"."IMPRESA"'
      Visible = False
    end
    object qFacVenFECHAIS: TDateField
      DisplayWidth = 10
      FieldName = 'FECHAIS'
      Origin = '"FACVEN"."FECHAIS"'
      Visible = False
      OnGetText = qFacVenFECHAISGetText
      DisplayFormat = 'dd/mm/yy'
    end
    object qFacVenIDMOTNC: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDMOTNC'
      Origin = '"FACVEN"."IDMOTNC"'
      Visible = False
    end
    object qFacVenUSUARIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'USUARIO'
      Origin = '"FACVEN"."USUARIO"'
      Visible = False
    end
    object qFacVenNOMCLI: TMDOStringField
      DisplayWidth = 30
      FieldName = 'NOMCLI'
      Visible = False
      Size = 30
    end
    object qFacVenNOMVEN: TMDOStringField
      DisplayWidth = 30
      FieldName = 'NOMVEN'
      Visible = False
      Size = 30
    end
    object qFacVenTIPOIVASTR: TMDOStringField
      DisplayWidth = 5
      FieldName = 'TIPOIVASTR'
      Visible = False
      Size = 5
    end
    object qFacVenTIPOFACSTR: TMDOStringField
      DisplayWidth = 5
      FieldName = 'TIPOFACSTR'
      Visible = False
      Size = 5
    end
    object qFacVenDOCUMENTO: TMDOStringField
      DisplayWidth = 13
      FieldName = 'DOCUMENTO'
      Origin = '"TIPODOC"."DOCUMENTO"'
      Visible = False
      Size = 13
    end
    object qFacVenTIPODOC: TSmallintField
      DisplayWidth = 10
      FieldName = 'TIPODOC'
      Origin = '"CLIENTES"."TIPODOC"'
      Visible = False
    end
    object qFacVenDIRECCION: TMDOStringField
      DisplayWidth = 30
      FieldName = 'DIRECCION'
      Origin = '"CLIENTES"."DIRECCION"'
      Visible = False
      Size = 30
    end
    object qFacVenLOCALIDAD: TMDOStringField
      DisplayWidth = 30
      FieldName = 'LOCALIDAD'
      Origin = '"CLIENTES"."LOCALIDAD"'
      Visible = False
      Size = 30
    end
    object qFacVenPROVINCIA: TMDOStringField
      DisplayWidth = 20
      FieldName = 'PROVINCIA'
      Origin = '"CLIENTES"."PROVINCIA"'
      Visible = False
    end
    object qFacVenCODPOSTAL: TMDOStringField
      DisplayWidth = 10
      FieldName = 'CODPOSTAL'
      Origin = '"CLIENTES"."CODPOSTAL"'
      Visible = False
      Size = 10
    end
    object qFacVenTELEFONOS: TMDOStringField
      DisplayWidth = 30
      FieldName = 'TELEFONOS'
      Origin = '"CLIENTES"."TELEFONOS"'
      Visible = False
      Size = 30
    end
    object qFacVenTIPODOCSTR: TMDOStringField
      DisplayWidth = 20
      FieldName = 'TIPODOCSTR'
      Visible = False
    end
    object qFacVenDIR_ENTREGA: TMDOStringField
      DisplayWidth = 80
      FieldName = 'DIR_ENTREGA'
      Origin = '"FACVEN"."DIR_ENTREGA"'
      Visible = False
      Size = 80
    end
    object qFacVenSTATE: TSmallintField
      DisplayWidth = 10
      FieldName = 'STATE'
      Origin = '"FACVEN"."STATE"'
      Visible = False
    end
    object qFacVenNOMBRESUC: TMDOStringField
      FieldName = 'NOMBRESUC'
      Origin = '"SUCURSALES"."NOMBRESUC"'
    end
    object qFacVenIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
    end
  end
  object qItemsFV: TMDODataSet
    BeforeEdit = qItemsFVBeforeEdit
    Database = dmGestion.dbGestion
    OnCalcFields = qItemsFVCalcFields
    Transaction = dmSaveFile.trVerComp
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsFacturas
    DeleteSQL.Strings = (
      'DELETE FROM ITEMSFV'
      'WHERE'
      '  IDFACTURA = :OLD_IDFACTURA AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL AND'
      '  IDPUNTOVENTA = :OLD_IDPUNTOVENTA AND'
      '  IDITEM = :OLD_IDITEM')
    InsertSQL.Strings = (
      'INSERT INTO ITEMSFV'
      
        '  (IDFACTURA, IDSUCURSAL, IDPUNTOVENTA, IDITEM, IDARTICULO, TALL' +
        'E, IDSUBDEP, '
      
        '   FECHAF, CANTIDAD, NROCTAS, PRCBONIFICACION, DESCUENTO, PRECIO' +
        'COSTO, '
      
        '   PRECIONETO, PRECIOFINAL, PRECIOTOTAL, VALORLISTA, EXENTO, IMP' +
        'INT, IVAIN, '
      
        '   IDALCIVA, ALICUOTAIVA, IDALCIB, ALCIB, INGBTO, OFERTA, SUBDET' +
        ', STATE, '
      '   DCTOSTK, ENTCONTADO, MOSDOM, IDAUTORDTO, IDSUCSALIDA)'
      'VALUES'
      
        '  (:IDFACTURA, :IDSUCURSAL, :IDPUNTOVENTA, :IDITEM, :IDARTICULO,' +
        ' :TALLE, '
      
        '   :IDSUBDEP, :FECHAF, :CANTIDAD, :NROCTAS, :PRCBONIFICACION, :D' +
        'ESCUENTO, '
      
        '   :PRECIOCOSTO, :PRECIONETO, :PRECIOFINAL, :PRECIOTOTAL, :VALOR' +
        'LISTA, '
      
        '   :EXENTO, :IMPINT, :IVAIN, :IDALCIVA, :ALICUOTAIVA, :IDALCIB, ' +
        ':ALCIB, '
      
        '   :INGBTO, :OFERTA, :SUBDET, :STATE, :DCTOSTK, :ENTCONTADO, :MO' +
        'SDOM, :IDAUTORDTO, '
      '   :IDSUCSALIDA)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE ITEMSFV'
      'SET'
      '  IDFACTURA = :IDFACTURA,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  IDPUNTOVENTA = :IDPUNTOVENTA,'
      '  IDITEM = :IDITEM,'
      '  IDARTICULO = :IDARTICULO,'
      '  TALLE = :TALLE,'
      '  IDSUBDEP = :IDSUBDEP,'
      '  FECHAF = :FECHAF,'
      '  CANTIDAD = :CANTIDAD,'
      '  NROCTAS = :NROCTAS,'
      '  PRCBONIFICACION = :PRCBONIFICACION,'
      '  DESCUENTO = :DESCUENTO,'
      '  PRECIOCOSTO = :PRECIOCOSTO,'
      '  PRECIONETO = :PRECIONETO,'
      '  PRECIOFINAL = :PRECIOFINAL,'
      '  PRECIOTOTAL = :PRECIOTOTAL,'
      '  VALORLISTA = :VALORLISTA,'
      '  EXENTO = :EXENTO,'
      '  IMPINT = :IMPINT,'
      '  IVAIN = :IVAIN,'
      '  IDALCIVA = :IDALCIVA,'
      '  ALICUOTAIVA = :ALICUOTAIVA,'
      '  IDALCIB = :IDALCIB,'
      '  ALCIB = :ALCIB,'
      '  INGBTO = :INGBTO,'
      '  OFERTA = :OFERTA,'
      '  SUBDET = :SUBDET,'
      '  STATE = :STATE,'
      '  DCTOSTK = :DCTOSTK,'
      '  ENTCONTADO = :ENTCONTADO,'
      '  MOSDOM = :MOSDOM,'
      '  IDAUTORDTO = :IDAUTORDTO,'
      '  IDSUCSALIDA = :IDSUCSALIDA'
      'WHERE'
      '  IDFACTURA = :OLD_IDFACTURA AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL AND'
      '  IDPUNTOVENTA = :OLD_IDPUNTOVENTA AND'
      '  IDITEM = :OLD_IDITEM')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDFACTURA,'
      '  IDSUCURSAL,'
      '  IDPUNTOVENTA,'
      '  IDITEM,'
      '  IDARTICULO,'
      '  TALLE,'
      '  IDSUBDEP,'
      '  FECHAF,'
      '  CANTIDAD,'
      '  NROCTAS,'
      '  PRCBONIFICACION,'
      '  DESCUENTO,'
      '  PRECIOCOSTO,'
      '  PRECIONETO,'
      '  PRECIOFINAL,'
      '  PRECIOTOTAL,'
      '  VALORLISTA,'
      '  EXENTO,'
      '  IMPINT,'
      '  IVAIN,'
      '  IDALCIVA,'
      '  ALICUOTAIVA,'
      '  IDALCIB,'
      '  ALCIB,'
      '  INGBTO,'
      '  OFERTA,'
      '  SUBDET,'
      '  STATE,'
      '  DCTOSTK,'
      '  ENTCONTADO,'
      '  MOSDOM,'
      '  IDAUTORDTO,'
      '  IDSUCSALIDA'
      'FROM ITEMSFV '
      'WHERE'
      '  IDFACTURA = :IDFACTURA AND'
      '  IDSUCURSAL = :IDSUCURSAL AND'
      '  IDPUNTOVENTA = :IDPUNTOVENTA AND'
      '  IDITEM = :IDITEM')
    SelectSQL.Strings = (
      'Select I.IDFACTURA, I.IDSUCURSAL, I.IDPUNTOVENTA, I.IDITEM, '
      
        '           I.IDARTICULO, I.TALLE, I.IDSUBDEP, I.FECHAF, I.CANTID' +
        'AD, '
      '           I.NROCTAS, I.PRCBONIFICACION, I.DESCUENTO, '
      '           I.PRECIOCOSTO, I.PRECIONETO, I.PRECIOFINAL, '
      
        '           I.PRECIOTOTAL, I.VALORLISTA, I.EXENTO, I.IMPINT, I.IV' +
        'AIN, '
      
        '           I.IDALCIVA, I.ALICUOTAIVA, I.IDALCIB, I.ALCIB, I.INGB' +
        'TO, '
      
        '           I.OFERTA, I.SUBDET, I.DCTOSTK, I.STATE, I.ENTCONTADO,' +
        ' '
      '           I.MOSDOM,  I.IDAUTORDTO, I.IDSUCSALIDA, A.Marca, '
      '           A.Detalle,  A.Servicio, A.EsKit, C.Color'
      'From ITEMSFV I'
      'Left Outer Join Articulos A'
      '   on A.IdArticulo = I.IdArticulo'
      'Left Outer Join Colores C'
      '   on C.IdColor = A.IdColor'
      'Where I.IDFACTURA =:IdFactura And '
      '            I.IDSUCURSAL=:IdSucursal And                  '
      '            I.IDPUNTOVENTA =:IdPuntoVenta And '
      '            I.STATE = 0'
      '')
    Left = 339
    Top = 434
    object qItemsFVIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"ITEMSFV"."IDFACTURA"'
      Required = True
    end
    object qItemsFVIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"ITEMSFV"."IDSUCURSAL"'
      Required = True
    end
    object qItemsFVIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Origin = '"ITEMSFV"."IDPUNTOVENTA"'
      Required = True
    end
    object qItemsFVIDITEM: TSmallintField
      FieldName = 'IDITEM'
      Origin = '"ITEMSFV"."IDITEM"'
      Required = True
    end
    object qItemsFVIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
      Origin = '"ITEMSFV"."IDARTICULO"'
    end
    object qItemsFVTALLE: TIntegerField
      FieldName = 'TALLE'
      Origin = '"ITEMSFV"."TALLE"'
      OnGetText = qItemsFVTALLEGetText
      OnSetText = qItemsFVTALLESetText
    end
    object qItemsFVIDSUBDEP: TIntegerField
      FieldName = 'IDSUBDEP'
      Origin = '"ITEMSFV"."IDSUBDEP"'
    end
    object qItemsFVFECHAF: TDateField
      FieldName = 'FECHAF'
      Origin = '"ITEMSFV"."FECHAF"'
    end
    object qItemsFVCANTIDAD: TMDOBCDField
      FieldName = 'CANTIDAD'
      Origin = '"ITEMSFV"."CANTIDAD"'
      DisplayFormat = '0'
      EditFormat = '0'
      Precision = 18
      Size = 4
    end
    object qItemsFVNROCTAS: TIntegerField
      Alignment = taCenter
      FieldName = 'NROCTAS'
      Origin = '"ITEMSFV"."NROCTAS"'
    end
    object qItemsFVPRCBONIFICACION: TMDOBCDField
      FieldName = 'PRCBONIFICACION'
      Origin = '"ITEMSFV"."PRCBONIFICACION"'
      DisplayFormat = '0.0%'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qItemsFVDESCUENTO: TMDOBCDField
      FieldName = 'DESCUENTO'
      Origin = '"ITEMSFV"."DESCUENTO"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qItemsFVPRECIOCOSTO: TMDOBCDField
      FieldName = 'PRECIOCOSTO'
      Origin = '"ITEMSFV"."PRECIOCOSTO"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qItemsFVPRECIONETO: TMDOBCDField
      FieldName = 'PRECIONETO'
      Origin = '"ITEMSFV"."PRECIONETO"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qItemsFVPRECIOFINAL: TMDOBCDField
      FieldName = 'PRECIOFINAL'
      Origin = '"ITEMSFV"."PRECIOFINAL"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qItemsFVPRECIOTOTAL: TMDOBCDField
      FieldName = 'PRECIOTOTAL'
      Origin = '"ITEMSFV"."PRECIOTOTAL"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qItemsFVVALORLISTA: TMDOBCDField
      FieldName = 'VALORLISTA'
      Origin = '"ITEMSFV"."VALORLISTA"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qItemsFVEXENTO: TMDOBCDField
      FieldName = 'EXENTO'
      Origin = '"ITEMSFV"."EXENTO"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qItemsFVIMPINT: TMDOBCDField
      FieldName = 'IMPINT'
      Origin = '"ITEMSFV"."IMPINT"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qItemsFVIVAIN: TMDOBCDField
      FieldName = 'IVAIN'
      Origin = '"ITEMSFV"."IVAIN"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qItemsFVIDALCIVA: TIntegerField
      FieldName = 'IDALCIVA'
      Origin = '"ITEMSFV"."IDALCIVA"'
    end
    object qItemsFVALICUOTAIVA: TMDOBCDField
      FieldName = 'ALICUOTAIVA'
      Origin = '"ITEMSFV"."ALICUOTAIVA"'
      Precision = 18
      Size = 4
    end
    object qItemsFVIDALCIB: TIntegerField
      FieldName = 'IDALCIB'
      Origin = '"ITEMSFV"."IDALCIB"'
    end
    object qItemsFVALCIB: TMDOBCDField
      FieldName = 'ALCIB'
      Origin = '"ITEMSFV"."ALCIB"'
      Precision = 18
      Size = 4
    end
    object qItemsFVINGBTO: TMDOBCDField
      FieldName = 'INGBTO'
      Origin = '"ITEMSFV"."INGBTO"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qItemsFVOFERTA: TIntegerField
      Alignment = taCenter
      FieldName = 'OFERTA'
      Origin = '"ITEMSFV"."OFERTA"'
      OnGetText = qItemsFVOFERTAGetText
    end
    object qItemsFVSUBDET: TMDOStringField
      FieldName = 'SUBDET'
      Origin = '"ITEMSFV"."SUBDET"'
      Size = 15
    end
    object qItemsFVMARCA: TMDOStringField
      FieldName = 'MARCA'
      Origin = '"ARTICULOS"."MARCA"'
    end
    object qItemsFVDETALLE: TMDOStringField
      FieldName = 'DETALLE'
      Origin = '"ARTICULOS"."DETALLE"'
      Size = 60
    end
    object qItemsFVSERVICIO: TSmallintField
      FieldName = 'SERVICIO'
      Origin = '"ARTICULOS"."SERVICIO"'
    end
    object qItemsFVCOLOR: TMDOStringField
      FieldName = 'COLOR'
      Origin = '"COLORES"."COLOR"'
      Required = True
      Size = 30
    end
    object qItemsFVESKIT: TSmallintField
      FieldName = 'ESKIT'
      Origin = '"ARTICULOS"."ESKIT"'
    end
    object qItemsFVDCTOSTK: TSmallintField
      FieldName = 'DCTOSTK'
      Origin = '"ITEMSFV"."DCTOSTK"'
      OnGetText = qItemsFVDCTOSTKGetText
    end
    object qItemsFVSTATE: TSmallintField
      FieldName = 'STATE'
      Origin = '"ITEMSFV"."STATE"'
    end
    object qItemsFVENTCONTADO: TMDOBCDField
      FieldName = 'ENTCONTADO'
      Origin = '"ITEMSFV"."ENTCONTADO"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qItemsFVMOSDOM: TSmallintField
      FieldName = 'MOSDOM'
      Origin = '"ITEMSFV"."MOSDOM"'
      OnGetText = qItemsFVMOSDOMGetText
    end
    object qItemsFVIDAUTORDTO: TIntegerField
      FieldName = 'IDAUTORDTO'
    end
    object qItemsFVIDSUCSALIDA: TIntegerField
      FieldName = 'IDSUCSALIDA'
    end
    object qItemsFVNroFacOper: TStringField
      FieldKind = fkCalculated
      FieldName = 'NroFacOper'
      Size = 13
      Calculated = True
    end
  end
  object qMovTar: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = dmSaveFile.trVerComp
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
        'ORA, CANTCUOTAS, '
      
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
      'Select M.IDMOV, M.IDTARJETA, M.IDFACTURA, M.IDSUCURSAL, '
      '          M.IDCLIENTE, M.CUPON, M.LOTE, M.FECHAOP, M.CODTAR, '
      '          M.NROCUOTA, M.IMPCUOTA, M.TOTALOP, M.AUTORIZACION, '
      
        '          M.ESTADO, M.FECHAIS, M.CUOTAPAG, M.IDTERMINAL,        ' +
        '                   M.CANTCUOTAS, M.STATE, M.IDPUNTOVENTA, T.Tarj' +
        'eta'
      'From MOVTAR M'
      'Join Tarjetas T'
      '   on T.IdTarjeta = M.IdTarjeta'
      'Where (M.IDFACTURA =:IdFactura) And '
      '           (M.IDSUCURSAL =:IdSucursal) And'
      '           (M.IDCLIENTE=:IdCliente) And'
      '           (M.State = 0)         ')
    Left = 401
    Top = 434
    object qMovTarIDMOV: TIntegerField
      DisplayLabel = 'NM'#186
      DisplayWidth = 4
      FieldName = 'IDMOV'
      Origin = '"MOVTAR"."IDMOV"'
      Required = True
    end
    object qMovTarIDTARJETA: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDTARJETA'
      Origin = '"MOVTAR"."IDTARJETA"'
    end
    object qMovTarIDFACTURA: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDFACTURA'
      Origin = '"MOVTAR"."IDFACTURA"'
    end
    object qMovTarIDSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDSUCURSAL'
      Origin = '"MOVTAR"."IDSUCURSAL"'
    end
    object qMovTarIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
    end
    object qMovTarIDCLIENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDCLIENTE'
      Origin = '"MOVTAR"."IDCLIENTE"'
    end
    object qMovTarCUPON: TMDOStringField
      DisplayWidth = 20
      FieldName = 'CUPON'
      Origin = '"MOVTAR"."CUPON"'
    end
    object qMovTarLOTE: TMDOStringField
      DisplayWidth = 20
      FieldName = 'LOTE'
      Origin = '"MOVTAR"."LOTE"'
    end
    object qMovTarFECHAOP: TDateField
      DisplayWidth = 10
      FieldName = 'FECHAOP'
      Origin = '"MOVTAR"."FECHAOP"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qMovTarCODTAR: TMDOStringField
      DisplayWidth = 20
      FieldName = 'CODTAR'
      Origin = '"MOVTAR"."CODTAR"'
    end
    object qMovTarNROCUOTA: TSmallintField
      DisplayWidth = 10
      FieldName = 'NROCUOTA'
      Origin = '"MOVTAR"."NROCUOTA"'
    end
    object qMovTarIMPCUOTA: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'IMPCUOTA'
      Origin = '"MOVTAR"."IMPCUOTA"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qMovTarTOTALOP: TMDOBCDField
      DisplayWidth = 19
      FieldName = 'TOTALOP'
      Origin = '"MOVTAR"."TOTALOP"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qMovTarAUTORIZACION: TMDOStringField
      DisplayWidth = 10
      FieldName = 'AUTORIZACION'
      Origin = '"MOVTAR"."AUTORIZACION"'
      Size = 10
    end
    object qMovTarESTADO: TSmallintField
      DisplayWidth = 10
      FieldName = 'ESTADO'
      Origin = '"MOVTAR"."ESTADO"'
    end
    object qMovTarFECHAIS: TDateField
      DisplayWidth = 10
      FieldName = 'FECHAIS'
      Origin = '"MOVTAR"."FECHAIS"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qMovTarCUOTAPAG: TIntegerField
      DisplayWidth = 10
      FieldName = 'CUOTAPAG'
      Origin = '"MOVTAR"."CUOTAPAG"'
    end
    object qMovTarCANTCUOTAS: TSmallintField
      DisplayWidth = 10
      FieldName = 'CANTCUOTAS'
      Origin = '"MOVTAR"."CANTCUOTAS"'
    end
    object qMovTarTARJETA: TMDOStringField
      DisplayWidth = 30
      FieldName = 'TARJETA'
      Origin = '"TARJETAS"."TARJETA"'
      Required = True
      Size = 30
    end
    object qMovTarSTATE: TSmallintField
      FieldName = 'STATE'
      Origin = '"MOVTAR"."STATE"'
    end
    object qMovTarIDTERMINAL: TIntegerField
      FieldName = 'IDTERMINAL'
    end
  end
  object dsMovTar: TDataSource
    DataSet = qMovTar
    Left = 432
    Top = 434
  end
  object dsDetItemsFV: TDataSource
    DataSet = qDetItemsFV
    Left = 494
    Top = 434
  end
  object qDetItemsFV: TMDODataSet
    Database = dmGestion.dbGestion
    Transaction = dmSaveFile.trVerComp
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsItemsFac
    DeleteSQL.Strings = (
      'DELETE FROM ITEMSFV_DET'
      'WHERE'
      '  IDFACTURA = :OLD_IDFACTURA AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL AND'
      '  IDITEM = :OLD_IDITEM')
    InsertSQL.Strings = (
      'INSERT INTO ITEMSFV_DET'
      
        '  (IDFACTURA, IDSUCURSAL, IDITEM, DETALLE1, DETALLE2, DETALLE3, ' +
        'DETALLE4)'
      'VALUES'
      
        '  (:IDFACTURA, :IDSUCURSAL, :IDITEM, :DETALLE1, :DETALLE2, :DETA' +
        'LLE3, :DETALLE4)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE ITEMSFV_DET'
      'SET'
      '  IDFACTURA = :IDFACTURA,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  IDITEM = :IDITEM,'
      '  DETALLE1 = :DETALLE1,'
      '  DETALLE2 = :DETALLE2,'
      '  DETALLE3 = :DETALLE3,'
      '  DETALLE4 = :DETALLE4'
      'WHERE'
      '  IDFACTURA = :OLD_IDFACTURA AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL AND'
      '  IDITEM = :OLD_IDITEM')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDFACTURA,'
      '  IDSUCURSAL,'
      '  IDITEM,'
      '  DETALLE1,'
      '  DETALLE2,'
      '  DETALLE3,'
      '  DETALLE4'
      'FROM ITEMSFV_DET '
      'WHERE'
      '  IDFACTURA = :IDFACTURA AND'
      '  IDSUCURSAL = :IDSUCURSAL AND'
      '  IDITEM = :IDITEM')
    SelectSQL.Strings = (
      'select IDFACTURA, IDSUCURSAL, IDITEM, DETALLE1, DETALLE2, '
      '          DETALLE3, DETALLE4 '
      'From ITEMSFV_DET'
      'Where IDFACTURA =:IdFactura And '
      '            IDSUCURSAL=:IdSucursal And                  '
      '            IDITEM =:IdItem')
    Left = 463
    Top = 434
    object qDetItemsFVIDFACTURA: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDFACTURA'
      Required = True
    end
    object qDetItemsFVIDSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDSUCURSAL'
      Required = True
    end
    object qDetItemsFVIDITEM: TSmallintField
      DisplayLabel = 'N'#186
      DisplayWidth = 2
      FieldName = 'IDITEM'
      Required = True
    end
    object qDetItemsFVDETALLE1: TMDOStringField
      DisplayWidth = 100
      FieldName = 'DETALLE1'
      Size = 100
    end
    object qDetItemsFVDETALLE2: TMDOStringField
      DisplayWidth = 100
      FieldName = 'DETALLE2'
      Size = 100
    end
    object qDetItemsFVDETALLE3: TMDOStringField
      DisplayWidth = 100
      FieldName = 'DETALLE3'
      Size = 100
    end
    object qDetItemsFVDETALLE4: TMDOStringField
      DisplayWidth = 100
      FieldName = 'DETALLE4'
      Size = 100
    end
  end
  object qComprobantes: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trProc
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select F.IdFactura, F.IdSucursal, F.IdPuntoVenta, F.FechaF, '
      '           F.Cliente,'
      '           F.NroFactura,  F.Total, T.DescCorta, F.Empleado, '
      '           E.Nombre,  K.NombreSuc'
      'From FacVen F'
      'Join TiposComp T '
      '  on T.IdComprobante = F.TipoFactura '
      'Join Clientes E '
      '   on E.IdCliente = F.Cliente  And E.IdSucursal = F.IdSucursal'
      'Join Sucursales K '
      '  on K.IdSucursal = F.IdSucursal'
      'Where F.IdSucursal = 0'
      'Order By F.FechaF ')
    Left = 525
    Top = 434
    object qComprobantesIDFACTURA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'NF'
      FieldName = 'IDFACTURA'
      Origin = '"FACVEN"."IDFACTURA"'
      Required = True
    end
    object qComprobantesIDSUCURSAL: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'NS'
      FieldName = 'IDSUCURSAL'
      Origin = '"FACVEN"."IDSUCURSAL"'
      Required = True
    end
    object qComprobantesIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Required = True
    end
    object qComprobantesFECHAF: TDateField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAF'
      Origin = '"FACVEN"."FECHAF"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qComprobantesDESCCORTA: TMDOStringField
      DisplayLabel = 'TC'
      FieldName = 'DESCCORTA'
      Origin = '"TIPOSCOMP"."DESCCORTA"'
      Size = 5
    end
    object qComprobantesNROFACTURA: TMDOStringField
      Alignment = taCenter
      DisplayLabel = 'Nro Comprobante'
      FieldName = 'NROFACTURA'
      Origin = '"FACVEN"."NROFACTURA"'
      Size = 13
    end
    object qComprobantesCLIENTE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"FACVEN"."CLIENTE"'
    end
    object qComprobantesNOMBRE: TMDOStringField
      DisplayLabel = 'Entidad'
      FieldName = 'NOMBRE'
      Origin = '"CLIENTES"."NOMBRE"'
      Size = 30
    end
    object qComprobantesTOTAL: TMDOBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"FACVEN"."TOTAL"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qComprobantesNOMBRESUC: TMDOStringField
      FieldName = 'NOMBRESUC'
      Origin = '"SUCURSALES"."NOMBRESUC"'
    end
    object qComprobantesEMPLEADO: TIntegerField
      Alignment = taCenter
      FieldName = 'EMPLEADO'
      Origin = '"FACVEN"."EMPLEADO"'
    end
  end
  object dsFiltroFac: TDataSource
    DataSet = qComprobantes
    Left = 556
    Top = 434
  end
end
