object main_f: Tmain_f
  Left = 0
  Top = 0
  Caption = 'main_f'
  ClientHeight = 503
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 25
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 649
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 295
      Height = 29
      Caption = ' '#3629#3610#3619#3617#3650#3611#3619#3649#3585#3619#3617' Delphi CM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 462
    Width = 649
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      649
      41)
    object Button1: TButton
      Left = 299
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akBottom]
      Caption = 'EXIT'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 649
    Height = 397
    Align = alClient
    TabOrder = 2
    object Button2: TButton
      Left = 16
      Top = 6
      Width = 295
      Height = 59
      Caption = #3588#3635#3609#3623#3609' BMI'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 16
      Top = 71
      Width = 295
      Height = 59
      Caption = #3588#3635#3609#3623#3609' CID'
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 16
      Top = 136
      Width = 295
      Height = 59
      Caption = #3604#3641#3604#3623#3591
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 16
      Top = 201
      Width = 295
      Height = 64
      Caption = 'CASE OF'
      TabOrder = 3
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 16
      Top = 271
      Width = 295
      Height = 66
      Caption = 'FOR DO'
      TabOrder = 4
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 317
      Top = 6
      Width = 284
      Height = 59
      Caption = 'IF THEN ELSE'
      TabOrder = 5
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 317
      Top = 71
      Width = 284
      Height = 59
      Caption = ' VARLIBLE'
      TabOrder = 6
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 317
      Top = 136
      Width = 284
      Height = 59
      Caption = 'WHILE DO'
      TabOrder = 7
      OnClick = Button9Click
    end
  end
end
