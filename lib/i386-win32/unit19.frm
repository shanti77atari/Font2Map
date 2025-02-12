object Form19: TForm19
  Left = 0
  Height = 261
  Top = 0
  Width = 473
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Set Masks'
  ClientHeight = 261
  ClientWidth = 473
  DesignTimePPI = 144
  LCLVersion = '8.2'
  OnActivate = FormActivate
  object CheckBox1: TCheckBox
    Left = 124
    Height = 29
    Top = 48
    Width = 82
    Caption = 'Mask 1'
    TabOrder = 0
    OnChange = CheckBox1Change
  end
  object CheckBox2: TCheckBox
    Left = 304
    Height = 29
    Top = 48
    Width = 82
    Caption = 'Mask 2'
    TabOrder = 1
    OnChange = CheckBox2Change
  end
  object Label1: TLabel
    Left = 24
    Height = 25
    Top = 104
    Width = 47
    Caption = 'Name'
  end
  object Edit1: TEdit
    Left = 124
    Height = 33
    Top = 104
    Width = 82
    MaxLength = 5
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 304
    Height = 33
    Top = 104
    Width = 82
    TabOrder = 3
    Text = 'Edit2'
  end
  object Button1: TButton
    Left = 200
    Height = 38
    Top = 192
    Width = 96
    Caption = 'OK'
    TabOrder = 4
    OnClick = Button1Click
  end
end
