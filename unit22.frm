object Form22: TForm22
  Left = 0
  Height = 222
  Top = 0
  Width = 399
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Change 1 color'
  ClientHeight = 222
  ClientWidth = 399
  DesignTimePPI = 144
  LCLVersion = '8.2'
  OnActivate = FormActivate
  object ComboBox1: TComboBox
    Left = 32
    Height = 33
    Top = 64
    Width = 144
    ItemHeight = 25
    ItemIndex = 0
    Items.Strings = (
      'NONE'
      'COLBAK'
      'COLPF0'
      'COLPF1'
      'COLPF2'
      'COLPF3'
    )
    TabOrder = 0
    Text = 'NONE'
    OnChange = ComboBox1Change
  end
  object Label1: TLabel
    Left = 38
    Height = 25
    Top = 24
    Width = 63
    Caption = 'Register'
  end
  object Button1: TButton
    Left = 152
    Height = 32
    Top = 152
    Width = 96
    Caption = 'Apply'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DrawGrid1: TDrawGrid
    Left = 280
    Height = 32
    Top = 65
    Width = 92
    ColCount = 1
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    RowCount = 1
    ScrollBars = ssNone
    TabOrder = 2
    OnClick = DrawGrid1Click
    OnDrawCell = DrawGrid1DrawCell
  end
  object Label2: TLabel
    Left = 280
    Height = 25
    Top = 24
    Width = 43
    Caption = 'Color'
  end
end
