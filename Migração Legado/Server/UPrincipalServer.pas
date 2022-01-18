unit UPrincipalServer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uDWAbout, uRESTDWBase;

type
  TFrmPrincipalServer = class(TForm)
    Button1: TButton;
    RESTServicePooler1: TRESTServicePooler;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipalServer: TFrmPrincipalServer;

implementation

{$R *.dfm}

uses UDtmRdw;

procedure TFrmPrincipalServer.Button1Click(Sender: TObject);
begin

  RESTServicePooler1.ServerMethodClass := TDtmRDW;

  if RESTServicePooler1.Active then
  begin
    RESTServicePooler1.Active:= false;
    self.Color:= clred;
  end
  else
  begin
    RESTServicePooler1.Active:= true;
    self.Color:= clGreen;
  end;
end;

end.
