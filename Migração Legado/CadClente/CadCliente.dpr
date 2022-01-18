program CadCliente;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FrmPrincipal},
  UDtmDados in 'Dtm\UDtmDados.pas' {DtmDados: TDataModule},
  UCliente in 'Cadastro\UCliente.pas' {FrmCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDtmDados, DtmDados);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
