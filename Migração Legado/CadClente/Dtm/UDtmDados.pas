unit UDtmDados;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, uDWAbout, uRESTDWPoolerDB,
  uDWConstsData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDtmDados = class(TDataModule)
    ZConn: TZConnection;
    QryCliente: TZQuery;
    QryClienteID: TIntegerField;
    QryClienteNOME: TWideStringField;
    QryClienteEMAIL: TWideStringField;
    QryClienteIDADE: TIntegerField;
    RESTDWDataBaseZeus: TRESTDWDataBase;
    RESTQryCliente: TRESTDWClientSQL;
    RESTQryClienteID: TIntegerField;
    RESTQryClienteNOME: TStringField;
    RESTQryClienteEMAIL: TStringField;
    RESTQryClienteIDADE: TIntegerField;
    procedure RESTQryClienteAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmDados: TDtmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDtmDados.RESTQryClienteAfterPost(DataSet: TDataSet);
begin
  RESTQryCliente.ApplyUpdates(1);

end;

end.
