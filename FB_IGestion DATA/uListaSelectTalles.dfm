object frmListaSelecTalles: TfrmListaSelecTalles
  Left = 387
  Top = 197
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Talles'
  ClientHeight = 146
  ClientWidth = 132
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clMaroon
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lvInfo: TListView
    Left = 0
    Top = 0
    Width = 132
    Height = 146
    Align = alClient
    Color = 15923698
    Columns = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    RowSelect = True
    ParentFont = False
    TabOrder = 0
    ViewStyle = vsReport
    OnKeyDown = lvInfoKeyDown
  end
  object Talles: TMDOTable
    Database = dmGestion.dbGestion
    OnCalcFields = TallesCalcFields
    Transaction = dmGestion.trGestion
    BufferChunks = 1000
    CachedUpdates = False
    IndexName = 'iIdArticulo'
    TableName = 'ArtTalles'
    Left = 80
    Top = 16
    object TallesIdArticulo: TIntegerField
      FieldName = 'IdArticulo'
      Visible = False
    end
    object TallesTalle: TIntegerField
      FieldName = 'Talle'
      Visible = False
    end
    object TallesTallesStr: TStringField
      DisplayLabel = 'Talles'
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'TallesStr'
      Size = 4
      Calculated = True
    end
  end
end
