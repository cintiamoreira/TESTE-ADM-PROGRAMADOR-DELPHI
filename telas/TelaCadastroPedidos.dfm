inherited frmTelaCadastroPedidos: TfrmTelaCadastroPedidos
  Caption = 'Cadastro de Pedidos'
  ClientHeight = 390
  ClientWidth = 407
  ExplicitWidth = 423
  ExplicitHeight = 429
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 407
    Height = 326
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitHeight = 472
    object lblNome: TLabel
      Left = 40
      Top = 48
      Width = 89
      Height = 13
      Caption = 'C'#243'digo do Produto'
    end
    object lblValor: TLabel
      Left = 45
      Top = 82
      Width = 84
      Height = 13
      Caption = 'C'#243'digo do Cliente'
    end
    object Quantidade: TLabel
      Left = 45
      Top = 119
      Width = 83
      Height = 13
      Caption = 'Quantidade Total'
    end
    object lblValorTotalDesconto: TLabel
      Left = 30
      Top = 189
      Width = 99
      Height = 13
      Caption = 'Valor Total Desconto'
    end
    object lblDescontoPromocional: TLabel
      Left = 77
      Top = 157
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object lblDataInclusao: TLabel
      Left = 48
      Top = 219
      Width = 81
      Height = 13
      Caption = 'Data de Inclus'#227'o'
    end
    object lblDataEdicao: TLabel
      Left = 57
      Top = 251
      Width = 72
      Height = 13
      Caption = 'Data de Edi'#231#227'o'
    end
    object edtCodigoProduto: TEdit
      Left = 154
      Top = 45
      Width = 144
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object edtCodigoCliente: TEdit
      Left = 153
      Top = 79
      Width = 145
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
    object edtQuantidadeTotal: TEdit
      Left = 153
      Top = 116
      Width = 120
      Height = 21
      NumbersOnly = True
      TabOrder = 2
    end
    object edtValorTotalDesconto: TEdit
      Left = 153
      Top = 186
      Width = 120
      Height = 21
      TabOrder = 4
    end
    object edtValorTotal: TEdit
      Left = 154
      Top = 154
      Width = 119
      Height = 21
      TabOrder = 3
    end
    object edtDataInclusao: TEdit
      Left = 153
      Top = 213
      Width = 112
      Height = 21
      TabOrder = 5
    end
    object edtDataEdicao: TEdit
      Left = 154
      Top = 248
      Width = 111
      Height = 21
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Top = 326
    Width = 407
    inherited btnOK: TBitBtn
      Left = 61
      Anchors = [akRight, akBottom]
    end
    inherited btnCancelar: TBitBtn
      Left = 142
      Anchors = [akRight, akBottom]
    end
    inherited btnEditar: TBitBtn
      Left = 223
      Anchors = [akRight, akBottom]
    end
    inherited btnSair: TBitBtn
      Left = 304
      Anchors = [akRight, akBottom]
      OnClick = btnSairClick
    end
  end
end
