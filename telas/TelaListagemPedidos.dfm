inherited frmTelaListagemPedidos: TfrmTelaListagemPedidos
  Caption = 'Listagem de Pedidos'
  ClientHeight = 548
  ClientWidth = 917
  ExplicitWidth = 933
  ExplicitHeight = 587
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdListagem: TDBGrid
    Width = 917
    Height = 507
    DataSource = dtsListagem
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd_total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_total_desconto'
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
  inherited Panel1: TPanel
    Top = 507
    Width = 917
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
      'select * from pedidos')
    object qryListagemid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryListagemid_produto: TIntegerField
      FieldName = 'id_produto'
    end
    object qryListagemid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object qryListagemqtd_total: TIntegerField
      FieldName = 'qtd_total'
    end
    object qryListagemvalor_total: TFloatField
      FieldName = 'valor_total'
    end
    object qryListagemvalor_total_desconto: TFloatField
      FieldName = 'valor_total_desconto'
    end
    object qryListagemdata_inclusao: TDateTimeField
      FieldName = 'data_inclusao'
    end
    object qryListagemdata_edicao: TDateTimeField
      FieldName = 'data_edicao'
    end
  end
end
