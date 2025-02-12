object Form8: TForm8
  Left = 0
  Height = 569
  Top = 0
  Width = 775
  BorderStyle = bsSingle
  Caption = 'Edit/Add Object'
  ClientHeight = 569
  ClientWidth = 775
  DesignTimePPI = 144
  OnActivate = FormActivate
  LCLVersion = '7.8'
  object ComboBox1: TComboBox
    Left = 32
    Height = 33
    Top = 56
    Width = 296
    ItemHeight = 25
    OnChange = ComboBox1Change
    ReadOnly = True
    TabOrder = 0
  end
  object Label1: TLabel
    Left = 40
    Height = 25
    Top = 16
    Width = 65
    Caption = 'Number'
  end
  object Edit1: TEdit
    Left = 368
    Height = 33
    Top = 56
    Width = 80
    MaxLength = 5
    TabOrder = 1
  end
  object Label2: TLabel
    Left = 368
    Height = 25
    Top = 16
    Width = 84
    Caption = 'Mnemonic'
  end
  object Edit2: TEdit
    Left = 480
    Height = 33
    Top = 56
    Width = 272
    MaxLength = 19
    TabOrder = 2
  end
  object Label3: TLabel
    Left = 480
    Height = 25
    Top = 16
    Width = 90
    Caption = 'Description'
  end
  object Edit3: TEdit
    Left = 152
    Height = 33
    Top = 160
    Width = 56
    Enabled = False
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 3
    Text = '0'
  end
  object Edit4: TEdit
    Left = 152
    Height = 33
    Top = 232
    Width = 56
    Enabled = False
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 4
    Text = '0'
  end
  object Edit5: TEdit
    Left = 232
    Height = 33
    Top = 232
    Width = 56
    Enabled = False
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 5
    Text = '0'
  end
  object Edit6: TEdit
    Left = 152
    Height = 33
    Top = 296
    Width = 56
    Enabled = False
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 6
    Text = '0'
  end
  object Edit7: TEdit
    Left = 232
    Height = 33
    Top = 296
    Width = 56
    Enabled = False
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 7
    Text = '0'
  end
  object Edit8: TEdit
    Left = 152
    Height = 33
    Top = 368
    Width = 56
    Enabled = False
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 8
    Text = '0'
  end
  object Edit9: TEdit
    Left = 232
    Height = 33
    Top = 368
    Width = 56
    Enabled = False
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 9
    Text = '0'
  end
  object Edit10: TEdit
    Left = 312
    Height = 33
    Top = 368
    Width = 56
    Enabled = False
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 10
    Text = '0'
  end
  object Edit11: TEdit
    Left = 392
    Height = 33
    Top = 368
    Width = 56
    Enabled = False
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 11
    Text = '0'
  end
  object Edit12: TEdit
    Left = 152
    Height = 33
    Top = 432
    Width = 56
    Enabled = False
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 12
    Text = '0'
  end
  object Edit13: TEdit
    Left = 232
    Height = 33
    Top = 432
    Width = 56
    Enabled = False
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 13
    Text = '0'
  end
  object Edit14: TEdit
    Left = 312
    Height = 33
    Top = 432
    Width = 56
    Enabled = False
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 14
    Text = '0'
  end
  object Edit15: TEdit
    Left = 392
    Height = 33
    Top = 432
    Width = 56
    Enabled = False
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 15
    Text = '0'
  end
  object Edit16: TEdit
    Left = 472
    Height = 33
    Top = 432
    Width = 56
    Enabled = False
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 16
    Text = '0'
  end
  object ComboBox2: TComboBox
    Left = 312
    Height = 33
    Top = 232
    Width = 288
    Enabled = False
    ItemHeight = 25
    ReadOnly = True
    TabOrder = 17
    Text = 'ComboBox2'
  end
  object ComboBox3: TComboBox
    Left = 312
    Height = 33
    Top = 296
    Width = 288
    Enabled = False
    ItemHeight = 25
    ReadOnly = True
    TabOrder = 18
    Text = 'ComboBox3'
  end
  object CheckBox1: TCheckBox
    Left = 32
    Height = 29
    Top = 164
    Width = 68
    Caption = 'Value'
    OnChange = CheckBox1Change
    TabOrder = 19
  end
  object CheckBox2: TCheckBox
    Left = 32
    Height = 29
    Top = 236
    Width = 99
    Caption = 'Position0'
    OnChange = CheckBox2Change
    TabOrder = 20
  end
  object CheckBox3: TCheckBox
    Left = 32
    Height = 29
    Top = 300
    Width = 99
    Caption = 'Position1'
    OnChange = CheckBox3Change
    TabOrder = 21
  end
  object CheckBox4: TCheckBox
    Left = 32
    Height = 29
    Top = 372
    Width = 62
    Caption = 'Data'
    OnChange = CheckBox4Change
    TabOrder = 22
  end
  object CheckBox5: TCheckBox
    Left = 32
    Height = 29
    Top = 436
    Width = 63
    Caption = 'Extra'
    OnChange = CheckBox5Change
    TabOrder = 23
  end
  object Button1: TButton
    Left = 336
    Height = 30
    Top = 504
    Width = 81
    Caption = 'Execute'
    OnClick = Button1Click
    TabOrder = 24
  end
  object CheckBox6: TCheckBox
    Left = 32
    Height = 29
    Top = 112
    Width = 202
    Caption = 'Single use on the map'
    TabOrder = 25
  end
end
