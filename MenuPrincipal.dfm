object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 635
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object mainPrincipal: TMainMenu
    Left = 720
    Top = 48
    object menuMenu: TMenuItem
      Caption = 'MENU'
      object menuConfiguracao: TMenuItem
        Caption = 'Configura'#231#227'o'
      end
    end
    object menuCadastros: TMenuItem
      Caption = 'CADASTROS'
      object menuCadastrosProdutos: TMenuItem
        Caption = 'Produtos'
      end
      object menuCadastrosClientes: TMenuItem
        Caption = 'Clientes'
      end
      object menuCadastrosPedidos: TMenuItem
        Caption = 'Pedidos'
      end
    end
    object menuFuncionarios: TMenuItem
      Caption = 'FUNCION'#193'RIOS'
    end
    object menuRelatorios: TMenuItem
      Caption = 'RELAT'#211'RIOS'
      object menuRelatoriosProdutos: TMenuItem
        Caption = 'Relat'#243'rio de Produtos'
      end
      object menuRelatoriosPedidos: TMenuItem
        Caption = 'Relat'#243'rio de Pedidos'
      end
    end
  end
end
