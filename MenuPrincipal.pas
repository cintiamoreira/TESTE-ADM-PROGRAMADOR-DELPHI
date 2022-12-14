unit MenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
   Vcl.Menus, uDTMConexao, TelaListagemProdutos, TelaListagemPedidos,
   TelaListagemClientes, uRelPedidos, TelaFiltroRelatorioProdutos,
   TelaFiltroRelatorioPedidos, uRelProdutos, uRelProdutosPorData, uRelPedidosPorData,
   TelaListagemFuncionarios;

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
    menuRelatorioProdutosData: TMenuItem;
    menuRelatorioPedidosData: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure menuCadastrosProdutosClick(Sender: TObject);
    procedure menuCadastrosClientesClick(Sender: TObject);
    procedure menuCadastrosPedidosClick(Sender: TObject);
    procedure menuRelatoriosProdutosClick(Sender: TObject);
    procedure menuRelatoriosPedidosClick(Sender: TObject);
    procedure menuRelatorioProdutosDataClick(Sender: TObject);
    procedure menuRelatorioPedidosDataClick(Sender: TObject);
    procedure menuFuncionariosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  frmRelProdutos: TfrmRelProdutos;
  frmRelProdutosPorData: TfrmRelProdutosPorData;
  frmRelPedidosPorData: TfrmRelPedidosPorData;
  frmTelaListagemFuncionarios: TfrmTelaListagemFuncionarios;
  frmTelaFiltroRelatorioProdutos: TfrmTelaFiltroRelatorioProdutos;
  frmTelaFiltroRelatorioPedidos: TfrmTelaFiltroRelatorioPedidos;
  frmuRelPedidos : TfrmRelPedidos;

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

procedure TfrmPrincipal.menuFuncionariosClick(Sender: TObject);
begin
    frmTelaListagemFuncionarios := TfrmTelaListagemFuncionarios.Create(Self);
    frmTelaListagemFuncionarios.ShowModal;
    frmTelaListagemFuncionarios.Release;
end;

procedure TfrmPrincipal.menuRelatorioPedidosDataClick(Sender: TObject);
begin
   try

    frmTelaFiltroRelatorioPedidos := TfrmTelaFiltroRelatorioPedidos.Create(Self);
    frmTelaFiltroRelatorioPedidos.ShowModal;

    frmRelPedidosPorData:=TfrmRelPedidosPorData.Create(Self);
    frmRelPedidosPorData.QryPedidos.Close;
    frmRelPedidosPorData.QryPedidos.ParamByName('DataInicio').AsDate := frmTelaFiltroRelatorioPedidos.edtDataInicio.Date;
    frmRelPedidosPorData.QryPedidos.ParamByName('DataFim').AsDate := frmTelaFiltroRelatorioPedidos.edtDataFim.Date;
    frmRelPedidosPorData.QryPedidos.Open;
    frmRelPedidosPorData.Relatorio.PreviewModal;
  finally
     frmTelaFiltroRelatorioPedidos.Release;
  end;
end;

procedure TfrmPrincipal.menuRelatorioProdutosDataClick(Sender: TObject);
begin
  try

    frmTelaFiltroRelatorioProdutos := TfrmTelaFiltroRelatorioProdutos.Create(Self);
    frmTelaFiltroRelatorioProdutos.ShowModal;

    frmRelProdutosPorData:=TfrmRelProdutosPorData.Create(Self);
    frmRelProdutosPorData.QryProdutos.Close;
    frmRelProdutosPorData.QryProdutos.ParamByName('DataInicio').AsDate := frmTelaFiltroRelatorioProdutos.edtDataInicio.Date;
    frmRelProdutosPorData.QryProdutos.ParamByName('DataFim').AsDate := frmTelaFiltroRelatorioProdutos.edtDataFim.Date;
    frmRelProdutosPorData.QryProdutos.Open;
    frmRelProdutosPorData.Relatorio.PreviewModal;
  finally
     frmTelaFiltroRelatorioProdutos.Release;
  end;
end;

procedure TfrmPrincipal.menuRelatoriosPedidosClick(Sender: TObject);
begin
  frmuRelPedidos := TfrmRelPedidos.Create(Self);
  frmuRelPedidos.Relatorio.PreviewModal;
  frmuRelPedidos.Release;
end;

procedure TfrmPrincipal.menuRelatoriosProdutosClick(Sender: TObject);
begin
  frmRelProdutos := TfrmRelProdutos.Create(Self);
  frmRelProdutos.Relatorio.PreviewModal;
  frmRelProdutos.Release;
end;


end.
