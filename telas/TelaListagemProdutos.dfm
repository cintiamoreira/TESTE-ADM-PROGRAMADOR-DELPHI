inherited frmTelaListagemProdutos: TfrmTelaListagemProdutos
  Caption = 'Listagem de Produtos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdListagem: TDBGrid
    DataSource = dtsListagem
    Enabled = False
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
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desconto_promocional'
        Width = 239
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_inclusao'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_edicao'
        Width = 335
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    ExplicitTop = 462
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
      'SELECT * from produtos')
    object qryListagemid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
      ReadOnly = True
    end
    object qryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
    end
    object qryListagemvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
    end
    object qryListagemquantidade: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
    end
    object qryListagemdesconto_promocional: TIntegerField
      DisplayLabel = 'Desconto Promocional'
      FieldName = 'desconto_promocional'
    end
    object qryListagemdata_inclusao: TDateTimeField
      DisplayLabel = 'Data de Inclus'#227'o'
      FieldName = 'data_inclusao'
    end
    object qryListagemdata_edicao: TDateTimeField
      DisplayLabel = 'Data de Edi'#231#227'o'
      FieldName = 'data_edicao'
    end
  end
end
