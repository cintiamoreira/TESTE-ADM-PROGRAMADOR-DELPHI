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
  TelaListagemClientes in 'telas\TelaListagemClientes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmTelaListagemPedidos, frmTelaListagemPedidos);
  Application.Run;
end.
