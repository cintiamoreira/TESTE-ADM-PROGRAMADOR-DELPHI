unit TelaCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaCadastro, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.ComCtrls, RxToolEdit, cadastroEnum;

type
    TfrmTelaCadastroProdutos = class(TfrmTelaHerancaCadastro)
    edtNome: TEdit;
    edtValor: TEdit;
    edtQuantidade: TEdit;
    lblNome: TLabel;
    lblValor: TLabel;
    Quantidade: TLabel;
    lblDataInclusao: TLabel;
    lblDescontoPromocional: TLabel;
    edtDescontoPromocional: TEdit;
    lblDataEdicao: TLabel;
    deInclusao: TDateEdit;
    deEdicao: TDateEdit;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    EstadoCadastro: TEstadoCadastro;
    procedure setEstadoCadastro(const newEstadoCadastro: TEstadoCadastro);
    function getEstadoCadastro: TEstadoCadastro;
  public
    constructor Create (AOwner: TComponent; const estadoInicial: TEstadoCadastro);
    { Public declarations }
    published

    property estado : TEstadoCadastro  read getEstadoCadastro  write setEstadoCadastro;
  end;

var
  frmTelaCadastroProdutos: TfrmTelaCadastroProdutos;

implementation

{$R *.dfm}
constructor TfrmTelaCadastroProdutos.Create(AOwner: TComponent; const estadoInicial: TEstadoCadastro);
begin
  inherited Create(AOwner);
  EstadoCadastro := estadoInicial;
end;

procedure TfrmTelaCadastroProdutos.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTelaCadastroProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  if EstadoCadastro = cadastroEnum.ecCadastrar then ShowMessage('Modo de cadastro')
  else if EstadoCadastro = cadastroEnum.ecEditar then ShowMessage('Modo de edi��o')
  else if EstadoCadastro = cadastroEnum.ecVisualizar then ShowMessage('Modo de visualizacao')
end;



{$REGION 'GETS'}
function TfrmTelaCadastroProdutos.getEstadoCadastro: TEstadoCadastro;
begin
  Result := Self.EstadoCadastro;
end;

{$ENDREGION}

{$REGION 'SETS'}
procedure TfrmTelaCadastroProdutos.setEstadoCadastro(const newEstadoCadastro: TEstadoCadastro);
begin
  Self.EstadoCadastro := newEstadoCadastro;
end;

{$ENDREGION}

end.
