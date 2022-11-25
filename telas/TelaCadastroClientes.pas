unit TelaCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaCadastro, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, RxToolEdit, cClientes, cadastroEnum;

type
  TfrmTelaCadastroClientes = class(TfrmTelaHerancaCadastro)
    edtNome: TEdit;
    lblNome: TLabel;
    lblValor: TLabel;
    lblCEP: TLabel;
    lblDataInclusao: TLabel;
    lblDescontoPromocional: TLabel;
    edtEndereco: TEdit;
    lblDataEdicao: TLabel;
    lblSobrenome: TLabel;
    edtSobrenome: TEdit;
    edtTelefone: TEdit;
    lblTelefone: TLabel;
    edtCelular: TEdit;
    lblCelular: TLabel;
    mskCEP: TMaskEdit;
    edtDataInclusao: TEdit;
    edtDataEdicao: TEdit;
    mskCpf: TMaskEdit;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);

  private
  { Private declarations }

    oCliente : TClientes;
    EstadoCadastro: TEstadoCadastro;
    procedure setEstadoCadastro(const newEstadoCadastro: TEstadoCadastro);
    function getEstadoCadastro: TEstadoCadastro;
    procedure setCliente(const newCliente: TClientes);
    function getCliente: TClientes;

  public
    { Public declarations }

    constructor Create (AOwner: TComponent;
                        const estadoInicial: TEstadoCadastro;
                        const clienteInicial: TClientes);

  published

    property estado : TEstadoCadastro  read getEstadoCadastro  write setEstadoCadastro;
    property cliente : TClientes  read getCliente  write setCliente;

  end;

var
  frmTelaCadastroClientes: TfrmTelaCadastroClientes;

implementation

constructor TfrmTelaCadastroClientes.Create(AOwner:TComponent;
                                            const estadoInicial: TEstadoCadastro;
                                            const clienteInicial: TClientes);
begin
  inherited Create(AOwner);
  EstadoCadastro := estadoInicial;
  oCliente := clienteInicial;

end;

procedure TfrmTelaCadastroClientes.FormCreate(Sender: TObject);
begin
  inherited;
  if EstadoCadastro=ecCadastrar then begin
      edtDataInclusao.Visible:=False;
      edtDataEdicao.Visible:=False;
      lblDataInclusao.Visible:=False;
      lblDataEdicao.Visible:=False;
  end

      else
        if EstadoCadastro=ecEditar then begin
        edtNome.Text:=oCliente.nome;
        mskCEP.Text:=oCliente.cep;
        edtSobrenome.Text:=oCliente.sobrenome;
        edtTelefone.Text:=oCliente.telefone;
        edtCelular.Text:=oCliente.celular;
        edtEndereco.Text:=oCliente.endereco;
        edtDataInclusao.Text:=oCliente.dataInclusao;
        edtDataEdicao.Text:=oCliente.dataEdicao;
        mskCpf.Text:=oCliente.cpf;
      end

      else
        if EstadoCadastro=ecVisualizar then begin
            edtNome.Text:=oCliente.nome;
            mskCEP.Text:=oCliente.cep;
            edtSobrenome.Text:=oCliente.sobrenome;
            edtTelefone.Text:=oCliente.telefone;
            edtCelular.Text:=oCliente.celular;
            edtEndereco.Text:=oCliente.endereco;
            edtDataInclusao.Text:=oCliente.dataInclusao;
            edtDataEdicao.Text:=oCliente.dataEdicao;
            mskCpf.Text:=oCliente.cpf;

            edtNome.Enabled:=false;
            mskCEP.Enabled:=false;
            edtSobrenome.Enabled:=false;
            edtTelefone.Enabled:=false;
            edtCelular.Enabled:=false;
            edtEndereco.Enabled:=false;
            edtDataInclusao.Enabled:=false;
            edtDataEdicao.Enabled:=false;
            mskCpf.Enabled:=false;

            btnEditar.Enabled:=True;


        end;

end;

function TfrmTelaCadastroClientes.getCliente: TClientes;
begin
    Result := oCliente;
end;

function TfrmTelaCadastroClientes.getEstadoCadastro: TEstadoCadastro;
begin
    Result := EstadoCadastro;
end;

procedure TfrmTelaCadastroClientes.setCliente(const newCliente: TClientes);
begin
    oCliente := newCliente;
end;

procedure TfrmTelaCadastroClientes.setEstadoCadastro(
  const newEstadoCadastro: TEstadoCadastro);
begin
    EstadoCadastro := newEstadoCadastro;
end;

{$R *.dfm}

procedure TfrmTelaCadastroClientes.btnEditarClick(Sender: TObject);
begin
  inherited;
    EstadoCadastro:=ecEditar;

    edtNome.Enabled:=true;
    mskCEP.Enabled:=true;
    edtSobrenome.Enabled:=true;
    edtTelefone.Enabled:=true;
    edtCelular.Enabled:=true;
    edtEndereco.Enabled:=true;
    edtDataInclusao.Enabled:=false;
    edtDataEdicao.Enabled:=false;
    mskCpf.Enabled:=true;

    btnEditar.Enabled:=false;


end;

procedure TfrmTelaCadastroClientes.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
