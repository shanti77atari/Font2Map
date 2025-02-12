object Form5: TForm5
  Left = 0
  Height = 408
  Top = 0
  Width = 263
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Edit attributes'
  ClientHeight = 408
  ClientWidth = 263
  DesignTimePPI = 144
  OnActivate = FormActivate
  LCLVersion = '7.8'
  object ComboBox1: TComboBox
    Left = 40
    Height = 33
    Top = 48
    Width = 175
    ItemHeight = 25
    OnChange = ComboBox1Change
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 40
    Height = 33
    Top = 128
    Width = 175
    MaxLength = 15
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 40
    Height = 33
    Top = 216
    Width = 87
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 2
  end
  object Button1: TButton
    Left = 72
    Height = 38
    Top = 296
    Width = 113
    Caption = 'Execute'
    OnClick = Button1Click
    TabOrder = 3
  end
  object Label1: TLabel
    Left = 40
    Height = 25
    Top = 16
    Width = 60
    Caption = 'Choose'
  end
  object Label2: TLabel
    Left = 40
    Height = 25
    Top = 96
    Width = 47
    Caption = 'Name'
  end
  object Label3: TLabel
    Left = 40
    Height = 25
    Top = 176
    Width = 42
    Caption = 'Value'
  end
end
