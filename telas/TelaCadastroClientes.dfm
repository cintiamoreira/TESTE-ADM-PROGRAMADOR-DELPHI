inherited frmTelaCadastroClientes: TfrmTelaCadastroClientes
  Caption = 'Cadastro de Clientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitLeft = -64
    ExplicitTop = 8
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
      Top = 94
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object Quantidade: TLabel
      Left = 296
      Top = 94
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object lblDataInclusao: TLabel
      Left = 40
      Top = 265
      Width = 81
      Height = 13
      Caption = 'Data de Inclus'#227'o'
    end
    object lblDescontoPromocional: TLabel
      Left = 40
      Top = 153
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
    end
    object lblDataEdicao: TLabel
      Left = 40
      Top = 307
      Width = 72
      Height = 13
      Caption = 'Data de Edi'#231#227'o'
    end
    object Label1: TLabel
      Left = 451
      Top = 48
      Width = 60
      Height = 22
      Caption = 'Sobrenome'
    end
    object Label2: TLabel
      Left = 40
      Top = 214
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object Label3: TLabel
      Left = 282
      Top = 214
      Width = 33
      Height = 13
      Caption = 'Celular'
    end
    object edtNome: TEdit
      Left = 80
      Top = 45
      Width = 321
      Height = 21
      TabOrder = 0
    end
    object edtValor: TEdit
      Left = 80
      Top = 91
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 2
    end
    object edtDescontoPromocional: TEdit
      Left = 106
      Top = 150
      Width = 611
      Height = 21
      NumbersOnly = True
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 530
      Top = 45
      Width = 321
      Height = 21
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 103
      Top = 211
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 339
      Top = 211
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 6
    end
    object MaskEdit1: TMaskEdit
      Left = 352
      Top = 91
      Width = 120
      Height = 21
      EditMask = '99.999.999;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '  .   .   '
    end
    object DateEdit1: TDateEdit
      Left = 144
      Top = 262
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 7
    end
    object DateEdit4: TDateEdit
      Left = 144
      Top = 304
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 8
    end
  end
  inherited Panel2: TPanel
    inherited btnSair: TBitBtn
      OnClick = btnSairClick
    end
  end
end
