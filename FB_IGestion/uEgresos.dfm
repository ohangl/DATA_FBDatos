object frmEgresos: TfrmEgresos
  Left = 265
  Top = 233
  BorderStyle = bsSingle
  Caption = 'Administraci'#243'n de Egresos: Compras, Gastos y Servicios'
  ClientHeight = 541
  ClientWidth = 802
  Color = 14085088
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    00000000000000000000000000000FEFEFEFEFEE00000000DD7DFDFDFDF00EFE
    FEFEFEEE00044000DDD7DFDFDFD00FEFEFEFEEE7044444408DDD7DFDFDF00EFE
    FEFEEE7E044F4440D8DDD7DFDFD00FEFEFEEE7E604FF44405D8DDD7DFDF00EFE
    FEEE7E600FF74440D5D8DDD7DFD00FEFEEE7E600FF77FFF05D5D8DDD7DF00EFE
    EE7E600FF7777770D5D5D8DDD7D00FEEE7E6E600F77777705D505D8DDD700EEE
    7E6E6E600F770000550005D8DDD00EE7E6E6E66600F70440500F005D8DD00000
    00000000040F044000FFF00000000004444F7704444004440F77FF4440000004
    444F770444444440F7777FF440000044444F77000044440F777777FF44000044
    FF777777F04444000077F444440000044FF7777F044444444077F44440000004
    44FF77F0444004444077F44440000000000FFF000440F0000000000000000AA7
    A200F00204407F40333B3B3B7BB00AAA7A200022000077F003B3B3B7BBB00FAA
    A7A202A20777777F003B3B7BBBF00AFAAA7A2A2A0777777FF003B7BBBFB00FAF
    AAA7A2A20FFF77FF003B7BBBFBF00AFAFAAA7A2A04447FF003B7BBBFBFB00FAF
    AFAAA7A20444FF403B7BBBFBFBF00AFAFAFAAA7A0444F440B7BBBFBFBFB00FAF
    AFAFAAA7044444407BBBFBFBFBF00AFAFAFAFAAA00044000BBBFBFBFBFB00FAF
    AFAFAFAA00000000BBFBFBFBFBF0000000000000000000000000000000000007
    E0000007E0000006600000000000000000000000000000000000000000000000
    000000000000000000000000000000000000E0000007E0000007C0000003C000
    0003E0000007E000000700000000000000000000000000000000000000000000
    000000000000000000000000000000000000000660000007E0000007E000}
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcGastos: TRzPageControl
    Left = 0
    Top = 0
    Width = 802
    Height = 509
    Cursor = crHandPoint
    ActivePage = tsCtaCteP
    ActivePageDefault = tsCompras
    Align = alClient
    BackgroundColor = clWhite
    BoldCurrentTab = True
    Color = 16119543
    UseColoredTabs = True
    CutCornerSize = 10
    DragCursor = crHandPoint
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FlatColor = 10263441
    ParentBackgroundColor = False
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    RowIndent = 0
    RowOverlap = 0
    ShowFocusRect = False
    ShowFullFrame = False
    ShowHint = False
    ShowShadow = False
    TabColors.HighlightBar = 1350640
    TabHeight = 75
    TabIndex = 2
    TabOrder = 0
    TabOrientation = toLeft
    TabSequence = tsReverse
    TabStyle = tsRoundCorners
    TabWidth = 63
    TextColors.Selected = 17920
    TextColors.Unselected = 6447616
    TextAlignment = haLeft
    FixedDimension = 63
    object tsCompras: TRzTabSheet
      Color = 12704488
      Caption = '&Compras'
      object gbUltOperComp: TRzGroupBox
        Left = 441
        Top = 0
        Width = 295
        Height = 509
        Align = alClient
        Alignment = taCenter
        Caption = '  Ultimas Operaciones '
        Color = 15726586
        Font.Charset = ANSI_CHARSET
        Font.Color = 16384
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStop = 10483197
        GroupStyle = gsCustom
        ParentFont = False
        TabOrder = 0
        object gViewFCom: TwwDBGrid
          Left = 2
          Top = 16
          Width = 291
          Height = 491
          Selected.Strings = (
            'FECHAF'#9'7'#9'Fecha'#9'F'
            'DESCCORTA'#9'3'#9'TC'#9'F'
            'NROFACTURA'#9'12'#9'Comprobante'#9'F'
            'NOMBRE'#9'13'#9'Proveedor'#9'F'
            'TOTAL'#9'14'#9'Monto'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = 15726586
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          DataSource = dsViewFCom
          Font.Charset = ANSI_CHARSET
          Font.Color = 18944
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyOptions = [dgEnterToTab]
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = 18944
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          UseTFields = False
          OnDblClick = gViewFComDblClick
          OnUpdateFooter = gViewFComUpdateFooter
          FooterColor = 15726586
          FooterCellColor = 15726586
        end
      end
      object gbOperCompras: TRzGroupBox
        Left = 0
        Top = 0
        Width = 441
        Height = 509
        Align = alLeft
        Caption = '  Ingreso de Comprobantes '
        Color = 15726586
        Font.Charset = ANSI_CHARSET
        Font.Color = 16384
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStop = 10483197
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 1
        object pnlHeaderFC: TRzPanel
          Left = 0
          Top = 22
          Width = 441
          Height = 103
          Hint = 
            'Esc = Salir.  F5 = Calculadora. F1 = Nuevo Proveedor. F3 = Busca' +
            'r Proveedor.'
          Align = alTop
          BorderOuter = fsNone
          Color = 15726586
          GridColor = clWhite
          GridStyle = gsSolidLines
          GridXSize = 9
          GridYSize = 9
          ShowGrid = True
          TabOrder = 0
          object bvlFacCom: TBevel
            Left = 66
            Top = 45
            Width = 267
            Height = 21
            Shape = bsFrame
          end
          object lblProvFC: TLabel
            Left = 5
            Top = 32
            Width = 54
            Height = 13
            Caption = 'Pro&veedor:'
            FocusControl = edtProvFC
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblNomProvFC: TDBText
            Left = 70
            Top = 48
            Width = 257
            Height = 14
            DataField = 'NombreProveedor'
            DataSource = dsFacCom
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblComprobanteFC: TLabel
            Left = 5
            Top = 67
            Width = 69
            Height = 13
            Caption = 'Co&mprobante:'
            FocusControl = edtComprobanteFC
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblFechaFFC: TLabel
            Left = 349
            Top = -3
            Width = 33
            Height = 13
            Caption = '&Fecha:'
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblPeriodoFC: TLabel
            Left = 277
            Top = -3
            Width = 40
            Height = 13
            Caption = 'P&eriodo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblTCompFC: TLabel
            Left = 226
            Top = 67
            Width = 107
            Height = 13
            Caption = '&Tipo de Comprobante:'
            FocusControl = cbTCompFC
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblCompRefFC: TLabel
            Left = 335
            Top = 67
            Width = 56
            Height = 13
            Caption = 'Re&ferencia:'
            FocusControl = cbCompRefFC
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblCaiProvFC: TLabel
            Left = 104
            Top = 67
            Width = 87
            Height = 13
            Caption = 'C.A.&I. Proveedor:'
            FocusControl = edtCaiProvFC
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblDetEmpFC: TLabel
            Left = 335
            Top = 32
            Width = 45
            Height = 13
            Caption = '&Empresa:'
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object edtProvFC: TwwDBEdit
            Left = 5
            Top = 46
            Width = 57
            Height = 20
            BorderStyle = bsNone
            Color = 15726586
            DataField = 'Proveedor'
            DataSource = dsFacCom
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameRaised
            Frame.NonFocusStyle = efsFrameSingle
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = edtProvFCEnter
            OnExit = edtProvFCExit
            OnKeyDown = edtProvFCKeyDown
          end
          object edtComprobanteFC: TwwDBEdit
            Left = 5
            Top = 81
            Width = 96
            Height = 19
            BorderStyle = bsNone
            Color = 15726586
            DataField = 'NroFactura'
            DataSource = dsFacCom
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameRaised
            Frame.NonFocusStyle = efsFrameSingle
            ParentFont = False
            TabOrder = 9
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnExit = edtComprobanteFCExit
            OnKeyDown = edtPeriodoFCKeyDown
          end
          object cbTCompFC: TwwDBLookupCombo
            Left = 226
            Top = 81
            Width = 107
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Descripcion'#9'20'#9'Tipos de Comprobantes'#9'F')
            DataField = 'TipoFactura'
            DataSource = dsFacCom
            LookupTable = dmGestion.TipoComp
            LookupField = 'IdComprobante'
            Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
            Color = 15726586
            ButtonEffects.Transparent = True
            ButtonEffects.Flat = True
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameRaised
            Frame.NonFocusStyle = efsFrameSingle
            ParentFont = False
            TabOrder = 11
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            ShowMatchText = True
            OnChange = cbTCompFCChange
            OnKeyDown = edtPeriodoFCKeyDown
          end
          object cbCompRefFC: TwwDBLookupComboDlg
            Left = 335
            Top = 81
            Width = 98
            Height = 19
            Picture.PictureMask = '####-########'
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            BorderStyle = bsNone
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = 13434879
            GridTitleAlignment = taCenter
            Caption = 'Comprobantes del Proveedor'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'NroFactura'#9'13'#9'N'#186' Factura'#9'F'
              'FechaF'#9'10'#9'Fecha'#9'F'
              'Total'#9'10'#9'Total'#9#9)
            DataField = 'CompRef'
            DataSource = dsFacCom
            LookupTable = qFacProv
            LookupField = 'NroFactura'
            AutoSelect = False
            Color = 15726586
            ButtonStyle = cbsDownArrow
            ButtonEffects.Transparent = True
            ButtonEffects.Flat = True
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameRaised
            Frame.NonFocusStyle = efsFrameSingle
            ParentFont = False
            TabOrder = 12
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
            UseTFields = False
            OnEnter = cbCompRefFCEnter
            OnExit = cbCompRefFCExit
            OnKeyDown = edtPeriodoFCKeyDown
          end
          object pnlTipoCompFC: TRzPanel
            Left = 232
            Top = 0
            Width = 33
            Height = 30
            BorderInner = fsGroove
            BorderOuter = fsFlatRounded
            Caption = 'A'
            Font.Charset = ANSI_CHARSET
            Font.Color = 125
            Font.Height = -27
            Font.Name = 'Arial Black'
            Font.Style = [fsBold]
            GridStyle = gsSolidLines
            ParentColor = True
            ParentFont = False
            ShowGrid = True
            TabOrder = 4
          end
          object edtPeriodoFC: TwwDBDateTimePicker
            Left = 277
            Top = 11
            Width = 62
            Height = 19
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = 15726586
            DataField = 'Periodo'
            DataSource = dsFacCom
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
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 5
            DisplayFormat = 'mm/yy'
            OnKeyDown = edtPeriodoFCKeyDown
          end
          object edtCaiProvFC: TwwDBEdit
            Left = 104
            Top = 81
            Width = 120
            Height = 19
            BorderStyle = bsNone
            Color = 15726586
            DataField = 'CaiProv'
            DataSource = dsFacCom
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameRaised
            Frame.NonFocusStyle = efsFrameSingle
            ParentFont = False
            TabOrder = 10
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtPeriodoFCKeyDown
          end
          object edtFechaFFC: TwwDBDateTimePicker
            Left = 349
            Top = 11
            Width = 83
            Height = 19
            AutoFillDateAndTime = True
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = 15726586
            DataField = 'FechaF'
            DataSource = dsFacCom
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
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 6
            DisplayFormat = 'dd/mm/yy'
            OnKeyDown = edtPeriodoFCKeyDown
          end
          object btnAddCompra: TRzBitBtn
            Left = 5
            Top = 0
            Width = 76
            Height = 30
            Hint = 'ingresar un nuevo comprobante de compras'
            Caption = 'Ingresar Compras'
            Color = 15726586
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HotTrack = True
            ParentFont = False
            TabOrder = 0
            OnClick = btnAddCompraClick
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFA6A7A7858585FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFE2E2E20000009D
              9D9DE8E8E8FFFFFFF6F6F77D7F7DF4F4F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              6767670000005757575F5F5F4C4C4C5D5C5D595A596B6B6B161716B1B1B18180
              80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E5E5E5656565050505A5A5A60606000
              00005C5C5C797B79656565232323EFF0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFDEDEDEBBBBBBA7A8A78F908F949594DFE0DF8889886E6E6EFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E589898934353436363652
              53525C5C5CFAFAFAD7D7D75B5B5BE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              1F1F1F0808084242422020209D9D9D5151515C5C5C2222222B2C2C3C3C3CB4B5
              B5FFFFFFFFFFFFFFFFFFFFFFFF8888884242425D5D5D3838383939399898989E
              9E9E7B7B7B8E8E8E7C7B7B909090777777FFFFFFFFFFFFFFFFFFFFFFFF2D2E2D
              4848483535357777772121217F7F7F7B7B7B9494948181818A8A8A6F6F6F4444
              44FFFFFFFFFFFFFFFFFFFFFFFF0808084F4F4F6B6B6B363636373737B3B3B37D
              7D7D838383848484868686A1A1A1262626FFFFFFFFFFFFFFFFFFF5F5F5030303
              5050502929293A3A3A1212123A3A3A4242425757578888887474749090905B5B
              5BDDDEDDFFFFFFFFFFFF9191913C3C3C6969698181816C6C6C616161C5C5C5DD
              DDDDC1C1C19C9C9C7071702E2E2E2626269E9F9EFFFFFFFFFFFF979897484949
              0909092323236464649F9F9F979797807F80000000414242757575A5A5A5DDDD
              DD757573FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFACBCBCB9C9D9C8B8B8B80
              80804D4D4D0F0E058988769F9F88595943000000080837A7A7A4FFFFFFFFFFFF
              FFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00003600008D0000970000
              C62020E43433D3DEDFE0FFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
              FFFEFFFFFF8C8DE0A4A5E2D1D1EBFFFFFBFFFFFFFFFFFFFFFFFF}
            Margin = 0
            Spacing = 0
          end
          object btnAddRemito: TRzBitBtn
            Left = 81
            Top = 0
            Width = 76
            Height = 30
            Hint = 'ingresar un remito de proveedor'
            Caption = 'Remitos Proveedor'
            Color = 10736081
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HotTrack = True
            ParentFont = False
            TabOrder = 1
            OnClick = btnAddRemitoClick
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
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8895E5E5E5EAC
              E8E8E8E8E8E8E8E8E8E88181818181ACE8E8E8E8E8E8E8E8E8E889E6E6D0E35E
              5EACE8E8E8E8E8E8E8E881ACACACE38181ACE8E8E8E8E8E8E8E889D7D7D0D7D7
              E35EE8E8E8E8E8E8E8E881D7D7ACD7D7E381E8E8E8E8E8E8E8E889E6E6D0E6E6
              E65EACE8E8E8E8E8E8E881ACACACACACAC81ACE8E8E8E8E8E8E889D7ACD0D7D7
              D7E35EACE8E8E8E8E8E881D7ACACD7D7D7E381ACE8E8E8E8E8E889E6E6D0E6E6
              E6E6E35E5E5EACE8E8E881ACACACACACACACE3818181ACE8E8E889D7D7D0D7D7
              D7D7D7D7D7E35E5E5EAC81D7D7ACD7D7D7D7D7D7D7E3818181AC89E6E6D0E6E6
              E6E6E6E6E6E6E6E6E35E81ACACACACACACACACACACACACACE38189D7D7D0D7D7
              D7D7D7D7D7D7D7D7D75E81D7D7ACD7D7D7D7D7D7D7D7D7D7D78189E6E6D0E6E6
              E6E6E6E6E6E6E6E6E65E81ACACACACACACACACACACACACACAC8189D7ACD0D7D7
              D7D7D7D7D7D7D7D7D75E81D7ACACD7D7D7D7D7D7D7D7D7D7D78189D7D7D0D7D7
              D7D7D7D7D7D7D7D7D75E81D7D7ACD7D7D7D7D7D7D7D7D7D7D78189D7D7D0D7D7
              D7D7D7D7D7D7D7D7D75E81D7D7ACD7D7D7D7D7D7D7D7D7D7D781898989898989
              8989898989898989898981818181818181818181818181818181E8E8E8E8E8E8
              E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
            Margin = 0
            NumGlyphs = 2
            Spacing = 0
          end
          object btnCancelFC: TRzBitBtn
            Left = 159
            Top = 0
            Width = 33
            Height = 30
            Hint = 'cancelar comprobante actual'
            Color = 15726586
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HotTrack = True
            ParentFont = False
            TabOrder = 2
            TabStop = False
            OnClick = btnCancelFCClick
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
            Margin = 4
            NumGlyphs = 2
            Spacing = 0
          end
          object btnPrintFC: TRzBitBtn
            Left = 194
            Top = 0
            Width = 33
            Height = 30
            Cursor = crHandPoint
            Hint = 'Imprimir comprobante'
            Color = 15726586
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            LightTextStyle = True
            ParentFont = False
            TabOrder = 3
            TabStop = False
            OnClick = btnPrintFCClick
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
            Margin = 4
            NumGlyphs = 2
            Spacing = 0
          end
          object cbFCDetEmp: TwwDBLookupCombo
            Left = 335
            Top = 46
            Width = 97
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'NOMBREEMPRESA'#9'20'#9'Empresas'#9'F')
            DataField = 'IdEmpresa'
            DataSource = dsFacCom
            LookupTable = dmGestion.Empresas
            LookupField = 'IDEMPRESA'
            Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
            Color = 15726586
            ButtonEffects.Transparent = True
            ButtonEffects.Flat = True
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameRaised
            Frame.NonFocusStyle = efsFrameSingle
            ParentFont = False
            TabOrder = 8
            AutoDropDown = True
            ShowButton = True
            UseTFields = False
            PreciseEditRegion = False
            AllowClearKey = False
            ShowMatchText = True
            OnEnter = cbFCDetEmpEnter
            OnKeyDown = edtPeriodoFCKeyDown
          end
        end
        object gbFootIFC: TRzGroupBox
          Left = 0
          Top = 361
          Width = 441
          Height = 148
          Align = alBottom
          Alignment = taRightJustify
          Caption = '  Total Comprobante '
          Color = 15726586
          Constraints.MaxHeight = 530
          GradientColorStyle = gcsCustom
          GradientColorStop = 10483197
          GroupStyle = gsBanner
          TabOrder = 2
          VisualStyle = vsGradient
          object lblIINCFC: TLabel
            Left = 280
            Top = 19
            Width = 74
            Height = 26
            Caption = 'No computable'#13#10'/Imp. Internos:'
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblIvaFC1: TLabel
            Left = 126
            Top = 65
            Width = 46
            Height = 26
            Caption = 'IVA Tasa '#13#10'General:'
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblIvaFC2: TLabel
            Left = 203
            Top = 65
            Width = 54
            Height = 26
            Caption = 'IVA Tasa'#13#10'Diferencial:'
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblNetoFC: TLabel
            Left = 358
            Top = 19
            Width = 32
            Height = 26
            Caption = 'TOTAL'#13#10'NETO:'
            Font.Charset = ANSI_CHARSET
            Font.Color = 14221312
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblTotalFC: TLabel
            Left = 358
            Top = 75
            Width = 45
            Height = 16
            Caption = 'TOTAL:'
            FocusControl = edtTotalFC
            Font.Charset = ANSI_CHARSET
            Font.Color = 14221312
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
          end
          object lblMtoExtFC: TLabel
            Left = 203
            Top = 19
            Width = 38
            Height = 26
            Caption = 'Monto '#13#10'Exento:'
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblPercFC: TLabel
            Left = 5
            Top = 65
            Width = 75
            Height = 26
            Caption = 'Percepciones y '#13#10'pag.a cta IVA:'
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblBonifFC: TLabel
            Left = 79
            Top = 19
            Width = 64
            Height = 26
            Caption = 'Bonificaci'#243'n'#13#10'/Descuentos:'
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblSubTFC: TLabel
            Left = 5
            Top = 19
            Width = 28
            Height = 26
            Caption = 'Sub'#13#10'Total:'
            Font.Charset = ANSI_CHARSET
            Font.Color = 14221312
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblIvaFC3: TLabel
            Left = 280
            Top = 65
            Width = 47
            Height = 26
            Caption = 'IVA Otras'#13#10'Tasas:'
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lbDetObsFV: TLabel
            Left = 5
            Top = 112
            Width = 197
            Height = 13
            AutoSize = False
            Caption = 'Detalle, Observaciones de la operaci'#243'n'
            FocusControl = edtDetObsFV
            Font.Charset = ANSI_CHARSET
            Font.Color = 18944
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object edtIINCFC: TwwDBEdit
            Left = 280
            Top = 46
            Width = 74
            Height = 19
            BorderStyle = bsNone
            DataField = 'NoComp'
            DataSource = dsFacCom
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 4
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtPeriodoFCKeyDown
            OnKeyPress = edtSubTotalFCKeyPress
          end
          object edtIvaFC1: TwwDBEdit
            Left = 126
            Top = 92
            Width = 74
            Height = 19
            BorderStyle = bsNone
            DataField = 'IvaAlicuota1'
            DataSource = dsFacCom
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 8
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtPeriodoFCKeyDown
            OnKeyPress = edtSubTotalFCKeyPress
          end
          object edtIvaFC2: TwwDBEdit
            Left = 203
            Top = 92
            Width = 74
            Height = 19
            BorderStyle = bsNone
            DataField = 'IvaAlicuota2'
            DataSource = dsFacCom
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 9
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtPeriodoFCKeyDown
            OnKeyPress = edtSubTotalFCKeyPress
          end
          object edtTotalFC: TwwDBEdit
            Left = 358
            Top = 92
            Width = 80
            Height = 19
            BorderStyle = bsNone
            DataField = 'Total'
            DataSource = dsFacCom
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
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtPeriodoFCKeyDown
            OnKeyPress = edtSubTotalFCKeyPress
          end
          object edtNetoFC: TwwDBEdit
            Left = 358
            Top = 46
            Width = 80
            Height = 19
            BorderStyle = bsNone
            DataField = 'Neto'
            DataSource = dsFacCom
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 11
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtPeriodoFCKeyDown
            OnKeyPress = edtSubTotalFCKeyPress
          end
          object edtMtoExtFC: TwwDBEdit
            Left = 203
            Top = 46
            Width = 74
            Height = 19
            BorderStyle = bsNone
            DataField = 'Exento'
            DataSource = dsFacCom
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 3
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtPeriodoFCKeyDown
            OnKeyPress = edtSubTotalFCKeyPress
          end
          object edtMtoPercFC: TwwDBEdit
            Left = 49
            Top = 92
            Width = 74
            Height = 19
            BorderStyle = bsNone
            DataField = 'PPACuenta'
            DataSource = dsFacCom
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 7
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtPeriodoFCKeyDown
            OnKeyPress = edtSubTotalFCKeyPress
          end
          object edtBonifFC: TwwDBEdit
            Left = 126
            Top = 46
            Width = 74
            Height = 19
            BorderStyle = bsNone
            DataField = 'Bonificacion'
            DataSource = dsFacCom
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 2
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtPeriodoFCKeyDown
            OnKeyPress = edtSubTotalFCKeyPress
          end
          object btnPagosFC: TRzBitBtn
            Left = 408
            Top = 115
            Width = 30
            Height = 30
            Hint = 'grabar pagos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            ParentColor = True
            ParentFont = False
            TabOrder = 14
            OnClick = btnPagosFCClick
            Glyph.Data = {
              76030000424D7603000000000000360000002800000011000000100000000100
              1800000000004003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFE8EBEDA89186977A66AF9E93DDDCE2FFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFADADAD696969787A7B594D47662400A55F0E
              C07B24C38427AB670EB49786FFFFFFD5C9C0FDFFFF00FFFFFFFFFFFFFFFFFF3F
              3F3F444444BDBFBDECECECD5DADC494D508D6E5AB4722DE2AD3CF5CE58D69F3E
              A9733BB16D11FFFFFF00FFFFFFFFFFFFFFFFFF383838737373999999D6D6D7E5
              E5E5A1A3A33C41456275887E5641F9CD55FDE073FFE76BB88C69FFFFFF00FFFF
              FFFFFFFFFFFFFF696A6B595958A3A3A3DEDFDFDBDBDCAAABAC777575C8A37ED0
              9C35FDE48EFCD6B2F5C18CD4BAAEFFFFFF00FFFFFFFFFFFFFFFFFF2F2F2E7777
              77BABBBADFDEDECACACC9394956C6865D0A278D39A43F4BA64FFE2C5E0AB76E7
              E7EAFFFFFF00FFFFFFFFFFFFFFFFFF474246CECFCFFEFEFEFFFFFFD3D4D39293
              929FA0A0DAE1E6848D9966666ED8B9A4C29278FFFFFFFFFFFF00FFFFFFFBF6F9
              52B26C658A67594850AC9AA79D989C6C6C6D606060CDCECEDCDCDCABAAAA6364
              64FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFAAC5A77ED8D58DEAE431DC7E1DB053
              2750305F5A5DA5A6A6E3E4E4EFEEEFBFC1C0525252FFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFF67A87677F9D17BF9CD2EF69526BB5E3543365B565AAEAEADD7D7D7
              D1D2D19FA09F565755FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF13AC5019FF9A22
              FF9400BF4FB7A6A75B4E57A7A6A6D8D9D9FFFFFFD0D2D0878786868786FFFFFF
              FFFFFFFFFFFFFFFFFF00D7DBD4007C104C774C00DE5D02FF7E00AA3D364D38D6
              CBD4FFFFFFF2F3F4BCBCBC626262D2D1D2FFFFFFFFFFFFFFFFFFFFFFFF00EAF3
              ECF5EEF1FFFFFF4D81540083220B93361179260021002333256F6E70818080D2
              D3D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFCCC7
              C7819A82657B6798A89CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
          end
          object edtPrcBonifFC: TwwDBEdit
            Left = 79
            Top = 46
            Width = 43
            Height = 19
            BorderStyle = bsNone
            DataField = 'PrcBonif'
            DataSource = dsFacCom
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 1
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtPeriodoFCKeyDown
            OnKeyPress = edtSubTotalFCKeyPress
          end
          object edtPercFC: TwwDBEdit
            Left = 5
            Top = 92
            Width = 42
            Height = 19
            BorderStyle = bsNone
            DataField = 'AlcPercep'
            DataSource = dsFacCom
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 6
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtPeriodoFCKeyDown
            OnKeyPress = edtSubTotalFCKeyPress
          end
          object edtSubTotalFC: TwwDBEdit
            Left = 5
            Top = 46
            Width = 70
            Height = 19
            BorderStyle = bsNone
            DataField = 'SubTotal'
            DataSource = dsFacCom
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 0
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtPeriodoFCKeyDown
            OnKeyPress = edtSubTotalFCKeyPress
          end
          object btnGrabarRemX: TRzBitBtn
            Left = 344
            Top = 115
            Width = 30
            Height = 30
            Cursor = crHandPoint
            Hint = 'Grabar remito del proveedor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            LightTextStyle = True
            ParentColor = True
            ParentFont = False
            TabOrder = 16
            Visible = False
            OnClick = btnGrabarRemXClick
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
          object edtIvaFC3: TwwDBEdit
            Left = 280
            Top = 92
            Width = 74
            Height = 19
            BorderStyle = bsNone
            DataField = 'IvaOtAlc'
            DataSource = dsFacCom
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 10
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtPeriodoFCKeyDown
            OnKeyPress = edtSubTotalFCKeyPress
          end
          object edtNroRegPercFC: TwwDBEdit
            Left = 87
            Top = 71
            Width = 35
            Height = 19
            BorderStyle = bsNone
            DataField = 'NroRegPerc'
            DataSource = dsFacCom
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 5
            UnboundDataType = wwDefault
            UnboundAlignment = taRightJustify
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtPeriodoFCKeyDown
          end
          object edtDetObsFV: TwwDBEdit
            Left = 5
            Top = 126
            Width = 195
            Height = 19
            AutoFillDate = False
            BorderStyle = bsNone
            DataField = 'Detalle'
            DataSource = dsFacCom
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 13
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalGTKeyDown
            OnKeyPress = edtTotalGTKeyPress
          end
          object btnModPreciosProd: TRzBitBtn
            Left = 376
            Top = 115
            Width = 30
            Height = 30
            Cursor = crHandPoint
            Hint = 'administraci'#243'n de precios'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            LightTextStyle = True
            ParentColor = True
            ParentFont = False
            TabOrder = 15
            TabStop = False
            OnClick = btnPreciosProdClick
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
            Spacing = 0
          end
        end
        object gbProductosComprados: TRzGroupBox
          Left = 0
          Top = 125
          Width = 441
          Height = 236
          Align = alClient
          Alignment = taCenter
          Caption = '  Productos  Comprados '
          Color = 15726586
          Font.Charset = ANSI_CHARSET
          Font.Color = 16384
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GradientColorStyle = gcsCustom
          GradientColorStop = 10483197
          GroupStyle = gsBanner
          ParentFont = False
          TabOrder = 1
          object gFacC: TwwDBGrid
            Left = 0
            Top = 22
            Width = 441
            Height = 214
            Selected.Strings = (
              'IdItem'#9'3'#9'N'#186#9'F'#9'Producto'
              'IdArticulo'#9'6'#9'C'#243'digo'#9'F'#9'Producto'
              'Producto'#9'30'#9'Descripci'#243'n'#9'F'#9'Producto'
              'Cantidad'#9'4'#9'#'#9'F'#9'Producto'
              'UPrecioNeto'#9'10'#9'U Neto'#9'F'#9'Precios'
              'UPrecioFinal'#9'10'#9'U Final'#9'F'#9'Precios'
              'TPrecioFinal'#9'10'#9'TFinal'#9'F'#9'Precios')
            IniAttributes.Delimiter = ';;'
            TitleColor = 15726586
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DataSource = dsItemsFC
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = 18944
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            OnCalcCellColors = gFacCCalcCellColors
            OnColEnter = gFacCColEnter
            OnColExit = gFacCColExit
            OnEnter = gFacCEnter
            OnKeyDown = gFacCKeyDown
            OnKeyPress = gFacCKeyPress
            OnUpdateFooter = gFacCUpdateFooter
            FooterColor = 15726586
            FooterCellColor = clWhite
          end
        end
      end
      object gbDiscriminacionItems: TRzGroupBox
        Left = 5
        Top = 151
        Width = 432
        Height = 219
        BorderColor = 16776176
        BorderInner = fsFlatBold
        BorderOuter = fsFlatRounded
        Caption = 'Discriminaci'#243'n de Items'
        Color = 13428479
        FlatColor = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 34816
        GradientColorStop = 15263952
        GradientDirection = gdVerticalEnd
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 2
        VisualStyle = vsGradient
        OnEnter = gbDiscriminacionItemsEnter
        object bvlCosto: TBevel
          Left = 2
          Top = 21
          Width = 186
          Height = 49
          Shape = bsFrame
        end
        object lblNetoUIFC: TLabel
          Left = 191
          Top = 30
          Width = 55
          Height = 22
          Caption = 'Precio '#13'N&eto Pesos'
          FocusControl = edtNetoUIFC
          Font.Charset = ANSI_CHARSET
          Font.Color = 3104256
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object lblImpIntIFC: TLabel
          Left = 191
          Top = 56
          Width = 77
          Height = 22
          Caption = 'No computable'#13#10'/Imp. Internos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3104256
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object lblCostoActIFC: TDBText
          Left = 90
          Top = 22
          Width = 94
          Height = 18
          Alignment = taRightJustify
          Color = clInfoBk
          DataField = 'CostoActual'
          DataSource = dsItemsFC
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblCostoIFC: TLabel
          Left = 4
          Top = 23
          Width = 71
          Height = 13
          Caption = 'Costo Actual'
          Font.Charset = ANSI_CHARSET
          Font.Color = 39680
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object bvlItemsIFC: TBevel
          Left = 186
          Top = 21
          Width = 3
          Height = 175
          Shape = bsLeftLine
          Style = bsRaised
        end
        object lblDctoItemFC: TLabel
          Left = 191
          Top = 96
          Width = 59
          Height = 22
          Caption = 'Descuentos en %'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3104256
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object lblAlcIvaIFC: TLabel
          Left = 10
          Top = 69
          Width = 44
          Height = 22
          Caption = 'Al'#237'cuota de IVA'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3104256
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object lblPesDtoItem: TLabel
          Left = 191
          Top = 124
          Width = 60
          Height = 22
          Caption = 'o Descuento'#13#10'en $'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3104256
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblFinalIFC: TLabel
          Left = 191
          Top = 154
          Width = 80
          Height = 22
          Caption = 'Precio final de '#13#10'Venta al P'#250'blico'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object lblPublicoIFC: TLabel
          Left = 4
          Top = 53
          Width = 79
          Height = 13
          Caption = 'P'#250'blico Actual'
          Font.Charset = ANSI_CHARSET
          Font.Color = 39680
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblPrecioActualIFC: TDBText
          Left = 90
          Top = 53
          Width = 94
          Height = 16
          Alignment = taRightJustify
          Color = clInfoBk
          DataField = 'FinalActual'
          DataSource = dsItemsFC
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblMarkUpActIFC: TDBText
          Left = 90
          Top = 37
          Width = 94
          Height = 18
          Alignment = taRightJustify
          Color = clInfoBk
          DataField = 'MarkUp'
          DataSource = dsItemsFC
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblMarkUpIFC: TLabel
          Left = 4
          Top = 38
          Width = 47
          Height = 13
          Caption = 'MarkUp:'
          Font.Charset = ANSI_CHARSET
          Font.Color = 39680
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblVarPer: TDBText
          Left = 298
          Top = 182
          Width = 51
          Height = 13
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'VarPFinal'
          DataSource = dsItemsFC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblValorDolar: TLabel
          Left = 10
          Top = 167
          Width = 60
          Height = 11
          Caption = '&Valor Dolar:'
          FocusControl = edtValorDolar
          Font.Charset = ANSI_CHARSET
          Font.Color = 3104256
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblNetoUDolar: TLabel
          Left = 99
          Top = 167
          Width = 84
          Height = 11
          Caption = 'Precio &Neto U$S:'
          FocusControl = edtNetoUDolar
          Font.Charset = ANSI_CHARSET
          Font.Color = 3104256
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblNUniItmFC: TLabel
          Left = 304
          Top = 21
          Width = 45
          Height = 11
          Caption = 'Unitarios'
          Font.Charset = ANSI_CHARSET
          Font.Color = 11093
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblNTotItmFC: TLabel
          Left = 392
          Top = 21
          Width = 37
          Height = 11
          Caption = 'Totales'
          Font.Charset = ANSI_CHARSET
          Font.Color = 11093
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblMtoIva: TLabel
          Left = 191
          Top = 83
          Width = 54
          Height = 11
          Caption = 'Monto IVA'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3104256
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object lblMtoIvaU: TDBText
          Left = 270
          Top = 81
          Width = 77
          Height = 18
          Alignment = taRightJustify
          Color = clInfoBk
          DataField = 'UMontoIva'
          DataSource = dsItemsFC
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblMtoIvaT: TDBText
          Left = 352
          Top = 81
          Width = 77
          Height = 18
          Alignment = taRightJustify
          Color = clInfoBk
          DataField = 'TMontoIva'
          DataSource = dsItemsFC
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edtNetoUIFC: TwwDBEdit
          Left = 270
          Top = 33
          Width = 79
          Height = 19
          BorderStyle = bsNone
          DataField = 'UPrecioNeto'
          DataSource = dsItemsFC
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = 14090240
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtNetoUIFCKeyDown
          OnKeyPress = edtNetoUIFCKeyPress
        end
        object edtNetoTIFC: TwwDBEdit
          Left = 351
          Top = 33
          Width = 79
          Height = 19
          BorderStyle = bsNone
          DataField = 'TPrecioNeto'
          DataSource = dsItemsFC
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = 14090240
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          OnKeyDown = edtNetoUIFCKeyDown
          OnKeyPress = edtNetoUIFCKeyPress
        end
        object btnAceptarIFC: TRzBitBtn
          Left = 364
          Top = 168
          Width = 30
          Height = 30
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 12
          TextStyle = tsRecessed
          OnClick = btnAceptarIFCClick
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
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8180C
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8E8E8E8E8E8181212
            0CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8E8E8E818121212
            120CE8E8E8E8E8E8E8E8E8E8E281818181DFE8E8E8E8E8E8E8E8E81812121212
            12120CE8E8E8E8E8E8E8E8E2818181818181DFE8E8E8E8E8E8E8E81812120C18
            1212120CE8E8E8E8E8E8E8E28181DFE2818181DFE8E8E8E8E8E8E818120CE8E8
            181212120CE8E8E8E8E8E8E281DFE8E8E2818181DFE8E8E8E8E8E8180CE8E8E8
            E8181212120CE8E8E8E8E8E2DFE8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8
            E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8
            E8E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8
            E8E8E8E81812120CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8
            E8E8E8E8E818120CE8E8E8E8E8E8E8E8E8E8E8E8E8E281DFE8E8E8E8E8E8E8E8
            E8E8E8E8E8E8180CE8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
          NumGlyphs = 2
          Spacing = 0
        end
        object btnCancelarIFC: TRzBitBtn
          Left = 397
          Top = 168
          Width = 30
          Height = 30
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 13
          TextStyle = tsRecessed
          OnClick = btnCancelarIFCClick
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
          Spacing = 0
        end
        object edtAlcIvaIFC: TwwDBLookupCombo
          Left = 60
          Top = 71
          Width = 122
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'DescAlicuota'#9'15'#9'Detalle Al'#237'cuota'#9'F'#9
            'CoefAlicuota'#9'8'#9'Al'#237'cuotas'#9#9)
          DataField = 'AlcIva'
          DataSource = dsItemsFC
          LookupTable = dmGestion.Alicuotas
          LookupField = 'IdAlicuota'
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = edtAlcIvaIFCEnter
          OnKeyDown = edtNetoUIFCKeyDown
        end
        object edtDctoPesItmFC: TwwDBEdit
          Left = 270
          Top = 125
          Width = 79
          Height = 19
          BorderStyle = bsNone
          DataField = 'UBonifItem'
          DataSource = dsItemsFC
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = 14090240
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 9
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtNetoUIFCKeyDown
          OnKeyPress = edtNetoUIFCKeyPress
        end
        object edtPrcDtoItmFC: TwwDBEdit
          Left = 270
          Top = 99
          Width = 79
          Height = 19
          BorderStyle = bsNone
          DataField = 'PrcBonif'
          DataSource = dsItemsFC
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = 14090240
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          OnKeyDown = edtNetoUIFCKeyDown
          OnKeyPress = edtNetoUIFCKeyPress
        end
        object edtFinalIFC: TwwDBEdit
          Left = 191
          Top = 178
          Width = 79
          Height = 19
          BorderStyle = bsNone
          DataField = 'PFinalPublico'
          DataSource = dsItemsFC
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 11
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtNetoUIFCKeyDown
          OnKeyPress = edtNetoUIFCKeyPress
        end
        object rgTipoImpInt: TRzDBRadioGroup
          Left = 4
          Top = 92
          Width = 181
          Height = 70
          DataField = 'TipoImpInt'
          DataSource = dsItemsFC
          Items.Strings = (
            'Imp. Internos incluidos'
            'Imp. Internos discriminados'
            'Sin Impuestos Internos ')
          Values.Strings = (
            '0'
            '1'
            '2')
          Alignment = taCenter
          BorderInner = fsFlat
          BorderOuter = fsFlat
          Caption = 'Tipo de Impuestos Internos '
          Color = 15720447
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 234
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GroupStyle = gsBanner
          ItemHotTrack = True
          ItemFont.Charset = DEFAULT_CHARSET
          ItemFont.Color = 3947580
          ItemFont.Height = -9
          ItemFont.Name = 'Tahoma'
          ItemFont.Style = [fsBold]
          ParentFont = False
          StartYPos = 0
          TabOnEnter = True
          TabOrder = 1
          TabStop = True
          Transparent = True
          VerticalSpacing = 0
        end
        object edtImpIntIFCUni: TwwDBEdit
          Left = 270
          Top = 58
          Width = 79
          Height = 19
          BorderStyle = bsNone
          DataField = 'UImpInt'
          DataSource = dsItemsFC
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = 14090240
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtNetoUIFCKeyDown
          OnKeyPress = edtNetoUIFCKeyPress
        end
        object pnlFootDiscArt: TRzPanel
          Left = 4
          Top = 197
          Width = 424
          Height = 18
          Align = alBottom
          Alignment = taLeftJustify
          BorderOuter = fsFlatRounded
          BorderSides = [sdLeft, sdTop, sdRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4849664
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GradientColorStyle = gcsCustom
          GradientColorStart = 34816
          GradientColorStop = 15263952
          GradientDirection = gdHorizontalCenter
          ParentColor = True
          ParentFont = False
          TabOrder = 14
          VisualStyle = vsGradient
        end
        object edtValorDolar: TwwDBEdit
          Left = 10
          Top = 179
          Width = 58
          Height = 19
          BorderStyle = bsNone
          DataField = 'ValorDolar'
          DataSource = dsItemsFC
          Font.Charset = ANSI_CHARSET
          Font.Color = clFuchsia
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameRaised
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtNetoUIFCKeyDown
          OnKeyPress = edtNetoUIFCKeyPress
        end
        object edtNetoUDolar: TwwDBEdit
          Left = 99
          Top = 179
          Width = 74
          Height = 19
          BorderStyle = bsNone
          DataField = 'UNetoDolar'
          DataSource = dsItemsFC
          Font.Charset = ANSI_CHARSET
          Font.Color = clFuchsia
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameRaised
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtNetoUIFCKeyDown
          OnKeyPress = edtNetoUIFCKeyPress
        end
        object edtImpIntIFCTot: TwwDBEdit
          Left = 351
          Top = 58
          Width = 79
          Height = 19
          BorderStyle = bsNone
          DataField = 'TImpInt'
          DataSource = dsItemsFC
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = 14090240
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          OnKeyDown = edtNetoUIFCKeyDown
          OnKeyPress = edtNetoUIFCKeyPress
        end
        object edtDctoPesTotFC: TwwDBEdit
          Left = 351
          Top = 125
          Width = 79
          Height = 19
          BorderStyle = bsNone
          DataField = 'TBonifItem'
          DataSource = dsItemsFC
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = 14090240
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameEtched
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 10
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtNetoUIFCKeyDown
          OnKeyPress = edtNetoUIFCKeyPress
        end
      end
    end
    object tsGastos: TRzTabSheet
      Color = 15527129
      ImageIndex = 37
      Caption = '&Gastos'
      object gbGastos: TRzGroupBox
        Left = 0
        Top = 0
        Width = 421
        Height = 509
        Align = alLeft
        Caption = '   Comprobantes de Gastos  '
        Color = 16053482
        Font.Charset = ANSI_CHARSET
        Font.Color = 21248
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 11468718
        GradientColorStop = clWhite
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 0
        TabStop = True
        DesignSize = (
          421
          509)
        object bvlProvGT: TBevel
          Left = 61
          Top = 103
          Width = 247
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          Shape = bsFrame
        end
        object lblProvGT: TLabel
          Left = 5
          Top = 88
          Width = 62
          Height = 13
          Caption = 'Pro&veedor:'
          FocusControl = edtProveedorGT
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblProveedorGT: TDBText
          Left = 65
          Top = 106
          Width = 238
          Height = 13
          DataField = 'NombreProveedor'
          DataSource = dsGastos
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblComprobanteGT: TLabel
          Left = 176
          Top = 54
          Width = 80
          Height = 13
          Caption = 'Co&mprobante:'
          FocusControl = edtComprobanteGT
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblFechaGT: TLabel
          Left = 80
          Top = 54
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
        object lblPeriodoGT: TLabel
          Left = 5
          Top = 54
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
        object lblTipoCompGT: TLabel
          Left = 176
          Top = 123
          Width = 106
          Height = 13
          Caption = '&Tipo comprobante:'
          FocusControl = cbTipoCompGT
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object lblCaiProvGT: TLabel
          Left = 296
          Top = 54
          Width = 94
          Height = 13
          Caption = 'C.A.I. Provee&dor:'
          FocusControl = edtCaiProvGT
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblTotalGT: TLabel
          Left = 299
          Top = 123
          Width = 115
          Height = 15
          AutoSize = False
          Caption = 'Total Comprobante: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblNoCompGT: TLabel
          Left = 327
          Top = 157
          Width = 86
          Height = 28
          AutoSize = False
          Caption = 'No computable'#13#10'/Imp. Internos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblExentoGT: TLabel
          Left = 176
          Top = 157
          Width = 47
          Height = 28
          AutoSize = False
          Caption = 'Monto Exento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object lblPPCuentaGT: TLabel
          Left = 275
          Top = 206
          Width = 91
          Height = 26
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
        object lblBonifGT: TLabel
          Left = 5
          Top = 157
          Width = 70
          Height = 28
          AutoSize = False
          Caption = 'Bonificaci'#243'n'#13#10'/Descuento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblRetGanGT: TLabel
          Left = 5
          Top = 206
          Width = 61
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
        end
        object lblRetIBtGT: TLabel
          Left = 92
          Top = 206
          Width = 77
          Height = 26
          AutoSize = False
          Caption = 'Retenci'#243'n de'#13#10'Ing. Brutos:'
          FocusControl = edtRetIBtGT
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblRetLHGT: TLabel
          Left = 176
          Top = 206
          Width = 64
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
        end
        object lblNetoGT: TLabel
          Left = 5
          Top = 422
          Width = 36
          Height = 24
          AutoSize = False
          Caption = 'Monto '#13#10'Neto:'
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblDevQDtosGT: TLabel
          Left = 341
          Top = 422
          Width = 73
          Height = 24
          AutoSize = False
          Caption = 'Devoluciones, '#13'Quitas y Dcto:'
          FocusControl = edtDevQDtosGT
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object lblIvaTGGT: TLabel
          Left = 88
          Top = 422
          Width = 50
          Height = 22
          Caption = 'IVA Tasa '#13#10'General:'
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object lblIvaTDGT: TLabel
          Left = 173
          Top = 422
          Width = 57
          Height = 22
          Caption = 'IVA Tasa'#13#10'Diferencial:'
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object lblIvaOTGT: TLabel
          Left = 260
          Top = 422
          Width = 51
          Height = 22
          Caption = 'IVA Otras'#13#10'Tasas:'
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object lblDetObsGto: TLabel
          Left = 5
          Top = 467
          Width = 197
          Height = 13
          AutoSize = False
          Caption = 'Detalle, Observaciones de la operaci'#243'n'
          FocusControl = edtDetalleGtos
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblDetEmpGT: TLabel
          Left = 311
          Top = 89
          Width = 49
          Height = 13
          Caption = '&Empresa'
          FocusControl = cbGTDetEmp
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object edtProveedorGT: TwwDBEdit
          Left = 5
          Top = 103
          Width = 53
          Height = 20
          BorderStyle = bsNone
          DataField = 'Proveedor'
          DataSource = dsGastos
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
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
          OnEnter = edtProveedorGTEnter
          OnKeyDown = edtProveedorGTKeyDown
        end
        object edtComprobanteGT: TwwDBEdit
          Left = 176
          Top = 68
          Width = 105
          Height = 19
          BorderStyle = bsNone
          DataField = 'NroFactura'
          DataSource = dsGastos
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
          OnExit = edtComprobanteGTExit
          OnKeyDown = edtFechaFGTKeyDown
        end
        object cbTipoCompGT: TwwDBLookupCombo
          Left = 176
          Top = 138
          Width = 127
          Height = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Descripcion'#9'13'#9'Descripci'#243'n'#9#9)
          DataField = 'TipoFactura'
          DataSource = dsGastos
          LookupTable = dmGestion.TipoComp
          LookupField = 'IdComprobante'
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
          TabOrder = 10
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = True
          ShowMatchText = True
          OnKeyDown = cbTipoCompGTKeyDown
        end
        object pnlTipoCompGT: TRzPanel
          Left = 123
          Top = 20
          Width = 34
          Height = 32
          BorderInner = fsGroove
          BorderOuter = fsFlat
          BorderShadow = clNone
          Caption = 'A'
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = 12517376
          Font.Height = -27
          Font.Name = 'Arial Black'
          Font.Style = []
          GridColor = 10813393
          GridStyle = gsSolidLines
          GridXSize = 6
          GridYSize = 6
          ParentFont = False
          ShowGrid = True
          TabOrder = 0
        end
        object edtFechaFGT: TwwDBDateTimePicker
          Left = 79
          Top = 68
          Width = 91
          Height = 19
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'Tahoma'
          CalendarAttributes.Font.Style = []
          DataField = 'FechaF'
          DataSource = dsGastos
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
          TabOrder = 4
          OnKeyDown = edtFechaFGTKeyDown
        end
        object edtPeriodoGT: TwwDBDateTimePicker
          Left = 5
          Top = 68
          Width = 68
          Height = 19
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'Tahoma'
          CalendarAttributes.Font.Style = []
          DataField = 'Periodo'
          DataSource = dsGastos
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
          TabOrder = 3
          DisplayFormat = 'mm/yy'
          OnEnter = edtPeriodoGTEnter
          OnKeyDown = edtPeriodoGTKeyDown
        end
        object edtCaiProvGT: TwwDBEdit
          Left = 296
          Top = 68
          Width = 117
          Height = 19
          BorderStyle = bsNone
          DataField = 'CaiProv'
          DataSource = dsGastos
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
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtFechaFGTKeyDown
        end
        object edtTotalGT: TwwDBEdit
          Left = 321
          Top = 138
          Width = 93
          Height = 19
          BorderStyle = bsNone
          DataField = 'Total'
          DataSource = dsGastos
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
          OnKeyDown = edtTotalGTKeyDown
          OnKeyPress = edtTotalGTKeyPress
        end
        object cbxConIvaGT: TRzCheckBox
          Left = 5
          Top = 126
          Width = 144
          Height = 30
          Hint = 'desmarque si el comprobante '#13'no ingresa al iva compras'
          Alignment = taLeftJustify
          Caption = 'Comprobante con imputaci'#243'n impositiva'
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentFont = False
          State = cbUnchecked
          TabOnEnter = True
          TabOrder = 9
          Transparent = True
          OnClick = cbxConIvaGTClick
          OnEnter = cbxConIvaGTEnter
          OnExit = cbxConIvaGTExit
        end
        object btnAddGto: TRzBitBtn
          Left = 5
          Top = 20
          Width = 77
          Height = 31
          Caption = 'Ingresar &Gastos'
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TabOrder = 1
          OnClick = btnAddGtoClick
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
        object btnCancelGT: TRzBitBtn
          Left = 85
          Top = 20
          Width = 34
          Height = 31
          Cursor = crHandPoint
          Hint = 'Cancelar comprobante'
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentColor = True
          ParentFont = False
          TextShadowDepth = 1
          TabOrder = 2
          TextStyle = tsRecessed
          OnClick = btnCancelGTClick
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
          Margin = 4
          NumGlyphs = 2
        end
        object edtNoCompGT: TwwDBEdit
          Left = 334
          Top = 186
          Width = 79
          Height = 19
          AutoFillDate = False
          BorderStyle = bsNone
          DataField = 'NoComputables'
          DataSource = dsGastos
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          TabOrder = 15
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtTotalGTKeyDown
          OnKeyPress = edtTotalGTKeyPress
        end
        object edtExentoGT: TwwDBEdit
          Left = 176
          Top = 186
          Width = 79
          Height = 19
          AutoFillDate = False
          BorderStyle = bsNone
          DataField = 'Exento'
          DataSource = dsGastos
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          TabOrder = 14
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtTotalGTKeyDown
          OnKeyPress = edtTotalGTKeyPress
        end
        object edtPPCuentaGT: TwwDBEdit
          Left = 334
          Top = 234
          Width = 79
          Height = 19
          AutoFillDate = False
          BorderStyle = bsNone
          DataField = 'RetIva'
          DataSource = dsGastos
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          TabOrder = 21
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtTotalGTKeyDown
          OnKeyPress = edtTotalGTKeyPress
        end
        object edtBonificacionGT: TwwDBEdit
          Left = 67
          Top = 186
          Width = 70
          Height = 19
          AutoFillDate = False
          BorderStyle = bsNone
          DataField = 'Bonificacion'
          DataSource = dsGastos
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          TabOrder = 13
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtTotalGTKeyDown
          OnKeyPress = edtTotalGTKeyPress
        end
        object edtPrcBonifGT: TwwDBEdit
          Left = 5
          Top = 186
          Width = 58
          Height = 19
          AutoFillDate = False
          BorderStyle = bsNone
          DataField = 'PrcBonif'
          DataSource = dsGastos
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          TabOrder = 12
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtTotalGTKeyDown
          OnKeyPress = edtTotalGTKeyPress
        end
        object edtAlcPercepGT: TwwDBEdit
          Left = 275
          Top = 234
          Width = 46
          Height = 19
          AutoFillDate = False
          BorderStyle = bsNone
          DataField = 'AlcPercep'
          DataSource = dsGastos
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          TabOrder = 20
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtTotalGTKeyDown
          OnKeyPress = edtTotalGTKeyPress
        end
        object edtRetGanGT: TwwDBEdit
          Left = 5
          Top = 234
          Width = 79
          Height = 19
          AutoFillDate = False
          BorderStyle = bsNone
          DataField = 'RetGan'
          DataSource = dsGastos
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          TabOrder = 16
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtTotalGTKeyDown
          OnKeyPress = edtTotalGTKeyPress
        end
        object edtRetIBtGT: TwwDBEdit
          Left = 91
          Top = 234
          Width = 79
          Height = 19
          AutoFillDate = False
          BorderStyle = bsNone
          DataField = 'RetIBt'
          DataSource = dsGastos
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          TabOrder = 17
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtTotalGTKeyDown
          OnKeyPress = edtTotalGTKeyPress
        end
        object edtRetLHGT: TwwDBEdit
          Left = 176
          Top = 234
          Width = 79
          Height = 19
          AutoFillDate = False
          BorderStyle = bsNone
          DataField = 'RetLH'
          DataSource = dsGastos
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          TabOrder = 18
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtTotalGTKeyDown
          OnKeyPress = edtTotalGTKeyPress
        end
        object edtNroRegPerGT: TwwDBEdit
          Left = 370
          Top = 212
          Width = 43
          Height = 19
          AutoFillDate = False
          BorderStyle = bsNone
          DataField = 'NreRegPrc'
          DataSource = dsGastos
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          OnKeyDown = edtTotalGTKeyDown
          OnKeyPress = edtTotalGTKeyPress
        end
        object edtNetoGT: TwwDBEdit
          Left = 5
          Top = 447
          Width = 72
          Height = 19
          AutoFillDate = False
          BorderStyle = bsNone
          DataField = 'Neto'
          DataSource = dsGastos
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          TabOrder = 23
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtTotalGTKeyDown
          OnKeyPress = edtTotalGTKeyPress
        end
        object edtDevQDtosGT: TwwDBEdit
          Left = 341
          Top = 447
          Width = 72
          Height = 19
          AutoFillDate = False
          BorderStyle = bsNone
          DataField = 'DevQDtos'
          DataSource = dsGastos
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          TabOrder = 27
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtTotalGTKeyDown
          OnKeyPress = edtTotalGTKeyPress
        end
        object btnPagosGT: TRzBitBtn
          Left = 383
          Top = 470
          Width = 30
          Height = 30
          Cursor = crHandPoint
          Hint = 'Ingresar Pagos'
          Alignment = taRightJustify
          Color = 15461336
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HotTrack = True
          ParentFont = False
          TextShadowDepth = 1
          TabOrder = 29
          TextStyle = tsRecessed
          OnClick = btnPagosGTClick
          Glyph.Data = {
            76030000424D7603000000000000360000002800000011000000100000000100
            1800000000004003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE8EBEDA89186977A66AF9E93DDDCE2FFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFADADAD696969787A7B594D47662400A55F0E
            C07B24C38427AB670EB49786FFFFFFD5C9C0FDFFFF00FFFFFFFFFFFFFFFFFF3F
            3F3F444444BDBFBDECECECD5DADC494D508D6E5AB4722DE2AD3CF5CE58D69F3E
            A9733BB16D11FFFFFF00FFFFFFFFFFFFFFFFFF383838737373999999D6D6D7E5
            E5E5A1A3A33C41456275887E5641F9CD55FDE073FFE76BB88C69FFFFFF00FFFF
            FFFFFFFFFFFFFF696A6B595958A3A3A3DEDFDFDBDBDCAAABAC777575C8A37ED0
            9C35FDE48EFCD6B2F5C18CD4BAAEFFFFFF00FFFFFFFFFFFFFFFFFF2F2F2E7777
            77BABBBADFDEDECACACC9394956C6865D0A278D39A43F4BA64FFE2C5E0AB76E7
            E7EAFFFFFF00FFFFFFFFFFFFFFFFFF474246CECFCFFEFEFEFFFFFFD3D4D39293
            929FA0A0DAE1E6848D9966666ED8B9A4C29278FFFFFFFFFFFF00FFFFFFFBF6F9
            52B26C658A67594850AC9AA79D989C6C6C6D606060CDCECEDCDCDCABAAAA6364
            64FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFAAC5A77ED8D58DEAE431DC7E1DB053
            2750305F5A5DA5A6A6E3E4E4EFEEEFBFC1C0525252FFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFF67A87677F9D17BF9CD2EF69526BB5E3543365B565AAEAEADD7D7D7
            D1D2D19FA09F565755FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF13AC5019FF9A22
            FF9400BF4FB7A6A75B4E57A7A6A6D8D9D9FFFFFFD0D2D0878786868786FFFFFF
            FFFFFFFFFFFFFFFFFF00D7DBD4007C104C774C00DE5D02FF7E00AA3D364D38D6
            CBD4FFFFFFF2F3F4BCBCBC626262D2D1D2FFFFFFFFFFFFFFFFFFFFFFFF00EAF3
            ECF5EEF1FFFFFF4D81540083220B93361179260021002333256F6E70818080D2
            D3D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFCCC7
            C7819A82657B6798A89CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
        end
        object edtIvaTGGT: TwwDBEdit
          Left = 87
          Top = 447
          Width = 72
          Height = 19
          BorderStyle = bsNone
          DataField = 'MtoIvaAlc1'
          DataSource = dsGastos
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          TabOrder = 24
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtPeriodoFCKeyDown
          OnKeyPress = edtSubTotalFCKeyPress
        end
        object edtIvaTDGT: TwwDBEdit
          Left = 173
          Top = 447
          Width = 72
          Height = 19
          BorderStyle = bsNone
          DataField = 'MtoIvaAlc2'
          DataSource = dsGastos
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          TabOrder = 25
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtPeriodoFCKeyDown
          OnKeyPress = edtSubTotalFCKeyPress
        end
        object edtIvaOTGT: TwwDBEdit
          Left = 260
          Top = 447
          Width = 72
          Height = 19
          BorderStyle = bsNone
          DataField = 'MtoIvaOAlc'
          DataSource = dsGastos
          EditAlignment = eaRightAlignEditing
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          TabOrder = 26
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtPeriodoFCKeyDown
          OnKeyPress = edtSubTotalFCKeyPress
        end
        object gbGTImputaciones: TRzGroupBox
          Left = 0
          Top = 257
          Width = 414
          Height = 159
          Caption = '  *  &Imputaciones '
          Font.Charset = ANSI_CHARSET
          Font.Color = 21248
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GradientColorStyle = gcsCustom
          GradientColorStart = 11468718
          GradientColorStop = clWhite
          GroupStyle = gsBanner
          ParentColor = True
          ParentFont = False
          TabOrder = 22
          TabStop = True
          OnEnter = gbGTImputacionesEnter
          OnExit = gbGTImputacionesExit
          object gItemsGT: TwwDBGrid
            Left = 0
            Top = 21
            Width = 414
            Height = 138
            ControlType.Strings = (
              'AlcIva;CustomEdit;cbAlcIvaItmGT;T')
            Selected.Strings = (
              'IdCuenta'#9'6'#9'C'#243'digo~Cuenta'#9'F'
              'DetCuenta'#9'25'#9'Detalle~Cuenta'#9'F'
              'AlcIva'#9'10'#9'Al'#237'cuota~de IVA'#9'F'
              'PrcCta'#9'10'#9'%~Aplicaci'#243'n'#9'F'
              'MontoCta'#9'10'#9'Importe~Neto'#9'T'
              'MontoIva'#9'10'#9'Monto~Impuesto'#9'T')
            IniAttributes.Delimiter = ';;'
            TitleColor = 16053482
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DataSource = dsItemsGT
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = 2894934
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            OnCalcCellColors = gItemsGTCalcCellColors
            OnColEnter = gItemsGTColEnter
            OnColExit = gItemsGTColExit
            OnEnter = gItemsGTEnter
            OnExit = gItemsGTExit
            OnKeyDown = gItemsGTKeyDown
            OnKeyPress = gItemsGTKeyPress
            OnUpdateFooter = gItemsGTUpdateFooter
            FooterColor = 16053482
            FooterCellColor = clWhite
          end
          object cbAlcIvaItmGT: TwwDBComboBox
            Left = 208
            Top = 48
            Width = 66
            Height = 21
            ShowButton = True
            Style = csDropDownList
            MapList = False
            AllowClearKey = False
            DataField = 'IdAlcIva'
            DataSource = dsItemsGT
            DropDownCount = 8
            ButtonEffects.Transparent = True
            ButtonEffects.Flat = True
            ItemHeight = 0
            ParentColor = True
            Sorted = False
            TabOrder = 1
            UnboundDataType = wwDefault
            OnEnter = cbAlcIvaItmGTEnter
          end
        end
        object edtDetalleGtos: TwwDBEdit
          Left = 5
          Top = 481
          Width = 240
          Height = 19
          AutoFillDate = False
          BorderStyle = bsNone
          DataField = 'Detalle'
          DataSource = dsGastos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
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
          TabOrder = 28
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = edtTotalGTKeyDown
          OnKeyPress = edtTotalGTKeyPress
        end
        object cbGTDetEmp: TwwDBLookupCombo
          Left = 311
          Top = 104
          Width = 103
          Height = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'NOMBREEMPRESA'#9'20'#9'Empresas'#9'F'#9)
          DataField = 'IdEmpresa'
          DataSource = dsGastos
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
          TabOrder = 8
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = True
          ShowMatchText = True
          OnEnter = cbGTDetEmpEnter
          OnKeyDown = cbTipoCompGTKeyDown
        end
      end
      object gbUltOperGtos: TRzGroupBox
        Left = 421
        Top = 0
        Width = 315
        Height = 509
        Align = alClient
        Alignment = taCenter
        BevelWidth = 2
        BorderColor = clBlack
        BorderInner = fsFlat
        Caption = '  Ultimas Operaciones '
        Color = 16053482
        Font.Charset = ANSI_CHARSET
        Font.Color = 21248
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = 11468718
        GradientColorStop = clWhite
        GroupStyle = gsCustom
        ParentFont = False
        TabOrder = 1
        object gViewGtos: TwwDBGrid
          Left = 3
          Top = 16
          Width = 309
          Height = 490
          Selected.Strings = (
            'FECHAF'#9'8'#9'Fecha'#9'F'
            'DESCCORTA'#9'4'#9'TC'#9'F'
            'NROFACTURA'#9'12'#9'Comprobante'#9'F'
            'NOMBRE'#9'14'#9'Proveedor'#9'F'
            'TOTAL'#9'14'#9'Monto'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = 16053482
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          DataSource = dsViewGtos
          Font.Charset = ANSI_CHARSET
          Font.Color = 2894934
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyOptions = [dgEnterToTab]
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = 2894934
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          UseTFields = False
          OnDblClick = gViewGtosDblClick
          OnUpdateFooter = gViewGtosUpdateFooter
          FooterColor = 15395541
          FooterCellColor = 15395541
        end
      end
    end
    object tsCtaCteP: TRzTabSheet
      Color = 16119543
      Caption = 'C&uentas'#13#10'Corrientes'
      object pcCCP: TRzPageControl
        Left = 0
        Top = 0
        Width = 736
        Height = 509
        ActivePage = tsCuentas
        ActivePageDefault = tsSaldos
        Align = alClient
        BackgroundColor = clWhite
        BoldCurrentTab = True
        Color = 16119543
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FlatColor = 10263441
        ImageAlignment = haLeft
        ParentBackgroundColor = False
        ParentColor = False
        ParentFont = False
        ShowCardFrame = False
        ShowFocusRect = False
        ShowFullFrame = False
        ShowShadow = False
        TabColors.HighlightBar = 1350640
        TabIndex = 1
        TabOrder = 0
        TabWidth = 170
        TextColors.Unselected = clGray
        OnClick = pcCCPClick
        FixedDimension = 22
        object tsSaldos: TRzTabSheet
          Color = 16119543
          Caption = 'Saldos'
          object gSaldos: TwwDBGrid
            Left = 135
            Top = 0
            Width = 601
            Height = 487
            Selected.Strings = (
              'DETEMP'#9'5'#9'Empresa'#9'F'
              'Entidad'#9'6'#9'N'#186' Cuenta'#9'F'
              'Nombre'#9'25'#9'Proveedor'#9'F'
              'Saldo'#9'14'#9'Saldo'#9'F'
              'SaldoA'#9'14'#9'Acumulado'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 15200241
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            DataSource = dsqSaldos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 179
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyOptions = [dgEnterToTab]
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgShowFooter, dgFooter3DCells]
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clMaroon
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnDblClick = gSaldosDblClick
            IndicatorIconColor = clNavy
            OnUpdateFooter = gSaldosUpdateFooter
            FooterColor = 15200241
            FooterCellColor = 16776176
          end
          object gbSaldosCC: TRzGroupBox
            Left = 0
            Top = 0
            Width = 135
            Height = 487
            Align = alLeft
            BorderInner = fsFlatRounded
            Caption = 'Saldos de CC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GradientColorStyle = gcsCustom
            GradientColorStart = 12320767
            GradientColorStop = 15200241
            GroupStyle = gsBanner
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            VisualStyle = vsGradient
            object lblFSaldo: TLabel
              Left = 9
              Top = 149
              Width = 62
              Height = 16
              Caption = '&Saldos al:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblCCEmp: TLabel
              Left = 9
              Top = 106
              Width = 60
              Height = 16
              Caption = '&Empresa:'
              FocusControl = cbCCEmpre
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object btnInformeSdoAFecha: TRzBitBtn
              Left = 9
              Top = 227
              Width = 88
              Height = 26
              Hint = 'imprimir informe de saldos'
              Caption = '&Informe'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              TextShadowColor = clYellow
              ShowHint = True
              TabOrder = 3
              TextStyle = tsShadow
              OnClick = btnInformeSdoAFechaClick
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
            object btnExportarSdoAFecha: TRzBitBtn
              Left = 9
              Top = 260
              Width = 88
              Height = 26
              Hint = 'exportar saldos'
              Caption = '&Exportar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              TextShadowColor = clYellow
              ShowHint = True
              TabOrder = 4
              TextStyle = tsShadow
              OnClick = btnExportarSdoAFechaClick
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
            end
            object btnSaldosAFecha: TRzBitBtn
              Left = 9
              Top = 194
              Width = 88
              Height = 26
              Hint = 'calcular saldos a fecha'
              Caption = '&Calcular'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              TextShadowColor = clYellow
              ShowHint = True
              TabOrder = 2
              TextStyle = tsShadow
              OnClick = btnSaldosAFechaClick
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
              Spacing = 0
            end
            object edtFSaldo: TRzDateTimeEdit
              Left = 9
              Top = 167
              Width = 95
              Height = 22
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 16119543
              FlatButtons = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ParentFont = False
              TabOrder = 1
            end
            object cbCCEmpre: TRzComboBox
              Left = 9
              Top = 125
              Width = 121
              Height = 22
              Color = 16119543
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
              OnChange = cbCCEmpreChange
              OnExit = cbCCEmpreExit
            end
          end
        end
        object tsCuentas: TRzTabSheet
          Color = 16119543
          ImageIndex = 1
          Caption = 'Cuentas '
          object pnlTopCCP: TRzPanel
            Left = 0
            Top = 0
            Width = 736
            Height = 28
            Align = alTop
            BorderOuter = fsFlatRounded
            GradientColorStyle = gcsCustom
            ParentColor = True
            TabOrder = 0
            VisualStyle = vsGradient
            object lblCualCCP: TLabel
              Left = 6
              Top = 10
              Width = 51
              Height = 14
              Caption = '&Entidad:'
              FocusControl = edtCualProv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 166
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblDesdeCCP: TLabel
              Left = 536
              Top = 10
              Width = 41
              Height = 14
              Caption = '&Desde:'
              FocusControl = edtDesdeCCP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 166
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblCualProv: TLabel
              Left = 126
              Top = 10
              Width = 392
              Height = 14
              AutoSize = False
              Caption = 'lblCualProv'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 166
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object edtCualProv: TRzNumericEdit
              Left = 61
              Top = 4
              Width = 59
              Height = 21
              AutoSize = False
              Color = 16119543
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              TabOnEnter = True
              TabOrder = 0
              OnEnter = edtCualProvEnter
              OnExit = edtCualProvExit
              OnKeyDown = edtCualProvKeyDown
              DisplayFormat = '0'
            end
            object edtDesdeCCP: TRzDateTimeEdit
              Left = 581
              Top = 4
              Width = 92
              Height = 21
              Hint = 'desde cuando listar'
              CaptionTodayBtn = 'hoy'
              CaptionClearBtn = 'limpiar'
              EditType = etDate
              Format = 'dd/mm/yy'
              Alignment = taRightJustify
              AutoSize = False
              Color = 16119543
              FlatButtons = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOnEnter = True
              TabOrder = 1
              OnExit = edtDesdeCCPExit
            end
          end
          object gMovCCP: TwwDBGrid
            Left = 0
            Top = 28
            Width = 616
            Height = 459
            Selected.Strings = (
              'DetEmp'#9'6'#9'Empresa'#9'F'
              'FechaOrg'#9'9'#9'Fecha~Comprobante'#9'F'
              'TC'#9'6'#9'T~C'#9'F'
              'Comprobante'#9'13'#9'N'#250'mero~Comprobante'#9'F'
              'Debe'#9'12'#9'Debe'#9'F'
              'Haber'#9'12'#9'Haber'#9'F'
              'Saldo'#9'13'#9'Saldo~Cuenta'#9'F'
              'PagoACta'#9'9'#9'Pagos ~Realizados'#9'F'
              'SaldoMov'#9'9'#9'Saldo~Movimiento'#9'F'
              'MontoOrg'#9'9'#9'Monto~Original'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 15463403
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DataSource = dsCCProv
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            PopupMenu = pmCCP
            TabOrder = 1
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = 179
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
            OnCalcCellColors = gMovCCPCalcCellColors
            OnDblClick = gMovCCPDblClick
          end
          object gbPagoMultipleProv: TRzGroupBox
            Left = 35
            Top = 107
            Width = 496
            Height = 324
            Alignment = taRightJustify
            Caption = ' Comprobantes a Pagar '
            Color = 14680031
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GradientColorStyle = gcsCustom
            GradientColorStop = 14013951
            GroupStyle = gsBanner
            ParentFont = False
            TabOrder = 2
            Visible = False
            VisualStyle = vsGradient
            object btnPagarPro: TRzBitBtn
              Left = 440
              Top = 146
              Width = 54
              Height = 68
              Hint = 'generar orden de pago'
              Caption = 'Generar Orden de &Pago'
              Color = 15791348
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              LightTextStyle = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              TextStyle = tsRecessed
              OnClick = btnPagarProClick
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
                E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E85E5E5E5E5E5E
                5E5E5E5E5E5E5E5E5E5E818181818181818181818181818181815ED7D7D7D7D7
                D7D7D7D7D7D7D7D7D75E81E8E8E8E8E8E8E8E8E8E8E8E8E8E8815ED75E5E5E5E
                D7D7D7D7D7D7D7D7D75E81E881818181E8E8E8E8E8E8E8E8E8815ED75ED7D75E
                D709090909090909D75E81E881E8E881E881818181818181E8815ED75ED7D75E
                D7D7D7D7D7D7D7D7D75E81E881E8E881E8E8E8E8E8E8E8E8E8815ED75E5E5E5E
                D7D7D7D7D7D7D7D7D75E81E881818181E8E8E8E8E8E8E8E8E8815ED7D7D7D7D7
                D7D7D7D7D7D7D7D7D75E81E8E8E8E8E8E8E8E8E8E8E8E8E8E8815ED75E5E5E5E
                D7D7D7D7D7D7D7D7D75E81E881818181E8E8E8E8E8E8E8E8E8815ED75ED7D75E
                D709090909090909D75E81E881E8E881E881818181818181E8815ED75ED7D75E
                D7D7D7D7D7D7D7D7D75E81E881E8E881E8E8E8E8E8E8E8E8E8815ED75E5E5E5E
                D7D7D7D7D7D7D7D7D75E81E881818181E8E8E8E8E8E8E8E8E8815ED7D7D7D7D7
                D7D7D7D7D7D7D7D7D75E81E8E8E8E8E8E8E8E8E8E8E8E8E8E8815ED7D7D7D7D7
                5E5E5E5E5E5E5E5E5E5E81E8E8E8E8E8818181818181818181815ED7D7D7D75E
                5EACACACAC5EE8E8E8E881E8E8E8E88181ACACACAC81E8E8E8E8E85E5E5E5EE8
                E85E5E5E5EE8E8E8E8E8E881818181E8E881818181E8E8E8E8E8}
              Layout = blGlyphTop
              NumGlyphs = 2
              Spacing = 0
            end
            object btnSalirPago: TRzBitBtn
              Left = 440
              Top = 220
              Width = 54
              Height = 68
              Hint = 'cancelar y salir'#13'sin grabar pagos'
              Caption = 'Cancelar y &Salir'
              Color = 15791348
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              LightTextStyle = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              TextStyle = tsRecessed
              OnClick = btnSalirPagoClick
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
              Layout = blGlyphTop
              NumGlyphs = 2
              Spacing = 0
            end
            object gPagoMultipleProv: TwwDBGrid
              Left = 0
              Top = 61
              Width = 439
              Height = 239
              ControlType.Strings = (
                'Selected;CheckBox;Yes;No'
                'Saldo;CustomEdit;cbxPagoMultiple;F')
              Selected.Strings = (
                'DETEMP'#9'5'#9'Empresa'#9'F'
                'Fecha'#9'10'#9'Fecha/Vto.~Comprobante'#9'F'
                'DetComp'#9'6'#9'Tipo~Operaci'#243'n'#9'F'
                'Comprobante'#9'13'#9'N'#250'mero de~Comprobante'#9'F'
                'SaldoMov'#9'14'#9'Importe~/Saldo'#9'F'
                'Selected'#9'8'#9#191'Incluye~en Pago?'#9'F')
              IniAttributes.Delimiter = ';;'
              TitleColor = 14680031
              OnMultiSelectRecord = gPagoMultipleProvMultiSelectRecord
              FixedCols = 0
              ShowHorzScrollBar = True
              EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
              Align = alLeft
              BorderStyle = bsNone
              Color = clWhite
              DataSource = dsqPagoMultipleProv
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              ParentFont = False
              TabOrder = 0
              TitleAlignment = taCenter
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 2
              TitleButtons = False
              UseTFields = False
              IndicatorIconColor = clNavy
              FooterColor = 15923711
              FooterCellColor = 15923711
            end
            object pnlBtnPMCC: TRzPanel
              Left = 0
              Top = 300
              Width = 496
              Height = 24
              Align = alBottom
              BorderOuter = fsFlatRounded
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              TabOrder = 4
            end
            object btnPreOP: TRzBitBtn
              Left = 440
              Top = 72
              Width = 54
              Height = 68
              Hint = 'generar pre orden de pago'#13'para verificaci'#243'n de fechas'#13'de pago'
              FrameColor = 7617536
              Caption = 'Generar Pre &OP'
              Color = 15791348
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              LightTextStyle = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              TextStyle = tsRecessed
              OnClick = btnPreOPClick
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
            object pnlPreOPs: TRzPanel
              Left = 0
              Top = 24
              Width = 496
              Height = 37
              Align = alTop
              BorderOuter = fsFlatRounded
              Color = 13041663
              TabOrder = 5
              object lblPreOPs: TLabel
                Left = 5
                Top = 6
                Width = 82
                Height = 26
                Caption = 'Pre Ordenes '#13#10'del Proveedor:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                WordWrap = True
              end
              object cbPreOPs: TRzComboBox
                Left = 94
                Top = 10
                Width = 336
                Height = 21
                AutoDropDown = True
                CharCase = ecUpperCase
                Color = 13041663
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
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
                OnChange = cbPreOPsChange
                OnExit = cbPreOPsExit
              end
              object btnBuscarPreOP: TRzBitBtn
                Left = 447
                Top = 2
                Width = 30
                Height = 30
                HotTrack = True
                ParentColor = True
                TabOrder = 1
                OnClick = btnBuscarPreOPClick
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
          end
          object pnlOperCCP: TRzPanel
            Left = 616
            Top = 28
            Width = 120
            Height = 459
            Align = alRight
            BorderOuter = fsFlatRounded
            Color = 15791348
            GradientColorStyle = gcsCustom
            TabOrder = 3
            VisualStyle = vsGradient
            object btnPagosCCP: TRzBitBtn
              Left = 6
              Top = 76
              Width = 109
              Caption = 'Orden de Pagos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 10900224
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 3
              OnClick = btnPagosCCPClick
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
            object btnInformeCCP: TRzBitBtn
              Left = 6
              Top = 2
              Width = 109
              Caption = 'Informe'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 10900224
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 0
              OnClick = btnInformeCCPClick
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
            object btnExportarCCP: TRzBitBtn
              Left = 6
              Top = 26
              Width = 109
              Caption = 'Exportar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 10900224
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 1
              OnClick = btnExportarCCPClick
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
            object btnAntiposCCP: TRzBitBtn
              Left = 6
              Top = 101
              Width = 109
              Caption = 'Anticipos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 10900224
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 4
              OnClick = btnAntiposCCPClick
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
            end
            object btnSdoInicial: TRzBitBtn
              Left = 6
              Top = 126
              Width = 109
              Caption = 'Saldo Inicial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 10900224
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 5
              OnClick = btnSdoInicialClick
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
            object btnDescuentos: TRzBitBtn
              Left = 6
              Top = 51
              Width = 109
              Caption = 'Cr'#233'dito Ajuste'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 10900224
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              ParentColor = True
              ParentFont = False
              TabOrder = 2
              OnClick = btnDescuentosClick
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
            object gbOrdenDePagos: TRzGroupBox
              Left = 2
              Top = 155
              Width = 116
              Height = 302
              Align = alBottom
              Alignment = taCenter
              Caption = ' Orden de Pagos '
              Color = 11786751
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              GradientColorStyle = gcsCustom
              GradientColorStop = 13303754
              GroupStyle = gsBanner
              ParentFont = False
              TabOrder = 6
              Visible = False
              object lblMontoOP: TLabel
                Left = 12
                Top = 91
                Width = 96
                Height = 13
                Caption = '&Importe a Pagar:'
                FocusControl = edtTotalOP
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblFecPago: TLabel
                Left = 12
                Top = 20
                Width = 33
                Height = 13
                Caption = '&Fecha'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblMontoRtGan: TLabel
                Left = 12
                Top = 127
                Width = 87
                Height = 13
                Caption = '&Ret. Ganancias:'
                FocusControl = edtTotalRetGan
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblMontoRtIB: TLabel
                Left = 12
                Top = 163
                Width = 88
                Height = 13
                Caption = 'Ret. Ing.&Brutos:'
                FocusControl = edtTotalRetIB
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblMontoRtIVA: TLabel
                Left = 12
                Top = 199
                Width = 89
                Height = 13
                Caption = 'Retencion I.&V.A:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblMtoRetSS: TLabel
                Left = 12
                Top = 234
                Width = 83
                Height = 13
                Caption = 'Re&tencion S.S.:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblPagEmp: TLabel
                Left = 12
                Top = 55
                Width = 52
                Height = 13
                Caption = '&Empresa:'
                FocusControl = cbPagoEmp
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object edtTotalOP: TRzNumericEdit
                Left = 12
                Top = 106
                Width = 95
                Height = 21
                AutoSelect = False
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = 4210688
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                FrameHotTrack = True
                FrameVisible = True
                ParentFont = False
                TabOnEnter = True
                TabOrder = 2
                OnEnter = edtTotalOPEnter
                OnExit = edtTotalOPExit
                OnKeyPress = edtTotalOPKeyPress
                IntegersOnly = False
                DisplayFormat = '$,0.00;($,0.00)'
              end
              object btnAceptarOP: TRzBitBtn
                Left = 21
                Top = 271
                Width = 30
                Height = 30
                Hint = 'aceptar e imprimir orden de pagos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                HotTrack = True
                ParentColor = True
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
                OnClick = btnAceptarOPClick
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
                Spacing = 0
              end
              object btnCancelarOP: TRzBitBtn
                Left = 70
                Top = 271
                Width = 30
                Height = 30
                Hint = 'cancelar pagos'
                Cancel = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                HotTrack = True
                ParentColor = True
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 8
                OnClick = btnCancelarOPClick
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
                Spacing = 0
              end
              object edtFecOrdPago: TRzDateTimeEdit
                Left = 12
                Top = 34
                Width = 95
                Height = 21
                CaptionTodayBtn = 'hoy'
                CaptionClearBtn = 'limpiar'
                EditType = etDate
                Format = 'dd/mm/yy'
                Alignment = taRightJustify
                Color = clWhite
                FlatButtons = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 4210688
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                FrameHotTrack = True
                FrameVisible = True
                ParentFont = False
                TabOnEnter = True
                TabOrder = 0
                OnExit = edtFecOrdPagoExit
              end
              object edtTotalRetGan: TRzNumericEdit
                Left = 12
                Top = 142
                Width = 95
                Height = 21
                AutoSelect = False
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = 4210688
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                FrameHotTrack = True
                FrameVisible = True
                ParentFont = False
                TabOnEnter = True
                TabOrder = 3
                OnEnter = edtTotalRetGanEnter
                OnKeyPress = edtTotalOPKeyPress
                IntegersOnly = False
                DisplayFormat = '$,0.00;($,0.00)'
              end
              object edtTotalRetIB: TRzNumericEdit
                Left = 12
                Top = 178
                Width = 95
                Height = 21
                AutoSelect = False
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = 4210688
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                FrameHotTrack = True
                FrameVisible = True
                ParentFont = False
                TabOnEnter = True
                TabOrder = 4
                OnEnter = edtTotalRetIBEnter
                OnKeyPress = edtTotalOPKeyPress
                IntegersOnly = False
                DisplayFormat = '$,0.00;($,0.00)'
              end
              object edtTotalRetIVA: TRzNumericEdit
                Left = 12
                Top = 214
                Width = 95
                Height = 21
                AutoSelect = False
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = 4210688
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                FrameHotTrack = True
                FrameVisible = True
                ParentFont = False
                TabOnEnter = True
                TabOrder = 5
                OnEnter = edtTotalRetIVAEnter
                OnKeyPress = edtTotalOPKeyPress
                IntegersOnly = False
                DisplayFormat = '$,0.00;($,0.00)'
              end
              object edtMtoRetSS: TRzNumericEdit
                Left = 12
                Top = 248
                Width = 95
                Height = 21
                AutoSelect = False
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = 4210688
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                FrameHotTrack = True
                FrameVisible = True
                ParentFont = False
                TabOnEnter = True
                TabOrder = 6
                OnEnter = edtMtoRetSSEnter
                OnKeyPress = edtTotalOPKeyPress
                IntegersOnly = False
                DisplayFormat = '$,0.00;($,0.00)'
              end
              object cbPagoEmp: TRzComboBox
                Left = 12
                Top = 70
                Width = 95
                Height = 21
                Color = clWhite
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 4210688
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                FlatButtons = True
                FrameHotTrack = True
                FrameVisible = True
                ItemHeight = 13
                ParentCtl3D = False
                ParentFont = False
                TabOnEnter = True
                TabOrder = 1
                OnChange = cbPagoEmpChange
                OnExit = cbPagoEmpExit
              end
            end
          end
        end
        object tsAjustes: TRzTabSheet
          Color = 16119543
          ImageIndex = 3
          Caption = 'Ajustes internos'
          object gMovAjt: TwwDBGrid
            Left = 0
            Top = 34
            Width = 736
            Height = 453
            Selected.Strings = (
              'Entidad'#9'10'#9'N'#186#9'F'
              'NomEntidad'#9'30'#9'Proveedor'#9'F'
              'Fecha'#9'10'#9'Fecha'#9'F'
              'TC'#9'8'#9'TC'#9'F'
              'Comprobante'#9'13'#9'Comprobante'#9'F'
              'Haber'#9'13'#9'Importe'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 15400938
            FixedCols = 1
            ShowHorzScrollBar = False
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsqMovAjt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyOptions = [dgEnterToTab]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentColor = True
            ParentFont = False
            PopupMenu = pmAjtInt
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = 8224125
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnCalcCellColors = gMovAjtCalcCellColors
            OnDblClick = gMovAjtDblClick
            FooterColor = 15400938
            FooterCellColor = 15400938
          end
          object gbRelNC: TRzGroupBox
            Left = 232
            Top = 136
            Width = 313
            Height = 252
            BorderOuter = fsFlatRounded
            Caption = ' Movimientos p/ relacionar '
            Color = 9830399
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GradientColorStyle = gcsMSOffice
            GroupStyle = gsBanner
            ParentFont = False
            TabOrder = 1
            Visible = False
            VisualStyle = vsGradient
            object btnCerrarRelNC: TRzBitBtn
              Left = 288
              Top = 1
              Width = 21
              Height = 17
              FrameColor = 7617536
              Caption = 'x'
              Color = 15791348
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotTrack = True
              ParentFont = False
              TabOrder = 1
              TextStyle = tsRecessed
              OnClick = btnCerrarRelNCClick
              Layout = blGlyphRight
              Margin = 0
              NumGlyphs = 2
              Spacing = 0
            end
            object gRelMov: TwwDBGrid
              Left = 2
              Top = 23
              Width = 309
              Height = 227
              Selected.Strings = (
                'FechaF'#9'10'#9'Fecha'#9'F'
                'TC'#9'5'#9'TC'#9#9
                'NroFactura'#9'13'#9'Comprobante'#9'F'
                'Total'#9'8'#9'Total'#9'F')
              IniAttributes.Delimiter = ';;'
              TitleColor = 9830399
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alClient
              BorderStyle = bsNone
              Color = clCream
              DataSource = dsqRelAjt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              KeyOptions = [dgEnterToTab]
              ParentFont = False
              TabOrder = 0
              TitleAlignment = taCenter
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              TitleLines = 1
              TitleButtons = False
              UseTFields = False
            end
          end
          object pnlTopAI: TRzPanel
            Left = 0
            Top = 0
            Width = 736
            Height = 34
            Align = alTop
            BorderOuter = fsFlatRounded
            ParentColor = True
            TabOrder = 2
            object lblDesdeAI: TLabel
              Left = 116
              Top = 16
              Width = 41
              Height = 14
              Alignment = taRightJustify
              Caption = '&Desde:'
              FocusControl = edtDesdeAI
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblHastaAI: TLabel
              Left = 283
              Top = 16
              Width = 39
              Height = 14
              Alignment = taRightJustify
              Caption = '&Hasta:'
              FocusControl = edtHastaAI
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object edtDesdeAI: TRzDateTimeEdit
              Left = 164
              Top = 8
              Width = 106
              Height = 22
              CaptionTodayBtn = 'Hoy'
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 16119543
              FlatButtons = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOnEnter = True
              TabOrder = 0
            end
            object edtHastaAI: TRzDateTimeEdit
              Left = 325
              Top = 8
              Width = 106
              Height = 22
              CaptionTodayBtn = 'Hoy'
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 16119543
              FlatButtons = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOnEnter = True
              TabOrder = 1
            end
            object btnCalcularAI: TRzBitBtn
              Left = 438
              Top = 1
              Width = 30
              Height = 30
              Hint = 'buscar OP en el periodo'
              HighlightColor = 16026986
              HotTrack = True
              HotTrackColor = 3983359
              LightTextStyle = True
              ParentColor = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = btnCalcularAIClick
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
              ImageIndex = 152
              NumGlyphs = 2
              Spacing = 0
            end
            object btnExportarAI: TRzBitBtn
              Left = 468
              Top = 1
              Width = 30
              Height = 30
              Hint = 'exportar'
              Color = 15791348
              HighlightColor = 16026986
              HotTrack = True
              HotTrackColor = 3983359
              LightTextStyle = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = btnExportarAIClick
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
              ImageIndex = 11
              NumGlyphs = 2
              Spacing = 0
            end
          end
        end
        object tsAnticipos: TRzTabSheet
          Color = 16119543
          Caption = 'Anticipos'
          object pnlAnticipos: TRzPanel
            Left = 0
            Top = 0
            Width = 736
            Height = 34
            Align = alTop
            BorderOuter = fsFlatRounded
            ParentColor = True
            TabOrder = 0
            object lblDesdeAN: TLabel
              Left = 116
              Top = 16
              Width = 41
              Height = 14
              Alignment = taRightJustify
              Caption = '&Desde:'
              FocusControl = edtDesdeAN
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblHastaAN: TLabel
              Left = 283
              Top = 16
              Width = 39
              Height = 14
              Alignment = taRightJustify
              Caption = '&Hasta:'
              FocusControl = edtHastaAN
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object edtDesdeAN: TRzDateTimeEdit
              Left = 164
              Top = 8
              Width = 106
              Height = 22
              CaptionTodayBtn = 'Hoy'
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 16119543
              FlatButtons = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOnEnter = True
              TabOrder = 0
            end
            object edtHastaAN: TRzDateTimeEdit
              Left = 325
              Top = 8
              Width = 106
              Height = 22
              CaptionTodayBtn = 'Hoy'
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 16119543
              FlatButtons = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOnEnter = True
              TabOrder = 1
            end
            object btnAnticiposCCP: TRzBitBtn
              Left = 438
              Top = 1
              Width = 30
              Height = 30
              Hint = 'buscar OP en el periodo'
              HighlightColor = 16026986
              HotTrack = True
              HotTrackColor = 3983359
              LightTextStyle = True
              ParentColor = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = btnAnticiposCCPClick
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
              ImageIndex = 152
              NumGlyphs = 2
              Spacing = 0
            end
            object btnExportarAnt: TRzBitBtn
              Left = 471
              Top = 1
              Width = 30
              Height = 30
              Hint = 'exportar'
              Color = 15791348
              HighlightColor = 16026986
              HotTrack = True
              HotTrackColor = 3983359
              LightTextStyle = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = btnExportarAntClick
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
              ImageIndex = 11
              NumGlyphs = 2
              Spacing = 0
            end
          end
          object gAnticipos: TwwDBGrid
            Left = 0
            Top = 34
            Width = 736
            Height = 453
            Selected.Strings = (
              'EMPRESA'#9'5'#9'Empresa'#9'F'
              'Entidad'#9'5'#9'N'#186#9'F'
              'NOMBRE'#9'30'#9'Proveedor'#9'F'
              'Comprobante'#9'13'#9'Comprobante'#9'F'
              'FECHA'#9'12'#9'Fecha'#9'F'
              'HABER'#9'15'#9'Monto'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 15400938
            FixedCols = 0
            ShowHorzScrollBar = False
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsqAnticiposCCP
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 3104256
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = 16738922
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnDblClick = gAnticiposDblClick
            OnUpdateFooter = gAnticiposUpdateFooter
            FooterColor = 15400938
            FooterCellColor = 15400938
          end
        end
      end
    end
    object tsOrdenes: TRzTabSheet
      Color = 16119543
      Caption = '&Ordenes'#13#10'de pago'
      object gOrdenes: TwwDBGrid
        Left = 0
        Top = 34
        Width = 736
        Height = 475
        ControlType.Strings = (
          'CantOp;CustomEdit;ebItemOP;F'
          'TotalOP;CustomEdit;ebPagosOp;F'
          'CANTOP;CustomEdit;ebItemOP;T'
          'NROCOMPOP;CustomEdit;ebPagosOp;T')
        Selected.Strings = (
          'DetEmp'#9'4'#9'E'#170#9'F'#9'Orden de Pago'
          'FechaOP'#9'8'#9'Fecha'#9'F'#9'Orden de Pago'
          'NroCompOP'#9'18'#9'N'#250'mero'#9'F'#9'Orden de Pago'
          'NomEntidad'#9'18'#9'Entidad'#9'F'#9'Proveedor'
          'CantOp'#9'6'#9'#~Op'#9'F'#9'Proveedor'
          'TotalOP'#9'14'#9'Total'#9'F'#9'Proveedor'
          'Contado'#9'9'#9'Contado'#9'F'#9'Formas de Pago'
          'Tickets'#9'9'#9'Tickets'#9'F'#9'Formas de Pago'
          'BancoProp'#9'10'#9'Cheques~Propios'#9'F'#9'Formas de Pago'
          'BancoTer'#9'10'#9'Cheques~de 3'#186#9'F'#9'Formas de Pago'
          'BonifProv'#9'8'#9'Bonificaci'#243'n~del proveedor'#9'F'#9'Formas de Pago'
          'RETENCIONES'#9'8'#9'Retenciones~practicadas'#9'F'#9'Formas de Pago')
        IniAttributes.Delimiter = ';;'
        TitleColor = 16120574
        FixedCols = 0
        ShowHorzScrollBar = False
        Align = alClient
        DataSource = dmSaveFile.dsqOrdenes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyOptions = [dgEnterToTab]
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clTeal
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 4
        TitleButtons = False
        UseTFields = False
        OnCalcCellColors = gOrdenesCalcCellColors
        OnDblClick = gOrdenesDblClick
        GroupFieldName = 'FechaOP'
      end
      object ebItemOP: TwwExpandButton
        Left = 265
        Top = 94
        Width = 32
        Height = 16
        DisableThemes = False
        Grid = gItemsOP
        GridIndents.X = 10
        GridIndents.Y = 10
        DataField = 'CANTOP'
        DataSource = dmSaveFile.dsqOrdenes
        Indents.TextX = 5
        ShowAsButton = True
        ShowText = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        ButtonAlignment = taRightJustify
      end
      object ebPagosOp: TwwExpandButton
        Left = 76
        Top = 94
        Width = 88
        Height = 16
        DisableThemes = False
        Grid = gItemsPgOP
        GridIndents.X = 10
        GridIndents.Y = 10
        DataField = 'NROCOMPOP'
        DataSource = dmSaveFile.dsqOrdenes
        Indents.TextX = 5
        ShowAsButton = True
        ShowText = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        ButtonAlignment = taRightJustify
      end
      object gItemsOP: TwwDBGrid
        Left = 178
        Top = 268
        Width = 270
        Height = 133
        Selected.Strings = (
          'FechaOr'#9'8'#9'Fecha'#9'F'
          'DetMov'#9'5'#9'TC'#9'F'
          'NroFactura'#9'13'#9'Factura'#9'F'
          'Importe'#9'10'#9'Importe'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = 15532031
        FixedCols = 0
        ShowHorzScrollBar = True
        Color = clRed
        Ctl3D = False
        DataSource = dmSaveFile.dsqItemsOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic]
        KeyOptions = [dgEnterToTab]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = True
        UseTFields = False
        Visible = False
        OnDblClick = gItemsOPDblClick
        FooterColor = 15532031
        FooterCellColor = 15532031
      end
      object gItemsPgOP: TwwDBGrid
        Left = 33
        Top = 130
        Width = 415
        Height = 135
        Selected.Strings = (
          'TIPOP'#9'8'#9'Pago'#9'F'
          'Comprobante'#9'13'#9'Comprobante'#9'F'
          'Importe'#9'9'#9'Importe'#9'F'
          'Detalle'#9'20'#9'Detalle'#9'F'
          'Fecha'#9'9'#9'Fecha'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = 15790320
        FixedCols = 0
        ShowHorzScrollBar = True
        Color = clBlack
        Ctl3D = False
        DataSource = dmSaveFile.dsqItemsPG
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic]
        KeyOptions = [dgEnterToTab]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clMaroon
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
        Visible = False
        OnDblClick = gItemsPgOPDblClick
        FooterColor = 15790320
        FooterCellColor = 15790320
      end
      object pnlOrdPag: TRzPanel
        Left = 0
        Top = 0
        Width = 736
        Height = 34
        Align = alTop
        BorderOuter = fsFlatRounded
        ParentColor = True
        TabOrder = 5
        object lblDesdeOP: TLabel
          Left = 116
          Top = 16
          Width = 41
          Height = 14
          Alignment = taRightJustify
          Caption = '&Desde:'
          FocusControl = edtDesdeOP
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblHastaOp: TLabel
          Left = 283
          Top = 16
          Width = 39
          Height = 14
          Alignment = taRightJustify
          Caption = '&Hasta:'
          FocusControl = edtHastaOP
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object edtDesdeOP: TRzDateTimeEdit
          Left = 164
          Top = 8
          Width = 106
          Height = 22
          CaptionTodayBtn = 'Hoy'
          EditType = etDate
          Format = 'dd/mm/yy'
          Color = 16119543
          FlatButtons = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FocusColor = clWhite
          FrameHotTrack = True
          FrameVisible = True
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOnEnter = True
          TabOrder = 0
        end
        object edtHastaOP: TRzDateTimeEdit
          Left = 325
          Top = 8
          Width = 106
          Height = 22
          CaptionTodayBtn = 'Hoy'
          EditType = etDate
          Format = 'dd/mm/yy'
          Color = 16119543
          FlatButtons = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FocusColor = clWhite
          FrameHotTrack = True
          FrameVisible = True
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOnEnter = True
          TabOrder = 1
        end
        object btnVerOPs: TRzBitBtn
          Left = 438
          Top = 1
          Width = 30
          Height = 30
          Hint = 'buscar OP en el periodo'
          HighlightColor = 16026986
          HotTrack = True
          HotTrackColor = 3983359
          LightTextStyle = True
          ParentColor = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnVerOPsClick
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
          ImageIndex = 152
          NumGlyphs = 2
          Spacing = 0
        end
        object btnExportarOP: TRzBitBtn
          Left = 468
          Top = 1
          Width = 30
          Height = 30
          Hint = 'exportar'
          Color = 15791348
          HighlightColor = 16026986
          HotTrack = True
          HotTrackColor = 3983359
          LightTextStyle = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnExportarOPClick
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
          ImageIndex = 11
          NumGlyphs = 2
          Spacing = 0
        end
      end
    end
    object tsInformes: TRzTabSheet
      Color = clWhite
      ImageIndex = 60
      Caption = 'Informes'#13#10'&y Cuentas '
      object pcInfGtos: TRzPageControl
        Left = 0
        Top = 0
        Width = 736
        Height = 509
        Cursor = crHandPoint
        ActivePage = tsOperCompras
        ActivePageDefault = tsOperCompras
        Align = alClient
        BackgroundColor = 16776176
        BoldCurrentTab = True
        Color = 16119543
        UseColoredTabs = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        FlatColor = 10263441
        ParentBackgroundColor = False
        ParentColor = False
        ParentFont = False
        ShowCardFrame = False
        ShowCloseButton = True
        ShowFocusRect = False
        ShowFullFrame = False
        ShowShadow = False
        TabColors.HighlightBar = 1350640
        TabIndex = 0
        TabOrder = 0
        TabStyle = tsBackSlant
        TextColors.Unselected = clGray
        OnClose = pcInfGtosClose
        OnTabClick = pcInfGtosTabClick
        FixedDimension = 20
        object tsOperCompras: TRzTabSheet
          Color = 16119543
          Caption = 'Compras'
          object pnlCompras: TRzPanel
            Left = 0
            Top = 0
            Width = 736
            Height = 44
            Align = alTop
            BorderOuter = fsFlat
            Color = 13691112
            TabOrder = 0
            TabStop = True
            object lblCompras: TLabel
              Left = 20
              Top = 10
              Width = 67
              Height = 14
              Caption = '&Proveedor:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblNomProvCmp: TLabel
              Left = 21
              Top = 28
              Width = 474
              Height = 13
              AutoSize = False
              Caption = 'lblNomPro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object lblProvDesde: TLabel
              Left = 191
              Top = 10
              Width = 115
              Height = 14
              Caption = 'Operaciones entre:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btnExpProvCmp: TRzBitBtn
              Left = 578
              Top = 3
              Width = 30
              Height = 30
              Hint = 'exportar operaciones'
              Enabled = False
              HotTrack = True
              ParentColor = True
              TabOrder = 4
              OnClick = btnExpProvCmpClick
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
            object btnProvCmp: TRzBitBtn
              Left = 541
              Top = 3
              Width = 30
              Height = 30
              Hint = 'calcular operaciones por proveedor'
              HighlightColor = 16026986
              HotTrack = True
              HotTrackColor = 3983359
              ParentColor = True
              TabOrder = 3
              OnClick = btnProvCmpClick
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
            object edtProvCmp: TRzNumericEdit
              Left = 93
              Top = 2
              Width = 53
              Height = 22
              Color = 13691112
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              TabOnEnter = True
              TabOrder = 0
              OnEnter = edtProvCmpEnter
              OnExit = edtProvCmpExit
              OnKeyDown = edtProvCmpKeyDown
              DisplayFormat = ',0;(,0)'
            end
            object edtProvDesdeCmp: TRzDateTimeEdit
              Left = 315
              Top = 2
              Width = 87
              Height = 22
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 13691112
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
            object edtProvHastaCmp: TRzDateTimeEdit
              Left = 410
              Top = 2
              Width = 87
              Height = 22
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 13691112
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
              TabOrder = 2
            end
          end
          object gCompras: TwwDBGrid
            Left = 0
            Top = 44
            Width = 736
            Height = 445
            Selected.Strings = (
              'EMPRESA'#9'13'#9'Empresa'#9'F'
              'FECHAF'#9'9'#9'Fecha OP'#9'F'
              'DIAHORA'#9'17'#9'Proceso'#9'F'
              'TCOMP'#9'5'#9'TC'#9'F'
              'NROFACTURA'#9'13'#9'Comprobante'#9#9
              'NOMBRE'#9'25'#9'Proveedor'#9'F'
              'NETO'#9'13'#9'Neto'#9'F'
              'TOTAL'#9'14'#9'Total '#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 11786713
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DataSource = dsqCmpByPro
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
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnDblClick = gComprasDblClick
            IndicatorIconColor = clNavy
            FooterColor = 11786713
            FooterCellColor = 11786713
          end
        end
        object tsOperGastos: TRzTabSheet
          Color = 16383999
          Caption = 'Gastos'
          object pnlInformes: TRzPanel
            Left = 0
            Top = 0
            Width = 736
            Height = 75
            Hint = 
              'Ingrese C'#243'digo de 1 Cuenta.'#13'<F3> Buscar Cuenta. '#13'<0>  Ver Todas ' +
              'las Cuentas.'
            Align = alTop
            BorderOuter = fsFlatRounded
            GradientColorStyle = gcsCustom
            GradientColorStop = 13828095
            ParentColor = True
            TabOrder = 0
            VisualStyle = vsGradient
            object lblDesde: TLabel
              Left = 418
              Top = 1
              Width = 35
              Height = 13
              Caption = '&Desde'
              FocusControl = edtDesdeIC
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 21156
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblHasta: TLabel
              Left = 418
              Top = 36
              Width = 33
              Height = 13
              Caption = '&Hasta'
              FocusControl = edtHastaIC
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 21156
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblCualCuenta: TLabel
              Left = 22
              Top = 1
              Width = 40
              Height = 13
              Hint = 
                'Ingrese C'#243'digo de 1 Cuenta.'#13'<F3> Buscar Cuenta. '#13'<0>  Ver Todas ' +
                'las Cuentas.'
              Caption = 'C&uenta'
              FocusControl = edtCualCta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 21156
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblCualProvG: TLabel
              Left = 23
              Top = 36
              Width = 62
              Height = 13
              Caption = '&Proveedor:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 21156
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblCualPro: TLabel
              Left = 86
              Top = 58
              Width = 323
              Height = 13
              AutoSize = False
              Caption = 'lblNomPro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              Transparent = True
            end
            object lblCualCta: TLabel
              Left = 86
              Top = 23
              Width = 323
              Height = 13
              AutoSize = False
              Caption = 'lblCualCta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              Transparent = True
            end
            object edtDesdeIC: TRzDateTimeEdit
              Left = 418
              Top = 15
              Width = 85
              Height = 21
              CaptionTodayBtn = 'Hoy'
              CaptionClearBtn = 'borrar'
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 16383999
              FlatButtons = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 16896
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
            object edtHastaIC: TRzDateTimeEdit
              Left = 418
              Top = 50
              Width = 85
              Height = 21
              CaptionTodayBtn = 'Hoy'
              CaptionClearBtn = 'borrar'
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 16383999
              FlatButtons = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 16896
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
            object edtCualCta: TRzEdit
              Left = 22
              Top = 15
              Width = 57
              Height = 21
              Hint = 
                'Ingrese C'#243'digo de 1 Cuenta.'#13'<F3> Buscar Cuenta. '#13'<0>  Ver Todas ' +
                'las Cuentas.'
              CharCase = ecUpperCase
              Color = 16383999
              Font.Charset = ANSI_CHARSET
              Font.Color = 16896
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              TabOnEnter = True
              TabOrder = 0
              OnEnter = edtCualCtaEnter
              OnExit = edtCualCtaExit
              OnKeyDown = edtCualCtaKeyDown
            end
            object btnCal_Informe: TRzBitBtn
              Left = 540
              Top = 15
              Width = 30
              Height = 30
              Hint = 'Calcular informe'
              HotTrack = True
              HotTrackColor = 3983359
              ParentColor = True
              TabOrder = 4
              OnClick = btnCal_InformeClick
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
            object btnExp_Informe: TRzBitBtn
              Left = 570
              Top = 15
              Width = 30
              Height = 30
              Hint = 'Exportar informe'
              HotTrack = True
              HotTrackColor = 3983359
              ParentColor = True
              TabOrder = 5
              OnClick = btnExp_InformeClick
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
            object btnImp_Informe: TRzBitBtn
              Left = 600
              Top = 15
              Width = 30
              Height = 30
              Hint = 'Imprimir informe'
              HotTrack = True
              HotTrackColor = 3983359
              ParentColor = True
              TabOrder = 6
              OnClick = btnImp_InformeClick
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
            object edtCualProvG: TRzNumericEdit
              Left = 22
              Top = 50
              Width = 57
              Height = 21
              Color = 16383999
              Font.Charset = ANSI_CHARSET
              Font.Color = 16896
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              TabOnEnter = True
              TabOrder = 1
              OnEnter = edtCualProvGEnter
              OnExit = edtCualProvGExit
              OnKeyDown = edtCualProvGKeyDown
              DisplayFormat = ',0;(,0)'
            end
          end
          object gMovGastos: TwwDBGrid
            Left = 0
            Top = 75
            Width = 736
            Height = 414
            Selected.Strings = (
              'NOMBRE'#9'15'#9'Proveedor'#9'F'
              'DETEMP'#9'4'#9'E'#170#9'F'
              'DETSUC'#9'2'#9'S'#170#9'F'
              'FechaF'#9'8'#9'Fecha'#9'F'
              'DESCCORTA'#9'4'#9'TC'#9'F'
              'NROFACTURA'#9'13'#9'Comprobante'#9'F'
              'ALICUOTAIVA'#9'9'#9'%Iva'#9'F'
              'CANTIDAD'#9'9'#9'%Imp'#9'F'
              'CUENTA'#9'25'#9'Cuenta'#9'F'
              'MTOIVA'#9'12'#9'Iva'#9'F'
              'PRECIONETO'#9'12'#9'Neto'#9'F'
              'PRECIOTOTAL'#9'12'#9'Total'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 13828095
            FixedCols = 0
            ShowHorzScrollBar = False
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsInfCtas
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentColor = True
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
            OnDblClick = gMovGastosDblClick
            OnUpdateFooter = gMovGastosUpdateFooter
            FooterColor = 13828095
            FooterCellColor = 13828095
          end
        end
        object tsNoImp: TRzTabSheet
          Color = 16777211
          ImageIndex = 1
          Caption = '&No Imputables'
          object gNoImp: TwwDBGrid
            Left = 104
            Top = 0
            Width = 632
            Height = 489
            Selected.Strings = (
              'DETEMP'#9'5'#9'E'#170#9'F'
              'NOMBRE'#9'20'#9'Proveedor'#9'F'
              'FechaF'#9'8'#9'Fecha'#9'F'
              'TDOC'#9'5'#9'TD'#9'F'
              'DOCUMENTO'#9'13'#9'Documento'#9'F'
              'NroFactura'#9'13'#9'Comprobante'#9'F'
              'Total'#9'15'#9'Total'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 16515037
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsqNoImp
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnDblClick = gNoImpDblClick
            OnUpdateFooter = gNoImpUpdateFooter
            FooterColor = 16515037
            FooterCellColor = clWhite
          end
          object pnlNoImp: TRzPanel
            Left = 0
            Top = 0
            Width = 104
            Height = 489
            Align = alLeft
            BorderOuter = fsFlat
            ParentColor = True
            TabOrder = 1
            object lblDesdeNI: TLabel
              Left = 5
              Top = 19
              Width = 37
              Height = 14
              Caption = '&Desde'
              FocusControl = edtNIDesde
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6172416
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblHastaNI: TLabel
              Left = 5
              Top = 67
              Width = 35
              Height = 14
              Caption = '&Hasta'
              FocusControl = edtNIHasta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6172416
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object edtNIDesde: TRzDateTimeEdit
              Left = 5
              Top = 36
              Width = 94
              Height = 21
              CaptionTodayBtn = 'hoy'
              RestrictMinutes = True
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 16777211
              FlatButtons = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              TabOnEnter = True
              TabOrder = 0
            end
            object edtNIHasta: TRzDateTimeEdit
              Left = 5
              Top = 84
              Width = 94
              Height = 21
              CaptionTodayBtn = 'hoy'
              RestrictMinutes = True
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 16777211
              FlatButtons = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
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
            object btnCalcNI: TRzBitBtn
              Left = 19
              Top = 116
              Width = 30
              Height = 30
              Cursor = crHandPoint
              Hint = 'Calcular informe'
              HighlightColor = 3983359
              HotTrack = True
              HotTrackColor = 3983359
              LightTextStyle = True
              ParentColor = True
              TabOrder = 2
              OnClick = btnCalcNIClick
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
            object btnExpNI: TRzBitBtn
              Left = 59
              Top = 116
              Width = 30
              Height = 30
              Cursor = crHandPoint
              Hint = 'Exportar informe'
              HighlightColor = 3983359
              HotTrack = True
              HotTrackColor = 3983359
              LightTextStyle = True
              ParentColor = True
              TabOrder = 3
              OnClick = btnExpNIClick
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
        end
        object tsTotales: TRzTabSheet
          Color = 16711167
          ImageIndex = 2
          Caption = '&Totales'
          object pnlTotGtos: TRzPanel
            Left = 0
            Top = 0
            Width = 129
            Height = 489
            Align = alLeft
            BorderOuter = fsFlatRounded
            ParentColor = True
            TabOrder = 0
            object lblDesdeT: TLabel
              Left = 7
              Top = 57
              Width = 37
              Height = 14
              Caption = '&Desde'
              FocusControl = edtToDesde
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblHastaT: TLabel
              Left = 7
              Top = 95
              Width = 35
              Height = 14
              Caption = '&Hasta'
              FocusControl = edtToHasta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object edtToDesde: TRzDateTimeEdit
              Left = 7
              Top = 74
              Width = 91
              Height = 21
              CaptionTodayBtn = 'Hoy'
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 16711167
              FlatButtons = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              TabOrder = 0
            end
            object edtToHasta: TRzDateTimeEdit
              Left = 7
              Top = 112
              Width = 91
              Height = 21
              CaptionTodayBtn = 'Hoy'
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 16711167
              FlatButtons = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FocusColor = clWhite
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              TabOrder = 1
            end
            object btnCalcTot: TRzBitBtn
              Left = 12
              Top = 146
              Width = 30
              Height = 30
              Hint = 'Calcular informe'
              HotTrack = True
              ParentColor = True
              TabOrder = 2
              OnClick = btnCalcTotClick
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
            object btnExpTot: TRzBitBtn
              Left = 49
              Top = 146
              Width = 30
              Height = 30
              Hint = 'Exportar informe'
              HotTrack = True
              ParentColor = True
              TabOrder = 3
              OnClick = btnExpTotClick
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
          object gCentros: TwwDBGrid
            Left = 129
            Top = 0
            Width = 607
            Height = 489
            Selected.Strings = (
              'Centro'#9'4'#9'N'#186#9'F'
              'DESCRIPCION'#9'30'#9'Centro'#9'F'
              'TIVA'#9'14'#9'Impuesto'#9'F'
              'TNETO'#9'14'#9'Neto'#9'F'
              'Total'#9'14'#9'Total'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 16645119
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            DataSource = dsTotCtros
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyOptions = [dgEnterToTab]
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnUpdateFooter = gCentrosUpdateFooter
            FooterColor = 15984895
            FooterCellColor = clWhite
          end
        end
        object tsInfPagos: TRzTabSheet
          Color = 16119543
          Caption = 'Estado de Pagos'
          object pnlInforme: TRzPanel
            Left = 0
            Top = 0
            Width = 736
            Height = 35
            Align = alTop
            BorderOuter = fsFlat
            ParentColor = True
            TabOrder = 0
            object lblDesdeI: TLabel
              Left = 36
              Top = 17
              Width = 37
              Height = 14
              Caption = '&Desde'
              FocusControl = edtEPDesde
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblHastaI: TLabel
              Left = 185
              Top = 17
              Width = 35
              Height = 14
              Caption = '&Hasta'
              FocusControl = edtEPHasta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtEPDesde: TRzDateTimeEdit
              Left = 78
              Top = 10
              Width = 91
              Height = 21
              CaptionTodayBtn = 'hoy'
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 16119543
              FlatButtons = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              TabOnEnter = True
              TabOrder = 0
            end
            object edtEPHasta: TRzDateTimeEdit
              Left = 223
              Top = 10
              Width = 91
              Height = 21
              CaptionTodayBtn = 'hoy'
              EditType = etDate
              Format = 'dd/mm/yy'
              Color = 16119543
              FlatButtons = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FrameHotTrack = True
              FrameVisible = True
              ParentColor = True
              ParentFont = False
              TabOnEnter = True
              TabOrder = 1
            end
            object btnCalcI: TRzBitBtn
              Left = 332
              Top = 3
              Width = 30
              Height = 30
              Hint = 'Calcular informe'
              HotTrack = True
              ParentColor = True
              TabOrder = 2
              OnClick = btnCalcIClick
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
            object btnExpI: TRzBitBtn
              Left = 367
              Top = 3
              Width = 30
              Height = 30
              Hint = 'Exportar informe'
              HotTrack = True
              ParentColor = True
              TabOrder = 3
              OnClick = btnExpIClick
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
          object gEstadoDePagos: TwwDBGrid
            Left = 0
            Top = 35
            Width = 736
            Height = 454
            Selected.Strings = (
              'Nombre'#9'20'#9'Proveedor'#9'F'
              'NroFactura'#9'13'#9'N'#186' Factura'#9'F'
              'FechaF'#9'8'#9'Fecha'#9'F'
              'Total'#9'12'#9'Total'#9'F'
              'Comprobante'#9'13'#9'O'#186' de Pago'#9'F'
              'FechaOp'#9'8'#9'Fecha OP'#9'F'
              'NroChq'#9'8'#9'N'#186' Cheque'#9'F'
              'Importe'#9'12'#9'Pagado'#9'F'
              'SaldoMov'#9'12'#9'Saldo'#9'F'
              'Detalle'#9'10'#9'Detalle'#9'F'
              'Descripcion'#9'18'#9'Descripci'#243'n'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = 11524300
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            DataSource = dsqInforme
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyOptions = [dgEnterToTab]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            UseTFields = False
            OnCalcCellColors = gEstadoDePagosCalcCellColors
            OnDblClick = gEstadoDePagosDblClick
            OnUpdateFooter = gEstadoDePagosUpdateFooter
            FooterColor = 15922164
            FooterCellColor = 15922164
          end
        end
        object tsDefPlanCtas: TRzTabSheet
          Color = 16119543
          Caption = 'Plan de Cuentas de Gastos'
          object pnlCtas: TRzPanel
            Left = 0
            Top = 0
            Width = 221
            Height = 489
            Align = alLeft
            AlignmentVertical = avTop
            BorderOuter = fsFlatRounded
            Caption = 'Definici'#243'n del Plan'#13#10'de Cuentas de Gastos'
            Font.Charset = ANSI_CHARSET
            Font.Color = 11093
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GradientColorStyle = gcsCustom
            GradientColorStop = 13828050
            GradientDirection = gdVerticalEnd
            GridColor = 13828050
            GridStyle = gsSolidLines
            ParentColor = True
            ParentFont = False
            ShowGrid = True
            TabOrder = 0
            TabStop = True
            object btnImprimirPC: TRzBitBtn
              Left = 103
              Top = 455
              Width = 93
              Height = 30
              Caption = '&Imprimir Plan de Cuentas'
              Color = 15925234
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HotTrack = True
              HotTrackColor = 3983359
              ParentFont = False
              TabOrder = 2
              TabStop = False
              TextStyle = tsRecessed
              OnClick = btnImprimirPCClick
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
            object gbCentro: TRzGroupBox
              Left = 5
              Top = 52
              Width = 210
              Height = 189
              BorderOuter = fsFlat
              Caption = 'Centros de Costo'
              Color = 14478829
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              GroupStyle = gsBanner
              ParentFont = False
              TabOrder = 0
              Transparent = True
              VisualStyle = vsGradient
              object lblDescCtro: TLabel
                Left = 19
                Top = 55
                Width = 106
                Height = 13
                Caption = 'Descripci'#243'n Centro'
                FocusControl = edtDescripcionCentro
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblSucursal: TLabel
                Left = 19
                Top = 96
                Width = 48
                Height = 13
                Caption = 'Sucursal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object pnlCosto: TRzPanel
                Left = 18
                Top = 24
                Width = 178
                Height = 21
                Alignment = taLeftJustify
                BorderInner = fsFlatBold
                BorderOuter = fsNone
                Caption = '  Centro N'#186
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 0
                VisualStyle = vsGradient
                object lblNroCentro: TDBText
                  Left = 124
                  Top = 3
                  Width = 49
                  Height = 15
                  Alignment = taRightJustify
                  DataField = 'Codigo'
                  DataSource = dsCentros
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGreen
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
              end
              object edtDescripcionCentro: TwwDBEdit
                Left = 19
                Top = 70
                Width = 173
                Height = 19
                BorderStyle = bsNone
                CharCase = ecUpperCase
                DataField = 'Descripcion'
                DataSource = dsCentros
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
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
                OnKeyDown = edtDescripcionCentroKeyDown
              end
              object cbSucurCentrosPC: TwwDBLookupCombo
                Left = 19
                Top = 111
                Width = 172
                Height = 19
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                CharCase = ecUpperCase
                BorderStyle = bsNone
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'NombreSuc'#9'20'#9'Sucursal'#9#9)
                DataField = 'IdSucursal'
                DataSource = dsCentros
                LookupTable = dmGestion.Sucursales
                LookupField = 'IdSucursal'
                ButtonEffects.Transparent = True
                ButtonEffects.Flat = True
                Frame.Enabled = True
                Frame.Transparent = True
                Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
                Frame.FocusStyle = efsFrameRaised
                Frame.NonFocusStyle = efsFrameSingle
                ParentColor = True
                ParentFont = False
                TabOrder = 2
                AutoDropDown = False
                ShowButton = True
                PreciseEditRegion = False
                AllowClearKey = False
                OnKeyDown = cbSucurCentrosPCKeyDown
              end
              object navCentros: TwwDBNavigator
                Left = 57
                Top = 139
                Width = 100
                Height = 50
                DataSource = dsCentros
                Options = []
                RepeatInterval.InitialDelay = 500
                RepeatInterval.Interval = 100
                TransparentClearsBackground = True
                Color = 15925234
                Transparent = True
                object navCentrosFirst: TwwNavButton
                  Left = 0
                  Top = 0
                  Width = 25
                  Height = 25
                  Hint = 'Mueve al primer registro'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCentrosFirst'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 0
                  Style = nbsFirst
                end
                object navCentrosPrior: TwwNavButton
                  Left = 25
                  Top = 0
                  Width = 25
                  Height = 25
                  Hint = 'mueve al registro siguiente'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCentrosPrior'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 1
                  Style = nbsPrior
                end
                object navCentrosNext: TwwNavButton
                  Left = 50
                  Top = 0
                  Width = 25
                  Height = 25
                  Hint = 'mueve al proximo registro'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCentrosNext'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 2
                  Style = nbsNext
                end
                object navCentrosLast: TwwNavButton
                  Left = 75
                  Top = 0
                  Width = 25
                  Height = 25
                  Hint = 'mueve al ultimo registro'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCentrosLast'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 3
                  Style = nbsLast
                end
                object navCentrosInsert: TwwNavButton
                  Left = 0
                  Top = 25
                  Width = 25
                  Height = 25
                  Hint = 'Insertar nuevo registro'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCentrosInsert'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 4
                  Style = nbsInsert
                end
                object navCentrosEdit: TwwNavButton
                  Left = 25
                  Top = 25
                  Width = 25
                  Height = 25
                  Hint = 'Editar el registro actual'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCentrosEdit'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 5
                  Style = nbsEdit
                end
                object navCentrosDelete: TwwNavButton
                  Left = 50
                  Top = 25
                  Width = 25
                  Height = 25
                  Hint = 'Borrar el registro actual'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCentrosDelete'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 6
                  Style = nbsDelete
                end
                object navCentrosPost: TwwNavButton
                  Left = 75
                  Top = 25
                  Width = 25
                  Height = 25
                  Hint = 'graba las modificaciones del registro actual'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCentrosPost'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 7
                  Style = nbsPost
                end
              end
            end
            object gbCuentas: TRzGroupBox
              Left = 5
              Top = 253
              Width = 210
              Height = 196
              BorderOuter = fsFlat
              Caption = 'Cuentas'
              Color = 14478829
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              GroupStyle = gsBanner
              ParentFont = False
              TabOrder = 1
              Transparent = True
              object lblDescCta: TLabel
                Left = 15
                Top = 51
                Width = 108
                Height = 13
                Caption = 'Descripci'#243'n Cuenta'
                FocusControl = edtDescripcionCta
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblCodContable: TLabel
                Left = 15
                Top = 89
                Width = 90
                Height = 13
                Caption = 'C'#243'digo contable'
                FocusControl = edtCodContable
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object pnlCta: TRzPanel
                Left = 14
                Top = 26
                Width = 178
                Height = 21
                Alignment = taLeftJustify
                BevelWidth = 5
                BorderInner = fsFlatBold
                BorderOuter = fsNone
                Caption = '  Cuenta N'#186
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 0
                VisualStyle = vsGradient
                OnDblClick = pnlCtaDblClick
                object lblNroCta: TDBText
                  Left = 128
                  Top = 3
                  Width = 45
                  Height = 15
                  Alignment = taRightJustify
                  DataField = 'CODIGO'
                  DataSource = dsCuentas
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGreen
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
              end
              object edtDescripcionCta: TwwDBEdit
                Left = 15
                Top = 67
                Width = 175
                Height = 19
                BorderStyle = bsNone
                CharCase = ecUpperCase
                DataField = 'Descripcion'
                DataSource = dsCuentas
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
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
                OnKeyDown = edtDescripcionCentroKeyDown
              end
              object edtCodContable: TwwDBEdit
                Left = 15
                Top = 105
                Width = 175
                Height = 19
                BorderStyle = bsNone
                DataField = 'CodigoContable'
                DataSource = dsCuentas
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
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
                TabOrder = 2
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
                OnKeyDown = edtDescripcionCentroKeyDown
              end
              object navCtas: TwwDBNavigator
                Left = 53
                Top = 133
                Width = 100
                Height = 50
                DataSource = dsCuentas
                RepeatInterval.InitialDelay = 500
                RepeatInterval.Interval = 100
                TransparentClearsBackground = True
                Color = 15925234
                Transparent = True
                object navCtasFirst: TwwNavButton
                  Left = 0
                  Top = 0
                  Width = 25
                  Height = 25
                  Hint = 'Mueve al primer registro'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCtasFirst'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 0
                  Style = nbsFirst
                end
                object navCtasPrior: TwwNavButton
                  Left = 25
                  Top = 0
                  Width = 25
                  Height = 25
                  Hint = 'mueve al registro siguiente'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCtasPrior'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 1
                  Style = nbsPrior
                end
                object navCtasNext: TwwNavButton
                  Left = 50
                  Top = 0
                  Width = 25
                  Height = 25
                  Hint = 'mueve al proximo registro'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCtasNext'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 2
                  Style = nbsNext
                end
                object navCtasLast: TwwNavButton
                  Left = 75
                  Top = 0
                  Width = 25
                  Height = 25
                  Hint = 'mueve al ultimo registro'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCtasLast'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 3
                  Style = nbsLast
                end
                object navCtasInsert: TwwNavButton
                  Left = 0
                  Top = 25
                  Width = 25
                  Height = 25
                  Hint = 'Insertar nuevo registro'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCtasInsert'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 4
                  Style = nbsInsert
                end
                object navCtasEdit: TwwNavButton
                  Left = 25
                  Top = 25
                  Width = 25
                  Height = 25
                  Hint = 'Editar el registro actual'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCtasEdit'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 5
                  Style = nbsEdit
                end
                object navCtasDelete: TwwNavButton
                  Left = 50
                  Top = 25
                  Width = 25
                  Height = 25
                  Hint = 'Borrar el registro actual'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCtasDelete'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 6
                  Style = nbsDelete
                end
                object navCtasPost: TwwNavButton
                  Left = 75
                  Top = 25
                  Width = 25
                  Height = 25
                  Hint = 'graba las modificaciones del registro actual'
                  ImageIndex = -1
                  NumGlyphs = 2
                  Spacing = 4
                  Transparent = False
                  Caption = 'navCtasPost'
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 7
                  Style = nbsPost
                end
              end
            end
          end
          object tvPlanDeCtas: TTreeView
            Left = 221
            Top = 0
            Width = 515
            Height = 489
            Cursor = crHandPoint
            Align = alClient
            BevelInner = bvNone
            BevelKind = bkSoft
            Color = 15925234
            Font.Charset = ANSI_CHARSET
            Font.Color = 6710784
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            HotTrack = True
            Indent = 19
            ParentFont = False
            TabOrder = 1
            OnChange = tvPlanDeCtasChange
            OnDblClick = tvPlanDeCtasDblClick
          end
        end
      end
    end
  end
  object pnlFootGtos: TRzPanel
    Left = 0
    Top = 509
    Width = 802
    Height = 32
    Align = alBottom
    BorderOuter = fsFlatRounded
    Color = 16119543
    GradientColorStyle = gcsCustom
    GradientColorStop = 12378810
    TabOrder = 1
    VisualStyle = vsGradient
    DesignSize = (
      802
      32)
    object btnCalc: TRzBitBtn
      Left = 37
      Top = 1
      Width = 30
      Height = 30
      Hint = 'F5 - Calculadora'
      Font.Charset = ANSI_CHARSET
      Font.Color = 106
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentColor = True
      ParentFont = False
      TabOrder = 2
      OnClick = btnCalcClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFEAEAEA
        5959596666666666666666666666666666666666666666666666666464647070
        70E9E9E9FFFFFFFFFFFFFFFFFF4343435C5C5C6565655757576464645F5F5F5C
        5C5C6565655656566565655F5F5F4B4B4B707070FFFFFFFFFFFFFFFFFF191919
        F4F4F4585858FFFFFF6A6A6AA5A5A5CFCFCF595959FFFFFF5A5A5ACACACA5757
        57676767FFFFFFFFFFFFFFFFFF222222B2B2B2000000E3E3E300000037373782
        8282000000FBFBFB0000006A6A6A5D5D5D696969FFFFFFFFFFFFFFFFFF181818
        FFFFFFF6F6F6FFFFFFF9F9F9FFFFFFFFFFFFF6F6F6FFFFFFF7F7F7FFFFFF4E4E
        4E696969FFFFFFFFFFFFFFFFFF222222AFAFAF000000E1E1E10000003333337F
        7F7F000000FAFAFA0000006666665D5D5D696969FFFFFFFFFFFFFFFFFF1A1A1A
        FFFFFFA7A7A7FFFFFFB1B1B1CFCFCFE4E4E4A8A8A8FFFFFFA8A8A8E9E9E95252
        52696969FFFFFFFFFFFFFFFFFF1F1F1FCDCDCD030303EDEDED1B1B1B6B6B6BA4
        A4A4040404FFFFFF060606969696595959696969FFFFFFFFFFFFFFFFFF1F1F1F
        C8C8C8000000E9E9E90F0F0F6363639E9E9E000000FDFDFD0000008F8F8F5959
        59696969FFFFFFFFFFFFFFFFFF161616FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4B4B4B696969FFFFFFFFFFFFFFFFFF191D1D
        F7E1E1D75353FF5F5FFF5F5FFF5F5FFF5F5FFF5F5FFF5F5FFF5757FFB7B74B55
        55696969FFFFFFFFFFFFFFFFFF1C2222E1BBBBBD0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF78784B5D5D696969FFFFFFFFFFFFFFFFFF1C2222
        E3BBBBAF0000EE0000E80000E80000E80000E80000E80000E70000FF78784C5D
        5D696969FFFFFFFFFFFFFFFFFF191D1DFDE1E1A25353A25F5FA25F5FA25F5FA2
        5F5FA25F5FA25F5F9E5757DEB7B7505555696969FFFFFFFFFFFFFFFFFF101010
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4C
        4C5C5C5CFFFFFFFFFFFFFFFFFF67676714141419191919191919191919191919
        1919191919191919191919151515464646E9E9E9FFFFFFFFFFFF}
      Layout = blGlyphTop
      Spacing = 0
    end
    object btnSalirEgresos: TRzBitBtn
      Left = 418
      Top = 1
      Width = 60
      Height = 30
      Cursor = crHandPoint
      Hint = 'Cerrar y Salir'
      Alignment = taRightJustify
      FrameColor = 7617536
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      Color = 14934470
      Font.Charset = ANSI_CHARSET
      Font.Color = 106
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnSalirEgresosClick
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
      Layout = blGlyphRight
      Margin = 0
      NumGlyphs = 2
      Spacing = 3
    end
    object btnProveedores: TRzBitBtn
      Left = 6
      Top = 1
      Width = 30
      Height = 30
      Hint = 'ver Proveedores'
      Font.Charset = ANSI_CHARSET
      Font.Color = 106
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentColor = True
      ParentFont = False
      TabOrder = 1
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
    object btnSearchComp: TRzBitBtn
      Left = 69
      Top = 1
      Width = 30
      Height = 30
      Cursor = crHandPoint
      Hint = 'Busqueda de '#13'Comprobantes '#13'ya ingresados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      LightTextStyle = True
      ParentColor = True
      ParentFont = False
      TabOrder = 3
      OnClick = btnSearchCompClick
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
    object btnGestBancos: TRzBitBtn
      Left = 101
      Top = 1
      Width = 30
      Height = 30
      Cursor = crHandPoint
      Hint = 'agenda bancaria'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      LightTextStyle = True
      ParentColor = True
      ParentFont = False
      TabOrder = 4
      OnClick = btnGestBancosClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E000000000000000000002A2A2A666666
        6060606060606060606060606060606060606060606060606060606060606060
        6060606066666628282830303066666654545454545454545454545454545454
        54545454545454545454545454545454545454545656564646460000006C6C6C
        E4E4E4DCDCDCD6D6D6E4E4E4E4E4E4E4E4E0DCD4D4E4E4E4E4E4E4DCDCDCDEDE
        DED4D4D4FFFFFF0000000000000000005858581E1E1E6C6C6C00000000000000
        00004887830000000000003232320E0E0E686868141414000000000000000000
        ECECEC747474FFFFFF00000000389800FFFF00FFFF008FEB0000009C9C985252
        52FFFFFF626262000000000000000000E0E0E06C6C6CFFFFFF00000C00503400
        0000C0FFFF00685400A0F894847C4C4C4CFFFFFF5C5C5C000000000000000000
        E0E0E06C6C6CFFFFFF00000000187800FFFF00FFFF00EFFF0000009494904C4C
        4CFFFFFF5C5C5C000000000000000000E0E0E06C6C6CFFFFFF00002400FFFF00
        0000C0FFFF000000005078948C884C4C4CFFFFFF5C5C5C000000000000000000
        ECECEC747474FFFFFF00000000288400F7FF00FFFF00FFFF0000009C9C985252
        52FFFFFF6262620000000000000000005858581E1E1E6C6C6C00000000000000
        00004887830000000000003232320E0E0E6868681616160000006C6C6CF6F6F6
        DEDEDEE2E2E2D6D6D6E4E4E4E4E4E4E4E4E0DAD2D2E4E4E4E2E2E2DCDCDCDEDE
        DEE2E2E2E6E6E69898980000002A2A2A1E1E1E1212125A5A5A4E4E4E48484846
        46465C5C5C4242425E5E5E525252606060000000787878000000000000000000
        3636367878786060609C9C9CDEDEDECECECEF6F6F6E8E8E8F8F8F85252526C6C
        6C8484840000000000000000000000000000000000003030306C6C6C5454548E
        8E8EF0F0F05C5C5C5C5C5C787878000000000000000000000000000000000000
        0000000000000000000000003030306C6C6C5E5E5E7676760000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Spacing = 0
    end
    object btnPrdPenPro: TRzBitBtn
      Left = 133
      Top = 1
      Width = 30
      Height = 30
      Hint = 'Consulta de Remitos de Proveedores'
      Color = 10736081
      Font.Charset = ANSI_CHARSET
      Font.Color = 18944
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 5
      OnClick = btnPrdPenProClick
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8895E5E5E5EAC
        E8E8E8E8E8E8E8E8E8E88181818181ACE8E8E8E8E8E8E8E8E8E889E6E6D0E35E
        5EACE8E8E8E8E8E8E8E881ACACACE38181ACE8E8E8E8E8E8E8E889D7D7D0D7D7
        E35EE8E8E8E8E8E8E8E881D7D7ACD7D7E381E8E8E8E8E8E8E8E889E6E6D0E6E6
        E65EACE8E8E8E8E8E8E881ACACACACACAC81ACE8E8E8E8E8E8E889D7ACD0D7D7
        D7E35EACE8E8E8E8E8E881D7ACACD7D7D7E381ACE8E8E8E8E8E889E6E6D0E6E6
        E6E6E35E5E5EACE8E8E881ACACACACACACACE3818181ACE8E8E889D7D7D0D7D7
        D7D7D7D7D7E35E5E5EAC81D7D7ACD7D7D7D7D7D7D7E3818181AC89E6E6D0E6E6
        E6E6E6E6E6E6E6E6E35E81ACACACACACACACACACACACACACE38189D7D7D0D7D7
        D7D7D7D7D7D7D7D7D75E81D7D7ACD7D7D7D7D7D7D7D7D7D7D78189E6E6D0E6E6
        E6E6E6E6E6E6E6E6E65E81ACACACACACACACACACACACACACAC8189D7ACD0D7D7
        D7D7D7D7D7D7D7D7D75E81D7ACACD7D7D7D7D7D7D7D7D7D7D78189D7D7D0D7D7
        D7D7D7D7D7D7D7D7D75E81D7D7ACD7D7D7D7D7D7D7D7D7D7D78189D7D7D0D7D7
        D7D7D7D7D7D7D7D7D75E81D7D7ACD7D7D7D7D7D7D7D7D7D7D781898989898989
        8989898989898989898981818181818181818181818181818181E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      Layout = blGlyphRight
      Margin = 0
      NumGlyphs = 2
      Spacing = 0
    end
  end
  object dsGastos: TDataSource
    DataSet = Gastos
    Left = 658
    Top = 103
  end
  object Gastos: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = GastosAfterPost
    OnNewRecord = GastosNewRecord
    Left = 627
    Top = 103
    object GastosIdFactura: TIntegerField
      FieldName = 'IdFactura'
    end
    object GastosIdEmpresa: TIntegerField
      FieldName = 'IdEmpresa'
    end
    object GastosTipoFactura: TSmallintField
      FieldName = 'TipoFactura'
      OnValidate = GastosTipoFacturaValidate
    end
    object GastosPeriodo: TDateField
      DisplayWidth = 5
      FieldName = 'Periodo'
      OnGetText = GastosPeriodoGetText
      OnSetText = GastosPeriodoSetText
      OnValidate = GastosPeriodoValidate
      DisplayFormat = 'mm/yy'
      EditMask = '!99/99;1;_'
    end
    object GastosFechaF: TDateField
      FieldName = 'FechaF'
      OnValidate = GastosFechaFValidate
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object GastosNroFactura: TStringField
      FieldName = 'NroFactura'
      EditMask = '9999-99999999;1;_'
      Size = 13
    end
    object GastosCaiProv: TStringField
      FieldName = 'CaiProv'
      Size = 15
    end
    object GastosProveedor: TIntegerField
      FieldName = 'Proveedor'
      OnValidate = GastosProveedorValidate
    end
    object GastosNombreProveedor: TStringField
      FieldName = 'NombreProveedor'
      Size = 80
    end
    object GastosTipoIva: TSmallintField
      FieldName = 'TipoIva'
    end
    object GastosCantItm: TSmallintField
      FieldName = 'CantItm'
    end
    object GastosTotal: TMDOBCDField
      FieldName = 'Total'
      OnChange = GastosTotalChange
      currency = True
    end
    object GastosPrcBonif: TMDOBCDField
      FieldName = 'PrcBonif'
      OnChange = GastosBonificacionChange
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
    end
    object GastosBonificacion: TMDOBCDField
      FieldName = 'Bonificacion'
      OnChange = GastosBonificacionChange
      currency = True
    end
    object GastosNreRegPrc: TStringField
      FieldName = 'NreRegPrc'
      Size = 4
    end
    object GastosAlcPercep: TMDOBCDField
      FieldName = 'AlcPercep'
      OnChange = GastosAlcPercepChange
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
      currency = True
    end
    object GastosRetIva: TMDOBCDField
      FieldName = 'RetIva'
      OnChange = GastosBonificacionChange
      currency = True
    end
    object GastosExento: TMDOBCDField
      FieldName = 'Exento'
      OnChange = GastosBonificacionChange
      currency = True
    end
    object GastosMtoIvaAlc1: TCurrencyField
      FieldName = 'MtoIvaAlc1'
    end
    object GastosMtoIvaAlc2: TCurrencyField
      FieldName = 'MtoIvaAlc2'
    end
    object GastosMtoIvaOAlc: TCurrencyField
      FieldName = 'MtoIvaOAlc'
    end
    object GastosNoComputables: TMDOBCDField
      FieldName = 'NoComputables'
      OnChange = GastosBonificacionChange
      currency = True
    end
    object GastosNeto: TMDOBCDField
      FieldName = 'Neto'
      currency = True
    end
    object GastosDevQDtos: TMDOBCDField
      FieldName = 'DevQDtos'
      currency = True
    end
    object GastosRetGan: TMDOBCDField
      FieldName = 'RetGan'
      OnChange = GastosRetGanChange
      currency = True
    end
    object GastosRetIBt: TMDOBCDField
      FieldName = 'RetIBt'
      OnChange = GastosRetGanChange
      currency = True
    end
    object GastosRetLH: TMDOBCDField
      FieldName = 'RetLH'
      OnChange = GastosRetGanChange
      currency = True
    end
    object GastosSubTotal: TCurrencyField
      FieldName = 'SubTotal'
    end
    object GastosDetalle: TStringField
      FieldName = 'Detalle'
      Size = 80
    end
    object GastosTotPrcAlc: TFloatField
      FieldName = 'TotPrcAlc'
    end
    object GastosAplicar_RetIBLH: TBooleanField
      FieldName = 'Aplicar_RetIBLH'
    end
  end
  object tCompImputable: TTimer
    Enabled = False
    OnTimer = GT_CompImputableTimer
    Left = 627
    Top = 74
  end
  object dsCuentas: TDataSource
    AutoEdit = False
    DataSet = qCuentas
    Left = 597
    Top = 392
  end
  object qCuentas: TMDODataSet
    AfterInsert = qCuentasAfterInsert
    AfterPost = qCuentasAfterPost
    BeforeEdit = qCuentasBeforeEdit
    BeforePost = qCuentasBeforePost
    Database = dmGestion.dbGestion
    OnNewRecord = qCuentasNewRecord
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsCentros
    DeleteSQL.Strings = (
      'DELETE FROM PlanCtas'
      'WHERE'
      '  CENTRO = :OLD_CENTRO AND'
      '  CODIGO = :OLD_CODIGO AND'
      '  NIVEL = :OLD_NIVEL')
    InsertSQL.Strings = (
      'INSERT INTO PlanCtas'
      
        '  (CENTRO, CODIGO, NIVEL, IDCUENTA, IDSUCURSAL, DESCRIPCION, COD' +
        'IGOCONTABLE, '
      '   DETALLECENTRO)'
      'VALUES'
      
        '  (:CENTRO, :CODIGO, :NIVEL, :IDCUENTA, :IDSUCURSAL, :DESCRIPCIO' +
        'N, :CODIGOCONTABLE, '
      '   :DETALLECENTRO)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE PlanCtas'
      'SET'
      '  CENTRO = :CENTRO,'
      '  CODIGO = :CODIGO,'
      '  NIVEL = :NIVEL,'
      '  IDCUENTA = :IDCUENTA,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  DESCRIPCION = :DESCRIPCION,'
      '  CODIGOCONTABLE = :CODIGOCONTABLE,'
      '  DETALLECENTRO = :DETALLECENTRO'
      'WHERE'
      '  CENTRO = :OLD_CENTRO AND'
      '  CODIGO = :OLD_CODIGO AND'
      '  NIVEL = :OLD_NIVEL')
    RefreshSQL.Strings = (
      'SELECT '
      '  CENTRO,'
      '  CODIGO,'
      '  NIVEL,'
      '  IDCUENTA,'
      '  IDSUCURSAL,'
      '  DESCRIPCION,'
      '  CODIGOCONTABLE,'
      '  DETALLECENTRO'
      'FROM PlanCtas '
      'WHERE'
      '  CENTRO = :CENTRO AND'
      '  CODIGO = :CODIGO AND'
      '  NIVEL = :NIVEL')
    SelectSQL.Strings = (
      'Select CENTRO, CODIGO, NIVEL, IDCUENTA, IDSUCURSAL,'
      '           DESCRIPCION, CODIGOCONTABLE, DETALLECENTRO'
      'From PlanCtas'
      'Where Nivel = 1 And Centro =:Codigo'
      'Order By CENTRO, CODIGO, NIVEL')
    Left = 567
    Top = 392
    object qCuentasCENTRO: TIntegerField
      FieldName = 'CENTRO'
      Origin = '"PLANCTAS"."CENTRO"'
      Required = True
    end
    object qCuentasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PLANCTAS"."CODIGO"'
      Required = True
    end
    object qCuentasNIVEL: TSmallintField
      FieldName = 'NIVEL'
      Origin = '"PLANCTAS"."NIVEL"'
      Required = True
    end
    object qCuentasIDCUENTA: TIntegerField
      FieldName = 'IDCUENTA'
      Origin = '"PLANCTAS"."IDCUENTA"'
    end
    object qCuentasIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"PLANCTAS"."IDSUCURSAL"'
    end
    object qCuentasDESCRIPCION: TMDOStringField
      FieldName = 'DESCRIPCION'
      Origin = '"PLANCTAS"."DESCRIPCION"'
      Size = 30
    end
    object qCuentasCODIGOCONTABLE: TMDOStringField
      FieldName = 'CODIGOCONTABLE'
      Origin = '"PLANCTAS"."CODIGOCONTABLE"'
    end
    object qCuentasDETALLECENTRO: TMDOStringField
      FieldName = 'DETALLECENTRO'
      Origin = '"PLANCTAS"."DETALLECENTRO"'
      Size = 60
    end
  end
  object qCentros: TMDODataSet
    AfterInsert = qCentrosAfterInsert
    AfterPost = qCuentasAfterPost
    BeforeDelete = qCentrosBeforeDelete
    BeforeEdit = qCentrosBeforeEdit
    Database = dmGestion.dbGestion
    OnNewRecord = qCentrosNewRecord
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM PlanCtas'
      'WHERE'
      '  CENTRO = :OLD_CENTRO AND'
      '  CODIGO = :OLD_CODIGO AND'
      '  NIVEL = :OLD_NIVEL')
    InsertSQL.Strings = (
      'INSERT INTO PlanCtas'
      
        '  (CENTRO, CODIGO, NIVEL, IDCUENTA, IDSUCURSAL, DESCRIPCION, COD' +
        'IGOCONTABLE, '
      '   DETALLECENTRO)'
      'VALUES'
      
        '  (:CENTRO, :CODIGO, :NIVEL, :IDCUENTA, :IDSUCURSAL, :DESCRIPCIO' +
        'N, :CODIGOCONTABLE, '
      '   :DETALLECENTRO)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE PlanCtas'
      'SET'
      '  CENTRO = :CENTRO,'
      '  CODIGO = :CODIGO,'
      '  NIVEL = :NIVEL,'
      '  IDCUENTA = :IDCUENTA,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  DESCRIPCION = :DESCRIPCION,'
      '  CODIGOCONTABLE = :CODIGOCONTABLE,'
      '  DETALLECENTRO = :DETALLECENTRO'
      'WHERE'
      '  CENTRO = :OLD_CENTRO AND'
      '  CODIGO = :OLD_CODIGO AND'
      '  NIVEL = :OLD_NIVEL')
    RefreshSQL.Strings = (
      'SELECT '
      '  CENTRO,'
      '  CODIGO,'
      '  NIVEL,'
      '  IDCUENTA,'
      '  IDSUCURSAL,'
      '  DESCRIPCION,'
      '  CODIGOCONTABLE,'
      '  DETALLECENTRO'
      'FROM PlanCtas '
      'WHERE'
      '  CENTRO = :CENTRO AND'
      '  CODIGO = :CODIGO AND'
      '  NIVEL = :NIVEL')
    SelectSQL.Strings = (
      'Select CENTRO, CODIGO, NIVEL, IDCUENTA, IDSUCURSAL,'
      '           DESCRIPCION, CODIGOCONTABLE, DETALLECENTRO'
      'From PlanCtas'
      'Where Nivel = 0'
      'Order By CENTRO, CODIGO, NIVEL')
    Left = 567
    Top = 334
    object qCentrosCENTRO: TIntegerField
      FieldName = 'CENTRO'
      Origin = '"PLANCTAS"."CENTRO"'
      Required = True
    end
    object qCentrosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PLANCTAS"."CODIGO"'
      Required = True
    end
    object qCentrosNIVEL: TSmallintField
      FieldName = 'NIVEL'
      Origin = '"PLANCTAS"."NIVEL"'
      Required = True
    end
    object qCentrosIDCUENTA: TIntegerField
      FieldName = 'IDCUENTA'
      Origin = '"PLANCTAS"."IDCUENTA"'
    end
    object qCentrosIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"PLANCTAS"."IDSUCURSAL"'
    end
    object qCentrosDESCRIPCION: TMDOStringField
      FieldName = 'DESCRIPCION'
      Origin = '"PLANCTAS"."DESCRIPCION"'
      Size = 30
    end
    object qCentrosCODIGOCONTABLE: TMDOStringField
      FieldName = 'CODIGOCONTABLE'
      Origin = '"PLANCTAS"."CODIGOCONTABLE"'
    end
    object qCentrosDETALLECENTRO: TMDOStringField
      FieldName = 'DETALLECENTRO'
      Origin = '"PLANCTAS"."DETALLECENTRO"'
      Size = 60
    end
  end
  object dsInfCtas: TDataSource
    DataSet = qInfCuentas
    Left = 658
    Top = 161
  end
  object qInfCuentas: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select I.IdArticulo, I.PrecioNeto, I.PrecioTotal, I.MtoIva,'
      '           I.Cantidad, I.AlicuotaIva, I.FechaF, F.IdFactura,'
      '           F.IdSucursal, F.IdPuntoVenta, F.IdEmpresa, '
      
        '           F.NroFactura, T.DescCorta,  P.DetalleCentro as Cuenta' +
        ', '
      '           S.DetSuc, D.DetEmp, E.Nombre'
      'From FacCom F'
      'Join ItemsFC I'
      '  on I.IdFactura = F.IdFactura And '
      '       I.IdSucursal = F.IdSucursal And'
      '       I.IdPuntoVenta = F.IdPuntoVenta'
      'Join Proveedores E'
      '  on E.IdProveedor = F.Proveedor'
      'Join PlanCtas P'
      '  on P.IdCuenta = I.IdArticulo'
      'Join TiposComp T'
      '  on T.IdComprobante = F.TipoFactura'
      'Join DatosSis D'
      '  on D.IdEmpresa = F.IdEmpresa'
      'Join Sucursales S'
      '  on S.IdSucursal = F.IdSucursal'
      'Where (F.FechaF between :Desde and :Hasta) and'
      '      (F.State = 0) and (F.TipoOP = 2)'
      'Order By I.IdArticulo')
    Left = 627
    Top = 161
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
    object qInfCuentasDETEMP: TMDOStringField
      FieldName = 'DETEMP'
      Origin = '"DATOSSIS"."DETEMP"'
      Size = 5
    end
    object qInfCuentasDETSUC: TMDOStringField
      FieldName = 'DETSUC'
      Origin = '"SUCURSALES"."DETSUC"'
      Size = 2
    end
    object qInfCuentasFECHAF: TDateField
      FieldName = 'FECHAF'
      Origin = '"ITEMSFC"."FECHAF"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qInfCuentasDESCCORTA: TMDOStringField
      FieldName = 'DESCCORTA'
      Origin = '"TIPOSCOMP"."DESCCORTA"'
      Size = 5
    end
    object qInfCuentasNROFACTURA: TMDOStringField
      FieldName = 'NROFACTURA'
      Origin = '"FACCOM"."NROFACTURA"'
      Size = 13
    end
    object qInfCuentasIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
      Origin = '"ITEMSFC"."IDARTICULO"'
    end
    object qInfCuentasCUENTA: TMDOStringField
      FieldName = 'CUENTA'
      Size = 60
    end
    object qInfCuentasPRECIONETO: TMDOBCDField
      FieldName = 'PRECIONETO'
      Origin = '"ITEMSFC"."PRECIONETO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qInfCuentasPRECIOTOTAL: TMDOBCDField
      FieldName = 'PRECIOTOTAL'
      Origin = '"ITEMSFC"."PRECIOTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qInfCuentasMTOIVA: TMDOBCDField
      FieldName = 'MTOIVA'
      Origin = '"ITEMSFC"."MTOIVA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qInfCuentasCANTIDAD: TMDOBCDField
      FieldName = 'CANTIDAD'
      Origin = '"ITEMSFC"."CANTIDAD"'
      DisplayFormat = '0.00%'
      Precision = 18
      Size = 4
    end
    object qInfCuentasALICUOTAIVA: TMDOBCDField
      FieldName = 'ALICUOTAIVA'
      Origin = '"ITEMSFC"."ALICUOTAIVA"'
      DisplayFormat = '0.00%'
      Precision = 18
      Size = 4
    end
    object qInfCuentasIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"FACCOM"."IDFACTURA"'
      Required = True
      Visible = False
    end
    object qInfCuentasIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"FACCOM"."IDSUCURSAL"'
      Required = True
      Visible = False
    end
    object qInfCuentasIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = '"FACCOM"."IDEMPRESA"'
      Visible = False
    end
    object qInfCuentasNOMBRE: TMDOStringField
      DisplayLabel = 'Proveedor'
      FieldName = 'NOMBRE'
      Origin = '"PROVEEDORES"."NOMBRE"'
      Size = 30
    end
    object qInfCuentasIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Required = True
    end
  end
  object dsTotCtros: TDataSource
    DataSet = qInfCentros
    Left = 597
    Top = 248
  end
  object qNoImp: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select F.IdFactura, F.IdSucursal, F.IdPuntoVenta,'
      '           F.FechaF,  F.NroFactura, P.Nombre, P.Documento, '
      '          T.Documento as TDoc, F.Total, E.DetEmp '
      'From FacCom F'
      'Join Proveedores P'
      '   on P.IdProveedor = F.Proveedor'
      'Join TipoDoc T'
      '   on T.TipoDoc = P.TipoDoc'
      'Left Outer Join DatosSis E'
      '   on E.IdEmpresa = F.IdEmpresa'
      'Where (FechaF between :Desde and :Hasta) And '
      '           (TipoFactura = 18)'
      'Order By F.FechaF')
    Left = 567
    Top = 305
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
    object qNoImpDETEMP: TMDOStringField
      DisplayLabel = 'Empresa'
      FieldName = 'DETEMP'
      Origin = '"DATOSSIS"."DETEMP"'
      Size = 5
    end
    object qNoImpFechaF: TDateField
      DisplayLabel = 'Fecha'
      DisplayWidth = 10
      FieldName = 'FechaF'
      Origin = '"FACCOM"."FECHAF"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qNoImpNroFactura: TStringField
      DisplayWidth = 13
      FieldName = 'NroFactura'
      Origin = '"FACCOM"."NROFACTURA"'
      Size = 13
    end
    object qNoImpNOMBRE: TMDOStringField
      DisplayLabel = 'Proveedor'
      FieldName = 'NOMBRE'
      Origin = '"PROVEEDORES"."NOMBRE"'
      Size = 30
    end
    object qNoImpTDOC: TMDOStringField
      FieldName = 'TDOC'
    end
    object qNoImpDOCUMENTO: TMDOStringField
      FieldName = 'Documento'
      Origin = '"TIPODOC"."DOCUMENTO"'
      Size = 13
    end
    object qNoImpTOTAL: TMDOBCDField
      DisplayWidth = 12
      FieldName = 'TOTAL'
      Origin = '"FACCOM"."TOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qNoImpIdFactura: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdFactura'
      Origin = '"FACCOM"."IDFACTURA"'
      Visible = False
    end
    object qNoImpIdSucursal: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdSucursal'
      Origin = '"FACCOM"."IDSUCURSAL"'
      Visible = False
    end
    object qNoImpIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Required = True
      Visible = False
    end
  end
  object dsqNoImp: TDataSource
    DataSet = qNoImp
    Left = 597
    Top = 305
  end
  object qInformeEP: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select F.NroFactura, F.FechaF, F.Total, P.IdProveedor, '
      '          P.Nombre, S.DetSuc, I.Comprobante, I.FechaOp, '
      '          Y.TipoP, G.Comprobante as NroChq, I.Importe, '
      '          I.SaldoMov, G.Detalle, G.Descripcion, F.IdFactura, '
      '          F.IdSucursal, F.IdPuntoVenta, I.IdOrdPago'
      'From FacCom  F'
      'Join Proveedores P'
      '  on P.IdProveedor = F.Proveedor'
      'Join Sucursales S'
      '  on S.IdSucursal = F.IdSucursal'
      'Left outer Join ItemsOP I'
      '  on (I.IdFactura = F.IdFactura) And'
      '       (I.IdSucursal = F.IdSucursal) And '
      '       (I.Entidad = F.Proveedor)'
      'Left outer Join ItemsPg G'
      '  on (G.IdOrden = I.IdOrdPago) and '
      '       (G.Entidad = I.Entidad)'
      'Left outer Join TiposPago Y'
      '  on (Y.IdTipoP = G.TipoPago) and '
      '       (G.Entidad = I.Entidad)'
      'Where F.FechaF between :Desde And :Hasta'
      'Order By P.IdProveedor, F.FechaF')
    Left = 567
    Top = 219
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
    object qInformeEPNroFactura: TStringField
      DisplayWidth = 13
      FieldName = 'NroFactura'
      Origin = '"FACCOM"."NROFACTURA"'
      Size = 13
    end
    object qInformeEPFechaF: TDateField
      DisplayLabel = 'Fecha'
      DisplayWidth = 10
      FieldName = 'FechaF'
      Origin = '"FACCOM"."FECHAF"'
    end
    object qInformeEPNombre: TStringField
      DisplayLabel = 'Proveedor'
      DisplayWidth = 30
      FieldName = 'Nombre'
      Origin = '"PROVEEDORES"."NOMBRE"'
      Size = 30
    end
    object qInformeEPComprobante: TStringField
      DisplayLabel = 'N'#186' OP'
      DisplayWidth = 13
      FieldName = 'Comprobante'
      Origin = '"ITEMSPG"."COMPROBANTE"'
      Size = 13
    end
    object qInformeEPFechaOp: TDateField
      DisplayLabel = 'Fecha OP'
      DisplayWidth = 10
      FieldName = 'FechaOp'
      Origin = '"ITEMSOP"."FECHAOP"'
    end
    object qInformeEPNroChq: TStringField
      DisplayWidth = 20
      FieldName = 'NroChq'
      Origin = 'ItemsPg.Comprobante'
    end
    object qInformeEPDetalle: TStringField
      DisplayWidth = 30
      FieldName = 'Detalle'
      Origin = '"ITEMSPG"."DETALLE"'
      Size = 30
    end
    object qInformeEPDescripcion: TStringField
      DisplayWidth = 30
      FieldName = 'Descripcion'
      Origin = '"ITEMSPG"."DESCRIPCION"'
      Size = 30
    end
    object qInformeEPTOTAL: TMDOBCDField
      FieldName = 'TOTAL'
      Origin = '"FACCOM"."TOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qInformeEPIMPORTE: TMDOBCDField
      FieldName = 'IMPORTE'
      Origin = '"ITEMSOP"."IMPORTE"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qInformeEPSALDOMOV: TMDOBCDField
      FieldName = 'SALDOMOV'
      Origin = '"ITEMSOP"."SALDOMOV"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qInformeEPIdFactura: TIntegerField
      FieldName = 'IdFactura'
      Origin = '"FACCOM"."IDFACTURA"'
      Visible = False
    end
    object qInformeEPIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
      Origin = '"FACCOM"."IDSUCURSAL"'
      Visible = False
    end
    object qInformeEPIdOrdPago: TIntegerField
      FieldName = 'IdOrdPago'
      Origin = '"ITEMSOP"."IDORDPAGO"'
      Visible = False
    end
    object qInformeEPIDPROVEEDOR: TIntegerField
      FieldName = 'IDPROVEEDOR'
      Origin = '"PROVEEDORES"."IDPROVEEDOR"'
      Required = True
    end
    object qInformeEPDETSUC: TMDOStringField
      FieldName = 'DETSUC'
      Origin = '"SUCURSALES"."DETSUC"'
      Size = 2
    end
    object qInformeEPTIPOP: TMDOStringField
      FieldName = 'TIPOP'
      Origin = '"TIPOSPAGO"."TIPOP"'
      Size = 30
    end
    object qInformeEPIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Required = True
    end
  end
  object dsqInforme: TDataSource
    DataSet = qInformeEP
    Left = 597
    Top = 219
  end
  object dbpInfCtas: TppDBPipeline
    DataSource = dsInfCtas
    UserName = 'dbpInfCtas'
    Left = 627
    Top = 190
  end
  object rpInfCtas: TppReport
    AutoStop = False
    DataPipeline = dbpInfCtas
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Informe de Gastos'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 9350
    PrinterSetup.mmMarginLeft = 10350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 10350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    Icon.Data = {
      0000010001002020040000000000E80200001600000028000000200000004000
      0000010004000000000000020000000000000000000000000000000000000000
      0000000080000080000000808000800000008000800080800000C0C0C0008080
      80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008000000000000000000000008000000888000000000000000000000080000
      88888000000000000000000000080000888880000F000F000F000F0000080008
      888888000F00F0F0F0F0F0F000080088888888000F00F0F0F0F0F0F000080888
      888888000F00F0F0F0F0F0F000080888888888800F00F0F0F0F0F0F008088088
      888888800F00F0F0F0F0F0F008088008888888800F00F0F0F0F0F0F008088080
      888888880F000F000F000F000808808008888888000000000000000008088080
      0088888800000000000000000808808000888888800000000000000008088080
      0080888880000000000000000808808000800888088888888888800008088080
      0080008088888008888800000808808000800000000009900000000008088000
      008000080000099000808000080800000080000800009BB90080800008080000
      008000080009900B908080000808000000000308000B01109080800008080000
      00000308000B90310080000008080000000030080080B9330080000008000000
      0008033300800033008000000800000000000888308008300080000008000000
      0000800830800883008000000800000000080008308000830080000000000000
      000000088333338300000000000000000000000088888880000000000000FF00
      0000FE000000FC000000F8000000F0000000E0000000C0000002800000020000
      00020000000200000002400000024000000A5000000A5800000A5C00001A5C00
      001A5D00003A5D80007A5DC0007A7DEF0D7AFDEE057AFDEC017AFFAC017AFFAC
      01FAFF6C05FBFE8D0DFBFF859DFBFF658DFBFEE5CDFFFFE00FFFFFF01FFF}
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 658
    Top = 190
    Version = '10.02'
    mmColumnWidth = 197300
    DataPipelineName = 'dbpInfCtas'
    object hbInfCtas: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object shTitInfCtas: TppShape
        UserName = 'shTitInfCtas'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 8731
        mmLeft = 0
        mmTop = 0
        mmWidth = 280300
        BandType = 0
      end
      object lblTitInfGto: TppLabel
        UserName = 'lblTitInfGto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTitInfGto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 1588
        mmTop = 2646
        mmWidth = 18584
        BandType = 0
      end
      object lblPaginasIC: TppSystemVariable
        UserName = 'lblPaginasIC'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 268553
        mmTop = 2381
        mmWidth = 9790
        BandType = 0
      end
    end
    object dbInfGtos: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object lblIGFecha: TppDBText
        UserName = 'lblIGFecha'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FECHAF'
        DataPipeline = dbpInfCtas
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpInfCtas'
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 265
        mmWidth = 15081
        BandType = 4
      end
      object lblIGDetalle: TppDBText
        UserName = 'lblIGDetalle'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CUENTA'
        DataPipeline = dbpInfCtas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpInfCtas'
        mmHeight = 3440
        mmLeft = 70379
        mmTop = 0
        mmWidth = 116152
        BandType = 4
      end
      object lblIGNeto: TppDBText
        UserName = 'lblIGNeto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRECIONETO'
        DataPipeline = dbpInfCtas
        DisplayFormat = '0.00;(0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInfCtas'
        mmHeight = 3440
        mmLeft = 214842
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object lblIGIva: TppDBText
        UserName = 'lblIGIva'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MTOIVA'
        DataPipeline = dbpInfCtas
        DisplayFormat = '0.00;(0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInfCtas'
        mmHeight = 3440
        mmLeft = 238655
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object lblIGTotal: TppDBText
        UserName = 'lblIGTotal'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRECIOTOTAL'
        DataPipeline = dbpInfCtas
        DisplayFormat = '0.00;(0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInfCtas'
        mmHeight = 3440
        mmLeft = 261409
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object lblIGTComp: TppDBText
        UserName = 'lblIGTComp'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCCORTA'
        DataPipeline = dbpInfCtas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpInfCtas'
        mmHeight = 3440
        mmLeft = 17198
        mmTop = 265
        mmWidth = 7938
        BandType = 4
      end
      object lblIGNroFac: TppDBText
        UserName = 'lblIGNroFac'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NROFACTURA'
        DataPipeline = dbpInfCtas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpInfCtas'
        mmHeight = 3440
        mmLeft = 27517
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object lblIGPrcAp: TppDBText
        UserName = 'lblIGPrcAp'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CANTIDAD'
        DataPipeline = dbpInfCtas
        DisplayFormat = '0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInfCtas'
        mmHeight = 3440
        mmLeft = 48948
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object lblIGAlcIva: TppDBText
        UserName = 'lblIGAlcIva'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ALICUOTAIVA'
        DataPipeline = dbpInfCtas
        DisplayFormat = '0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInfCtas'
        mmHeight = 3440
        mmLeft = 194734
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
    end
    object sbInfCtas: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object lblIGTotTot: TppDBCalc
        UserName = 'lblIGTotTot'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRECIOTOTAL'
        DataPipeline = dbpInfCtas
        DisplayFormat = '0.00;(0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInfCtas'
        mmHeight = 4233
        mmLeft = 261938
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object lblIGTotIva: TppDBCalc
        UserName = 'lblIGTotTot1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MTOIVA'
        DataPipeline = dbpInfCtas
        DisplayFormat = '0.00;(0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInfCtas'
        mmHeight = 4233
        mmLeft = 239184
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object lblIGTotNet: TppDBCalc
        UserName = 'lblIGTotTot2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRECIONETO'
        DataPipeline = dbpInfCtas
        DisplayFormat = '0.00;(0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInfCtas'
        mmHeight = 4233
        mmLeft = 214842
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object lnIGTotales: TppLine
        UserName = 'lnIGTotales'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 265
        mmWidth = 280300
        BandType = 7
      end
      object lblICEmision: TppSystemVariable
        UserName = 'lblICEmision'
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
        mmLeft = 0
        mmTop = 2381
        mmWidth = 31665
        BandType = 7
      end
    end
  end
  object ItemsGT: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    AfterPost = ItemsGTAfterPost
    AfterDelete = ItemsGTAfterDelete
    OnNewRecord = ItemsGTNewRecord
    Left = 567
    Top = 103
    object ItemsGTIdFactura: TIntegerField
      FieldName = 'IdFactura'
    end
    object ItemsGTIdItem: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdItem'
      Visible = False
    end
    object ItemsGTIdCuenta: TIntegerField
      DisplayLabel = 'Cuenta'
      DisplayWidth = 6
      FieldName = 'IdCuenta'
      OnSetText = ItemsGTIdCuentaSetText
      OnValidate = ItemsGTIdCuentaValidate
    end
    object ItemsGTDetCuenta: TStringField
      DisplayLabel = 'Detalle Cuenta'
      DisplayWidth = 40
      FieldName = 'DetCuenta'
      Size = 40
    end
    object ItemsGTPrcCta: TFloatField
      DisplayWidth = 10
      FieldName = 'PrcCta'
      OnChange = ItemsGTPrcCtaChange
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
    end
    object ItemsGTIdAlcIva: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdAlcIva'
    end
    object ItemsGTAlcIva: TFloatField
      DisplayWidth = 10
      FieldName = 'AlcIva'
      OnChange = ItemsGTAlcIvaChange
    end
    object ItemsGTMontoCta: TCurrencyField
      DisplayWidth = 10
      FieldName = 'MontoCta'
    end
    object ItemsGTMontoIva: TCurrencyField
      FieldName = 'MontoIva'
    end
    object ItemsGTMaxIdItem: TAggregateField
      FieldName = 'MaxIdItem'
      Visible = True
      Active = True
      Expression = 'Max(IdItem)'
    end
  end
  object dsItemsGT: TDataSource
    DataSet = ItemsGT
    Left = 597
    Top = 103
  end
  object dsCentros: TDataSource
    AutoEdit = False
    DataSet = qCentros
    Left = 597
    Top = 334
  end
  object rpPlanCtas: TppReport
    AutoStop = False
    DataPipeline = dbpCentros
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Plan de Cuentas'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 10350
    PrinterSetup.mmMarginLeft = 12350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 12350
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
    Left = 567
    Top = 421
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpCentros'
    object tbPlanCtas: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object shpPlanCtas1: TppShape
        UserName = 'shpPlanCtas1'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 8202
        mmLeft = 0
        mmTop = 0
        mmWidth = 191300
        BandType = 1
      end
      object lblTitPlanCtas: TppLabel
        UserName = 'lblTitPlanCtas'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTitPlanCtas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 83873
        mmTop = 2646
        mmWidth = 24426
        BandType = 1
      end
    end
    object dbPlanCtas: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object shpPlanCtas2: TppShape
        UserName = 'shpPlanCtas2'
        Brush.Color = 13828095
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 191300
        BandType = 4
      end
      object lblCentro: TppLabel
        UserName = 'lblCentro'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Centro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 3048
        mmTop = 1852
        mmWidth = 11769
        BandType = 4
      end
      object lblCodCentro: TppDBText
        UserName = 'lblCodCentro'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CENTRO'
        DataPipeline = dbpCentros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpCentros'
        mmHeight = 4233
        mmLeft = 32015
        mmTop = 1852
        mmWidth = 17463
        BandType = 4
      end
      object lblDetCentro: TppDBText
        UserName = 'lblDetCentro'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRIPCION'
        DataPipeline = dbpCentros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbpCentros'
        mmHeight = 4233
        mmLeft = 53446
        mmTop = 1852
        mmWidth = 33105
        BandType = 4
      end
      object srCuentas: TppSubReport
        UserName = 'srCuentas'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'dbpCuentas'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 7938
        mmWidth = 191300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbpCuentas
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Plan de Cuentas'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 10350
          PrinterSetup.mmMarginLeft = 12350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 12350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '10.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbpCuentas'
          object tbCentroPlanCtas: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object shpPlanCtas3: TppShape
              UserName = 'shpPlanCtas3'
              ParentWidth = True
              Shape = stRoundRect
              mmHeight = 6085
              mmLeft = 0
              mmTop = 0
              mmWidth = 191300
              BandType = 1
            end
            object lblDetCta: TppLabel
              UserName = 'lblDetCta'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cuentas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 28310
              mmTop = 1058
              mmWidth = 14288
              BandType = 1
            end
          end
          object dbCentroPlanCtas: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object lblDetCtroCta: TppDBText
              UserName = 'lblDetCtroCta'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DETALLECENTRO'
              DataPipeline = dbpCuentas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'dbpCuentas'
              mmHeight = 4233
              mmLeft = 44715
              mmTop = 0
              mmWidth = 58928
              BandType = 4
            end
            object lblCodCuenta: TppDBText
              UserName = 'lblCodCuenta'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CODIGO'
              DataPipeline = dbpCuentas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpCuentas'
              mmHeight = 4233
              mmLeft = 8467
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object lblIdCta: TppDBText
              UserName = 'lblIdCta'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'IDCUENTA'
              DataPipeline = dbpCuentas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsItalic]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbpCuentas'
              mmHeight = 4233
              mmLeft = 167217
              mmTop = 0
              mmWidth = 21431
              BandType = 4
            end
          end
        end
      end
    end
    object fbPlanCtas: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object lblPaginaPC: TppSystemVariable
        UserName = 'lblPaginaPC'
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
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 86519
        mmTop = 529
        mmWidth = 23813
        BandType = 8
      end
    end
  end
  object dbpCentros: TppDBPipeline
    DataSource = dsCentros
    UserName = 'dbpCentros'
    Left = 597
    Top = 421
  end
  object dbpCuentas: TppDBPipeline
    DataSource = dsCuentas
    UserName = 'dbpCuentas'
    Left = 658
    Top = 392
  end
  object dsFacCom: TDataSource
    DataSet = FacCom
    Left = 597
    Top = 132
  end
  object FacCom: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = FacComBeforePost
    OnNewRecord = FacComNewRecord
    Left = 567
    Top = 132
    object FacComPeriodo: TDateField
      DisplayWidth = 5
      FieldName = 'Periodo'
      OnGetText = FacComPeriodoGetText
      OnSetText = FacComPeriodoSetText
      OnValidate = FacComPeriodoValidate
      DisplayFormat = 'mm/yy'
      EditMask = '!99/99;1;_'
    end
    object FacComFechaF: TDateField
      FieldName = 'FechaF'
      OnValidate = FacComFechaFValidate
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object FacComIdFactura: TIntegerField
      FieldName = 'IdFactura'
    end
    object FacComIdRemito: TIntegerField
      FieldName = 'IdRemito'
    end
    object FacComIdEmpresa: TIntegerField
      FieldName = 'IdEmpresa'
      OnValidate = FacComIdEmpresaValidate
    end
    object FacComProveedor: TIntegerField
      FieldName = 'Proveedor'
      Required = True
      OnValidate = FacComProveedorValidate
    end
    object FacComTipoFactura: TSmallintField
      DisplayWidth = 20
      FieldName = 'TipoFactura'
      OnChange = FacComTipoFacturaChange
      OnValidate = FacComTipoFacturaValidate
    end
    object FacComNroFactura: TStringField
      FieldName = 'NroFactura'
      OnValidate = FacComNroFacturaValidate
      EditMask = '9999-99999999;1;_'
      Size = 13
    end
    object FacComCompRef: TStringField
      FieldName = 'CompRef'
      OnChange = FacComCompRefChange
      Size = 13
    end
    object FacComIdCompRef: TIntegerField
      FieldName = 'IdCompRef'
    end
    object FacComCaiProv: TStringField
      FieldName = 'CaiProv'
      Size = 15
    end
    object FacComNombreProveedor: TStringField
      DisplayLabel = 'Proveedor'
      DisplayWidth = 100
      FieldName = 'NombreProveedor'
      Size = 100
    end
    object FacComTipoIva: TSmallintField
      FieldName = 'TipoIva'
    end
    object FacComProvConVDolar: TBooleanField
      FieldName = 'ProvConVDolar'
    end
    object FacComCantArtic: TSmallintField
      FieldName = 'CantArtic'
    end
    object FacComAlcPercep: TMDOBCDField
      FieldName = 'AlcPercep'
      OnChange = FacComPrcBonifChange
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
    end
    object FacComPPACuenta: TMDOBCDField
      FieldName = 'PPACuenta'
      OnChange = FacComPrcBonifChange
      currency = True
    end
    object FacComNroRegPerc: TStringField
      FieldName = 'NroRegPerc'
      Size = 4
    end
    object FacComPrcBonif: TMDOBCDField
      FieldName = 'PrcBonif'
      OnChange = FacComPrcBonifChange
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
    end
    object FacComSubTotal: TMDOBCDField
      FieldName = 'SubTotal'
      OnChange = FacComPrcBonifChange
      currency = True
    end
    object FacComBonificacion: TMDOBCDField
      FieldName = 'Bonificacion'
      OnChange = FacComPrcBonifChange
      currency = True
    end
    object FacComNoComp: TMDOBCDField
      FieldName = 'NoComp'
      OnChange = FacComPrcBonifChange
      currency = True
    end
    object FacComExento: TMDOBCDField
      FieldName = 'Exento'
      OnChange = FacComPrcBonifChange
      currency = True
    end
    object FacComIvaAlicuota1: TMDOBCDField
      FieldName = 'IvaAlicuota1'
      currency = True
    end
    object FacComIvaAlicuota2: TMDOBCDField
      FieldName = 'IvaAlicuota2'
      currency = True
    end
    object FacComIvaOtAlc: TMDOBCDField
      FieldName = 'IvaOtAlc'
      currency = True
    end
    object FacComNeto: TMDOBCDField
      FieldName = 'Neto'
      OnChange = FacComNetoChange
      currency = True
    end
    object FacComTotal: TMDOBCDField
      FieldName = 'Total'
      currency = True
    end
    object FacComDetalle: TStringField
      FieldName = 'Detalle'
      Size = 80
    end
  end
  object dsItemsFC: TDataSource
    DataSet = ItemsFC
    Left = 597
    Top = 161
  end
  object ItemsFC: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    AfterPost = ItemsFCAfterPost
    AfterDelete = ItemsFCAfterDelete
    OnNewRecord = ItemsFCNewRecord
    Left = 567
    Top = 161
    object ItemsFCIdFactura: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdFactura'
    end
    object ItemsFCIdItem: TAutoIncField
      FieldName = 'IdItem'
    end
    object ItemsFCIdArticulo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'IdArticulo'
      OnSetText = ItemsFCIdArticuloSetText
      OnValidate = ItemsFCIdArticuloValidate
    end
    object ItemsFCTalle: TIntegerField
      FieldName = 'Talle'
      OnGetText = ItemsFCTalleGetText
      OnSetText = ItemsFCTalleSetText
    end
    object ItemsFCProducto: TStringField
      Tag = 1
      DisplayLabel = 'Descripci'#243'n Producto'
      DisplayWidth = 50
      FieldName = 'Producto'
      Size = 50
    end
    object ItemsFCColor: TStringField
      FieldName = 'Color'
    end
    object ItemsFCCantidad: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'Cantidad'
      Required = True
      OnChange = ItemsFCCantidadChange
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object ItemsFCTipoImpInt: TSmallintField
      FieldName = 'TipoImpInt'
      OnValidate = ItemsFCTipoImpIntValidate
    end
    object ItemsFCPrcBonif: TMDOBCDField
      FieldName = 'PrcBonif'
      OnChange = ItemsFCCantidadChange
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
    end
    object ItemsFCValorDolar: TCurrencyField
      FieldName = 'ValorDolar'
    end
    object ItemsFCCostoActual: TMDOBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Costo Actual'
      FieldName = 'CostoActual'
      DisplayFormat = '$0.000'
      EditFormat = '0.000'
      currency = True
    end
    object ItemsFCFinalActual: TMDOBCDField
      FieldName = 'FinalActual'
      currency = True
    end
    object ItemsFCUNetoDolar: TCurrencyField
      FieldName = 'UNetoDolar'
      OnValidate = ItemsFCUNetoDolarValidate
    end
    object ItemsFCUPrecioNeto: TMDOBCDField
      DisplayLabel = 'UPrecio Base'
      DisplayWidth = 10
      FieldName = 'UPrecioNeto'
      Required = True
      OnChange = ItemsFCCantidadChange
      OnValidate = ItemsFCUPrecioNetoValidate
      DisplayFormat = '$0.000'
      EditFormat = '0.000'
      currency = True
    end
    object ItemsFCTPrecioNeto: TCurrencyField
      FieldName = 'TPrecioNeto'
    end
    object ItemsFCUBonifItem: TMDOBCDField
      FieldName = 'UBonifItem'
      OnChange = ItemsFCCantidadChange
      DisplayFormat = '$0.000'
      EditFormat = '0.000'
      currency = True
    end
    object ItemsFCTBonifItem: TCurrencyField
      FieldName = 'TBonifItem'
    end
    object ItemsFCUPrecioFinal: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'UPrecioFinal'
      DisplayFormat = '$0.000'
      EditFormat = '0.000'
      currency = True
    end
    object ItemsFCTPrecioFinal: TCurrencyField
      FieldName = 'TPrecioFinal'
    end
    object ItemsFCExento: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'Exento'
      DisplayFormat = '$0.000'
      EditFormat = '0.000'
      currency = True
    end
    object ItemsFCUImpInt: TMDOBCDField
      DisplayLabel = 'No Comp/I.I.'
      DisplayWidth = 10
      FieldName = 'UImpInt'
      DisplayFormat = '$0.000'
      EditFormat = '0.000'
      currency = True
    end
    object ItemsFCTImpInt: TCurrencyField
      FieldName = 'TImpInt'
    end
    object ItemsFCAlcIva: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Al'#237'cuota Iva'
      DisplayWidth = 10
      FieldName = 'AlcIva'
    end
    object ItemsFCUMontoIva: TMDOBCDField
      DisplayWidth = 10
      FieldName = 'UMontoIva'
      DisplayFormat = '$0.000'
      EditFormat = '0.000'
      currency = True
    end
    object ItemsFCTMontoIva: TCurrencyField
      FieldName = 'TMontoIva'
    end
    object ItemsFCPFinalPublico: TMDOBCDField
      FieldName = 'PFinalPublico'
      OnValidate = ItemsFCPFinalPublicoValidate
      currency = True
    end
    object ItemsFCEnRemito: TSmallintField
      FieldName = 'EnRemito'
    end
    object ItemsFCIdMarkUp: TIntegerField
      FieldName = 'IdMarkUp'
    end
    object ItemsFCMarkUp: TMDOBCDField
      FieldName = 'MarkUp'
      DisplayFormat = '0.000%'
      EditFormat = '0.000'
    end
    object ItemsFCEnPedido: TSmallintField
      FieldName = 'EnPedido'
    end
    object ItemsFCIdOrdPed: TIntegerField
      FieldName = 'IdOrdPed'
    end
    object ItemsFCIdItmPed: TIntegerField
      FieldName = 'IdItmPed'
    end
    object ItemsFCVarPFinal: TFloatField
      FieldName = 'VarPFinal'
      DisplayFormat = '0.00%'
    end
    object ItemsFCMarca: TStringField
      FieldName = 'Marca'
      Size = 25
    end
    object ItemsFCDetalle: TStringField
      FieldName = 'Detalle'
      Size = 50
    end
    object ItemsFCTieneTalle: TSmallintField
      DisplayLabel = 'TieneTalle'
      FieldName = 'TieneTalles'
    end
    object ItemsFCIdRemPen: TIntegerField
      FieldName = 'IdRemPen'
    end
    object ItemsFCIdRemSuc: TIntegerField
      FieldName = 'IdRemSuc'
    end
    object ItemsFCIdRemPto: TIntegerField
      FieldName = 'IdRemPto'
    end
    object ItemsFCIdRemItm: TSmallintField
      FieldName = 'IdRemItm'
    end
    object ItemsFCMaxIdItem: TAggregateField
      FieldName = 'MaxIdItem'
      Visible = True
      Active = True
      Expression = 'Max(IdItem)'
    end
  end
  object qFacProv: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select F.IdFactura, F.IdSucursal, F.IdPuntoVenta, '
      '           F.FechaF,  F.NroFactura, F.Total, '
      '          T.DescCorta'
      'From FacCom F'
      'Join TiposComp T'
      '  on T.IdComprobante = F.TipoFactura'
      'Where F.Proveedor = :Proveedor And '
      '            F.TipoFactura in (1,2,4,11,12,14)'
      'Order By F.FechaF Desc')
    Left = 627
    Top = 132
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Proveedor'
        ParamType = ptUnknown
      end>
    object qFacProvIdFactura: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdFactura'
      Origin = '"FACCOM"."IDFACTURA"'
    end
    object qFacProvIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"FACCOM"."IDSUCURSAL"'
      Required = True
    end
    object qFacProvFechaF: TDateField
      DisplayLabel = 'Fecha'
      DisplayWidth = 10
      FieldName = 'FechaF'
      Origin = '"FACCOM"."FECHAF"'
    end
    object qFacProvDESCCORTA: TMDOStringField
      FieldName = 'DESCCORTA'
      Origin = '"TIPOSCOMP"."DESCCORTA"'
      Size = 5
    end
    object qFacProvNroFactura: TStringField
      DisplayWidth = 13
      FieldName = 'NroFactura'
      Origin = '"FACCOM"."NROFACTURA"'
      Size = 13
    end
    object qFacProvTOTAL: TMDOBCDField
      FieldName = 'TOTAL'
      Origin = '"FACCOM"."TOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacProvIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Required = True
    end
  end
  object qInfCentros: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select C.Centro, C.Descripcion,'
      '       Sum(I.PrecioNeto) as TNeto,'
      '       Sum(I.PrecioTotal) as Total,'
      '       Sum(I.MtoIva) As TIva'
      'From ItemsFC I'
      'Join FacCom F'
      '  on F.IdFactura = I.IdFactura And F.IdSucursal = I.IdSucursal'
      'Join PlanCtas P'
      '  on P.IdCuenta = I.IdArticulo'
      'Join PlanCtas C'
      '  on C.Centro = P.Centro and C.Nivel = 0'
      'Where I.FechaF between :Desde and :Hasta and F.TipoOP = 2'
      'Group By C.Centro, C.Descripcion')
    Left = 567
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Hasta'
        ParamType = ptUnknown
      end>
    object qInfCentrosCENTRO: TIntegerField
      FieldName = 'CENTRO'
      Required = True
    end
    object qInfCentrosDESCRIPCION: TMDOStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
    object qInfCentrosTNETO: TMDOBCDField
      FieldName = 'TNETO'
      currency = True
      Precision = 18
      Size = 4
    end
    object qInfCentrosTOTAL: TMDOBCDField
      FieldName = 'TOTAL'
      currency = True
      Precision = 18
      Size = 4
    end
    object qInfCentrosTIVA: TMDOBCDField
      FieldName = 'TIVA'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object qSaldos: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select Entidad, IdEmpresa, Nombre, Saldo, SaldoA, DetEmp'
      'From PROVEEDORES_SALDOS(:AHoy, :IdEmp) '
      'Order By Saldo Desc')
    Left = 627
    Top = 219
    ParamData = <
      item
        DataType = ftDate
        Name = 'AHoy'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdEmp'
        ParamType = ptUnknown
      end>
    object qSaldosDETEMP: TMDOStringField
      DisplayLabel = 'Empresa'
      FieldName = 'DETEMP'
      Origin = '"DATOSSIS"."DETEMP"'
      Size = 5
    end
    object qSaldosEntidad: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'P'#186
      DisplayWidth = 5
      FieldName = 'Entidad'
      Origin = '"PROVEEDORES_SALDOS"."ENTIDAD"'
    end
    object qSaldosNombre: TStringField
      FieldName = 'Nombre'
      Origin = '"PROVEEDORES_SALDOS"."NOMBRE"'
      Size = 30
    end
    object qSaldosSALDO: TMDOBCDField
      FieldName = 'SALDO'
      Origin = '"PROVEEDORES_SALDOS"."SALDO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qSaldosSALDOA: TMDOBCDField
      FieldName = 'SALDOA'
      Origin = '"PROVEEDORES_SALDOS"."SALDOA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qSaldosIDEMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'IDEMPRESA'
      Origin = '"PROVEEDORES_SALDOS"."IDEMPRESA"'
      Visible = False
    end
  end
  object dsqSaldos: TDataSource
    DataSet = qSaldos
    Left = 658
    Top = 219
  end
  object dbpInformeSaldos: TppDBPipeline
    DataSource = dsqSaldos
    UserName = 'dbpInformeSaldos'
    Left = 658
    Top = 248
  end
  object rpInformeSaldos: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '10350'
      '106460')
    DataPipeline = dbpInformeSaldos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Saldos'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 10350
    PrinterSetup.mmMarginLeft = 10350
    PrinterSetup.mmMarginRight = 7430
    PrinterSetup.mmMarginTop = 13970
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 627
    Top = 248
    Version = '10.02'
    mmColumnWidth = 96110
    DataPipelineName = 'dbpInformeSaldos'
    object hbInformeSaldo: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
      object shpInfSdo1: TppShape
        UserName = 'shpInfSdo1'
        Shape = stRoundRect
        mmHeight = 11113
        mmLeft = 0
        mmTop = 0
        mmWidth = 192088
        BandType = 0
      end
      object lblTituloIS1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTituloIS1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4318
        mmLeft = 529
        mmTop = 1588
        mmWidth = 21082
        BandType = 0
      end
      object lblTituloIS2: TppLabel
        UserName = 'lblTituloIS2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTituloIS2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 1323
        mmWidth = 21167
        BandType = 0
      end
      object lblEmisionIS: TppSystemVariable
        UserName = 'lblEmisionIS'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DisplayFormat = #39'Emisi'#243'n '#39' dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 157957
        mmTop = 7408
        mmWidth = 33338
        BandType = 0
      end
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object shpInfSdo2: TppShape
        UserName = 'shpInfSdo2'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 96110
        BandType = 2
      end
      object lblDetProv: TppLabel
        UserName = 'lblDetProv'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Proveedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2381
        mmTop = 265
        mmWidth = 19579
        BandType = 2
      end
      object lblDetSaldo: TppLabel
        UserName = 'lblDetProv1'
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
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3429
        mmLeft = 81492
        mmTop = 529
        mmWidth = 7832
        BandType = 2
      end
    end
    object dbInformeSaldo: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object lblEntidadIS: TppDBText
        UserName = 'lblEntidadIS'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = dbpInformeSaldos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInformeSaldos'
        mmHeight = 3969
        mmLeft = 13494
        mmTop = 265
        mmWidth = 57415
        BandType = 4
      end
      object lblSaldoIS: TppDBText
        UserName = 'lblSaldoIS'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Saldo'
        DataPipeline = dbpInformeSaldos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInformeSaldos'
        mmHeight = 3895
        mmLeft = 72761
        mmTop = 265
        mmWidth = 20902
        BandType = 4
      end
      object lnInfSdo: TppLine
        UserName = 'lnInfSdo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Width = 2
        Position = lpRight
        Weight = 1.500000000000000000
        mmHeight = 4763
        mmLeft = 94721
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object lblDetEmpPro: TppDBText
        UserName = 'lblDetEmpPro'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DETEMP'
        DataPipeline = dbpInformeSaldos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpInformeSaldos'
        mmHeight = 3429
        mmLeft = 1058
        mmTop = 265
        mmWidth = 8731
        BandType = 4
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object shpInfSdo3: TppShape
        UserName = 'shpInfSdo3'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 96110
        BandType = 6
      end
      object lblASaldo: TppDBCalc
        UserName = 'lblASaldo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Saldo'
        DataPipeline = dbpInformeSaldos
        DisplayFormat = '$ 0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInformeSaldos'
        mmHeight = 3429
        mmLeft = 63500
        mmTop = 794
        mmWidth = 29633
        BandType = 6
      end
    end
  end
  object CCP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 627
    Top = 276
    object CCPFecha: TDateField
      FieldName = 'Fecha'
      DisplayFormat = 'dd/mm/yy'
    end
    object CCPTC: TStringField
      FieldName = 'TC'
      Size = 5
    end
    object CCPComprobante: TStringField
      FieldName = 'Comprobante'
      Size = 13
    end
    object CCPDebe: TMDOBCDField
      FieldName = 'Debe'
      currency = True
    end
    object CCPHaber: TMDOBCDField
      FieldName = 'Haber'
      currency = True
    end
    object CCPSaldo: TMDOBCDField
      FieldName = 'Saldo'
      currency = True
    end
    object CCPPagoACta: TMDOBCDField
      FieldName = 'PagoACta'
      currency = True
    end
    object CCPSaldoMov: TMDOBCDField
      FieldName = 'SaldoMov'
      currency = True
    end
    object CCPIdComprobante: TIntegerField
      FieldName = 'IdComprobante'
      Visible = False
    end
    object CCPIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
      Visible = False
    end
    object CCPTipoMov: TSmallintField
      FieldName = 'TipoMov'
      Visible = False
    end
    object CCPNroMov: TIntegerField
      FieldName = 'NroMov'
      Visible = False
    end
    object CCPEstado: TSmallintField
      FieldName = 'Estado'
    end
    object CCPDetEst: TStringField
      FieldName = 'DetEst'
      Size = 1
    end
    object CCPFechaOrg: TDateField
      Alignment = taCenter
      FieldName = 'FechaOrg'
      DisplayFormat = 'dd/mm/yy'
    end
    object CCPMontoOrg: TMDOBCDField
      FieldName = 'MontoOrg'
      currency = True
    end
    object CCPIdPuntoVenta: TIntegerField
      FieldName = 'IdPuntoVenta'
    end
    object CCPIdEmpresa: TIntegerField
      FieldName = 'IdEmpresa'
    end
    object CCPDetEmp: TStringField
      DisplayWidth = 5
      FieldName = 'DetEmp'
      Size = 5
    end
  end
  object dsCCProv: TDataSource
    DataSet = CCP
    Left = 658
    Top = 276
  end
  object pmCCP: TPopupMenu
    Images = dmGestion.imgMain
    Left = 627
    Top = 305
    object ModificarCCP: TMenuItem
      Caption = 'Modificar'
      ImageIndex = 65
      OnClick = ModificarCCPClick
    end
    object ExportarCCP: TMenuItem
      Caption = 'Exportar'
      ImageIndex = 11
      OnClick = ExportarCCPClick
    end
    object ImprimirOP: TMenuItem
      Caption = 'Imprimir'
      ImageIndex = 91
      OnClick = btnInformeCCPClick
    end
  end
  object dbpEstadoP: TppDBPipeline
    DataSource = dsCCProv
    CloseDataSource = True
    UserName = 'dbpEstadoP'
    Left = 658
    Top = 334
    object dbpEstadoPppField1: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField2: TppField
      FieldAlias = 'TC'
      FieldName = 'TC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField3: TppField
      FieldAlias = 'Comprobante'
      FieldName = 'Comprobante'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField4: TppField
      FieldAlias = 'Debe'
      FieldName = 'Debe'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField5: TppField
      FieldAlias = 'Haber'
      FieldName = 'Haber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField6: TppField
      FieldAlias = 'Saldo'
      FieldName = 'Saldo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField7: TppField
      FieldAlias = 'PagoACta'
      FieldName = 'PagoACta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField8: TppField
      FieldAlias = 'SaldoMov'
      FieldName = 'SaldoMov'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField9: TppField
      FieldAlias = 'IdComprobante'
      FieldName = 'IdComprobante'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField10: TppField
      FieldAlias = 'IdSucursal'
      FieldName = 'IdSucursal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField11: TppField
      FieldAlias = 'TipoMov'
      FieldName = 'TipoMov'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField12: TppField
      FieldAlias = 'NroMov'
      FieldName = 'NroMov'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField13: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField14: TppField
      FieldAlias = 'DetEst'
      FieldName = 'DetEst'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField15: TppField
      FieldAlias = 'FechaOrg'
      FieldName = 'FechaOrg'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField16: TppField
      FieldAlias = 'MontoOrg'
      FieldName = 'MontoOrg'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object dbpEstadoPppField17: TppField
      FieldAlias = 'IdPuntoVenta'
      FieldName = 'IdPuntoVenta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
  object rpEstadoP: TppReport
    AutoStop = False
    DataPipeline = dbpEstadoP
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cuenta Corriente Proveedores'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 10350
    PrinterSetup.mmMarginLeft = 8350
    PrinterSetup.mmMarginRight = 12350
    PrinterSetup.mmMarginTop = 10350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    Icon.Data = {
      0000010001002020040000000000E80200001600000028000000200000004000
      0000010004000000000000020000000000000000000000000000000000000000
      0000000080000080000000808000800000008000800080800000C0C0C0008080
      80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
      7777777777777777777777770000000777700777777777777777770070000077
      00000000000000000000000000000070007FFFFFFFFFFFFFFFFFFFFFF0000070
      7077777777777777777777777000077070777777777777777777777770007707
      0000000000000000000000000007707077777777777777777777777777F07070
      77070707070707070707070707F0707077777777777777777777777777F07070
      77777777777777777777777777F0707077777777777777777777777777F00070
      77777777777AA777777777AA77F007007FFFFFFFFFFFFFFFFFFFFFFFFFF00000
      0000000000000000000000000000007070000000000000000000077000000770
      770FFFFFFFFFFFFFFFFF077000000707770FF7777F7777F777FF070000007707
      770FFFFFFFFFFFFFFFFF070000007077770FF7F777F77F7777FF000000007077
      770FFFFFFFFFFFFFFFF070000000000000FF77F7F777F7777FF0000000000007
      70FFFFFFFFFFFFFFFFF00000000000070FF77F777F77F777FF00000000000077
      0FFFFFFFFFFFFFFFFF00000000000070FF777F777F77F77FF000000000000770
      FFFFFFFFFFFFFFFFF00000000000070FF77F7777F77F77FF000000000000770F
      FFFFFFFFFFFFFFFF00000000000070FF777F777F7F777FF000000000000070FF
      FFFFFFFFFFFFFFF0000000000000F0000000000000000000000000000000F000
      000FE0000007C0000003C0000003C00000038000000300000000000000000000
      00000000000000000000000000008000000080000000C0000001C000000F8000
      000F8000001F0000001F0000003F0000003F8000003FE00000FFE00001FFC000
      01FFC00003FF800003FF800007FF000007FF00000FFF00000FFF00001FFF}
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 627
    Top = 334
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpEstadoP'
    object ppHeaderBandCCP: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object shpCCP1: TppShape
        UserName = 'shpCCP1'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 11642
        mmLeft = 0
        mmTop = 0
        mmWidth = 189300
        BandType = 0
      end
      object lblDebe: TppLabel
        UserName = 'lblDebe'
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
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 120915
        mmTop = 7144
        mmWidth = 10054
        BandType = 0
      end
      object lblHaber: TppLabel
        UserName = 'lblHaber'
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
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 143934
        mmTop = 7144
        mmWidth = 11113
        BandType = 0
      end
      object lblECCSaldo: TppLabel
        UserName = 'lblSaldoP'
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
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 175948
        mmTop = 7144
        mmWidth = 10583
        BandType = 0
      end
      object lblTituloCCP1: TppLabel
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
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3895
        mmLeft = 1852
        mmTop = 1058
        mmWidth = 15071
        BandType = 0
      end
      object lblTituloCCP2: TppLabel
        UserName = 'lblTituloCCP2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTituloCCP2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 164042
        mmTop = 1058
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'lblDetComp'
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
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 46038
        mmTop = 7144
        mmWidth = 21960
        BandType = 0
      end
      object lblVto: TppLabel
        UserName = 'lblVto'
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
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 88106
        mmTop = 7144
        mmWidth = 20373
        BandType = 0
      end
      object lblFOrg: TppLabel
        UserName = 'lblVto1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Origen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3429
        mmLeft = 21960
        mmTop = 7144
        mmWidth = 12171
        BandType = 0
      end
    end
    object ppDetailBandCCP: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object lblFechaOp: TppDBText
        UserName = 'lblFechaOp'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = dbpEstadoP
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpEstadoP'
        mmHeight = 3429
        mmLeft = 91281
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object lblTMov: TppDBText
        UserName = 'lblTMov'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TC'
        DataPipeline = dbpEstadoP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpEstadoP'
        mmHeight = 3440
        mmLeft = 39423
        mmTop = 0
        mmWidth = 10319
        BandType = 4
      end
      object lblComprobante: TppDBText
        UserName = 'lblComprobante'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Comprobante'
        DataPipeline = dbpEstadoP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpEstadoP'
        mmHeight = 3440
        mmLeft = 51594
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
      object lblDetEst: TppDBText
        UserName = 'lblDetEst'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DetEst'
        DataPipeline = dbpEstadoP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpEstadoP'
        mmHeight = 3429
        mmLeft = 77523
        mmTop = 0
        mmWidth = 10319
        BandType = 4
      end
      object lblImporte: TppDBText
        UserName = 'lblImporte'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Debe'
        DataPipeline = dbpEstadoP
        DisplayFormat = '$ 0.00;($ 0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpEstadoP'
        mmHeight = 3440
        mmLeft = 113771
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object Haber1: TppDBText
        UserName = 'Haber1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Haber'
        DataPipeline = dbpEstadoP
        DisplayFormat = '$ 0.00;($ 0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpEstadoP'
        mmHeight = 3387
        mmLeft = 137848
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object lblSaldo: TppDBText
        UserName = 'lblSaldo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Saldo'
        DataPipeline = dbpEstadoP
        DisplayFormat = '$ 0.00;($ 0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpEstadoP'
        mmHeight = 3440
        mmLeft = 161661
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object lnCCP1: TppLine
        UserName = 'lnCCP1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object lnCCP3: TppLine
        UserName = 'lnCCP3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 156634
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object lnCCP2: TppLine
        UserName = 'lnCCP2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 132027
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object lblFechaF: TppDBText
        UserName = 'lblFechaOp1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaOrg'
        DataPipeline = dbpEstadoP
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpEstadoP'
        mmHeight = 3440
        mmLeft = 21167
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object lblDetEmpIC: TppDBText
        UserName = 'lblDetEmpIC'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DetEmp'
        DataPipeline = dbpEstadoP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpEstadoP'
        mmHeight = 3429
        mmLeft = 2381
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object shpCCP2: TppShape
        UserName = 'shpCCP2'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 5292
        mmLeft = 0
        mmTop = 0
        mmWidth = 189300
        BandType = 7
      end
      object lblEmisionCCP: TppSystemVariable
        UserName = 'lblEmisionCCP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = #39'Emisi'#243'n:'#39' dd/mm/yy - hh:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 74030
        mmTop = 529
        mmWidth = 42968
        BandType = 7
      end
    end
  end
  object qCuentaP: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trProc
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select T.NroMovimiento, T.IdComprobante, T.IdSucursal, '
      '           T.IdPuntoVenta, T.TComp, T.Entidad, T.Fecha, '
      '           T.FechaOrg, T.Comprobante, T.Debe, T.Haber, '
      '           T.Saldo, T.PagoACta,  T.Estado, T.SaldoMov, '
      '           T.IdEmpresa, C.DescCorta as TC, '
      '           T.Haber as MontoOrgCP,  '
      '           F.Total as MontoOrgFC, S.DetEmp '
      'From CCProv T'
      'Left Outer Join FacCom F'
      '  On  F.IdFactura = T.IdComprobante And'
      '        F.IdSucursal = T.IdSucursal And'
      '        F.IdPuntoVenta = T.IdPuntoVenta'
      'Left Outer Join TiposComp C'
      '  On C.IdComprobante = T.TComp'
      'Left Outer Join DatosSis S'
      '  On S.IdEmpresa = T.IdEmpresa'
      'Where (T.Entidad =:Prove) and '
      '            (T.FechaOrg >=:Fecha) and'
      '            (T.State = 0)'
      'Order By T.FechaOrg'
      ' '
      ' ')
    Left = 658
    Top = 305
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Prove'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Fecha'
        ParamType = ptUnknown
      end>
    object qCuentaPNroMovimiento: TIntegerField
      FieldName = 'NroMovimiento'
      Origin = '"CCPROV"."NROMOVIMIENTO"'
      Visible = False
    end
    object qCuentaPIdComprobante: TIntegerField
      FieldName = 'IdComprobante'
      Origin = '"CCPROV"."IDCOMPROBANTE"'
      Visible = False
    end
    object qCuentaPIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
      Origin = '"CCPROV"."IDSUCURSAL"'
      Visible = False
    end
    object qCuentaPTComp: TSmallintField
      FieldName = 'TComp'
      Origin = '"CCPROV"."TCOMP"'
      Visible = False
    end
    object qCuentaPEntidad: TIntegerField
      FieldName = 'Entidad'
      Origin = '"CCPROV"."ENTIDAD"'
    end
    object qCuentaPFecha: TDateField
      FieldName = 'Fecha'
      Origin = '"CCPROV"."FECHA"'
    end
    object qCuentaPComprobante: TStringField
      FieldName = 'Comprobante'
      Origin = '"CCPROV"."COMPROBANTE"'
      Size = 15
    end
    object qCuentaPTC: TStringField
      FieldName = 'TC'
      KeyFields = 'TComp'
      Size = 5
    end
    object qCuentaPEstado: TSmallintField
      FieldName = 'Estado'
      Origin = '"CCPROV"."ESTADO"'
    end
    object qCuentaPFechaOrg: TDateField
      FieldName = 'FechaOrg'
      Origin = '"CCPROV"."FECHAORG"'
    end
    object qCuentaPDEBE: TMDOBCDField
      FieldName = 'DEBE'
      Origin = '"CCPROV"."DEBE"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCuentaPHABER: TMDOBCDField
      FieldName = 'HABER'
      Origin = '"CCPROV"."HABER"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCuentaPSALDO: TMDOBCDField
      FieldName = 'SALDO'
      Origin = '"CCPROV"."SALDO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCuentaPPAGOACTA: TMDOBCDField
      FieldName = 'PAGOACTA'
      Origin = '"CCPROV"."PAGOACTA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCuentaPSALDOMOV: TMDOBCDField
      FieldName = 'SALDOMOV'
      Origin = '"CCPROV"."SALDOMOV"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCuentaPMONTOORGCP: TMDOBCDField
      FieldName = 'MONTOORGCP'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCuentaPMONTOORGFC: TMDOBCDField
      FieldName = 'MONTOORGFC'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCuentaPIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = '"CCPROV"."IDEMPRESA"'
    end
    object qCuentaPDETEMP: TMDOStringField
      FieldName = 'DETEMP'
      Origin = '"DATOSSIS"."DETEMP"'
      Size = 5
    end
    object qCuentaPIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
    end
  end
  object qPagoMultipleProv: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select C.NroMovimiento, C.IdComprobante, C.IdSucursal, '
      
        '           C.IdPuntoVenta, C.Entidad, C.TComp, C.Fecha, C.Compro' +
        'bante,            C.Debe, C.PagoACta, C.SaldoMov, C.Estado, C.Im' +
        'pNeto,  '
      '           C.MontoRetI, C.IdEmpresa,  C.MontoRetG, C.MontoRetB, '
      '           T.DescCorta as DetComp, D.DetEmp'
      'From CCProv C'
      'Join TiposComp T'
      '  on T.IdComprobante = C.TComp'
      'Join DatosSis D'
      '  on D.IdEmpresa = C.IdEmpresa'
      'Where (C.Estado = 1) And'
      '            (C.SaldoMov > 0) And'
      
        '            (C.TComp in (1, 2, 3, 6, 7, 8, 11, 12, 13, 18, 31, 3' +
        '2, 33, 34, 47, 51, 52, 53, 54, 55)) And'
      '            (C.Entidad =:IdProveedor) And '
      '            (C.State = 0)'
      'Order By C.Fecha')
    Left = 567
    Top = 276
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IdProveedor'
        ParamType = ptUnknown
      end>
    object qPagoMultipleProvDETEMP: TMDOStringField
      FieldName = 'DETEMP'
      Origin = '"DATOSSIS"."DETEMP"'
      Size = 5
    end
    object qPagoMultipleProvTComp: TSmallintField
      FieldName = 'TComp'
      Origin = '"CCPROV"."TCOMP"'
    end
    object qPagoMultipleProvEntidad: TIntegerField
      FieldName = 'Entidad'
      Origin = '"CCPROV"."ENTIDAD"'
    end
    object qPagoMultipleProvFecha: TDateField
      FieldName = 'Fecha'
      Origin = '"CCPROV"."FECHA"'
    end
    object qPagoMultipleProvComprobante: TStringField
      FieldName = 'Comprobante'
      Origin = '"CCPROV"."COMPROBANTE"'
      Size = 15
    end
    object qPagoMultipleProvIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
      Origin = '"CCPROV"."IDSUCURSAL"'
    end
    object qPagoMultipleProvEstado: TSmallintField
      FieldName = 'Estado'
      Origin = '"CCPROV"."ESTADO"'
    end
    object qPagoMultipleProvDetComp: TStringField
      FieldName = 'DetComp'
      KeyFields = 'TComp'
      Size = 5
    end
    object qPagoMultipleProvSelected: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'Selected'
      Calculated = True
    end
    object qPagoMultipleProvNroMovimiento: TIntegerField
      FieldName = 'NroMovimiento'
      Origin = '"CCPROV"."NROMOVIMIENTO"'
    end
    object qPagoMultipleProvIdComprobante: TIntegerField
      FieldName = 'IdComprobante'
      Origin = '"CCPROV"."IDCOMPROBANTE"'
    end
    object qPagoMultipleProvDEBE: TMDOBCDField
      FieldName = 'DEBE'
      Origin = '"CCPROV"."DEBE"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qPagoMultipleProvPAGOACTA: TMDOBCDField
      FieldName = 'PAGOACTA'
      Origin = '"CCPROV"."PAGOACTA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qPagoMultipleProvSALDOMOV: TMDOBCDField
      FieldName = 'SALDOMOV'
      Origin = '"CCPROV"."SALDOMOV"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qPagoMultipleProvIMPNETO: TMDOBCDField
      FieldName = 'IMPNETO'
      Origin = '"CCPROV"."IMPNETO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qPagoMultipleProvMONTORETI: TMDOBCDField
      FieldName = 'MONTORETI'
      Origin = '"CCPROV"."MONTORETI"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qPagoMultipleProvMONTORETG: TMDOBCDField
      FieldName = 'MONTORETG'
      Origin = '"CCPROV"."MONTORETG"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qPagoMultipleProvMONTORETB: TMDOBCDField
      FieldName = 'MONTORETB'
      Origin = '"CCPROV"."MONTORETB"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qPagoMultipleProvIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = '"CCPROV"."IDEMPRESA"'
    end
    object qPagoMultipleProvIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
    end
  end
  object dsqPagoMultipleProv: TDataSource
    DataSet = qPagoMultipleProv
    Left = 597
    Top = 276
  end
  object qSdoAntCCP: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select Sum(C.Debe - C.Haber) as SaldoP'
      'From CCProv C'
      'Where (C.FechaOrg <:Fecha) And '
      '            (C.Entidad =:Prove) And '
      '            (C.State = 0)')
    Left = 627
    Top = 392
    ParamData = <
      item
        DataType = ftDate
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Prove'
        ParamType = ptUnknown
      end>
    object qSdoAntCCPSALDOP: TMDOBCDField
      FieldName = 'SALDOP'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object qMovAjt: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select C.NroMovimiento, C.TComp, C.Entidad, C.Fecha, '
      '           C.FEchaOrg, C.Comprobante, C.Haber, C.Estado, '
      '           C.SaldoMov, C.IdComprobante,  C.IdSucursal, '
      '           C.IdPuntoVenta, P.Nombre as NomEntidad, '
      '           T.DescCorta as TC'
      'From CCProv C'
      'Join Proveedores P'
      '   on P.IdProveedor = C.Entidad'
      'Join TiposComp T'
      '    on T.IdComprobante = C.TComp'
      'Where (C.TComp in (51, 52)) And'
      '            (C.Fecha between :Desde And :Hasta)')
    Left = 627
    Top = 421
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
    object qMovAjtNroMovimiento: TIntegerField
      DisplayWidth = 10
      FieldName = 'NroMovimiento'
      Origin = '"CCPROV"."NROMOVIMIENTO"'
    end
    object qMovAjtTComp: TSmallintField
      DisplayWidth = 10
      FieldName = 'TComp'
      Origin = '"CCPROV"."TCOMP"'
    end
    object qMovAjtEntidad: TIntegerField
      DisplayWidth = 10
      FieldName = 'Entidad'
      Origin = '"CCPROV"."ENTIDAD"'
    end
    object qMovAjtFecha: TDateField
      DisplayWidth = 10
      FieldName = 'Fecha'
      Origin = '"CCPROV"."FECHA"'
    end
    object qMovAjtFechaOrg: TDateField
      FieldName = 'FechaOrg'
      Origin = '"CCPROV"."FECHAORG"'
    end
    object qMovAjtTC: TStringField
      DisplayWidth = 5
      FieldName = 'TC'
      KeyFields = 'TComp'
      Size = 5
    end
    object qMovAjtComprobante: TStringField
      DisplayWidth = 15
      FieldName = 'Comprobante'
      Origin = '"CCPROV"."COMPROBANTE"'
      Size = 15
    end
    object qMovAjtEstado: TSmallintField
      DisplayWidth = 10
      FieldName = 'Estado'
      Origin = '"CCPROV"."ESTADO"'
    end
    object qMovAjtNomEntidad: TStringField
      DisplayLabel = 'Proveedor'
      DisplayWidth = 30
      FieldName = 'NomEntidad'
      Size = 30
    end
    object qMovAjtIdComprobante: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdComprobante'
      Origin = '"CCPROV"."IDCOMPROBANTE"'
      Visible = False
    end
    object qMovAjtIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
      Origin = '"CCPROV"."IDSUCURSAL"'
      Visible = False
    end
    object qMovAjtIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Visible = False
    end
    object qMovAjtHABER: TMDOBCDField
      FieldName = 'HABER'
      Origin = '"CCPROV"."HABER"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qMovAjtSALDOMOV: TMDOBCDField
      FieldName = 'SALDOMOV'
      Origin = '"CCPROV"."SALDOMOV"'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object dsqMovAjt: TDataSource
    DataSet = qMovAjt
    Left = 658
    Top = 421
  end
  object pmAjtInt: TPopupMenu
    Images = dmGestion.imgMain
    Left = 658
    Top = 74
    object RelacionNC: TMenuItem
      Caption = 'Relacionar c/ Nota de Credito'
      SubMenuImages = dmGestion.imgMain
      ImageIndex = 100
      OnClick = RelacionNCClick
    end
    object ExportarRelNC: TMenuItem
      Caption = 'Exportar ajustes'
      ImageIndex = 11
      OnClick = ExportarRelNCClick
    end
  end
  object qRelAjt: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select *'
      'From FacCom C'
      'Where C.Proveedor =:Prov And '
      '            C.TipoFactura in (3,8,13)'
      'Order By C.FechaF desc')
    Left = 567
    Top = 190
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Prov'
        ParamType = ptUnknown
      end>
    object qRelAjtFechaF: TDateField
      DisplayLabel = 'Fecha'
      DisplayWidth = 10
      FieldName = 'FechaF'
      Origin = '"FACCOM"."FECHAF"'
    end
    object qRelAjtTC: TStringField
      DisplayWidth = 5
      FieldKind = fkLookup
      FieldName = 'TC'
      LookupDataSet = dmGestion.TipoComp
      LookupKeyFields = 'IdComprobante'
      LookupResultField = 'DescCorta'
      KeyFields = 'TipoFactura'
      Size = 5
      Lookup = True
    end
    object qRelAjtNroFactura: TStringField
      DisplayLabel = 'Comprobante'
      DisplayWidth = 13
      FieldName = 'NroFactura'
      Origin = '"FACCOM"."NROFACTURA"'
      Size = 13
    end
    object qRelAjtIdFactura: TIntegerField
      FieldName = 'IdFactura'
      Origin = '"FACCOM"."IDFACTURA"'
      Visible = False
    end
    object qRelAjtIdSucursal: TIntegerField
      FieldName = 'IdSucursal'
      Origin = '"FACCOM"."IDSUCURSAL"'
      Visible = False
    end
    object qRelAjtTipoFactura: TSmallintField
      FieldName = 'TipoFactura'
      Origin = '"FACCOM"."TIPOFACTURA"'
      Visible = False
    end
    object qRelAjtTOTAL: TMDOBCDField
      FieldName = 'TOTAL'
      Origin = '"FACCOM"."TOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qRelAjtIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Required = True
    end
  end
  object dsqRelAjt: TDataSource
    DataSet = qRelAjt
    Left = 597
    Top = 190
  end
  object dsViewGtos: TDataSource
    DataSet = ViewGtos
    Left = 658
    Top = 450
  end
  object dsViewFCom: TDataSource
    DataSet = ViewFCom
    Left = 658
    Top = 479
  end
  object qViewGtos: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select G.IDFACTURA, G.IDSUCURSAL, G.IdPuntoVenta, '
      '           G.TIPOFACTURA, G.FECHAF, G.NROFACTURA, '
      '           G.PROVEEDOR, G.TIPOOP, T.DESCCORTA,'
      '           G.Total, P.Nombre'
      'From FACCOM G'
      'Join TIPOSCOMP T'
      '  on T.IdComprobante =  G.TIPOFACTURA'
      'Join PROVEEDORES P'
      '  on P.IdProveedor = G.PROVEEDOR'
      'Where (G.FechaF between :Desde And :Hasta) And'
      '            (G.TIPOOP in (2,4))  and (G.State = 0)')
    Left = 567
    Top = 450
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
    object qViewGtosIDFACTURA: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDFACTURA'
      Origin = '"FACCOM"."IDFACTURA"'
      Required = True
    end
    object qViewGtosIDSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDSUCURSAL'
      Origin = '"FACCOM"."IDSUCURSAL"'
      Required = True
    end
    object qViewGtosTIPOFACTURA: TSmallintField
      DisplayWidth = 10
      FieldName = 'TIPOFACTURA'
      Origin = '"FACCOM"."TIPOFACTURA"'
    end
    object qViewGtosFECHAF: TDateField
      DisplayLabel = 'Fecha'
      DisplayWidth = 8
      FieldName = 'FECHAF'
      Origin = '"FACCOM"."FECHAF"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qViewGtosNROFACTURA: TMDOStringField
      DisplayLabel = 'Comprobante'
      DisplayWidth = 13
      FieldName = 'NROFACTURA'
      Origin = '"FACCOM"."NROFACTURA"'
      Size = 13
    end
    object qViewGtosPROVEEDOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'PROVEEDOR'
      Origin = '"FACCOM"."PROVEEDOR"'
    end
    object qViewGtosTIPOOP: TSmallintField
      DisplayWidth = 10
      FieldName = 'TIPOOP'
      Origin = '"FACCOM"."TIPOOP"'
    end
    object qViewGtosDESCCORTA: TMDOStringField
      DisplayLabel = 'TC'
      DisplayWidth = 5
      FieldName = 'DESCCORTA'
      Origin = '"TIPOSCOMP"."DESCCORTA"'
      Size = 5
    end
    object qViewGtosNOMBRE: TMDOStringField
      DisplayLabel = 'Proveedor'
      DisplayWidth = 15
      FieldName = 'NOMBRE'
      Origin = '"PROVEEDORES"."NOMBRE"'
      Size = 30
    end
    object qViewGtosTOTAL: TMDOBCDField
      FieldName = 'TOTAL'
      Origin = '"FACCOM"."TOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qViewGtosIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Origin = '"FACCOM"."IDPUNTOVENTA"'
      Required = True
    end
  end
  object qViewFCom: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select F.IDFACTURA, F.IDSUCURSAL, F.IdPuntoVenta,'
      '           F.TIPOFACTURA, F.FECHAF, F.NROFACTURA, '
      '           F.PROVEEDOR, F.TIPOOP, T.DESCCORTA,'
      '           F.Total, P.Nombre'
      'From FACCOM F'
      'Join TIPOSCOMP T'
      '   on T.IdComprobante =  F.TIPOFACTURA'
      'Join PROVEEDORES P'
      '   on P.IdProveedor = F.PROVEEDOR'
      'Where (F.FechaF between :Desde And :Hasta) And'
      '            (F.TIPOOP = 1) and '
      '            (F.State = 0)'
      'Order By F.FechaF Desc')
    Left = 567
    Top = 479
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
    object qViewFComIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"FACCOM"."IDFACTURA"'
      Required = True
    end
    object qViewFComIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"FACCOM"."IDSUCURSAL"'
      Required = True
    end
    object qViewFComTIPOFACTURA: TSmallintField
      FieldName = 'TIPOFACTURA'
      Origin = '"FACCOM"."TIPOFACTURA"'
    end
    object qViewFComFECHAF: TDateField
      FieldName = 'FECHAF'
      Origin = '"FACCOM"."FECHAF"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qViewFComNROFACTURA: TMDOStringField
      FieldName = 'NROFACTURA'
      Origin = '"FACCOM"."NROFACTURA"'
      Size = 13
    end
    object qViewFComPROVEEDOR: TIntegerField
      FieldName = 'PROVEEDOR'
      Origin = '"FACCOM"."PROVEEDOR"'
    end
    object qViewFComTIPOOP: TSmallintField
      FieldName = 'TIPOOP'
      Origin = '"FACCOM"."TIPOOP"'
    end
    object qViewFComDESCCORTA: TMDOStringField
      FieldName = 'DESCCORTA'
      Origin = '"TIPOSCOMP"."DESCCORTA"'
      Size = 5
    end
    object qViewFComNOMBRE: TMDOStringField
      FieldName = 'NOMBRE'
      Origin = '"PROVEEDORES"."NOMBRE"'
      Size = 30
    end
    object qViewFComTOTAL: TMDOBCDField
      FieldName = 'TOTAL'
      Origin = '"FACCOM"."TOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qViewFComIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Origin = '"FACCOM"."IDPUNTOVENTA"'
      Required = True
    end
  end
  object rpPreOrdPago: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '6350'
      '105001')
    DataPipeline = dbpPreOrdPago
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Pre Orden de Pago'
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
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 567
    Top = 363
    Version = '10.02'
    mmColumnWidth = 98650
    DataPipelineName = 'dbpPreOrdPago'
    object hbPreOP: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object shpPreOP1: TppShape
        UserName = 'shpPreOP1'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 13229
        mmLeft = 0
        mmTop = 0
        mmWidth = 194760
        BandType = 0
      end
      object lblTituloPO1: TppLabel
        UserName = 'lblTituloPO1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTituloPO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 86117
        mmTop = 1058
        mmWidth = 19685
        BandType = 0
      end
      object lblTituloPO2: TppLabel
        UserName = 'lblTituloPO2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTituloPO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 86117
        mmTop = 8202
        mmWidth = 19685
        BandType = 0
      end
    end
    object ppColumnHeaderBand2: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object shpPreOP2: TppShape
        UserName = 'shpPreOP2'
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 98650
        BandType = 2
      end
      object lblCompPOP: TppLabel
        UserName = 'lblCompPOP'
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
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 5821
        mmTop = 794
        mmWidth = 23813
        BandType = 2
      end
      object lblVtoPOP: TppLabel
        UserName = 'lblVtoPOP'
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
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 39549
        mmTop = 794
        mmWidth = 17738
        BandType = 2
      end
      object lblPOPMto: TppLabel
        UserName = 'lblPOPMto'
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
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 70644
        mmTop = 794
        mmWidth = 11113
        BandType = 2
      end
    end
    object dbPreOP: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object lblPOTC: TppDBText
        UserName = 'lblPOTC'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DetComp'
        DataPipeline = dbpPreOrdPago
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpPreOrdPago'
        mmHeight = 3969
        mmLeft = 265
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object lblPONroComp: TppDBText
        UserName = 'lblPONroComp'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Comprobante'
        DataPipeline = dbpPreOrdPago
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpPreOrdPago'
        mmHeight = 3969
        mmLeft = 12700
        mmTop = 265
        mmWidth = 26194
        BandType = 4
      end
      object lblPOFecha: TppDBText
        UserName = 'lblPOFecha'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = dbpPreOrdPago
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpPreOrdPago'
        mmHeight = 3969
        mmLeft = 40481
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object lblPOMonto: TppDBText
        UserName = 'lblPOFecha1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Importe'
        DataPipeline = dbpPreOrdPago
        DisplayFormat = '$ 0.00;($ 0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPreOrdPago'
        mmHeight = 3969
        mmLeft = 59267
        mmTop = 265
        mmWidth = 23283
        BandType = 4
      end
      object lblPONroMov: TppDBText
        UserName = 'lblPONroMov'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NroMovimiento'
        DataPipeline = dbpPreOrdPago
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPreOrdPago'
        mmHeight = 3979
        mmLeft = 88106
        mmTop = 265
        mmWidth = 8731
        BandType = 4
      end
      object lnPreOP: TppLine
        UserName = 'lnPreOP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 98161
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
    end
    object cfPreOp: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object shpPreOP3: TppShape
        UserName = 'shpPreOP3'
        Brush.Color = 14737632
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 7673
        mmLeft = 0
        mmTop = 0
        mmWidth = 98650
        BandType = 6
      end
      object lblPOTotal: TppDBCalc
        UserName = 'lblPOTotal'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Importe'
        DataPipeline = dbpPreOrdPago
        DisplayFormat = '$ 0.00;($ 0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPreOrdPago'
        mmHeight = 3704
        mmLeft = 47625
        mmTop = 1588
        mmWidth = 34660
        BandType = 6
      end
    end
    object fbPreOP: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 70115
      mmPrintPosition = 0
      object shpPreOP4: TppShape
        UserName = 'shpPreOP4'
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 54769
        mmLeft = 0
        mmTop = 7938
        mmWidth = 194760
        BandType = 8
      end
      object lblDetPagosPOP: TppLabel
        UserName = 'lblDetPagosPOP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Detalles de Pagos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 84244
        mmTop = 8202
        mmWidth = 28363
        BandType = 8
      end
      object lblAutorizoPOP: TppLabel
        UserName = 'lblAutorizoPOP'
        Border.BorderPositions = [bpTop]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Border.Weight = 1.000000000000000000
        Caption = 'Autoriz'#243
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 128588
        mmTop = 57150
        mmWidth = 59796
        BandType = 8
      end
      object lblEmisionPreOP: TppSystemVariable
        UserName = 'lblEmisionPreOP'
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
        mmLeft = 8996
        mmTop = 57679
        mmWidth = 31665
        BandType = 8
      end
    end
  end
  object qPreOP: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IDNROPREOP, '
      '           Count(NroMovimiento) as CanPO,  '
      '           Sum(SALDOMOV) as TotPO'
      'From CCProv'
      'Where (IDNROPREOP > 0) and (ENTIDAD =:P)'
      'Group By IDNROPREOP')
    Left = 658
    Top = 132
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P'
        ParamType = ptUnknown
      end>
    object qPreOPIDNROPREOP: TIntegerField
      FieldName = 'IDNROPREOP'
    end
    object qPreOPCANPO: TIntegerField
      FieldName = 'CANPO'
      Required = True
    end
    object qPreOPTOTPO: TMDOBCDField
      FieldName = 'TOTPO'
      Precision = 18
      Size = 4
    end
  end
  object PreOrdPag: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 627
    Top = 363
    object PreOrdPagDetComp: TStringField
      FieldName = 'DetComp'
      Size = 5
    end
    object PreOrdPagComprobante: TStringField
      FieldName = 'Comprobante'
      Size = 13
    end
    object PreOrdPagFecha: TDateField
      FieldName = 'Fecha'
    end
    object PreOrdPagImporte: TCurrencyField
      FieldName = 'Importe'
    end
    object PreOrdPagNroMovimiento: TIntegerField
      FieldName = 'NroMovimiento'
    end
    object PreOrdPagEntidad: TIntegerField
      FieldName = 'Entidad'
    end
  end
  object dsPreOrdPag: TDataSource
    DataSet = PreOrdPag
    Left = 658
    Top = 363
  end
  object dbpPreOrdPago: TppDBPipeline
    DataSource = dsPreOrdPag
    UserName = 'dbpPreOrdPago'
    Left = 597
    Top = 363
    object dbpPreOrdPagoppField1: TppField
      FieldAlias = 'DetComp'
      FieldName = 'DetComp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbpPreOrdPagoppField2: TppField
      FieldAlias = 'Comprobante'
      FieldName = 'Comprobante'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbpPreOrdPagoppField3: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbpPreOrdPagoppField4: TppField
      FieldAlias = 'Importe'
      FieldName = 'Importe'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbpPreOrdPagoppField5: TppField
      FieldAlias = 'NroMovimiento'
      FieldName = 'NroMovimiento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbpPreOrdPagoppField6: TppField
      FieldAlias = 'Entidad'
      FieldName = 'Entidad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
  end
  object qPlanCtas: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select C.Codigo, C.Descripcion, T.DetalleCentro, '
      '           C.Centro, C.Nivel, C.Codigo'
      'From PlanCtas C'
      'Join PlanCtas T'
      '  on T.Centro = C.Codigo'
      'Where (C.Nivel = 0) and '
      '            (C.IdCuenta <> T.IdCuenta)')
    Left = 567
    Top = 74
    object qPlanCtasDESCRIPCION: TMDOStringField
      FieldName = 'DESCRIPCION'
      Origin = '"PLANCTAS"."DESCRIPCION"'
      Size = 30
    end
    object qPlanCtasDETALLECENTRO: TMDOStringField
      FieldName = 'DETALLECENTRO'
      Origin = '"PLANCTAS"."DETALLECENTRO"'
      Size = 60
    end
    object qPlanCtasCENTRO: TIntegerField
      FieldName = 'CENTRO'
      Origin = '"PLANCTAS"."CENTRO"'
    end
    object qPlanCtasNIVEL: TSmallintField
      FieldName = 'NIVEL'
      Origin = '"PLANCTAS"."NIVEL"'
    end
    object qPlanCtasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PLANCTAS"."CODIGO"'
    end
  end
  object dsqPlanCtas: TDataSource
    DataSet = qPlanCtas
    Left = 597
    Top = 74
  end
  object dspqViewGtos: TDataSetProvider
    DataSet = qViewGtos
    Options = [poIncFieldProps, poUseQuoteChar]
    Left = 597
    Top = 450
  end
  object ViewGtos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
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
    ProviderName = 'dspqViewGtos'
    Left = 627
    Top = 450
    object ViewGtosIDFACTURA: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDFACTURA'
      Origin = '"FACCOM"."IDFACTURA"'
      Required = True
    end
    object ViewGtosIDSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDSUCURSAL'
      Origin = '"FACCOM"."IDSUCURSAL"'
      Required = True
    end
    object ViewGtosTIPOFACTURA: TSmallintField
      DisplayWidth = 10
      FieldName = 'TIPOFACTURA'
      Origin = '"FACCOM"."TIPOFACTURA"'
    end
    object ViewGtosFECHAF: TDateField
      DisplayLabel = 'Fecha'
      DisplayWidth = 8
      FieldName = 'FECHAF'
      Origin = '"FACCOM"."FECHAF"'
      DisplayFormat = 'dd/mm/yy'
    end
    object ViewGtosNROFACTURA: TStringField
      DisplayLabel = 'Comprobante'
      DisplayWidth = 13
      FieldName = 'NROFACTURA'
      Origin = '"FACCOM"."NROFACTURA"'
      Size = 13
    end
    object ViewGtosPROVEEDOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'PROVEEDOR'
      Origin = '"FACCOM"."PROVEEDOR"'
    end
    object ViewGtosTIPOOP: TSmallintField
      DisplayWidth = 10
      FieldName = 'TIPOOP'
      Origin = '"FACCOM"."TIPOOP"'
    end
    object ViewGtosDESCCORTA: TStringField
      DisplayLabel = 'TC'
      DisplayWidth = 5
      FieldName = 'DESCCORTA'
      Origin = '"TIPOSCOMP"."DESCCORTA"'
      Size = 5
    end
    object ViewGtosNOMBRE: TStringField
      DisplayLabel = 'Proveedor'
      DisplayWidth = 15
      FieldName = 'NOMBRE'
      Origin = '"PROVEEDORES"."NOMBRE"'
      Size = 30
    end
    object ViewGtosTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = '"FACCOM"."TOTAL"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      currency = True
      Precision = 18
    end
    object ViewGtosIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Required = True
    end
    object ViewGtosTotalPer: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TotalPer'
      Visible = True
      Active = True
      DisplayFormat = '0.00'
      Expression = 'Sum(Total)'
    end
  end
  object dspqViewFCom: TDataSetProvider
    DataSet = qViewFCom
    Options = [poIncFieldProps, poUseQuoteChar]
    Left = 597
    Top = 479
  end
  object ViewFCom: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
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
    ProviderName = 'dspqViewFCom'
    Left = 627
    Top = 479
    object ViewFComIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"FACCOM"."IDFACTURA"'
      Required = True
    end
    object ViewFComIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"FACCOM"."IDSUCURSAL"'
      Required = True
    end
    object ViewFComTIPOFACTURA: TSmallintField
      FieldName = 'TIPOFACTURA'
      Origin = '"FACCOM"."TIPOFACTURA"'
    end
    object ViewFComFECHAF: TDateField
      FieldName = 'FECHAF'
      Origin = '"FACCOM"."FECHAF"'
      DisplayFormat = 'dd/mm/yy'
    end
    object ViewFComNROFACTURA: TStringField
      FieldName = 'NROFACTURA'
      Origin = '"FACCOM"."NROFACTURA"'
      Size = 13
    end
    object ViewFComPROVEEDOR: TIntegerField
      FieldName = 'PROVEEDOR'
      Origin = '"FACCOM"."PROVEEDOR"'
    end
    object ViewFComTIPOOP: TSmallintField
      FieldName = 'TIPOOP'
      Origin = '"FACCOM"."TIPOOP"'
    end
    object ViewFComDESCCORTA: TStringField
      FieldName = 'DESCCORTA'
      Origin = '"TIPOSCOMP"."DESCCORTA"'
      Size = 5
    end
    object ViewFComNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = '"PROVEEDORES"."NOMBRE"'
      Size = 30
    end
    object ViewFComTOTAL: TBCDField
      DisplayWidth = 10
      FieldName = 'TOTAL'
      Origin = '"FACCOM"."TOTAL"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      currency = True
      Precision = 18
    end
    object ViewFComIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Required = True
    end
    object ViewFComTotalPer: TAggregateField
      FieldName = 'TotalPer'
      Visible = True
      Active = True
      DisplayFormat = '0.00'
      Expression = 'Sum(Total)'
    end
  end
  object qCmpByPro: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trProc
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select FechaF, DiaHora, NroFactura, IdFactura, IdSucursal,'
      '           IdPuntoVenta, IdProveedor, Nombre, TComp, Neto, '
      '          Total, IdEmpresa, Empresa'
      'From  PROVEEDORES_COMPRAS(:Desde, :Hasta, :IdPro)')
    Left = 567
    Top = 46
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdPro'
        ParamType = ptUnknown
      end>
    object qCmpByProFECHAF: TDateField
      FieldName = 'FECHAF'
      Origin = '"PROVEEDORES_COMPRAS"."FECHAF"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qCmpByProDIAHORA: TDateTimeField
      FieldName = 'DIAHORA'
      Origin = '"PROVEEDORES_COMPRAS"."DIAHORA"'
    end
    object qCmpByProNROFACTURA: TMDOStringField
      FieldName = 'NROFACTURA'
      Origin = '"PROVEEDORES_COMPRAS"."NROFACTURA"'
      Size = 13
    end
    object qCmpByProNOMBRE: TMDOStringField
      FieldName = 'NOMBRE'
      Origin = '"PROVEEDORES_COMPRAS"."NOMBRE"'
      Size = 30
    end
    object qCmpByProTCOMP: TMDOStringField
      FieldName = 'TCOMP'
      Origin = '"PROVEEDORES_COMPRAS"."TCOMP"'
      Size = 5
    end
    object qCmpByProNETO: TMDOBCDField
      FieldName = 'NETO'
      Origin = '"PROVEEDORES_COMPRAS"."NETO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCmpByProTOTAL: TMDOBCDField
      FieldName = 'TOTAL'
      Origin = '"PROVEEDORES_COMPRAS"."TOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qCmpByProEMPRESA: TMDOStringField
      FieldName = 'EMPRESA'
      Origin = '"PROVEEDORES_COMPRAS"."EMPRESA"'
      Size = 30
    end
    object qCmpByProIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = '"PROVEEDORES_COMPRAS"."IDEMPRESA"'
      Visible = False
    end
    object qCmpByProIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"PROVEEDORES_COMPRAS"."IDSUCURSAL"'
      Visible = False
    end
    object qCmpByProIDPROVEEDOR: TIntegerField
      FieldName = 'IDPROVEEDOR'
      Origin = '"PROVEEDORES_COMPRAS"."IDPROVEEDOR"'
      Visible = False
    end
    object qCmpByProIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"PROVEEDORES_COMPRAS"."IDFACTURA"'
      Visible = False
    end
    object qCmpByProIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Visible = False
    end
  end
  object dsqCmpByPro: TDataSource
    DataSet = qCmpByPro
    Left = 597
    Top = 46
  end
  object qAnticiposCCP: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmSaveFile.trSaveComp
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select C.NroMovimiento, C.IdComprobante, C.IdSucursal, C.Fecha,'
      
        '       C.Comprobante, C.Entidad, C.Haber, P.Nombre, S.DetEmp as ' +
        'Empresa'
      'From CCProv C'
      'Join Proveedores P'
      '  on P.IdProveedor = C.Entidad'
      'Left Outer Join DatosSis S'
      '  on S.IdEmpresa = C.IdEmpresa'
      'Where (C.TComp = 34) And'
      '            (C.Fecha between :Desde And :Hasta) And'
      '            (C.State = 0)')
    Left = 627
    Top = 46
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Hasta'
        ParamType = ptUnknown
      end>
    object qAnticiposCCPFECHA: TDateField
      FieldName = 'FECHA'
    end
    object qAnticiposCCPCOMPROBANTE: TMDOStringField
      FieldName = 'COMPROBANTE'
      Origin = '"CCPROV"."COMPROBANTE"'
      Size = 15
    end
    object qAnticiposCCPENTIDAD: TIntegerField
      FieldName = 'ENTIDAD'
      Origin = '"CCPROV"."ENTIDAD"'
    end
    object qAnticiposCCPNOMBRE: TMDOStringField
      FieldName = 'NOMBRE'
      Origin = '"PROVEEDORES"."NOMBRE"'
      Size = 30
    end
    object qAnticiposCCPHABER: TMDOBCDField
      FieldName = 'HABER'
      currency = True
      Precision = 18
      Size = 4
    end
    object qAnticiposCCPEMPRESA: TMDOStringField
      FieldName = 'EMPRESA'
      Size = 5
    end
    object qAnticiposCCPIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"CCPROV"."IDSUCURSAL"'
      Visible = False
    end
    object qAnticiposCCPIDCOMPROBANTE: TIntegerField
      FieldName = 'IDCOMPROBANTE'
      Origin = '"CCPROV"."IDCOMPROBANTE"'
      Visible = False
    end
    object qAnticiposCCPNROMOVIMIENTO: TIntegerField
      FieldName = 'NROMOVIMIENTO'
      Origin = '"CCPROV"."NROMOVIMIENTO"'
      Required = True
      Visible = False
    end
  end
  object dsqAnticiposCCP: TDataSource
    DataSet = qAnticiposCCP
    Left = 658
    Top = 46
  end
  object TreePCtas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 64
    object TreePCtasId: TIntegerField
      FieldName = 'Id'
    end
    object TreePCtasParentId: TIntegerField
      FieldName = 'ParentId'
    end
    object TreePCtasExpanded: TBooleanField
      FieldName = 'Expanded'
    end
    object TreePCtasText: TStringField
      FieldName = 'Text'
      Size = 100
    end
  end
  object dsTreePCtas: TDataSource
    DataSet = TreePCtas
    Left = 512
    Top = 104
  end
end
