unit MenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
   Vcl.Menus, uDTMConexao, TelaListagemProdutos, TelaListagemPedidos,
   TelaListagemClientes;

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
    procedure menuCadastrosProdutosClick(Sender: TObject);
    procedure menuCadastrosClientesClick(Sender: TObject);
    procedure menuCadastrosPedidosClick(Sender: TObject);
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

procedure TfrmPrincipal.menuCadastrosClientesClick(Sender: TObject);
begin
  frmTelaListagemClientes := TfrmTelaListagemClientes.Create(Self);
  frmTelaListagemClientes.ShowModal;
  frmTelaListagemClientes.Release;
end;

procedure TfrmPrincipal.menuCadastrosPedidosClick(Sender: TObject);
begin
  frmTelaListagemPedidos := TfrmTelaListagemPedidos.Create(Self);
  frmTelaListagemPedidos.ShowModal;
  frmTelaListagemPedidos.Release;
end;

procedure TfrmPrincipal.menuCadastrosProdutosClick(Sender: TObject);
begin
  frmTelaListagemProdutos := TfrmTelaListagemProdutos.Create(Self);
  frmTelaListagemProdutos.ShowModal;
  frmTelaListagemProdutos.Release;
end;

end.
