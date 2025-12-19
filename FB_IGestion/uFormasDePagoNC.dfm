object frmFormasDePagoNC: TfrmFormasDePagoNC
  Left = 318
  Top = 235
  Caption = 'Detalle de Pagos Comprobante Original'
  ClientHeight = 443
  ClientWidth = 723
  Color = 12184831
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  Icon.Data = {
    0000010001002020040000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    00000000FFFFFFFF000000000000000000000FFFF999999FFFF0000000000000
    000FFF999999999999FFF0000000000000FF9999999999999999FF0000000000
    0FF99999FFFFFFFF99999FF000000000FF9999FFFFFFFFFFFF9999FF0000000F
    F999FFFFFFFFFFFFFFFF999FF00000FF999FFF00FFFFFFF9999FF999FF0000F9
    99FFF0000FFFFFF9999FFF999F000FF999FFF0000FFFFFF9999FFF999FF00F99
    9FFF000000FFFFF9999FFFF999F00F999FF00000000FFFF9999FFFF999F0FF99
    FFF00000000FFFF9999FFFFF99FFF999FF0000000000FFF9999FFFFF999FF999
    FF00F0000F00FFF9999FFFFF999FF999FFFFF0000FFFFFF9999FFFFF999FF999
    FFFFF0000FFFFFF9999FFFFF999FF999FFFFF0000FFF99F9999F99FF999FF999
    FFFFF0000FFF9999999999FF999FFF99FFFFF0000FFFF99999999FFF99FF0F99
    9FFFF0000FFFF99999999FF999F00F999FFFF0000FFFFF999999FFF999F00FF9
    99FFF0000FFFFFF9999FFF999FF000F999FFF0000FFFFFF9999FFF999F0000FF
    999FF0000FFFFFFF99FF9999FF00000FF999FFFFFFFFFFFFFFFF999FF0000000
    FF9999FFFFFFFFFFFF9999FF000000000FF99999FFFFFFFF99999FF000000000
    00FF9999999999999999FF0000000000000FFF999999999999FFF00000000000
    00000FFFF999999FFFF000000000000000000000FFFFFFFF000000000000FFF0
    0FFFFF8001FFFE00007FFC00003FF800001FF000000FE0000007C0000003C000
    0003800000018000000180000001000000000000000000000000000000000000
    0000000000000000000000000000800000018000000180000001C0000003C000
    0003E0000007F000000FF800001FFC00003FFE00007FFF8001FFFFF00FFF}
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gbInstructivoNC: TRzGroupBox
    Left = 510
    Top = 0
    Width = 213
    Height = 443
    Align = alRight
    Alignment = taRightJustify
    Caption = '  Instructivo  '
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GradientColorStyle = gcsCustom
    GradientColorStop = 8454016
    GroupStyle = gsBanner
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 471
    object gbInstructivo1: TRzGroupBox
      Left = 0
      Top = 22
      Width = 213
      Height = 172
      Align = alTop
      Caption = '1-Ingresar Saldo a Favor (SaF)'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2960685
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GradientColorStyle = gcsCustom
      GradientColorStart = 16744448
      GradientColorStop = clWhite
      GroupStyle = gsBanner
      ParentFont = False
      TabOrder = 0
      object redOpcNC1: TRichEdit
        Left = 0
        Top = 22
        Width = 213
        Height = 150
        Cursor = crNoDrop
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11867
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'Utilice esta opci'#243'n, cuando ya existe una '
          'forma de pago en curso. Como tarjetas o '
          'mutuales con varios meses ya cobrados, '
          'o cheques recibidos que no se puedan '
          'anular o cancelar. Ya sea por que fueron '
          'realizadas v'#237'a posnet '#243' no esta al alcance '
          'del operador, poder anular la operaci'#243'n. '
          'El Saldo a Favor que se generara, se '
          'utilizara para pagar u cancelar otras '
          'operaciones del Cliente, el Stock es '
          'devuelto al Sistema.- ')
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object gbInstructivo2: TRzGroupBox
      Left = 0
      Top = 194
      Width = 213
      Height = 110
      Align = alClient
      Caption = '2-Anular Operaci'#243'n '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2960685
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GradientColorStyle = gcsCustom
      GradientColorStart = 16744448
      GradientColorStop = clWhite
      GroupStyle = gsBanner
      ParentFont = False
      TabOrder = 1
      object redOpcNC2: TRichEdit
        Left = 0
        Top = 22
        Width = 213
        Height = 88
        Cursor = crNoDrop
        Align = alClient
        BevelInner = bvNone
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11867
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'Es para cancelar una Venta u '
          'comprobante mal realizado, ya sea por '
          'error del sistema, del operador, o papel '
          'arrugado en el Contr. Fiscal. '
          'Esta opci'#243'n devuelve el stock al sistema '
          'y cancela los medios de pago ingresados.')
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object gbInstructivo3: TRzGroupBox
      Left = 0
      Top = 304
      Width = 213
      Height = 139
      Align = alBottom
      Caption = '3-Cambios de Producto '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2960685
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GradientColorStyle = gcsCustom
      GradientColorStart = 16744448
      GradientColorStop = clWhite
      GroupStyle = gsBanner
      ParentFont = False
      TabOrder = 2
      object redOpcNC3: TRichEdit
        Left = 0
        Top = 22
        Width = 213
        Height = 117
        Cursor = crNoDrop
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11867
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'Esta opci'#243'n es solo disponible para cambios '
          'de productos sin modificar las operaciones '
          'de pagos del comprobante original. Utilice '
          'esta opci'#243'n para reemplazar productos por '
          'orden del service o roturas/desperfectos  '
          'de f'#225'brica. Esta opci'#243'n restituye el stock y '
          'genera una NCP para poder cancelar la '
          'nueva entrega de mercader'#237'a al cliente.')
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object pnlDatosNC: TRzPanel
    Left = 0
    Top = 0
    Width = 510
    Height = 443
    Align = alClient
    BorderOuter = fsFlat
    ParentColor = True
    TabOrder = 0
    TabStop = True
    ExplicitWidth = 471
    object gbDatosOper: TRzGroupBox
      Left = 1
      Top = 1
      Width = 508
      Height = 64
      Align = alTop
      Alignment = taCenter
      Caption = '  Datos Operaci'#243'n Original  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GradientColorStyle = gcsCustom
      GradientColorStop = 8454016
      GroupStyle = gsBanner
      ParentColor = True
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 469
      object lblDatosFac: TLabel
        Left = 8
        Top = 27
        Width = 491
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'lblDatosFac'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
    end
    object gbPagosOrginales: TRzGroupBox
      Left = 1
      Top = 65
      Width = 508
      Height = 226
      Align = alClient
      Alignment = taCenter
      Caption = '  Pagos Orginales  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GradientColorStyle = gcsCustom
      GradientColorStop = 8454016
      GroupStyle = gsBanner
      ParentColor = True
      ParentFont = False
      TabOrder = 1
      ExplicitWidth = 469
      object lblTotal: TLabel
        Left = 381
        Top = 186
        Width = 98
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'lblTotal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblContado: TLabel
        Left = 5
        Top = 24
        Width = 49
        Height = 14
        Caption = 'Efectivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblContadoNC: TLabel
        Left = 67
        Top = 41
        Width = 83
        Height = 14
        Alignment = taRightJustify
        Caption = 'lblContadoNC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblTotNC: TLabel
        Left = 275
        Top = 187
        Width = 100
        Height = 14
        Caption = 'Total Operaci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblPgTarjetas: TLabel
        Left = 5
        Top = 89
        Width = 108
        Height = 14
        Caption = 'Tarjetas/Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblMtoTjtaNC: TLabel
        Left = 71
        Top = 108
        Width = 79
        Height = 14
        Alignment = taRightJustify
        Caption = 'lblMtoTjtaNC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblTickets: TLabel
        Left = 5
        Top = 56
        Width = 42
        Height = 14
        Caption = 'Tickets'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblMtoTickets: TLabel
        Left = 69
        Top = 73
        Width = 81
        Height = 14
        Alignment = taRightJustify
        Caption = 'lblMtoTickets'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPgChq: TLabel
        Left = 5
        Top = 154
        Width = 52
        Height = 14
        Caption = 'Cheques'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblMtoChqNC: TLabel
        Left = 71
        Top = 171
        Width = 79
        Height = 14
        Alignment = taRightJustify
        Caption = 'lblMtoChqNC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblTarjetas: TLabel
        Left = 170
        Top = 24
        Width = 164
        Height = 14
        Caption = 'Detalle Tarjetas - Mutuales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblSaF: TLabel
        Left = 275
        Top = 206
        Width = 86
        Height = 14
        Caption = 'Saldo a Favor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblTotalSaf: TLabel
        Left = 381
        Top = 203
        Width = 98
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'lblTotalSaf'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 24064
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSenas: TLabel
        Left = 5
        Top = 187
        Width = 64
        Height = 14
        Caption = 'Se'#241'as/SaF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblMtoSenas: TLabel
        Left = 75
        Top = 205
        Width = 75
        Height = 14
        Alignment = taRightJustify
        Caption = 'lblMtoSenas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMtoCredNC: TLabel
        Left = 66
        Top = 130
        Width = 83
        Height = 14
        Alignment = taRightJustify
        Caption = 'lblMtoCredNC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object gTarjetas: TwwDBGrid
        Left = 170
        Top = 50
        Width = 333
        Height = 118
        ControlType.Strings = (
          'Selected;CheckBox;True;False')
        Selected.Strings = (
          'Tarjeta'#9'10'#9'Tarjeta'#9'F'
          'Cupon'#9'5'#9'Cupon'#9'F'
          'NroCuota'#9'2'#9'C'#186#9'F'
          'CUOTAPAG'#9'2'#9'CP'#9'F'
          'IMPCUOTA'#9'9'#9'Cuota'#9'F'
          'TotalOp'#9'10'#9'Total'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = 12184831
        FixedCols = 0
        ShowHorzScrollBar = True
        EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
        BorderStyle = bsNone
        DataSource = dsMovTar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyOptions = [dgEnterToTab]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
        IndicatorIconColor = clPurple
      end
    end
    object gbPagoNC: TRzGroupBox
      Left = 1
      Top = 291
      Width = 508
      Height = 151
      Align = alBottom
      Alignment = taCenter
      Caption = '  Opciones de generaci'#243'n de la Nota de Cr'#233'dito '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GradientColorStyle = gcsCustom
      GradientColorStop = 8454016
      GroupStyle = gsBanner
      ParentColor = True
      ParentFont = False
      TabOrder = 2
      TabStop = True
      ExplicitLeft = -4
      object lblMotNc: TLabel
        Left = 268
        Top = 39
        Width = 97
        Height = 28
        Caption = 'Motivo de la Nota de Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object btnAceptar: TRzBitBtn
        Left = 268
        Top = 104
        Width = 85
        Height = 30
        ModalResult = 1
        Caption = '&Aceptar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HotTrack = True
        ParentColor = True
        ParentFont = False
        TabOrder = 2
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
      end
      object btnCancelar: TRzBitBtn
        Left = 379
        Top = 104
        Width = 85
        Height = 30
        ModalResult = 2
        Caption = '&Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HotTrack = True
        ParentColor = True
        ParentFont = False
        TabOrder = 3
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
      object rgOpcionesOP: TRzRadioGroup
        Left = 0
        Top = 22
        Width = 249
        Height = 129
        Hint = 'opciones de la nota de cr'#233'dito'
        Align = alLeft
        Alignment = taCenter
        Caption = 'Opciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13762560
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStop = 16753994
        GroupStyle = gsBanner
        ItemHotTrack = True
        ItemFont.Charset = DEFAULT_CHARSET
        ItemFont.Color = clMaroon
        ItemFont.Height = -12
        ItemFont.Name = 'Tahoma'
        ItemFont.Style = [fsBold]
        ItemHeight = 28
        Items.Strings = (
          '1 - Ingresar Saldo a Favor'
          '2 - Anular Operaci'#243'n'
          '3 - Cambio de Producto')
        ParentColor = True
        ParentFont = False
        StartXPos = 20
        StartYPos = 7
        TabOnEnter = True
        TabOrder = 0
        TabStop = True
        TextStyle = tsRecessed
        Transparent = True
        VerticalSpacing = 6
        VisualStyle = vsGradient
        OnClick = rgOpcionesOPClick
      end
      object cbMotivoNC: TRzComboBox
        Left = 268
        Top = 74
        Width = 195
        Height = 21
        Hint = 'Motivo o Raz'#243'n por el'
        Color = 12184831
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
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
        TabOrder = 1
      end
    end
  end
  object qMovTar: TMDOQuery
    Database = dmGestion.dbGestion
    OnCalcFields = qMovTarCalcFields
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select T.Tarjeta, M.Cupon, M.Lote, M.NroCuota, M.Autorizacion,'
      
        '           M.FechaOp, M.CodTar, M.IdFactura, M.IdTarjeta, M.IdMo' +
        'v, '
      
        '           M.TotalOP, M.IdSucursal, M.IdCliente, M.ImpCuota, M.E' +
        'stado, '
      '           M.State, M.CuotaPag, T.TipoEnt'
      'From MovTar M'
      'Join Tarjetas T'
      '   on T.IdTarjeta = M.IdTarjeta'
      'Where (M.State = 0) And '
      '            (M.Estado <= 2) And'
      '            (M.IdFactura =:IdFac) And '
      '            (M.IdSucursal =:IdSuc) And'
      '            (M.IdCliente =:IdCli)')
    Left = 10
    Top = 25
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
        DataType = ftUnknown
        Name = 'IdCli'
        ParamType = ptUnknown
      end>
    object qMovTarTARJETA: TMDOStringField
      FieldName = 'TARJETA'
      Required = True
      Size = 30
    end
    object qMovTarCupon: TStringField
      DisplayWidth = 20
      FieldName = 'Cupon'
      Origin = '"MOVTAR"."CUPON"'
    end
    object qMovTarLote: TStringField
      DisplayWidth = 20
      FieldName = 'Lote'
      Origin = '"MOVTAR"."LOTE"'
    end
    object qMovTarNroCuota: TSmallintField
      DisplayWidth = 10
      FieldName = 'NroCuota'
      Origin = '"MOVTAR"."NROCUOTA"'
    end
    object qMovTarAutorizacion: TStringField
      DisplayWidth = 10
      FieldName = 'Autorizacion'
      Origin = '"MOVTAR"."AUTORIZACION"'
      Size = 10
    end
    object qMovTarFechaOp: TDateField
      DisplayWidth = 10
      FieldName = 'FechaOp'
      Origin = '"MOVTAR"."FECHAOP"'
    end
    object qMovTarCodTar: TStringField
      FieldName = 'CodTar'
      Origin = '"MOVTAR"."CODTAR"'
      Visible = False
    end
    object qMovTarIdFactura: TIntegerField
      FieldName = 'IdFactura'
      Origin = '"MOVTAR"."IDFACTURA"'
      Visible = False
    end
    object qMovTarIdTarjeta: TIntegerField
      FieldName = 'IdTarjeta'
      Origin = '"MOVTAR"."IDTARJETA"'
      Visible = False
    end
    object qMovTarIdMov: TIntegerField
      FieldName = 'IdMov'
      Origin = '"MOVTAR"."IDMOV"'
      Visible = False
    end
    object qMovTarTOTALOP: TMDOBCDField
      FieldName = 'TOTALOP'
      Origin = '"MOVTAR"."TOTALOP"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qMovTarIDSUCURSAL: TIntegerField
      FieldName = 'IDSUCURSAL'
      Origin = '"MOVTAR"."IDSUCURSAL"'
    end
    object qMovTarIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = '"MOVTAR"."IDCLIENTE"'
    end
    object qMovTarIMPCUOTA: TMDOBCDField
      FieldName = 'IMPCUOTA'
      Origin = '"MOVTAR"."IMPCUOTA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qMovTarESTADO: TSmallintField
      FieldName = 'ESTADO'
      Origin = '"MOVTAR"."ESTADO"'
    end
    object qMovTarSTATE: TSmallintField
      FieldName = 'STATE'
      Origin = '"MOVTAR"."STATE"'
    end
    object qMovTarTIPOENT: TSmallintField
      FieldName = 'TIPOENT'
      Origin = '"TARJETAS"."TIPOENT"'
    end
    object qMovTarCUOTAPAG: TIntegerField
      FieldName = 'CUOTAPAG'
      Origin = '"MOVTAR"."CUOTAPAG"'
    end
    object qMovTarSaldo: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      Calculated = True
    end
  end
  object dsMovTar: TDataSource
    DataSet = qMovTar
    Left = 48
    Top = 26
  end
end
