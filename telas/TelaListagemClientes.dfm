inherited frmTelaListagemClientes: TfrmTelaListagemClientes
  Caption = 'Listagem de Clientes'
  ClientHeight = 600
  ClientWidth = 1104
  ExplicitWidth = 1120
  ExplicitHeight = 639
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdListagem: TDBGrid
    Width = 1104
    Height = 559
    DataSource = dtsListagem
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sobrenome'
        Width = 77
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
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'celular'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_inclusao'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_edicao'
        Width = 117
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Top = 559
    Width = 1104
    inherited btnCadastrar: TBitBtn
      OnClick = btnCadastrarClick
    end
    inherited btnFechar: TBitBtn
      OnClick = btnFecharClick
    end
  end
  inherited qryListagem: TZQuery
    Active = True
    SQL.Strings = (
      'select * from clientes')
    object qryListagemid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryListagemnome: TWideStringField
      FieldName = 'nome'
    end
    object qryListagemsobrenome: TWideStringField
      FieldName = 'sobrenome'
    end
    object qryListagemcpf: TWideStringField
      FieldName = 'cpf'
      Size = 11
    end
    object qryListagemendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object qryListagemcep: TWideStringField
      FieldName = 'cep'
      Size = 8
    end
    object qryListagemtelefone: TWideStringField
      FieldName = 'telefone'
      Size = 11
    end
    object qryListagemcelular: TWideStringField
      FieldName = 'celular'
      Size = 11
    end
    object qryListagemdata_inclusao: TDateTimeField
      FieldName = 'data_inclusao'
    end
    object qryListagemdata_edicao: TDateTimeField
      FieldName = 'data_edicao'
    end
  end
end
