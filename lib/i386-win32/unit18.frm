object Form18: TForm18
  Left = 0
  Height = 627
  Top = 0
  Width = 1066
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tile Animation'
  ClientHeight = 627
  ClientWidth = 1066
  DesignTimePPI = 144
  LCLVersion = '8.2'
  OnActivate = FormActivate
  OnCreate = FormCreate
  object ComboBox1: TComboBox
    Left = 176
    Height = 33
    Top = 16
    Width = 64
    ItemHeight = 25
    ItemIndex = 0
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
    )
    TabOrder = 0
    Text = '0'
    OnChange = ComboBox1Change
  end
  object Label1: TLabel
    Left = 40
    Height = 25
    Top = 16
    Width = 120
    Caption = 'Max Animation'
  end
  object Label2: TLabel
    Left = 111
    Height = 25
    Top = 96
    Width = 82
    Caption = 'Animation'
  end
  object Edit1: TEdit
    Left = 128
    Height = 33
    Top = 128
    Width = 40
    TabOrder = 1
    Text = '0'
  end
  object Button1: TButton
    Left = 64
    Height = 33
    Top = 128
    Width = 40
    Caption = '-'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Height = 33
    Top = 128
    Width = 40
    Caption = '+'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DrawGrid1: TDrawGrid
    Left = 40
    Height = 334
    Top = 192
    Width = 340
    ColCount = 8
    DefaultColWidth = 40
    DefaultRowHeight = 40
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 8
    ScrollBars = ssNone
    TabOrder = 4
    OnDrawCell = DrawGrid1DrawCell
    OnMouseDown = DrawGrid1MouseDown
    OnMouseUp = DrawGrid1MouseUp
    OnSelectCell = DrawGrid1SelectCell
  end
  object ComboBox2: TComboBox
    Left = 184
    Height = 33
    Top = 576
    Width = 104
    ItemHeight = 25
    TabOrder = 5
    Text = 'ComboBox2'
    OnChange = ComboBox2Change
  end
  object Label3: TLabel
    Left = 224
    Height = 25
    Top = 544
    Width = 26
    Caption = 'Tile'
  end
  object ComboBox3: TComboBox
    Left = 304
    Height = 33
    Top = 576
    Width = 96
    ItemHeight = 25
    ItemIndex = 0
    Items.Strings = (
      'Font0'
      'Font1'
      'Font2'
      'Font3'
    )
    TabOrder = 6
    Text = 'Font0'
    OnChange = ComboBox3Change
  end
  object Label4: TLabel
    Left = 336
    Height = 25
    Top = 544
    Width = 36
    Caption = 'Font'
  end
  object Label5: TLabel
    Left = 72
    Height = 25
    Top = 544
    Width = 49
    Caption = 'Frame'
  end
  object GroupBox1: TGroupBox
    Left = 416
    Height = 270
    Top = 192
    Width = 278
    Caption = 'Colors'
    ClientHeight = 240
    ClientWidth = 274
    TabOrder = 7
    object RadioButton1: TRadioButton
      Left = 24
      Height = 29
      Top = 19
      Width = 47
      Caption = 'BG'
      TabOrder = 0
      OnChange = RadioButton1Change
    end
    object RadioButton2: TRadioButton
      Left = 24
      Height = 29
      Top = 64
      Width = 83
      Caption = 'Color 0'
      TabOrder = 1
      OnChange = RadioButton2Change
    end
    object RadioButton3: TRadioButton
      Left = 24
      Height = 29
      Top = 112
      Width = 83
      Caption = 'Color 1'
      TabOrder = 2
      OnChange = RadioButton3Change
    end
    object RadioButton4: TRadioButton
      Left = 24
      Height = 29
      Top = 160
      Width = 83
      Caption = 'Color 2'
      TabOrder = 3
      OnChange = RadioButton4Change
    end
    object DrawGrid2: TDrawGrid
      Left = 136
      Height = 35
      Top = 19
      Width = 99
      ColCount = 1
      ExtendedSelect = False
      FixedCols = 0
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      RowCount = 1
      ScrollBars = ssNone
      TabOrder = 4
      OnDrawCell = DrawGrid2DrawCell
    end
    object DrawGrid3: TDrawGrid
      Left = 136
      Height = 35
      Top = 64
      Width = 99
      ColCount = 1
      ExtendedSelect = False
      FixedCols = 0
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      RowCount = 1
      ScrollBars = ssNone
      TabOrder = 5
      OnDrawCell = DrawGrid3DrawCell
    end
    object DrawGrid4: TDrawGrid
      Left = 136
      Height = 35
      Top = 112
      Width = 99
      ColCount = 1
      ExtendedSelect = False
      FixedCols = 0
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      RowCount = 1
      ScrollBars = ssNone
      TabOrder = 6
      OnDrawCell = DrawGrid4DrawCell
    end
    object DrawGrid5: TDrawGrid
      Left = 136
      Height = 35
      Top = 160
      Width = 99
      ColCount = 1
      ExtendedSelect = False
      FixedCols = 0
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      RowCount = 1
      ScrollBars = ssNone
      TabOrder = 7
      OnDrawCell = DrawGrid5DrawCell
    end
  end
  object DrawGrid6: TDrawGrid
    Left = 800
    Height = 168
    Top = 192
    Width = 172
    ColCount = 8
    DefaultColWidth = 20
    DefaultRowHeight = 20
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    GridLineWidth = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    RowCount = 8
    ScrollBars = ssNone
    TabOrder = 8
    OnDrawCell = DrawGrid6DrawCell
  end
  object ComboBox5: TComboBox
    Left = 872
    Height = 33
    Top = 384
    Width = 54
    ItemHeight = 25
    ItemIndex = 2
    Items.Strings = (
      '2'
      '4'
      '8'
      '16'
    )
    TabOrder = 9
    Text = '8'
    OnChange = ComboBox5Change
  end
  object Label6: TLabel
    Left = 800
    Height = 25
    Top = 384
    Width = 50
    Caption = 'Speed'
  end
  object Button3: TButton
    Left = 408
    Height = 32
    Top = 488
    Width = 64
    Caption = 'Copy'
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button5: TButton
    Left = 568
    Height = 32
    Top = 488
    Width = 64
    Caption = 'Fill'
    TabOrder = 11
    OnClick = Button5Click
  end
  object CheckBox1: TCheckBox
    Left = 440
    Height = 29
    Top = 580
    Width = 95
    Caption = 'Negative'
    TabOrder = 12
    OnChange = CheckBox1Change
  end
  object Button4: TButton
    Left = 488
    Height = 32
    Top = 488
    Width = 64
    Caption = 'Paste'
    TabOrder = 13
    OnClick = Button4Click
  end
  object Edit2: TEdit
    Left = 80
    Height = 33
    Top = 576
    Width = 33
    TabOrder = 14
    Text = 'Edit2'
  end
  object Button6: TButton
    Left = 40
    Height = 30
    Top = 579
    Width = 33
    Caption = '-'
    TabOrder = 15
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 128
    Height = 30
    Top = 579
    Width = 33
    Caption = '+'
    TabOrder = 16
    OnClick = Button7Click
  end
  object ComboBox4: TComboBox
    Left = 456
    Height = 33
    Top = 16
    Width = 56
    ItemHeight = 25
    ItemIndex = 1
    Items.Strings = (
      '2'
      '4'
    )
    TabOrder = 17
    Text = '4'
    OnChange = ComboBox4Change
  end
  object Label7: TLabel
    Left = 328
    Height = 25
    Top = 16
    Width = 95
    Caption = 'Max Frames'
  end
  object Timer1: TTimer
    Interval = 160
    OnTimer = Timer1Timer
    Left = 602
    Top = 52
  end
end
