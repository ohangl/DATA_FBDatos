object frmOrdPagos: TfrmOrdPagos
  Left = 340
  Top = 273
  Caption = 'frmOrdPagos'
  ClientHeight = 50
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lstDetOrdenPago: TppReport
    AutoStop = False
    DataPipeline = ppOrdenes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Copies = 2
    PrinterSetup.DocumentName = 'Insolito SRL - Orden de Pagos'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 11350
    PrinterSetup.mmMarginLeft = 20350
    PrinterSetup.mmMarginRight = 10350
    PrinterSetup.mmMarginTop = 11350
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000088888888888888888888888800000
      0000000000000000000000000800000000FFFFFFFFFFFFFFFFFFFFF080000000
      0F0FBBBBBBBBBBBBBBBF0F0800000000FFFBB8B888B8888BBBFFF0800000000F
      0FBBBBBBBBBBBBBBBF0F0800000000FFFFFFFFFFFFFFFFFFFFF0800000000000
      000000000000000000088000000000FFFFFFFFFFFFFFFFFFFFF088000000000F
      0FBBBBBBBBBBBBBBBF0F088000000000FFFBB8B888B8888BBBFFF08800000000
      0F0FBBBBBBBBBBBBBBBF0F088000000000FFFFFFFFFFFFFFFFFFFFF088000000
      0000000000000000000000008800000000FFFFFFFFFFFFFFFFFFFFF080000000
      0F0FBBBBBBBBBBBBBBBF0F0800000000FFFBB88B888888B8BBFFF0800000000F
      0FBBBBBBBBBBBBBBBF0F0800000000FFFFFFFFFFFFFFFFFFFFF0800000000000
      000000000000000000088000000000FFFFFFFFFFFFFFFFFFFFF088000000000F
      0FBBBBBBBBBBBBBBBF0F088000000000FFFBB88B88888888BBFFF08800000000
      0F0FBBBBBBBBBBBBBBBF0F088000000000FFFFFFFFFFFFFFFFFFFFF088000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000001FC000003F8000007F000
      000FE000001FC000003F8000007F8000007F8000003FC000001FE000000FF000
      0007F8000003FC000003F8000007F000000FE000001FC000003F8000007F8000
      007F8000003FC000001FE000000FF0000007F8000003FC000007FFFFFFFF}
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 16
    Top = 8
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppOrdenes'
    object hbOrdPago: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 20638
      mmPrintPosition = 0
      object ppShapeOP1: TppShape
        UserName = 'ShapeOP1'
        Brush.Color = 15921906
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 20638
        mmLeft = 0
        mmTop = 0
        mmWidth = 179300
        BandType = 0
      end
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
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5122
        mmLeft = 7408
        mmTop = 529
        mmWidth = 20151
        BandType = 0
      end
      object lblEmision1: TppSystemVariable
        UserName = 'lblEmision1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DisplayFormat = #39'San Juan, '#39'dddd dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 99219
        mmTop = 529
        mmWidth = 77258
        BandType = 0
      end
      object lblOP: TppLabel
        UserName = 'lblOP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Orden de pago N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3440
        mmLeft = 145786
        mmTop = 11113
        mmWidth = 26988
        BandType = 0
      end
      object lblProv: TppLabel
        UserName = 'lblProv'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Proveedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7408
        mmTop = 11113
        mmWidth = 18521
        BandType = 0
      end
      object lblDirec: TppLabel
        UserName = 'lblDirec'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Direccion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7408
        mmTop = 6350
        mmWidth = 18521
        BandType = 0
      end
      object lblNomEnt1: TppDBText
        UserName = 'lblNomEnt1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOMENTIDAD'
        DataPipeline = ppOrdenes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppOrdenes'
        mmHeight = 4233
        mmLeft = 7408
        mmTop = 15081
        mmWidth = 96044
        BandType = 0
      end
      object lblNOrdPagos: TppDBText
        UserName = 'lblNOrdPagos'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NroCompOP'
        DataPipeline = ppOrdenes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppOrdenes'
        mmHeight = 3969
        mmLeft = 146050
        mmTop = 15081
        mmWidth = 30427
        BandType = 0
      end
    end
    object dbOrdPago: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object srDetComp: TppSubReport
        UserName = 'srDetComp'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppItemsOP'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 179300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppItemsOP
          PrinterSetup.BinName = 'Default'
          PrinterSetup.Copies = 2
          PrinterSetup.DocumentName = 'Insolito SRL - Orden de Pagos'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 11350
          PrinterSetup.mmMarginLeft = 20350
          PrinterSetup.mmMarginRight = 10350
          PrinterSetup.mmMarginTop = 11350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '10.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppItemsOP'
          object tpItmOP: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 9790
            mmPrintPosition = 0
            object ppShapeOP3: TppShape
              UserName = 'ShapeOP3'
              Brush.Color = 16250871
              mmHeight = 9790
              mmLeft = 13758
              mmTop = 0
              mmWidth = 158221
              BandType = 1
            end
            object lblComprobanteP: TppLabel
              UserName = 'lblComprobanteP'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Comprobante'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsItalic, fsUnderline]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3810
              mmLeft = 22225
              mmTop = 5292
              mmWidth = 23019
              BandType = 1
            end
            object lblFecP: TppLabel
              UserName = 'lblFecP'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fecha'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsItalic, fsUnderline]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3810
              mmLeft = 82815
              mmTop = 5292
              mmWidth = 12435
              BandType = 1
            end
            object lblImpP: TppLabel
              UserName = 'lblImpP'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Importe'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsItalic, fsUnderline]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3810
              mmLeft = 102923
              mmTop = 5292
              mmWidth = 15346
              BandType = 1
            end
            object lbpPagP: TppLabel
              UserName = 'lbpPagP'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Pagado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsItalic, fsUnderline]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3810
              mmLeft = 129382
              mmTop = 5292
              mmWidth = 14552
              BandType = 1
            end
            object lblSdoP: TppLabel
              UserName = 'lblSdoP'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsItalic, fsUnderline]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3810
              mmLeft = 156898
              mmTop = 5292
              mmWidth = 11906
              BandType = 1
            end
            object lblOperCan: TppLabel
              UserName = 'lblOperCan'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Operaciones Pagadas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4763
              mmLeft = 67733
              mmTop = 265
              mmWidth = 40217
              BandType = 1
            end
          end
          object dpItmOP: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object lblNCompP: TppDBText
              UserName = 'lblNCompP'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NroFactura'
              DataPipeline = ppItemsOP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppItemsOP'
              mmHeight = 3429
              mmLeft = 33073
              mmTop = 0
              mmWidth = 23813
              BandType = 4
            end
            object lblImporteP: TppDBText
              UserName = 'lblImporteP'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MontoOrg'
              DataPipeline = ppItemsOP
              DisplayFormat = '$ 0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppItemsOP'
              mmHeight = 3429
              mmLeft = 99484
              mmTop = 0
              mmWidth = 20638
              BandType = 4
            end
            object lblTCompP: TppDBText
              UserName = 'lblTCompP'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DetMov'
              DataPipeline = ppItemsOP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppItemsOP'
              mmHeight = 3429
              mmLeft = 13758
              mmTop = 0
              mmWidth = 18521
              BandType = 4
            end
            object lblPagadoP: TppDBText
              UserName = 'lblPagadoP'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Importe'
              DataPipeline = ppItemsOP
              DisplayFormat = '$ 0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppItemsOP'
              mmHeight = 3429
              mmLeft = 121709
              mmTop = 0
              mmWidth = 21167
              BandType = 4
            end
            object lblSaldoP: TppDBText
              UserName = 'lblSaldoP'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SaldoMov'
              DataPipeline = ppItemsOP
              DisplayFormat = '$ 0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppItemsOP'
              mmHeight = 3429
              mmLeft = 146315
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
            object lblFechaP: TppDBText
              UserName = 'lblFechaP'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FechaOr'
              DataPipeline = ppItemsOP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppItemsOP'
              mmHeight = 3440
              mmLeft = 79904
              mmTop = 265
              mmWidth = 16140
              BandType = 4
            end
            object lblImpComprobante: TppDBText
              UserName = 'lblImporteP1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MontoComprobante'
              DataPipeline = ppItemsOP
              DisplayFormat = '$ 0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppItemsOP'
              mmHeight = 2963
              mmLeft = 60325
              mmTop = 265
              mmWidth = 15875
              BandType = 4
            end
          end
          object sbItmOP: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppShapeOP8: TppShape
              UserName = 'ShapeOP8'
              Brush.Color = 15921906
              mmHeight = 7144
              mmLeft = 13758
              mmTop = 0
              mmWidth = 158486
              BandType = 7
            end
            object lblTotComp: TppLabel
              UserName = 'lblTotComp'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total comprobantes'
              Color = 5395026
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold]
              mmHeight = 5027
              mmLeft = 14288
              mmTop = 1058
              mmWidth = 32279
              BandType = 7
            end
            object lblTotalPagado: TppDBText
              UserName = 'lblTotalPagado'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TotalOP'
              DataPipeline = ppOrdenes
              DisplayFormat = '$ 0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppOrdenes'
              mmHeight = 3429
              mmLeft = 129582
              mmTop = 1323
              mmWidth = 13293
              BandType = 7
            end
            object lblTotalSaldos: TppDBCalc
              UserName = 'lblTotalSaldos'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SaldoMov'
              DataPipeline = ppItemsOP
              DisplayFormat = '$ 0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppItemsOP'
              mmHeight = 3429
              mmLeft = 144727
              mmTop = 1323
              mmWidth = 24871
              BandType = 7
            end
            object lblTotalComprobantes: TppDBCalc
              UserName = 'lblTotalComprobantes'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MontoOrg'
              DataPipeline = ppItemsOP
              DisplayFormat = '$ 0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppItemsOP'
              mmHeight = 3440
              mmLeft = 90752
              mmTop = 1323
              mmWidth = 29633
              BandType = 7
            end
          end
        end
      end
      object srDetPagos: TppSubReport
        UserName = 'srDetPagos'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = srDetComp
        TraverseAllData = False
        DataPipelineName = 'ppItemsPg'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 5027
        mmWidth = 179300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppItemsPg
          PrinterSetup.BinName = 'Default'
          PrinterSetup.Copies = 2
          PrinterSetup.DocumentName = 'Insolito SRL - Orden de Pagos'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 11350
          PrinterSetup.mmMarginLeft = 20350
          PrinterSetup.mmMarginRight = 10350
          PrinterSetup.mmMarginTop = 11350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '10.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppItemsPg'
          object tpItmPg: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 13494
            mmPrintPosition = 0
            object ppShapeOP4: TppShape
              UserName = 'ShapeOP4'
              Anchors = [atLeft, atBottom]
              Brush.Color = 15921906
              mmHeight = 5292
              mmLeft = 0
              mmTop = 8203
              mmWidth = 179652
              BandType = 1
            end
            object lblDetPago: TppLabel
              UserName = 'lblDetPago'
              Anchors = [atLeft, atBottom]
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Detalle y N'#186' de comprobante de Pago'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 53181
              mmTop = 9261
              mmWidth = 58473
              BandType = 1
            end
            object lblVto: TppLabel
              UserName = 'lblVto'
              Anchors = [atLeft, atBottom]
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
              mmLeft = 133879
              mmTop = 9261
              mmWidth = 20902
              BandType = 1
            end
            object lblImpOP: TppLabel
              UserName = 'lblImpOP'
              Anchors = [atLeft, atBottom]
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Importe'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 164571
              mmTop = 9261
              mmWidth = 14023
              BandType = 1
            end
            object lblPagRealizados: TppLabel
              UserName = 'lblOperCan1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Pagos Realizados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 12
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 6085
              mmLeft = 64558
              mmTop = 1058
              mmWidth = 42863
              BandType = 1
            end
            object lblTipoPago: TppLabel
              UserName = 'lblVto1'
              Anchors = [atLeft, atBottom]
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tipo Pago'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 3440
              mmTop = 9260
              mmWidth = 17992
              BandType = 1
            end
          end
          object dbItmPg: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object lblTPago: TppDBText
              UserName = 'lblTPago'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPOP'
              DataPipeline = ppItemsPg
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppItemsPg'
              mmHeight = 4233
              mmLeft = 529
              mmTop = 0
              mmWidth = 26194
              BandType = 4
            end
            object lblDescripcion: TppDBText
              UserName = 'lblDescripcion'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Descripcion'
              DataPipeline = ppItemsPg
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppItemsPg'
              mmHeight = 3429
              mmLeft = 99219
              mmTop = 0
              mmWidth = 36248
              BandType = 4
            end
            object lblFVto: TppDBText
              UserName = 'lblFVto'
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Fecha'
              DataPipeline = ppItemsPg
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppItemsPg'
              mmHeight = 3429
              mmLeft = 137054
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object lblImporteOP: TppDBText
              UserName = 'lblImporteOP'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Importe'
              DataPipeline = ppItemsPg
              DisplayFormat = '$ 0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppItemsPg'
              mmHeight = 4233
              mmLeft = 155840
              mmTop = 0
              mmWidth = 23019
              BandType = 4
            end
            object lblDetalle: TppDBText
              UserName = 'lblDetalle'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Detalle'
              DataPipeline = ppItemsPg
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppItemsPg'
              mmHeight = 3429
              mmLeft = 27517
              mmTop = 0
              mmWidth = 37571
              BandType = 4
            end
            object lblNroCompPago: TppDBText
              UserName = 'lblBcoEnt1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Comprobante'
              DataPipeline = ppItemsPg
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppItemsPg'
              mmHeight = 3429
              mmLeft = 71173
              mmTop = 0
              mmWidth = 26723
              BandType = 4
            end
            object lnItmPg: TppLine
              UserName = 'lnItmPg'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Color = 12171705
              ParentWidth = True
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 0
              mmTop = 5292
              mmWidth = 179300
              BandType = 4
            end
          end
          object sbItmPg: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 22490
            mmPrintPosition = 0
            object ppShapeOP9: TppShape
              UserName = 'ShapeOP9'
              Anchors = [atLeft, atBottom]
              Brush.Color = 15921906
              mmHeight = 6615
              mmLeft = 0
              mmTop = 0
              mmWidth = 179652
              BandType = 7
            end
            object lblTotPag: TppLabel
              UserName = 'lblTotPag'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Pagos:'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taCentered
              mmHeight = 5292
              mmLeft = 103188
              mmTop = 529
              mmWidth = 30692
              BandType = 7
            end
            object dbTotPagos: TppDBCalc
              UserName = 'dbTotPagos'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Importe'
              DataPipeline = ppItemsPg
              DisplayFormat = '$ 0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppItemsPg'
              mmHeight = 4233
              mmLeft = 137054
              mmTop = 1058
              mmWidth = 40746
              BandType = 7
            end
          end
        end
      end
    end
    object sbOrdPago: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 60325
      mmPrintPosition = 0
      object ppShapeOP2: TppShape
        UserName = 'ShapeOP2'
        ParentHeight = True
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 60325
        mmLeft = 0
        mmTop = 0
        mmWidth = 179300
        BandType = 7
      end
      object ppShapeOP6: TppShape
        UserName = 'ShapeOP6'
        Brush.Color = clRed
        mmHeight = 1058
        mmLeft = 2381
        mmTop = 29633
        mmWidth = 174361
        BandType = 7
      end
      object ppShapeOP7: TppShape
        UserName = 'ShapeOP7'
        Brush.Color = clMaroon
        mmHeight = 794
        mmLeft = 114829
        mmTop = 50800
        mmWidth = 44186
        BandType = 7
      end
      object lblRecibi: TppLabel
        UserName = 'lblRecibi'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Recib'#237' Conforme p/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 125413
        mmTop = 51858
        mmWidth = 24342
        BandType = 7
      end
      object lblRecibo: TppMemo
        UserName = 'lblRecibo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblRecibo'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 26988
        mmLeft = 7408
        mmTop = 31221
        mmWidth = 98425
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppShapeOP5: TppShape
        UserName = 'ShapeOP5'
        Shape = stRoundRect
        mmHeight = 27517
        mmLeft = 131763
        mmTop = 1852
        mmWidth = 44715
        BandType = 7
      end
      object lblGerente: TppLabel
        UserName = 'lblGerente'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Gerente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3175
        mmLeft = 136525
        mmTop = 25400
        mmWidth = 36777
        BandType = 7
      end
      object lblNomEnt2: TppDBText
        UserName = 'lblNomEnt2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Autorizado'
        DataPipeline = ppOrdenes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppOrdenes'
        mmHeight = 2910
        mmLeft = 115094
        mmTop = 55827
        mmWidth = 44715
        BandType = 7
      end
      object lblFecE: TppDBText
        UserName = 'lblFecE'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaOP'
        DataPipeline = ppOrdenes
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppOrdenes'
        mmHeight = 2963
        mmLeft = 1852
        mmTop = 9790
        mmWidth = 9440
        BandType = 7
      end
      object lblIdOrd: TppDBText
        UserName = 'lblIdOrd'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'IdOrden'
        DataPipeline = ppOrdenes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppOrdenes'
        mmHeight = 2963
        mmLeft = 1588
        mmTop = 13229
        mmWidth = 12435
        BandType = 7
      end
      object lblUsr: TppDBText
        UserName = 'lblIdOrd1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Usuario'
        DataPipeline = ppOrdenes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppOrdenes'
        mmHeight = 2963
        mmLeft = 1588
        mmTop = 16404
        mmWidth = 12435
        BandType = 7
      end
      object ppShapeOP10: TppShape
        UserName = 'ShapeOP10'
        Brush.Color = 13948116
        mmHeight = 6085
        mmLeft = 29898
        mmTop = 14023
        mmWidth = 85725
        BandType = 7
      end
      object lblTotaPag: TppLabel
        UserName = 'lblSubTotOP2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4699
        mmLeft = 31221
        mmTop = 14552
        mmWidth = 25866
        BandType = 7
      end
      object lblTotal: TppDBText
        UserName = 'lblTotal'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalOP'
        DataPipeline = ppOrdenes
        DisplayFormat = '$ 0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppOrdenes'
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 14817
        mmWidth = 13970
        BandType = 7
      end
    end
  end
  object ppItemsPg: TppDBPipeline
    DataSource = dmSaveFile.dsqItemsPG
    OpenDataSource = False
    UserName = 'ItemsPg'
    Left = 87
    Top = 8
    object ppItemsPgppField1: TppField
      FieldAlias = 'IDORDEN'
      FieldName = 'IDORDEN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppItemsPgppField2: TppField
      FieldAlias = 'IDITEMPAG'
      FieldName = 'IDITEMPAG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppItemsPgppField3: TppField
      FieldAlias = 'ENTIDAD'
      FieldName = 'ENTIDAD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppItemsPgppField4: TppField
      FieldAlias = 'COMPROBANTE'
      FieldName = 'COMPROBANTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppItemsPgppField5: TppField
      FieldAlias = 'FECHA'
      FieldName = 'FECHA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppItemsPgppField6: TppField
      FieldAlias = 'IMPORTE'
      FieldName = 'IMPORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppItemsPgppField7: TppField
      FieldAlias = 'DETALLE'
      FieldName = 'DETALLE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppItemsPgppField8: TppField
      FieldAlias = 'DESCRIPCION'
      FieldName = 'DESCRIPCION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppItemsPgppField9: TppField
      FieldAlias = 'IDMOVIMIENTO'
      FieldName = 'IDMOVIMIENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppItemsPgppField10: TppField
      FieldAlias = 'ESTADO'
      FieldName = 'ESTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppItemsPgppField11: TppField
      FieldAlias = 'TIPOP'
      FieldName = 'TIPOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppItemsPgppField12: TppField
      FieldAlias = 'TIPOPAGO'
      FieldName = 'TIPOPAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
  end
  object ppItemsOP: TppDBPipeline
    DataSource = dmSaveFile.dsqItemsOP
    OpenDataSource = False
    UserName = 'ItemsOP'
    Left = 120
    Top = 8
    object ppItemsOPppField1: TppField
      FieldAlias = 'IDORDPAGO'
      FieldName = 'IDORDPAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppItemsOPppField2: TppField
      FieldAlias = 'IDITEMOP'
      FieldName = 'IDITEMOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppItemsOPppField3: TppField
      FieldAlias = 'ENTIDAD'
      FieldName = 'ENTIDAD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppItemsOPppField4: TppField
      FieldAlias = 'FECHAOP'
      FieldName = 'FECHAOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppItemsOPppField5: TppField
      FieldAlias = 'FECHAOR'
      FieldName = 'FECHAOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppItemsOPppField6: TppField
      FieldAlias = 'IDFACTURA'
      FieldName = 'IDFACTURA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppItemsOPppField7: TppField
      FieldAlias = 'IDSUCURSAL'
      FieldName = 'IDSUCURSAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppItemsOPppField8: TppField
      FieldAlias = 'IMPORTE'
      FieldName = 'IMPORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppItemsOPppField9: TppField
      FieldAlias = 'SALDOMOV'
      FieldName = 'SALDOMOV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppItemsOPppField10: TppField
      FieldAlias = 'MONTOORG'
      FieldName = 'MONTOORG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppItemsOPppField11: TppField
      FieldAlias = 'TIPOMOV'
      FieldName = 'TIPOMOV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppItemsOPppField12: TppField
      FieldAlias = 'COMPROBANTE'
      FieldName = 'COMPROBANTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppItemsOPppField13: TppField
      FieldAlias = 'NROFACTURA'
      FieldName = 'NROFACTURA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppItemsOPppField14: TppField
      FieldAlias = 'ESTADO'
      FieldName = 'ESTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppItemsOPppField15: TppField
      FieldAlias = 'MONTOCOMPROBANTE'
      FieldName = 'MONTOCOMPROBANTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppItemsOPppField16: TppField
      FieldAlias = 'DETMOV'
      FieldName = 'DETMOV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
  end
  object ppOrdenes: TppDBPipeline
    DataSource = dmSaveFile.dsqOrdenes
    OpenDataSource = False
    UserName = 'Ordenes'
    Left = 53
    Top = 9
    object ppOrdenesppField1: TppField
      FieldAlias = 'IDORDEN'
      FieldName = 'IDORDEN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField2: TppField
      FieldAlias = 'ENTIDAD'
      FieldName = 'ENTIDAD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField3: TppField
      FieldAlias = 'FECHAOP'
      FieldName = 'FECHAOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField4: TppField
      FieldAlias = 'NROCOMPOP'
      FieldName = 'NROCOMPOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField5: TppField
      FieldAlias = 'CANTOP'
      FieldName = 'CANTOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField6: TppField
      FieldAlias = 'TOTALOP'
      FieldName = 'TOTALOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField7: TppField
      FieldAlias = 'CONTADO'
      FieldName = 'CONTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField8: TppField
      FieldAlias = 'TICKETS'
      FieldName = 'TICKETS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField9: TppField
      FieldAlias = 'BANCOPROP'
      FieldName = 'BANCOPROP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField10: TppField
      FieldAlias = 'BANCOTER'
      FieldName = 'BANCOTER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField11: TppField
      FieldAlias = 'BONIFPROV'
      FieldName = 'BONIFPROV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField12: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField13: TppField
      FieldAlias = 'ESTADO'
      FieldName = 'ESTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField14: TppField
      FieldAlias = 'NOMENTIDAD'
      FieldName = 'NOMENTIDAD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField15: TppField
      FieldAlias = 'AUTORIZADO'
      FieldName = 'AUTORIZADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField16: TppField
      FieldAlias = 'NOMUSR'
      FieldName = 'NOMUSR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField17: TppField
      FieldAlias = 'NOCOMPOP'
      FieldName = 'NOCOMPOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField18: TppField
      FieldAlias = 'NETOOP'
      FieldName = 'NETOOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField19: TppField
      FieldAlias = 'RETENCIONI'
      FieldName = 'RETENCIONI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField20: TppField
      FieldAlias = 'RETENCIONG'
      FieldName = 'RETENCIONG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField21: TppField
      FieldAlias = 'RETENCIONB'
      FieldName = 'RETENCIONB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField22: TppField
      FieldAlias = 'PRCRETG'
      FieldName = 'PRCRETG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField23: TppField
      FieldAlias = 'PRCRETI'
      FieldName = 'PRCRETI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField24: TppField
      FieldAlias = 'PRCRETB1'
      FieldName = 'PRCRETB1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField25: TppField
      FieldAlias = 'PRCRETB2'
      FieldName = 'PRCRETB2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField26: TppField
      FieldAlias = 'RETENCIONS'
      FieldName = 'RETENCIONS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField27: TppField
      FieldAlias = 'PRCRETS'
      FieldName = 'PRCRETS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField28: TppField
      FieldAlias = 'RETENCIONH'
      FieldName = 'RETENCIONH'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField29: TppField
      FieldAlias = 'RETENCIONES'
      FieldName = 'RETENCIONES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField30: TppField
      FieldAlias = 'NROCERTIVA'
      FieldName = 'NROCERTIVA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField31: TppField
      FieldAlias = 'NROCERTGAN'
      FieldName = 'NROCERTGAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField32: TppField
      FieldAlias = 'NROCERTIBT'
      FieldName = 'NROCERTIBT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppOrdenesppField33: TppField
      FieldAlias = 'NROCERTSES'
      FieldName = 'NROCERTSES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
  end
  object lstCertRet: TppReport
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Certificado de Retenci'#243'n'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 12350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 12350
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
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 163
    Top = 8
    Version = '10.02'
    mmColumnWidth = 0
    object hbEncCertRet: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 42863
      mmPrintPosition = 0
      object shpTitCertRet: TppShape
        UserName = 'shpTitCertRet'
        ParentHeight = True
        ParentWidth = True
        mmHeight = 42863
        mmLeft = 0
        mmTop = 0
        mmWidth = 191300
        BandType = 0
      end
      object lblDGR: TppLabel
        UserName = 'lblDGR'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'D.G.R.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 48
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 20373
        mmLeft = 8202
        mmTop = 11377
        mmWidth = 53711
        BandType = 0
      end
      object lblAfip: TppImage
        UserName = 'lblAfip'
        MaintainAspectRatio = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Picture.Data = {
          07544269746D6170D60E0000424DD60E00000000000076000000280000009B00
          00002E0000000100040000000000600E00000000000000000000100000000000
          0000000000000000800000800000008080008000000080008000808000008080
          8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0
          0000FFFFFFF08F0FF87F80FF08F7000000000000000000006FFF000000000000
          0000000FFFFFFFFFFFFFFFFFFF0000000000000000006FFFF800000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFF8F76FF08807F80FF00000
          0000000000000000FFFF0000000000000000000FFFFFFFFFFFFFFFFFFF000000
          0000000000006FFFF8000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFF0
          0000FFFFFFFFF08F768F0FF07F8000000000000000000006FFFF000000000000
          0000000FFFFFFFFFFFFFFFFFFF0000000000000000006FFFF800000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFF80FF08887FF0FF000000
          0000000000000008FFFF0000000000000000000FFFFFFFFFFFFFFFFFFF000000
          0000000000006FFFF8000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFF0
          0000FFFFFFFFF8F808808F00F8000000000000000000000FFFFF000000000000
          0000000FFFFFFFFFFFFFFFFFFF0000000000000000006FFFF800000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFF088F0FF08F6000000
          000000000000008FFFFF0000000000000000000FFFFFFFFFFFFFFFFFFF000000
          0000000000006FFFF8000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFF0
          0000FFFFFFFFFF808808F70FF000000000000000000000FFFFFF000000000000
          0000000FFFFFFFFFFFFFFFFFFF0000000000000000006FFFF800000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFF878F0FF08F80000000
          00000000000007FFFFFF0000000000000000000FFFFFFFFFFFFFFFFFFF000000
          0000000000006FFFF8000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFF0
          0000FFFFFFFFFF88807FF0FF000000000000000000000FFFFFFF000000000000
          0000000FFFFFFFFFFFFFFFFFFF0000000000000000006FFFF800000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFF80FF07F800000000
          0000000000007FFFFFFF0000000000000000000FF8868FFFFFFFFFFFFF000000
          0000000000006FFFF8000000000000000000FFF000000000078FFFFFFFFFFFF0
          0000FFFFFFFFFFFF888F08F000000000000000000000FFFFFFFF000000000000
          0000000FF800008FFFFFFFFFFF0000000000000000006FFFF800000000000000
          0000FFF0000000000006FFFFFFFFFFF00000FFFFFFFFFFFF08F00F8000000000
          000000000006FFFFFFFF0000000000000000000FF800000FFFFFFFFFFF000000
          0000000000006FFFF8000000000000000000FFF000000000000008FFFFFFFFF0
          0000FFFFFFFFFFFF8FF08F000000000000000000000FFFFFFFFF000000000000
          0000000FF8000008FFFFFFFFFF0000000000000000006FFFF800000000000000
          0000FFF0000000000000008FFFFFFFF00000FFFFFFFFFFFFFF70FF0000000000
          00000000000FFFFFFFFF8000000000000000000FF8000007FFFFFFFFFF700000
          0000000000006FFFF8000000000000000000FFF00000000000000008FFFFFFF0
          0000FFFFFFFFFFFFFF08F8000000000000000000008FFFFFFFFFF80000000000
          0000000FF8000006FFFFFFFFFFF700000000000000006FFFFF80000000000000
          0000FFF00000000000000000FFFFFFF00000FFFFFFFFFFFFFF0FF00000000000
          0000000000FFFFFFFFFFFF80000000000000000FF8000007FFFFFFFFFFFF7000
          0000000000006FFFFFF80000000000000000FFF000000000000000007FFFFFF0
          0000FFFFFFFFFFFFFF8F7000000000000000000007FFFFFFFFFF088800000000
          0000000FF8000008FFFFFFFFFF0FF7000000000000006FFFF8FFF00000000000
          0000FFF000000000000000000FFFFFF00000FFFFFFFFFFFFFFFF000000000000
          000000000FFFFFFFFFFF8088800000000000000FF800008FFFFFFFFFFF80FF70
          0000000000006FFFFF08FF00000000000000FFF000000000000000000FFFFFF0
          0000FFFFFFFFFFFFFFF8000000000000000000007FFFFFFFFFFFF80888000000
          0000000FF80007FFFFFFFFFFFFF80FF70000000000006FFFFFF08FF000000000
          0000FFF000000000000000000FFFFFF00000FFFFFFFFFFFFFFF8000000000000
          00000000FFFFFFFFFFFF8880888000000000000FFF88FFFFFFFFFFFFFFFF80FF
          8000000000006FFFF8FF08FF000000000000FFF000000000000000000FFFFFF0
          0000FFFFFFFFFFFFFFFF00000000000000000007FFFFFFFFFFFF088808880000
          0000000FFFFFFFFFFFFFFFFFFF0FF70FF800000000006FFFF87FF08FF0000000
          0000FFF000000000000000000FFFFFF00000FFFFFFFFFFFFFFFF800000000000
          0000000FFFFFFFFFFFFFF088808880000000000FF8877777777FFFFFFFF0FF80
          FF80000000006FFFFF07FF08FF0000000000FFF000000000000000000FFFFFF0
          0000FFFFFFFFFFFFFFFFF000000000000000006FFFFFFFFFFFFFFF0888088800
          0000000FF800000000006FFFFFFF08F80FF8000000006FFFFFF07FF08FF60000
          0000FFF000000000000000000FFFFFF00000FFFFFFFFFFFFFFFFF70000000000
          0000008FFFFFFFFFFFFF0FF08F808F800000000FF8000000000007FFF80FF08F
          80FF800000006FFFF0FF07FF08FF60000000FFF000000000000000000FFFFFF0
          0000FFFFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFF70FF07F808F8
          0000000FF8000000000000FFFF70FF08F80FF80000006FFFF80FF07FF08FF600
          0000FFF000000000000000007FFFFFF00000FFFFFFFFFFFFFFFFFF6000000000
          000008FFFFFFFFFFFFFFF70FF07F808F8000000FF8000000000000FFFFF70FF0
          8F80FF8000006FFFFF80FF07FF08FF600000FFF00000000000000000FFFFFFF0
          0000FFFFFFFFFFFFFFFFFF800000000000000FFFFFFFFFFFFFFF8F70FF07F808
          F800000FF8000000000000FFFFFF80FF08F80FF800006FFFFFF80FF07FF08FF6
          0000FFF0000000000000000FFFFFFFF00000FFFFFFFFFFFFFFFFFFF000000000
          00007FFFFFFFFFFFFFFF08F80FF07F808F86000FF8000000000000FFFF0FF80F
          F08F80FF80006FFFFE8F80FF07FF08FF6000FFF0000000000000008FFFFFFFF0
          0000FFFFFFFFFFFFFFFFFFF8000000000000FFFFFFFFFFFFFFFFF08F808F00F8
          08F8600FF8000000000006FFFF80FF80FF08F80FF8008FFFFF07F80FF07FF08F
          F600FFF000000000000008FFFFFFFFF00000FFFFFFFFFFFFFFFFFFFF00000000
          0007FFFFFFFFFFFFFFFF8F08F80FF07F808F860FF8000000000008FFFFF80FF8
          0FF08F80FF808FFFFFF07F80FF07FF08FF70FFF00000000000008FFFFFFFFFF0
          0000FFFFFFFFFFFFFFFFFFFF70000000000FFFFFFFFFFFFFFFFF78F08F80FF07
          F808F86FF800000000008FFFFF8F80FF80FF08F80FF88FFFF0FF07F80FF00FF0
          8FF7FFF000000000088FFFFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0
          0000}
        mmHeight = 20902
        mmLeft = 8202
        mmTop = 10848
        mmWidth = 53711
        BandType = 0
      end
      object lblTituloCert: TppLabel
        UserName = 'lblTituloCert'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTituloCert'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 5122
        mmLeft = 145786
        mmTop = 1058
        mmWidth = 26374
        BandType = 0
      end
      object lblCNro: TppLabel
        UserName = 'lblCNro'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Certificado N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 77258
        mmTop = 1588
        mmWidth = 32015
        BandType = 0
      end
      object lblNroCert: TppDBText
        UserName = 'lblNroCert'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NroCert'
        DataPipeline = ppCertRet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 4498
        mmLeft = 77258
        mmTop = 7673
        mmWidth = 13758
        BandType = 0
      end
      object lblCFecha: TppLabel
        UserName = 'lblNCert1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5122
        mmLeft = 77258
        mmTop = 13494
        mmWidth = 13970
        BandType = 0
      end
      object lblFechaCert: TppDBText
        UserName = 'lblFechaCert'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaC'
        DataPipeline = ppCertRet
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 4498
        mmLeft = 77258
        mmTop = 19315
        mmWidth = 13494
        BandType = 0
      end
    end
    object dbCertRet: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 124354
      mmPrintPosition = 0
      object lblCDatosAR: TppLabel
        UserName = 'lblCDatosAR'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'A. - Datos del Agente de Retenci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5122
        mmLeft = 4763
        mmTop = 1058
        mmWidth = 78846
        BandType = 4
      end
      object lblCDatosSR: TppLabel
        UserName = 'lblCDatosAR1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'B. - Datos del Sujeto Retenido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5122
        mmLeft = 4763
        mmTop = 31485
        mmWidth = 68792
        BandType = 4
      end
      object lblCDatosRP: TppLabel
        UserName = 'lblCDatosAR2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C. - Datos de la Retenci'#243'n Practicada '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 4763
        mmTop = 65088
        mmWidth = 86784
        BandType = 4
      end
      object lblCANDAg: TppLabel
        UserName = 'lblCANDAg'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Apellido y Nombre o Denominacion:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11642
        mmTop = 8467
        mmWidth = 62992
        BandType = 4
      end
      object lblCDocAg: TppLabel
        UserName = 'lblCDocAg'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C.U.I.T N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11642
        mmTop = 13758
        mmWidth = 19050
        BandType = 4
      end
      object lblCDomAg: TppLabel
        UserName = 'lblCDomAg'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Domicilio :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11642
        mmTop = 19315
        mmWidth = 18785
        BandType = 4
      end
      object lblCANDsr: TppLabel
        UserName = 'lblCANDAg1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Apellido y Nombre o Denominacion:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11377
        mmTop = 38629
        mmWidth = 62971
        BandType = 4
      end
      object lblCDocSR: TppLabel
        UserName = 'lblCDocAg1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C.U.I.T N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11377
        mmTop = 44186
        mmWidth = 19050
        BandType = 4
      end
      object lblCDomSR: TppLabel
        UserName = 'lblCDomAg1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Domicilio :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11377
        mmTop = 50006
        mmWidth = 18785
        BandType = 4
      end
      object lblDetReg: TppLabel
        UserName = 'lblDetReg'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'R'#233'gimen:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11642
        mmTop = 77523
        mmWidth = 17992
        BandType = 4
      end
      object lblCMtoOP: TppLabel
        UserName = 'lblCMtoOP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Monto del Comprobante que origina la Retenci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4498
        mmLeft = 11642
        mmTop = 90223
        mmWidth = 85990
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Monto de la Retenci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11642
        mmTop = 96573
        mmWidth = 39328
        BandType = 4
      end
      object lblCAdicLH: TppLabel
        UserName = 'lblCAdicLH'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Adicional Lote Hogar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 108215
        mmWidth = 36513
        BandType = 4
      end
      object lblCDetalleImp: TppDBText
        UserName = 'lblCDetalleImp'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DetImp'
        DataPipeline = ppCertRet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 4233
        mmLeft = 32015
        mmTop = 71173
        mmWidth = 13494
        BandType = 4
      end
      object lblCDetalleRegimen: TppDBText
        UserName = 'lblCDetalleRegimen'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DetReg'
        DataPipeline = ppCertRet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 4233
        mmLeft = 31750
        mmTop = 77523
        mmWidth = 12965
        BandType = 4
      end
      object lblCNroOrdenDePago: TppDBText
        UserName = 'lblCNroOrdenDePago'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NroPag'
        DataPipeline = ppCertRet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 4498
        mmLeft = 82550
        mmTop = 83608
        mmWidth = 12965
        BandType = 4
      end
      object lblCMontoOP: TppDBText
        UserName = 'lblCMontoOP'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MontoOP'
        DataPipeline = ppCertRet
        DisplayFormat = '$ 0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 4498
        mmLeft = 100013
        mmTop = 90223
        mmWidth = 16140
        BandType = 4
      end
      object lblCPrcRet1: TppDBText
        UserName = 'lblCPrcRet1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PrcRet1'
        DataPipeline = ppCertRet
        DisplayFormat = '0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 3429
        mmLeft = 11906
        mmTop = 102394
        mmWidth = 11345
        BandType = 4
      end
      object lblCPrcRet2: TppDBText
        UserName = 'lblCPrcRet2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PrcRet2'
        DataPipeline = ppCertRet
        DisplayFormat = '0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 3440
        mmLeft = 11906
        mmTop = 114036
        mmWidth = 11377
        BandType = 4
      end
      object lblCNomARet: TppDBText
        UserName = 'lblCNomARet'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NomAge'
        DataPipeline = ppCertRet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 5122
        mmLeft = 75671
        mmTop = 7938
        mmWidth = 15790
        BandType = 4
      end
      object lblCDocARet: TppDBText
        UserName = 'lblCDocARet'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DocAge'
        DataPipeline = ppCertRet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 5122
        mmLeft = 32279
        mmTop = 13494
        mmWidth = 14224
        BandType = 4
      end
      object lblCDomARet: TppDBText
        UserName = 'lblCDomARet'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DomAge'
        DataPipeline = ppCertRet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 5122
        mmLeft = 32279
        mmTop = 18785
        mmWidth = 15833
        BandType = 4
      end
      object lblCNomSRet: TppDBText
        UserName = 'lblCNomSRet'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NomRet'
        DataPipeline = ppCertRet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 5122
        mmLeft = 75671
        mmTop = 37835
        mmWidth = 14944
        BandType = 4
      end
      object lblCDocSRet: TppDBText
        UserName = 'lblCDocSRet'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DocRet'
        DataPipeline = ppCertRet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 5122
        mmLeft = 32279
        mmTop = 43656
        mmWidth = 13377
        BandType = 4
      end
      object lblCDomSRet: TppDBText
        UserName = 'lblCDomSRet'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DomRet'
        DataPipeline = ppCertRet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 5122
        mmLeft = 32279
        mmTop = 49477
        mmWidth = 14986
        BandType = 4
      end
      object lblCNroIBt: TppLabel
        UserName = 'lblCNroIBt'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Ing.Brutos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11642
        mmTop = 55563
        mmWidth = 25739
        BandType = 4
      end
      object lblCNIBSRet: TppDBText
        UserName = 'lblCNIBSRet'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DocRet2'
        DataPipeline = ppCertRet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 5122
        mmLeft = 38100
        mmTop = 55033
        mmWidth = 15706
        BandType = 4
      end
      object lblCMtoRet1: TppDBText
        UserName = 'lblCMtoRet1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ReteOP1'
        DataPipeline = ppCertRet
        DisplayFormat = '$ 0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 3810
        mmLeft = 34660
        mmTop = 102129
        mmWidth = 13970
        BandType = 4
      end
      object lblCMtoRet2: TppDBText
        UserName = 'lblCMtoRet2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ReteOP2'
        DataPipeline = ppCertRet
        DisplayFormat = '$ 0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 3704
        mmLeft = 34660
        mmTop = 113771
        mmWidth = 14023
        BandType = 4
      end
      object lblCNroOP: TppLabel
        UserName = 'lblCNroOP'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Comprobante que origina la Retenci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4498
        mmLeft = 11642
        mmTop = 83608
        mmWidth = 67733
        BandType = 4
      end
      object lblCDetImp: TppLabel
        UserName = 'lblCDetImp'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Impuesto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4498
        mmLeft = 11642
        mmTop = 71438
        mmWidth = 18246
        BandType = 4
      end
    end
    object fbPieCertRet: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 47096
      mmPrintPosition = 0
      object shpPieCertRet: TppShape
        UserName = 'shpPieCertRet'
        ParentHeight = True
        ParentWidth = True
        mmHeight = 47096
        mmLeft = 0
        mmTop = 0
        mmWidth = 191300
        BandType = 8
      end
      object lblFirma: TppLabel
        UserName = 'lblFirma'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Firma del Agente de Retenci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 14023
        mmTop = 26458
        mmWidth = 48948
        BandType = 8
      end
      object lblCAclaracion: TppLabel
        UserName = 'lblCAclaracion'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Aclaraci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 100806
        mmTop = 26458
        mmWidth = 20108
        BandType = 8
      end
      object lblCCargo: TppLabel
        UserName = 'lblCAclaracion1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 162719
        mmTop = 26458
        mmWidth = 13758
        BandType = 8
      end
      object lblDeclaro: TppLabel
        UserName = 'lblDeclaro'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Color = clSilver
        Border.Style = psSolid
        Border.Visible = True
        Border.Weight = 1.000000000000000000
        Caption = 
          'Declaro que los datos consignados en este Certificado son correc' +
          'tos y completos y que he confeccionado la presente sin omitir ni' +
          ' falsear dato alguno que deba contener, siendo fiel expresi'#243'n de' +
          ' la verdad.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8326
        mmLeft = 12171
        mmTop = 32544
        mmWidth = 165806
        BandType = 8
      end
      object lblMtoLetras1: TppDBText
        UserName = 'lblMtoLetras1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MontoL1'
        DataPipeline = ppCertRet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 3810
        mmLeft = 11906
        mmTop = 3175
        mmWidth = 13293
        BandType = 8
      end
      object lblMtoLetras2: TppDBText
        UserName = 'lblMtoLetras2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MontoL2'
        DataPipeline = ppCertRet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCertRet'
        mmHeight = 3810
        mmLeft = 11906
        mmTop = 8467
        mmWidth = 13293
        BandType = 8
      end
      object lnCertRet1: TppLine
        UserName = 'lnCertRet1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 12700
        mmTop = 24871
        mmWidth = 50536
        BandType = 8
      end
      object lnCertRet2: TppLine
        UserName = 'lnCertRet2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 85461
        mmTop = 24871
        mmWidth = 48419
        BandType = 8
      end
      object lnCertRet3: TppLine
        UserName = 'lnCertRet3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 150813
        mmTop = 24871
        mmWidth = 33867
        BandType = 8
      end
      object lblNroPag: TppSystemVariable
        UserName = 'lblNroPag'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSet
        DisplayFormat = '"Pagin'#225'"  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 87048
        mmTop = 42333
        mmWidth = 11377
        BandType = 8
      end
    end
  end
  object CertRet: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 228
    Top = 8
    object CertRetNroCert: TStringField
      FieldName = 'NroCert'
    end
    object CertRetFechaC: TDateField
      FieldName = 'FechaC'
    end
    object CertRetNomRet: TStringField
      FieldName = 'NomRet'
      Size = 60
    end
    object CertRetDocRet: TStringField
      FieldName = 'DocRet'
      Size = 13
    end
    object CertRetDomRet: TStringField
      FieldName = 'DomRet'
      Size = 60
    end
    object CertRetDetImp: TStringField
      FieldName = 'DetImp'
      Size = 30
    end
    object CertRetDetReg: TStringField
      DisplayWidth = 80
      FieldName = 'DetReg'
      Size = 80
    end
    object CertRetNroPag: TStringField
      FieldName = 'NroPag'
      Size = 40
    end
    object CertRetMontoOP: TCurrencyField
      FieldName = 'MontoOP'
    end
    object CertRetPrcRet1: TFloatField
      FieldName = 'PrcRet1'
    end
    object CertRetReteOP1: TCurrencyField
      FieldName = 'ReteOP1'
    end
    object CertRetPrcRet2: TFloatField
      FieldName = 'PrcRet2'
    end
    object CertRetReteOP2: TCurrencyField
      FieldName = 'ReteOP2'
    end
    object CertRetTotRete: TCurrencyField
      FieldName = 'TotRete'
    end
    object CertRetMontoL1: TStringField
      FieldName = 'MontoL1'
      Size = 80
    end
    object CertRetMontoL2: TStringField
      FieldName = 'MontoL2'
      Size = 80
    end
    object CertRetNomAge: TStringField
      FieldName = 'NomAge'
      Size = 50
    end
    object CertRetDocAge: TStringField
      FieldName = 'DocAge'
      Size = 13
    end
    object CertRetDomAge: TStringField
      FieldName = 'DomAge'
      Size = 80
    end
    object CertRetDocRet2: TStringField
      FieldName = 'DocRet2'
      Size = 15
    end
  end
  object dsCertRet: TDataSource
    DataSet = CertRet
    Left = 261
    Top = 8
  end
  object qDatosCert: TMDOQuery
    Database = dmGestion.dbGestion
    Transaction = dmSaveFile.trVerComp
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'Select IDORDEN, ENTIDAD, FECHAOP, NROCOMPOP, TOTALOP, '
      '           RETENCIONES, NETOOP, RETENCIONI, RETENCIONG, '
      '           RETENCIONB, PRCRETG, PRCRETI, PRCRETB1, PRCRETB2, '
      '           RETENCIONS, PRCRETS, RETENCIONH, NROCERTIVA,'
      '           NROCERTGAN, NROCERTIBT, NROCERTSES, IDEMPRESA'
      'From ORDENES'
      'Where IDORDEN =:IdOrden')
    Left = 294
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IdOrden'
        ParamType = ptUnknown
      end>
    object qDatosCertIDORDEN: TIntegerField
      FieldName = 'IDORDEN'
      Origin = '"ORDENES"."IDORDEN"'
      Required = True
    end
    object qDatosCertENTIDAD: TIntegerField
      FieldName = 'ENTIDAD'
      Origin = '"ORDENES"."ENTIDAD"'
    end
    object qDatosCertFECHAOP: TDateField
      FieldName = 'FECHAOP'
      Origin = '"ORDENES"."FECHAOP"'
    end
    object qDatosCertNROCOMPOP: TMDOStringField
      FieldName = 'NROCOMPOP'
      Origin = '"ORDENES"."NROCOMPOP"'
      Size = 13
    end
    object qDatosCertTOTALOP: TMDOBCDField
      FieldName = 'TOTALOP'
      Origin = '"ORDENES"."TOTALOP"'
      Precision = 18
      Size = 4
    end
    object qDatosCertRETENCIONES: TMDOBCDField
      FieldName = 'RETENCIONES'
      Origin = '"ORDENES"."RETENCIONES"'
      Precision = 18
      Size = 4
    end
    object qDatosCertNETOOP: TMDOBCDField
      FieldName = 'NETOOP'
      Origin = '"ORDENES"."NETOOP"'
      Precision = 18
      Size = 4
    end
    object qDatosCertRETENCIONI: TMDOBCDField
      FieldName = 'RETENCIONI'
      Origin = '"ORDENES"."RETENCIONI"'
      Precision = 18
      Size = 4
    end
    object qDatosCertRETENCIONG: TMDOBCDField
      FieldName = 'RETENCIONG'
      Origin = '"ORDENES"."RETENCIONG"'
      Precision = 18
      Size = 4
    end
    object qDatosCertRETENCIONB: TMDOBCDField
      FieldName = 'RETENCIONB'
      Origin = '"ORDENES"."RETENCIONB"'
      Precision = 18
      Size = 4
    end
    object qDatosCertPRCRETG: TMDOBCDField
      FieldName = 'PRCRETG'
      Origin = '"ORDENES"."PRCRETG"'
      Precision = 18
      Size = 4
    end
    object qDatosCertPRCRETI: TMDOBCDField
      FieldName = 'PRCRETI'
      Origin = '"ORDENES"."PRCRETI"'
      Precision = 18
      Size = 4
    end
    object qDatosCertPRCRETB1: TMDOBCDField
      FieldName = 'PRCRETB1'
      Origin = '"ORDENES"."PRCRETB1"'
      Precision = 18
      Size = 4
    end
    object qDatosCertPRCRETB2: TMDOBCDField
      FieldName = 'PRCRETB2'
      Origin = '"ORDENES"."PRCRETB2"'
      Precision = 18
      Size = 4
    end
    object qDatosCertRETENCIONS: TMDOBCDField
      FieldName = 'RETENCIONS'
      Origin = '"ORDENES"."RETENCIONS"'
      Precision = 18
      Size = 4
    end
    object qDatosCertPRCRETS: TMDOBCDField
      FieldName = 'PRCRETS'
      Origin = '"ORDENES"."PRCRETS"'
      Precision = 18
      Size = 4
    end
    object qDatosCertRETENCIONH: TMDOBCDField
      FieldName = 'RETENCIONH'
      Origin = '"ORDENES"."RETENCIONH"'
      Precision = 18
      Size = 4
    end
    object qDatosCertNROCERTIVA: TMDOStringField
      FieldName = 'NROCERTIVA'
      Origin = '"ORDENES"."NROCERTIVA"'
      Size = 16
    end
    object qDatosCertNROCERTGAN: TMDOStringField
      FieldName = 'NROCERTGAN'
      Origin = '"ORDENES"."NROCERTGAN"'
      Size = 16
    end
    object qDatosCertNROCERTIBT: TMDOStringField
      FieldName = 'NROCERTIBT'
      Origin = '"ORDENES"."NROCERTIBT"'
      Size = 16
    end
    object qDatosCertNROCERTSES: TMDOStringField
      FieldName = 'NROCERTSES'
      Origin = '"ORDENES"."NROCERTSES"'
      Size = 16
    end
    object qDatosCertIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
    end
  end
  object ppCertRet: TppDBPipeline
    DataSource = dsCertRet
    UserName = 'CertRet'
    Left = 195
    Top = 9
    object ppCertRetppField1: TppField
      FieldAlias = 'NroCert'
      FieldName = 'NroCert'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField2: TppField
      FieldAlias = 'FechaC'
      FieldName = 'FechaC'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField3: TppField
      FieldAlias = 'NomRet'
      FieldName = 'NomRet'
      FieldLength = 0
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField4: TppField
      FieldAlias = 'DocRet'
      FieldName = 'DocRet'
      FieldLength = 0
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField5: TppField
      FieldAlias = 'DomRet'
      FieldName = 'DomRet'
      FieldLength = 0
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField6: TppField
      FieldAlias = 'DetImp'
      FieldName = 'DetImp'
      FieldLength = 0
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField7: TppField
      FieldAlias = 'DetReg'
      FieldName = 'DetReg'
      FieldLength = 0
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField8: TppField
      FieldAlias = 'NroPag'
      FieldName = 'NroPag'
      FieldLength = 0
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField9: TppField
      FieldAlias = 'MontoOP'
      FieldName = 'MontoOP'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField10: TppField
      FieldAlias = 'PrcRet1'
      FieldName = 'PrcRet1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField11: TppField
      FieldAlias = 'ReteOP1'
      FieldName = 'ReteOP1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField12: TppField
      FieldAlias = 'PrcRet2'
      FieldName = 'PrcRet2'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField13: TppField
      FieldAlias = 'ReteOP2'
      FieldName = 'ReteOP2'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField14: TppField
      FieldAlias = 'TotRete'
      FieldName = 'TotRete'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField15: TppField
      FieldAlias = 'MontoL1'
      FieldName = 'MontoL1'
      FieldLength = 0
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField16: TppField
      FieldAlias = 'MontoL2'
      FieldName = 'MontoL2'
      FieldLength = 0
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField17: TppField
      FieldAlias = 'NomAge'
      FieldName = 'NomAge'
      FieldLength = 0
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField18: TppField
      FieldAlias = 'DocAge'
      FieldName = 'DocAge'
      FieldLength = 0
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField19: TppField
      FieldAlias = 'DomAge'
      FieldName = 'DomAge'
      FieldLength = 0
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppCertRetppField20: TppField
      FieldAlias = 'DocRet2'
      FieldName = 'DocRet2'
      FieldLength = 10
      DisplayWidth = 10
      Position = 19
    end
  end
end
