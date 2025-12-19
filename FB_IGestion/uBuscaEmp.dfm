object frmBuscaEmp: TfrmBuscaEmp
  Left = 365
  Top = 241
  BorderStyle = bsDialog
  Caption = 'Personal'
  ClientHeight = 273
  ClientWidth = 258
  Color = clWhite
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
    0000000000000000000000000000000000000000000008888000000000000000
    0000000007788088880000000000000000000007577888088888000000000000
    0000007757788808888888000000000000000077577888088888888800000000
    0000007757788808888888880000000000000077577888088888880000000000
    0000007757788808888800000000000000000077577888088800000000000000
    0000007757755808000000000000000000000077577755000000000000000000
    0000007777778500000000000000000000000077777788500000000000000000
    0000077777778880000000000000000000000777777788800000000000000000
    0000077777778880000000000000000000000777777788800000000000000000
    000007777777888000000000000000000000077777FF78800000000000000000
    00000777FF7777800000000000000000000007FF888888700000000000000000
    00000F7800008000000000000000000000000070888800000000000000000000
    0000000877788000000000000000000000000007FF7880000000000000000000
    0000000FFFF7800000000000000000000000000FFFF780000000000000000000
    00000000F7880000000000000000000000000000000800000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFF807FFFFE003FFFF8000FFFF80003FFF80000FFF80000FFF80003FFF80
    00FFFF8003FFFF800FFFFF801FFFFF801FFFFF800FFFFF000FFFFF000FFFFF00
    0FFFFF000FFFFF000FFFFF000FFFFF000FFFFF000FFFFF001FFFFF807FFFFFC0
    3FFFFFC03FFFFFC03FFFFFC03FFFFFE07FFFFFF0FFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBcaEmp: TRzPanel
    Left = 0
    Top = 0
    Width = 258
    Height = 58
    Align = alTop
    BorderOuter = fsFlatRounded
    Color = 12189695
    GradientColorStyle = gcsCustom
    GradientColorStop = 12189695
    TabOrder = 0
    VisualStyle = vsGradient
    object lblEmpleado: TLabel
      Left = 9
      Top = 5
      Width = 86
      Height = 19
      Caption = '&Empleado:'
      FocusControl = edtEmpleadoBuscado
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12032
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtEmpleadoBuscado: TRzEdit
      Left = 8
      Top = 28
      Width = 176
      Height = 22
      CharCase = ecUpperCase
      Color = 12189695
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = clWhite
      FrameHotTrack = True
      FrameVisible = True
      ParentColor = True
      ParentFont = False
      TabOnEnter = True
      TabOrder = 0
      OnExit = edtEmpleadoBuscadoExit
    end
    object btnAceptar: TRzBitBtn
      Left = 189
      Top = 21
      Width = 30
      Height = 30
      ModalResult = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HighlightColor = 16026986
      HotTrack = True
      HotTrackColor = 3983359
      ParentColor = True
      ParentFont = False
      TabOrder = 1
      OnClick = btnAceptarClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnCancelar: TRzBitBtn
      Left = 221
      Top = 21
      Width = 30
      Height = 30
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentColor = True
      ParentFont = False
      TabOrder = 2
      Kind = bkCancel
    end
  end
  object gEmpBuscados: TwwDBGrid
    Left = 0
    Top = 58
    Width = 258
    Height = 215
    Selected.Strings = (
      'IdEmpleado'#9'5'#9'N'#186' '#9#9
      'Nombre'#9'30'#9'Nombre'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = 15135468
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    BorderStyle = bsNone
    DataSource = dsBuscaEmp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14080
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = [dgEnterToTab]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentColor = True
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = 12615680
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    OnKeyDown = gEmpBuscadosKeyDown
    ExplicitTop = 62
    ExplicitWidth = 253
    ExplicitHeight = 211
  end
  object qBuscaEmp: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IDEMPLEADO, NOMBRE'
      'From Empleados '
      'Where Nombre like :Buscado And Activo = 1')
    Left = 88
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'Buscado'
        ParamType = ptUnknown
      end>
    object qBuscaEmpIdEmpleado: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' '
      DisplayWidth = 5
      FieldName = 'IdEmpleado'
      Origin = '"EMPLEADOS"."IDEMPLEADO"'
    end
    object qBuscaEmpNombre: TStringField
      DisplayWidth = 30
      FieldName = 'Nombre'
      Origin = '"EMPLEADOS"."NOMBRE"'
      Size = 30
    end
  end
  object dsBuscaEmp: TDataSource
    DataSet = qBuscaEmp
    Left = 136
    Top = 120
  end
end
