inherited frmTelaCadastroPedidos: TfrmTelaCadastroPedidos
  Caption = 'Cadastro de Pedidos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitLeft = 0
    ExplicitHeight = 472
    object lblNome: TLabel
      Left = 40
      Top = 48
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object lblValor: TLabel
      Left = 40
      Top = 106
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Quantidade: TLabel
      Left = 296
      Top = 101
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object lblDataInclusao: TLabel
      Left = 39
      Top = 217
      Width = 81
      Height = 13
      Caption = 'Data de Inclus'#227'o'
    end
    object lblDescontoPromocional: TLabel
      Left = 40
      Top = 166
      Width = 105
      Height = 13
      Caption = 'Desconto Promocional'
    end
    object lblDataEdicao: TLabel
      Left = 40
      Top = 259
      Width = 72
      Height = 13
      Caption = 'Data de Edi'#231#227'o'
    end
    object edtNome: TEdit
      Left = 88
      Top = 45
      Width = 321
      Height = 21
      TabOrder = 0
    end
    object edtValor: TEdit
      Left = 104
      Top = 98
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
    object edtQuantidade: TEdit
      Left = 376
      Top = 98
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 2
    end
    object edtDataInclusao: TEdit
      Left = 131
      Top = 214
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edtDescontoPromocional: TEdit
      Left = 154
      Top = 163
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 4
    end
    object edtDataEdicao: TEdit
      Left = 131
      Top = 256
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    inherited btnSair: TBitBtn
      OnClick = btnSairClick
    end
  end
end
