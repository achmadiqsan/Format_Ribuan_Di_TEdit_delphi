object Form1: TForm1
  Left = 353
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Format Ribuan TEdit'
  ClientHeight = 122
  ClientWidth = 219
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 14
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object Label2: TLabel
    Left = 18
    Top = 36
    Width = 27
    Height = 13
    Caption = 'Bayar'
  end
  object Label3: TLabel
    Left = 19
    Top = 75
    Width = 49
    Height = 13
    Caption = 'Kembalian'
  end
  object edtotal: TEdit
    Left = 82
    Top = 10
    Width = 123
    Height = 21
    TabOrder = 0
    OnChange = edtotalChange
  end
  object edbayar: TEdit
    Left = 82
    Top = 33
    Width = 123
    Height = 21
    TabOrder = 1
    OnChange = edtotalChange
  end
  object edkembali: TEdit
    Left = 82
    Top = 70
    Width = 122
    Height = 21
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 2
    OnChange = edkembaliChange
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 103
    Width = 219
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'mboloz.wordpress.com'
        Width = 50
      end>
  end
end
