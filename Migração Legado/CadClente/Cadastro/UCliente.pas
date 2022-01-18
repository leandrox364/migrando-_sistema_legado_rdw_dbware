unit UCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TFrmCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DtsCliente: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    EdtPesquisa: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.dfm}

uses UDtmDados;

procedure TFrmCliente.Button1Click(Sender: TObject);
begin
  DtmDados.QryCliente.Close;
  DtmDados.QryCliente.Open;

  DtsCliente.DataSet := DtmDados.QryCliente;

  DtmDados.QryCliente.Filtered :=false;
  DtmDados.QryCliente.Filter :=  'NOME LIKE ' + QuotedStr( '*' + EdtPesquisa.Text + '*' );
  DtmDados.QryCliente.Filtered :=true;

end;

procedure TFrmCliente.Button2Click(Sender: TObject);
begin
  EdtPesquisa.Text:= '';
  DtmDados.QryCliente.Filtered := false;
  DtmDados.QryCliente.Filter := '';;


end;

procedure TFrmCliente.Button3Click(Sender: TObject);
begin
  DtmDados.RESTQryCliente.Close;
  DtmDados.RESTQryCliente.open;

  DtsCliente.DataSet := DtmDados.RESTQryCliente;

end;

procedure TFrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DtmDados.QryCliente.Close;
end;

procedure TFrmCliente.FormCreate(Sender: TObject);
begin
  DtmDados.QryCliente.Open;
end;

end.
