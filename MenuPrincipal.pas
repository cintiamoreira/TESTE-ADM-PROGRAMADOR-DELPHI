unit MenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDTMConexao;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    menuMenu: TMenuItem;
    menuConfiguracao: TMenuItem;
    menuCadastros: TMenuItem;
    menuCadastrosProdutos: TMenuItem;
    menuCadastrosClientes: TMenuItem;
    menuCadastrosPedidos: TMenuItem;
    menuFuncionarios: TMenuItem;
    menuRelatorios: TMenuItem;
    menuRelatoriosProdutos: TMenuItem;
    menuRelatoriosPedidos: TMenuItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  dtmPrincipal := TdtmPrincipal.Create(Self);
  dtmPrincipal.ConexaoDB.SQLHourGlass := True;
  dtmPrincipal.ConexaoDB.Connected:=true;

end;

end.
