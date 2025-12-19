object frmPagoTarjeta: TfrmPagoTarjeta
  Left = 318
  Top = 356
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pago con Tarjeta o Mutual'
  ClientHeight = 335
  ClientWidth = 492
  Color = 14155775
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
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
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlBtnCard: TRzPanel
    Left = 0
    Top = 314
    Width = 492
    Height = 21
    Align = alBottom
    Alignment = taLeftJustify
    BorderOuter = fsFlatRounded
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GradientColorStyle = gcsCustom
    GradientColorStop = 51712
    GridColor = 14286796
    GridStyle = gsSolidLines
    ParentColor = True
    ParentFont = False
    ShowGrid = True
    TabOrder = 0
    VisualStyle = vsGradient
  end
  object gbTarjetas: TRzGroupBox
    Left = 0
    Top = 0
    Width = 492
    Height = 314
    Align = alClient
    Alignment = taCenter
    Caption = 'Ingreso pagos con &Tarjeta de Cr'#233'dito y/o Mutual'
    Color = 15724527
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GradientColorStyle = gcsCustom
    GradientColorStart = 2994176
    GradientColorStop = clBlue
    GroupStyle = gsBanner
    ParentFont = False
    TabOrder = 1
    VisualStyle = vsGradient
    object lblNumTarOrd: TLabel
      Left = 221
      Top = 98
      Width = 137
      Height = 28
      AutoSize = False
      Caption = '&N'#186' de Tarjeta de Pagos  '#13#10'u Orden de Compras'
      FocusControl = edtNumero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object lblImporte: TLabel
      Left = 221
      Top = 264
      Width = 72
      Height = 19
      Caption = '&Importe:'
      FocusControl = edtPago
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblCantCtas: TLabel
      Left = 339
      Top = 211
      Width = 62
      Height = 25
      AutoSize = False
      Caption = 'Ca&ntidad '#13#10'de Cuotas:'
      FocusControl = edtCuotas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object lblNumCtas: TLabel
      Left = 407
      Top = 212
      Width = 49
      Height = 26
      AutoSize = False
      Caption = '&Valor cuota:'
      FocusControl = edtImpCuota
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object lblCodAut: TLabel
      Left = 362
      Top = 98
      Width = 76
      Height = 26
      AutoSize = False
      Caption = 'C'#243'&digo de Autorizaci'#243'n'
      FocusControl = edtAutorizacion
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object lblLote: TLabel
      Left = 443
      Top = 98
      Width = 46
      Height = 26
      AutoSize = False
      Caption = 'N'#250'mero de &Lote'
      FocusControl = edtLoteTarjeta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object lblCupon: TLabel
      Left = 303
      Top = 155
      Width = 84
      Height = 25
      AutoSize = False
      Caption = 'N'#250'&mero '#13#10'de Cupon'
      FocusControl = edtNroCupon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object lblVenc: TLabel
      Left = 419
      Top = 155
      Width = 70
      Height = 26
      AutoSize = False
      Caption = '&Vencimiento'#13#10'Tarjeta:'
      FocusControl = edtVenc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object lblVto1Cta: TLabel
      Left = 221
      Top = 212
      Width = 87
      Height = 26
      AutoSize = False
      Caption = '&Vencimiento'#13#10'1'#170' Cuota:'
      FocusControl = edtVto1Cta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object lblTarMut: TLabel
      Left = 9
      Top = 26
      Width = 58
      Height = 26
      Caption = '&Entidad'#13'Financiera'
      FocusControl = lbTarjetas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object lblNroComp: TLabel
      Left = 222
      Top = 26
      Width = 254
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'Comprobante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
    end
    object lblNCuenta: TLabel
      Left = 221
      Top = 56
      Width = 56
      Height = 13
      Caption = 'C&uenta N'#186
      FocusControl = edtNCuenta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblDetCuenta: TLabel
      Left = 278
      Top = 77
      Width = 196
      Height = 15
      AutoSize = False
      Caption = 'Titular Cuenta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblTerminal: TLabel
      Left = 221
      Top = 155
      Width = 77
      Height = 27
      AutoSize = False
      Caption = 'N'#250'&mero de '#13'Terminal(ID)'
      FocusControl = edtTerminal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object edtNumero: TwwDBEdit
      Left = 221
      Top = 128
      Width = 133
      Height = 20
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10063
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      ParentColor = True
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnKeyDown = edtNumeroKeyDown
    end
    object edtCuotas: TwwDBEdit
      Left = 338
      Top = 240
      Width = 38
      Height = 20
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10063
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      ParentColor = True
      ParentFont = False
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = edtCuotasExit
      OnKeyDown = edtNumeroKeyDown
    end
    object edtAutorizacion: TwwDBEdit
      Left = 362
      Top = 128
      Width = 73
      Height = 20
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10063
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      ParentColor = True
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnKeyDown = edtNumeroKeyDown
    end
    object edtLoteTarjeta: TwwDBEdit
      Left = 443
      Top = 128
      Width = 46
      Height = 20
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10063
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      ParentColor = True
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnKeyDown = edtNumeroKeyDown
    end
    object btnAceptarTarjeta: TRzBitBtn
      Left = 339
      Top = 271
      Width = 73
      Height = 38
      ModalResult = 1
      Caption = '<Enter> &Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = 3368448
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentColor = True
      ParentFont = False
      TabOrder = 12
      TextStyle = tsRecessed
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
      Margin = 0
      NumGlyphs = 2
      Spacing = 0
    end
    object btnCancelarTarjeta: TRzBitBtn
      Left = 416
      Top = 271
      Width = 73
      Height = 38
      ModalResult = 2
      Caption = '<Esc> &Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentColor = True
      ParentFont = False
      TabOrder = 13
      TextStyle = tsRecessed
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
      Margin = 0
      NumGlyphs = 2
      Spacing = 0
    end
    object edtNroCupon: TwwDBEdit
      Left = 302
      Top = 184
      Width = 111
      Height = 20
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10063
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      ParentColor = True
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnKeyDown = edtNumeroKeyDown
    end
    object edtImpCuota: TwwDBEdit
      Left = 407
      Top = 240
      Width = 82
      Height = 20
      TabStop = False
      AutoSelect = False
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10063
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = edtImpCuotaEnter
      OnExit = edtImpCuotaExit
      OnKeyDown = edtNumeroKeyDown
      OnKeyPress = edtImpCuotaKeyPress
    end
    object edtPago: TwwDBEdit
      Left = 221
      Top = 285
      Width = 106
      Height = 24
      AutoSelect = False
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      ParentColor = True
      ParentFont = False
      TabOrder = 11
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = edtPagoEnter
      OnExit = edtPagoExit
      OnKeyDown = edtNumeroKeyDown
      OnKeyPress = edtImpCuotaKeyPress
    end
    object edtVenc: TwwDBDateTimePicker
      Left = 421
      Top = 184
      Width = 68
      Height = 20
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ButtonEffects.Transparent = True
      ButtonEffects.Flat = True
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10063
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ShowButton = False
      TabOrder = 7
      DisplayFormat = 'mm/yy'
      OnExit = edtVencExit
      OnKeyDown = edtNumeroKeyDown
    end
    object edtVto1Cta: TwwDBDateTimePicker
      Left = 221
      Top = 240
      Width = 108
      Height = 20
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ButtonEffects.Transparent = True
      ButtonEffects.Flat = True
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10063
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ShowButton = False
      TabOrder = 8
      DisplayFormat = 'dd/mm/yy'
      OnKeyDown = edtNumeroKeyDown
    end
    object lbTarjetas: TRzListBox
      Left = 7
      Top = 57
      Width = 209
      Height = 257
      Color = 15724527
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = clWhite
      FrameHotTrack = True
      FrameVisible = True
      ItemHeight = 18
      ParentColor = True
      ParentFont = False
      TabOnEnter = True
      TabOrder = 0
      OnExit = lbTarjetasExit
    end
    object edtNCuenta: TwwDBEdit
      Left = 221
      Top = 72
      Width = 53
      Height = 20
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10063
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      ParentColor = True
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = edtNCuentaEnter
      OnExit = edtNCuentaExit
      OnKeyDown = edtNCuentaKeyDown
    end
    object edtTerminal: TwwDBEdit
      Left = 221
      Top = 184
      Width = 74
      Height = 20
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10063
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      ParentColor = True
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = edtTerminalExit
      OnKeyDown = edtNumeroKeyDown
    end
  end
  object dsqCardsMut: TDataSource
    DataSet = qCardMut
    Left = 160
    Top = 268
  end
  object qCardMut: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IDTARJETA, TARJETA, TELAUTORIZACION, '
      '           CODCOMERCIO, CODENTIDAD, LIMITE, TIPOENT,'
      '           DIAPRESENTACION '
      'From TARJETAS'
      'Order By Tarjeta')
    Left = 130
    Top = 268
    object qCardMutIDTARJETA: TIntegerField
      FieldName = 'IDTARJETA'
      Origin = '"TARJETAS"."IDTARJETA"'
      Required = True
    end
    object qCardMutTARJETA: TMDOStringField
      FieldName = 'TARJETA'
      Origin = '"TARJETAS"."TARJETA"'
      Required = True
      Size = 30
    end
    object qCardMutTELAUTORIZACION: TMDOStringField
      FieldName = 'TELAUTORIZACION'
      Origin = '"TARJETAS"."TELAUTORIZACION"'
    end
    object qCardMutCODCOMERCIO: TMDOStringField
      FieldName = 'CODCOMERCIO'
      Origin = '"TARJETAS"."CODCOMERCIO"'
    end
    object qCardMutCODENTIDAD: TMDOStringField
      FieldName = 'CODENTIDAD'
      Origin = '"TARJETAS"."CODENTIDAD"'
    end
    object qCardMutLIMITE: TMDOBCDField
      FieldName = 'LIMITE'
      Origin = '"TARJETAS"."LIMITE"'
      Precision = 18
      Size = 4
    end
    object qCardMutTIPOENT: TSmallintField
      FieldName = 'TIPOENT'
      Origin = '"TARJETAS"."TIPOENT"'
    end
    object qCardMutDIAPRESENTACION: TSmallintField
      FieldName = 'DIAPRESENTACION'
      Origin = '"TARJETAS"."DIAPRESENTACION"'
    end
  end
end
