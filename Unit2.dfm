object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 336
  Top = 206
  Height = 150
  Width = 218
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Program Files (x86)\Borland\libmysql.dll'
    Left = 24
    Top = 48
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      ' Select * from kustomer')
    Params = <>
    Left = 80
    Top = 8
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 136
    Top = 48
  end
end
