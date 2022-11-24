unit TelaListagemProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, TelaCadastroProdutos, uDTMConexao;

type
  TfrmTelaListagemProdutos = class(TfrmTelaHerancaListagem)
    qryListagemid: TIntegerField;
    qryListagemnome: TWideStringField;
    qryListagemvalor: TFloatField;
    qryListagemquantidade: TIntegerField;
    qryListagemdesconto_promocional: TIntegerField;
    qryListagemdata_inclusao: TDateTimeField;
    qryListagemdata_edicao: TDateTimeField;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure TfrmTelaListagemProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  qryListagem.Connection := dtmPrincipal.ConexaoDB;
  dtsListagem.DataSet := qryListagem;
  grdListagem.DataSource:=dtsListagem;


end;

end.
