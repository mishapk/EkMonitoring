object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 374
  Top = 281
  Height = 332
  Width = 557
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=data.d;Mode=ReadWri' +
      'te;Persist Security Info=False; Jet OLEDB:Database Password='#39'st1' +
      '1154'#39
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 16
  end
  object DataSourceTag: TDataSource
    DataSet = ADOTableTag
    Left = 24
    Top = 96
  end
  object ADOTableTag: TADOTable
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    IndexFieldNames = 'ID_DEVICE'
    MasterFields = 'ID'
    MasterSource = DataSourceDevices
    TableName = 'TAG'
    Left = 24
    Top = 160
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 88
    Top = 16
  end
  object DataSourceChart: TDataSource
    DataSet = ADOTableChart
    Left = 248
    Top = 104
  end
  object ADOTableChart: TADOTable
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    IndexFieldNames = 'ID_TAG'
    MasterFields = 'ID'
    MasterSource = DataSourceTag
    TableName = 'CHARTS'
    Left = 248
    Top = 144
  end
  object ADOTableDevice: TADOTable
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'DEVICE'
    Left = 120
    Top = 136
  end
  object DataSourceDevices: TDataSource
    DataSet = ADOTableDevice
    Left = 120
    Top = 96
  end
  object DataSourceAlarmHistory: TDataSource
    DataSet = ADOTableAlarmHistory
    Left = 368
    Top = 112
  end
  object ADOTableAlarmHistory: TADOTable
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'ALARM_HISTORY_RES'
    Left = 368
    Top = 152
  end
end
