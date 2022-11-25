inherited frmTelaCadastroClientes: TfrmTelaCadastroClientes
  Caption = 'Cadastro de Clientes'
  ClientHeight = 389
  ClientWidth = 581
  OnCreate = FormCreate
  ExplicitWidth = 597
  ExplicitHeight = 428
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 581
    Height = 325
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitHeight = 472
    object lblNome: TLabel
      Left = 67
      Top = 43
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object lblValor: TLabel
      Left = 40
      Top = 118
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'CPF'
    end
    object lblCEP: TLabel
      Left = 311
      Top = 118
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object lblDataInclusao: TLabel
      Left = 13
      Top = 241
      Width = 81
      Height = 13
      Caption = 'Data de Inclus'#227'o'
    end
    object lblDescontoPromocional: TLabel
      Left = 40
      Top = 153
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Endere'#231'o'
    end
    object lblDataEdicao: TLabel
      Left = 22
      Top = 283
      Width = 72
      Height = 13
      Caption = 'Data de Edi'#231#227'o'
    end
    object lblSobrenome: TLabel
      Left = 40
      Top = 80
      Width = 54
      Height = 13
      Caption = 'Sobrenome'
    end
    object lblTelefone: TLabel
      Left = 40
      Top = 198
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Telefone'
    end
    object lblCelular: TLabel
      Left = 282
      Top = 198
      Width = 33
      Height = 13
      Caption = 'Celular'
    end
    object edtNome: TEdit
      Left = 127
      Top = 40
      Width = 321
      Height = 21
      TabOrder = 0
    end
    object edtEndereco: TEdit
      Left = 127
      Top = 150
      Width = 429
      Height = 21
      NumbersOnly = True
      TabOrder = 3
    end
    object edtSobrenome: TEdit
      Left = 127
      Top = 77
      Width = 321
      Height = 21
      TabOrder = 1
    end
    object edtTelefone: TEdit
      Left = 127
      Top = 195
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 4
    end
    object edtCelular: TEdit
      Left = 336
      Top = 195
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 5
    end
    object mskCEP: TMaskEdit
      Left = 336
      Top = 115
      Width = 108
      Height = 21
      EditMask = '99.999-999;0;_'
      MaxLength = 10
      TabOrder = 2
      Text = ''
    end
    object edtDataInclusao: TEdit
      Left = 127
      Top = 238
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object edtDataEdicao: TEdit
      Left = 127
      Top = 280
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object mskCpf: TMaskEdit
      Left = 128
      Top = 115
      Width = 118
      Height = 21
      EditMask = '999.999.999.99;0;_'
      MaxLength = 14
      TabOrder = 8
      Text = ''
    end
  end
  inherited Panel2: TPanel
    Top = 325
    Width = 581
    inherited btnOK: TBitBtn
      Left = 251
      Anchors = [akRight, akBottom]
    end
    inherited btnCancelar: TBitBtn
      Left = 332
      Anchors = [akRight, akBottom]
    end
    inherited btnEditar: TBitBtn
      Left = 411
      Anchors = [akRight, akBottom]
      OnClick = btnEditarClick
    end
    inherited btnSair: TBitBtn
      Left = 494
      Anchors = [akRight, akBottom]
      OnClick = btnSairClick
    end
  end
end
