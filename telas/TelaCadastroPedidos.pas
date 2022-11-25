unit TelaCadastroPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaCadastro, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.ComCtrls, RxToolEdit;

type
  TfrmTelaCadastroPedidos = class(TfrmTelaHerancaCadastro)
    edtCodigoProduto: TEdit;
    edtCodigoCliente: TEdit;
    edtQuantidadeTotal: TEdit;
    lblNome: TLabel;
    lblValor: TLabel;
    Quantidade: TLabel;
    lblValorTotalDesconto: TLabel;
    edtValorTotalDesconto: TEdit;
    lblDescontoPromocional: TLabel;
    edtValorTotal: TEdit;
    lblDataInclusao: TLabel;
    lblDataEdicao: TLabel;
    edtDataInclusao: TEdit;
    edtDataEdicao: TEdit;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
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

end.
