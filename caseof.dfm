object case_f: Tcase_f
  Left = 0
  Top = 0
  Caption = 'case_f'
  ClientHeight = 202
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 48
    Top = 56
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object ComboBox1: TComboBox
    Left = 85
    Top = 13
    Width = 129
    Height = 21
    TabOrder = 0
    Text = 'ComboBox1'
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6')
  end
  object Button1: TButton
    Left = 272
    Top = 11
    Width = 137
    Height = 25
    Caption = 'case index combobox '
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 88
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
    OnKeyPress = Edit1KeyPress
  end
  object Button2: TButton
    Left = 272
    Top = 42
    Width = 137
    Height = 25
    Caption = 'case edit'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 272
    Top = 73
    Width = 137
    Height = 25
    Caption = #3612#3621#3610#3623#3585
    TabOrder = 4
    OnClick = Button3Click
  end
end
