unit TelaCadastroPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaCadastro, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.ComCtrls, RxToolEdit, Data.DB,
  Vcl.Grids, Vcl.DBGrids, ZAbstractRODataset, ZAbstractDataset, ZDataset, uDTMConexao,
  cClientes, cProdutos, cPedidos, cadastroEnum;

type
  TfrmTelaCadastroPedidos = class(TfrmTelaHerancaCadastro)
    edtQuantidadeTotal: TEdit;
    lblQuantidade: TLabel;
    lblValorTotalDesconto: TLabel;
    edtValorTotalDesconto: TEdit;
    lblDescontoPromocional: TLabel;
    edtValorTotal: TEdit;
    lblDataInclusao: TLabel;
    lblDataEdicao: TLabel;
    edtDataInclusao: TEdit;
    edtDataEdicao: TEdit;
    grdClientes: TDBGrid;
    grdProdutos: TDBGrid;
    Panel3: TPanel;
    queryClientes: TZQuery;
    dtsCliente: TDataSource;
    dtsProdutos: TDataSource;
    queryProdutos: TZQuery;
    queryClientesid: TIntegerField;
    queryClientesnome: TWideStringField;
    queryClientessobrenome: TWideStringField;
    queryClientescpf: TWideStringField;
    queryClientesendereco: TWideStringField;
    queryClientescep: TWideStringField;
    queryClientestelefone: TWideStringField;
    queryClientescelular: TWideStringField;
    queryClientesdata_inclusao: TDateTimeField;
    queryClientesdata_edicao: TDateTimeField;
    queryProdutosid: TIntegerField;
    queryProdutosnome: TWideStringField;
    queryProdutosvalor: TFloatField;
    queryProdutosquantidade: TIntegerField;
    queryProdutosdesconto_promocional: TIntegerField;
    queryProdutosdata_inclusao: TDateTimeField;
    queryProdutosdata_edicao: TDateTimeField;
    lblClienteSelecionado: TLabel;
    lblProdutoSelecionado: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure grdClientesCellClick(Column: TColumn);
    procedure grdProdutosCellClick(Column: TColumn);
  private
    { Private declarations }
    EstadoCadastro: TEstadoCadastro;
    selecionadoCliente: TClientes;
    selecionadoProduto: TProdutos;
    oPedido: TPedidos;
    function getEstadoCadastro(): TEstadoCadastro;
    function getClienteSelecionado(): TClientes;
    function getProdutoSelecionado(): TProdutos;
    procedure setEstadoCadastro(newEstado: TEstadoCadastro);
    procedure setClienteSelecionado(newCliente: TClientes);
    procedure setProdutoSelecionado(newProduto: TProdutos);
  public
  constructor Create (AOwner: TComponent; const estadoInicial: TEstadoCadastro; const pedidoInicial: TPedidos);

    { Public declarations }
  published
    property clienteSelecionado : TClientes  read getClienteSelecionado  write setClienteSelecionado;
    property produtoSelecionado : TProdutos  read getProdutoSelecionado  write setProdutoSelecionado;
    property estado : TEstadoCadastro  read getEstadoCadastro  write setEstadoCadastro;
  end;

var
  frmTelaCadastroPedidos: TfrmTelaCadastroPedidos;

implementation

{$R *.dfm}

procedure TfrmTelaCadastroPedidos.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

constructor TfrmTelaCadastroPedidos.Create(AOwner: TComponent;
  const estadoInicial: TEstadoCadastro; const pedidoInicial: TPedidos);
begin
inherited Create(AOwner);
  EstadoCadastro := estadoInicial;
  oPedido := pedidoInicial;
end;

function TfrmTelaCadastroPedidos.getClienteSelecionado: TClientes;
begin
   Result := Self.clienteSelecionado;
end;

function TfrmTelaCadastroPedidos.getEstadoCadastro: TEstadoCadastro;
begin

   Result := Self.EstadoCadastro;
end;

function TfrmTelaCadastroPedidos.getProdutoSelecionado: TProdutos;
begin
   Result := Self.produtoSelecionado;

end;

procedure TfrmTelaCadastroPedidos.grdClientesCellClick(Column: TColumn);
begin
  inherited;
   //selecionar cliente
   const clienteSelecionado = TClientes.Create(dtmPrincipal.ConexaoDB, queryClientes);
   clienteSelecionado.Selecionar(queryClientes.FieldByName('id').AsInteger);
   lblClienteSelecionado.Caption := 'Selecionado: ' + clienteSelecionado.nome;
end;

procedure TfrmTelaCadastroPedidos.grdProdutosCellClick(Column: TColumn);
begin
  inherited;
     //selecionar produto
   const produtoSelecionado = TProdutos.Create(dtmPrincipal.ConexaoDB, queryClientes);
   produtoSelecionado.Selecionar(queryProdutos.FieldByName('id').AsInteger);
   lblProdutoSelecionado.Caption := 'Selecionado: ' + produtoSelecionado.nome;
end;

procedure TfrmTelaCadastroPedidos.setClienteSelecionado(newCliente: TClientes);
begin
   clienteSelecionado := newCliente;
end;

procedure TfrmTelaCadastroPedidos.setEstadoCadastro(newEstado: TEstadoCadastro);
begin
   EstadoCadastro := newEstado;
end;

procedure TfrmTelaCadastroPedidos.setProdutoSelecionado(newProduto: TProdutos);
begin
   produtoSelecionado := newProduto;
end;

end.
