inherited frmTelaCadastroProdutos: TfrmTelaCadastroProdutos
  Caption = 'Cadastro de Produtos'
  ClientHeight = 403
  ClientWidth = 454
  OnCreate = FormCreate
  ExplicitWidth = 470
  ExplicitHeight = 442
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 454
    Height = 339
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitHeight = 472
    object lblNome: TLabel
      Left = 98
      Top = 40
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object lblValor: TLabel
      Left = 98
      Top = 98
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object lblQuantidade: TLabel
      Left = 74
      Top = 149
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object lblDataInclusao: TLabel
      Left = 48
      Top = 233
      Width = 81
      Height = 13
      Caption = 'Data de Inclus'#227'o'
      Enabled = False
    end
    object lblDescontoPromocional: TLabel
      Left = 24
      Top = 190
      Width = 105
      Height = 13
      Caption = 'Desconto Promocional'
    end
    object lblDataEdicao: TLabel
      Left = 57
      Top = 275
      Width = 72
      Height = 13
      Caption = 'Data de Edi'#231#227'o'
      Enabled = False
    end
    object edtNome: TEdit
      Left = 146
      Top = 37
      Width = 239
      Height = 21
      TabOrder = 0
    end
    object edtValor: TEdit
      Left = 146
      Top = 90
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtQuantidade: TEdit
      Left = 146
      Top = 146
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 2
    end
    object edtDescontoPromocional: TEdit
      Left = 146
      Top = 187
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 3
    end
    object edtInclusao: TEdit
      Left = 146
      Top = 230
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object edtEdicao: TEdit
      Left = 146
      Top = 272
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Top = 339
    Width = 454
    inherited btnOK: TBitBtn
      Left = 101
      Anchors = [akRight, akBottom]
      OnClick = btnOKClick
    end
    inherited btnCancelar: TBitBtn
      Left = 182
      Anchors = [akRight, akBottom]
      OnClick = btnCancelarClick
    end
    inherited btnEditar: TBitBtn
      Left = 263
      Anchors = [akRight, akBottom]
      Enabled = True
      OnClick = btnEditarClick
    end
    inherited btnSair: TBitBtn
      Left = 350
      Anchors = [akRight, akBottom]
      OnClick = btnSairClick
    end
  end
end
