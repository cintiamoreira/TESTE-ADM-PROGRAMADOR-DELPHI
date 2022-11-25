inherited frmTelaCadastroPedidos: TfrmTelaCadastroPedidos
  Caption = 'Cadastro de Pedidos'
  ClientHeight = 482
  ClientWidth = 649
  ExplicitWidth = 665
  ExplicitHeight = 521
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 285
    Width = 649
    Height = 133
    ExplicitLeft = 0
    ExplicitTop = 285
    ExplicitWidth = 649
    ExplicitHeight = 133
    object lblQuantidade: TLabel
      Left = 271
      Top = 17
      Width = 83
      Height = 13
      Caption = 'Quantidade Total'
    end
    object lblValorTotalDesconto: TLabel
      Left = 82
      Top = 76
      Width = 99
      Height = 13
      Caption = 'Valor Total Desconto'
    end
    object lblDescontoPromocional: TLabel
      Left = 303
      Top = 71
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object lblDataInclusao: TLabel
      Left = 414
      Top = 59
      Width = 81
      Height = 13
      Caption = 'Data de Inclus'#227'o'
    end
    object lblDataEdicao: TLabel
      Left = 423
      Top = 94
      Width = 72
      Height = 13
      Caption = 'Data de Edi'#231#227'o'
    end
    object lblClienteSelecionado: TLabel
      Left = 82
      Top = 6
      Width = 61
      Height = 13
      Caption = 'Selecionado:'
    end
    object lblProdutoSelecionado: TLabel
      Left = 465
      Top = 5
      Width = 61
      Height = 13
      Caption = 'Selecionado:'
    end
    object edtQuantidadeTotal: TEdit
      Left = 262
      Top = 36
      Width = 120
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object edtValorTotalDesconto: TEdit
      Left = 67
      Top = 95
      Width = 120
      Height = 21
      TabOrder = 2
    end
    object edtValorTotal: TEdit
      Left = 263
      Top = 90
      Width = 119
      Height = 21
      TabOrder = 1
    end
    object edtDataInclusao: TEdit
      Left = 519
      Top = 53
      Width = 112
      Height = 21
      TabOrder = 3
    end
    object edtDataEdicao: TEdit
      Left = 520
      Top = 91
      Width = 111
      Height = 21
      TabOrder = 4
    end
  end
  inherited Panel2: TPanel
    Top = 418
    Width = 649
    ExplicitTop = 418
    ExplicitWidth = 649
    inherited btnOK: TBitBtn
      Left = 303
      Anchors = [akRight, akBottom]
      ExplicitLeft = 303
    end
    inherited btnCancelar: TBitBtn
      Left = 384
      Anchors = [akRight, akBottom]
      ExplicitLeft = 384
    end
    inherited btnEditar: TBitBtn
      Left = 465
      Anchors = [akRight, akBottom]
      ExplicitLeft = 465
    end
    inherited btnSair: TBitBtn
      Left = 546
      Anchors = [akRight, akBottom]
      OnClick = btnSairClick
      ExplicitLeft = 546
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 649
    Height = 285
    Align = alTop
    TabOrder = 2
    object grdProdutos: TDBGrid
      Left = 328
      Top = 1
      Width = 320
      Height = 283
      Align = alRight
      DataSource = dtsProdutos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = grdProdutosCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'desconto_promocional'
          Visible = True
        end>
    end
    object grdClientes: TDBGrid
      Left = 1
      Top = 1
      Width = 321
      Height = 283
      Align = alLeft
      DataSource = dtsCliente
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = grdClientesCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sobrenome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'celular'
          Visible = True
        end>
    end
  end
  object queryClientes: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Active = True
    SQL.Strings = (
      'select * from clientes')
    Params = <>
    Left = 136
    Top = 40
    object queryClientesid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object queryClientesnome: TWideStringField
      FieldName = 'nome'
    end
    object queryClientessobrenome: TWideStringField
      FieldName = 'sobrenome'
    end
    object queryClientescpf: TWideStringField
      FieldName = 'cpf'
      Size = 11
    end
    object queryClientesendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object queryClientescep: TWideStringField
      FieldName = 'cep'
      Size = 8
    end
    object queryClientestelefone: TWideStringField
      FieldName = 'telefone'
      Size = 11
    end
    object queryClientescelular: TWideStringField
      FieldName = 'celular'
      Size = 11
    end
    object queryClientesdata_inclusao: TDateTimeField
      FieldName = 'data_inclusao'
    end
    object queryClientesdata_edicao: TDateTimeField
      FieldName = 'data_edicao'
    end
  end
  object dtsCliente: TDataSource
    DataSet = queryClientes
    Left = 200
    Top = 40
  end
  object dtsProdutos: TDataSource
    DataSet = queryProdutos
    Left = 552
    Top = 48
  end
  object queryProdutos: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Active = True
    SQL.Strings = (
      'select * from produtos')
    Params = <>
    Left = 472
    Top = 48
    object queryProdutosid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object queryProdutosnome: TWideStringField
      FieldName = 'nome'
    end
    object queryProdutosvalor: TFloatField
      FieldName = 'valor'
    end
    object queryProdutosquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object queryProdutosdesconto_promocional: TIntegerField
      FieldName = 'desconto_promocional'
    end
    object queryProdutosdata_inclusao: TDateTimeField
      FieldName = 'data_inclusao'
    end
    object queryProdutosdata_edicao: TDateTimeField
      FieldName = 'data_edicao'
    end
  end
end
