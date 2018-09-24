object PM100: TPM100
  Left = 0
  Top = 0
  Width = 717
  Height = 389
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 389
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object GRBox: TGroupBox
      Left = 0
      Top = 0
      Width = 201
      Height = 297
      Align = alTop
      Caption = 'PTU'
      Color = clBackground
      ParentColor = False
      TabOrder = 0
      object Gaz1: TvrLineMeter
        Left = 8
        Top = 16
        Width = 90
        Height = 230
        Scale.Decimals = 1
        Scale.FormatText = '%s'
        Scale.Max = 100
        Scale.Min = 50
        Scale.Offset = 20
        Scale.Step = 20
        Scale.SmallStep = 10
        Scale.HeightMax = 14
        Scale.HeightMin = 8
        Region1.Color = clAqua
        Region1.FromValue = 100
        Region1.ToValue = 83.3333333333333
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
        PeakMin.Value = 70
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
        Value.Value = 100
        Value.Bitmap.Data = {
          9A000000424D9A00000000000000760000002800000006000000090000000100
          0400000000002400000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333003C33
          33003CC333003CCC33003CCCC3003CCC33003CC333003C33330033333300}
        Value.Shape = voTriangle
        Value.Color = clRed
        Value.Visible = True
        Caption = 'Gaz1'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Gaz2: TvrLineMeter
        Left = 104
        Top = 16
        Width = 90
        Height = 230
        Scale.Decimals = 1
        Scale.FormatText = '%s'
        Scale.Max = 1500
        Scale.Min = 50
        Scale.Offset = 20
        Scale.Step = 250
        Scale.SmallStep = 100
        Scale.HeightMax = 14
        Scale.HeightMin = 8
        Region1.Color = clOlive
        Region1.FromValue = 1500
        Region1.ToValue = 83.3333333333333
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
        PeakMin.Value = 70
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
        Value.Value = 100
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
      object Gaz1Label: TLabel
        Left = 11
        Top = 249
        Width = 15
        Height = 13
        Caption = 'CO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 67
        Top = 269
        Width = 33
        Height = 13
        Caption = 'mg/m3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 161
        Top = 268
        Width = 33
        Height = 13
        Caption = 'mg/m3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Gaz2Label: TLabel
        Left = 105
        Top = 247
        Width = 21
        Height = 13
        Caption = 'SO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 74
        Top = 219
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
      object SpeedButton3: TSpeedButton
        Left = 170
        Top = 219
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
      object Gaz1Edit: TVrStrEdit
        Left = 13
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
        TabOrder = 0
        Text = '0.0'
      end
      object Gaz2Edit: TVrStrEdit
        Left = 107
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
        TabOrder = 1
        Text = '0.0'
      end
    end
  end
end
