object frmViewFacC: TfrmViewFacC
  Left = 302
  Top = 209
  BorderStyle = bsSingle
  Caption = 'Comprobantes de Compras y Gastos Ingresados'
  ClientHeight = 525
  ClientWidth = 784
  Color = 14938339
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF009999
    9999999999999999999999999999999999999999999999999999999999990000
    0000007700000000000007000000000000008044070000000008447000000000
    000006E660700000008066070000000000076EEEE60000000706EE4800000000
    0007EEEEE6000000084EEE600000000000076EEEE60000000706EE6800000000
    000006E660800000000066070000000000008044008000007808447000000000
    00000077FF000000007F07000000000000000000000000008888070000000000
    00000088087878087087700000000000000070FF07FFFF87F88FF00000000000
    000080F707F7F788F88FF0000000000000000000000000000000000000000000
    0007000000000000000000070000000000080788777777807770778000000000
    0000FF88FFFFFF88FFF87F700000000000700000000000000000000000000000
    008000000000000000000000000000000007F88FFFFFFF78FFFF0FFF07000000
    0707708777777780877707778000000008000000000000000000000000700000
    007F707FFFF7FF707FFF87FF7800000000FF88FFFFFFFF707FFF77FFF7070000
    0000000000000000000000000000000807880000000000000000000000000070
    8070000000000000000000000000070080000000000000000000000000007008
    7000000000000000000000000000887000000000000000000000000000000000
    000000000000FFCFFFBFFF03FE1FFF01FC0FFE01F80FFE01F80FFE01F80FFF01
    FC0FFF01F01FFFC0003FFF80003FFF80003FFF00003FFF00001FFF00001FFE00
    000FFE00000FFE00000FFC000007FC000007FC000003F8000003F8000001F800
    0001F8000000F8000000E0FFFFFFC1FFFFFF87FFFFFF07FFFFFF1FFFFFFF}
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcEgresos: TRzPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 525
    ActivePage = tsBusqueda
    ActivePageDefault = tsComprobantes
    Align = alClient
    BoldCurrentTab = True
    UseColoredTabs = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ImagePosition = ipStretch
    ParentFont = False
    ShowCloseButton = True
    ShowFocusRect = False
    ShowFullFrame = False
    ShowShadow = False
    TextOrientation = orVertical
    TabHeight = 220
    TabIndex = 1
    TabOrder = 0
    TabOrientation = toRight
    TabStyle = tsDoubleSlant
    TabWidth = 25
    TextColors.Selected = clMaroon
    TextColors.Unselected = clGreen
    OnClose = pcEgresosClose
    FixedDimension = 25
    object tsComprobantes: TRzTabSheet
      Color = 14938339
      Caption = 'Comprobantes'
      object gbHeader: TRzGroupBox
        Left = 0
        Top = 0
        Width = 759
        Height = 97
        Align = alTop
        Alignment = taRightJustify
        BorderColor = clWhite
        BorderInner = fsFlat
        BorderWidth = 1
        Caption = 'Datos Operaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4194368
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        GradientColorStyle = gcsCustom
        GradientColorStop = 16765650
        GroupStyle = gsBanner
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        VisualStyle = vsGradient
        object bvlFacCom1: TBevel
          Left = 28
          Top = 23
          Width = 103
          Height = 37
          Style = bsRaised
        end
        object lblNroCpm: TLabel
          Left = 29
          Top = 24
          Width = 14
          Height = 16
          Caption = 'N'#186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 21760
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lblTipoComp: TLabel
          Left = 29
          Top = 61
          Width = 104
          Height = 13
          Caption = '&Tipo Comprobante'
          FocusControl = cbTipoComp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblFecha: TLabel
          Left = 537
          Top = 20
          Width = 33
          Height = 13
          Caption = '&Fecha'
          FocusControl = edtFechaF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblNroComp: TLabel
          Left = 176
          Top = 61
          Width = 93
          Height = 13
          Caption = '&N'#186' Comprobante'
          FocusControl = edtNroFactura
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblProv: TLabel
          Left = 134
          Top = 20
          Width = 59
          Height = 13
          Caption = '&Proveedor'
          FocusControl = edtProv
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object bvlFacCom2: TBevel
          Left = 129
          Top = 59
          Width = 608
          Height = 2
          Shape = bsBottomLine
        end
        object lblProveedor: TDBText
          Left = 194
          Top = 40
          Width = 244
          Height = 16
          DataField = 'NOMBRE'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          Transparent = True
          OnDblClick = lblProveedorDblClick
        end
        object lblNroFac: TDBText
          Left = 46
          Top = 43
          Width = 83
          Height = 14
          Alignment = taRightJustify
          DataField = 'IdFactura'
          DataSource = dsFacturas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblPeriodo: TLabel
          Left = 478
          Top = 20
          Width = 43
          Height = 13
          Caption = '&Periodo'
          FocusControl = edtPeriodo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblCaiProv: TLabel
          Left = 508
          Top = 61
          Width = 91
          Height = 13
          Caption = 'C.&A.I. Proveedor'
          FocusControl = edtCaiProv
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblIdCompRef: TDBText
          Left = 46
          Top = 26
          Width = 83
          Height = 14
          Alignment = taRightJustify
          DataField = 'IdCompRef'
          DataSource = dsFacturas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSucursal: TLabel
          Left = 631
          Top = 20
          Width = 104
          Height = 13
          Caption = 'S&ucursal/Deposito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblCompRef: TLabel
          Left = 274
          Top = 61
          Width = 90
          Height = 13
          Caption = 'N'#186' C. &Referencia'
          FocusControl = edtCompRef
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblTipoOp: TLabel
          Left = 391
          Top = 61
          Width = 84
          Height = 13
          Caption = 'Tipo &Operaci'#243'n'
          FocusControl = edtCompRef
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblDetEmp: TLabel
          Left = 686
          Top = 61
          Width = 49
          Height = 13
          Caption = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 21760
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object edtFechaF: TwwDBDateTimePicker
          Left = 537
          Top = 36
          Width = 91
          Height = 19
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'Arial'
          CalendarAttributes.Font.Style = []
          DataField = 'FechaF'
          DataSource = dsFacturas
          Epoch = 1950
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ShowButton = True
          TabOrder = 3
        end
        object edtNroFactura: TwwDBEdit
          Left = 180
          Top = 76
          Width = 90
          Height = 19
          BorderStyle = bsNone
          DataField = 'NroFactura'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
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
          OnKeyDown = edtProvKeyDown
        end
        object edtProv: TwwDBEdit
          Left = 133
          Top = 36
          Width = 58
          Height = 19
          BorderStyle = bsNone
          DataField = 'Proveedor'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
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
          OnKeyDown = edtProvKeyDown
        end
        object cbTipoComp: TwwDBLookupCombo
          Left = 29
          Top = 76
          Width = 148
          Height = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Descripcion'#9'13'#9'Descripci'#243'n'#9'F')
          DataField = 'TipoFactura'
          DataSource = dsFacturas
          LookupTable = dmGestion.TipoComp
          LookupField = 'IdComprobante'
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 5
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnKeyDown = edtProvKeyDown
        end
        object edtPeriodo: TwwDBEdit
          Left = 478
          Top = 36
          Width = 56
          Height = 19
          BorderStyle = bsNone
          DataField = 'Periodo'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
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
        end
        object edtCaiProv: TwwDBEdit
          Left = 521
          Top = 76
          Width = 78
          Height = 19
          BorderStyle = bsNone
          DataField = 'CaiProv'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
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
          OnKeyDown = edtProvKeyDown
        end
        object cbSucur: TwwDBLookupCombo
          Left = 631
          Top = 36
          Width = 105
          Height = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'NombreSuc'#9'20'#9'Sucursal'#9#9)
          DataField = 'IdSucursal'
          DataSource = dsFacturas
          LookupTable = dmGestion.Sucursales
          LookupField = 'IdSucursal'
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 4
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object edtCompRef: TwwDBEdit
          Left = 274
          Top = 76
          Width = 113
          Height = 19
          BorderStyle = bsNone
          DataField = 'COMPREF'
          DataSource = dsFacturas
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
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
          OnKeyDown = edtProvKeyDown
        end
        object cbTipoOp: TwwDBComboBox
          Left = 391
          Top = 76
          Width = 127
          Height = 19
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          BorderStyle = bsNone
          DataField = 'TIPOOP'
          DataSource = dsFacturas
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          ItemHeight = 0
          Items.Strings = (
            'Compras'#9'1'
            'Gastos'#9'2'
            'Remitos Proveedor'#9'3'
            'Presentaci'#243'n a Cobrar'#9'4')
          ParentColor = True
          ParentFont = False
          Sorted = False
          TabOrder = 8
          UnboundDataType = wwDefault
        end
        object btnProveedores: TRzBitBtn
          Left = 446
          Top = 27
          Width = 29
          Height = 29
          Hint = 'Proveedores'
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
        object cbDetEmp: TwwDBLookupCombo
          Left = 603
          Top = 76
          Width = 133
          Height = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'NOMBREEMPRESA'#9'20'#9'Empresas'#9'F'#9
            'IDEMPRESA'#9'2'#9'N'#186#9'F'#9)
          DataField = 'IDEMPRESA'
          DataSource = dsFacturas
          LookupTable = dmGestion.Empresas
          LookupField = 'IDEMPRESA'
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          Frame.Enabled = True
          Frame.Transparent = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.NonFocusStyle = efsFrameSingle
          ParentColor = True
          ParentFont = False
          TabOrder = 10
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
      end
      object gbItemsFC: TRzGroupBox
        Left = 0
        Top = 97
        Width = 759
        Height = 227
        Align = alClient
        Alignment = taRightJustify
        Caption = 'Items'
        Color = 14938339
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4194368
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        GradientColorStyle = gcsCustom
        GradientColorStop = 16765650
        GroupStyle = gsBanner
        ParentFont = False
        TabOrder = 1
        VisualStyle = vsGradient
        object gViewProd: TwwDBGrid
          Left = 0
          Top = 22
          Width = 759
          Height = 205
          Selected.Strings = (
            'IdArticulo'#9'5'#9'C'#243'digo'#9'F'#9'Producto'
            'Marca'#9'10'#9'Marca'#9'F'#9'Producto'
            'Detalle'#9'22'#9'Detalle'#9'F'#9'Producto'
            'Color'#9'5'#9'Color'#9'F'#9'Producto'
            'Talle'#9'3'#9'M'#9'F'#9'Producto'
            'Cantidad'#9'5'#9'Cant'#9'F'#9'Producto'
            'PRCDCTO'#9'7'#9'%Dcto'#9'F'#9'Precios'
            'PrecioNeto'#9'8'#9'Base'#9'F'#9'Precios'
            'PrecioFinal'#9'8'#9'Final'#9'F'#9'Precios'
            'PrecioTotal'#9'9'#9'Total'#9'F'#9'Precios'
            'AlicuotaIva'#9'5'#9'Alc'#9'F'#9'Impuestos'
            'MtoIva'#9'8'#9'Iva'#9'F'#9'Impuestos'
            'ImpInt'#9'8'#9'ImpInt'#9'F'#9'Impuestos')
          IniAttributes.Delimiter = ';;'
          TitleColor = clWhite
          FixedCols = 0
          ShowHorzScrollBar = False
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsItemsFac
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyOptions = [dgEnterToTab]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgWordWrap]
          ParentColor = True
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
          OnDblClick = gViewProdDblClick
          OnKeyPress = gViewProdKeyPress
        end
      end
      object gbFoot: TRzGroupBox
        Left = 0
        Top = 324
        Width = 759
        Height = 201
        Align = alBottom
        Alignment = taRightJustify
        BorderInner = fsFlat
        Caption = 'Totales Operaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4194368
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        GradientColorStyle = gcsCustom
        GradientColorStop = 16765650
        GroupStyle = gsBanner
        ParentColor = True
        ParentFont = False
        TabOrder = 2
        VisualStyle = vsGradient
        object gbTotales: TRzGroupBox
          Left = 1
          Top = 23
          Width = 334
          Height = 93
          Align = alLeft
          Alignment = taCenter
          Caption = '  &Totales  '
          Font.Charset = ANSI_CHARSET
          Font.Color = 64
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          GradientColorStyle = gcsCustom
          GradientColorStop = 9029061
          GroupStyle = gsBanner
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          VisualStyle = vsGradient
          object lblNeto: TLabel
            Left = 6
            Top = 56
            Width = 26
            Height = 13
            Caption = 'Neto'
            FocusControl = edtNeto
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblExento: TLabel
            Left = 173
            Top = 22
            Width = 39
            Height = 13
            Caption = 'Exento'
            FocusControl = edtExento
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblImpInt: TLabel
            Left = 255
            Top = 22
            Width = 63
            Height = 13
            Caption = 'NC/Imp.Int'
            FocusControl = edtNoComputables
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblIvaOtAlc: TLabel
            Left = 254
            Top = 56
            Width = 76
            Height = 13
            Caption = 'Iva Otras Alc.'
            FocusControl = edtIvaOtAlc
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblBonif: TLabel
            Left = 88
            Top = 22
            Width = 67
            Height = 13
            Caption = 'Bonificaci'#243'n'
            FocusControl = edtBonif
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblIvaTDif: TLabel
            Left = 173
            Top = 56
            Width = 62
            Height = 13
            Caption = 'Iva T. Difer'
            FocusControl = edtIvaTDif
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblTGral: TLabel
            Left = 88
            Top = 56
            Width = 76
            Height = 13
            Caption = 'Iva T.General'
            FocusControl = edtIvaTGral
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblTotal: TLabel
            Left = 6
            Top = 22
            Width = 29
            Height = 13
            Caption = 'Total'
            FocusControl = edtBonif
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object edtNeto: TwwDBEdit
            Left = 6
            Top = 70
            Width = 77
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'Neto'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameSingle
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtExento: TwwDBEdit
            Left = 173
            Top = 36
            Width = 77
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'Exento'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameSingle
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtNoComputables: TwwDBEdit
            Left = 255
            Top = 36
            Width = 77
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'NoComputables'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameSingle
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtIvaOtAlc: TwwDBEdit
            Left = 255
            Top = 70
            Width = 77
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'IvaOtAlc'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameSingle
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtTotal: TwwDBEdit
            Left = 6
            Top = 36
            Width = 77
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'Total'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameSingle
            ParentFont = False
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtBonif: TwwDBEdit
            Left = 88
            Top = 36
            Width = 77
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'Bonificacion'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameSingle
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtIvaTDif: TwwDBEdit
            Left = 173
            Top = 70
            Width = 77
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'IvaAlicuota2'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameSingle
            ParentFont = False
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtIvaTGral: TwwDBEdit
            Left = 88
            Top = 70
            Width = 77
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'IvaAlicuota1'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.Transparent = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameSingle
            ParentFont = False
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
        end
        object gbCtaCte: TRzGroupBox
          Left = 574
          Top = 23
          Width = 184
          Height = 93
          Align = alRight
          Alignment = taCenter
          Caption = '   &Pagos  '
          Font.Charset = ANSI_CHARSET
          Font.Color = 64
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          GradientColorStyle = gcsCustom
          GradientColorStop = 9029061
          GroupStyle = gsBanner
          ParentColor = True
          ParentFont = False
          TabOrder = 2
          VisualStyle = vsGradient
          object lblIdOrdPago: TLabel
            Left = 11
            Top = 22
            Width = 37
            Height = 13
            Caption = 'N'#186' O.P.'
            FocusControl = edtIdOrdPag
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblCtaCte: TLabel
            Left = 11
            Top = 56
            Width = 44
            Height = 13
            Caption = 'Cta.Cte.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblContado: TLabel
            Left = 104
            Top = 22
            Width = 45
            Height = 13
            Caption = 'Efectivo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblTickets: TLabel
            Left = 104
            Top = 56
            Width = 41
            Height = 13
            Caption = 'Tickets'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object btnAdd_CC: TRzBitBtn
            Left = 82
            Top = 56
            Width = 18
            Height = 13
            Hint = 'agregar a Cuenta Corriente si no ingresada'
            Caption = '+'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            HotTrack = True
            ParentColor = True
            ParentFont = False
            TabOrder = 2
            OnClick = btnAdd_CCClick
          end
          object edtCtaCte: TwwDBEdit
            Left = 11
            Top = 70
            Width = 89
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'CtaCte'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameEtched
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtIdOrdPag: TwwDBEdit
            Left = 11
            Top = 37
            Width = 89
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'NROCOMPOP'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameEtched
            ParentFont = False
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtContado: TwwDBEdit
            Left = 104
            Top = 37
            Width = 74
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'Contado'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameEtched
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtTickets: TwwDBEdit
            Left = 104
            Top = 70
            Width = 74
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'Tickets'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameEtched
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
        end
        object gbRetenciones: TRzGroupBox
          Left = 335
          Top = 23
          Width = 239
          Height = 93
          Align = alClient
          Alignment = taCenter
          Caption = '   &Retenciones  '
          Font.Charset = ANSI_CHARSET
          Font.Color = 64
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          GradientColorStyle = gcsCustom
          GradientColorStop = 9029061
          GroupStyle = gsBanner
          ParentColor = True
          ParentFont = False
          TabOrder = 1
          VisualStyle = vsGradient
          object lblRetIB: TLabel
            Left = 7
            Top = 56
            Width = 78
            Height = 13
            Caption = 'Ingresos Btos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblRetLH: TLabel
            Left = 157
            Top = 56
            Width = 62
            Height = 13
            Caption = 'Lote Hogar'
            FocusControl = edtRetLH
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblGanancias: TLabel
            Left = 157
            Top = 23
            Width = 58
            Height = 13
            Caption = 'Ganancias'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblPersep: TLabel
            Left = 6
            Top = 22
            Width = 26
            Height = 13
            Caption = 'I.V.A'
            FocusControl = edtPercep
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblPrcPerc: TLabel
            Left = 70
            Top = 23
            Width = 78
            Height = 13
            Caption = '% Percepci'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object edtRetGan: TwwDBEdit
            Left = 157
            Top = 37
            Width = 79
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'RetGan'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameEtched
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtRetLH: TwwDBEdit
            Left = 157
            Top = 71
            Width = 79
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'RetLH'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameEtched
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtRetIB: TwwDBEdit
            Left = 7
            Top = 71
            Width = 79
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'RetIBto'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameEtched
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtPercep: TwwDBEdit
            Left = 7
            Top = 37
            Width = 79
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'RETIVA'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameEtched
            ParentFont = False
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
          object edtPrcPercep: TwwDBEdit
            Left = 99
            Top = 37
            Width = 49
            Height = 19
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'ALCPERCEPCION'
            DataSource = dsFacturas
            EditAlignment = eaRightAlignEditing
            Font.Charset = ANSI_CHARSET
            Font.Color = 13674
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Frame.Enabled = True
            Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameEtched
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = edtTotalKeyDown
            OnKeyPress = edtTotalKeyPress
          end
        end
        object gbNavComp: TRzGroupBox
          Left = 1
          Top = 116
          Width = 757
          Height = 84
          Align = alBottom
          Alignment = taRightJustify
          Caption = 'Datos complementarios/controles'
          Color = 15527920
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4194368
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          GradientColorStyle = gcsCustom
          GradientColorStop = 16765650
          GroupStyle = gsBanner
          ParentFont = False
          TabOrder = 3
          object lblItems: TLabel
            Left = 3
            Top = 22
            Width = 36
            Height = 11
            Caption = '#Ite&ms'
            FocusControl = edtCantArt
            Font.Charset = ANSI_CHARSET
            Font.Color = 21760
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblNomUsuario: TDBText
            Left = 49
            Top = 37
            Width = 336
            Height = 13
            DataField = 'NOMUSUARIO'
            DataSource = dsFacturas
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblUsr: TLabel
            Left = 49
            Top = 22
            Width = 38
            Height = 11
            Caption = '&Usuario'
            FocusControl = edtProv
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 21760
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblDiaHora: TDBText
            Left = 333
            Top = 22
            Width = 53
            Height = 11
            Alignment = taRightJustify
            AutoSize = True
            DataField = 'DIAHORA'
            DataSource = dsFacturas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblDetObsOpr: TLabel
            Left = 3
            Top = 55
            Width = 201
            Height = 11
            Caption = 'Detalle u Observaciones de la Operaci'#243'n'
            FocusControl = edtCantArt
            Font.Charset = ANSI_CHARSET
            Font.Color = 21760
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object pnlNavFC: TRzPanel
            Left = 631
            Top = 22
            Width = 126
            Height = 62
            Align = alRight
            BorderOuter = fsFlatRounded
            Color = 15791348
            GradientColorStyle = gcsCustom
            GradientColorStop = 15527920
            TabOrder = 0
            VisualStyle = vsGradient
            object btnSaveFC: TRzBitBtn
              Left = 33
              Top = 1
              Width = 30
              Height = 30
              Hint = 'grabar cambios'
              HotTrack = True
              ParentColor = True
              TabOrder = 1
              OnClick = btnSaveFCClick
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
            object btnBorrarFC: TRzBitBtn
              Left = 94
              Top = 1
              Width = 30
              Height = 30
              Hint = 'anular operaci'#243'n'
              HotTrack = True
              ParentColor = True
              TabOrder = 3
              OnClick = btnBorrarFCClick
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
            object btnCancelFC: TRzBitBtn
              Left = 63
              Top = 1
              Width = 30
              Height = 30
              Hint = 'cancelar cambios'
              HotTrack = True
              ParentColor = True
              TabOrder = 2
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
            object btnBuscarFC: TRzBitBtn
              Left = 94
              Top = 31
              Width = 30
              Height = 30
              Hint = 'buscar'
              HotTrack = True
              ParentColor = True
              TabOrder = 5
              OnClick = btnBuscarFCClick
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
            object btnSalirFC: TRzBitBtn
              Left = 3
              Top = 31
              Width = 30
              Height = 30
              Hint = 'anular operaci'#243'n'
              HotTrack = True
              ParentColor = True
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
            object btnEditFC: TRzBitBtn
              Left = 3
              Top = 1
              Width = 30
              Height = 30
              Hint = 'modificar'
              HotTrack = True
              ParentColor = True
              TabOrder = 0
              OnClick = btnEditFCClick
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
            object btnImprimir: TRzMenuButton
              Left = 33
              Top = 31
              Width = 60
              Height = 30
              Hint = 'imprimir comprobante/rotulos'
              Color = 15791348
              HighlightColor = 16026986
              HotTrack = True
              HotTrackColor = 3983359
              PopupMenu = pmImprimir
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
              DropDownMenu = pmImprimir
            end
          end
          object edtCantArt: TwwDBEdit
            Left = 4
            Top = 34
            Width = 33
            Height = 17
            BorderStyle = bsNone
            DataField = 'CantArtic'
            DataSource = dsFacturas
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
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
            OnKeyDown = edtProvKeyDown
          end
          object edtDetObsOpr: TwwDBEdit
            Left = 3
            Top = 67
            Width = 394
            Height = 17
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'Detalle'
            DataSource = dsFacturas
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
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
            OnKeyDown = edtProvKeyDown
          end
          object gbDatos_PCL: TRzGroupBox
            Left = 407
            Top = 22
            Width = 224
            Height = 62
            Align = alRight
            Caption = 'Presentaciones / Liquidaciones'
            Color = 14286847
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4194368
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GroupStyle = gsBanner
            ParentFont = False
            TabOrder = 3
            VisualStyle = vsGradient
            object lblNroLiq: TDBText
              Left = 2
              Top = 19
              Width = 45
              Height = 11
              AutoSize = True
              DataField = 'IDNUMEROLIQ'
              DataSource = dsFacturas
              Font.Charset = ANSI_CHARSET
              Font.Color = 16512
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblFecPresLMDesde: TDBText
              Left = 125
              Top = 17
              Width = 97
              Height = 11
              Alignment = taRightJustify
              AutoSize = True
              DataField = 'FECPRELIQDESDE'
              DataSource = dsFacturas
              Font.Charset = ANSI_CHARSET
              Font.Color = 16512
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblFecPresLMHasta: TDBText
              Left = 126
              Top = 31
              Width = 96
              Height = 11
              Alignment = taRightJustify
              AutoSize = True
              DataField = 'FECPRELIQHASTA'
              DataSource = dsFacturas
              Font.Charset = ANSI_CHARSET
              Font.Color = 16512
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblPrcComision: TDBText
              Left = 148
              Top = 50
              Width = 74
              Height = 11
              Alignment = taRightJustify
              AutoSize = True
              DataField = 'COMISION'
              DataSource = dsFacturas
              Font.Charset = ANSI_CHARSET
              Font.Color = 16512
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object lblEntTarMutTar: TDBText
              Left = 2
              Top = 50
              Width = 83
              Height = 11
              AutoSize = True
              DataField = 'IDENTTARMUT'
              DataSource = dsFacturas
              Font.Charset = ANSI_CHARSET
              Font.Color = 16512
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object btnRepPreLiq: TRzBitBtn
              Left = 91
              Top = 31
              Width = 30
              Height = 30
              Hint = 'reparar'
              HotTrack = True
              ParentColor = True
              TabOrder = 0
              OnClick = btnRepPreLiqClick
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
            end
          end
        end
      end
    end
    object tsBusqueda: TRzTabSheet
      Color = 14938339
      Caption = 'Busqueda'
      object pnlHeadFiltro: TRzPanel
        Left = 0
        Top = 0
        Width = 759
        Height = 42
        Align = alTop
        BorderOuter = fsFlatRounded
        Color = 15791348
        GradientColorStyle = gcsCustom
        GradientColorStop = 15138764
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
          Font.Color = 12550656
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
          Font.Color = 12550656
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
          Font.Color = 12550656
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
          Font.Color = 12550656
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
          FocusControl = cbTipoEgresos
          Font.Charset = ANSI_CHARSET
          Font.Color = 12550656
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object btnFiltrar: TRzBitBtn
          Left = 597
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
          Font.Color = 4359168
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
          Font.Color = 4359168
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
          Font.Color = 4359168
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
          Font.Color = 4359168
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
        object cbTipoEgresos: TRzComboBox
          Left = 433
          Top = 18
          Width = 143
          Height = 21
          Color = 15791348
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4359168
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
        Width = 759
        Height = 483
        Selected.Strings = (
          'DETEMP'#9'5'#9'Empresa'#9'F'#9'Comprobante encontrados'
          'IDPUNTOVENTA'#9'2'#9'T'#186#9'F'
          'IdFactura'#9'6'#9'F'#186#9'F'#9'Comprobante encontrados'
          'NOMBRESUC'#9'7'#9'Sucursal'#9'F'#9'Comprobante encontrados'
          'PROVEEDOR'#9'5'#9'Entidad'#9'F'#9'Comprobante encontrados'
          'NOMBRE'#9'20'#9'Nombre Proveedor'#9'F'#9'Comprobante encontrados'
          'FechaF'#9'8'#9'Fecha'#9'F'#9'Comprobante encontrados'
          'DESCCORTA'#9'6'#9'TC'#9'F'#9'Comprobante encontrados'
          'NroFactura'#9'13'#9'Comprobante'#9'F'#9'Comprobante encontrados'
          'Total'#9'10'#9'Total'#9'F'#9'Comprobante encontrados')
        IniAttributes.Delimiter = ';;'
        TitleColor = 15400917
        FixedCols = 0
        ShowHorzScrollBar = False
        Align = alClient
        BorderStyle = bsNone
        Color = 15138815
        DataSource = dsFiltroFac
        Font.Charset = ANSI_CHARSET
        Font.Color = 12550656
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyOptions = [dgEnterToTab]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = 12550656
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
    DataSet = qFacCom
    Left = 328
    Top = 174
  end
  object dsItemsFac: TDataSource
    AutoEdit = False
    DataSet = qItemsFC
    Left = 389
    Top = 174
  end
  object qActItems: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmSaveFile.trVerComp
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'UpDate ItemsFC'
      'Set IdSucursal =:NewIdSucursal,'
      '     FechaF =:NewFechaF '
      'Where IdFactura =:IdFactura'
      'And IdSucursal =:IdSucursal'
      'And IdPuntoVenta =:IdPuntoVenta')
    Left = 420
    Top = 174
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NewIdSucursal'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'NewFechaF'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'IdFactura'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'IdSucursal'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'IdPuntoVenta'
        ParamType = ptUnknown
      end>
  end
  object qFacCom: TMDODataSet
    AfterClose = qFacComAfterClose
    AfterOpen = qFacComAfterOpen
    AfterPost = qFacComAfterPost
    AfterScroll = qFacComAfterScroll
    BeforeEdit = qFacComBeforeEdit
    BeforePost = qFacComBeforePost
    Database = dmGestion.dbGestion
    Transaction = dmSaveFile.trVerComp
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM FACCOM'
      'WHERE'
      '  IDFACTURA = :OLD_IDFACTURA AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL AND'
      '  IDPUNTOVENTA = :OLD_IDPUNTOVENTA')
    InsertSQL.Strings = (
      'INSERT INTO FACCOM'
      
        '  (IDFACTURA, IDSUCURSAL, IDPUNTOVENTA, IDPERIODO, TIPOFACTURA, ' +
        'DIAHORA, '
      
        '   PERIODO, FECHAF, FECHAV, NROFACTURA, COMPREF, IDCOMPREF, CAIP' +
        'ROV, PROVEEDOR, '
      
        '   TIPOIVA, CANTARTIC, PRCBONIF, BONIFICACION, NETO, EXENTO, NOC' +
        'OMPUTABLES, '
      
        '   ALCPERCEPCION, RETIVA, RETGAN, RETIBTO, RETLH, IVAALICUOTA1, ' +
        'IVAALICUOTA2, '
      
        '   IVAOTALC, TOTAL, CONTADO, TICKETS, CTACTE, CHEQUEPROP, CHEQUE' +
        'TER, OTROSPAGOS, '
      
        '   FECHACAN, FECHAIS, USUARIO, STATE, COMISION, TIPOOP, FECPRELI' +
        'QDESDE, '
      
        '   FECPRELIQHASTA, DETALLE, IDEMPRESA, IDENTTARMUT, IDNUMEROLIQ,' +
        ' NROCERTRET)'
      'VALUES'
      
        '  (:IDFACTURA, :IDSUCURSAL, :IDPUNTOVENTA, :IDPERIODO, :TIPOFACT' +
        'URA, :DIAHORA, '
      
        '   :PERIODO, :FECHAF, :FECHAV, :NROFACTURA, :COMPREF, :IDCOMPREF' +
        ', :CAIPROV, '
      
        '   :PROVEEDOR, :TIPOIVA, :CANTARTIC, :PRCBONIF, :BONIFICACION, :' +
        'NETO, :EXENTO, '
      
        '   :NOCOMPUTABLES, :ALCPERCEPCION, :RETIVA, :RETGAN, :RETIBTO, :' +
        'RETLH, '
      
        '   :IVAALICUOTA1, :IVAALICUOTA2, :IVAOTALC, :TOTAL, :CONTADO, :T' +
        'ICKETS, '
      
        '   :CTACTE, :CHEQUEPROP, :CHEQUETER, :OTROSPAGOS, :FECHACAN, :FE' +
        'CHAIS, '
      
        '   :USUARIO, :STATE, :COMISION, :TIPOOP, :FECPRELIQDESDE, :FECPR' +
        'ELIQHASTA, '
      
        '   :DETALLE, :IDEMPRESA, :IDENTTARMUT, :IDNUMEROLIQ, :NROCERTRET' +
        ')')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE FACCOM'
      'SET'
      '  IDFACTURA = :IDFACTURA,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  IDPUNTOVENTA = :IDPUNTOVENTA,'
      '  IDPERIODO = :IDPERIODO,'
      '  TIPOFACTURA = :TIPOFACTURA,'
      '  DIAHORA = :DIAHORA,'
      '  PERIODO = :PERIODO,'
      '  FECHAF = :FECHAF,'
      '  FECHAV = :FECHAV,'
      '  NROFACTURA = :NROFACTURA,'
      '  COMPREF = :COMPREF,'
      '  IDCOMPREF = :IDCOMPREF,'
      '  CAIPROV = :CAIPROV,'
      '  PROVEEDOR = :PROVEEDOR,'
      '  TIPOIVA = :TIPOIVA,'
      '  CANTARTIC = :CANTARTIC,'
      '  PRCBONIF = :PRCBONIF,'
      '  BONIFICACION = :BONIFICACION,'
      '  NETO = :NETO,'
      '  EXENTO = :EXENTO,'
      '  NOCOMPUTABLES = :NOCOMPUTABLES,'
      '  ALCPERCEPCION = :ALCPERCEPCION,'
      '  RETIVA = :RETIVA,'
      '  RETGAN = :RETGAN,'
      '  RETIBTO = :RETIBTO,'
      '  RETLH = :RETLH,'
      '  IVAALICUOTA1 = :IVAALICUOTA1,'
      '  IVAALICUOTA2 = :IVAALICUOTA2,'
      '  IVAOTALC = :IVAOTALC,'
      '  TOTAL = :TOTAL,'
      '  CONTADO = :CONTADO,'
      '  TICKETS = :TICKETS,'
      '  CTACTE = :CTACTE,'
      '  CHEQUEPROP = :CHEQUEPROP,'
      '  CHEQUETER = :CHEQUETER,'
      '  OTROSPAGOS = :OTROSPAGOS,'
      '  FECHACAN = :FECHACAN,'
      '  FECHAIS = :FECHAIS,'
      '  USUARIO = :USUARIO,'
      '  STATE = :STATE,'
      '  COMISION = :COMISION,'
      '  TIPOOP = :TIPOOP,'
      '  FECPRELIQDESDE = :FECPRELIQDESDE,'
      '  FECPRELIQHASTA = :FECPRELIQHASTA,'
      '  DETALLE = :DETALLE,'
      '  IDEMPRESA = :IDEMPRESA,'
      '  IDENTTARMUT = :IDENTTARMUT,'
      '  IDNUMEROLIQ = :IDNUMEROLIQ,'
      '  NROCERTRET = :NROCERTRET'
      'WHERE'
      '  IDFACTURA = :OLD_IDFACTURA AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL AND'
      '  IDPUNTOVENTA = :OLD_IDPUNTOVENTA')
    RefreshSQL.Strings = (
      'SELECT '
      '  IDFACTURA,'
      '  IDSUCURSAL,'
      '  IDPUNTOVENTA,'
      '  IDPERIODO,'
      '  TIPOFACTURA,'
      '  DIAHORA,'
      '  PERIODO,'
      '  FECHAF,'
      '  FECHAV,'
      '  NROFACTURA,'
      '  COMPREF,'
      '  IDCOMPREF,'
      '  CAIPROV,'
      '  PROVEEDOR,'
      '  TIPOIVA,'
      '  CANTARTIC,'
      '  PRCBONIF,'
      '  BONIFICACION,'
      '  NETO,'
      '  EXENTO,'
      '  NOCOMPUTABLES,'
      '  ALCPERCEPCION,'
      '  RETIVA,'
      '  RETGAN,'
      '  RETIBTO,'
      '  RETLH,'
      '  IVAALICUOTA1,'
      '  IVAALICUOTA2,'
      '  IVAOTALC,'
      '  TOTAL,'
      '  CONTADO,'
      '  TICKETS,'
      '  CTACTE,'
      '  CHEQUEPROP,'
      '  CHEQUETER,'
      '  OTROSPAGOS,'
      '  FECHACAN,'
      '  FECHAIS,'
      '  USUARIO,'
      '  STATE,'
      '  COMISION,'
      '  TIPOOP,'
      '  FECPRELIQDESDE,'
      '  FECPRELIQHASTA,'
      '  DETALLE,'
      '  IDEMPRESA,'
      '  IDENTTARMUT,'
      '  IDNUMEROLIQ,'
      '  NROCERTRET'
      'FROM FACCOM '
      'WHERE'
      '  IDFACTURA = :IDFACTURA AND'
      '  IDSUCURSAL = :IDSUCURSAL AND'
      '  IDPUNTOVENTA = :IDPUNTOVENTA')
    SelectSQL.Strings = (
      'Select F.IDFACTURA, F.IDSUCURSAL, F.TIPOFACTURA, '
      '           F.IDPUNTOVENTA, F.DIAHORA, F.PERIODO, F.FECHAF,'
      '           F.FECHAV, F.NROFACTURA, F.COMPREF, F.IDCOMPREF,'
      '           F.CAIPROV, F.PROVEEDOR, F.TIPOOP, F.TIPOIVA, '
      '           F.CANTARTIC, F.PRCBONIF, F.BONIFICACION, F.NETO, '
      '           F.EXENTO, F.NOCOMPUTABLES, F.ALCPERCEPCION, '
      '           F.COMISION, F.RETIVA, F.RETGAN, F.RETIBTO, F.RETLH,'
      '           F.IVAALICUOTA1, F.IVAALICUOTA2, F.IVAOTALC, F.TOTAL, '
      '           F.CONTADO, F.TICKETS, F.CTACTE, F.CHEQUEPROP, '
      '           F.CHEQUETER, F.OTROSPAGOS, F.FECHACAN, '
      
        '           F.FECHAIS,  F.USUARIO, F.STATE, F.FECPRELIQDESDE,    ' +
        '        '
      '           F.FECPRELIQHASTA, F.DETALLE,  F.IDEMPRESA,  '
      '           F.IDENTTARMUT,  F.IDNUMEROLIQ, F.IDPERIODO,'
      '           T.Descripcion as TipoFacStr,  O.NroCompOP, P.Nombre, '
      '            P.Documento,  E.Nombre as NomUsuario'
      'From FACCOM F'
      'Left Outer Join ItemsOP I'
      '   on I.IdFactura = F.IdFactura And'
      '        I.IdSucursal = F.IdSucursal And'
      '        I.Entidad = F.Proveedor'
      'Left Outer Join Ordenes O'
      '   on O.IdOrden = I.IdOrdPago And'
      '        O.Entidad = F.Proveedor'
      'Left Outer Join Proveedores P '
      '   on P.IdProveedor = F.Proveedor'
      'Left Outer Join TiposComp T'
      '   on T.IdComprobante = F.TipoFactura'
      'Left Outer Join Empleados E '
      '   on E.IdEmpleado = F.Usuario'
      'Where (F.IdFactura = :IdFactura) And '
      '            (F.IdSucursal = :IdSucursal)  And'
      '            (F.IdPuntoVenta = :IdPunto)  And'
      '            (F.STATE = 0)')
    Left = 298
    Top = 174
    object qFacComIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"FACCOM"."IDFACTURA"'
      Required = True
    end
    object qFacComIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"FACCOM"."IDSUCURSAL"'
      Required = True
    end
    object qFacComTIPOFACTURA: TSmallintField
      FieldName = 'TIPOFACTURA'
      Origin = '"FACCOM"."TIPOFACTURA"'
    end
    object qFacComIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Origin = '"FACCOM"."IDPUNTOVENTA"'
    end
    object qFacComDIAHORA: TDateTimeField
      FieldName = 'DIAHORA'
      Origin = '"FACCOM"."DIAHORA"'
    end
    object qFacComPERIODO: TDateField
      FieldName = 'PERIODO'
      Origin = '"FACCOM"."PERIODO"'
      OnGetText = qFacComPERIODOGetText
      OnSetText = qFacComPERIODOSetText
    end
    object qFacComFECHAF: TDateField
      FieldName = 'FECHAF'
      Origin = '"FACCOM"."FECHAF"'
    end
    object qFacComFECHAV: TDateField
      FieldName = 'FECHAV'
      Origin = '"FACCOM"."FECHAV"'
    end
    object qFacComNROFACTURA: TMDOStringField
      FieldName = 'NROFACTURA'
      Origin = '"FACCOM"."NROFACTURA"'
      Size = 13
    end
    object qFacComCOMPREF: TMDOStringField
      FieldName = 'COMPREF'
      Origin = '"FACCOM"."COMPREF"'
      Size = 13
    end
    object qFacComIDCOMPREF: TIntegerField
      FieldName = 'IDCOMPREF'
      Origin = '"FACCOM"."IDCOMPREF"'
    end
    object qFacComCAIPROV: TMDOStringField
      FieldName = 'CAIPROV'
      Origin = '"FACCOM"."CAIPROV"'
      Size = 15
    end
    object qFacComPROVEEDOR: TIntegerField
      FieldName = 'PROVEEDOR'
      Origin = '"FACCOM"."PROVEEDOR"'
    end
    object qFacComTIPOIVA: TSmallintField
      FieldName = 'TIPOIVA'
      Origin = '"FACCOM"."TIPOIVA"'
    end
    object qFacComCANTARTIC: TSmallintField
      FieldName = 'CANTARTIC'
      Origin = '"FACCOM"."CANTARTIC"'
    end
    object qFacComPRCBONIF: TMDOBCDField
      FieldName = 'PRCBONIF'
      Origin = '"FACCOM"."PRCBONIF"'
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qFacComBONIFICACION: TMDOBCDField
      FieldName = 'BONIFICACION'
      Origin = '"FACCOM"."BONIFICACION"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComNETO: TMDOBCDField
      FieldName = 'NETO'
      Origin = '"FACCOM"."NETO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComEXENTO: TMDOBCDField
      FieldName = 'EXENTO'
      Origin = '"FACCOM"."EXENTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComNOCOMPUTABLES: TMDOBCDField
      FieldName = 'NOCOMPUTABLES'
      Origin = '"FACCOM"."NOCOMPUTABLES"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComALCPERCEPCION: TMDOBCDField
      FieldName = 'ALCPERCEPCION'
      Origin = '"FACCOM"."ALCPERCEPCION"'
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qFacComRETGAN: TMDOBCDField
      FieldName = 'RETGAN'
      Origin = '"FACCOM"."RETGAN"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComRETIBTO: TMDOBCDField
      FieldName = 'RETIBTO'
      Origin = '"FACCOM"."RETIBTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComRETLH: TMDOBCDField
      FieldName = 'RETLH'
      Origin = '"FACCOM"."RETLH"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComIVAALICUOTA1: TMDOBCDField
      FieldName = 'IVAALICUOTA1'
      Origin = '"FACCOM"."IVAALICUOTA1"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComIVAALICUOTA2: TMDOBCDField
      FieldName = 'IVAALICUOTA2'
      Origin = '"FACCOM"."IVAALICUOTA2"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComIVAOTALC: TMDOBCDField
      FieldName = 'IVAOTALC'
      Origin = '"FACCOM"."IVAOTALC"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComTOTAL: TMDOBCDField
      FieldName = 'TOTAL'
      Origin = '"FACCOM"."TOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComCONTADO: TMDOBCDField
      FieldName = 'CONTADO'
      Origin = '"FACCOM"."CONTADO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComTICKETS: TMDOBCDField
      FieldName = 'TICKETS'
      Origin = '"FACCOM"."TICKETS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComCTACTE: TMDOBCDField
      FieldName = 'CTACTE'
      Origin = '"FACCOM"."CTACTE"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComCHEQUEPROP: TMDOBCDField
      FieldName = 'CHEQUEPROP'
      Origin = '"FACCOM"."CHEQUEPROP"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComCHEQUETER: TMDOBCDField
      FieldName = 'CHEQUETER'
      Origin = '"FACCOM"."CHEQUETER"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComOTROSPAGOS: TMDOBCDField
      FieldName = 'OTROSPAGOS'
      Origin = '"FACCOM"."OTROSPAGOS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComFECHACAN: TDateField
      FieldName = 'FECHACAN'
      Origin = '"FACCOM"."FECHACAN"'
    end
    object qFacComFECHAIS: TDateField
      FieldName = 'FECHAIS'
      Origin = '"FACCOM"."FECHAIS"'
    end
    object qFacComUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"FACCOM"."USUARIO"'
    end
    object qFacComTIPOFACSTR: TMDOStringField
      FieldName = 'TIPOFACSTR'
    end
    object qFacComNOMBRE: TMDOStringField
      FieldName = 'NOMBRE'
      Origin = '"EMPLEADOS"."NOMBRE"'
      Size = 30
    end
    object qFacComDOCUMENTO: TMDOStringField
      FieldName = 'DOCUMENTO'
      Origin = '"PROVEEDORES"."DOCUMENTO"'
      Size = 13
    end
    object qFacComNOMUSUARIO: TMDOStringField
      FieldName = 'NOMUSUARIO'
      Size = 30
    end
    object qFacComNROCOMPOP: TMDOStringField
      FieldName = 'NROCOMPOP'
      Origin = '"ORDENES"."NROCOMPOP"'
      OnGetText = qFacComNROCOMPOPGetText
      Size = 13
    end
    object qFacComRETIVA: TMDOBCDField
      FieldName = 'RETIVA'
      Origin = '"FACCOM"."RETIVA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComSTATE: TSmallintField
      FieldName = 'STATE'
      Origin = '"FACCOM"."STATE"'
    end
    object qFacComTIPOOP: TSmallintField
      FieldName = 'TIPOOP'
      Origin = '"FACCOM"."TIPOOP"'
    end
    object qFacComFECPRELIQDESDE: TDateField
      FieldName = 'FECPRELIQDESDE'
      Origin = '"FACCOM"."FECPRELIQDESDE"'
      OnGetText = qFacComFECPRELIQDESDEGetText
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qFacComFECPRELIQHASTA: TDateField
      FieldName = 'FECPRELIQHASTA'
      Origin = '"FACCOM"."FECPRELIQHASTA"'
      OnGetText = qFacComFECPRELIQHASTAGetText
      DisplayFormat = 'dd/mm/yy'
      EditMask = 'dd/mm/yy'
    end
    object qFacComDETALLE: TMDOStringField
      FieldName = 'DETALLE'
      Origin = '"FACCOM"."DETALLE"'
      Size = 80
    end
    object qFacComIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = '"FACCOM"."IDEMPRESA"'
    end
    object qFacComIDENTTARMUT: TIntegerField
      FieldName = 'IDENTTARMUT'
      Origin = '"FACCOM"."IDENTTARMUT"'
      OnGetText = qFacComIDENTTARMUTGetText
    end
    object qFacComIDNUMEROLIQ: TIntegerField
      FieldName = 'IDNUMEROLIQ'
      Origin = '"FACCOM"."IDNUMEROLIQ"'
      OnGetText = qFacComIDNUMEROLIQGetText
    end
    object qFacComCOMISION: TMDOBCDField
      FieldName = 'COMISION'
      Origin = '"FACCOM"."COMISION"'
      OnGetText = qFacComCOMISIONGetText
      currency = True
      Precision = 18
      Size = 4
    end
    object qFacComIDPERIODO: TIntegerField
      FieldName = 'IDPERIODO'
      Origin = '"FACCOM"."IDPERIODO"'
    end
  end
  object qItemsFC: TMDODataSet
    Database = dmGestion.dbGestion
    OnCalcFields = qItemsFCCalcFields
    Transaction = dmSaveFile.trVerComp
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsFacturas
    DeleteSQL.Strings = (
      'DELETE FROM ItemsFC'
      'WHERE'
      '  IDFACTURA = :OLD_IDFACTURA AND'
      '  IDSUCURSAL = :OLD_IDSUCURSAL AND'
      '  IDPUNTOVENTA = :OLD_IDPUNTOVENTA AND'
      '  IDITEM = :OLD_IDITEM')
    InsertSQL.Strings = (
      'INSERT INTO ItemsFC'
      
        '  (IDFACTURA, IDSUCURSAL, IDPUNTOVENTA, IDITEM, IDARTICULO, TALL' +
        'E, FECHAF, '
      
        '   CANTIDAD, PRECIONETO, PRECIOFINAL, PRECIOTOTAL, EXENTO, IMPIN' +
        'T, MTOIVA, '
      
        '   IDALCIVA, PRCDCTO, ALICUOTAIVA, DESCUENTO, SECTOR, STATE, IDR' +
        'EMITO, '
      '   IDSUCREM, IDITMREM, DCTOSTK, IDPTOREM, ENREMITO)'
      'VALUES'
      
        '  (:IDFACTURA, :IDSUCURSAL, :IDPUNTOVENTA, :IDITEM, :IDARTICULO,' +
        ' :TALLE, '
      
        '   :FECHAF, :CANTIDAD, :PRECIONETO, :PRECIOFINAL, :PRECIOTOTAL, ' +
        ':EXENTO, '
      
        '   :IMPINT, :MTOIVA, :IDALCIVA, :PRCDCTO, :ALICUOTAIVA, :DESCUEN' +
        'TO, :SECTOR, '
      
        '   :STATE, :IDREMITO, :IDSUCREM, :IDITMREM, :DCTOSTK, :IDPTOREM,' +
        ' :ENREMITO)')
    LoadDefaults = False
    ModifySQL.Strings = (
      'UPDATE ItemsFC'
      'SET'
      '  IDFACTURA = :IDFACTURA,'
      '  IDSUCURSAL = :IDSUCURSAL,'
      '  IDPUNTOVENTA = :IDPUNTOVENTA,'
      '  IDITEM = :IDITEM,'
      '  IDARTICULO = :IDARTICULO,'
      '  TALLE = :TALLE,'
      '  FECHAF = :FECHAF,'
      '  CANTIDAD = :CANTIDAD,'
      '  PRECIONETO = :PRECIONETO,'
      '  PRECIOFINAL = :PRECIOFINAL,'
      '  PRECIOTOTAL = :PRECIOTOTAL,'
      '  EXENTO = :EXENTO,'
      '  IMPINT = :IMPINT,'
      '  MTOIVA = :MTOIVA,'
      '  IDALCIVA = :IDALCIVA,'
      '  PRCDCTO = :PRCDCTO,'
      '  ALICUOTAIVA = :ALICUOTAIVA,'
      '  DESCUENTO = :DESCUENTO,'
      '  SECTOR = :SECTOR,'
      '  STATE = :STATE,'
      '  IDREMITO = :IDREMITO,'
      '  IDSUCREM = :IDSUCREM,'
      '  IDITMREM = :IDITMREM,'
      '  DCTOSTK = :DCTOSTK,'
      '  IDPTOREM = :IDPTOREM,'
      '  ENREMITO = :ENREMITO'
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
      '  FECHAF,'
      '  CANTIDAD,'
      '  PRECIONETO,'
      '  PRECIOFINAL,'
      '  PRECIOTOTAL,'
      '  EXENTO,'
      '  IMPINT,'
      '  MTOIVA,'
      '  IDALCIVA,'
      '  PRCDCTO,'
      '  ALICUOTAIVA,'
      '  DESCUENTO,'
      '  SECTOR,'
      '  STATE,'
      '  IDREMITO,'
      '  IDSUCREM,'
      '  IDITMREM,'
      '  DCTOSTK,'
      '  IDPTOREM,'
      '  ENREMITO'
      'FROM ItemsFC '
      'WHERE'
      '  IDFACTURA = :IDFACTURA AND'
      '  IDSUCURSAL = :IDSUCURSAL AND'
      '  IDPUNTOVENTA = :IDPUNTOVENTA AND'
      '  IDITEM = :IDITEM')
    SelectSQL.Strings = (
      'Select IDFACTURA, IDSUCURSAL, IDPUNTOVENTA, IDITEM, '
      '           IDARTICULO, TALLE, PRCDCTO, DESCUENTO, FECHAF, '
      '           CANTIDAD, PRECIONETO, PRECIOFINAL, PRECIOTOTAL,'
      '           EXENTO, IMPINT, MTOIVA, IDALCIVA, ALICUOTAIVA, '
      '           SECTOR, STATE, IdRemito, IdSucRem, IdPtoRem,'
      '           IdItmRem, DctoStk, EnRemito, Cant_Rem'
      'From ItemsFC '
      'Where State = 0 And'
      '            IdFactura = :IdFactura And  '
      '            IdSucursal = :IdSucursal  And '
      '            IdPuntoVenta = :IdPuntoVenta '
      '')
    Left = 359
    Top = 174
    object qItemsFCIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = '"ITEMSFC"."IDFACTURA"'
      Required = True
    end
    object qItemsFCIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"ITEMSFC"."IDSUCURSAL"'
      Required = True
    end
    object qItemsFCIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Origin = '"ITEMSFC"."IDPUNTOVENTA"'
      Required = True
    end
    object qItemsFCIDITEM: TSmallintField
      FieldName = 'IDITEM'
      Origin = '"ITEMSFC"."IDITEM"'
      Required = True
    end
    object qItemsFCIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
      Origin = '"ITEMSFC"."IDARTICULO"'
    end
    object qItemsFCTALLE: TIntegerField
      FieldName = 'TALLE'
      Origin = '"ITEMSFC"."TALLE"'
      OnGetText = qItemsFCTALLEGetText
      OnSetText = qItemsFCTALLESetText
    end
    object qItemsFCFECHAF: TDateField
      FieldName = 'FECHAF'
      Origin = '"ITEMSFC"."FECHAF"'
    end
    object qItemsFCCANTIDAD: TMDOBCDField
      FieldName = 'CANTIDAD'
      Origin = '"ITEMSFC"."CANTIDAD"'
      DisplayFormat = '0'
      EditFormat = '0'
      Precision = 18
      Size = 4
    end
    object qItemsFCPRCDCTO: TMDOBCDField
      FieldName = 'PRCDCTO'
      Origin = '"ITEMSFC"."PRCDCTO"'
      Precision = 18
      Size = 4
    end
    object qItemsFCDESCUENTO: TMDOBCDField
      FieldName = 'DESCUENTO'
      Origin = '"ITEMSFC"."DESCUENTO"'
      Precision = 18
      Size = 4
    end
    object qItemsFCPRECIONETO: TMDOBCDField
      FieldName = 'PRECIONETO'
      Origin = '"ITEMSFC"."PRECIONETO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsFCPRECIOFINAL: TMDOBCDField
      FieldName = 'PRECIOFINAL'
      Origin = '"ITEMSFC"."PRECIOFINAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsFCPRECIOTOTAL: TMDOBCDField
      FieldName = 'PRECIOTOTAL'
      Origin = '"ITEMSFC"."PRECIOTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsFCEXENTO: TMDOBCDField
      FieldName = 'EXENTO'
      Origin = '"ITEMSFC"."EXENTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsFCIMPINT: TMDOBCDField
      FieldName = 'IMPINT'
      Origin = '"ITEMSFC"."IMPINT"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsFCMTOIVA: TMDOBCDField
      FieldName = 'MTOIVA'
      Origin = '"ITEMSFC"."MTOIVA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qItemsFCIDALCIVA: TIntegerField
      FieldName = 'IDALCIVA'
      Origin = '"ITEMSFC"."IDALCIVA"'
    end
    object qItemsFCALICUOTAIVA: TMDOBCDField
      FieldName = 'ALICUOTAIVA'
      Origin = '"ITEMSFC"."ALICUOTAIVA"'
      DisplayFormat = '0.00%'
      EditFormat = '0.00'
      Precision = 18
      Size = 4
    end
    object qItemsFCMARCA: TMDOStringField
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'MARCA'
      Origin = '"ARTICULOS"."MARCA"'
      Size = 40
      Calculated = True
    end
    object qItemsFCDETALLE: TMDOStringField
      FieldKind = fkCalculated
      FieldName = 'DETALLE'
      Origin = '"ARTICULOS"."DETALLE"'
      Size = 60
      Calculated = True
    end
    object qItemsFCCOLOR: TMDOStringField
      FieldKind = fkCalculated
      FieldName = 'COLOR'
      Origin = '"COLORES"."COLOR"'
      Size = 30
      Calculated = True
    end
    object qItemsFCSTATE: TSmallintField
      FieldName = 'STATE'
      Origin = '"ITEMSFC"."STATE"'
    end
    object qItemsFCSECTOR: TIntegerField
      FieldName = 'SECTOR'
      Origin = '"ITEMSFC"."SECTOR"'
    end
    object qItemsFCIDREMITO: TIntegerField
      FieldName = 'IDREMITO'
      Origin = '"ITEMSFC"."IDREMITO"'
    end
    object qItemsFCIDPTOREM: TIntegerField
      FieldName = 'IDPTOREM'
      Origin = '"ITEMSFC"."IDPTOREM"'
    end
    object qItemsFCIDSUCREM: TIntegerField
      FieldName = 'IDSUCREM'
      Origin = '"ITEMSFC"."IDSUCREM"'
    end
    object qItemsFCIDITMREM: TSmallintField
      FieldName = 'IDITMREM'
      Origin = '"ITEMSFC"."IDITMREM"'
    end
    object qItemsFCENREMITO: TSmallintField
      FieldName = 'ENREMITO'
      Origin = '"ITEMSFC"."ENREMITO"'
      OnGetText = qItemsFCENREMITOGetText
    end
    object qItemsFCDCTOSTK: TSmallintField
      FieldName = 'DCTOSTK'
      Origin = '"ITEMSFC"."DCTOSTK"'
    end
    object qItemsFCDETREMFAC: TStringField
      FieldKind = fkCalculated
      FieldName = 'DETREMFAC'
      Size = 13
      Calculated = True
    end
    object qItemsFCCANT_REM: TMDOBCDField
      FieldName = 'CANT_REM'
      DisplayFormat = '0'
      EditFormat = '0'
      Precision = 18
      Size = 4
    end
  end
  object pmImprimir: TPopupMenu
    Left = 268
    Top = 174
    object ComprobanteFC: TMenuItem
      Caption = '&Comprobante'
      OnClick = ComprobanteFCClick
    end
    object EtiquetasFC: TMenuItem
      Caption = '&Etiquetas'
      OnClick = EtiquetasFCClick
    end
  end
  object qComprobantes: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmSaveFile.trVerComp
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select F.IdFactura, F.IdSucursal, F.IdPuntoVenta, '
      '          F.FechaF,  F.NroFactura, F.Total, F.Proveedor, '
      '          T.DescCorta, E.Nombre, K.NombreSuc, D.DetEmp'
      'From FacCom F'
      'Join TiposComp T'
      '  on T.IdComprobante = F.TipoFactura'
      'Left outer Join Proveedores E'
      '  on E.IdProveedor = F.Proveedor'
      'Join Sucursales K'
      '  on K.IdSucursal = F.IdSucursal'
      'Join DatosSis D'
      '  on D.IdEmpresa = F.IdEmpresa'
      'Where F.IdSucursal > 0'
      'Order By F.FechaF desc'
      '')
    Left = 451
    Top = 174
    object qComprobantesIDFACTURA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'NF'
      FieldName = 'IDFACTURA'
      Origin = '"FACCOM"."IDFACTURA"'
      Required = True
    end
    object qComprobantesIDSUCURSAL: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'NS'
      FieldName = 'IDSUCURSAL'
      Origin = '"FACCOM"."IDSUCURSAL"'
      Required = True
    end
    object qComprobantesIDPUNTOVENTA: TIntegerField
      FieldName = 'IDPUNTOVENTA'
      Origin = '"FACCOM"."IDPUNTOVENTA"'
      Required = True
    end
    object qComprobantesFECHAF: TDateField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAF'
      Origin = '"FACCOM"."FECHAF"'
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
      Origin = '"FACCOM"."NROFACTURA"'
      Size = 13
    end
    object qComprobantesNOMBRE: TMDOStringField
      DisplayLabel = 'Entidad'
      FieldName = 'NOMBRE'
      Origin = '"PROVEEDORES"."NOMBRE"'
      Size = 30
    end
    object qComprobantesTOTAL: TMDOBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"FACCOM"."TOTAL"'
      DisplayFormat = '0.00;(0.00)'
      EditFormat = '0.00;(0.00)'
      Precision = 18
      Size = 4
    end
    object qComprobantesNOMBRESUC: TMDOStringField
      FieldName = 'NOMBRESUC'
      Origin = '"SUCURSALES"."NOMBRESUC"'
    end
    object qComprobantesPROVEEDOR: TIntegerField
      FieldName = 'PROVEEDOR'
    end
    object qComprobantesDETEMP: TMDOStringField
      FieldName = 'DETEMP'
      Size = 5
    end
  end
  object dsFiltroFac: TDataSource
    DataSet = qComprobantes
    Left = 482
    Top = 174
  end
end
