object ifelse_f: Tifelse_f
  Left = 0
  Top = 0
  Caption = 'ifelse_f'
  ClientHeight = 297
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 56
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 224
    Top = 16
    Width = 105
    Height = 25
    Caption = 'if edit = 5'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 48
    Width = 105
    Height = 25
    Caption = #3607#3633#3657#3591' 2 edit '#3648#3607#3656#3634#3585#3633#3610' 5'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 56
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit2'
    OnKeyPress = Edit2KeyPress
  end
  object Button3: TButton
    Left = 224
    Top = 80
    Width = 105
    Height = 25
    Caption = #3629#3633#3609#3651#3604#3629#3633#3609#3627#3609#3638#3656#3591#3648#3607#3656#3634#3585#3633#3610' 5'
    TabOrder = 4
    OnClick = Button3Click
  end
end
