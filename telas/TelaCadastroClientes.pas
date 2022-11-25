unit TelaCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaCadastro, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, RxToolEdit;

type
  TfrmTelaCadastroClientes = class(TfrmTelaHerancaCadastro)
    edtNome: TEdit;
    edtValor: TEdit;
    lblNome: TLabel;
    lblValor: TLabel;
    Quantidade: TLabel;
    lblDataInclusao: TLabel;
    lblDescontoPromocional: TLabel;
    edtDescontoPromocional: TEdit;
    lblDataEdicao: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    deInclusao: TDateEdit;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    deEdicao: TDateEdit;
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
