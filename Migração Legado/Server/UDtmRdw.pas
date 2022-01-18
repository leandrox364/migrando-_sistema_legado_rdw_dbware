unit UDtmRdw;

interface

uses
  System.SysUtils, System.Classes, uRESTDWBase,
  uDWDatamodule, ZAbstractConnection, ZConnection, uRESTDWPoolerDB,
  uRESTDWDriverZEOS, uDWAbout;

type
  TDtmRDW = class(TServerMethodDataModule)
    RESTDWPoolerDBZeus: TRESTDWPoolerDB;
    RESTDWDriverZeos1: TRESTDWDriverZeos;
    ZConn: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmRDW: TDtmRDW;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
