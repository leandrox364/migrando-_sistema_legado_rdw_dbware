unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cadastro2: TMenuItem;
    Sair1: TMenuItem;
    Panel1: TPanel;
    procedure Sair1Click(Sender: TObject);
    procedure Cadastro2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UCliente;

procedure TFrmPrincipal.Cadastro2Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCliente ,FrmCliente );
  FrmCliente.ShowModal;
  FrmCliente.free;
  FrmCliente:= nil;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
