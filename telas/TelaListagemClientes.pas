unit TelaListagemClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, TelaCadastroClientes;

type
  TfrmTelaListagemClientes = class(TfrmTelaHerancaListagem)
    qryListagemid: TIntegerField;
    qryListagemnome: TWideStringField;
    qryListagemsobrenome: TWideStringField;
    qryListagemcpf: TWideStringField;
    qryListagemendereco: TWideStringField;
    qryListagemcep: TWideStringField;
    qryListagemtelefone: TWideStringField;
    qryListagemcelular: TWideStringField;
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
  frmTelaListagemClientes: TfrmTelaListagemClientes;

implementation

{$R *.dfm}


procedure TfrmTelaListagemClientes.btnCadastrarClick(Sender: TObject);
begin
  inherited;
  frmTelaCadastroClientes := TfrmTelaCadastroClientes.Create(Self);
  frmTelaCadastroClientes.ShowModal;
  frmTelaCadastroClientes.Release;
  //frmTelaCadastroProdutos := TfrmTela
  //frmTelaCadastroProdutos := TrfmTelaCadastroProdutos.Create(Self);
end;

procedure TfrmTelaListagemClientes.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;



end.
