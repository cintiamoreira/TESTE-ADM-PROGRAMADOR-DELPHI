unit TelaListagemProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, TelaCadastroProdutos;

type
  TfrmTelaListagemProdutos = class(TfrmTelaHerancaListagem)
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaListagemProdutos: TfrmTelaListagemProdutos;

implementation

{$R *.dfm}
procedure TfrmTelaListagemProdutos.btnCadastrarClick(Sender: TObject);
begin
  inherited;
  frmTelaCadastroProdutos := TfrmTelaCadastroProdutos.Create(Self);
  frmTelaCadastroProdutos.ShowModal;
  frmTelaCadastroProdutos.Release;
  //frmTelaCadastroProdutos := TfrmTela
  //frmTelaCadastroProdutos := TrfmTelaCadastroProdutos.Create(Self);
end;

procedure TfrmTelaListagemProdutos.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
