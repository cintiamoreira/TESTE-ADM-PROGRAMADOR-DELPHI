program TESTEDELPHI;



uses
  Vcl.Forms,
  MenuPrincipal in 'MenuPrincipal.pas' {frmPrincipal},
  uDTMConexao in 'datamodule\uDTMConexao.pas' {dtmPrincipal: TDataModule},
  TelaConfiguracao in 'TelaConfiguracao.pas' {frmTelaConfiguracao},
  TelaHerancaListagem in 'TelaHerancaListagem.pas' {frmTelaHerancaListagem},
  TelaListagemProdutos in 'telas\TelaListagemProdutos.pas' {frmTelaListagemProdutos},
  TelaHerancaCadastro in 'TelaHerancaCadastro.pas' {frmTelaHerancaCadastro},
  TelaCadastroProdutos in 'telas\TelaCadastroProdutos.pas' {frmTelaCadastroProdutos},
  TelaCadastroPedidos in 'telas\TelaCadastroPedidos.pas' {frmTelaCadastroPedidos},
  TelaCadastroClientes in 'telas\TelaCadastroClientes.pas' {frmTelaCadastroClientes},
  TelaListagemPedidos in 'telas\TelaListagemPedidos.pas' {frmTelaListagemPedidos},
  TelaListagemClientes in 'telas\TelaListagemClientes.pas' {frmTelaListagemClientes},
  cProdutos in 'classes\cProdutos.pas',
  cClientes in 'classes\cClientes.pas',
  cPedidos in 'classes\cPedidos.pas',
  cadastroEnum in 'cadastroEnum.pas',
  TelaHerancaFiltroRelatorio in 'TelaHerancaFiltroRelatorio.pas' {frmTelaHerancaFiltroRelatorio},
  TelaFiltroRelatorioPedidos in 'telas\TelaFiltroRelatorioPedidos.pas' {frmTelaFiltroRelatorioPedidos},
  uRelProdutos in 'relatorio\uRelProdutos.pas' {frmRelProdutos},
  uRelPedidos in 'relatorio\uRelPedidos.pas' {frmRelPedidos},
  uRelPedidosPorData in 'relatorio\uRelPedidosPorData.pas' {frmRelPedidosPorData},
  uRelProdutosPorData in 'relatorio\uRelProdutosPorData.pas' {frmRelProdutosPorData},
  TelaFiltroRelatorioProdutos in 'telas\TelaFiltroRelatorioProdutos.pas' {frmTelaFiltroRelatorioProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
