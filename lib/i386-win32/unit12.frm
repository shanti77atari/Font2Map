object Form12: TForm12
  Left = 0
  Height = 366
  Top = 0
  Width = 327
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Set Map Size'
  ClientHeight = 366
  ClientWidth = 327
  DesignTimePPI = 144
  OnActivate = FormActivate
  LCLVersion = '7.8'
  object Edit1: TEdit
    Left = 128
    Height = 33
    Top = 54
    Width = 64
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 128
    Height = 33
    Top = 152
    Width = 72
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 1
    Text = 'Edit2'
  end
  object Label1: TLabel
    Left = 128
    Height = 25
    Top = 16
    Width = 148
    Caption = 'Width (mod 4 = 0)'
  end
  object Label2: TLabel
    Left = 128
    Height = 25
    Top = 112
    Width = 153
    Caption = 'Height (mod 4 = 0)'
  end
  object Button1: TButton
    Left = 112
    Height = 38
    Top = 296
    Width = 113
    Caption = 'Apply'
    OnClick = Button1Click
    TabOrder = 2
  end
end
