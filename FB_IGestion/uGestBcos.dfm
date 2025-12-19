object frmGestBco: TfrmGestBco
  Left = 265
  Top = 233
  ActiveControl = pcGestBco
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Agenda Bancaria'
  ClientHeight = 569
  ClientWidth = 742
  Color = clSkyBlue
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
    000000000000855000000000000000000000000000855B355000000000000000
    00000000855BB3133580000000000000000000855BB317854335500000000000
    0000851773177588858335500000000000855BB317758FF65885833550000000
    555BB317788FFF7F765888533580008557B317758FFF7B977776588853355557
    B317758FFFFB9F78977776556535178317758FFFF89FF7977797777568355317
    788FFFFB8FF7877F99777856653575788FFFFBBFF787FFF8777556665533058F
    FFFBBFF7B7FFFFF7785666538350017FFBBFF7B7FFFFFF785666553935300051
    7FF7B7FFFFFFF5566653838B8300000055FFFFFFFF7856665399BBB835000000
    00157FFF7556665388B8B8BB33000000000055B556665387BBBBBBBB38000000
    000000556659B777777B77BB3000000000000081597777777777777750000000
    00000033777777777777777710000000000000187F77777F7777777750000000
    00000857F77F7F777F77777550000000000003377FF7F7F7F77F755800000000
    00000587F77F7F7F7F855800000000000000058FFFFF7FFF8558000000000000
    0000037F7F7FF7855800000000000000000083F7FFF785180000000000000000
    000083FFF78158000000000000000000000059F7855800000000000000000000
    000053555500000000000000000000000000555800000000000000000000FFFF
    1FFFFFFC07FFFFF001FFFFC0007FFF00001FFC000007F0000001C00000000000
    00000000000000000000000000008000000180000001C0000003F0000003FC00
    0003FF000003FFC00007FFC00007FFC00007FFC00007FF800007FF80000FFF80
    003FFF8000FFFF8003FFFF000FFFFF003FFFFF00FFFFFF03FFFFFF0FFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcGestBco: TRzPageControl
    Left = 0
    Top = 0
    Width = 742
    Height = 545
    ActivePage = tsMovProp
    ActivePageDefault = tsMovProp
    Align = alClient
    AlignTabs = True
    BackgroundColor = 16710389
    BoldCurrentTab = True
    Color = 16119543
    UseColoredTabs = True
    CutCornerSize = 15
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    FlatColor = 10263441
    ImageMargin = 10
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
    TabHeight = 25
    TabIndex = 0
    TabOrder = 0
    TabStyle = tsRoundCorners
    TextColors.Disabled = clMedGray
    TextColors.Selected = 16384
    TextColors.Unselected = clOlive
    TextAlignment = haRight
    OnClose = pcGestBcoClose
    OnTabClick = pcGestBcoTabClick
    FixedDimension = 25
    object tsMovProp: TRzTabSheet
      Hint = 'movimientos bancarios de la empresa'
      Color = 12910591
      ImageIndex = 47
      Caption = '&Propios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      object pnlMovProp: TRzGroupBox
        Left = 0
        Top = 0
        Width = 742
        Height = 116
        Align = alTop
        Alignment = taCenter
        BorderOuter = fsFlatRounded
        Caption = 'Movimientos  bancarios'
        Color = 13565951
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 14024661
        GradientColorStop = 16777181
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 0
        object lblNurMov: TLabel
          Left = 39
          Top = 27
          Width = 44
          Height = 13
          Caption = 'N'#250'mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = 25088
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblMovPropEmision: TLabel
          Left = 415
          Top = 27
          Width = 43
          Height = 13
          Caption = '&Emisi'#243'n'
          FocusControl = edtEmision
          Font.Charset = ANSI_CHARSET
          Font.Color = 25088
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblMovPropVto: TLabel
          Left = 513
          Top = 27
          Width = 70
          Height = 13
          Caption = '&Vencimiento'
          FocusControl = edtVencimiento
          Font.Charset = ANSI_CHARSET
          Font.Color = 25088
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblMovPropFRes: TLabel
          Left = 513
          Top = 62
          Width = 53
          Height = 13
          Caption = '&Resumen'
          Font.Charset = ANSI_CHARSET
          Font.Color = 25088
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblMovPropDetalle: TLabel
          Left = 303
          Top = 62
          Width = 40
          Height = 13
          Caption = '&Detalle'
          FocusControl = edtDetalle
          Font.Charset = ANSI_CHARSET
          Font.Color = 25088
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblMovPropImporte: TLabel
          Left = 38
          Top = 62
          Width = 47
          Height = 13
          Caption = '&Importe'
          FocusControl = edtImporte
          Font.Charset = ANSI_CHARSET
          Font.Color = 25088
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblNombreBanco: TLabel
          Left = 133
          Top = 27
          Width = 87
          Height = 13
          Caption = '&Banco y Cuenta'
          FocusControl = cbBancoProp
          Font.Charset = ANSI_CHARSET
          Font.Color = 25088
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblNroChq: TDBText
          Left = 40
          Top = 45
          Width = 85
          Height = 15
          Alignment = taRightJustify
          DataField = 'IdMov'
          DataSource = dsqBancoProp
          Font.Charset = ANSI_CHARSET
          Font.Color = 13986304
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
        end
        object lblMovPropTit: TLabel
          Left = 247
          Top = 62
          Width = 37
          Height = 13
          Caption = '&Titular'
          FocusControl = edtTitular
          Font.Charset = ANSI_CHARSET
          Font.Color = 25088
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblOper: TLabel
          Left = 303
          Top = 27
          Width = 84
          Height = 13
          Caption = 'Tipo &Operaci'#243'n'
          FocusControl = cbTipoMov
          Font.Charset = ANSI_CHARSET
          Font.Color = 25088
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblMovPropNroComp: TLabel
          Left = 133
          Top = 62
          Width = 93
          Height = 13
          Caption = 'N'#186' Comprobante'
          FocusControl = edtNroComp
          Font.Charset = ANSI_CHARSET
          Font.Color = 25088
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblConciliado: TRzLabel
          Left = 39
          Top = 99
          Width = 70
          Height = 13
          Caption = 'lblConciliado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          TextStyle = tsRaised
        end
        object edtDetalle: TwwDBEdit
          Left = 303
          Top = 76
          Width = 207
          Height = 19
          Hint = 
            'si no desea registrar el titular del movimiento'#13#10'puede escribir ' +
            'sus datos aqui'
          BorderStyle = bsNone
          DataField = 'DetalleMov'
          DataSource = dsqBancoProp
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = cbBancoPropKeyDown
        end
        object edtImporte: TwwDBEdit
          Left = 38
          Top = 76
          Width = 89
          Height = 19
          Hint = 'Monto de la operaci'#243'n'
          BorderStyle = bsNone
          DataField = 'Monto'
          DataSource = dsqBancoProp
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = cbBancoPropKeyDown
          OnKeyPress = edtImporteKeyPress
        end
        object edtTitular: TwwDBEdit
          Left = 247
          Top = 76
          Width = 52
          Height = 19
          Hint = 
            'N'#186' del titular del cheque si este est'#225' cargado <F3> Busca la ent' +
            'idad.'
          BorderStyle = bsNone
          DataField = 'IdEntidad'
          DataSource = dsqBancoProp
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = cbBancoPropKeyDown
        end
        object cbTipoMov: TwwDBLookupCombo
          Left = 303
          Top = 42
          Width = 105
          Height = 19
          Hint = 'Alt + Flecha Abajo despliega lista de movimientos permitidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'TipoMovBco'#9'15'#9'Tipo Movimiento'#9'F')
          DataField = 'TipoMov'
          DataSource = dsqBancoProp
          LookupTable = dmGestion.TipoMovBco
          LookupField = 'IdMovBco'
          Style = csDropDownList
          DropDownCount = 6
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 1
          AutoDropDown = True
          ShowButton = True
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = False
          ShowMatchText = True
          OnEnter = cbTipoMovEnter
          OnExit = cbTipoMovExit
          OnKeyDown = cbBancoPropKeyDown
        end
        object edtNroComp: TwwDBEdit
          Left = 133
          Top = 76
          Width = 98
          Height = 19
          Hint = 'n'#250'mero de cheque/boleta de deposito/comprobante cajero'
          BorderStyle = bsNone
          DataField = 'NroCheque'
          DataSource = dsqBancoProp
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = edtNroCompEnter
          OnExit = edtNroCompExit
          OnKeyDown = cbBancoPropKeyDown
        end
        object edtVencimiento: TwwDBDateTimePicker
          Left = 513
          Top = 42
          Width = 82
          Height = 19
          Hint = 'Fecha de vencimiento del movimiento'
          AutoSize = False
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          CalendarAttributes.Options = [mdoDayState, mdoNoToday, mdoNoTodayCircle]
          CalendarAttributes.PopupYearOptions.ShowEditYear = True
          DataField = 'FechaVencimiento'
          DataSource = dsqBancoProp
          Epoch = 1950
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameEtched
          ButtonWidth = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ShowButton = True
          TabOrder = 3
          OnKeyDown = cbBancoPropKeyDown
        end
        object edtEmision: TwwDBDateTimePicker
          Left = 415
          Top = 42
          Width = 93
          Height = 19
          Hint = 'Fecha de emisi'#243'n del movimiento'
          AutoSize = False
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          CalendarAttributes.Options = [mdoDayState, mdoNoToday, mdoNoTodayCircle]
          CalendarAttributes.PopupYearOptions.ShowEditYear = True
          DataField = 'FechaEmision'
          DataSource = dsqBancoProp
          Epoch = 1950
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameEtched
          ButtonWidth = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ShowButton = True
          TabOrder = 2
          OnEnter = edtEmisionEnter
          OnExit = edtEmisionExit
          OnKeyDown = cbBancoPropKeyDown
        end
        object edtFecResumen: TwwDBDateTimePicker
          Left = 513
          Top = 76
          Width = 83
          Height = 19
          Hint = 'solo para movimientos que vienen en resumen'
          AutoSize = False
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          CalendarAttributes.Options = [mdoDayState, mdoNoToday, mdoNoTodayCircle]
          CalendarAttributes.PopupYearOptions.ShowEditYear = True
          DataField = 'FechaResumen'
          DataSource = dsqBancoProp
          Epoch = 1950
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameEtched
          ButtonWidth = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ShowButton = True
          TabOrder = 8
          OnEnter = edtFecResumenEnter
          OnExit = edtFecResumenExit
          OnKeyDown = cbBancoPropKeyDown
        end
        object cbBancoProp: TwwDBLookupCombo
          Left = 133
          Top = 42
          Width = 167
          Height = 19
          Hint = 'Alt + Flecha Abajo despliega lista de bancos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Banco'#9'20'#9'Banco'#9'F'#9
            'NroCta'#9'15'#9'N'#186' de Cuenta'#9'F'#9)
          DataField = 'IDBANCO'
          DataSource = dsqBancoProp
          LookupTable = qBancos
          LookupField = 'IDBANCO'
          DropDownWidth = 250
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameEtched
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = False
          ShowMatchText = True
          OnEnter = cbBancoPropEnter
          OnExit = cbBancoPropExit
          OnKeyDown = cbBancoPropKeyDown
        end
        object pnlNavPro: TRzPanel
          Left = 619
          Top = 23
          Width = 121
          Height = 91
          Align = alRight
          BorderOuter = fsFlatRounded
          Color = 15791348
          TabOrder = 9
          object btnPriorPro: TRzBitBtn
            Left = 31
            Top = 1
            Width = 30
            Height = 30
            Hint = 'anterior'
            Color = 15791348
            HighlightColor = 16026986
            HotTrack = True
            HotTrackColor = 3983359
            TabOrder = 1
            OnClick = btnPriorProClick
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
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E80909E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8
              E8E8091009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8
              E809101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8
              09101010090909E8E8E8E8E8E8E8E8E881ACACAC818181E8E8E8E8E8E8E8E809
              10101010101009E8E8E8E8E8E8E8E881ACACACACACAC81E8E8E8E8E8E8E80910
              10101010101009E8E8E8E8E8E8E881ACACACACACACAC81E8E8E8E8E8E8091010
              10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8E80910
              10101010101009E8E8E8E8E8E8E881ACACACACACACAC81E8E8E8E8E8E8E8E809
              10101010101009E8E8E8E8E8E8E8E881ACACACACACAC81E8E8E8E8E8E8E8E8E8
              09101010090909E8E8E8E8E8E8E8E8E881ACACAC818181E8E8E8E8E8E8E8E8E8
              E809101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8
              E8E8091009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8
              E8E8E80909E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
            NumGlyphs = 2
          end
          object btnInsertPro: TRzBitBtn
            Left = 2
            Top = 30
            Width = 30
            Height = 30
            Hint = 'agregar operaci'#243'n'
            HotTrack = True
            ParentColor = True
            TabOrder = 4
            OnClick = btnInsertProClick
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
          object btnSavePro: TRzBitBtn
            Left = 31
            Top = 30
            Width = 30
            Height = 30
            Hint = 'grabar'
            HotTrack = True
            ParentColor = True
            TabOrder = 5
            OnClick = btnSaveProClick
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
          object btnAnularPro: TRzBitBtn
            Left = 31
            Top = 60
            Width = 30
            Height = 30
            Hint = 'anular movimiento emitido y '#13'generar contramovimiento'
            HotTrack = True
            ParentColor = True
            TabOrder = 8
            OnClick = btnAnularProClick
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
          object btnCancelPro: TRzBitBtn
            Left = 60
            Top = 30
            Width = 30
            Height = 30
            Hint = 'cancelar cambios'
            HotTrack = True
            ParentColor = True
            TabOrder = 6
            OnClick = btnCancelProClick
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
              0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909E8
              E8E8E8E809090909E8E8E881818181E8E8E8E8E881818181E8E8E80910101009
              E8E8E80910101009E8E8E881ACACAC81E8E8E881ACACAC81E8E8E8E809101010
              09E80910101009E8E8E8E8E881ACACAC81E881ACACAC81E8E8E8E8E8E8091010
              100910101009E8E8E8E8E8E8E881ACACAC81ACACAC81E8E8E8E8E8E8E8E80910
              1010101009E8E8E8E8E8E8E8E8E881ACACACACAC81E8E8E8E8E8E8E8E8E8E809
              10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E80910
              1010101009E8E8E8E8E8E8E8E8E881ACACACACAC81E8E8E8E8E8E8E8E8091010
              100910101009E8E8E8E8E8E8E881ACACAC81ACACAC81E8E8E8E8E8E809101010
              09E80910101009E8E8E8E8E881ACACAC81E881ACACAC81E8E8E8E80910101009
              E8E8E80910101009E8E8E881ACACAC81E8E8E881ACACAC81E8E8E809090909E8
              E8E8E8E809090909E8E8E881818181E8E8E8E8E881818181E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
            NumGlyphs = 2
          end
          object btnLastPro: TRzBitBtn
            Left = 89
            Top = 1
            Width = 30
            Height = 30
            Hint = #250'ltimo'
            HotTrack = True
            ParentColor = True
            TabOrder = 3
            OnClick = btnLastProClick
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
            NumGlyphs = 2
          end
          object btnBuscarPro: TRzBitBtn
            Left = 89
            Top = 60
            Width = 30
            Height = 30
            Hint = 'buscar'
            HotTrack = True
            ParentColor = True
            TabOrder = 7
            OnClick = btnBuscarProClick
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
          object btnNextPro: TRzBitBtn
            Left = 60
            Top = 1
            Width = 30
            Height = 30
            Hint = 'siguiente'
            HotTrack = True
            ParentColor = True
            TabOrder = 2
            OnClick = btnNextProClick
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
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809
              09E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E809
              1009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E8E809
              101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8090909
              10101009E8E8E8E8E8E8E8E8E8818181ACACAC81E8E8E8E8E8E8E8E8E8091010
              1010101009E8E8E8E8E8E8E8E881ACACACACACAC81E8E8E8E8E8E8E8E8091010
              101010101009E8E8E8E8E8E8E881ACACACACACACAC81E8E8E8E8E8E8E8091010
              10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8091010
              101010101009E8E8E8E8E8E8E881ACACACACACACAC81E8E8E8E8E8E8E8091010
              1010101009E8E8E8E8E8E8E8E881ACACACACACAC81E8E8E8E8E8E8E8E8090909
              10101009E8E8E8E8E8E8E8E8E8818181ACACAC81E8E8E8E8E8E8E8E8E8E8E809
              101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E809
              1009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E8E809
              09E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
            NumGlyphs = 2
          end
          object btnFirstPro: TRzBitBtn
            Left = 2
            Top = 1
            Width = 30
            Height = 30
            Hint = 'primero'
            HotTrack = True
            ParentColor = True
            TabOrder = 0
            OnClick = btnFirstProClick
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
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E80909E8E80909E8E8E8E8E8E8E8E8E8E88181E8E88181E8E8E8E8E8E8E8E8E8
              091009E8091009E8E8E8E8E8E8E8E8E881AC81E881AC81E8E8E8E8E8E8E8E809
              10100909101009E8E8E8E8E8E8E8E881ACAC8181ACAC81E8E8E8E8E8E8E80910
              101009101010090909E8E8E8E8E881ACACAC81ACACAC818181E8E8E8E8091010
              100910101010101009E8E8E8E881ACACAC81ACACACACACAC81E8E8E809101010
              091010101010101009E8E8E881ACACAC81ACACACACACACAC81E8E80910101009
              101010101010101009E8E881ACACAC81ACACACACACACACAC81E8E8E809101010
              091010101010101009E8E8E881ACACAC81ACACACACACACAC81E8E8E8E8091010
              100910101010101009E8E8E8E881ACACAC81ACACACACACAC81E8E8E8E8E80910
              101009101010090909E8E8E8E8E881ACACAC81ACACAC818181E8E8E8E8E8E809
              10100909101009E8E8E8E8E8E8E8E881ACAC8181ACAC81E8E8E8E8E8E8E8E8E8
              091009E8091009E8E8E8E8E8E8E8E8E881AC81E881AC81E8E8E8E8E8E8E8E8E8
              E80909E8E80909E8E8E8E8E8E8E8E8E8E88181E8E88181E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
            NumGlyphs = 2
          end
          object btnEliminarPro: TRzBitBtn
            Left = 60
            Top = 60
            Width = 30
            Height = 30
            Hint = 'eliminar definitivamente '#13'operaci'#243'n del sistema'
            HotTrack = True
            ParentColor = True
            TabOrder = 9
            OnClick = btnEliminarProClick
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
          object btnModPro: TRzBitBtn
            Left = 89
            Top = 29
            Width = 30
            Height = 30
            Hint = 'modificar'
            HotTrack = True
            ParentColor = True
            TabOrder = 10
            OnClick = btnModProClick
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
          object btnImpPro: TRzBitBtn
            Left = 2
            Top = 60
            Width = 30
            Height = 30
            Hint = 'Imprimir movimiento emitido'
            HotTrack = True
            ParentColor = True
            TabOrder = 11
            OnClick = btnImpProClick
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
      object pnlConsultaMovProp: TRzGroupBox
        Left = 0
        Top = 116
        Width = 742
        Height = 401
        Align = alClient
        Alignment = taCenter
        Caption = 'Consulta de movimientos por Cuenta'
        Color = 12383742
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 14024661
        GradientColorStop = 16777181
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 1
        object gMovProp: TwwDBGrid
          Left = 0
          Top = 66
          Width = 742
          Height = 335
          Hint = 'click sobre el titulo para ordenar por ese campo'
          Selected.Strings = (
            'IDMOV'#9'6'#9'N'#186#9'F'
            'FechaEmision'#9'8'#9'Emisi'#243'n'#9'F'
            'TIPOMOVBCO'#9'10'#9'Movimiento'#9'F'
            'NroCheque'#9'10'#9'Comprobante'#9'F'
            'DetalleMov'#9'20'#9'Detalle'#9'F'
            'FechaVencimiento'#9'8'#9'Vencimiento'#9'F'
            'Debe'#9'12'#9'Debe'#9'F'
            'Haber'#9'12'#9'Haber'#9'F'
            'SALDO'#9'12'#9'Saldo'#9'F'
            'FECHARESUMEN'#9'8'#9'Conciliaci'#243'n'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clInfoBk
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          BorderStyle = bsNone
          Color = clInfoBk
          DataSource = dsMovProp
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyOptions = [dgEnterToTab]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          UseTFields = False
          OnCalcCellColors = gMovPropCalcCellColors
          OnDblClick = gMovPropDblClick
          FooterColor = clInfoBk
          FooterCellColor = clInfoBk
        end
        object pnlTopConsMovProp: TRzPanel
          Left = 0
          Top = 21
          Width = 742
          Height = 45
          Align = alTop
          BorderOuter = fsFlatRounded
          Color = 15791348
          GradientColorStyle = gcsCustom
          GradientColorStop = 14155735
          TabOrder = 1
          VisualStyle = vsGradient
          object lblBcoCtaMP: TLabel
            Left = 9
            Top = 6
            Width = 89
            Height = 13
            Caption = 'Banco / Cuenta:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblMDesde: TLabel
            Left = 444
            Top = 5
            Width = 35
            Height = 13
            Caption = 'Desde'
            FocusControl = edtDesdeMP
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblMHasta: TLabel
            Left = 524
            Top = 5
            Width = 33
            Height = 13
            Caption = 'Hasta'
            FocusControl = edtHastaMP
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object cbBcoMovP: TRzComboBox
            Left = 9
            Top = 20
            Width = 194
            Height = 21
            Style = csDropDownList
            Color = 15791348
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            FlatButtons = True
            FocusColor = clWhite
            FrameColor = clBlack
            FrameHotTrack = True
            FrameVisible = True
            ItemHeight = 13
            ParentColor = True
            ParentCtl3D = False
            ParentFont = False
            TabOnEnter = True
            TabOrder = 0
          end
          object edtDesdeMP: TRzDateTimeEdit
            Left = 444
            Top = 19
            Width = 72
            Height = 21
            CaptionTodayBtn = 'Hoy'
            Date = 38651.000000000000000000
            EditType = etDate
            Format = 'dd/mm/yy'
            Color = 15791348
            FlatButtonColor = 12383742
            FlatButtons = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            FocusColor = clWhite
            FrameColor = clBlack
            FrameHotTrack = True
            FrameVisible = True
            ParentColor = True
            ParentFont = False
            TabOnEnter = True
            TabOrder = 2
          end
          object edtHastaMP: TRzDateTimeEdit
            Left = 524
            Top = 19
            Width = 72
            Height = 21
            CaptionTodayBtn = 'Hoy'
            Date = 38651.000000000000000000
            EditType = etDate
            Format = 'dd/mm/yy'
            Color = 15791348
            FlatButtonColor = 12383742
            FlatButtons = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            FocusColor = clWhite
            FrameColor = clBlack
            FrameHotTrack = True
            FrameVisible = True
            ParentColor = True
            ParentFont = False
            TabOnEnter = True
            TabOrder = 3
          end
          object btnMovPro: TRzBitBtn
            Left = 604
            Top = 11
            Width = 30
            Height = 30
            Hint = 'buscar movimientos propios entre fechas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            HotTrack = True
            ParentColor = True
            ParentFont = False
            TabOrder = 4
            OnClick = btnMovProClick
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
          object btnImpMovPro: TRzBitBtn
            Left = 634
            Top = 11
            Width = 30
            Height = 30
            Hint = 'imprimir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            HotTrack = True
            ParentColor = True
            ParentFont = False
            TabOrder = 5
            OnClick = btnImpMovProClick
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
          object btnExpMovPro: TRzBitBtn
            Left = 665
            Top = 11
            Width = 30
            Height = 30
            Hint = 'exportar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            HotTrack = True
            ParentColor = True
            ParentFont = False
            TabOrder = 6
            OnClick = btnExpMovProClick
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
          object rgTipoVencMP: TRzRadioGroup
            Left = 232
            Top = 1
            Width = 194
            Height = 41
            Caption = 'Movimientos ordenados por '
            Columns = 2
            GradientColorStyle = gcsCustom
            GradientColorStop = 14155735
            GroupStyle = gsBanner
            ItemHotTrack = True
            ItemFont.Charset = ANSI_CHARSET
            ItemFont.Color = clGreen
            ItemFont.Height = -11
            ItemFont.Name = 'Tahoma'
            ItemFont.Style = [fsBold]
            ItemIndex = 0
            Items.Strings = (
              'Emisi'#243'n  '#243'  '
              'Vencimiento')
            StartYPos = 0
            TabOnEnter = True
            TabOrder = 1
            TabStop = True
            TextStyle = tsRecessed
            Transparent = True
            VerticalSpacing = 2
          end
        end
      end
    end
    object tsChqTer: TRzTabSheet
      Color = 14155478
      ImageIndex = 73
      Caption = '&Terceros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      object pnlConsultaMovTer: TRzGroupBox
        Left = 0
        Top = 161
        Width = 742
        Height = 356
        Align = alClient
        Alignment = taCenter
        Caption = 'Consultas'
        Color = 14810848
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 16767927
        GradientColorStop = 11129811
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 0
        object gMovTer: TwwDBGrid
          Left = 0
          Top = 58
          Width = 742
          Height = 298
          Selected.Strings = (
            'IdMov'#9'5'#9'N'#186
            'NombreBanco'#9'23'#9'Entidad'#9'F'
            'NroCuenta'#9'8'#9'Cuenta'#9'F'
            'NroCheque'#9'10'#9'Comprobante'#9'F'
            'Endoso'#9'10'#9'Endoso'#9'F'
            'Situacion'#9'10'#9'Situaci'#243'n'#9'F'
            'FechaVencimiento'#9'8'#9'Vencimiento'#9'F'
            'FechaEntrega'#9'8'#9'Salida'#9'F'
            'Monto'#9'14'#9'Importe'#9'F'
            'NroFactura'#9'13'#9'Factura'#9'F')
          IniAttributes.Delimiter = ';;'
          ExportOptions.Options = [esoShowHeader, esoShowTitle, esoDblQuoteFields, esoShowAlternating, esoTransparentGrid]
          TitleColor = 15400959
          FixedCols = 0
          ShowHorzScrollBar = True
          EditControlOptions = [ecoSearchOwnerForm, ecoDisableDateTimePicker]
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsMovTer
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          UseTFields = False
          OnTitleButtonClick = gMovTerTitleButtonClick
          OnDblClick = gMovTerDblClick
          IndicatorIconColor = clYellow
          OnUpdateFooter = gMovTerUpdateFooter
          FooterColor = 15532006
          FooterCellColor = clWhite
        end
        object pnlTopMovTer: TRzPanel
          Left = 0
          Top = 22
          Width = 742
          Height = 36
          Align = alTop
          BorderInner = fsFlatRounded
          BorderOuter = fsNone
          GradientColorStyle = gcsCustom
          GradientColorStop = 16378331
          TabOrder = 1
          VisualStyle = vsGradient
          object lblBTDesde: TLabel
            Left = 248
            Top = 18
            Width = 38
            Height = 13
            Caption = '&Desde:'
            Color = clWhite
            FocusControl = edtDesdeTer
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object lblBTHasta: TLabel
            Left = 395
            Top = 18
            Width = 36
            Height = 13
            Caption = '&Hasta:'
            Color = clWhite
            FocusControl = edtHastaTer
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object lblBTSituacion: TLabel
            Left = 28
            Top = 18
            Width = 55
            Height = 13
            Caption = 'S&ituaci'#243'n:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object btnExpTer: TRzBitBtn
            Left = 573
            Top = 3
            Width = 30
            Height = 30
            Hint = 'Exportar a un archivo'
            Color = 15791348
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 4
            OnClick = btnExpTerClick
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
          object edtDesdeTer: TRzDateTimeEdit
            Left = 292
            Top = 9
            Width = 86
            Height = 21
            CaptionTodayBtn = 'Hoy'
            Date = 38651.000000000000000000
            EditType = etDate
            Format = 'dd/mm/yy'
            Color = clWhite
            FlatButtons = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            FrameColor = clBlack
            FrameHotTrack = True
            FrameVisible = True
            ParentFont = False
            TabOnEnter = True
            TabOrder = 1
          end
          object edtHastaTer: TRzDateTimeEdit
            Left = 434
            Top = 9
            Width = 87
            Height = 21
            CaptionTodayBtn = 'Hoy'
            Date = 38651.000000000000000000
            EditType = etDate
            Format = 'dd/mm/yy'
            Color = clWhite
            FlatButtons = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            FrameColor = clBlack
            FrameHotTrack = True
            FrameVisible = True
            ParentFont = False
            TabOnEnter = True
            TabOrder = 2
          end
          object btnMovTer: TRzBitBtn
            Left = 538
            Top = 3
            Width = 30
            Height = 30
            Hint = 'Imprimir'
            FrameColor = 7617536
            Color = 15791348
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentFont = False
            TabOrder = 3
            OnClick = btnMovTerClick
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
          object cbMovTer: TRzComboBox
            Left = 87
            Top = 9
            Width = 154
            Height = 21
            Style = csDropDownList
            Color = clWhite
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FlatButtons = True
            FrameColor = clBlack
            FrameHotTrack = True
            FrameVisible = True
            ItemHeight = 13
            ParentCtl3D = False
            ParentFont = False
            TabOnEnter = True
            TabOrder = 0
          end
        end
      end
      object gbMovTer: TRzGroupBox
        Left = 0
        Top = 0
        Width = 742
        Height = 161
        Align = alTop
        Alignment = taCenter
        Caption = 'Movimientos'
        Color = 14810848
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 16767927
        GradientColorStop = 11129811
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 1
        VisualStyle = vsGradient
        object bvlNroMov: TBevel
          Left = 40
          Top = 20
          Width = 93
          Height = 33
          Shape = bsFrame
        end
        object lblNroMov: TLabel
          Left = 47
          Top = 21
          Width = 83
          Height = 13
          Caption = 'N'#186' Movimiento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblBancoTer: TLabel
          Left = 150
          Top = 19
          Width = 34
          Height = 13
          Caption = '&Banco'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblNroCta: TLabel
          Left = 40
          Top = 53
          Width = 73
          Height = 13
          Caption = '&N'#186' de Cuenta'
          FocusControl = edtCtaChqTer
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblNroValTer: TLabel
          Left = 150
          Top = 53
          Width = 58
          Height = 13
          Caption = 'N'#186' &Cheque'
          FocusControl = edtNroCheque
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblCodEnd: TLabel
          Left = 430
          Top = 53
          Width = 38
          Height = 13
          Caption = 'C'#243'dig&o'
          FocusControl = edtCodEndoso
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblTitular: TLabel
          Left = 476
          Top = 19
          Width = 37
          Height = 13
          Caption = '&Titular'
          FocusControl = edtTitularChqTer
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblCodTit: TLabel
          Left = 430
          Top = 19
          Width = 38
          Height = 13
          Caption = 'C'#243'&digo'
          FocusControl = edtCodTitular
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblEndoso: TLabel
          Left = 476
          Top = 53
          Width = 40
          Height = 13
          Caption = '&Endoso'
          FocusControl = edtEndoso
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblVto: TLabel
          Left = 150
          Top = 86
          Width = 70
          Height = 13
          Caption = '&Vencimiento'
          FocusControl = edtFecVencimiento
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblFecSal: TLabel
          Left = 334
          Top = 86
          Width = 84
          Height = 13
          Caption = 'En&trega/Salida'
          FocusControl = edtFecEntrega
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblCodSal: TLabel
          Left = 430
          Top = 86
          Width = 38
          Height = 13
          Caption = 'C'#243'di&go'
          FocusControl = edtCodEntrega
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblEntrega: TLabel
          Left = 476
          Top = 86
          Width = 44
          Height = 13
          Caption = 'Entreg&a'
          FocusControl = edtEntrega
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblImporte: TLabel
          Left = 243
          Top = 86
          Width = 47
          Height = 13
          Caption = '&Importe'
          FocusControl = edtMtoChqTer
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblNroChqTer: TDBText
          Left = 65
          Top = 36
          Width = 64
          Height = 13
          Alignment = taRightJustify
          DataField = 'IdMov'
          DataSource = dsqBancoTer
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNroFac: TLabel
          Left = 40
          Top = 86
          Width = 59
          Height = 13
          Caption = 'N'#186' &Factura'
          FocusControl = edtNroFac
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblSituacion: TLabel
          Left = 269
          Top = 53
          Width = 52
          Height = 13
          Caption = '&Situaci'#243'n'
          FocusControl = cbSituacion
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblSituacionChTer: TRzLabel
          Left = 152
          Top = 136
          Width = 180
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Caption = 'lblSituacionChTer'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          BorderOuter = fsFlatRounded
          FlyByEnabled = True
          TextStyle = tsRaised
        end
        object lblDetEmpBT: TLabel
          Left = 42
          Top = 122
          Width = 49
          Height = 13
          Caption = 'Empresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object edtCtaChqTer: TwwDBEdit
          Left = 40
          Top = 67
          Width = 102
          Height = 20
          Hint = 'N'#250'mero de cuenta del valor'
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'NroCuenta'
          DataSource = dsqBancoTer
          Font.Charset = ANSI_CHARSET
          Font.Color = 21760
          Font.Height = -11
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
          OnKeyDown = edtNomBcoTerKeyDown
        end
        object edtNroCheque: TwwDBEdit
          Left = 150
          Top = 67
          Width = 109
          Height = 20
          Hint = 'n'#250'mero de serie del  valor'
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'NroCheque'
          DataSource = dsqBancoTer
          Font.Charset = ANSI_CHARSET
          Font.Color = 21760
          Font.Height = -11
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
          OnKeyDown = edtNomBcoTerKeyDown
        end
        object edtCodTitular: TwwDBEdit
          Left = 429
          Top = 34
          Width = 34
          Height = 20
          Hint = 
            'ingrese c'#243'digo del titular del cheque si esta ingresado al siste' +
            'ma. <F3> puede buscarlo'
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'IdTitular'
          DataSource = dsqBancoTer
          Font.Charset = ANSI_CHARSET
          Font.Color = 21760
          Font.Height = -11
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
          OnKeyDown = edtCodTitularKeyDown
        end
        object edtTitularChqTer: TwwDBEdit
          Left = 476
          Top = 34
          Width = 202
          Height = 20
          Hint = 'Nombre o razon social del librador o titular'
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'Titular'
          DataSource = dsqBancoTer
          Font.Charset = ANSI_CHARSET
          Font.Color = 21760
          Font.Height = -11
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
          OnKeyDown = edtNomBcoTerKeyDown
        end
        object edtCodEndoso: TwwDBEdit
          Left = 430
          Top = 67
          Width = 34
          Height = 20
          Hint = 
            'ingrese c'#243'digo del endosante del cheque si esta ingresado al sis' +
            'tema. <F3> puede buscarlo'
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'IdEndoso'
          DataSource = dsqBancoTer
          Font.Charset = ANSI_CHARSET
          Font.Color = 21760
          Font.Height = -11
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
          OnKeyDown = edtCodEndosoKeyDown
        end
        object edtEndoso: TwwDBEdit
          Left = 476
          Top = 67
          Width = 202
          Height = 20
          Hint = 'nombre o razon social del endosante'
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'Endoso'
          DataSource = dsqBancoTer
          Font.Charset = ANSI_CHARSET
          Font.Color = 21760
          Font.Height = -11
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
          OnKeyDown = edtNomBcoTerKeyDown
        end
        object edtCodEntrega: TwwDBEdit
          Left = 430
          Top = 100
          Width = 34
          Height = 20
          Hint = 
            'ingrese c'#243'digo del proveedor o tercero a quien se le entrogo el ' +
            ' cheque, si esta ingresado al sistema. <F3> puede buscarlo.'
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'IdEntrega'
          DataSource = dsqBancoTer
          Font.Charset = ANSI_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 12
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtCodEntregaKeyDown
        end
        object edtEntrega: TwwDBEdit
          Left = 476
          Top = 100
          Width = 202
          Height = 20
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'Entrega'
          DataSource = dsqBancoTer
          Font.Charset = ANSI_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 13
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtNomBcoTerKeyDown
        end
        object edtMtoChqTer: TwwDBEdit
          Left = 243
          Top = 100
          Width = 86
          Height = 20
          Hint = 'monto del valor o cheque'
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'Monto'
          DataSource = dsqBancoTer
          Font.Charset = ANSI_CHARSET
          Font.Color = 21760
          Font.Height = -11
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
          OnKeyDown = edtNomBcoTerKeyDown
          OnKeyPress = edtMtoChqTerKeyPress
        end
        object edtNroFac: TwwDBEdit
          Left = 40
          Top = 100
          Width = 102
          Height = 20
          Hint = 'N'#250'mero de comprobante por el cual ingresa el cheque o valor'
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'NroFactura'
          DataSource = dsqBancoTer
          Font.Charset = ANSI_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 8
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtNomBcoTerKeyDown
        end
        object edtFecVencimiento: TwwDBDateTimePicker
          Left = 150
          Top = 100
          Width = 90
          Height = 20
          Hint = 'fecha de vencimiento'
          AutoSize = False
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'FechaVencimiento'
          DataSource = dsqBancoTer
          Epoch = 1950
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          ButtonWidth = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ShowButton = True
          TabOrder = 9
          OnKeyDown = edtNomBcoTerKeyDown
        end
        object edtFecEntrega: TwwDBDateTimePicker
          Left = 333
          Top = 100
          Width = 87
          Height = 20
          Hint = 'fecha de salida, o deposito'
          AutoSize = False
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'FechaEntrega'
          DataSource = dsqBancoTer
          Epoch = 1950
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          ButtonWidth = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ShowButton = True
          TabOrder = 11
          OnKeyDown = edtNomBcoTerKeyDown
        end
        object cbSituacion: TwwDBLookupCombo
          Left = 268
          Top = 67
          Width = 152
          Height = 20
          Hint = 'Situaci'#243'n en que esta el movimiento'
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Estado'#9'20'#9'Estado'#9'F'#9)
          DataField = 'Situacion'
          DataSource = dsqBancoTer
          LookupTable = dmGestion.EstMovTer
          LookupField = 'IdEstado'
          Style = csDropDownList
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 3
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = cbSituacionChange
          OnKeyDown = edtNomBcoTerKeyDown
        end
        object edtNomBcoTer: TwwDBEdit
          Left = 150
          Top = 34
          Width = 270
          Height = 19
          Hint = 'Nombre o razon social del librador o titular'
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'NombreBanco'
          DataSource = dsqBancoTer
          Font.Charset = ANSI_CHARSET
          Font.Color = 21760
          Font.Height = -11
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
          OnKeyDown = edtNomBcoTerKeyDown
        end
        object pnlNavTer: TRzPanel
          Left = 349
          Top = 123
          Width = 329
          Height = 34
          BorderOuter = fsFlatRounded
          ParentColor = True
          TabOrder = 15
          object btnPriorTer: TRzBitBtn
            Left = 32
            Top = 2
            Width = 30
            Height = 30
            Hint = 'anterior'
            HighlightColor = 16026986
            HotTrack = True
            HotTrackColor = 3983359
            ParentColor = True
            TabOrder = 1
            OnClick = btnPriorTerClick
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
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E80909E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8
              E8E8091009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8
              E809101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8
              09101010090909E8E8E8E8E8E8E8E8E881ACACAC818181E8E8E8E8E8E8E8E809
              10101010101009E8E8E8E8E8E8E8E881ACACACACACAC81E8E8E8E8E8E8E80910
              10101010101009E8E8E8E8E8E8E881ACACACACACACAC81E8E8E8E8E8E8091010
              10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8E80910
              10101010101009E8E8E8E8E8E8E881ACACACACACACAC81E8E8E8E8E8E8E8E809
              10101010101009E8E8E8E8E8E8E8E881ACACACACACAC81E8E8E8E8E8E8E8E8E8
              09101010090909E8E8E8E8E8E8E8E8E881ACACAC818181E8E8E8E8E8E8E8E8E8
              E809101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8
              E8E8091009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8
              E8E8E80909E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
            NumGlyphs = 2
          end
          object btnInsertTer: TRzBitBtn
            Left = 120
            Top = 2
            Width = 30
            Height = 30
            Hint = 'agregar operaci'#243'n'
            HotTrack = True
            ParentColor = True
            TabOrder = 4
            OnClick = btnInsertTerClick
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
          object btnSaveTer: TRzBitBtn
            Left = 150
            Top = 2
            Width = 30
            Height = 30
            Hint = 'grabar'
            HotTrack = True
            ParentColor = True
            TabOrder = 5
            OnClick = btnSaveTerClick
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
          object btnAnularTer: TRzBitBtn
            Left = 267
            Top = 2
            Width = 30
            Height = 30
            Hint = 'anular operaci'#243'n'
            HotTrack = True
            ParentColor = True
            TabOrder = 8
            OnClick = btnAnularTerClick
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
          object btnCancelTer: TRzBitBtn
            Left = 208
            Top = 2
            Width = 30
            Height = 30
            Hint = 'cancelar cambios'
            HotTrack = True
            ParentColor = True
            TabOrder = 6
            OnClick = btnCancelTerClick
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
              0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909E8
              E8E8E8E809090909E8E8E881818181E8E8E8E8E881818181E8E8E80910101009
              E8E8E80910101009E8E8E881ACACAC81E8E8E881ACACAC81E8E8E8E809101010
              09E80910101009E8E8E8E8E881ACACAC81E881ACACAC81E8E8E8E8E8E8091010
              100910101009E8E8E8E8E8E8E881ACACAC81ACACAC81E8E8E8E8E8E8E8E80910
              1010101009E8E8E8E8E8E8E8E8E881ACACACACAC81E8E8E8E8E8E8E8E8E8E809
              10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E80910
              1010101009E8E8E8E8E8E8E8E8E881ACACACACAC81E8E8E8E8E8E8E8E8091010
              100910101009E8E8E8E8E8E8E881ACACAC81ACACAC81E8E8E8E8E8E809101010
              09E80910101009E8E8E8E8E881ACACAC81E881ACACAC81E8E8E8E80910101009
              E8E8E80910101009E8E8E881ACACAC81E8E8E881ACACAC81E8E8E809090909E8
              E8E8E8E809090909E8E8E881818181E8E8E8E8E881818181E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
            NumGlyphs = 2
          end
          object btnLastTer: TRzBitBtn
            Left = 91
            Top = 2
            Width = 30
            Height = 30
            Hint = #250'ltimo'
            HotTrack = True
            ParentColor = True
            TabOrder = 3
            OnClick = btnLastTerClick
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
            NumGlyphs = 2
          end
          object btnBuscarTer: TRzBitBtn
            Left = 238
            Top = 2
            Width = 30
            Height = 30
            Hint = 'buscar'
            HotTrack = True
            ParentColor = True
            TabOrder = 7
            OnClick = btnBuscarTerClick
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
          object btnNextTer: TRzBitBtn
            Left = 61
            Top = 2
            Width = 30
            Height = 30
            Hint = 'siguiente'
            HotTrack = True
            ParentColor = True
            TabOrder = 2
            OnClick = btnNextTerClick
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
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809
              09E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E809
              1009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E8E809
              101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8090909
              10101009E8E8E8E8E8E8E8E8E8818181ACACAC81E8E8E8E8E8E8E8E8E8091010
              1010101009E8E8E8E8E8E8E8E881ACACACACACAC81E8E8E8E8E8E8E8E8091010
              101010101009E8E8E8E8E8E8E881ACACACACACACAC81E8E8E8E8E8E8E8091010
              10101010101009E8E8E8E8E8E881ACACACACACACACAC81E8E8E8E8E8E8091010
              101010101009E8E8E8E8E8E8E881ACACACACACACAC81E8E8E8E8E8E8E8091010
              1010101009E8E8E8E8E8E8E8E881ACACACACACAC81E8E8E8E8E8E8E8E8090909
              10101009E8E8E8E8E8E8E8E8E8818181ACACAC81E8E8E8E8E8E8E8E8E8E8E809
              101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E809
              1009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E8E809
              09E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
            NumGlyphs = 2
          end
          object btnFirstTer: TRzBitBtn
            Left = 3
            Top = 2
            Width = 30
            Height = 30
            Hint = 'primero'
            HotTrack = True
            ParentColor = True
            TabOrder = 0
            OnClick = btnFirstTerClick
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
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E80909E8E80909E8E8E8E8E8E8E8E8E8E88181E8E88181E8E8E8E8E8E8E8E8E8
              091009E8091009E8E8E8E8E8E8E8E8E881AC81E881AC81E8E8E8E8E8E8E8E809
              10100909101009E8E8E8E8E8E8E8E881ACAC8181ACAC81E8E8E8E8E8E8E80910
              101009101010090909E8E8E8E8E881ACACAC81ACACAC818181E8E8E8E8091010
              100910101010101009E8E8E8E881ACACAC81ACACACACACAC81E8E8E809101010
              091010101010101009E8E8E881ACACAC81ACACACACACACAC81E8E80910101009
              101010101010101009E8E881ACACAC81ACACACACACACACAC81E8E8E809101010
              091010101010101009E8E8E881ACACAC81ACACACACACACAC81E8E8E8E8091010
              100910101010101009E8E8E8E881ACACAC81ACACACACACAC81E8E8E8E8E80910
              101009101010090909E8E8E8E8E881ACACAC81ACACAC818181E8E8E8E8E8E809
              10100909101009E8E8E8E8E8E8E8E881ACAC8181ACAC81E8E8E8E8E8E8E8E8E8
              091009E8091009E8E8E8E8E8E8E8E8E881AC81E881AC81E8E8E8E8E8E8E8E8E8
              E80909E8E80909E8E8E8E8E8E8E8E8E8E88181E8E88181E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
            NumGlyphs = 2
          end
          object btnEliminarTer: TRzBitBtn
            Left = 297
            Top = 2
            Width = 30
            Height = 30
            Hint = 'eliminar operaci'#243'n'
            HotTrack = True
            ParentColor = True
            TabOrder = 9
            OnClick = btnEliminarTerClick
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
          object btnEditTer: TRzBitBtn
            Left = 179
            Top = 2
            Width = 30
            Height = 30
            Hint = 'modificar'
            HotTrack = True
            ParentColor = True
            TabOrder = 10
            OnClick = btnEditTerClick
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
        end
        object cbDetEmpBT: TwwDBLookupCombo
          Left = 41
          Top = 136
          Width = 102
          Height = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'NOMBREEMPRESA'#9'20'#9'Empresas'#9'F'
            'IDEMPRESA'#9'2'#9'N'#186#9'F')
          DataField = 'IDEMPRESA'
          DataSource = dsqBancoTer
          LookupTable = dmGestion.Empresas
          LookupField = 'IDEMPRESA'
          Options = [loColLines, loRowLines, loTitles]
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 14
          AutoDropDown = False
          ShowButton = True
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = False
          OnKeyDown = edtNomBcoTerKeyDown
        end
      end
      object gbDepositoTer: TRzGroupBox
        Left = 136
        Top = 1
        Width = 192
        Height = 157
        Hint = 'deposito de cheque de tercero en cuenta propia'
        BorderColor = clMaroon
        BorderInner = fsFlat
        BorderOuter = fsFlat
        Caption = ' Dep'#243'sito de Cheque en Cartera '
        Color = 14155735
        FlatColor = clMaroon
        Font.Charset = ANSI_CHARSET
        Font.Color = 20224
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        GradientColorStyle = gcsCustom
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 2
        Visible = False
        OnEnter = gbDepositoTerEnter
        object brDepTer: TRzBorder
          Left = 2
          Top = 23
          Width = 188
          Height = 132
          Align = alClient
          ExplicitHeight = 131
        end
        object lblBancoCta: TLabel
          Left = 10
          Top = 37
          Width = 69
          Height = 13
          Caption = '&Banco y Cta.'
          Color = 10930928
          Font.Charset = ANSI_CHARSET
          Font.Color = 4194304
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblFecDep: TLabel
          Left = 10
          Top = 112
          Width = 86
          Height = 13
          Caption = 'Fecha &Deposito'
          Color = 10930928
          FocusControl = edtFecDepTer
          Font.Charset = ANSI_CHARSET
          Font.Color = 4194304
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblCompDepTer: TLabel
          Left = 10
          Top = 76
          Width = 93
          Height = 13
          Caption = 'N'#186' Comprobante'
          FocusControl = edtCmpDepTer
          Font.Charset = ANSI_CHARSET
          Font.Color = 4194304
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object edtFecDepTer: TwwDBDateTimePicker
          Left = 10
          Top = 127
          Width = 90
          Height = 19
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'FechaEmision'
          DataSource = dsqBancoProp
          Epoch = 1950
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          Font.Charset = ANSI_CHARSET
          Font.Color = 70
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ShowButton = True
          TabOrder = 2
          DisplayFormat = 'dd/mm/yy'
          OnKeyDown = edtFecDepTerKeyDown
        end
        object btnGrabarDep: TRzBitBtn
          Left = 148
          Top = 80
          Width = 30
          Height = 30
          FrameColor = 7617536
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 3
          OnClick = btnGrabarDepClick
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
        object btnCancelarDep: TRzBitBtn
          Left = 148
          Top = 116
          Width = 30
          Height = 30
          FrameColor = 7617536
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 4
          OnClick = btnCancelarDepClick
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
        object edtCmpDepTer: TwwDBEdit
          Left = 10
          Top = 91
          Width = 89
          Height = 19
          Hint = 'n'#250'mero de cheque/boleta de deposito/comprobante cajero'
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = 70
          Font.Height = -11
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
          OnKeyDown = edtCmpDepTerKeyDown
        end
        object cbBcoTDep: TRzComboBox
          Left = 10
          Top = 52
          Width = 168
          Height = 21
          Style = csDropDownList
          Color = 14155735
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 70
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FlatButtons = True
          FrameColor = clBlack
          FrameHotTrack = True
          FrameVisible = True
          ItemHeight = 13
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOnEnter = True
          TabOrder = 0
          OnChange = cbBcoLibroChange
        end
      end
    end
    object tsConciliacion: TRzTabSheet
      Color = 16776441
      ImageIndex = 149
      Caption = 'C&onciliaci'#243'n'
      object pcAdmConciliaciones: TRzPageControl
        Left = 0
        Top = 0
        Width = 742
        Height = 517
        ActivePage = tsConciliar
        Align = alClient
        BoldCurrentTab = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowCardFrame = False
        ShowFocusRect = False
        ShowFullFrame = False
        ShowHint = False
        ShowShadow = False
        TabIndex = 1
        TabOrder = 0
        FixedDimension = 22
        object tsConcRealizadas: TRzTabSheet
          Color = 16776441
          Caption = 'Conciliaciones Realizadas'
          object gConcR: TwwDBGrid
            Left = 0
            Top = 0
            Width = 742
            Height = 495
            Selected.Strings = (
              'IDCONCILIACION'#9'6'#9'N~C'#9'F'
              'Banco'#9'20'#9'Banco'#9'F'
              'NroCta'#9'12'#9'N'#250'mero de~Cuenta'#9'F'
              'CANT_MOV'#9'10'#9'N'#186' Movimientos~Conciliados'#9'F'
              'FECHA_CONC'#9'12'#9'Fecha~Conciliaci'#243'n'#9'F'
              'SSBANCO'#9'12'#9'Saldo Segun~Banco'#9'F'
              'DIF_CONC'#9'10'#9'Diferencia~Conciliaci'#243'n'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 14086648
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            BorderStyle = bsNone
            Color = 14548991
            DataSource = dsqConcR
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyOptions = [dgEnterToTab]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clMaroon
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            OnDblClick = gConcRDblClick
          end
        end
        object tsConciliar: TRzTabSheet
          Color = 16776441
          Caption = 'Conciliar cuentas'
          object gbConc: TRzGroupBox
            Left = 0
            Top = 0
            Width = 159
            Height = 495
            Align = alLeft
            BorderOuter = fsFlatRounded
            Caption = 'Cuentas  a  Conciliar'
            Color = 15791348
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GradientColorStyle = gcsCustom
            GradientColorStop = 16772055
            GroupStyle = gsBanner
            ParentFont = False
            TabOrder = 0
            VisualStyle = vsGradient
            object lblBcoCta: TLabel
              Left = 5
              Top = 33
              Width = 44
              Height = 26
              Caption = 'B&anco y  '#13#10'Cuenta:'
              FocusControl = cbBcoConc
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object lblFecRes: TLabel
              Left = 5
              Top = 89
              Width = 48
              Height = 26
              Caption = 'Fecha del'#13#10'&Resumen:'
              FocusControl = edtFecConc
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object lblSSBco: TLabel
              Left = 5
              Top = 130
              Width = 38
              Height = 26
              Caption = '&Saldo s/'#13#10'Banco:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object btnImpConc: TRzBitBtn
              Left = 14
              Top = 461
              Width = 68
              Height = 30
              Hint = 'Imprimir y Grabar '#13'conciliaci'#243'n Bancaria'
              Caption = '&Imprimir y Grabar'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
              OnClick = btnImpConcClick
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
            object btnConciliar: TRzBitBtn
              Left = 16
              Top = 430
              Width = 30
              Height = 30
              Hint = 
                'Buscar movimientos sin conciliar '#13'a la fecha, en la cuenta elegi' +
                'da.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = btnConciliarClick
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
            object edtFecConc: TRzDateTimeEdit
              Left = 59
              Top = 93
              Width = 85
              Height = 22
              CaptionTodayBtn = 'Hoy'
              Date = 38651.000000000000000000
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 15791348
              FlatButtons = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 16776441
              FrameColor = clBlack
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              TabOnEnter = True
              TabOrder = 1
              OnEnter = edtFecConcEnter
            end
            object cbBcoConc: TRzComboBox
              Left = 5
              Top = 62
              Width = 140
              Height = 22
              Style = csDropDownList
              CharCase = ecUpperCase
              Color = 15791348
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              FlatButtons = True
              FrameColor = clBlack
              FrameHotTrack = True
              FrameVisible = True
              ItemHeight = 14
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              TabOnEnter = True
              TabOrder = 0
            end
            object btnExpConc: TRzBitBtn
              Left = 89
              Top = 461
              Width = 30
              Height = 30
              Hint = 'exportar movimientos '#13'de conciliaci'#243'n'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              OnClick = btnExpConcClick
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
            object edtSalConc: TRzNumericEdit
              Left = 60
              Top = 134
              Width = 85
              Height = 22
              Color = 15791348
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              FrameColor = clBlack
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              TabOnEnter = True
              TabOrder = 2
              OnEnter = edtSalConcEnter
              OnExit = edtSalConcExit
              OnKeyPress = edtSalConcKeyPress
              IntegersOnly = False
              DisplayFormat = '$ ,0.00;($ ,0.00)'
            end
            object rgOrdConc: TRzRadioGroup
              Left = 1
              Top = 176
              Width = 157
              Height = 226
              Hint = 'elija como ordenar los movimientos'
              Alignment = taRightJustify
              Caption = 'Ordenar movimientos por'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              GradientColorStyle = gcsCustom
              GroupStyle = gsBanner
              ItemFrameColor = 8409372
              ItemHotTrack = True
              ItemHighlightColor = 2203937
              ItemHotTrackColorType = htctComplement
              ItemFont.Charset = ANSI_CHARSET
              ItemFont.Color = clRed
              ItemFont.Height = -12
              ItemFont.Name = 'Tahoma'
              ItemFont.Style = []
              Items.Strings = (
                'Fecha Descendiente'
                'Fecha Ascendiente'
                'Vencimiento Desc.'
                'Vencimiento Ascn.'
                'Monto Descendiente'
                'Monto Ascendiente'
                'Comprobante'
                'Tipo Movimiento')
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              StartXPos = 2
              StartYPos = 5
              TabOnEnter = True
              TabOrder = 3
              TabStop = True
              VerticalSpacing = 5
              VisualStyle = vsGradient
            end
            object btnSel_All_Conciliacion: TRzBitBtn
              Left = 52
              Top = 430
              Width = 30
              Height = 30
              Hint = 'marcar todos'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              OnClick = btnSel_All_ConciliacionClick
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
              NumGlyphs = 2
            end
            object btnUnSell_All_Conciliacion: TRzBitBtn
              Left = 89
              Top = 430
              Width = 30
              Height = 30
              Hint = 'desmarcar todos'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              OnClick = btnUnSell_All_ConciliacionClick
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
              NumGlyphs = 2
            end
          end
          object gConciliacion: TwwDBGrid
            Left = 159
            Top = 0
            Width = 583
            Height = 495
            ControlType.Strings = (
              'Esta;CheckBox;True;False'
              'Selected;CheckBox;Yes;No')
            Selected.Strings = (
              'DetTipoMov'#9'8'#9'Tipo de~Movimiento'#9'F'#9'Movimientos Bancarios'
              'FechaEmision'#9'8'#9'Fecha de~Emisi'#243'n'#9'F'#9'Movimientos Bancarios'
              'FechaVencimiento'#9'8'#9'Fecha de~Vencimiento'#9'F'#9'Movimientos Bancarios'
              'DetalleMov'#9'20'#9'Detalle del~Movimiento'#9'F'#9'Movimientos Bancarios'
              'NroCheque'#9'8'#9'N'#186' de~Comprobante'#9'F'#9'Movimientos Bancarios'
              'Monto'#9'13'#9'Monto'#9'F'#9'Movimientos Bancarios'
              'Selected'#9'7'#9#191'Esta en~Resumen?'#9'F'#9'Movimientos Bancarios')
            IniAttributes.Delimiter = ';;'
            TitleColor = 16772055
            OnMultiSelectRecord = gConciliacionMultiSelectRecord
            FixedCols = 6
            ShowHorzScrollBar = True
            EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsConcilia
            EditCalculated = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter, dgFooter3DCells]
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 4
            TitleButtons = False
            UseTFields = False
            OnCalcCellColors = gConciliacionCalcCellColors
            OnDblClick = gConciliacionDblClick
            OnUpdateFooter = gConciliacionUpdateFooter
            FooterColor = 16772055
            FooterCellColor = clWhite
          end
        end
      end
    end
    object tsVencimientos: TRzTabSheet
      Color = 15528447
      ImageIndex = 104
      Caption = '&Vencimientos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      object pcInfBcos: TRzPageControl
        Left = 84
        Top = 0
        Width = 658
        Height = 517
        ActivePage = tsSaldoBcos
        ActivePageDefault = tsSaldoBcos
        Align = alClient
        BoldCurrentTab = True
        Color = 16119543
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        FlatColor = 10263441
        ParentColor = False
        ParentFont = False
        ShowCardFrame = False
        ShowFocusRect = False
        ShowFullFrame = False
        ShowShadow = False
        TabColors.HighlightBar = 1350640
        TabIndex = 0
        TabOrder = 0
        Transparent = True
        FixedDimension = 20
        object tsSaldoBcos: TRzTabSheet
          Color = 16119543
          Caption = 'Saldos Bancos'
          object gSaldosBancos: TwwDBGrid
            Left = 0
            Top = 0
            Width = 658
            Height = 497
            Selected.Strings = (
              'IdBanco'#9'5'#9'N'#186#9'F'
              'Banco'#9'30'#9'Banco'#9'F'
              'NroCta'#9'30'#9'N'#186' de Cuenta'#9'F'
              'TotalBanco'#9'20'#9'Saldo Banco'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 16119543
            FixedCols = 1
            ShowHorzScrollBar = True
            Align = alClient
            BorderStyle = bsNone
            Color = 15791348
            DataSource = dsqTotalPorBancoPorMes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnUpdateFooter = gSaldosBancosUpdateFooter
            FooterColor = 16119543
            FooterCellColor = clWhite
          end
        end
        object tsVenChqPropios: TRzTabSheet
          Color = 16119543
          Caption = 'Cheques Propios'
          object gVencimientos: TwwDBGrid
            Left = 0
            Top = 0
            Width = 658
            Height = 497
            Selected.Strings = (
              'NomBanco'#9'15'#9'Banco'#9'F'
              'DetalleMov'#9'20'#9'Detalle'#9'F'
              'DetTipoMov'#9'10'#9'Operaci'#243'n'#9'F'
              'NroCheque'#9'12'#9'Comprobante'#9'F'
              'Monto'#9'15'#9'Importe'#9'F'
              'FechaEmision'#9'8'#9'Emisi'#243'n'#9'F'
              'FechaVencimiento'#9'9'#9'Vencimiento'#9'F'
              'IdMov'#9'5'#9'N'#186#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 16119543
            FixedCols = 1
            ShowHorzScrollBar = True
            Align = alClient
            BorderStyle = bsNone
            Color = 15400959
            DataSource = dsqVencimientos
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnTitleButtonClick = gVencimientosTitleButtonClick
            OnUpdateFooter = gVencimientosUpdateFooter
            FooterColor = 16119543
            FooterCellColor = clWhite
          end
        end
        object tsEnCartera: TRzTabSheet
          Color = 16119543
          Caption = 'Cheques En Cartera'
          object gEnCartera: TwwDBGrid
            Left = 0
            Top = 0
            Width = 658
            Height = 497
            Selected.Strings = (
              'IdMov'#9'6'#9'N'#186#9'F'
              'NombreBanco'#9'12'#9'Banco'#9'F'
              'NroCuenta'#9'10'#9'Cuenta'#9'F'
              'NroCheque'#9'6'#9'N'#186' Cheque'#9'F'
              'Titular'#9'15'#9'Titular'#9'F'
              'Endoso'#9'15'#9'Endoso'#9'F'
              'Monto'#9'12'#9'Importe'#9'F'
              'FechaVencimiento'#9'9'#9'Vto'#9'F'
              'FechaEntrega'#9'9'#9'Salida'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 16119543
            FixedCols = 1
            ShowHorzScrollBar = True
            Align = alClient
            BorderStyle = bsNone
            Color = 15791348
            DataSource = dsqEnCartera
            Font.Charset = ANSI_CHARSET
            Font.Color = 21760
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnTitleButtonClick = gEnCarteraTitleButtonClick
            OnUpdateFooter = gEnCarteraUpdateFooter
            FooterColor = 16119543
            FooterCellColor = clWhite
          end
        end
      end
      object pnlVenc: TRzPanel
        Left = 0
        Top = 0
        Width = 84
        Height = 517
        Align = alLeft
        BorderOuter = fsFlat
        Color = 15791348
        GradientColorStyle = gcsCustom
        GradientColorStop = 15400959
        TabOrder = 1
        VisualStyle = vsGradient
        object lblVtoDesde: TLabel
          Left = 5
          Top = 49
          Width = 76
          Height = 26
          Caption = 'Vencimientos entre:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblBcoVtos: TLabel
          Left = 5
          Top = 135
          Width = 50
          Height = 26
          Caption = 'B&anco y  '#13#10'Cuenta:'
          FocusControl = cbBcoVenc
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object edtVtoDesde: TRzDateTimeEdit
          Left = 5
          Top = 80
          Width = 74
          Height = 21
          CaptionTodayBtn = 'Hoy'
          Date = 38651.000000000000000000
          EditType = etDate
          Format = 'dd/mm/yy'
          Color = 15791348
          FlatButtons = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FocusColor = 15528447
          FrameColor = clBlack
          FrameHotTrack = True
          FrameVisible = True
          ParentColor = True
          ParentFont = False
          TabOnEnter = True
          TabOrder = 0
        end
        object edtVtoHasta: TRzDateTimeEdit
          Left = 5
          Top = 107
          Width = 74
          Height = 21
          CaptionTodayBtn = 'Hoy'
          Date = 38651.000000000000000000
          EditType = etDate
          Format = 'dd/mm/yy'
          Color = 15791348
          FlatButtons = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FocusColor = 15528447
          FrameColor = clBlack
          FrameHotTrack = True
          FrameVisible = True
          ParentColor = True
          ParentFont = False
          TabOnEnter = True
          TabOrder = 1
        end
        object btnCalcularVtos: TRzBitBtn
          Left = 5
          Top = 195
          Width = 30
          Height = 30
          Hint = 'buscar movimientos'
          Color = 15791348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HighlightColor = 16026986
          HotTrack = True
          HotTrackColor = 3983359
          ParentFont = False
          TabOrder = 3
          OnClick = btnCalcularVtosClick
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
          Layout = blGlyphRight
          NumGlyphs = 2
        end
        object btnExportarVenc: TRzMenuButton
          Left = 5
          Top = 260
          Width = 46
          Height = 30
          Hint = 'exportar datos'
          HotTrack = True
          ParentColor = True
          PopupMenu = pmExpMovs
          TabOrder = 5
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
          DropDownMenu = pmExpMovs
        end
        object btnImprimirVenc: TRzMenuButton
          Left = 5
          Top = 227
          Width = 46
          Height = 30
          Hint = 'exportar datos'
          HotTrack = True
          ParentColor = True
          PopupMenu = pmImpMovs
          TabOrder = 4
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
          DropDownMenu = pmImpMovs
        end
        object cbBcoVenc: TRzComboBox
          Left = 5
          Top = 163
          Width = 74
          Height = 21
          Style = csDropDownList
          Color = 15791348
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FlatButtons = True
          FrameColor = clBlack
          FrameHotTrack = True
          FrameVisible = True
          ItemHeight = 13
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOnEnter = True
          TabOrder = 2
        end
      end
    end
    object tsLibro: TRzTabSheet
      Color = 16119543
      ImageIndex = 139
      Caption = 'Libro Banco'
      object pnlLibro: TRzPanel
        Left = 0
        Top = 0
        Width = 742
        Height = 35
        Align = alTop
        BorderOuter = fsFlat
        Color = 15726076
        TabOrder = 0
        object lblMes: TLabel
          Left = 303
          Top = 19
          Width = 26
          Height = 13
          Caption = '&Mes:'
          FocusControl = cbMesLib
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblAnio: TLabel
          Left = 470
          Top = 19
          Width = 25
          Height = 13
          Caption = '&A'#241'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblCualBco: TLabel
          Left = 23
          Top = 6
          Width = 47
          Height = 26
          Caption = '&Banco y '#13#10'Cuenta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object btnImpLibro: TRzBitBtn
          Left = 630
          Top = 3
          Width = 30
          Height = 30
          Hint = 'Imprimir Libro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 4
          OnClick = btnImpLibroClick
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
        object btnExpLibro: TRzBitBtn
          Left = 663
          Top = 3
          Width = 30
          Height = 30
          Hint = 'Exportar a un archivo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 5
          OnClick = btnExpLibroClick
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
        object cbMesLib: TRzComboBox
          Left = 332
          Top = 10
          Width = 132
          Height = 22
          Hint = 'mes a procesar'
          Style = csDropDownList
          CharCase = ecUpperCase
          Color = 15726076
          Ctl3D = False
          DropDownCount = 12
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          FlatButtons = True
          FrameColor = clBlack
          FrameHotTrack = True
          FrameVisible = True
          ItemHeight = 14
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOnEnter = True
          TabOrder = 1
        end
        object cbBcoLibro: TRzComboBox
          Left = 76
          Top = 10
          Width = 219
          Height = 22
          Style = csDropDownList
          Color = 15726076
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          FlatButtons = True
          FrameColor = clBlack
          FrameHotTrack = True
          FrameVisible = True
          ItemHeight = 14
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOnEnter = True
          TabOrder = 0
          OnChange = cbBcoLibroChange
        end
        object btnLibBco: TRzBitBtn
          Left = 597
          Top = 3
          Width = 30
          Height = 30
          Hint = 'Imprimir Libro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 3
          OnClick = btnLibBcoClick
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000520B0000520B00000001000000000000000000003300
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
            0000000000000000000000000000000000000000000000000000E8E8E8E8E8AA
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8AA
            A2E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
            AAA2E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8
            AAD5A2E8E8E8E8E8E8E8E8E8E8E8E8E881E381E8E8E8E8E8E8E8E8E8E8E8AAA2
            A2A2D4A2E8E8E8E8E8E8E8E8E8E881818181AC81E8E8E8E8E8E8E8E8E8E8AAD5
            D4D4D4D4A2E8E8E8E8E8E8E8E8E881E3ACACACAC81E8E8E8E8E8E8E8E8E8E8AA
            D5D4A2AAAAAAE8E8E8E8E8E8E8E8E881E3AC81818181E8E8E8E8E8E8E8E8E8AA
            D5D4D4A2E8E8E8E8E8E8E8E8E8E8E881E3ACAC81E8E8E8E8E8E8E8E8AAA2A2A2
            A2D5D4D4A2E8E8E8E8E8E8E88181818181E3ACAC81E8E8E8E8E8E8E8AAD5D5D4
            D4D4D4D4D4A2E8E8E8E8E8E881E3E3ACACACACACAC81E8E8E8E8E8E8E8AAD5D5
            D4D4A2AAAAAAE8E8E8E8E8E8E881E3E3ACAC81818181E8E8E8E8E8E8E8AAD5D5
            D5D4D4A2E8E8E8E8E8E8E8E8E881E3E3E3ACAC81E8E8E8E8E8E8E8E8E8E8AAD5
            D5D5D4D4A2E8E8E8E8E8E8E8E8E881E3E3E3ACAC81E8E8E8E8E8E8E8E8E8AAD5
            D5D5D4D4D4A2E8E8E8E8E8E8E8E881E3E3E3ACACAC81E8E8E8E8E8E8E8E8E8AA
            D5D5D5D4D4D4A2E8E8E8E8E8E8E8E881E3E3E3ACACAC81E8E8E8E8E8E8E8E8AA
            AAAAAAAAAAAAAAAAE8E8E8E8E8E8E8818181818181818181E8E8}
          NumGlyphs = 2
        end
        object edtYearLibro: TRzSpinner
          Left = 501
          Top = 10
          Height = 22
          Hint = 'a'#241'o'
          ButtonColor = clYellow
          FrameColor = clBlack
          Max = 2045
          Min = 2000
          TabOnEnter = True
          Value = 2006
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
      end
      object gLibBco: TwwDBGrid
        Left = 0
        Top = 35
        Width = 742
        Height = 482
        Selected.Strings = (
          'FechaEmision'#9'8'#9'Emisi'#243'n'#9'F'
          'TIPOMOVBCO'#9'8'#9'Tipo'#9'F'
          'NroCheque'#9'10'#9#186'Comprobante'#9'F'
          'DetalleMov'#9'18'#9'Detalle'#9'F'
          'FechaVencimiento'#9'10'#9'Vencimiento'#9'F'
          'Debe'#9'14'#9'Debe'#9'F'
          'Haber'#9'14'#9'Haber'#9'F'
          'Saldo'#9'14'#9'Saldo'#9'F'
          'FechaResumen'#9'8'#9'Resumen'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = 15726076
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        BorderStyle = bsNone
        DataSource = dsqLibroBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyOptions = [dgEnterToTab]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clMaroon
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
        OnCalcCellColors = gLibBcoCalcCellColors
        OnDblClick = gLibBcoDblClick
      end
    end
    object tsTransBank: TRzTabSheet
      Color = 16119543
      Caption = 'Transferencias'
      object gbTransRealizadas: TRzGroupBox
        Left = 0
        Top = 232
        Width = 742
        Height = 285
        Align = alClient
        Alignment = taCenter
        Caption = 'Transferencias Realizadas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStop = 8421440
        GroupStyle = gsBanner
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        object gTransRel: TwwDBGrid
          Left = 0
          Top = 22
          Width = 693
          Height = 263
          Selected.Strings = (
            'IDTBANK'#9'7'#9'N'#186#9'F'
            'FechaT'#9'12'#9'Fecha'#9'F'
            'Origen'#9'20'#9'Origen'#9'F'
            'Destino'#9'20'#9'Destino'#9'F'
            'MontoT'#9'14'#9'Monto'#9'F'
            'CantMov'#9'5'#9'CM'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = 14286809
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dsqTransRel
          KeyOptions = [dgEnterToTab]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentColor = True
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = False
          UseTFields = False
          OnDblClick = gTransRelDblClick
        end
        object pnlViewTBank: TRzPanel
          Left = 693
          Top = 22
          Width = 49
          Height = 263
          Align = alRight
          Alignment = taLeftJustify
          BorderOuter = fsFlat
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GradientColorStyle = gcsCustom
          GradientColorStop = 14286809
          GradientDirection = gdVerticalEnd
          GridColor = 15000804
          GridStyle = gsSolidLines
          ParentColor = True
          ParentFont = False
          ShowGrid = True
          TabOrder = 1
          VisualStyle = vsGradient
          object btnExportarTB: TRzBitBtn
            Left = 9
            Top = 13
            Width = 30
            Height = 30
            Hint = 'exportar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            HotTrack = True
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            OnClick = btnExportarTBClick
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
          object btnRefrescarTB: TRzBitBtn
            Left = 10
            Top = 47
            Width = 30
            Height = 30
            Hint = 'refrescar base'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            HotTrack = True
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            OnClick = btnRefrescarTBClick
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
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E85E09
              095EE8E8E8E8E8E8E8E8E8E8E8E8E28181E2E8E8E8E8E8E8E8E8E8E8E8090910
              1009E8E8E8E8E8E8E8E8E8E8E88181ACAC81E8E8E8E8E8E8E8E8E8E809101009
              095EE8E8E8E8E8E8E8E8E8E881ACAC8181E2E8E8E8E8E8E8E8E8E85E0910095E
              E8E809090909090909E8E8E281AC81E2E8E881818181818181E8E80910095EE8
              E8E809101010101009E8E881AC81E2E8E8E881ACACACACAC81E8E8091009E8E8
              E8E8E8091010101009E8E881AC81E8E8E8E8E881ACACACAC81E8E80910095EE8
              E8E8E85E0910101009E8E881AC81E2E8E8E8E8E281ACACAC81E8E85E0910095E
              E85E09091009101009E8E8E281AC81E2E8E28181AC81ACAC81E8E8E809101009
              09091010095E091009E8E8E881ACAC818181ACAC81E281AC81E8E8E8E8090910
              10100909E8E8E80909E8E8E8E88181ACACAC8181E8E8E88181E8E8E8E8E85E09
              09095EE8E8E8E8E8E8E8E8E8E8E8E2818181E2E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
            NumGlyphs = 2
          end
        end
      end
      object gbDatosTrans: TRzGroupBox
        Left = 0
        Top = 0
        Width = 742
        Height = 232
        Align = alTop
        Alignment = taCenter
        Caption = 'Datos Transferencia'
        Color = 15791348
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 16744448
        GradientColorStop = 16512
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 1
        VisualStyle = vsGradient
        object lblBcoOrg: TLabel
          Left = 51
          Top = 97
          Width = 80
          Height = 13
          Caption = 'Cuenta Origen'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMtoTran: TLabel
          Left = 51
          Top = 180
          Width = 105
          Height = 13
          Caption = 'Monto a Transferir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCtaDes: TLabel
          Left = 51
          Top = 139
          Width = 86
          Height = 13
          Caption = 'Cuenta Destino'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblFecTran: TLabel
          Left = 173
          Top = 180
          Width = 114
          Height = 13
          Caption = 'Fecha Transferencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCantTB: TDBText
          Left = 222
          Top = 96
          Width = 65
          Height = 15
          Alignment = taRightJustify
          DataField = 'CantMov'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cbCtaOrg: TwwDBLookupCombo
          Left = 50
          Top = 113
          Width = 238
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Banco'#9'15'#9'Banco'#9#9
            'NroCta'#9'10'#9'N'#186' de Cuenta'#9#9
            'IdBanco'#9'5'#9'C'#243'digo'#9#9)
          DataField = 'IdCtaOrg'
          DataSource = dsTransBank
          LookupTable = dmGestion.Bancos
          LookupField = 'IdBanco'
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          ParentColor = True
          ParentFont = False
          TabOrder = 5
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnKeyDown = cbCtaOrgKeyDown
        end
        object cbCtaDes: TwwDBLookupCombo
          Left = 51
          Top = 154
          Width = 238
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Banco'#9'15'#9'Banco'#9#9
            'NroCta'#9'10'#9'N'#186' de Cuenta'#9#9
            'IdBanco'#9'5'#9'C'#243'digo'#9#9)
          DataField = 'IdCtaDes'
          DataSource = dsTransBank
          LookupTable = dmGestion.Bancos
          LookupField = 'IdBanco'
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          ParentColor = True
          ParentFont = False
          TabOrder = 6
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnKeyDown = cbCtaOrgKeyDown
        end
        object edtMtoTran: TwwDBEdit
          Left = 51
          Top = 195
          Width = 121
          Height = 20
          BorderStyle = bsNone
          DataField = 'MontoT'
          DataSource = dsTransBank
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          ParentColor = True
          ParentFont = False
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = cbCtaOrgKeyDown
          OnKeyPress = edtMtoTranKeyPress
        end
        object edtFecTran: TwwDBDateTimePicker
          Left = 190
          Top = 195
          Width = 98
          Height = 20
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'FechaT'
          DataSource = dsTransBank
          Epoch = 1950
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          ShowButton = True
          TabOrder = 8
          OnKeyDown = cbCtaOrgKeyDown
        end
        object btnNewTran: TRzBitBtn
          Left = 51
          Top = 38
          Width = 68
          FrameColor = 7617536
          Caption = 'Agregar'
          Color = 15791348
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 0
          OnClick = btnNewTranClick
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
          Spacing = 0
        end
        object btnDelTran: TRzBitBtn
          Left = 136
          Top = 64
          Width = 68
          Caption = 'Borrar'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 4
          OnClick = btnDelTranClick
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
          Spacing = 0
        end
        object btnSaveTran: TRzBitBtn
          Left = 221
          Top = 38
          Width = 68
          Caption = 'Grabar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 2
          OnClick = btnSaveTranClick
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
        object btnImpTrans: TRzBitBtn
          Left = 51
          Top = 64
          Width = 68
          Caption = 'Imprimir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 3
          OnClick = btnImpTransClick
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
        object btnCancelTran: TRzBitBtn
          Left = 136
          Top = 38
          Width = 68
          Caption = 'Cancelar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 1
          OnClick = btnCancelTranClick
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
          Spacing = 0
        end
        object gMovTran: TwwDBGrid
          Left = 352
          Top = 22
          Width = 390
          Height = 210
          Selected.Strings = (
            'IdItem'#9'3'#9'N'#186#9'F'#9'Items'
            'FechaT'#9'8'#9'Fecha'#9'F'#9'Items'
            'Detalle'#9'25'#9'Detalle'#9'F'#9'Items'
            'Monto'#9'11'#9'Monto'#9'F'#9'Items')
          IniAttributes.Delimiter = ';;'
          TitleColor = 15527920
          FixedCols = 1
          ShowHorzScrollBar = True
          Align = alRight
          BorderStyle = bsNone
          Color = 15791348
          DataSource = dsItemsTB
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
          ParentFont = False
          TabOrder = 9
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
          OnEnter = gMovTranEnter
          OnKeyDown = gMovTranKeyDown
          OnKeyPress = gMovTranKeyPress
          OnUpdateFooter = gMovTranUpdateFooter
          FooterColor = 15527920
          FooterCellColor = 15527920
        end
      end
    end
    object tsBancos: TRzTabSheet
      Color = 16119543
      ImageIndex = 38
      Caption = '&Bancos'
      object brCantConcBco: TRzBorder
        Left = 26
        Top = 271
        Width = 166
        Height = 21
      end
      object lblNomBco: TLabel
        Left = 26
        Top = 69
        Width = 117
        Height = 13
        Caption = 'Denominaci'#243'n &Banco'
        FocusControl = edtNombre
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCtaBco: TLabel
        Left = 198
        Top = 69
        Width = 40
        Height = 13
        Caption = '&Cuenta'
        FocusControl = edtCuenta
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDirBco: TLabel
        Left = 26
        Top = 107
        Width = 52
        Height = 13
        Caption = '&Direcci'#243'n'
        FocusControl = edtDireccion
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTelBco: TLabel
        Left = 197
        Top = 107
        Width = 55
        Height = 13
        Caption = '&Tel'#233'fonos'
        FocusControl = edtTelefono
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblWebBco: TLabel
        Left = 26
        Top = 224
        Width = 48
        Height = 13
        Caption = 'e_B&anco'
        FocusControl = edtWebBanco
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblNomGte: TLabel
        Left = 26
        Top = 146
        Width = 46
        Height = 13
        Caption = '&Gerente'
        FocusControl = edtGerente
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTelGte: TLabel
        Left = 197
        Top = 146
        Width = 98
        Height = 13
        Caption = 'T&el'#233'fono Gerente'
        FocusControl = edtTelGerente
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblOfiBco: TLabel
        Left = 26
        Top = 185
        Width = 94
        Height = 13
        Caption = 'O&ficial de Cuenta'
        FocusControl = edtOficialCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTelOfi: TLabel
        Left = 197
        Top = 185
        Width = 127
        Height = 13
        Caption = 'Te&l'#233'fono Of. de Cuenta'
        FocusControl = edtTelOfic
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCantConcBco: TDBText
        Left = 103
        Top = 275
        Width = 83
        Height = 14
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'ULTIMACONCILIACION'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = 22784
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblDetEmpresa: TLabel
        Left = 197
        Top = 224
        Width = 49
        Height = 13
        Caption = 'Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object edtNombre: TwwDBEdit
        Left = 26
        Top = 84
        Width = 167
        Height = 20
        Hint = 'Nombre o Denominaci'#243'n de la Entidad Bancaria'
        AutoSize = False
        BorderStyle = bsNone
        DataField = 'Banco'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = 22784
        Font.Height = -11
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
        OnKeyDown = edtNombreKeyDown
      end
      object edtCuenta: TwwDBEdit
        Left = 197
        Top = 84
        Width = 167
        Height = 20
        Hint = 
          'N'#250'mero de la cuenta corriente. caja de ahorros o producto bancar' +
          'io'
        AutoSize = False
        BorderStyle = bsNone
        DataField = 'NroCta'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = 22784
        Font.Height = -11
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
        OnKeyDown = edtNombreKeyDown
      end
      object edtDireccion: TwwDBEdit
        Left = 26
        Top = 122
        Width = 167
        Height = 21
        Hint = 'Domicilio de la Entidad'
        AutoSize = False
        BorderStyle = bsNone
        DataField = 'DirBanco'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = 22784
        Font.Height = -11
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
        OnKeyDown = edtNombreKeyDown
      end
      object edtTelefono: TwwDBEdit
        Left = 197
        Top = 122
        Width = 167
        Height = 20
        Hint = 'Tel'#233'fonos del Banco'
        AutoSize = False
        BorderStyle = bsNone
        DataField = 'TelBanco'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = 22784
        Font.Height = -11
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
        OnKeyDown = edtNombreKeyDown
      end
      object edtWebBanco: TwwDBEdit
        Left = 26
        Top = 238
        Width = 167
        Height = 20
        Hint = 
          'N'#250'mero de la cuenta corriente. caja de ahorros o producto bancar' +
          'io'
        AutoSize = False
        BorderStyle = bsNone
        DataField = 'WebBco'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = 22784
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Frame.Enabled = True
        Frame.Transparent = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.NonFocusStyle = efsFrameSingle
        ParentColor = True
        ParentFont = False
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyDown = edtNombreKeyDown
      end
      object edtGerente: TwwDBEdit
        Left = 26
        Top = 160
        Width = 167
        Height = 20
        Hint = 'Domicilio de la Entidad'
        AutoSize = False
        BorderStyle = bsNone
        DataField = 'GerenteBco'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = 22784
        Font.Height = -11
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
        OnKeyDown = edtNombreKeyDown
      end
      object edtTelGerente: TwwDBEdit
        Left = 197
        Top = 160
        Width = 167
        Height = 20
        Hint = 
          'N'#250'mero de la cuenta corriente. caja de ahorros o producto bancar' +
          'io'
        AutoSize = False
        BorderStyle = bsNone
        DataField = 'TelGteBco'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = 22784
        Font.Height = -11
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
        OnKeyDown = edtNombreKeyDown
      end
      object edtOficialCta: TwwDBEdit
        Left = 26
        Top = 199
        Width = 167
        Height = 20
        Hint = 'Domicilio de la Entidad'
        AutoSize = False
        BorderStyle = bsNone
        DataField = 'OficialCta'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = 22784
        Font.Height = -11
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
        OnKeyDown = edtNombreKeyDown
      end
      object edtTelOfic: TwwDBEdit
        Left = 197
        Top = 199
        Width = 167
        Height = 20
        Hint = 'Domicilio de la Entidad'
        AutoSize = False
        BorderStyle = bsNone
        DataField = 'TelOficialCta'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = 22784
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Frame.Enabled = True
        Frame.Transparent = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.NonFocusStyle = efsFrameSingle
        ParentColor = True
        ParentFont = False
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyDown = edtNombreKeyDown
      end
      object pnlCodBco: TRzPanel
        Left = 26
        Top = 17
        Width = 336
        Height = 31
        Alignment = taLeftJustify
        BorderOuter = fsFlat
        Caption = '  C'#243'digo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsMSOffice
        GridColor = 15400959
        GridStyle = gsSolidLines
        ParentColor = True
        ParentFont = False
        ShowGrid = True
        TabOrder = 0
        VisualStyle = vsGradient
        object lblCodBco: TDBText
          Left = 71
          Top = 5
          Width = 62
          Height = 17
          Alignment = taRightJustify
          DataField = 'IdBanco'
          DataSource = dsBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object navBancos: TRzDBNavigator
          Left = 145
          Top = 1
          Width = 190
          Height = 29
          DataSource = dsBancos
          VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alRight
          BorderOuter = fsNone
          Color = 16119543
          TabOrder = 0
          TabStop = True
          Transparent = True
        end
      end
      object gbTMovs: TRzGroupBox
        Left = 369
        Top = 0
        Width = 373
        Height = 517
        Align = alRight
        Alignment = taCenter
        Caption = ' Operaciones definidas para Cuentas  Bancarias  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial Black'
        Font.Style = [fsUnderline]
        GradientColorStyle = gcsCustom
        GradientColorStart = clRed
        GradientColorStop = clBlack
        GroupStyle = gsBanner
        ParentColor = True
        ParentFont = False
        TabOrder = 12
        object gTMovs: TwwDBGrid
          Left = 0
          Top = 25
          Width = 373
          Height = 492
          ControlType.Strings = (
            'Suma_Resta;CustomEdit;cbSetTipoMov;F'
            'ContraMov;CustomEdit;cbContraMov;F')
          Selected.Strings = (
            'IdMovBco'#9'5'#9'C'#186#9'F'
            'TipoMovBco'#9'15'#9'Detalle~Movimiento bancario'#9'F'
            'Suma_Resta'#9'12'#9'Debe o~Haber'#9'F'
            'ContraMov'#9'12'#9'Contra~Movimiento'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = 16119543
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsTipoMovBco
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clGreen
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
        end
        object cbSetTipoMov: TwwDBComboBox
          Left = 204
          Top = 55
          Width = 66
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          DataField = 'Suma_Resta'
          DataSource = dsTipoMovBco
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'Debe'#9'1'
            'Haber'#9'-1')
          ParentColor = True
          ParentFont = False
          Sorted = False
          TabOrder = 1
          UnboundDataType = wwDefault
        end
        object cbContraMov: TwwDBLookupCombo
          Left = 276
          Top = 55
          Width = 86
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'TipoMovBco'#9'15'#9'TipoMovBco'#9'F'
            'IdMovBco'#9'5'#9'C'#243'digo'#9'F')
          DataField = 'ContraMov'
          DataSource = dsTipoMovBco
          LookupTable = qTipoMovBco
          LookupField = 'IdMovBco'
          Options = [loColLines, loRowLines, loTitles]
          ParentFont = False
          TabOrder = 2
          AutoDropDown = False
          ShowButton = True
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = False
        end
      end
      object gbChequesPreImpresos: TRzGroupBox
        Left = 26
        Top = 318
        Width = 338
        Height = 138
        Caption = 'Formularios para Cheques Pre-Impresos'
        Color = 15133420
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 11
        object brBanco: TRzBorder
          Left = 177
          Top = 40
          Width = 158
          Height = 21
        end
        object lblCantChq: TDBText
          Left = 278
          Top = 43
          Width = 52
          Height = 13
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'CantChq'
          DataSource = dsBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblImpAsigForm: TLabel
          Left = 6
          Top = 72
          Width = 115
          Height = 26
          Caption = 'Impresora Asignada al Formulario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 26112
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblVigDesde: TLabel
          Left = 7
          Top = 25
          Width = 151
          Height = 13
          Caption = 'Vigencia de N'#186' de Cheques:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtVigHasta: TwwDBEdit
          Left = 93
          Top = 40
          Width = 80
          Height = 20
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'NROCHQHASTA'
          DataSource = dsBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = 22784
          Font.Height = -11
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
          OnKeyDown = edtNombreKeyDown
        end
        object edtVigDesde: TwwDBEdit
          Left = 6
          Top = 40
          Width = 79
          Height = 20
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'NROCHQDESDE'
          DataSource = dsBancos
          Font.Charset = ANSI_CHARSET
          Font.Color = 22784
          Font.Height = -11
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
          OnKeyDown = edtNombreKeyDown
        end
        object btnModRepChk: TRzBitBtn
          Left = 215
          Top = 74
          Width = 116
          Height = 52
          FrameColor = 7617536
          Caption = 'Definici'#243'n Modelo de impresi'#243'n de cheques'
          Color = 15791348
          Font.Charset = ANSI_CHARSET
          Font.Color = 7617536
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentFont = False
          TabOrder = 3
          OnClick = btnModRepChkClick
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
        object cbPrinters: TwwDBComboBox
          Left = 6
          Top = 101
          Width = 203
          Height = 19
          ShowButton = True
          Style = csDropDown
          MapList = False
          AllowClearKey = False
          BorderStyle = bsNone
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = 22784
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          TabOrder = 2
          UnboundDataType = wwDefault
          OnChange = cbPrintersChange
        end
      end
      object cbEmpresa: TwwDBLookupCombo
        Left = 197
        Top = 238
        Width = 167
        Height = 19
        Font.Charset = ANSI_CHARSET
        Font.Color = 22784
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOMBREEMPRESA'#9'20'#9'Empresas'#9'F'
          'IDEMPRESA'#9'2'#9'N'#186#9'F')
        DataField = 'IDEMPRESA'
        DataSource = dsBancos
        LookupTable = dmGestion.Empresas
        LookupField = 'IDEMPRESA'
        Options = [loColLines, loRowLines, loTitles]
        Color = 16119543
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        Frame.Enabled = True
        Frame.Transparent = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.NonFocusStyle = efsFrameSingle
        ParentFont = False
        TabOrder = 10
        AutoDropDown = False
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnKeyDown = edtNombreKeyDown
      end
    end
  end
  object pnlBtnBco: TRzPanel
    Left = 0
    Top = 545
    Width = 742
    Height = 24
    Align = alBottom
    Alignment = taLeftJustify
    BorderOuter = fsFlatRounded
    Color = 14286828
    GridColor = 16578522
    GridStyle = gsSolidLines
    ShowGrid = True
    TabOrder = 1
    VisualStyle = vsGradient
    object btnSalir: TRzBitBtn
      Left = 597
      Top = 1
      Width = 64
      Height = 23
      Caption = '&Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
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
  object qMovTer: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IdMov, NombreBanco, NroCuenta, NroCheque, '
      '           IdTitular, Titular, IdEndoso, Endoso, IdFactura, '
      '           IdSucursal, IdPuntoVenta, IdOrdPago, NroFactura,'
      '           FechaVencimiento, FechaEntrega, '
      '           IdEntrega, Entrega, Monto, Situacion'
      'From BancoTer '
      
        'Where (FechaVencimiento between :Desde and :Hasta) And          ' +
        '                      (Situacion =:Sit_BT)'
      'Order By FechaVencimiento')
    Left = 156
    Top = 516
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
      end
      item
        DataType = ftUnknown
        Name = 'Sit_BT'
        ParamType = ptUnknown
      end>
    object qMovTerIdMov: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186
      DisplayWidth = 5
      FieldName = 'IdMov'
      Origin = '"BANCOTER"."IDMOV"'
    end
    object qMovTerNombreBanco: TStringField
      DisplayLabel = 'Entidad'
      DisplayWidth = 26
      FieldName = 'NombreBanco'
      Origin = '"BANCOTER"."NOMBREBANCO"'
      Size = 30
    end
    object qMovTerNroCuenta: TStringField
      DisplayLabel = 'Cuenta'
      DisplayWidth = 10
      FieldName = 'NroCuenta'
      Origin = '"BANCOTER"."NROCUENTA"'
      Size = 30
    end
    object qMovTerNroCheque: TIntegerField
      DisplayLabel = 'Cheque'
      DisplayWidth = 10
      FieldName = 'NroCheque'
      Origin = '"BANCOTER"."NROCHEQUE"'
    end
    object qMovTerTitular: TStringField
      DisplayWidth = 25
      FieldName = 'Titular'
      Origin = '"BANCOTER"."TITULAR"'
      Size = 30
    end
    object qMovTerEndoso: TStringField
      DisplayWidth = 25
      FieldName = 'Endoso'
      Origin = '"BANCOTER"."ENDOSO"'
      Size = 30
    end
    object qMovTerNroFactura: TStringField
      DisplayLabel = 'Factura'
      FieldName = 'NroFactura'
      Origin = '"BANCOTER"."NROFACTURA"'
      Size = 13
    end
    object qMovTerFechaVencimiento: TDateField
      DisplayLabel = 'Vencimiento'
      DisplayWidth = 10
      FieldName = 'FechaVencimiento'
      Origin = '"BANCOTER"."FECHAVENCIMIENTO"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qMovTerEntrega: TStringField
      FieldName = 'Entrega'
      Origin = '"BANCOTER"."ENTREGA"'
      Size = 30
    end
    object qMovTerFechaEntrega: TDateField
      DisplayLabel = 'Salida'
      DisplayWidth = 10
      FieldName = 'FechaEntrega'
      Origin = '"BANCOTER"."FECHAENTREGA"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qMovTerIdEntrega: TIntegerField
      FieldName = 'IdEntrega'
      Origin = '"BANCOTER"."IDENTREGA"'
      Visible = False
    end
    object qMovTerIdFactura: TIntegerField
      FieldName = 'IdFactura'
      Origin = '"BANCOTER"."IDFACTURA"'
      Visible = False
    end
    object qMovTerIdTitular: TIntegerField
      FieldName = 'IdTitular'
      Origin = '"BANCOTER"."IDTITULAR"'
      Visible = False
    end
    object qMovTerIdEndoso: TIntegerField
      FieldName = 'IdEndoso'
      Origin = '"BANCOTER"."IDENDOSO"'
      Visible = False
    end
    object qMovTerSituacion: TSmallintField
      DisplayLabel = 'Situaci'#243'n'
      DisplayWidth = 10
      FieldName = 'Situacion'
      Origin = '"BANCOTER"."SITUACION"'
      Visible = False
      OnGetText = qMovTerSituacionGetText
    end
    object qMovTerIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
      Origin = '"BANCOTER"."IDSUCURSAL"'
      Visible = False
    end
    object qMovTerIdOrdPago: TIntegerField
      FieldName = 'IdOrdPago'
      Origin = '"BANCOTER"."IDORDPAGO"'
      Visible = False
    end
    object qMovTerMONTO: TMDOBCDField
      FieldName = 'MONTO'
      Origin = '"BANCOTER"."MONTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qMovTerIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
    end
  end
  object qConcilia: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select B.IdBanco, B.IdMov, B.IdEntidad, B.TipoMov, '
      '           B.FechaEmision,  B. NroCheque, '
      '           B.FechaVencimiento, B.DetalleMov, '
      '           B.Monto, B.FechaResumen,  '
      '           B.IdNroConciliacion, T.TipoMovBco as DetTipoMov'
      'From BancoProp B'
      'Join TipoMovBco T'
      '  on T.IdMovBco = B.TipoMov'
      'Where (B.FechaResumen < :FAntes) And '
      '            (B.IdBanco = :IdBanck) And '
      '            (B.FechaVencimiento <= :FesRes)'
      'Order By B.FechaEmision'
      ''
      ' '
      ' ')
    Left = 215
    Top = 516
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FAntes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdBanck'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FesRes'
        ParamType = ptUnknown
      end>
    object qConciliaIDNROCONCILIACION: TIntegerField
      DisplayLabel = 'Conciliacion'
      FieldName = 'IDNROCONCILIACION'
      Origin = '"BANCOPROP"."IDNROCONCILIACION"'
    end
    object qConciliaFechaResumen: TDateField
      DisplayLabel = 'Fecha Resumen'
      DisplayWidth = 10
      FieldName = 'FechaResumen'
      Origin = '"BANCOPROP"."FECHARESUMEN"'
      Visible = False
    end
    object qConciliaDetTipoMov: TStringField
      DisplayLabel = 'Movimiento'
      FieldName = 'DetTipoMov'
      Origin = 'TipoMovBco.TipoMovBco'
      Size = 15
    end
    object qConciliaFechaEmision: TDateField
      DisplayLabel = 'Emisi'#243'n'
      DisplayWidth = 10
      FieldName = 'FechaEmision'
      Origin = '"BANCOPROP"."FECHAEMISION"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qConciliaFechaVencimiento: TDateField
      DisplayLabel = 'Vencimiento'
      DisplayWidth = 10
      FieldName = 'FechaVencimiento'
      Origin = '"BANCOPROP"."FECHAVENCIMIENTO"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qConciliaDetalleMov: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 25
      FieldName = 'DetalleMov'
      Origin = '"BANCOPROP"."DETALLEMOV"'
      Size = 30
    end
    object qConciliaNROCHEQUE: TIntegerField
      FieldName = 'NROCHEQUE'
      Origin = '"BANCOPROP"."NROCHEQUE"'
    end
    object qConciliaSelected: TSmallintField
      DisplayLabel = 'Incluido'
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'Selected'
      OnChange = qConciliaSelectedChange
      Calculated = True
    end
    object qConciliaTipoMov: TSmallintField
      DisplayLabel = 'Tipo de~Movimiento'
      DisplayWidth = 15
      FieldName = 'TipoMov'
      Origin = '"BANCOPROP"."TIPOMOV"'
      Visible = False
    end
    object qConciliaIdBanco: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdBanco'
      Origin = '"BANCOPROP"."IDBANCO"'
      Visible = False
    end
    object qConciliaIdMov: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdMov'
      Origin = '"BANCOPROP"."IDMOV"'
      Visible = False
    end
    object qConciliaIdEntidad: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdEntidad'
      Origin = '"BANCOPROP"."IDENTIDAD"'
      Visible = False
    end
    object qConciliaMONTO: TMDOBCDField
      DisplayLabel = 'Monto'
      DisplayWidth = 10
      FieldName = 'MONTO'
      Origin = '"BANCOPROP"."MONTO"'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object qLibroBancos: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select *'
      'From BANCOS_MOVIMIENTOS_PROPIOS (:IdCta, :Desde, :Hasta, :CualV)'
      ''
      ' '
      ' ')
    Left = 514
    Top = 516
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IdCta'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'CualV'
        ParamType = ptInput
      end>
  end
  object qMovProp: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select *'
      'From BANCOS_MOVIMIENTOS_PROPIOS(:IdCta, :Desde, :Hasta, :CualV)')
    Left = 156
    Top = 458
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdCta'
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
      end
      item
        DataType = ftUnknown
        Name = 'CualV'
        ParamType = ptUnknown
      end>
    object qMovPropIDMOV: TIntegerField
      FieldName = 'IDMOV'
      Origin = '"BANCOS_MOVIMIENTOS_PROPIOS"."IDMOV"'
    end
    object qMovPropFECHAEMISION: TDateField
      FieldName = 'FECHAEMISION'
      Origin = '"BANCOS_MOVIMIENTOS_PROPIOS"."FECHAEMISION"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qMovPropNROCHEQUE: TIntegerField
      FieldName = 'NROCHEQUE'
      Origin = '"BANCOS_MOVIMIENTOS_PROPIOS"."NROCHEQUE"'
    end
    object qMovPropFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
      Origin = '"BANCOS_MOVIMIENTOS_PROPIOS"."FECHAVENCIMIENTO"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qMovPropDETALLEMOV: TMDOStringField
      FieldName = 'DETALLEMOV'
      Origin = '"BANCOS_MOVIMIENTOS_PROPIOS"."DETALLEMOV"'
      Size = 30
    end
    object qMovPropDEBE: TMDOBCDField
      DisplayWidth = 12
      FieldName = 'DEBE'
      Origin = '"BANCOS_MOVIMIENTOS_PROPIOS"."DEBE"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qMovPropHABER: TMDOBCDField
      DisplayWidth = 12
      FieldName = 'HABER'
      Origin = '"BANCOS_MOVIMIENTOS_PROPIOS"."HABER"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qMovPropFECHARESUMEN: TDateField
      FieldName = 'FECHARESUMEN'
      Origin = '"BANCOS_MOVIMIENTOS_PROPIOS"."FECHARESUMEN"'
      OnGetText = qMovPropFECHARESUMENGetText
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qMovPropTIPOMOVBCO: TMDOStringField
      FieldName = 'TIPOMOVBCO'
      Origin = '"BANCOS_MOVIMIENTOS_PROPIOS"."TIPOMOVBCO"'
      Size = 15
    end
    object qMovPropSALDO: TMDOBCDField
      DisplayWidth = 12
      FieldName = 'SALDO'
      Origin = '"BANCOS_MOVIMIENTOS_PROPIOS"."SALDO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qMovPropSUMA_O_RESTA: TSmallintField
      FieldName = 'SUMA_O_RESTA'
      Origin = '"BANCOS_MOVIMIENTOS_PROPIOS"."SUMA_O_RESTA"'
    end
    object qMovPropTIPOMOV: TSmallintField
      FieldName = 'TIPOMOV'
      Origin = '"BANCOS_MOVIMIENTOS_PROPIOS"."TIPOMOV"'
    end
  end
  object qVencimientos: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      
        'Select B.IdBanco, B.IdMov, B.IdEntidad, B.TipoMov, B.FechaEmisio' +
        'n,'
      
        '           B. NroCheque, B.FechaVencimiento, B.DetalleMov, B.Mon' +
        'to, '
      '           T.TipoMovBco as DetTipoMov, E.Banco as NomBanco, '
      '           E.NroCta as NumCuenta'
      'From BancoProp B'
      'Join TipoMovBco T'
      '  on T.IdMovBco = B.TipoMov'
      'Join Bancos E'
      '  on E.IdBanco = B.IdBanco'
      
        'Where (B.FechaVencimiento between :Desde and :Hasta) and        ' +
        '                      (B.FechaResumen < :Antes)'
      'Order By B.IdBanco, B.FechaVencimiento'
      ' ')
    Left = 394
    Top = 516
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
      end
      item
        DataType = ftUnknown
        Name = 'Antes'
        ParamType = ptUnknown
      end>
    object qVencimientosIdBanco: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Bco'
      DisplayWidth = 3
      FieldName = 'IdBanco'
      Origin = '"BANCOPROP"."IDBANCO"'
    end
    object qVencimientosIdMov: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186
      DisplayWidth = 5
      FieldName = 'IdMov'
      Origin = '"BANCOPROP"."IDMOV"'
    end
    object qVencimientosIdEntidad: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'IdEntidad'
      Origin = '"BANCOPROP"."IDENTIDAD"'
    end
    object qVencimientosDetTipoMov: TStringField
      DisplayLabel = 'Movimiento'
      FieldName = 'DetTipoMov'
      Size = 15
    end
    object qVencimientosFechaEmision: TDateField
      Alignment = taCenter
      DisplayLabel = 'Emisi'#243'n'
      DisplayWidth = 10
      FieldName = 'FechaEmision'
      Origin = '"BANCOPROP"."FECHAEMISION"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qVencimientosFechaVencimiento: TDateField
      Alignment = taCenter
      DisplayLabel = 'Vencimiento'
      DisplayWidth = 10
      FieldName = 'FechaVencimiento'
      Origin = '"BANCOPROP"."FECHAVENCIMIENTO"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qVencimientosDetalleMov: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 30
      FieldName = 'DetalleMov'
      Origin = '"BANCOPROP"."DETALLEMOV"'
      Size = 30
    end
    object qVencimientosNomBanco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'NomBanco'
    end
    object qVencimientosNumCuenta: TStringField
      DisplayLabel = 'Cuenta'
      FieldName = 'NumCuenta'
    end
    object qVencimientosTipoMov: TSmallintField
      DisplayWidth = 10
      FieldName = 'TipoMov'
      Origin = '"BANCOPROP"."TIPOMOV"'
      Visible = False
    end
    object qVencimientosMONTO: TMDOBCDField
      FieldName = 'MONTO'
      Origin = '"BANCOPROP"."MONTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qVencimientosNROCHEQUE: TIntegerField
      FieldName = 'NROCHEQUE'
      Origin = '"BANCOPROP"."NROCHEQUE"'
    end
  end
  object qEnCartera: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IdMov, NombreBanco, NroCuenta, NroCheque, '
      '          IdTitular,  Titular, IdEndoso, Endoso, IdFactura,'
      '          IdSucursal, IdPuntoVenta, IdOrdPago, NroFactura, '
      '          FechaVencimiento, FechaEntrega, IdEntrega, '
      '          Entrega, Monto, Situacion'
      'From BancoTer '
      'Where (FechaVencimiento between :Desde and :Hasta) And '
      '            (Situacion = 0)'
      'Order By FechaVencimiento'
      ''
      ' '
      ' ')
    Left = 454
    Top = 516
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
    object qEnCarteraIdMov: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186
      DisplayWidth = 10
      FieldName = 'IdMov'
      Origin = '"BANCOTER"."IDMOV"'
    end
    object qEnCarteraNombreBanco: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 30
      FieldName = 'NombreBanco'
      Origin = '"BANCOTER"."NOMBREBANCO"'
      Size = 30
    end
    object qEnCarteraNroCuenta: TStringField
      DisplayLabel = 'Cuenta'
      DisplayWidth = 30
      FieldName = 'NroCuenta'
      Origin = '"BANCOTER"."NROCUENTA"'
      Size = 30
    end
    object qEnCarteraNroCheque: TIntegerField
      DisplayLabel = 'Comprobante'
      DisplayWidth = 10
      FieldName = 'NroCheque'
      Origin = '"BANCOTER"."NROCHEQUE"'
    end
    object qEnCarteraTitular: TStringField
      DisplayWidth = 30
      FieldName = 'Titular'
      Origin = '"BANCOTER"."TITULAR"'
      Size = 30
    end
    object qEnCarteraEndoso: TStringField
      DisplayWidth = 30
      FieldName = 'Endoso'
      Origin = '"BANCOTER"."ENDOSO"'
      Size = 30
    end
    object qEnCarteraNroFactura: TStringField
      DisplayLabel = 'N'#186' Factura'
      DisplayWidth = 13
      FieldName = 'NroFactura'
      Origin = '"BANCOTER"."NROFACTURA"'
      Size = 13
    end
    object qEnCarteraFechaVencimiento: TDateField
      Alignment = taCenter
      DisplayLabel = 'Vencimiento'
      DisplayWidth = 10
      FieldName = 'FechaVencimiento'
      Origin = '"BANCOTER"."FECHAVENCIMIENTO"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qEnCarteraFechaEntrega: TDateField
      Alignment = taCenter
      DisplayWidth = 10
      FieldName = 'FechaEntrega'
      Origin = '"BANCOTER"."FECHAENTREGA"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qEnCarteraEntrega: TStringField
      DisplayWidth = 30
      FieldName = 'Entrega'
      Origin = '"BANCOTER"."ENTREGA"'
      Size = 30
    end
    object qEnCarteraSituacion: TSmallintField
      DisplayWidth = 10
      FieldName = 'Situacion'
      Origin = '"BANCOTER"."SITUACION"'
    end
    object qEnCarteraIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
      Origin = '"BANCOTER"."IDSUCURSAL"'
      Visible = False
    end
    object qEnCarteraIdFactura: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdFactura'
      Origin = '"BANCOTER"."IDFACTURA"'
      Visible = False
    end
    object qEnCarteraIdEntrega: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdEntrega'
      Origin = '"BANCOTER"."IDENTREGA"'
      Visible = False
    end
    object qEnCarteraIdTitular: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdTitular'
      Origin = '"BANCOTER"."IDTITULAR"'
      Visible = False
    end
    object qEnCarteraIdEndoso: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdEndoso'
      Origin = '"BANCOTER"."IDENDOSO"'
      Visible = False
    end
    object qEnCarteraIdOrdPago: TIntegerField
      FieldName = 'IdOrdPago'
      Origin = '"BANCOTER"."IDORDPAGO"'
      Visible = False
    end
    object qEnCarteraMONTO: TMDOBCDField
      FieldName = 'MONTO'
      Origin = '"BANCOTER"."MONTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qEnCarteraIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
    end
  end
  object qTotalPorBancoPorMes: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select P.IdBanco, B.Banco, B.NroCta,'
      '       Sum(P.Monto) as TotalBanco'
      'From BancoProp P'
      'Join Bancos B'
      '  on B.IdBanco = P.IdBanco'
      'Where (P.FechaVencimiento between :Desde and :Hasta) and '
      '            (P.FechaResumen < :Antes)'
      'Group By P.IdBanco, B.Banco, B.NroCta'
      ' ')
    Left = 425
    Top = 516
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
      end
      item
        DataType = ftUnknown
        Name = 'Antes'
        ParamType = ptUnknown
      end>
    object qTotalPorBancoPorMesIdBanco: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Banco'
      DisplayWidth = 6
      FieldName = 'IdBanco'
      Origin = 'DBGESTION."BancoProp".IdBanco'
    end
    object qTotalPorBancoPorMesBanco: TStringField
      FieldName = 'Banco'
      Size = 30
    end
    object qTotalPorBancoPorMesNroCta: TStringField
      FieldName = 'NroCta'
      Size = 30
    end
    object qTotalPorBancoPorMesTOTALBANCO: TMDOBCDField
      FieldName = 'TOTALBANCO'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object dsMovTer: TDataSource
    DataSet = qMovTer
    Left = 156
    Top = 488
  end
  object dsConcilia: TDataSource
    DataSet = qConcilia
    Left = 216
    Top = 488
  end
  object dsMovProp: TDataSource
    DataSet = qMovProp
    Left = 156
    Top = 430
  end
  object dsqVencimientos: TDataSource
    DataSet = qVencimientos
    Left = 395
    Top = 488
  end
  object dsqEnCartera: TDataSource
    DataSet = qEnCartera
    Left = 454
    Top = 488
  end
  object dsqTotalPorBancoPorMes: TDataSource
    DataSet = qTotalPorBancoPorMes
    Left = 425
    Top = 488
  end
  object dsTipoMovBco: TDataSource
    DataSet = dmGestion.TipoMovBco
    Left = 187
    Top = 515
  end
  object pmExpMovs: TPopupMenu
    Left = 365
    Top = 489
    object SaldosBcos: TMenuItem
      Caption = 'Saldos'
      OnClick = SaldosBcosClick
    end
    object MovimientosPropios: TMenuItem
      Caption = 'Movimientos propios'
      OnClick = MovimientosPropiosClick
    end
    object ChequesEnCartera: TMenuItem
      Caption = 'Cheques en cartera'
      OnClick = ChequesEnCarteraClick
    end
  end
  object qConcR: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select B.Banco, B.NroCta, C.IDCONCILIACION, C.IDBANCO, '
      '           C.FECHA_CONC, C.CANT_MOV, C.SSBANCO, C.DIF_CONC, '
      '           C.OBSERVACION'
      'From Bancos_Conc C'
      'Join Bancos B'
      '  on B.IdBanco = C.IdBanco       '
      'Order By C.FECHA_CONC desc')
    Left = 335
    Top = 516
    object qConcRBANCO: TMDOStringField
      FieldName = 'BANCO'
      Origin = '"BANCOS"."BANCO"'
      Size = 30
    end
    object qConcRNROCTA: TMDOStringField
      FieldName = 'NROCTA'
      Origin = '"BANCOS"."NROCTA"'
      Size = 30
    end
    object qConcRIDCONCILIACION: TIntegerField
      Alignment = taCenter
      FieldName = 'IDCONCILIACION'
      Origin = '"BANCOS_CONC"."IDCONCILIACION"'
      Required = True
    end
    object qConcRIDBANCO: TIntegerField
      FieldName = 'IDBANCO'
      Origin = '"BANCOS_CONC"."IDBANCO"'
      Required = True
    end
    object qConcRFECHA_CONC: TDateField
      Alignment = taCenter
      FieldName = 'FECHA_CONC'
      Origin = '"BANCOS_CONC"."FECHA_CONC"'
      Required = True
      DisplayFormat = 'dd/mm/yy'
    end
    object qConcRCANT_MOV: TIntegerField
      Alignment = taCenter
      FieldName = 'CANT_MOV'
      Origin = '"BANCOS_CONC"."CANT_MOV"'
    end
    object qConcRSSBANCO: TMDOBCDField
      FieldName = 'SSBANCO'
      Origin = '"BANCOS_CONC"."SSBANCO"'
      EditFormat = '0.00;-0.00'
      currency = True
      Precision = 18
      Size = 4
    end
    object qConcRDIF_CONC: TMDOBCDField
      FieldName = 'DIF_CONC'
      Origin = '"BANCOS_CONC"."DIF_CONC"'
      EditFormat = '0.00;-0.00'
      currency = True
      Precision = 18
      Size = 4
    end
    object qConcROBSERVACION: TMDOStringField
      FieldName = 'OBSERVACION'
      Origin = '"BANCOS_CONC"."OBSERVACION"'
      Size = 100
    end
  end
  object dsqConcR: TDataSource
    DataSet = qConcR
    Left = 335
    Top = 488
  end
  object dsqLibroBancos: TDataSource
    DataSet = cdsLibBco
    Left = 544
    Top = 488
  end
  object cdsLibBco: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IdCta'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'CualV'
        ParamType = ptInput
      end>
    ProviderName = 'dspLibBco'
    Left = 543
    Top = 516
    object cdsLibBcoIDMOV: TIntegerField
      DisplayLabel = 'N'#186
      FieldName = 'IDMOV'
      Origin = '"MOV_BCOPROP"."IDMOV"'
    end
    object cdsLibBcoFECHAEMISION: TDateField
      Alignment = taCenter
      DisplayLabel = 'Emision'
      FieldName = 'FECHAEMISION'
      Origin = '"MOV_BCOPROP"."FECHAEMISION"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object cdsLibBcoTIPOMOVBCO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPOMOVBCO'
      Origin = '"MOV_BCOPROP"."TIPOMOVBCO"'
      Size = 15
    end
    object cdsLibBcoNROCHEQUE: TIntegerField
      DisplayLabel = 'Comprobante'
      FieldName = 'NROCHEQUE'
      Origin = '"MOV_BCOPROP"."NROCHEQUE"'
    end
    object cdsLibBcoFECHAVENCIMIENTO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Vto'
      FieldName = 'FECHAVENCIMIENTO'
      Origin = '"MOV_BCOPROP"."FECHAVENCIMIENTO"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object cdsLibBcoDETALLEMOV: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLEMOV'
      Origin = '"MOV_BCOPROP"."DETALLEMOV"'
      Size = 30
    end
    object cdsLibBcoDEBE: TBCDField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = '"MOV_BCOPROP"."DEBE"'
      currency = True
      Precision = 18
    end
    object cdsLibBcoHABER: TBCDField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = '"MOV_BCOPROP"."HABER"'
      currency = True
      Precision = 18
    end
    object cdsLibBcoSALDO: TBCDField
      DisplayLabel = 'Saldo'
      DisplayWidth = 13
      FieldName = 'SALDO'
      Origin = '"MOV_BCOPROP"."SALDO"'
      DisplayFormat = '0.00;-0.00'
      EditFormat = '0.00;-0.00'
      currency = True
      Precision = 18
    end
    object cdsLibBcoFECHARESUMEN: TDateField
      Alignment = taCenter
      DisplayLabel = 'Resumen'
      FieldName = 'FECHARESUMEN'
      Origin = '"MOV_BCOPROP"."FECHARESUMEN"'
      OnGetText = cdsLibBcoFECHARESUMENGetText
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object cdsLibBcoSUMA_O_RESTA: TSmallintField
      FieldName = 'SUMA_O_RESTA'
      Origin = '"MOV_BCOPROP"."SUMA_O_RESTA"'
      Visible = False
    end
    object cdsLibBcoTIPOMOV: TSmallintField
      FieldName = 'TIPOMOV'
      Origin = '"MOV_BCOPROP"."TIPOMOV"'
      Visible = False
    end
  end
  object dspLibBco: TDataSetProvider
    DataSet = qLibroBancos
    ResolveToDataSet = True
    Options = [poIncFieldProps, poUseQuoteChar]
    Left = 514
    Top = 488
  end
  object rptLibBco: TppReport
    AutoStop = False
    DataPipeline = dbpLibBco
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Libro Bancos'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 13970
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 13970
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    Icon.Data = {
      0000010001002020100000000000E80200001600000028000000200000004000
      0000010004000000000080020000000000000000000000000000000000000000
      000000008000008000000080800080000000800080008080000080808000C0C0
      C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
      000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFF00000000
      F00000000000000000000000F0000000F00000000000000000000000F0000000
      F00000000000000000000000F0000000F00000000000000000000000F0000000
      F00000000000000000000000F0000000FFFFFFFFFFFFFFFFFFFFFFFFF000000F
      0000000000000000000000000F0000F00000000000000000000000000F0000F0
      0000000000000000000000000F0000F00000000000000000000000000F0000F0
      0000000000000000000000000F0000F00000000000000000000000000F0000F0
      0000000000000000000000000F0000F00000000000000000000FFFF00F0000F0
      0000000000000000000000000F0000F00000000000000000000000000F0000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000F0000000000000F0000000000000
      0000F0000000000000F000000000000000000F00FFFFFFFFF00F000000000000
      00000F0000000000000F000000000000000000F00FFFFFFFFF00F00000000000
      000000F0000000000000F000000000000000000F00FFFFFFFFF00F0000000000
      0000000F0000000000000F000000000000000000F00FFFFFFFFF00F000000000
      00000000F0000000000000F000000000000000000F0000000000000F00000000
      000000000FFFFFFFFFFFFFFF000000000000000000000000000000000000FFFF
      FFFFF800000FF0000007F0000007F0000007F0000007F0000007F0000007E000
      0003C0000003C0000003C0000003C0000003C0000003C0000003C0000003C000
      0003C0000003C0000003FF0001FFFF0001FFFF8000FFFF8000FFFFC0007FFFC0
      007FFFE0003FFFE0003FFFF0001FFFF0001FFFF8000FFFF8000FFFFFFFFF}
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 573
    Top = 488
    Version = '10.02'
    mmColumnWidth = 197300
    DataPipelineName = 'dbpLibBco'
    object hbBanco: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object shpTitBco: TppShape
        UserName = 'shpTitBco'
        Brush.Color = 16119285
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 16933
        mmLeft = 0
        mmTop = 0
        mmWidth = 189680
        BandType = 0
      end
      object lblTitulo: TppLabel
        UserName = 'lblTitulo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTitulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 95219
        mmTop = 794
        mmWidth = 12234
        BandType = 0
      end
      object lblPeriodo: TppLabel
        UserName = 'lblTitulo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4763
        mmTop = 6350
        mmWidth = 11642
        BandType = 0
      end
      object lblPagina: TppSystemVariable
        UserName = 'lblPagina'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 165396
        mmTop = 6350
        mmWidth = 21294
        BandType = 0
      end
      object lblFEmision: TppLabel
        UserName = 'lblFEmision'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Emisi'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 4498
        mmTop = 12700
        mmWidth = 9525
        BandType = 0
      end
      object lblTyNro: TppLabel
        UserName = 'lblFEmision1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo y N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 22754
        mmTop = 12700
        mmWidth = 18521
        BandType = 0
      end
      object lblDetMov: TppLabel
        UserName = 'lblFEmision2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Detalle Movimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 49742
        mmTop = 12700
        mmWidth = 23813
        BandType = 0
      end
      object lblVenMov: TppLabel
        UserName = 'lblFEmision3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vencimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 90488
        mmTop = 12700
        mmWidth = 15198
        BandType = 0
      end
      object lblDebeLB: TppLabel
        UserName = 'lblFEmision4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Debe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 119327
        mmTop = 12700
        mmWidth = 6435
        BandType = 0
      end
      object lblHaberLB: TppLabel
        UserName = 'lblFEmision5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Haber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 139700
        mmTop = 12700
        mmWidth = 7451
        BandType = 0
      end
      object lblSaldoB: TppLabel
        UserName = 'lblFEmision6'
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
        mmLeft = 164307
        mmTop = 12700
        mmWidth = 6773
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'lblFEmision7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Conciliaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 174361
        mmTop = 12700
        mmWidth = 14520
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1058
        mmTop = 11642
        mmWidth = 188119
        BandType = 0
      end
    end
    object dbLineaBco: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object lblEmision: TppDBText
        UserName = 'lblEmision'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaEmision'
        DataPipeline = dbpLibBco
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpLibBco'
        mmHeight = 3429
        mmLeft = 529
        mmTop = 264
        mmWidth = 13758
        BandType = 4
      end
      object lblNroComp: TppDBText
        UserName = 'lblEmision1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NroCheque'
        DataPipeline = dbpLibBco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpLibBco'
        mmHeight = 3429
        mmLeft = 30956
        mmTop = 264
        mmWidth = 15610
        BandType = 4
      end
      object lblDetalle: TppDBText
        UserName = 'lblDetalle'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DetalleMov'
        DataPipeline = dbpLibBco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpLibBco'
        mmHeight = 3440
        mmLeft = 48419
        mmTop = 264
        mmWidth = 42598
        BandType = 4
      end
      object lblTMov: TppDBText
        UserName = 'lblTMov'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TIPOMOVBCO'
        DataPipeline = dbpLibBco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpLibBco'
        mmHeight = 3440
        mmLeft = 15610
        mmTop = 264
        mmWidth = 14023
        BandType = 4
      end
      object lblDebe: TppDBText
        UserName = 'lblDebe'
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Debe'
        DataPipeline = dbpLibBco
        DisplayFormat = '$ 0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLibBco'
        mmHeight = 3440
        mmLeft = 108479
        mmTop = 265
        mmWidth = 17992
        BandType = 4
      end
      object lblHaber: TppDBText
        UserName = 'lblHaber'
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Haber'
        DataPipeline = dbpLibBco
        DisplayFormat = '$ 0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLibBco'
        mmHeight = 3440
        mmLeft = 130440
        mmTop = 265
        mmWidth = 17992
        BandType = 4
      end
      object lblSaldoA: TppDBText
        UserName = 'lblSaldoA'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Saldo'
        DataPipeline = dbpLibBco
        DisplayFormat = '$ 0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLibBco'
        mmHeight = 3440
        mmLeft = 151871
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
      object lblFVenc: TppDBText
        UserName = 'lblEmision2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaVencimiento'
        DataPipeline = dbpLibBco
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpLibBco'
        mmHeight = 3440
        mmLeft = 92075
        mmTop = 265
        mmWidth = 13758
        BandType = 4
      end
      object lblFConc: TppDBText
        UserName = 'lblFConc'
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaResumen'
        DataPipeline = dbpLibBco
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpLibBco'
        mmHeight = 3440
        mmLeft = 175419
        mmTop = 265
        mmWidth = 13758
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'lnBco1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 106363
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'lnBco2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 127529
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'lnBco3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 148961
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'lnBco4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 172773
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
    end
    object fbBanco: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
      object shpPieBco: TppShape
        UserName = 'shpPieBco'
        Brush.Color = 16119285
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 189680
        BandType = 8
      end
    end
  end
  object dbpLibBco: TppDBPipeline
    DataSource = dsqLibroBancos
    UserName = 'dbpLibBco'
    Left = 573
    Top = 516
  end
  object pmImpMovs: TPopupMenu
    Left = 365
    Top = 517
    object ImpSaldos: TMenuItem
      Caption = 'Saldos'
      OnClick = ImpSaldosClick
    end
    object ImpVencProp: TMenuItem
      Caption = 'Movimientos propios'
      OnClick = ImpVencPropClick
    end
    object ImpSaldoChq3: TMenuItem
      Caption = 'Cheques en cartera'
      OnClick = ImpSaldoChq3Click
    end
  end
  object qTipoMovBco: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IDMOVBCO, TIPOMOVBCO, '
      '           SUMA_RESTA, CONTRAMOV'
      'From TipoMovBco')
    Left = 126
    Top = 516
    object qTipoMovBcoTipoMovBco: TStringField
      FieldName = 'TipoMovBco'
      Origin = '"TIPOMOVBCO"."TIPOMOVBCO"'
      Size = 15
    end
    object qTipoMovBcoSUMA_RESTA: TSmallintField
      FieldName = 'SUMA_RESTA'
      Origin = '"TIPOMOVBCO"."SUMA_RESTA"'
    end
    object qTipoMovBcoCONTRAMOV: TIntegerField
      FieldName = 'CONTRAMOV'
      Origin = '"TIPOMOVBCO"."CONTRAMOV"'
    end
    object qTipoMovBcoIDMOVBCO: TIntegerField
      FieldName = 'IDMOVBCO'
      Origin = '"TIPOMOVBCO"."IDMOVBCO"'
      Required = True
    end
  end
  object dsqTipoMovBco: TDataSource
    DataSet = qTipoMovBco
    Left = 127
    Top = 488
  end
  object rpConciliacion: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
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
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 305
    Top = 458
    Version = '10.02'
    mmColumnWidth = 0
    object hbConciliacion: TppHeaderBand
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 16140
      mmPrintPosition = 0
      object shConciliacion: TppShape
        UserName = 'shConciliacion'
        Brush.Color = 16053492
        ParentHeight = True
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 16140
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 0
      end
      object lblTituloConc: TppLabel
        UserName = 'lblTituloConc'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Conciliaci'#243'n Bancaria al '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4318
        mmLeft = 5027
        mmTop = 3704
        mmWidth = 43434
        BandType = 0
      end
      object lblSaldoBco: TppLabel
        UserName = 'lblTituloConc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Saldo Segun Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4318
        mmLeft = 5027
        mmTop = 9525
        mmWidth = 34036
        BandType = 0
      end
    end
    object dbConciliacion: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object srIncluidos: TppSubReport
        UserName = 'srIncluidos'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'dbpIncluidos'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 265
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object chrIncluidos: TppChildReport
          AutoStop = False
          DataPipeline = dbpIncluidos
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Conciliaci'#243'n'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 8890
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 8890
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '10.02'
          mmColumnWidth = 197300
          DataPipelineName = 'dbpIncluidos'
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object lblDetTMI: TppDBText
              UserName = 'lblDetTMI'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DetTipoMov'
              DataPipeline = dbpIncluidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpIncluidos'
              mmHeight = 4233
              mmLeft = 794
              mmTop = 0
              mmWidth = 24342
              BandType = 4
            end
            object lblFEmisionI: TppDBText
              UserName = 'lblDetTM1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FechaEmision'
              DataPipeline = dbpIncluidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpIncluidos'
              mmHeight = 4233
              mmLeft = 26723
              mmTop = 0
              mmWidth = 24342
              BandType = 4
            end
            object lblNroChqI: TppDBText
              UserName = 'lblNroChqI'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NroCheque'
              DataPipeline = dbpIncluidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpIncluidos'
              mmHeight = 4233
              mmLeft = 52388
              mmTop = 0
              mmWidth = 21960
              BandType = 4
            end
            object lblDetMovI: TppDBText
              UserName = 'lblDetMovI'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DetalleMov'
              DataPipeline = dbpIncluidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpIncluidos'
              mmHeight = 4233
              mmLeft = 76465
              mmTop = 0
              mmWidth = 59531
              BandType = 4
            end
            object lblMontoI: TppDBText
              UserName = 'lblMontoI'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Monto'
              DataPipeline = dbpIncluidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpIncluidos'
              mmHeight = 4233
              mmLeft = 138907
              mmTop = 0
              mmWidth = 27517
              BandType = 4
            end
            object lblFecVenI: TppDBText
              UserName = 'lblDetTM2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FechaVencimiento'
              DataPipeline = dbpIncluidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpIncluidos'
              mmHeight = 4233
              mmLeft = 174625
              mmTop = 0
              mmWidth = 19050
              BandType = 4
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'TipoMov'
            DataPipeline = dbpIncluidos
            KeepTogether = True
            OutlineSettings.CreateNode = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbpIncluidos'
            object ppGroupHeaderBand1: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 14817
              mmPrintPosition = 0
              object shTitInc: TppShape
                UserName = 'shTitInc'
                Brush.Color = 15138815
                Shape = stRoundRect
                mmHeight = 14288
                mmLeft = 265
                mmTop = 265
                mmWidth = 194205
                BandType = 3
                GroupNo = 0
              end
              object lblTMovInc: TppLabel
                UserName = 'lblTMovInc'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Tipo Operaci'#243'n'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 1323
                mmTop = 9790
                mmWidth = 19844
                BandType = 3
                GroupNo = 0
              end
              object lblFEmisInc: TppLabel
                UserName = 'lblTMovInc1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Emisi'#243'n'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 27517
                mmTop = 9790
                mmWidth = 9790
                BandType = 3
                GroupNo = 0
              end
              object lblNroMovInc: TppLabel
                UserName = 'lblTMovInc2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'N'#186' de Operaci'#243'n'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 52652
                mmTop = 9790
                mmWidth = 21167
                BandType = 3
                GroupNo = 0
              end
              object lblDetMovInc: TppLabel
                UserName = 'lblTMovInc3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Detalle Operaci'#243'n'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 95515
                mmTop = 9790
                mmWidth = 22754
                BandType = 3
                GroupNo = 0
              end
              object lblMtoInc: TppLabel
                UserName = 'lblTMovInc4'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Monto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 156634
                mmTop = 9790
                mmWidth = 8467
                BandType = 3
                GroupNo = 0
              end
              object lblFecVenInc: TppLabel
                UserName = 'lblTMovInc5'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Vencimiento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 174361
                mmTop = 9790
                mmWidth = 15071
                BandType = 3
                GroupNo = 0
              end
              object lblTitMovInc: TppLabel
                UserName = 'lblTitMovInc'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'MOVIMIENTOS ACREDITADOS POR EL BANCO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4233
                mmLeft = 1323
                mmTop = 2381
                mmWidth = 75142
                BandType = 3
                GroupNo = 0
              end
              object ppDBText1: TppDBText
                UserName = 'lblDetalleMovNoInc1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DetTipoMov'
                DataPipeline = dbpIncluidos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = [fsBold, fsUnderline]
                Transparent = True
                DataPipelineName = 'dbpIncluidos'
                mmHeight = 3969
                mmLeft = 89694
                mmTop = 2646
                mmWidth = 17198
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 11642
              mmPrintPosition = 0
              object shMovInc: TppShape
                UserName = 'shMovInc'
                Brush.Color = 15925234
                Shape = stRoundRect
                mmHeight = 11642
                mmLeft = 0
                mmTop = 0
                mmWidth = 194734
                BandType = 5
                GroupNo = 0
              end
              object lblTotMovInc: TppDBCalc
                UserName = 'lblTotMovInc'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'Monto'
                DataPipeline = dbpIncluidos
                DisplayFormat = '$ 0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbpIncluidos'
                mmHeight = 3895
                mmLeft = 139965
                mmTop = 6350
                mmWidth = 26194
                BandType = 5
                GroupNo = 0
              end
              object lblCantMovInc: TppDBCalc
                UserName = 'lblCantMovInc'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TipoMov'
                DataPipeline = dbpIncluidos
                DisplayFormat = 'Cantidad de movimientos: 0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'dbpIncluidos'
                mmHeight = 3895
                mmLeft = 1588
                mmTop = 6350
                mmWidth = 74613
                BandType = 5
                GroupNo = 0
              end
              object lblDetalleMovInc: TppDBText
                UserName = 'lblDetalleMovInc'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DetTipoMov'
                DataPipeline = dbpIncluidos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = [fsBold, fsUnderline]
                Transparent = True
                DataPipelineName = 'dbpIncluidos'
                mmHeight = 3895
                mmLeft = 1852
                mmTop = 1058
                mmWidth = 17198
                BandType = 5
                GroupNo = 0
              end
            end
          end
        end
      end
      object srNoIncluidos: TppSubReport
        UserName = 'srNoIncluidos'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = srIncluidos
        TraverseAllData = False
        DataPipelineName = 'dbpNoIncluidos'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 5556
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object chrNoIncluidos: TppChildReport
          AutoStop = False
          DataPipeline = dbpNoIncluidos
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Conciliaci'#243'n'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 8890
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 8890
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '10.02'
          mmColumnWidth = 197300
          DataPipelineName = 'dbpNoIncluidos'
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object lblDMovNI: TppDBText
              UserName = 'lblDetTMI'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DetTipoMov'
              DataPipeline = dbpNoIncluidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpNoIncluidos'
              mmHeight = 4233
              mmLeft = 794
              mmTop = 0
              mmWidth = 24342
              BandType = 4
            end
            object lblFEmisNoInc: TppDBText
              UserName = 'lblDetTM1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FechaEmision'
              DataPipeline = dbpNoIncluidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpNoIncluidos'
              mmHeight = 4233
              mmLeft = 26458
              mmTop = 0
              mmWidth = 24342
              BandType = 4
            end
            object lblNMovNoInc: TppDBText
              UserName = 'lblNroChqI'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NroCheque'
              DataPipeline = dbpNoIncluidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpNoIncluidos'
              mmHeight = 4233
              mmLeft = 52388
              mmTop = 0
              mmWidth = 21960
              BandType = 4
            end
            object lblDMovNoInc: TppDBText
              UserName = 'lblDetMovI'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DetalleMov'
              DataPipeline = dbpNoIncluidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpNoIncluidos'
              mmHeight = 4233
              mmLeft = 76465
              mmTop = 0
              mmWidth = 59531
              BandType = 4
            end
            object lblMontoNoInc: TppDBText
              UserName = 'lblMontoI'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Monto'
              DataPipeline = dbpNoIncluidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpNoIncluidos'
              mmHeight = 4233
              mmLeft = 138907
              mmTop = 0
              mmWidth = 27517
              BandType = 4
            end
            object lblFVencNoInc: TppDBText
              UserName = 'lblDetTM2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FechaVencimiento'
              DataPipeline = dbpNoIncluidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpNoIncluidos'
              mmHeight = 4233
              mmLeft = 174096
              mmTop = 0
              mmWidth = 19315
              BandType = 4
            end
          end
          object ppGroup2: TppGroup
            BreakName = 'TipoMov'
            DataPipeline = dbpNoIncluidos
            KeepTogether = True
            OutlineSettings.CreateNode = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbpNoIncluidos'
            object ppGroupHeaderBand2: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 11377
              mmPrintPosition = 0
              object shTitNoInc: TppShape
                UserName = 'shTitInc'
                Brush.Color = 16777194
                ParentHeight = True
                ParentWidth = True
                Shape = stRoundRect
                mmHeight = 11377
                mmLeft = 0
                mmTop = 0
                mmWidth = 194760
                BandType = 3
                GroupNo = 0
              end
              object lblTMovNoInc: TppLabel
                UserName = 'lblTMovInc'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Tipo Operaci'#243'n'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3387
                mmLeft = 1323
                mmTop = 6615
                mmWidth = 19844
                BandType = 3
                GroupNo = 0
              end
              object lblEmisionNoInc: TppLabel
                UserName = 'lblTMovInc1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Emisi'#243'n'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3387
                mmLeft = 27517
                mmTop = 6615
                mmWidth = 9790
                BandType = 3
                GroupNo = 0
              end
              object lblNroMovNoInc: TppLabel
                UserName = 'lblTMovInc2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'N'#186' de Operaci'#243'n'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3387
                mmLeft = 52652
                mmTop = 6615
                mmWidth = 21167
                BandType = 3
                GroupNo = 0
              end
              object lblDetMovNoInc: TppLabel
                UserName = 'lblTMovInc3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Detalle Operaci'#243'n'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3387
                mmLeft = 95515
                mmTop = 6615
                mmWidth = 22754
                BandType = 3
                GroupNo = 0
              end
              object lblMtoNoInc: TppLabel
                UserName = 'lblTMovInc4'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Monto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3387
                mmLeft = 157957
                mmTop = 6615
                mmWidth = 7938
                BandType = 3
                GroupNo = 0
              end
              object lblVencNoInc: TppLabel
                UserName = 'lblTMovInc5'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Vencimiento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3387
                mmLeft = 173832
                mmTop = 6615
                mmWidth = 15071
                BandType = 3
                GroupNo = 0
              end
              object lblTiNoInc: TppLabel
                UserName = 'lblTitMovInc1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'MOVIMIENTOS NO ACREDITADOS POR EL BANCO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4233
                mmLeft = 1323
                mmTop = 794
                mmWidth = 80169
                BandType = 3
                GroupNo = 0
              end
              object lblDetalleMovNoInc: TppDBText
                UserName = 'lblDetalleMovNoInc'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DetTipoMov'
                DataPipeline = dbpNoIncluidos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = [fsBold, fsUnderline]
                Transparent = True
                DataPipelineName = 'dbpNoIncluidos'
                mmHeight = 3969
                mmLeft = 88636
                mmTop = 794
                mmWidth = 17198
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 6615
              mmPrintPosition = 0
              object shTotNoInc: TppShape
                UserName = 'shMovInc'
                Brush.Color = 15925234
                ParentHeight = True
                ParentWidth = True
                Shape = stRoundRect
                mmHeight = 6615
                mmLeft = 0
                mmTop = 0
                mmWidth = 194760
                BandType = 5
                GroupNo = 0
              end
              object lblTotNoInc: TppDBCalc
                UserName = 'lblTotMovInc'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'Monto'
                DataPipeline = dbpNoIncluidos
                DisplayFormat = '$ 0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbpNoIncluidos'
                mmHeight = 3895
                mmLeft = 139965
                mmTop = 1058
                mmWidth = 26194
                BandType = 5
                GroupNo = 0
              end
              object lblCantMovNoInc: TppDBCalc
                UserName = 'lblCantMovInc'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TipoMov'
                DataPipeline = dbpNoIncluidos
                DisplayFormat = 'Cantidad de movimientos: 0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'dbpNoIncluidos'
                mmHeight = 3895
                mmLeft = 1323
                mmTop = 1058
                mmWidth = 74613
                BandType = 5
                GroupNo = 0
              end
            end
          end
        end
      end
    end
    object sbConciliacion: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 18256
      mmPrintPosition = 0
      object shResultConc: TppShape
        UserName = 'shResultConc'
        Brush.Color = 14811135
        ParentHeight = True
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 18256
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 7
      end
      object lblSSgCon: TppLabel
        UserName = 'lblSSgCon'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblSSgCon'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4318
        mmLeft = 118534
        mmTop = 1852
        mmWidth = 19844
        BandType = 7
      end
      object lblSSgLib: TppLabel
        UserName = 'lblSSgLib'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblSSgLib'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4318
        mmLeft = 118534
        mmTop = 7145
        mmWidth = 19844
        BandType = 7
      end
      object lblDifer: TppLabel
        UserName = 'lblDifer'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblDifer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4318
        mmLeft = 118534
        mmTop = 12700
        mmWidth = 19844
        BandType = 7
      end
      object lblSdoCon: TppLabel
        UserName = 'lblSdoCon'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SALDO SEG'#218'N CONCILIACI'#211'N'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 45773
        mmTop = 1852
        mmWidth = 54240
        BandType = 7
      end
      object lblSdolLib: TppLabel
        UserName = 'lblSdoCon1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SALDO SEG'#218'N LIBRO BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4318
        mmLeft = 45508
        mmTop = 7145
        mmWidth = 51901
        BandType = 7
      end
      object lblSdoDif: TppLabel
        UserName = 'lblSdoCon2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DIFERENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4318
        mmLeft = 45508
        mmTop = 12700
        mmWidth = 22691
        BandType = 7
      end
      object lblFecImp: TppSystemVariable
        UserName = 'lblFecImp'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 185209
        mmTop = 13758
        mmWidth = 9991
        BandType = 7
      end
    end
  end
  object dbpIncluidos: TppDBPipeline
    DataSource = dsqIncluidos
    UserName = 'dbpIncluidos'
    Left = 305
    Top = 488
  end
  object dbpNoIncluidos: TppDBPipeline
    DataSource = dsqNoIncluidos
    UserName = 'dbpNoIncluidos'
    Left = 305
    Top = 516
  end
  object qIncluidos: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select B.TipoMov, B.FechaEmision, B.NroCheque, '
      '           B.FechaVencimiento,  B.DetalleMov,  B.Monto, '
      '           B.FechaResumen, T.TipoMovBco as DetTipoMov'
      'From BancoProp B'
      'Join TipoMovBco T'
      '  on T.IdMovBco = B.TipoMov'
      'Where (B.IdBanco = :IdBank) And '
      '            (B.FechaResumen = :FecRes) And'
      '            (B.IdNroConciliacion =:IdNro)           '
      'Order By B.TipoMov, B.FechaEmision'
      ' ')
    Left = 245
    Top = 516
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IdBank'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'FecRes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdNro'
        ParamType = ptUnknown
      end>
    object qIncluidosTipoMov: TSmallintField
      FieldName = 'TipoMov'
      Origin = '"BANCOPROP"."TIPOMOV"'
    end
    object qIncluidosDetTipoMov: TStringField
      FieldName = 'DetTipoMov'
      KeyFields = 'TipoMov'
      Origin = 'TipoMovBco.TipoMovBco'
      Size = 15
    end
    object qIncluidosFechaEmision: TDateField
      FieldName = 'FechaEmision'
      Origin = '"BANCOPROP"."FECHAEMISION"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qIncluidosFechaVencimiento: TDateField
      FieldName = 'FechaVencimiento'
      Origin = '"BANCOPROP"."FECHAVENCIMIENTO"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qIncluidosDetalleMov: TStringField
      FieldName = 'DetalleMov'
      Origin = '"BANCOPROP"."DETALLEMOV"'
      Size = 30
    end
    object qIncluidosMONTO: TMDOBCDField
      FieldName = 'MONTO'
      Origin = '"BANCOPROP"."MONTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qIncluidosNROCHEQUE: TIntegerField
      FieldName = 'NROCHEQUE'
      Origin = '"BANCOPROP"."NROCHEQUE"'
    end
    object qIncluidosFECHARESUMEN: TDateField
      FieldName = 'FECHARESUMEN'
      Origin = '"BANCOPROP"."FECHARESUMEN"'
      DisplayFormat = 'dd/mm/yy'
    end
  end
  object qNoIncluidos: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select B.TipoMov, B.FechaEmision, B.NroCheque, '
      '           B.FechaVencimiento, B.DetalleMov,'
      '           B.Monto, B.FechaResumen, '
      '           T.TipoMovBco as DetTipoMov'
      'From BancoProp B'
      'Join TipoMovBco T'
      '  on T.IdMovBco = B.TipoMov'
      'Where (B.IdBanco = :IdBanK) And '
      
        '            (B.FechaEmision <= :FecRes) And (B.Estado <> 999) An' +
        'd'
      
        '            ((B.FechaResumen <=:FAntes) or (B.FechaResumen is nu' +
        'll))'
      'Order By B.TipoMov, B.FechaEmision'
      '')
    Left = 275
    Top = 516
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IdBanK'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'FecRes'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'FAntes'
        ParamType = ptUnknown
      end>
    object qNoIncluidosTipoMov: TSmallintField
      FieldName = 'TipoMov'
      Origin = '"BANCOPROP"."TIPOMOV"'
    end
    object qNoIncluidosFechaEmision: TDateField
      FieldName = 'FechaEmision'
      Origin = '"BANCOPROP"."FECHAEMISION"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qNoIncluidosFechaVencimiento: TDateField
      FieldName = 'FechaVencimiento'
      Origin = '"BANCOPROP"."FECHAVENCIMIENTO"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qNoIncluidosDetalleMov: TStringField
      FieldName = 'DetalleMov'
      Origin = '"BANCOPROP"."DETALLEMOV"'
      Size = 30
    end
    object qNoIncluidosDetTipoMov: TStringField
      FieldName = 'DetTipoMov'
      KeyFields = 'TipoMov'
      Origin = 'TipoMovBco.TipoMovBco'
      Size = 15
    end
    object qNoIncluidosMONTO: TMDOBCDField
      FieldName = 'MONTO'
      Origin = '"BANCOPROP"."MONTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qNoIncluidosNROCHEQUE: TIntegerField
      FieldName = 'NROCHEQUE'
      Origin = '"BANCOPROP"."NROCHEQUE"'
    end
    object qNoIncluidosFECHARESUMEN: TDateField
      FieldName = 'FECHARESUMEN'
      Origin = '"BANCOPROP"."FECHARESUMEN"'
      DisplayFormat = 'dd/mm/yy'
    end
  end
  object dsqIncluidos: TDataSource
    DataSet = qIncluidos
    Left = 246
    Top = 488
  end
  object dsqNoIncluidos: TDataSource
    DataSet = qNoIncluidos
    Left = 276
    Top = 488
  end
  object qTotNoInc: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select B.TipoMov, Sum(B.Monto) as TotMto, '
      '          T.TipoMovBco as DetTipoMov, T.Suma_Resta'
      'From BancoProp B'
      'Join TipoMovBco T'
      '  on T.IdMovBco = B.TipoMov'
      'Where (B.IdBanco = :IdBanK) And  (B.Estado <> 999) And'
      '      (B.FechaEmision <= :FecRes) And'
      '      ((B.FechaResumen <=:FAntes) or (B.FechaResumen is null)) '
      'Group By B.TipoMov, T.TipoMovBco, T.Suma_Resta'
      ''
      ' ')
    Left = 275
    Top = 458
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IdBanK'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'FecRes'
        ParamType = ptUnknown
        Value = 37021d
      end
      item
        DataType = ftDate
        Name = 'FAntes'
        ParamType = ptUnknown
      end>
    object qTotNoIncTipoMov: TSmallintField
      FieldName = 'TipoMov'
    end
    object qTotNoIncDetTipoMov: TStringField
      FieldName = 'DetTipoMov'
      Size = 15
    end
    object qTotNoIncSuma_Resta: TSmallintField
      FieldName = 'Suma_Resta'
    end
    object qTotNoIncTOTMTO: TMDOBCDField
      FieldName = 'TOTMTO'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object qBancoProp: TMDODataSet
    BeforePost = qBancoPropBeforePost
    Database = dmGestion.dbGestion
    OnNewRecord = qBancoPropNewRecord
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
      'Select B.IDMOV, B.IDBANCO, B.IDORDPAGO, B.TIPOMOV, '
      '           B.NROCHEQUE,B.FECHAEMISION,B.FECHAVENCIMIENTO,'
      '           B.FECHARESUMEN, B.IDENTIDAD, B.DETALLEMOV, B.MONTO, '
      '           B.DEBE, B.HABER, B.USUARIO, B.ESTADO, B.IDFACTURA, '
      '           B.IDSUCURSAL, B.IDNROCONCILIACION, B.IDEMPRESA,'
      '           P.NOMBRE, O.NROCOMPOP, E.NOMBRE AS NOMUSR'
      'From BANCOPROP B'
      'Left Outer Join PROVEEDORES P'
      '  on P.IdProveedor = B.IDENTIDAD'
      'Left Outer Join ORDENES O'
      '  on O.IDORDEN = B.IDORDPAGO'
      'Left Outer Join EMPLEADOS E'
      '  on E.IDEMPLEADO = B.USUARIO'
      'Where (B.IDMOV =:IdMov) and'
      '            (B.ESTADO <> 999)'
      'Order By B.FECHAEMISION')
    Left = 127
    Top = 458
    object qBancoPropIDMOV: TIntegerField
      FieldName = 'IDMOV'
      Origin = '"BANCOPROP"."IDMOV"'
      Required = True
      OnGetText = qBancoPropIDMOVGetText
    end
    object qBancoPropIDBANCO: TIntegerField
      FieldName = 'IDBANCO'
      Origin = '"BANCOPROP"."IDBANCO"'
    end
    object qBancoPropIDORDPAGO: TIntegerField
      FieldName = 'IDORDPAGO'
      Origin = '"BANCOPROP"."IDORDPAGO"'
    end
    object qBancoPropTIPOMOV: TSmallintField
      FieldName = 'TIPOMOV'
      Origin = '"BANCOPROP"."TIPOMOV"'
    end
    object qBancoPropNROCHEQUE: TIntegerField
      FieldName = 'NROCHEQUE'
      Origin = '"BANCOPROP"."NROCHEQUE"'
    end
    object qBancoPropFECHAEMISION: TDateField
      FieldName = 'FECHAEMISION'
      Origin = '"BANCOPROP"."FECHAEMISION"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qBancoPropFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
      Origin = '"BANCOPROP"."FECHAVENCIMIENTO"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qBancoPropFECHARESUMEN: TDateField
      FieldName = 'FECHARESUMEN'
      Origin = '"BANCOPROP"."FECHARESUMEN"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qBancoPropIDENTIDAD: TIntegerField
      FieldName = 'IDENTIDAD'
      Origin = '"BANCOPROP"."IDENTIDAD"'
      OnChange = qBancoPropIDENTIDADChange
    end
    object qBancoPropDETALLEMOV: TMDOStringField
      FieldName = 'DETALLEMOV'
      Origin = '"BANCOPROP"."DETALLEMOV"'
      Size = 30
    end
    object qBancoPropMONTO: TMDOBCDField
      FieldName = 'MONTO'
      Origin = '"BANCOPROP"."MONTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qBancoPropDEBE: TMDOBCDField
      FieldName = 'DEBE'
      Origin = '"BANCOPROP"."DEBE"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qBancoPropHABER: TMDOBCDField
      FieldName = 'HABER'
      Origin = '"BANCOPROP"."HABER"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qBancoPropUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"BANCOPROP"."USUARIO"'
    end
    object qBancoPropNOMBRE: TMDOStringField
      FieldName = 'NOMBRE'
      Origin = '"EMPLEADOS"."NOMBRE"'
      Size = 30
    end
    object qBancoPropNROCOMPOP: TMDOStringField
      FieldName = 'NROCOMPOP'
      Origin = '"ORDENES"."NROCOMPOP"'
      Size = 13
    end
    object qBancoPropNOMUSR: TMDOStringField
      FieldName = 'NOMUSR'
      Size = 30
    end
    object qBancoPropESTADO: TSmallintField
      FieldName = 'ESTADO'
      Origin = '"BANCOPROP"."ESTADO"'
    end
    object qBancoPropIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"BANCOPROP"."IDFACTURA"'
    end
    object qBancoPropIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"BANCOPROP"."IDSUCURSAL"'
    end
    object qBancoPropIDNROCONCILIACION: TIntegerField
      FieldName = 'IDNROCONCILIACION'
      Origin = '"BANCOPROP"."IDNROCONCILIACION"'
    end
    object qBancoPropIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
    end
  end
  object dsqBancoProp: TDataSource
    AutoEdit = False
    DataSet = qBancoProp
    OnDataChange = dsqBancoPropDataChange
    Left = 127
    Top = 430
  end
  object qBancoTer: TMDODataSet
    BeforeDelete = qBancoTerBeforeDelete
    BeforePost = qBancoTerBeforePost
    Database = dmGestion.dbGestion
    OnNewRecord = qBancoTerNewRecord
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM BANCOTER'
      'WHERE'
      '  IDMOV = :OLD_IDMOV AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL')
    InsertSQL.Strings = (
      'INSERT INTO BANCOTER'
      
        '  (IDPUNTOVENTA, IDMOV, IDSUCURSAL, IDFACTURA, IDORDPAGO, NOMBRE' +
        'BANCO, '
      
        '   NROCUENTA, NROCHEQUE, IDTITULAR, TITULAR, IDENDOSO, ENDOSO, N' +
        'ROFACTURA, '
      
        '   FECHAVENCIMIENTO, FECHAENTREGA, IDENTREGA, ENTREGA, MONTO, SI' +
        'TUACION, '
      '   FECHAIS, IDMOVSUC, IDEMPRESA)'
      'VALUES'
      
        '  (:IDPUNTOVENTA, :IDMOV, :IDSUCURSAL, :IDFACTURA, :IDORDPAGO, :' +
        'NOMBREBANCO, '
      
        '   :NROCUENTA, :NROCHEQUE, :IDTITULAR, :TITULAR, :IDENDOSO, :END' +
        'OSO, :NROFACTURA, '
      
        '   :FECHAVENCIMIENTO, :FECHAENTREGA, :IDENTREGA, :ENTREGA, :MONT' +
        'O, :SITUACION, '
      '   :FECHAIS, :IDMOVSUC, :IDEMPRESA)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE BANCOTER'
      'SET'
      '  IDPUNTOVENTA = :IDPUNTOVENTA,'
      '  IDMOV = :IDMOV,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  IDFACTURA = :IDFACTURA,'
      '  IDORDPAGO = :IDORDPAGO,'
      '  NOMBREBANCO = :NOMBREBANCO,'
      '  NROCUENTA = :NROCUENTA,'
      '  NROCHEQUE = :NROCHEQUE,'
      '  IDTITULAR = :IDTITULAR,'
      '  TITULAR = :TITULAR,'
      '  IDENDOSO = :IDENDOSO,'
      '  ENDOSO = :ENDOSO,'
      '  NROFACTURA = :NROFACTURA,'
      '  FECHAVENCIMIENTO = :FECHAVENCIMIENTO,'
      '  FECHAENTREGA = :FECHAENTREGA,'
      '  IDENTREGA = :IDENTREGA,'
      '  ENTREGA = :ENTREGA,'
      '  MONTO = :MONTO,'
      '  SITUACION = :SITUACION,'
      '  FECHAIS = :FECHAIS,'
      '  IDMOVSUC = :IDMOVSUC,'
      '  IDEMPRESA = :IDEMPRESA'
      'WHERE'
      '  IDMOV = :OLD_IDMOV AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDPUNTOVENTA,'
      '  IDMOV,'
      '  IDSUCURSAL,'
      '  IDFACTURA,'
      '  IDORDPAGO,'
      '  NOMBREBANCO,'
      '  NROCUENTA,'
      '  NROCHEQUE,'
      '  IDTITULAR,'
      '  TITULAR,'
      '  IDENDOSO,'
      '  ENDOSO,'
      '  NROFACTURA,'
      '  FECHAVENCIMIENTO,'
      '  FECHAENTREGA,'
      '  IDENTREGA,'
      '  ENTREGA,'
      '  MONTO,'
      '  SITUACION,'
      '  FECHAIS,'
      '  IDMOVSUC,'
      '  IDEMPRESA'
      'FROM BANCOTER '
      'WHERE'
      '  IDMOV = :IDMOV AND'
      '  IDSUCURSAL = :IDSUCURSAL')
    SelectSQL.Strings = (
      'Select B.IDMOV, B.IDORDPAGO, B.NOMBREBANCO, B.NROCUENTA, '
      '           B.NROCHEQUE, B.IDTITULAR, B.TITULAR, B.IDENDOSO, '
      
        '           B.ENDOSO, B.IDFACTURA, B.IDSUCURSAL, B.IDPUNTOVENTA, ' +
        '               B.NROFACTURA, B.FECHAVENCIMIENTO, B.FECHAENTREGA,' +
        ' '
      '           B.IDENTREGA,  B.ENTREGA, B.MONTO, B.SITUACION, '
      '           B.FECHAIS, B.IDMOVSUC, B.IDEMPRESA, O.NROCOMPOP'
      'From BANCOTER B'
      'Left Outer Join ORDENES O'
      '    on O.IDORDEN = B.IDORDPAGO'
      'Where (B.IDMOV =:IdMov) and '
      '           (B.SITUACION < 10)'
      '            ')
    Left = 484
    Top = 516
    object qBancoTerIDMOV: TIntegerField
      FieldName = 'IDMOV'
      Origin = '"BANCOTER"."IDMOV"'
      Required = True
      OnGetText = qBancoTerIDMOVGetText
    end
    object qBancoTerIDORDPAGO: TIntegerField
      FieldName = 'IDORDPAGO'
      Origin = '"BANCOTER"."IDORDPAGO"'
    end
    object qBancoTerNOMBREBANCO: TMDOStringField
      FieldName = 'NOMBREBANCO'
      Origin = '"BANCOTER"."NOMBREBANCO"'
      Size = 30
    end
    object qBancoTerNROCUENTA: TMDOStringField
      FieldName = 'NROCUENTA'
      Origin = '"BANCOTER"."NROCUENTA"'
      Size = 30
    end
    object qBancoTerNROCHEQUE: TIntegerField
      FieldName = 'NROCHEQUE'
      Origin = '"BANCOTER"."NROCHEQUE"'
    end
    object qBancoTerIDTITULAR: TIntegerField
      FieldName = 'IDTITULAR'
      Origin = '"BANCOTER"."IDTITULAR"'
      OnChange = qBancoTerIDTITULARChange
    end
    object qBancoTerTITULAR: TMDOStringField
      FieldName = 'TITULAR'
      Origin = '"BANCOTER"."TITULAR"'
      Size = 30
    end
    object qBancoTerIDENDOSO: TIntegerField
      FieldName = 'IDENDOSO'
      Origin = '"BANCOTER"."IDENDOSO"'
      OnChange = qBancoTerIDENDOSOChange
    end
    object qBancoTerENDOSO: TMDOStringField
      FieldName = 'ENDOSO'
      Origin = '"BANCOTER"."ENDOSO"'
      Size = 30
    end
    object qBancoTerIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"BANCOTER"."IDFACTURA"'
    end
    object qBancoTerNROFACTURA: TMDOStringField
      FieldName = 'NROFACTURA'
      Origin = '"BANCOTER"."NROFACTURA"'
      Size = 13
    end
    object qBancoTerFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
      Origin = '"BANCOTER"."FECHAVENCIMIENTO"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qBancoTerFECHAENTREGA: TDateField
      FieldName = 'FECHAENTREGA'
      Origin = '"BANCOTER"."FECHAENTREGA"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qBancoTerIDENTREGA: TIntegerField
      FieldName = 'IDENTREGA'
      Origin = '"BANCOTER"."IDENTREGA"'
      OnChange = qBancoTerIDENTREGAChange
    end
    object qBancoTerENTREGA: TMDOStringField
      FieldName = 'ENTREGA'
      Origin = '"BANCOTER"."ENTREGA"'
      Size = 30
    end
    object qBancoTerMONTO: TMDOBCDField
      FieldName = 'MONTO'
      Origin = '"BANCOTER"."MONTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qBancoTerSITUACION: TSmallintField
      FieldName = 'SITUACION'
      Origin = '"BANCOTER"."SITUACION"'
    end
    object qBancoTerFECHAIS: TDateField
      FieldName = 'FECHAIS'
      Origin = '"BANCOTER"."FECHAIS"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qBancoTerNROCOMPOP: TMDOStringField
      FieldName = 'NROCOMPOP'
      Origin = '"ORDENES"."NROCOMPOP"'
      Size = 13
    end
    object qBancoTerIDMOVSUC: TIntegerField
      FieldName = 'IDMOVSUC'
      Origin = '"BANCOTER"."IDMOVSUC"'
    end
    object qBancoTerIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"BANCOTER"."IDSUCURSAL"'
    end
    object qBancoTerIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = '"BANCOTER"."IDEMPRESA"'
    end
    object qBancoTerIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
    end
  end
  object dsqBancoTer: TDataSource
    DataSet = qBancoTer
    OnDataChange = dsqBancoTerDataChange
    Left = 484
    Top = 488
  end
  object dsBancos: TDataSource
    AutoEdit = False
    DataSet = dmGestion.Bancos
    Left = 187
    Top = 488
  end
  object qBancos: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IDBANCO, BANCO, NROCTA  '
      'From BANCOS'
      'Order By IDBANCO')
    Left = 216
    Top = 458
    object qBancosBANCO: TMDOStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 15
      FieldName = 'BANCO'
      Origin = '"BANCOS"."BANCO"'
      Required = True
      Size = 30
    end
    object qBancosNROCTA: TMDOStringField
      DisplayLabel = 'Cuenta'
      DisplayWidth = 20
      FieldName = 'NROCTA'
      Origin = '"BANCOS"."NROCTA"'
      Size = 30
    end
    object qBancosIDBANCO: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 2
      FieldName = 'IDBANCO'
      Origin = '"BANCOS"."IDBANCO"'
      Required = True
    end
  end
  object dsqBancos: TDataSource
    AutoEdit = False
    DataSet = qBancos
    Left = 217
    Top = 430
  end
  object rpMovPropEntreFechas: TppReport
    AutoStop = False
    DataPipeline = dbpMovPropEntreFechas
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Movimientos Propios'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 3350
    PrinterSetup.mmMarginLeft = 8350
    PrinterSetup.mmMarginRight = 3350
    PrinterSetup.mmMarginTop = 8350
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
    TextSearchSettings.Enabled = False
    Left = 186
    Top = 430
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpMovPropEntreFechas'
    object hbMovProp: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object shMovProp2: TppShape
        UserName = 'shMovProp2'
        ParentWidth = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 9789
        mmWidth = 198300
        BandType = 0
      end
      object shMovProp1: TppShape
        UserName = 'shMovProp1'
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 9525
        mmLeft = 0
        mmTop = 0
        mmWidth = 198300
        BandType = 0
      end
      object lblTituloBP1: TppLabel
        UserName = 'lblTituloBP1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTituloBP1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 1588
        mmTop = 5292
        mmWidth = 19389
        BandType = 0
      end
      object lblTituloBP2: TppLabel
        UserName = 'lblTituloBP2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTituloBP2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 177271
        mmTop = 5292
        mmWidth = 19389
        BandType = 0
      end
      object lblDTipoBP: TppLabel
        UserName = 'lblDTipoBP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 10583
        mmWidth = 5292
        BandType = 0
      end
      object lblDNroCBP: TppLabel
        UserName = 'lblDNroCBP'
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
        mmLeft = 19579
        mmTop = 10583
        mmWidth = 16669
        BandType = 0
      end
      object lblDMovBP: TppLabel
        UserName = 'lblDMovBP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Detalle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 38629
        mmTop = 10583
        mmWidth = 8467
        BandType = 0
      end
      object lblDEmiBP: TppLabel
        UserName = 'lblDEmiBP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Emisi'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 83344
        mmTop = 10583
        mmWidth = 9525
        BandType = 0
      end
      object lblDVtoBP: TppLabel
        UserName = 'lblDVtoBP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vencimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 101071
        mmTop = 10583
        mmWidth = 15081
        BandType = 0
      end
      object lblDDebeBP: TppLabel
        UserName = 'lblDDebeBP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Debe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 127794
        mmTop = 10583
        mmWidth = 6350
        BandType = 0
      end
      object lblDHaberBP: TppLabel
        UserName = 'lblDHaberBP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Haber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 145786
        mmTop = 10583
        mmWidth = 7408
        BandType = 0
      end
      object lblDFResBP: TppLabel
        UserName = 'lblDFResBP'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 185473
        mmTop = 10583
        mmWidth = 11642
        BandType = 0
      end
      object lblPaginaBP: TppSystemVariable
        UserName = 'lblPaginaBP'
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
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 90752
        mmTop = 529
        mmWidth = 20108
        BandType = 0
      end
    end
    object dbMovProp: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object lblTipoBP: TppDBText
        UserName = 'lblDetMovBP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TIPOMOVBCO'
        DataPipeline = dbpMovPropEntreFechas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpMovPropEntreFechas'
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 265
        mmWidth = 15610
        BandType = 4
      end
      object lblNroCBP: TppDBText
        UserName = 'lblNroCBP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NROCHEQUE'
        DataPipeline = dbpMovPropEntreFechas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpMovPropEntreFechas'
        mmHeight = 3429
        mmLeft = 19579
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
      object lblDetaBP: TppDBText
        UserName = 'lblDetaBP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DETALLEMOV'
        DataPipeline = dbpMovPropEntreFechas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpMovPropEntreFechas'
        mmHeight = 3440
        mmLeft = 38629
        mmTop = 264
        mmWidth = 42598
        BandType = 4
      end
      object lblFEmiBP: TppDBText
        UserName = 'lblFEmiBP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FECHAEMISION'
        DataPipeline = dbpMovPropEntreFechas
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpMovPropEntreFechas'
        mmHeight = 3440
        mmLeft = 83344
        mmTop = 264
        mmWidth = 14288
        BandType = 4
      end
      object lblFVtoBP: TppDBText
        UserName = 'lblFVtoBP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FECHAVENCIMIENTO'
        DataPipeline = dbpMovPropEntreFechas
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpMovPropEntreFechas'
        mmHeight = 3440
        mmLeft = 101071
        mmTop = 264
        mmWidth = 14552
        BandType = 4
      end
      object lblDebeBP: TppDBText
        UserName = 'lblDebeBP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DEBE'
        DataPipeline = dbpMovPropEntreFechas
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpMovPropEntreFechas'
        mmHeight = 3440
        mmLeft = 116946
        mmTop = 264
        mmWidth = 17198
        BandType = 4
      end
      object lblHaberBP: TppDBText
        UserName = 'lblHaberBP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HABER'
        DataPipeline = dbpMovPropEntreFechas
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpMovPropEntreFechas'
        mmHeight = 3440
        mmLeft = 135996
        mmTop = 264
        mmWidth = 17198
        BandType = 4
      end
      object lblSaldoBP: TppDBText
        UserName = 'lblSaldoBP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SALDO'
        DataPipeline = dbpMovPropEntreFechas
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpMovPropEntreFechas'
        mmHeight = 3440
        mmLeft = 160867
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object lblFResBP: TppDBText
        UserName = 'lblFResBP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FECHARESUMEN'
        DataPipeline = dbpMovPropEntreFechas
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpMovPropEntreFechas'
        mmHeight = 3440
        mmLeft = 182827
        mmTop = 264
        mmWidth = 14288
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 10583
      mmPrintPosition = 0
      object shMovProp3: TppShape
        UserName = 'shMovProp3'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 10583
        mmLeft = 0
        mmTop = 0
        mmWidth = 198300
        BandType = 7
      end
      object lblTotBcoProp: TppDBCalc
        UserName = 'lblTotBcoProp'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SALDO'
        DataPipeline = dbpMovPropEntreFechas
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpMovPropEntreFechas'
        mmHeight = 3440
        mmLeft = 159015
        mmTop = 3704
        mmWidth = 20108
        BandType = 7
      end
    end
  end
  object dbpMovPropEntreFechas: TppDBPipeline
    DataSource = dsMovProp
    UserName = 'dbpMovPropEntreFechas'
    Left = 186
    Top = 458
  end
  object dsTransBank: TDataSource
    DataSet = TBank
    Left = 603
    Top = 488
  end
  object dsItemsTB: TDataSource
    DataSet = ItemsT_B
    Left = 633
    Top = 488
  end
  object TBank: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = TBankAfterPost
    OnNewRecord = TBankNewRecord
    Left = 603
    Top = 516
    object TBankIdCtaOrg: TIntegerField
      FieldName = 'IdCtaOrg'
    end
    object TBankIdCtaDes: TIntegerField
      FieldName = 'IdCtaDes'
    end
    object TBankMontoT: TCurrencyField
      FieldName = 'MontoT'
    end
    object TBankFechaT: TDateField
      FieldName = 'FechaT'
    end
    object TBankCantMov: TSmallintField
      FieldName = 'CantMov'
    end
    object TBankIdTransBank: TIntegerField
      FieldName = 'IdTransBank'
    end
    object TBankDetCtaOrg: TStringField
      FieldKind = fkLookup
      FieldName = 'DetCtaOrg'
      LookupDataSet = dmGestion.Bancos
      LookupKeyFields = 'IdBanco'
      LookupResultField = 'Banco'
      KeyFields = 'IdCtaOrg'
      Size = 30
      Lookup = True
    end
    object TBankDetCtaDes: TStringField
      FieldKind = fkLookup
      FieldName = 'DetCtaDes'
      LookupDataSet = dmGestion.Bancos
      LookupKeyFields = 'IdBanco'
      LookupResultField = 'Banco'
      KeyFields = 'IdCtaDes'
      Size = 30
      Lookup = True
    end
  end
  object ItemsT_B: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    AfterPost = ItemsT_BAfterPost
    OnNewRecord = ItemsT_BNewRecord
    Left = 633
    Top = 516
    object ItemsT_BIdItem: TSmallintField
      DisplayWidth = 10
      FieldName = 'IdItem'
    end
    object ItemsT_BFechaT: TDateField
      DisplayWidth = 10
      FieldName = 'FechaT'
    end
    object ItemsT_BDetalle: TStringField
      DisplayWidth = 25
      FieldName = 'Detalle'
      Size = 25
    end
    object ItemsT_BMonto: TCurrencyField
      DisplayWidth = 10
      FieldName = 'Monto'
    end
    object ItemsT_BIdTransBank: TIntegerField
      FieldName = 'IdTransBank'
    end
    object ItemsT_BCantIt: TAggregateField
      FieldName = 'CantIt'
      Visible = True
      Active = True
      Expression = 'max(IdItem)'
    end
  end
  object dsqTransRel: TDataSource
    DataSet = qTransRel
    Left = 663
    Top = 488
  end
  object rpTransBank: TppReport
    AutoStop = False
    DataPipeline = dbpTransBank
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
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
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 693
    Top = 458
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpTransBank'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34660
      mmPrintPosition = 0
      object shpTitTranB: TppShape
        UserName = 'shpTitTranB'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 34660
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 0
      end
      object lblDetCtaOrg: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DetCtaOrg'
        DataPipeline = dbpTransBank
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpTransBank'
        mmHeight = 4233
        mmLeft = 42069
        mmTop = 15875
        mmWidth = 16298
        BandType = 0
      end
      object lblCtaOrg: TppLabel
        UserName = 'lblCtaOrg'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cuenta Origen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 15875
        mmWidth = 22352
        BandType = 0
      end
      object lblCtaDest: TppLabel
        UserName = 'lblCtaDest'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cuenta Destino'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 22225
        mmWidth = 23664
        BandType = 0
      end
      object lblDetCtaDes: TppDBText
        UserName = 'lblDetCtaDes'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DetCtaDes'
        DataPipeline = dbpTransBank
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpTransBank'
        mmHeight = 4233
        mmLeft = 42069
        mmTop = 22225
        mmWidth = 16383
        BandType = 0
      end
      object lblTransN: TppLabel
        UserName = 'lblTransN'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Transferencia N'#186' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 10054
        mmWidth = 27263
        BandType = 0
      end
      object lblNroTrans: TppDBText
        UserName = 'lblNroTrans'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'IdTransBank'
        DataPipeline = dbpTransBank
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpTransBank'
        mmHeight = 4233
        mmLeft = 42069
        mmTop = 10054
        mmWidth = 19558
        BandType = 0
      end
      object lblFechaT: TppDBText
        UserName = 'lblFechaT'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaT'
        DataPipeline = dbpTransBank
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpTransBank'
        mmHeight = 4233
        mmLeft = 138113
        mmTop = 10054
        mmWidth = 11113
        BandType = 0
      end
      object lblMontoT: TppDBText
        UserName = 'lblMontoT'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MontoT'
        DataPipeline = dbpTransBank
        DisplayFormat = '$ 0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpTransBank'
        mmHeight = 4233
        mmLeft = 141288
        mmTop = 22225
        mmWidth = 11684
        BandType = 0
      end
      object lblTituloTB: TppLabel
        UserName = 'lblTituloTB'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTituloTB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 83936
        mmTop = 529
        mmWidth = 19008
        BandType = 0
      end
      object lblFecTB: TppLabel
        UserName = 'lblFecTB'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 125677
        mmTop = 10054
        mmWidth = 10329
        BandType = 0
      end
      object lblMontoTB: TppLabel
        UserName = 'lblMontoTB'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Monto Transferido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 126207
        mmTop = 15875
        mmWidth = 28321
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object srItemsTB: TppSubReport
        UserName = 'srItemsTB'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'dbpItemsTB'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbpItemsTB
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '10.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbpItemsTB'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object lblDetTB: TppLabel
              UserName = 'lblDetTB'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Detalle de montos trasferidos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 1058
              mmTop = 529
              mmWidth = 52070
              BandType = 1
            end
          end
          object ppDetailBand5: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object lblFecha: TppDBText
              UserName = 'lblFecha'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FechaT'
              DataPipeline = dbpItemsTB
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'dbpItemsTB'
              mmHeight = 3810
              mmLeft = 53181
              mmTop = 794
              mmWidth = 11345
              BandType = 4
            end
            object lblIdItemTB: TppDBText
              UserName = 'lblIdItemTB'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'IdItem'
              DataPipeline = dbpItemsTB
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'dbpItemsTB'
              mmHeight = 3810
              mmLeft = 31485
              mmTop = 794
              mmWidth = 8202
              BandType = 4
            end
            object lblDetalleITB: TppDBText
              UserName = 'lblDetalleITB'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Detalle'
              DataPipeline = dbpItemsTB
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'dbpItemsTB'
              mmHeight = 3810
              mmLeft = 81227
              mmTop = 794
              mmWidth = 11388
              BandType = 4
            end
            object lblMontoITB: TppDBText
              UserName = 'lblMontoITB'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Monto'
              DataPipeline = dbpItemsTB
              DisplayFormat = '$ 0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpItemsTB'
              mmHeight = 3810
              mmLeft = 172488
              mmTop = 794
              mmWidth = 10075
              BandType = 4
            end
          end
        end
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 18785
      mmPrintPosition = 0
      object shpPieTB: TppShape
        UserName = 'shpPieTB'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 18785
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 7
      end
      object lblEmisionTB: TppSystemVariable
        UserName = 'lbl'
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
        mmLeft = 160602
        mmTop = 12435
        mmWidth = 29104
        BandType = 7
      end
      object shpConforme: TppShape
        UserName = 'shpConforme'
        mmHeight = 794
        mmLeft = 7938
        mmTop = 12171
        mmWidth = 77788
        BandType = 7
      end
      object lblConforme: TppLabel
        UserName = 'lblConforme'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'firma y aclaraci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 33867
        mmTop = 13229
        mmWidth = 22013
        BandType = 7
      end
    end
  end
  object dbpTransBank: TppDBPipeline
    DataSource = dsTransBank
    UserName = 'dbpTransBank'
    Left = 693
    Top = 516
    object dbpTransBankppField1: TppField
      FieldAlias = 'IdCtaOrg'
      FieldName = 'IdCtaOrg'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbpTransBankppField2: TppField
      FieldAlias = 'IdCtaDes'
      FieldName = 'IdCtaDes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbpTransBankppField3: TppField
      FieldAlias = 'MontoT'
      FieldName = 'MontoT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbpTransBankppField4: TppField
      FieldAlias = 'FechaT'
      FieldName = 'FechaT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbpTransBankppField5: TppField
      FieldAlias = 'CantMov'
      FieldName = 'CantMov'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbpTransBankppField6: TppField
      FieldAlias = 'IdTransBank'
      FieldName = 'IdTransBank'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
  end
  object dbpItemsTB: TppDBPipeline
    DataSource = dsItemsTB
    UserName = 'dbpItemsTB'
    Left = 693
    Top = 488
    object dbpItemsTBppField1: TppField
      FieldAlias = 'IdItem'
      FieldName = 'IdItem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbpItemsTBppField2: TppField
      FieldAlias = 'FechaT'
      FieldName = 'FechaT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbpItemsTBppField3: TppField
      FieldAlias = 'Detalle'
      FieldName = 'Detalle'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbpItemsTBppField4: TppField
      FieldAlias = 'Monto'
      FieldName = 'Monto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbpItemsTBppField5: TppField
      FieldAlias = 'IdTransBank'
      FieldName = 'IdTransBank'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object qTransRel: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select T.IdTBank, T.IdCtaOrg, T.IdMovOrg, T.IdCtaDes, '
      '           T.IdMovDes,  T.MontoT, T.FechaT, T.Usuario, '
      '           T.Estado, T.CantMov,  B.Banco as Origen,  '
      '           A.Banco as Destino'
      'From TransBank T'
      'Join Bancos B'
      '   on B.IdBanco = T.IdCtaOrg '
      'Join Bancos A'
      '   on A.IdBanco = T.IdCtaDes'
      'Order By T.FechaT desc')
    Left = 663
    Top = 516
    object qTransRelIDTBANK: TIntegerField
      FieldName = 'IDTBANK'
      Origin = '"TRANSBANK"."IDTBANK"'
      Required = True
    end
    object qTransRelIDCTAORG: TIntegerField
      FieldName = 'IDCTAORG'
      Origin = '"TRANSBANK"."IDCTAORG"'
    end
    object qTransRelIDMOVORG: TIntegerField
      FieldName = 'IDMOVORG'
      Origin = '"TRANSBANK"."IDMOVORG"'
    end
    object qTransRelIDCTADES: TIntegerField
      FieldName = 'IDCTADES'
      Origin = '"TRANSBANK"."IDCTADES"'
    end
    object qTransRelIDMOVDES: TIntegerField
      FieldName = 'IDMOVDES'
      Origin = '"TRANSBANK"."IDMOVDES"'
    end
    object qTransRelMONTOT: TMDOBCDField
      FieldName = 'MONTOT'
      Origin = '"TRANSBANK"."MONTOT"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qTransRelFECHAT: TDateField
      FieldName = 'FECHAT'
      Origin = '"TRANSBANK"."FECHAT"'
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qTransRelUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"TRANSBANK"."USUARIO"'
    end
    object qTransRelESTADO: TSmallintField
      FieldName = 'ESTADO'
      Origin = '"TRANSBANK"."ESTADO"'
    end
    object qTransRelCANTMOV: TSmallintField
      FieldName = 'CANTMOV'
      Origin = '"TRANSBANK"."CANTMOV"'
    end
    object qTransRelORIGEN: TMDOStringField
      FieldName = 'ORIGEN'
      Required = True
      Size = 30
    end
    object qTransRelDESTINO: TMDOStringField
      FieldName = 'DESTINO'
      Required = True
      Size = 30
    end
  end
  object dbqVencimientos: TppDBPipeline
    DataSource = dsqVencimientos
    UserName = 'dbqVencimientos'
    Left = 395
    Top = 458
  end
  object dbpTotByBcoByMes: TppDBPipeline
    DataSource = dsqTotalPorBancoPorMes
    UserName = 'dbpTotByBcoByMes'
    Left = 425
    Top = 458
  end
  object dbpqEnCartera: TppDBPipeline
    DataSource = dsqEnCartera
    UserName = 'dbpqEnCartera'
    Left = 455
    Top = 458
  end
  object rpVencimientos: TppReport
    AutoStop = False
    DataPipeline = dbqVencimientos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Vencimientos'
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
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 395
    Top = 428
    Version = '10.02'
    mmColumnWidth = 197300
    DataPipelineName = 'dbqVencimientos'
    object hbVencBco: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object lblVBTitulo: TppLabel
        UserName = 'lblVBTitulo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblVBTitulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 4763
        mmTop = 265
        mmWidth = 15494
        BandType = 0
      end
      object lblVBEmision: TppSystemVariable
        UserName = 'lblVBEmision'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164042
        mmTop = 265
        mmWidth = 31221
        BandType = 0
      end
    end
    object dbVencBco: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object lblVBFecEm: TppDBText
        UserName = 'lblVBFecEm'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaEmision'
        DataPipeline = dbqVencimientos
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbqVencimientos'
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 529
        mmWidth = 14552
        BandType = 4
      end
      object lblVBDetMov: TppDBText
        UserName = 'lblVBDetMov'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DetTipoMov'
        DataPipeline = dbqVencimientos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbqVencimientos'
        mmHeight = 3429
        mmLeft = 19579
        mmTop = 529
        mmWidth = 22754
        BandType = 4
      end
      object lblVBNroMov: TppDBText
        UserName = 'lblVBNroMov'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NROCHEQUE'
        DataPipeline = dbqVencimientos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbqVencimientos'
        mmHeight = 3429
        mmLeft = 47890
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object lblVBDetaMov: TppDBText
        UserName = 'lblVBDetaMov'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DetalleMov'
        DataPipeline = dbqVencimientos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbqVencimientos'
        mmHeight = 3440
        mmLeft = 68263
        mmTop = 529
        mmWidth = 71438
        BandType = 4
      end
      object lblVBFecVto: TppDBText
        UserName = 'lblVBFecVto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaVencimiento'
        DataPipeline = dbqVencimientos
        DisplayFormat = '"Vto: "  dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbqVencimientos'
        mmHeight = 3440
        mmLeft = 143934
        mmTop = 529
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MONTO'
        DataPipeline = dbqVencimientos
        DisplayFormat = '$0.00;($0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbqVencimientos'
        mmHeight = 3429
        mmLeft = 183938
        mmTop = 529
        mmWidth = 9737
        BandType = 4
      end
    end
    object fbVencBco: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object lblVBNroPag: TppSystemVariable
        UserName = 'lblVBNroPag'
        AutoSize = False
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
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 82021
        mmTop = 265
        mmWidth = 25665
        BandType = 8
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'IdBanco'
      DataPipeline = dbqVencimientos
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbqVencimientos'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object shpVB1: TppShape
          UserName = 'shpVB1'
          Brush.Color = 15263976
          ParentWidth = True
          Shape = stRoundRect
          mmHeight = 5821
          mmLeft = 0
          mmTop = 0
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
        end
        object lblVBIdCta: TppDBText
          UserName = 'lblVBIdCta'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'IdBanco'
          DataPipeline = dbqVencimientos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbqVencimientos'
          mmHeight = 3429
          mmLeft = 3175
          mmTop = 1058
          mmWidth = 12435
          BandType = 3
          GroupNo = 0
        end
        object lblVBNomBco: TppDBText
          UserName = 'lblVBNomBco'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'NomBanco'
          DataPipeline = dbqVencimientos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbqVencimientos'
          mmHeight = 3429
          mmLeft = 19844
          mmTop = 1058
          mmWidth = 55298
          BandType = 3
          GroupNo = 0
        end
        object lblVBNroCta: TppDBText
          UserName = 'lblVBNroCta'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'NumCuenta'
          DataPipeline = dbqVencimientos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbqVencimientos'
          mmHeight = 3429
          mmLeft = 80169
          mmTop = 1058
          mmWidth = 23548
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object shpVB2: TppShape
          UserName = 'shpVB2'
          ParentHeight = True
          ParentWidth = True
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 0
          mmTop = 0
          mmWidth = 197300
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'IdMov'
          DataPipeline = dbqVencimientos
          DisplayFormat = '"Cantidad de movimientos " 0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbqVencimientos'
          mmHeight = 3429
          mmLeft = 19315
          mmTop = 1323
          mmWidth = 44186
          BandType = 5
          GroupNo = 0
        end
        object lblVBTotBco: TppDBCalc
          UserName = 'lblVBTotBco'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'MONTO'
          DataPipeline = dbqVencimientos
          DisplayFormat = '$0.00;($0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbqVencimientos'
          mmHeight = 3440
          mmLeft = 173038
          mmTop = 1058
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object rpTotByBcoByMes: TppReport
    AutoStop = False
    DataPipeline = dbpTotByBcoByMes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Saldo Cuentas Bancos'
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
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 426
    Top = 428
    Version = '10.02'
    mmColumnWidth = 197300
    DataPipelineName = 'dbpTotByBcoByMes'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object lblSBTitulo: TppLabel
        UserName = 'lblSBTitulo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblSBTitulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 95250
        mmTop = 1588
        mmWidth = 17314
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object shpSdoBcos1: TppShape
        UserName = 'shpSdoBcos1'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 4
      end
      object lblSBIdCta: TppDBText
        UserName = 'lblSBIdCta'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'IdBanco'
        DataPipeline = dbpTotByBcoByMes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpTotByBcoByMes'
        mmHeight = 3429
        mmLeft = 2910
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object lblSBBanco: TppDBText
        UserName = 'lblSBBanco'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Banco'
        DataPipeline = dbpTotByBcoByMes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpTotByBcoByMes'
        mmHeight = 3429
        mmLeft = 25665
        mmTop = 794
        mmWidth = 68527
        BandType = 4
      end
      object lblSBNroCta: TppDBText
        UserName = 'lblSBNroCta'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NroCta'
        DataPipeline = dbpTotByBcoByMes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpTotByBcoByMes'
        mmHeight = 3429
        mmLeft = 100277
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTALBANCO'
        DataPipeline = dbpTotByBcoByMes
        DisplayFormat = '$0.00;($0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpTotByBcoByMes'
        mmHeight = 3429
        mmLeft = 147638
        mmTop = 794
        mmWidth = 43656
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object shpSdoBcos2: TppShape
        UserName = 'shpSdoBcos2'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 9260
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTALBANCO'
        DataPipeline = dbpTotByBcoByMes
        DisplayFormat = '"Total Saldos " $0.00;($0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpTotByBcoByMes'
        mmHeight = 5027
        mmLeft = 150284
        mmTop = 2381
        mmWidth = 40481
        BandType = 7
      end
      object lblSBEmision: TppSystemVariable
        UserName = 'lblSBEmision'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2381
        mmTop = 2381
        mmWidth = 28046
        BandType = 7
      end
    end
  end
  object rpEnCartera: TppReport
    AutoStop = False
    DataPipeline = dbpqEnCartera
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
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
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 455
    Top = 428
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpqEnCartera'
    object hbVtoTer: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object lblBTTitulo: TppLabel
        UserName = 'lblBTTitulo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblBTTitulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 529
        mmTop = 0
        mmWidth = 15325
        BandType = 0
      end
      object lblBTEmision: TppSystemVariable
        UserName = 'lblBTEmision'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3429
        mmLeft = 167989
        mmTop = 0
        mmWidth = 28025
        BandType = 0
      end
    end
    object dbVtoTer: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object lblBTNroMov: TppDBText
        UserName = 'lblBTNroMov'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'IdMov'
        DataPipeline = dbpqEnCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpqEnCartera'
        mmHeight = 3429
        mmLeft = 1058
        mmTop = 265
        mmWidth = 8467
        BandType = 4
      end
      object lblBTBanco: TppDBText
        UserName = 'lblBTBanco'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombreBanco'
        DataPipeline = dbpqEnCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpqEnCartera'
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 265
        mmWidth = 24077
        BandType = 4
      end
      object lblBTNroChq: TppDBText
        UserName = 'lblBTNroChq'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NroCheque'
        DataPipeline = dbpqEnCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpqEnCartera'
        mmHeight = 3429
        mmLeft = 37571
        mmTop = 265
        mmWidth = 13758
        BandType = 4
      end
      object lblBTTitChq: TppDBText
        UserName = 'lblBTTitChq'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Titular'
        DataPipeline = dbpqEnCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpqEnCartera'
        mmHeight = 3440
        mmLeft = 53975
        mmTop = 265
        mmWidth = 49742
        BandType = 4
      end
      object lblBTEndoso: TppDBText
        UserName = 'lblBTEndoso'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Endoso'
        DataPipeline = dbpqEnCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpqEnCartera'
        mmHeight = 3440
        mmLeft = 106098
        mmTop = 265
        mmWidth = 58208
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MONTO'
        DataPipeline = dbpqEnCartera
        DisplayFormat = '$0.00;($0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpqEnCartera'
        mmHeight = 3429
        mmLeft = 172509
        mmTop = 265
        mmWidth = 21431
        BandType = 4
      end
    end
    object fbVtoTer: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
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
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 3704
        mmTop = 794
        mmWidth = 19315
        BandType = 8
      end
      object lblVTTotPer: TppDBCalc
        UserName = 'lblVTTotPer'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MONTO'
        DataPipeline = dbpqEnCartera
        DisplayFormat = '$0.00;($0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpqEnCartera'
        mmHeight = 3440
        mmLeft = 172509
        mmTop = 265
        mmWidth = 21431
        BandType = 8
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'FechaVencimiento'
      DataPipeline = dbpqEnCartera
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpqEnCartera'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object shpBT1: TppShape
          UserName = 'shpBT1'
          ParentHeight = True
          ParentWidth = True
          Shape = stRoundRect
          mmHeight = 5821
          mmLeft = 0
          mmTop = 0
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
        end
        object lblBTVencimiento: TppDBText
          UserName = 'lblBTVencimiento'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataPipeline = dbpqEnCartera
          DisplayFormat = '"Vencimiento " dd/mm/yy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'dbpqEnCartera'
          mmHeight = 3429
          mmLeft = 86376
          mmTop = 1058
          mmWidth = 24892
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object lblVTTotDia: TppDBCalc
          UserName = 'lblVTTotDia'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'MONTO'
          DataPipeline = dbpqEnCartera
          DisplayFormat = '$0.00;($0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpqEnCartera'
          mmHeight = 3429
          mmLeft = 172509
          mmTop = 0
          mmWidth = 21421
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'IdMov'
          DataPipeline = dbpqEnCartera
          DisplayFormat = '"Cantidad de movimientos " 0 '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbpqEnCartera'
          mmHeight = 3440
          mmLeft = 11906
          mmTop = 0
          mmWidth = 96573
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
