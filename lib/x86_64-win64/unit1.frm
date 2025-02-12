object Form1: TForm1
  Left = 0
  Height = 1091
  Top = 0
  Width = 1706
  Caption = 'Map Editor v.0.2'
  ClientHeight = 1061
  ClientWidth = 1706
  DesignTimePPI = 144
  Menu = MainMenu1
  OnCreate = FormCreate
  OnMouseMove = FormMouseMove
  ShowHint = True
  LCLVersion = '7.8'
  object DrawGrid1: TDrawGrid
    Left = 16
    Height = 272
    Top = 80
    Width = 272
    ColCount = 8
    ColRowDraggingCursor = crNo
    DefaultColWidth = 32
    DefaultRowHeight = 32
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    ParentShowHint = False
    RowCount = 8
    RowSizingCursor = crNo
    ScrollBars = ssNone
    TabOrder = 0
    Visible = False
    OnDrawCell = DrawGrid1DrawCell
    OnMouseDown = DrawGrid1MouseDown
    OnMouseUp = DrawGrid1MouseUp
    OnSelectCell = DrawGrid1SelectCell
  end
  object RadioGroup1: TRadioGroup
    Left = 328
    Height = 232
    Top = 72
    Width = 279
    AutoFill = False
    Caption = 'Colors'
    ChildSizing.LeftRightSpacing = 6
    ChildSizing.ShrinkHorizontal = crsScaleChilds
    ChildSizing.ShrinkVertical = crsScaleChilds
    ChildSizing.Layout = cclLeftToRightThenTopToBottom
    ChildSizing.ControlsPerLine = 1
    ClientHeight = 202
    ClientWidth = 275
    TabOrder = 1
    object RadioButton1: TRadioButton
      Left = 6
      Height = 29
      Top = 0
      Width = 47
      AutoSize = False
      Caption = 'BG'
      Checked = True
      OnClick = RadioButton1Click
      TabOrder = 9
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 6
      Height = 29
      Top = 32
      Width = 90
      Anchors = [akLeft]
      AutoSize = False
      Caption = 'Color 0'
      OnClick = RadioButton2Click
      TabOrder = 8
    end
    object RadioButton3: TRadioButton
      Left = 6
      Height = 29
      Top = 67
      Width = 90
      Anchors = [akLeft]
      AutoSize = False
      Caption = 'Color 1'
      OnClick = RadioButton3Click
      TabOrder = 0
    end
    object RadioButton4: TRadioButton
      Left = 6
      Height = 29
      Top = 101
      Width = 90
      Anchors = [akLeft]
      AutoSize = False
      Caption = 'Color 2'
      OnClick = RadioButton4Click
      TabOrder = 1
    end
    object RadioButton5: TRadioButton
      Left = 6
      Height = 29
      Top = 136
      Width = 90
      Anchors = [akLeft]
      AutoSize = False
      Caption = 'Color 3'
      OnClick = RadioButton5Click
      ParentBidiMode = False
      TabOrder = 2
    end
    object DrawGrid2: TDrawGrid
      Left = 144
      Height = 32
      Top = -3
      Width = 120
      Anchors = [akRight]
      ColCount = 1
      DefaultColWidth = 120
      ExtendedSelect = False
      FixedCols = 0
      FixedRows = 0
      RowCount = 1
      ScrollBars = ssNone
      TabOrder = 3
      OnClick = DrawGrid2Click
      OnDrawCell = DrawGrid2DrawCell
    end
    object DrawGrid3: TDrawGrid
      Left = 144
      Height = 32
      Top = 32
      Width = 120
      Anchors = [akRight]
      ColCount = 1
      DefaultColWidth = 120
      ExtendedSelect = False
      FixedCols = 0
      FixedRows = 0
      RowCount = 1
      ScrollBars = ssNone
      TabOrder = 4
      OnClick = DrawGrid3Click
      OnDrawCell = DrawGrid3DrawCell
      OnSelectCell = DrawGrid3SelectCell
    end
    object DrawGrid4: TDrawGrid
      Left = 144
      Height = 32
      Top = 67
      Width = 120
      Anchors = [akRight]
      ColCount = 1
      DefaultColWidth = 120
      ExtendedSelect = False
      FixedCols = 0
      FixedRows = 0
      RowCount = 1
      ScrollBars = ssNone
      TabOrder = 5
      OnClick = DrawGrid4Click
      OnDrawCell = DrawGrid4DrawCell
    end
    object DrawGrid5: TDrawGrid
      Left = 144
      Height = 32
      Top = 101
      Width = 120
      Anchors = [akRight]
      ColCount = 1
      DefaultColWidth = 120
      ExtendedSelect = False
      FixedCols = 0
      FixedRows = 0
      ScrollBars = ssNone
      TabOrder = 6
      OnClick = DrawGrid5Click
      OnDrawCell = DrawGrid5DrawCell
    end
    object DrawGrid6: TDrawGrid
      Left = 144
      Height = 32
      Top = 136
      Width = 120
      Anchors = [akRight]
      ColCount = 1
      DefaultColWidth = 120
      ExtendedSelect = False
      FixedCols = 0
      FixedRows = 0
      RowCount = 1
      ScrollBars = ssNone
      TabOrder = 7
      OnClick = DrawGrid6Click
      OnDrawCell = DrawGrid6DrawCell
    end
    object Label5: TLabel
      Left = 104
      Height = 25
      Top = 4
      Width = 30
      Anchors = []
      Caption = '$00'
    end
    object Label6: TLabel
      Left = 104
      Height = 25
      Top = 36
      Width = 30
      Anchors = []
      Caption = '$00'
    end
    object Label7: TLabel
      Left = 104
      Height = 25
      Top = 71
      Width = 30
      Anchors = []
      Caption = '$00'
    end
    object Label8: TLabel
      Left = 104
      Height = 25
      Top = 104
      Width = 30
      Anchors = []
      Caption = '$00'
    end
    object Label20: TLabel
      Left = 104
      Height = 25
      Top = 140
      Width = 30
      Anchors = []
      Caption = '$00'
      ParentFont = False
    end
  end
  object Button1: TButton
    Left = 16
    Height = 38
    Top = 19
    Width = 72
    Caption = '#$??'
    OnClick = Button1Click
    TabOrder = 2
  end
  object Button2: TButton
    Left = 216
    Height = 38
    Top = 19
    Width = 72
    Caption = '#$??'
    OnClick = Button2Click
    TabOrder = 3
  end
  object Label1: TLabel
    Left = 152
    Height = 25
    Top = 24
    Width = 48
    AutoSize = False
    Caption = '#$00'
    Font.CharSet = EASTEUROPE_CHARSET
    Font.Name = 'Segoe UI Semibold'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Label1Click
  end
  object ComboBox1: TComboBox
    Left = 312
    Height = 33
    Top = 19
    Width = 88
    ItemHeight = 25
    ItemIndex = 0
    Items.Strings = (
      'Font0'
      'Font1'
      'Font2'
      'Font3'
    )
    OnChange = ComboBox1Change
    TabOrder = 4
    Text = 'Font0'
  end
  object Button4: TButton
    Left = 528
    Height = 38
    Top = 19
    Width = 72
    Caption = 'Store'
    OnClick = Button4Click
    TabOrder = 5
  end
  object Button5: TButton
    Left = 96
    Height = 38
    Top = 360
    Width = 72
    Caption = 'Paste'
    Enabled = False
    OnClick = Button5Click
    TabOrder = 6
  end
  object Button6: TButton
    Left = 192
    Height = 38
    Top = 360
    Width = 65
    Caption = 'Fill'
    OnClick = Button6Click
    TabOrder = 7
  end
  object ComboBox2: TComboBox
    Left = 328
    Height = 33
    Top = 320
    Width = 100
    ItemHeight = 25
    OnChange = ComboBox2Change
    TabOrder = 8
    Text = 'Sektor0'
  end
  object Button7: TButton
    Left = 440
    Height = 38
    Top = 320
    Width = 45
    Caption = '<--'
    Enabled = False
    OnClick = Button7Click
    TabOrder = 9
  end
  object Button8: TButton
    Left = 496
    Height = 38
    Top = 320
    Width = 44
    Caption = '-->'
    Enabled = False
    OnClick = Button8Click
    TabOrder = 10
  end
  object GroupBox1: TGroupBox
    Left = 312
    Height = 72
    Top = 360
    Width = 288
    Caption = 'Attributes'
    ClientHeight = 42
    ClientWidth = 284
    TabOrder = 11
    object ComboBox3: TComboBox
      Left = 96
      Height = 33
      Top = -3
      Width = 176
      ItemHeight = 25
      OnChange = ComboBox3Change
      TabOrder = 0
      Text = 'none'
    end
    object Button3: TButton
      Left = 0
      Height = 30
      Top = 0
      Width = 80
      Caption = 'Edit'
      OnClick = Button3Click
      TabOrder = 1
    end
  end
  object DrawGrid7: TDrawGrid
    Left = 9
    Height = 184
    Top = 464
    Width = 188
    ColCount = 2
    ColRowDraggingCursor = crNo
    DefaultColWidth = 88
    DefaultRowHeight = 88
    DoubleBuffered = False
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Options = [goVertLine, goHorzLine]
    ParentDoubleBuffered = False
    ParentShowHint = False
    RowCount = 2
    ScrollBars = ssNone
    TabOrder = 12
    OnDrawCell = DrawGrid7DrawCell
    OnMouseDown = DrawGrid7MouseDown
    OnMouseMove = DrawGrid7MouseMove
    OnMouseUp = DrawGrid7MouseUp
    OnSelectCell = DrawGrid7SelectCell
  end
  object DrawGrid8: TDrawGrid
    Left = 9
    Height = 184
    Top = 736
    Width = 188
    ColCount = 2
    DefaultColWidth = 88
    DefaultRowHeight = 88
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    ParentShowHint = False
    RowCount = 2
    ScrollBars = ssNone
    TabOrder = 13
    OnDrawCell = DrawGrid8DrawCell
    OnMouseDown = DrawGrid8MouseDown
    OnMouseMove = DrawGrid8MouseMove
    OnMouseUp = DrawGrid8MouseUp
    OnSelectCell = DrawGrid8SelectCell
  end
  object DrawGrid9: TDrawGrid
    Left = 264
    Height = 328
    Top = 472
    Width = 333
    ColCount = 4
    DefaultColWidth = 80
    DefaultRowHeight = 80
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    ParentShowHint = False
    RowCount = 4
    ScrollBars = ssNone
    TabOrder = 14
    OnDrawCell = DrawGrid9DrawCell
    OnMouseDown = DrawGrid9MouseDown
    OnMouseMove = DrawGrid9MouseMove
    OnSelectCell = DrawGrid9SelectCell
  end
  object StaticText3: TStaticText
    Left = 96
    Height = 26
    Top = 432
    Width = 48
    Caption = '#$00'
    Font.Style = [fsBold]
    OnClick = StaticText3Click
    ParentFont = False
    TabOrder = 15
  end
  object Button9: TButton
    Left = 144
    Height = 24
    Top = 433
    Width = 53
    Caption = 'Save'
    OnClick = Button9Click
    TabOrder = 16
  end
  object Label2: TLabel
    Left = 93
    Height = 25
    Top = 705
    Width = 41
    Caption = '#$00'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Label2Click
  end
  object Button10: TButton
    Left = 144
    Height = 28
    Top = 702
    Width = 56
    Caption = 'Save'
    OnClick = Button10Click
    TabOrder = 17
  end
  object Button11: TButton
    Left = 8
    Height = 28
    Top = 656
    Width = 56
    Caption = 'Delete'
    OnClick = Button11Click
    TabOrder = 18
  end
  object Button12: TButton
    Left = 8
    Height = 28
    Top = 928
    Width = 56
    Caption = 'Delete'
    OnClick = Button12Click
    TabOrder = 19
  end
  object Label3: TLabel
    Left = 264
    Height = 25
    Top = 440
    Width = 27
    Caption = 'BIG'
  end
  object Label4: TLabel
    Left = 304
    Height = 25
    Top = 440
    Width = 41
    Caption = '#$00'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Label4Click
  end
  object Button13: TButton
    Left = 528
    Height = 28
    Top = 440
    Width = 56
    Caption = 'Save'
    OnClick = Button13Click
    TabOrder = 20
  end
  object Button14: TButton
    Left = 264
    Height = 28
    Top = 808
    Width = 56
    Caption = 'Delete'
    OnClick = Button14Click
    TabOrder = 21
  end
  object RadioButton6: TRadioButton
    Left = 336
    Height = 29
    Top = 808
    Width = 59
    Caption = 'Tiles'
    Checked = True
    OnClick = RadioButton6Click
    TabOrder = 23
    TabStop = True
  end
  object RadioButton7: TRadioButton
    Left = 406
    Height = 29
    Top = 808
    Width = 91
    Caption = 'Medium'
    OnClick = RadioButton7Click
    TabOrder = 22
  end
  object GroupBox2: TGroupBox
    Left = 264
    Height = 158
    Top = 856
    Width = 343
    Caption = 'Objects'
    ClientHeight = 128
    ClientWidth = 339
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 24
    object Button19: TButton
      Left = 263
      Height = 32
      Top = 80
      Width = 57
      Caption = 'Edit'
      OnClick = Button19Click
      TabOrder = 0
    end
    object ComboBox4: TComboBox
      Left = 16
      Height = 33
      Top = 13
      Width = 310
      ItemHeight = 25
      OnChange = ComboBox4Change
      ReadOnly = True
      TabOrder = 1
      Text = 'ERASER'
    end
  end
  object DrawGrid10: TDrawGrid
    Left = 656
    Height = 942
    Top = 72
    Width = 1024
    Anchors = [akTop, akLeft, akRight, akBottom]
    AutoAdvance = aaRightDown
    ColCount = 64
    DefaultColWidth = 60
    DefaultRowHeight = 60
    DoubleBuffered = True
    ExtendedSelect = False
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    RowCount = 64
    TabOrder = 25
    OnDrawCell = DrawGrid10DrawCell
    OnMouseDown = DrawGrid10MouseDown
    OnMouseMove = DrawGrid10MouseMove
    OnMouseUp = DrawGrid10MouseUp
    OnSelectCell = DrawGrid10SelectCell
  end
  object GroupBox4: TGroupBox
    Left = 736
    Height = 64
    Top = 8
    Width = 480
    Caption = 'Mode'
    ClientHeight = 34
    ClientWidth = 476
    TabOrder = 26
    object RadioButton10: TRadioButton
      Left = 16
      Height = 25
      Top = 0
      Width = 49
      Caption = 'Tile'
      Checked = True
      Font.Height = -16
      OnClick = RadioButton10Click
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object RadioButton11: TRadioButton
      Left = 80
      Height = 25
      Top = 0
      Width = 93
      Caption = 'MediumA'
      Font.Height = -16
      OnClick = RadioButton11Click
      ParentFont = False
      TabOrder = 1
    end
    object RadioButton12: TRadioButton
      Left = 184
      Height = 25
      Top = 0
      Width = 92
      Caption = 'MediumB'
      Font.Height = -16
      OnClick = RadioButton12Click
      ParentFont = False
      TabOrder = 2
    end
    object RadioButton13: TRadioButton
      Left = 296
      Height = 25
      Top = 0
      Width = 47
      Caption = 'Big'
      Font.Height = -16
      OnClick = RadioButton13Click
      ParentFont = False
      TabOrder = 3
    end
    object RadioButton14: TRadioButton
      Left = 368
      Height = 25
      Top = 0
      Width = 77
      Caption = 'Objects'
      Font.Height = -16
      OnClick = RadioButton14Click
      ParentFont = False
      TabOrder = 4
    end
  end
  object CheckBox1: TCheckBox
    Left = 1240
    Height = 29
    Top = 28
    Width = 75
    Caption = 'Virtual'
    OnChange = CheckBox1Change
    TabOrder = 27
  end
  object Label9: TLabel
    Left = 208
    Height = 25
    Top = 507
    Width = 10
    Caption = '0'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 208
    Height = 25
    Top = 592
    Width = 10
    Caption = '1'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 208
    Height = 25
    Top = 776
    Width = 10
    Caption = '2'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 208
    Height = 25
    Top = 872
    Width = 10
    Caption = '3'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 608
    Height = 25
    Top = 504
    Width = 10
    Caption = '0'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 606
    Height = 25
    Top = 576
    Width = 10
    Caption = '1'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 608
    Height = 25
    Top = 659
    Width = 10
    Caption = '2'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 609
    Height = 25
    Top = 744
    Width = 10
    Caption = '3'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CheckBox2: TCheckBox
    Left = 128
    Height = 29
    Top = 655
    Width = 58
    Caption = 'Grid'
    Checked = True
    OnChange = CheckBox2Change
    State = cbChecked
    TabOrder = 28
  end
  object CheckBox3: TCheckBox
    Left = 128
    Height = 29
    Top = 927
    Width = 58
    Caption = 'Grid'
    Checked = True
    OnChange = CheckBox3Change
    State = cbChecked
    TabOrder = 29
  end
  object CheckBox4: TCheckBox
    Left = 536
    Height = 29
    Top = 807
    Width = 58
    Caption = 'Grid'
    Checked = True
    OnChange = CheckBox4Change
    State = cbChecked
    TabOrder = 30
  end
  object CheckBox5: TCheckBox
    Left = 664
    Height = 29
    Top = 28
    Width = 58
    Caption = 'Grid'
    Checked = True
    OnChange = CheckBox5Change
    State = cbChecked
    TabOrder = 31
  end
  object Button16: TButton
    Left = 1496
    Height = 30
    Top = 28
    Width = 73
    Caption = '<--'
    Color = clSkyBlue
    Enabled = False
    OnClick = Button16Click
    TabOrder = 32
  end
  object Button17: TButton
    Left = 1592
    Height = 30
    Top = 28
    Width = 73
    Caption = '-->'
    Color = clBackground
    Enabled = False
    OnClick = Button17Click
    TabOrder = 33
  end
  object Label17: TLabel
    Left = 112
    Height = 25
    Top = 24
    Width = 31
    Caption = 'Tile'
    Font.Color = clRed
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 10
    Height = 25
    Top = 433
    Width = 78
    Caption = 'MediumA'
  end
  object Label19: TLabel
    Left = 10
    Height = 25
    Top = 705
    Width = 76
    Caption = 'MediumB'
  end
  object Label21: TLabel
    Left = 8
    Height = 1
    Top = 976
    Width = 1
    Font.Color = clRed
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button15: TButton
    Left = 1352
    Height = 30
    Top = 28
    Width = 97
    Caption = 'Tiles'
    OnClick = Button15Click
    TabOrder = 34
  end
  object Button18: TButton
    Left = 16
    Height = 38
    Top = 360
    Width = 65
    Caption = 'Copy'
    OnClick = Button18Click
    TabOrder = 35
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 992
    object MenuItem1: TMenuItem
      Caption = 'File'
      object MenuItem6: TMenuItem
        Caption = 'New'
        OnClick = MenuItem6Click
      end
      object Separator1: TMenuItem
        Caption = '-'
      end
      object MenuItem7: TMenuItem
        Caption = 'Load All...'
        OnClick = MenuItem7Click
      end
      object MenuItem8: TMenuItem
        Caption = 'Save All...'
        OnClick = MenuItem8Click
      end
      object Separator2: TMenuItem
        Caption = '-'
      end
      object MenuItem9: TMenuItem
        Caption = 'Import...'
        OnClick = MenuItem9Click
      end
      object MenuItem16: TMenuItem
        Caption = 'Export...'
        OnClick = MenuItem16Click
      end
    end
    object MenuItem12: TMenuItem
      Caption = 'Edit'
      object MenuItem13: TMenuItem
        Caption = 'Move Chars'
        OnClick = MenuItem13Click
      end
      object MenuItem15: TMenuItem
        Caption = 'Move Tiles'
        OnClick = MenuItem15Click
      end
    end
    object MenuItem2: TMenuItem
      Caption = 'Settings'
      object MenuItem14: TMenuItem
        Caption = 'Set Map Size'
        OnClick = MenuItem14Click
      end
      object MenuItem3: TMenuItem
        Caption = 'Set Sectors'
        OnClick = MenuItem3Click
      end
      object MenuItem5: TMenuItem
        Caption = 'Set Chars'
        OnClick = MenuItem5Click
      end
      object MenuItem11: TMenuItem
        Caption = 'Set Easy Tile Mode'
        OnClick = MenuItem11Click
      end
    end
    object MenuItem4: TMenuItem
      Caption = 'Help'
      object MenuItem10: TMenuItem
        Caption = 'About'
        OnClick = MenuItem10Click
      end
    end
  end
end
