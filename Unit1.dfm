object Form1: TForm1
  Left = 515
  Top = 181
  Width = 851
  Height = 555
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
    Width = 835
    Height = 499
    ActivePage = TabSheet2
    Align = alClient
    MultiLine = True
    TabIndex = 1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1043#1083#1072#1074#1085#1072#1103
      object PageControlDevices: TPageControl
        Left = 0
        Top = 0
        Width = 827
        Height = 471
        Align = alClient
        MultiLine = True
        TabOrder = 0
        TabPosition = tpLeft
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1086#1082#1072#1079#1072#1090#1077#1083#1080
      ImageIndex = 1
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 827
        Height = 471
        Align = alClient
        Caption = #1055#1086#1082#1072#1079#1072#1090#1077#1083#1080
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 225
          Top = 15
          Width = 600
          Height = 454
          Align = alClient
          DataSource = DataModule2.DataSourceTag
          Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid3CellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'TagName'
              Title.Caption = #1044#1072#1090#1095#1080#1082
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Date_value'
              Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Units'
              Title.Caption = #1045#1076'.'#1048#1079#1084'.'
              Visible = True
            end>
        end
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 223
          Height = 454
          Align = alLeft
          DataSource = DataModule2.DataSourceDevices
          Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NameDevice'
              Title.Caption = #1059#1089#1090#1088#1086#1081#1089#1090#1074#1086
              Width = 200
              Visible = True
            end>
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1057#1086#1073#1099#1090#1080#1103
      ImageIndex = 2
      object Panel1: TPanel
        Left = 0
        Top = 400
        Width = 827
        Height = 71
        Align = alBottom
        TabOrder = 0
        object RadioGroup1: TRadioGroup
          Left = 1
          Top = 1
          Width = 200
          Height = 69
          Align = alLeft
          Caption = #1044#1072#1090#1072
          ItemIndex = 0
          Items.Strings = (
            #1042#1089#1077
            #1057#1077#1075#1086#1076#1085#1103
            #1055#1077#1088#1080#1091#1076)
          TabOrder = 0
        end
        object RadioGroup2: TRadioGroup
          Left = 201
          Top = 1
          Width = 104
          Height = 69
          Align = alLeft
          Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
          ItemIndex = 0
          Items.Strings = (
            #1059#1073#1099#1074#1072#1085#1080#1077
            #1042#1086#1079#1088#1086#1089#1090#1072#1085#1080#1077)
          TabOrder = 1
        end
        object Button2: TButton
          Left = 312
          Top = 40
          Width = 75
          Height = 25
          Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
          TabOrder = 2
          OnClick = Button2Click
        end
        object DateTimePicker1: TDateTimePicker
          Left = 120
          Top = 16
          Width = 73
          Height = 21
          CalAlignment = dtaLeft
          Date = 43364.5857077546
          Time = 43364.5857077546
          DateFormat = dfShort
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 3
        end
        object DateTimePicker2: TDateTimePicker
          Left = 120
          Top = 40
          Width = 73
          Height = 21
          CalAlignment = dtaLeft
          Date = 43364.5857077546
          Time = 43364.5857077546
          DateFormat = dfShort
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 4
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 827
        Height = 400
        Align = alClient
        DataSource = DataModule2.DataSourceAlarmHistory
        Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'NameDevice'
            Title.Caption = #1059#1089#1090#1088#1086#1081#1089#1090#1074#1086
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TagName'
            Title.Caption = #1044#1072#1090#1095#1080#1082
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NameAlarm'
            Title.Caption = #1057#1086#1073#1099#1090#1080#1077
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATETIME'
            Title.Caption = #1044#1072#1090#1072'/'#1042#1088#1077#1084#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALUES'
            Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Units'
            Title.Caption = #1045#1076'.'#1048#1079#1084'.'
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      ImageIndex = 3
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 827
        Height = 49
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
          Left = 120
          Top = 19
          Width = 51
          Height = 13
          Caption = #1057#1082#1086#1088#1086#1089#1090#1100':'
        end
        object SpeedButton1: TSpeedButton
          Left = 256
          Top = 16
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
        object CBBaude: TComboBox
          Left = 176
          Top = 16
          Width = 65
          Height = 21
          ItemHeight = 13
          TabOrder = 0
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
          Left = 48
          Top = 16
          Width = 65
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Text = 'CBNport'
        end
      end
      object GroupBox2: TGroupBox
        Left = 380
        Top = 49
        Width = 368
        Height = 422
        Align = alLeft
        Caption = #1044#1072#1090#1095#1080#1082#1080
        TabOrder = 1
        object Panel2: TPanel
          Left = 2
          Top = 379
          Width = 364
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Ctl3D = False
          ParentBiDiMode = False
          ParentCtl3D = False
          TabOrder = 0
          object DBNavigator1: TDBNavigator
            Left = 48
            Top = 8
            Width = 240
            Height = 25
            DataSource = DataModule2.DataSourceTag
            TabOrder = 0
          end
        end
        object DBGrid4: TDBGrid
          Left = 2
          Top = 15
          Width = 364
          Height = 364
          Align = alClient
          DataSource = DataModule2.DataSourceTag
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TagName'
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Memory_Type'
              Title.Caption = #1058#1080#1087' '#1079#1072#1087#1088#1086#1089#1072
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Offset'
              Title.Caption = #1057#1084#1077#1097#1077#1085#1080#1077
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Date_Type'
              Title.Caption = #1058#1080#1087' '#1076#1072#1085#1085#1099#1093
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tenths'
              Title.Caption = #1044#1077#1089#1103#1090#1082#1080
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Units'
              Title.Caption = #1045#1076'.'#1048#1079#1084
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Enabled'
              Title.Caption = #1048#1089#1087'.'
              Visible = True
            end>
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 49
        Width = 380
        Height = 422
        Align = alLeft
        Caption = #1059#1089#1090#1088#1086#1081#1089#1090#1074#1072
        TabOrder = 2
        object Panel3: TPanel
          Left = 2
          Top = 379
          Width = 376
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Ctl3D = False
          ParentBiDiMode = False
          ParentCtl3D = False
          TabOrder = 0
          object DBNavigator2: TDBNavigator
            Left = 64
            Top = 8
            Width = 240
            Height = 25
            DataSource = DataModule2.DataSourceDevices
            TabOrder = 0
          end
        end
        object DBGrid5: TDBGrid
          Left = 2
          Top = 15
          Width = 376
          Height = 364
          Align = alClient
          DataSource = DataModule2.DataSourceDevices
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NameDevice'
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Address'
              Title.Caption = #1040#1076#1088#1077#1089
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Enabled'
              Title.Caption = #1048#1089#1087
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WidgetType'
              Title.Caption = #1058#1080#1087' '#1074#1080#1076#1078#1077#1090#1072
              Visible = True
            end>
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 499
    Width = 835
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
