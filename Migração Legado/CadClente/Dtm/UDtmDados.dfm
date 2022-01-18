object DtmDados: TDtmDados
  OldCreateOrder = False
  Height = 397
  Width = 368
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
    Left = 48
    Top = 32
  end
  object QryCliente: TZQuery
    Connection = ZConn
    SQL.Strings = (
      'SELECT * FROM CLIENTE'
      'ORDER BY NOME')
    Params = <>
    Left = 128
    Top = 32
    object QryClienteID: TIntegerField
      FieldName = 'ID'
    end
    object QryClienteNOME: TWideStringField
      FieldName = 'NOME'
      Size = 100
    end
    object QryClienteEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object QryClienteIDADE: TIntegerField
      FieldName = 'IDADE'
    end
  end
  object RESTDWDataBaseZeus: TRESTDWDataBase
    Active = False
    Compression = True
    CriptOptions.Use = False
    CriptOptions.Key = 'RDWBASEKEY256'
    AuthenticationOptions.AuthorizationOption = rdwAOBasic
    AuthenticationOptions.OptionParams.AuthDialog = True
    AuthenticationOptions.OptionParams.CustomDialogAuthMessage = 'Protected Space...'
    AuthenticationOptions.OptionParams.Custom404TitleMessage = '(404) The address you are looking for does not exist'
    AuthenticationOptions.OptionParams.Custom404BodyMessage = '404'
    AuthenticationOptions.OptionParams.Custom404FooterMessage = 'Take me back to <a href="./">Home REST Dataware'
    AuthenticationOptions.OptionParams.Username = 'cliente'
    AuthenticationOptions.OptionParams.Password = 'cliente'
    Proxy = False
    ProxyOptions.Port = 8888
    PoolerService = '127.0.0.1'
    PoolerPort = 8082
    PoolerName = 'TDtmRDW.RESTDWPoolerDBZeus'
    StateConnection.AutoCheck = False
    StateConnection.InTime = 1000
    RequestTimeOut = 10000
    ConnectTimeOut = 3000
    EncodeStrings = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    HandleRedirects = False
    RedirectMaximum = 0
    ParamCreate = True
    FailOver = False
    FailOverConnections = <>
    FailOverReplaceDefaults = False
    ClientConnectionDefs.Active = False
    UserAgent = 
      'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, l' +
      'ike Gecko) Chrome/41.0.2227.0 Safari/537.36'
    Left = 56
    Top = 200
  end
  object RESTQryCliente: TRESTDWClientSQL
    Active = False
    AfterPost = RESTQryClienteAfterPost
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    BinaryCompatibleMode = False
    SequenceField = 'ID'
    MasterCascadeDelete = True
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <>
    DataBase = RESTDWDataBaseZeus
    SQL.Strings = (
      'Select * From CLIENTE'
      'ORDER BY NOME')
    UpdateTableName = 'CLIENTE'
    CacheUpdateRecords = True
    AutoCommitData = True
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 184
    Top = 200
    object RESTQryClienteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object RESTQryClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object RESTQryClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object RESTQryClienteIDADE: TIntegerField
      FieldName = 'IDADE'
    end
  end
end
