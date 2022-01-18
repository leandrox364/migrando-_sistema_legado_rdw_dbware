program Server;

uses
  Vcl.Forms,
  UPrincipalServer in 'UPrincipalServer.pas' {FrmPrincipalServer},
  UDtmRdw in 'UDtmRdw.pas' {DtmRDW: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipalServer, FrmPrincipalServer);
  Application.CreateForm(TDtmRDW, DtmRDW);
  Application.Run;
end.
