unit cPedidos;

interface

//Lista de Units
uses System.Classes,
     Vcl.Controls,
     Vcl.ExtCtrls,
     Vcl.Dialogs,
     ZConnection,
     ZAbstractConnection,
     ZAbstractRODataset,
     ZAbstractDataset,
     ZDataset,
     System.SysUtils;

type
//Declara��o do tipo da Classe

  TPedidos = class

  private
  //Vari�veis Privadas somente dentro da Classe

    ConexaoDB : TZConnection;
    //Campos
    F_id : Integer;
    F_id_produto : Integer;
    F_id_cliente : Integer;
    F_quantidade_total : Integer;
    F_valor_total : Double;
    F_valor_total_desconto : Double;
    F_data_inclusao : string;
    F_data_edicao : string;

    function getID: Integer;
    function getIDProduto: Integer;
    function getIDCliente: Integer;
    function getQuantidadeTotal: Integer;
    function getValorTotal: Double;
    function getValorTotalDesconto: Double;
    function getDataInclusao: string;
    function getDataEdicao: string;

    procedure setID(const newId: Integer);
    procedure setIDProduto(const newIDProduto: Integer);
    procedure setIDCliente(const newIDCliente: Integer);
    procedure setQuantidadeTotal(const newQuantidadeTotal: Integer);
    procedure setValorTotal(const newValorTotal: Double);
    procedure setValorTotalDesconto(const newValorTotalDesconto: Double);
    procedure setDataInclusao(const newDataInclusao: string);
    procedure setDataEdicao(const newDataEdicao: string);

  public
  //Construtor de uma Classe

    constructor Create (aConexao : TZConnection);

    destructor Destroy; override;

    function Inserir : Boolean;
    function Atualizar : Boolean;
    function Apagar : Boolean;
    function Selecionar (id : Integer) : Boolean;

  published

    property id : Integer     read getId     write setId;
    property idCliente : Integer     read getIDCliente     write setIDCliente;
    property idProduto : Integer     read getIdProduto     write setIDProduto;
    property quantidadeTotal : Integer     read getQuantidadeTotal     write setQuantidadeTotal;
    property valorTotal : Double     read getValorTotal     write setValorTotal;
    property valorTotalDesconto : Double     read getValorTotalDesconto     write setValorTotalDesconto;
    property dataInclusao : string     read getDataInclusao     write setDataInclusao;
    property dataEdicao : string     read getDataEdicao     write setDataEdicao;

  end;

implementation

{$REGION 'Constructor and Destructor'}
constructor TPedidos.Create (aConexao : TZConnection);
begin
  ConexaoDB := aConexao;
end;

destructor TPedidos.Destroy;
begin
  inherited;
end;
{$ENDREGION}

{$REGION 'CRUD'}
function TPedidos.Apagar : Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'C�digo: '+IntToStr (F_id) +#13+
                'Descri��o: '+F_data_inclusao,mtConfirmation, [mbYes, mbNo],0)=mrNo
  then begin
      Result := false;
      Abort;
  end;

  try
    Result := True;
    Qry := TZQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM categorias ' +
                '   WHERE categoriaId =:categoriaId ');

    Qry.ParamByName('categoriaId').AsInteger := F_id;

    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    except
      ConexaoDB.Rollback;
     Result := False;
    end;

  finally
    if Assigned (Qry) then
       FreeAndNil (Qry);
  end;
end;

function TPedidos.Atualizar: Boolean;
var Qry : TZQuery;
begin
  try
    Result := True;
    Qry := TZQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE categorias ' +
                '   SET descricao =:descricao ' +
                '   WHERE categoriaId =:categoriaId ');

    Qry.ParamByName('categoriaId').AsInteger := Self.F_id;
    Qry.ParamByName('descricao').AsString    := Self.F_data_inclusao;

    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    except
      ConexaoDB.Rollback;
     Result := False;
    end;

  finally
    if Assigned (Qry) then
       FreeAndNil (Qry);
  end;
end;

function TPedidos.Inserir: Boolean;
var Qry : TZQuery;
begin
  try
    Result := True;
    Qry := TZQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO categorias (descricao) values (:descricao)');
    Qry.ParamByName('descricao').AsString := Self.F_data_inclusao;

     try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    except
      ConexaoDB.Rollback;
     Result := False;
    end;

  finally
    if Assigned (Qry) then
       FreeAndNil (Qry);
  end;
end;

function TPedidos.Selecionar(id: Integer): Boolean;
var Qry : TZQuery;
begin
    try
      Result := True;
      Qry := TZQuery.Create(nil);
      Qry.Connection := ConexaoDB;
      Qry.SQL.Clear;

      Qry.SQL.Add ('SELECT categoriaId, descricao ' +
                  'FROM categorias ' +
                  'WHERE categoriaId=:categoriaId');

      Qry.ParamByName('categoriaId').AsInteger := id;

      try
        Qry.Open;

        Self.F_id := Qry.FieldByName('categoriaId').AsInteger;
        Self.F_data_inclusao   := Qry.FieldByName('descricao').AsString;
      except
         Result := False;
      end;

  finally
    if Assigned (Qry) then
       FreeAndNil (Qry);
  end;
end;
{$ENDREGION}

{$REGION 'GETS'}

function TPedidos.getID: Integer;
begin
  Result := Self.F_id;
end;

function TPedidos.getIDProduto: Integer;
begin
  Result := Self.F_id_produto;
end;

function TPedidos.getIDCliente: Integer;
begin
  Result := Self.F_id_cliente;
end;

function TPedidos.getQuantidadeTotal: Integer;
begin
  Result := Self.F_quantidade_total;
end;

function TPedidos.getValorTotal: Double;
begin
  Result := Self.F_valor_total;
end;
function TPedidos.getValorTotalDesconto: Double;
begin
  Result := Self.F_valor_total_desconto;
end;

function TPedidos.getDataInclusao: string;
begin
  Result := Self.F_data_inclusao;
end;

function TPedidos.getDataEdicao: string;
begin
  Result := Self.F_data_edicao;
end;

{$ENDREGION}


{$REGION 'SETS'}
procedure TPedidos.setId(const newId: Integer);
begin
  Self.F_id := newId;
end;

procedure TPedidos.setIDProduto(const newIDProduto: Integer);
begin
   Self.F_id_produto := newIdProduto;
end;

procedure TPedidos.setIDCliente(const newIDCliente: Integer);
begin
   Self.F_id_cliente := newIDCliente;
end;

procedure TPedidos.setQuantidadeTotal(const newQuantidadeTotal: Integer);
begin
   Self.F_quantidade_total := newQuantidadeTotal;
end;

procedure TPedidos.setValorTotal(const newValorTotal: Double);
begin
   Self.F_valor_total := newValorTotal;
end;

procedure TPedidos.setValorTotalDesconto(const newValorTotalDesconto: Double);
begin
   Self.F_valor_total_desconto := newValorTotalDesconto;
end;

procedure TPedidos.setDataInclusao(const newDataInclusao: string);
begin
   Self.F_data_inclusao := newDataInclusao;
end;

procedure TPedidos.setDataEdicao(const newDataEdicao: string);
begin
   Self.F_data_edicao := newDataEdicao;
end;
{$ENDREGION}


end.