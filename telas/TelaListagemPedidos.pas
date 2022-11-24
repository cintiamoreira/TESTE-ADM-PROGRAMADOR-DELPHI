unit TelaListagemPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, TelaCadastroPedidos;

type
  TfrmTelaListagemPedidos = class(TfrmTelaHerancaListagem)
    qryListagemid: TIntegerField;
    qryListagemid_produto: TIntegerField;
    qryListagemid_cliente: TIntegerField;
    qryListagemqtd_total: TIntegerField;
    qryListagemvalor_total: TFloatField;
    qryListagemvalor_total_desconto: TFloatField;
    qryListagemdata_inclusao: TDateTimeField;
    qryListagemdata_edicao: TDateTimeField;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaListagemPedidos: TfrmTelaListagemPedidos;

implementation

{$R *.dfm}

procedure TfrmTelaListagemPedidos.btnCadastrarClick(Sender: TObject);
begin
  inherited;
  frmTelaCadastroPedidos := TfrmTelaCadastroPedidos.Create(Self);
  frmTelaCadastroPedidos.ShowModal;
  frmTelaCadastroPedidos.Release;
  //frmTelaCadastroProdutos := TfrmTela
  //frmTelaCadastroProdutos := TrfmTelaCadastroProdutos.Create(Self);
end;

procedure TfrmTelaListagemPedidos.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.