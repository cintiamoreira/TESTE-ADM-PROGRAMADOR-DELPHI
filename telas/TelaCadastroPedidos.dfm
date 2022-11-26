inherited frmTelaCadastroPedidos: TfrmTelaCadastroPedidos
  Caption = 'Cadastro de Pedidos'
  ClientHeight = 482
  ClientWidth = 672
  OnCreate = FormCreate
  ExplicitWidth = 688
  ExplicitHeight = 521
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 285
    Width = 672
    Height = 133
    ExplicitLeft = 0
    ExplicitTop = 285
    ExplicitWidth = 672
    ExplicitHeight = 133
    object lblQuantidade: TLabel
      Left = 142
      Top = 29
      Width = 83
      Height = 13
      Caption = 'Quantidade Total'
      Enabled = False
    end
    object lblValorTotalDesconto: TLabel
      Left = 82
      Top = 76
      Width = 99
      Height = 13
      Caption = 'Valor Total Desconto'
      Enabled = False
    end
    object lblDescontoPromocional: TLabel
      Left = 303
      Top = 71
      Width = 51
      Height = 13
      Caption = 'Valor Total'
      Enabled = False
    end
    object lblDataInclusao: TLabel
      Left = 414
      Top = 59
      Width = 81
      Height = 13
      Caption = 'Data de Inclus'#227'o'
      Enabled = False
    end
    object lblDataEdicao: TLabel
      Left = 423
      Top = 94
      Width = 72
      Height = 13
      Caption = 'Data de Edi'#231#227'o'
      Enabled = False
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
    object edtValorTotalDesconto: TEdit
      Left = 61
      Top = 95
      Width = 120
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object edtValorTotal: TEdit
      Left = 263
      Top = 90
      Width = 119
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object edtDataInclusao: TEdit
      Left = 519
      Top = 53
      Width = 112
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object edtDataEdicao: TEdit
      Left = 520
      Top = 91
      Width = 111
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object edtQuantidadeTotal: TEdit
      Left = 132
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btnCalcular: TBitBtn
      Left = 263
      Top = 45
      Width = 75
      Height = 25
      Caption = 'Calcular'
      Enabled = False
      TabOrder = 5
      OnClick = btnCalcularClick
    end
  end
  inherited Panel2: TPanel
    Top = 418
    Width = 672
    ExplicitTop = 418
    ExplicitWidth = 672
    inherited btnOK: TBitBtn
      Left = 326
      Anchors = [akRight, akBottom]
      OnClick = btnOKClick
      ExplicitLeft = 326
    end
    inherited btnCancelar: TBitBtn
      Left = 407
      Anchors = [akRight, akBottom]
      ExplicitLeft = 407
    end
    inherited btnEditar: TBitBtn
      Left = 488
      Anchors = [akRight, akBottom]
      Enabled = True
      OnClick = btnEditarClick
      ExplicitLeft = 488
    end
    inherited btnSair: TBitBtn
      Left = 569
      Anchors = [akRight, akBottom]
      OnClick = btnSairClick
      ExplicitLeft = 569
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 672
    Height = 285
    Align = alTop
    TabOrder = 2
    object grdProdutos: TDBGrid
      Left = 351
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
          FieldName = 'id'
          Visible = True
        end
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
        end
        item
          Expanded = False
          FieldName = 'data_inclusao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_edicao'
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
          FieldName = 'id'
          Visible = True
        end
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
          FieldName = 'endereco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'celular'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_inclusao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_edicao'
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
