object WS600: TWS600
  Left = 0
  Top = 0
  Width = 824
  Height = 305
  TabOrder = 0
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 393
    Height = 225
    Caption = 'Wind'
    Color = clBackground
    ParentColor = False
    TabOrder = 0
    object WDMeter: TVrAngularMeter
      Left = 8
      Top = 16
      Width = 180
      Height = 180
      MaxValue = 360
      Decimals = 0
      Angle = 180
      AngleOffset = 360
      Percent1 = 0
      Percent2 = 100
      Labels = 8
      LabelsFont.Charset = DEFAULT_CHARSET
      LabelsFont.Color = clWhite
      LabelsFont.Height = -11
      LabelsFont.Name = 'MS Sans Serif'
      LabelsFont.Style = []
      Transparent = True
      Caption = '|Direction'
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object WSMeter: TVrAngularMeter
      Left = 192
      Top = 24
      Width = 180
      Height = 180
      MaxValue = 75
      Decimals = 0
      LabelsFont.Charset = DEFAULT_CHARSET
      LabelsFont.Color = clWhite
      LabelsFont.Height = -11
      LabelsFont.Name = 'MS Sans Serif'
      LabelsFont.Style = []
      Transparent = True
      Caption = '|Speed'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object Label1: TLabel
      Left = 123
      Top = 195
      Width = 39
      Height = 13
      Caption = 'Degress'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 315
      Top = 195
      Width = 18
      Height = 13
      Caption = 'm/s'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 144
      Top = 17
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
        0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
        0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
        CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
        CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
        CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
        CCC77777777777777377330333333333CCC3337F33333333737F370333333333
        0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object SpeedButton2: TSpeedButton
      Left = 352
      Top = 16
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
        0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
        0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
        CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
        CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
        CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
        CCC77777777777777377330333333333CCC3337F33333333737F370333333333
        0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object WDEdit: TVrStrEdit
      Left = 69
      Top = 192
      Width = 49
      Height = 21
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0.0'
    end
    object WSEdit: TVrStrEdit
      Left = 261
      Top = 192
      Width = 49
      Height = 21
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0.0'
    end
  end
  object GroupBox2: TGroupBox
    Left = 400
    Top = 8
    Width = 401
    Height = 297
    Caption = 'PTU'
    Color = clBackground
    ParentColor = False
    TabOrder = 1
    object TMeter: TvrThermoMeter
      Left = 8
      Top = 16
      Width = 97
      Height = 230
      ColorAfter = clBlue
      Scale.Color = clBlack
      Scale.FormatText = '%s'
      Scale.Max = 100
      Scale.Min = -50
      Scale.Offset = 20
      Scale.Step = 20
      Scale.SmallStep = 4
      Scale.HeightMax = 14
      Scale.HeightMin = 8
      SetPoint.Value = 6
      SetPoint.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003333
        3C00333CCC003CCCCC00CCCCCC003CCCCC00333CCC0033333C0033333300}
      SetPoint.Shape = voTriangle
      SetPoint.Color = clYellow
      SetPoint.Visible = False
      PeakMin.Value = 5
      PeakMin.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003333
        3C00333CCC003CCCCC00CCCCCC003CCCCC00333CCC0033333C0033333300}
      PeakMin.Shape = voTriangle
      PeakMin.Color = clYellow
      PeakMin.Visible = False
      PeakMax.Value = 140
      PeakMax.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003333
        3C00333CCC003CCCCC00CCCCCC003CCCCC00333CCC0033333C0033333300}
      PeakMax.Shape = voTriangle
      PeakMax.Color = clAqua
      PeakMax.Visible = False
      Value.Value = 10.5
      Value.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003333
        3C00333CCC003CCCCC00CCCCCC003CCCCC00333CCC0033333C0033333300}
      Value.Shape = voLine
      Value.Color = clAqua
      Value.Visible = False
      Caption = 'TMeter'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 67
      Top = 267
      Width = 11
      Height = 13
      Caption = 'C'#176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 11
      Top = 251
      Width = 60
      Height = 13
      Caption = 'Temperature'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object HMeter: TvrLineMeter
      Left = 112
      Top = 16
      Width = 90
      Height = 230
      Scale.FormatText = '%s'
      Scale.Max = 100
      Scale.Offset = 20
      Scale.Step = 20
      Scale.SmallStep = 10
      Scale.HeightMax = 14
      Scale.HeightMin = 8
      Region1.Color = clAqua
      Region1.FromValue = 100
      Region2.Color = clGreen
      Region2.FromValue = 100
      Region2.ToValue = 100
      Region2.Visible = False
      Region3.Color = clRed
      Region3.FromValue = 116.666666666667
      Region3.ToValue = 150
      Region3.Visible = False
      SetPoint.Value = 33.3333333333333
      SetPoint.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003C33
        33003CC333003CCC33003CCCC3003CCC33003CC333003C33330033333300}
      SetPoint.Shape = voTriangle
      SetPoint.Color = clBlue
      SetPoint.Visible = False
      PeakMin.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003C33
        33003CC333003CCC33003CCCC3003CCC33003CC333003C33330033333300}
      PeakMin.Shape = voTriangle
      PeakMin.Color = clRed
      PeakMin.Visible = False
      PeakMax.Value = 140
      PeakMax.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003C33
        33003CC333003CCC33003CCCC3003CCC33003CC333003C33330033333300}
      PeakMax.Shape = voTriangle
      PeakMax.Color = clYellow
      PeakMax.Visible = False
      Value.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003C33
        33003CC333003CCC33003CCCC3003CCC33003CC333003C33330033333300}
      Value.Shape = voTriangle
      Value.Color = clRed
      Value.Visible = True
      Caption = 'HMeter'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object PMeter: TvrLineMeter
      Left = 208
      Top = 16
      Width = 90
      Height = 230
      Scale.FormatText = '%s'
      Scale.Max = 1500
      Scale.Offset = 20
      Scale.Step = 250
      Scale.SmallStep = 100
      Scale.HeightMax = 14
      Scale.HeightMin = 8
      Region1.Color = clOlive
      Region1.FromValue = 1500
      Region2.Color = clGreen
      Region2.FromValue = 83.3333333333333
      Region2.ToValue = 116.666666666667
      Region2.Visible = False
      Region3.Color = clRed
      Region3.FromValue = 116.666666666667
      Region3.ToValue = 150
      Region3.Visible = False
      SetPoint.Value = 33.3333333333333
      SetPoint.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003C33
        33003CC333003CCC33003CCCC3003CCC33003CC333003C33330033333300}
      SetPoint.Shape = voBitmap
      SetPoint.Color = clBlue
      SetPoint.Visible = False
      PeakMin.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003C33
        33003CC333003CCC33003CCCC3003CCC33003CC333003C33330033333300}
      PeakMin.Shape = voTriangle
      PeakMin.Color = clRed
      PeakMin.Visible = False
      PeakMax.Value = 140
      PeakMax.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003C33
        33003CC333003CCC33003CCCC3003CCC33003CC333003C33330033333300}
      PeakMax.Shape = voTriangle
      PeakMax.Color = clYellow
      PeakMax.Visible = False
      Value.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003C33
        33003CC333003CCC33003CCCC3003CCC33003CC333003C33330033333300}
      Value.Shape = voTriangle
      Value.Color = clRed
      Value.Visible = True
      Caption = 'vrLineMeter1'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object RMeter: TvrLineMeter
      Left = 304
      Top = 16
      Width = 90
      Height = 230
      Scale.FormatText = '%s'
      Scale.Max = 300
      Scale.Offset = 20
      Scale.Step = 50
      Scale.SmallStep = 10
      Scale.HeightMax = 14
      Scale.HeightMin = 8
      Region1.Color = clYellow
      Region1.ToValue = 300
      Region2.Color = clGreen
      Region2.ToValue = 300
      Region2.Visible = False
      Region3.Color = clRed
      Region3.FromValue = 116.666666666667
      Region3.ToValue = 150
      Region3.Visible = False
      SetPoint.Value = 33.3333333333333
      SetPoint.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003C33
        33003CC333003CCC33003CCCC3003CCC33003CC333003C33330033333300}
      SetPoint.Shape = voBitmap
      SetPoint.Color = clBlue
      SetPoint.Visible = False
      PeakMin.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003C33
        33003CC333003CCC33003CCCC3003CCC33003CC333003C33330033333300}
      PeakMin.Shape = voTriangle
      PeakMin.Color = clRed
      PeakMin.Visible = False
      PeakMax.Value = 140
      PeakMax.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003C33
        33003CC333003CCC33003CCCC3003CCC33003CC333003C33330033333300}
      PeakMax.Shape = voTriangle
      PeakMax.Color = clYellow
      PeakMax.Visible = False
      Value.Bitmap.Data = {
        9A000000424D9A00000000000000760000002800000006000000090000000100
        0400000000002400000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003C33
        33003CC333003CCC33003CCCC3003CCC33003CC333003C33330033333300}
      Value.Shape = voTriangle
      Value.Color = clRed
      Value.Visible = True
      Caption = 'vrLineMeter1'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 115
      Top = 249
      Width = 40
      Height = 13
      Caption = 'Humidity'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 171
      Top = 269
      Width = 8
      Height = 13
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 265
      Top = 268
      Width = 18
      Height = 13
      Caption = 'hpa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 209
      Top = 247
      Width = 93
      Height = 13
      Caption = 'Barometric pressure'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 363
      Top = 268
      Width = 30
      Height = 13
      Caption = 'W/m2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 307
      Top = 249
      Width = 86
      Height = 13
      Caption = 'Radiation intensity'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 10
      Top = 223
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
        0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
        0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
        CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
        CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
        CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
        CCC77777777777777377330333333333CCC3337F33333333737F370333333333
        0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object SpeedButton4: TSpeedButton
      Left = 178
      Top = 223
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
        0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
        0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
        CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
        CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
        CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
        CCC77777777777777377330333333333CCC3337F33333333737F370333333333
        0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object SpeedButton5: TSpeedButton
      Left = 274
      Top = 223
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
        0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
        0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
        CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
        CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
        CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
        CCC77777777777777377330333333333CCC3337F33333333737F370333333333
        0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object SpeedButton6: TSpeedButton
      Left = 370
      Top = 223
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
        0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
        0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
        CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
        CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
        CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
        CCC77777777777777377330333333333CCC3337F33333333737F370333333333
        0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object TEdit: TVrStrEdit
      Left = 13
      Top = 264
      Width = 49
      Height = 21
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0.0'
    end
    object HEdit: TVrStrEdit
      Left = 117
      Top = 262
      Width = 49
      Height = 21
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0.0'
    end
    object PEdit: TVrStrEdit
      Left = 211
      Top = 261
      Width = 49
      Height = 21
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0.0'
    end
    object REdit: TVrStrEdit
      Left = 309
      Top = 262
      Width = 49
      Height = 21
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '0.0'
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 232
    Width = 393
    Height = 73
    Caption = 'Rainfall'
    Color = clBackground
    ParentColor = False
    TabOrder = 2
    object Label11: TLabel
      Left = 19
      Top = 17
      Width = 44
      Height = 13
      Caption = '1 Minute:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 119
      Top = 18
      Width = 16
      Height = 13
      Caption = 'mm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 119
      Top = 42
      Width = 16
      Height = 13
      Caption = 'mm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 19
      Top = 41
      Width = 41
      Height = 13
      Caption = '1 Houre:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 279
      Top = 18
      Width = 16
      Height = 13
      Caption = 'mm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 279
      Top = 42
      Width = 16
      Height = 13
      Caption = 'mm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 179
      Top = 41
      Width = 35
      Height = 13
      Caption = 'History:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 179
      Top = 17
      Width = 46
      Height = 13
      Caption = '24 Horse:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RM: TVrStrEdit
      Left = 66
      Top = 14
      Width = 49
      Height = 21
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0.0'
    end
    object RH: TVrStrEdit
      Left = 66
      Top = 38
      Width = 49
      Height = 21
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0.0'
    end
    object RD: TVrStrEdit
      Left = 226
      Top = 14
      Width = 49
      Height = 21
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0.0'
    end
    object RT: TVrStrEdit
      Left = 226
      Top = 38
      Width = 49
      Height = 21
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '0.0'
    end
  end
end
