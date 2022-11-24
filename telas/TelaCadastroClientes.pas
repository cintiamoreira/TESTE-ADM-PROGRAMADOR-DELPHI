unit TelaCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaCadastro, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmTelaCadastroClientes = class(TfrmTelaHerancaCadastro)
    edtNome: TEdit;
    edtValor: TEdit;
    edtQuantidade: TEdit;
    lblNome: TLabel;
    lblValor: TLabel;
    Quantidade: TLabel;
    lblDataInclusao: TLabel;
    edtDataInclusao: TEdit;
    lblDescontoPromocional: TLabel;
    edtDescontoPromocional: TEdit;
    lblDataEdicao: TLabel;
    edtDataEdicao: TEdit;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaCadastroClientes: TfrmTelaCadastroClientes;

implementation

{$R *.dfm}

procedure TfrmTelaCadastroClientes.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
