object Form1: TForm1
  Left = 424
  Top = 145
  Width = 890
  Height = 491
  Caption = 'EKMonitoring'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 874
    Height = 435
    ActivePage = TabSheet4
    Align = alClient
    MultiLine = True
    TabIndex = 3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1043#1083#1072#1074#1085#1072#1103
      object PageControlDevices: TPageControl
        Left = 0
        Top = 0
        Width = 866
        Height = 407
        Align = alClient
        MultiLine = True
        TabOrder = 0
        TabPosition = tpLeft
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 185
        Height = 407
        Align = alLeft
        Caption = #1059#1089#1090#1088#1086#1081#1089#1090#1074#1086
        TabOrder = 0
        Visible = False
      end
      object GroupBox3: TGroupBox
        Left = 185
        Top = 0
        Width = 681
        Height = 407
        Align = alClient
        Caption = #1055#1086#1082#1072#1079#1072#1090#1077#1083#1080
        TabOrder = 1
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 677
          Height = 120
          Align = alClient
          DataSource = DataModule2.DataSource1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NameDevice'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Address'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TagName'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Memory_Type'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Offset'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Date_Type'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tenths'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Date_value'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Units'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Enabled'
              Visible = True
            end>
        end
        object GroupBox4: TGroupBox
          Left = 2
          Top = 135
          Width = 677
          Height = 270
          Align = alBottom
          TabOrder = 1
          object GroupBox5: TGroupBox
            Left = 2
            Top = 216
            Width = 673
            Height = 52
            Align = alBottom
            TabOrder = 0
            object SpeedButton2: TSpeedButton
              Left = 16
              Top = 16
              Width = 47
              Height = 22
              GroupIndex = 1
              Caption = 'Live'
            end
            object SpeedButton3: TSpeedButton
              Left = 72
              Top = 16
              Width = 47
              Height = 22
              GroupIndex = 1
              Caption = '1h'
            end
            object SpeedButton4: TSpeedButton
              Left = 128
              Top = 16
              Width = 47
              Height = 22
              GroupIndex = 1
              Caption = '6h'
            end
            object SpeedButton5: TSpeedButton
              Left = 184
              Top = 16
              Width = 47
              Height = 22
              GroupIndex = 1
              Caption = '1d'
            end
            object SpeedButton6: TSpeedButton
              Left = 240
              Top = 16
              Width = 47
              Height = 22
              GroupIndex = 1
              Caption = '1m'
            end
            object SpeedButton7: TSpeedButton
              Left = 296
              Top = 16
              Width = 47
              Height = 22
              GroupIndex = 1
              Caption = '3m'
            end
            object SpeedButton8: TSpeedButton
              Left = 352
              Top = 16
              Width = 47
              Height = 22
              GroupIndex = 1
              Caption = '6m'
            end
            object SpeedButton9: TSpeedButton
              Left = 408
              Top = 16
              Width = 47
              Height = 22
              GroupIndex = 1
              Caption = '1y'
            end
          end
          object DBChart1: TDBChart
            Left = 2
            Top = 15
            Width = 673
            Height = 201
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'TDBChart')
            View3D = False
            Align = alClient
            TabOrder = 1
            AutoSize = True
            object Series1: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              DataSource = DataModule2.ADOTableChart
              SeriesColor = clRed
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = True
              XValues.Name = 'X'
              XValues.Multiplier = 1
              XValues.Order = loAscending
              XValues.ValueSource = 'DateTime'
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1
              YValues.Order = loNone
              YValues.ValueSource = 'DateValue'
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1046#1091#1088#1085#1072#1083
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      ImageIndex = 3
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 866
        Height = 121
        Align = alTop
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1086#1088#1090#1072
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 20
          Width = 37
          Height = 13
          Caption = #1053#1086#1084#1077#1088':'
        end
        object Label2: TLabel
          Left = 8
          Top = 43
          Width = 51
          Height = 13
          Caption = #1057#1082#1086#1088#1086#1089#1090#1100':'
        end
        object SpeedButton1: TSpeedButton
          Left = 24
          Top = 72
          Width = 105
          Height = 25
          AllowAllUp = True
          GroupIndex = 1
          Caption = #1054#1090#1082#1088#1099#1090#1100' '#1087#1086#1088#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33003333333333333300300000000333330000B7B7B7B03333000B0B7B7B7B03
            33000BB0B7B7B7B033000FBB0000000033000BFB0B0B0B0333000FBFBFBFB003
            33000BFBFBF00033330030BFBF03333333003800008333333300333333333333
            33003333333333333300}
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object Button1: TButton
          Left = 136
          Top = 72
          Width = 75
          Height = 25
          Caption = 'Test'
          TabOrder = 0
          OnClick = Button1Click
        end
        object CBBaude: TComboBox
          Left = 72
          Top = 40
          Width = 65
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            '150'
            '300'
            '600'
            '1200'
            '2400'
            '4800'
            '9600'
            '14400'
            '19200'
            '38400'
            '57600'
            '115200')
        end
        object CBNport: TComboBox
          Left = 72
          Top = 16
          Width = 65
          Height = 21
          ItemHeight = 13
          TabOrder = 2
          Text = 'CBNport'
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 435
    Width = 874
    Height = 17
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end>
    SimplePanel = False
  end
end
