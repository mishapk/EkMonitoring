object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 370
  Top = 278
  Height = 246
  Width = 386
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
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 24
    Top = 96
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'DEVICE_TAG'
    Left = 24
    Top = 136
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 88
    Top = 16
  end
  object DataSourceChart: TDataSource
    DataSet = ADOTableChart
    Left = 184
    Top = 88
  end
  object ADOTableChart: TADOTable
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    IndexFieldNames = 'ID_TAG'
    MasterFields = 'TAG.ID'
    MasterSource = DataSource1
    TableName = 'CHARTS'
    Left = 184
    Top = 128
  end
end
