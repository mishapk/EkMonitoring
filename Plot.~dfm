object Plotter: TPlotter
  Left = 0
  Top = 0
  Width = 464
  Height = 204
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 163
    Width = 464
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 16
      Top = 8
      Width = 40
      Height = 22
      GroupIndex = 1
      Caption = 'Live'
    end
    object SpeedButton2: TSpeedButton
      Left = 64
      Top = 8
      Width = 40
      Height = 22
      GroupIndex = 1
      Caption = '1h'
    end
    object SpeedButton3: TSpeedButton
      Left = 112
      Top = 8
      Width = 40
      Height = 22
      GroupIndex = 1
      Caption = '6h'
    end
    object SpeedButton4: TSpeedButton
      Left = 160
      Top = 8
      Width = 40
      Height = 22
      GroupIndex = 1
      Caption = '1d'
    end
    object SpeedButton5: TSpeedButton
      Left = 208
      Top = 8
      Width = 40
      Height = 22
      GroupIndex = 1
      Caption = '1w'
    end
    object SpeedButton6: TSpeedButton
      Left = 256
      Top = 8
      Width = 40
      Height = 22
      GroupIndex = 1
      Caption = '1M'
    end
    object SpeedButton7: TSpeedButton
      Left = 304
      Top = 8
      Width = 40
      Height = 22
      GroupIndex = 1
      Caption = '3M'
    end
    object SpeedButton8: TSpeedButton
      Left = 352
      Top = 8
      Width = 40
      Height = 22
      GroupIndex = 1
      Caption = '1Y'
    end
    object SpeedButton9: TSpeedButton
      Left = 400
      Top = 8
      Width = 40
      Height = 22
      GroupIndex = 1
      Caption = 'ALL'
    end
  end
  object DBChart3: TDBChart
    Left = 0
    Top = 0
    Width = 464
    Height = 163
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      '')
    Legend.Visible = False
    View3D = False
    Align = alClient
    Color = clWhite
    TabOrder = 1
    object LineSeries2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO
    Left = 144
    Top = 16
  end
  object ADO: TADOTable
    Connection = DataModule2.ADOConnection
    CursorType = ctStatic
    TableName = 'CHARTS'
    Left = 168
    Top = 16
  end
end
