object FormPlot: TFormPlot
  Left = 560
  Top = 609
  Width = 685
  Height = 223
  Caption = 'Chart'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inline Plotter1: TPlotter
    Left = 0
    Top = 0
    Width = 669
    Height = 184
    Align = alClient
    TabOrder = 0
    inherited Panel1: TPanel
      Top = 143
      Width = 669
    end
    inherited DBChart3: TDBChart
      Width = 669
      Height = 143
      inherited LineSeries2: TLineSeries
        DataSource = Plotter1.ADO
        XValues.DateTime = True
        XValues.ValueSource = 'DateTime'
        YValues.ValueSource = 'DateValue'
      end
    end
    inherited ADO: TADOTable
      TableName = 'CHARTS_REZ'
    end
  end
end
