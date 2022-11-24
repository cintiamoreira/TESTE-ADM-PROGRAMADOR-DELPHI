program TESTEDELPHI;

uses
  Vcl.Forms,
  MenuPrincipal in 'MenuPrincipal.pas' {frmPrincipal},
  uDTMConexao in 'datamodule\uDTMConexao.pas' {dtmPrincipal: TDataModule},
  TelaConfiguracao in 'TelaConfiguracao.pas' {frmTelaConfiguracao},
  TelaHerancaListagem in 'TelaHerancaListagem.pas' {frmTelaHerancaListagem},
  TelaListagemProdutos in 'telas\TelaListagemProdutos.pas' {frmTelaHerancaListagem1},
  TelaHerancaCadastro in 'TelaHerancaCadastro.pas' {frmTelaHerancaCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmTelaHerancaListagem1, frmTelaHerancaListagem1);
  Application.CreateForm(TfrmTelaHerancaCadastro, frmTelaHerancaCadastro);
  Application.Run;
end.
