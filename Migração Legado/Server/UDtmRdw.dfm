object DtmRDW: TDtmRDW
  OldCreateOrder = False
  Encoding = esUtf8
  QueuedRequest = False
  Height = 280
  Width = 364
  object RESTDWPoolerDBZeus: TRESTDWPoolerDB
    RESTDriver = RESTDWDriverZeos1
    Compression = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    Active = True
    PoolerOffMessage = 'RESTPooler not active.'
    ParamCreate = True
    Left = 88
    Top = 40
  end
  object RESTDWDriverZeos1: TRESTDWDriverZeos
    CommitRecords = 100
    Connection = ZConn
    Left = 88
    Top = 96
  end
  object ZConn: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    TransactIsolationLevel = tiReadCommitted
    Connected = True
    HostName = 'LOCALHOST'
    Port = 3050
    Database = 'C:\Projetos\Migra'#231#227'o Legado\DB\CAD_CLIENTE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebirdd-2.5'
    Left = 88
    Top = 160
  end
end
