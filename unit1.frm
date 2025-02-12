object Form1: TForm1
  Left = 0
  Height = 1134
  Top = 0
  Width = 1706
  Caption = 'Map Editor v.0.'
  ClientHeight = 1134
  ClientWidth = 1706
  DesignTimePPI = 144
  Menu = MainMenu1
  ShowHint = True
  LCLVersion = '8.2'
  OnCreate = FormCreate
  OnMouseMove = FormMouseMove
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
    Height = 200
    Top = 72
    Width = 279
    AutoFill = False
    Caption = 'Colors'
    ChildSizing.LeftRightSpacing = 6
    ChildSizing.ShrinkHorizontal = crsScaleChilds
    ChildSizing.ShrinkVertical = crsScaleChilds
    ChildSizing.Layout = cclLeftToRightThenTopToBottom
    ChildSizing.ControlsPerLine = 1
    ClientHeight = 170
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
      TabOrder = 9
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 6
      Height = 29
      Top = 28
      Width = 90
      Anchors = [akLeft]
      AutoSize = False
      Caption = 'Color 0'
      TabOrder = 8
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 6
      Height = 29
      Top = 61
      Width = 90
      Anchors = [akLeft]
      AutoSize = False
      Caption = 'Color 1'
      TabOrder = 0
      OnClick = RadioButton3Click
    end
    object RadioButton4: TRadioButton
      Left = 6
      Height = 29
      Top = 94
      Width = 90
      Anchors = [akLeft]
      AutoSize = False
      Caption = 'Color 2'
      TabOrder = 1
      OnClick = RadioButton4Click
    end
    object RadioButton5: TRadioButton
      Left = 6
      Height = 29
      Top = 127
      Width = 90
      Anchors = [akLeft]
      AutoSize = False
      Caption = 'Color 3'
      ParentBidiMode = False
      TabOrder = 2
      OnClick = RadioButton5Click
    end
    object DrawGrid2: TDrawGrid
      Left = 144
      Height = 32
      Top = -5
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
      Top = 28
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
    end
    object DrawGrid4: TDrawGrid
      Left = 144
      Height = 32
      Top = 61
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
      Top = 94
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
      Top = 127
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
      Top = 1
      Width = 30
      Anchors = []
      Caption = '$00'
    end
    object Label6: TLabel
      Left = 104
      Height = 25
      Top = 28
      Width = 30
      Anchors = []
      Caption = '$00'
    end
    object Label7: TLabel
      Left = 104
      Height = 25
      Top = 61
      Width = 30
      Anchors = []
      Caption = '$00'
    end
    object Label8: TLabel
      Left = 104
      Height = 25
      Top = 94
      Width = 30
      Anchors = []
      Caption = '$00'
    end
    object Label20: TLabel
      Left = 104
      Height = 25
      Top = 127
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
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Height = 38
    Top = 19
    Width = 72
    Caption = '#$??'
    TabOrder = 3
    OnClick = Button2Click
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
    TabOrder = 4
    Text = 'Font0'
    OnChange = ComboBox1Change
  end
  object Button4: TButton
    Left = 528
    Height = 38
    Top = 19
    Width = 72
    Caption = 'Store'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 140
    Height = 30
    Top = 360
    Width = 68
    Caption = 'Paste'
    Enabled = False
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 223
    Height = 30
    Top = 360
    Width = 65
    Caption = 'Fill'
    TabOrder = 7
    OnClick = Button6Click
  end
  object ComboBox2: TComboBox
    Left = 413
    Height = 33
    Top = 19
    Width = 100
    ItemHeight = 25
    TabOrder = 8
    Text = 'Sektor0'
    OnChange = ComboBox2Change
  end
  object Button7: TButton
    Left = 312
    Height = 38
    Top = 312
    Width = 45
    Caption = '<'
    Enabled = False
    TabOrder = 9
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 368
    Height = 38
    Top = 312
    Width = 44
    Caption = '>'
    Enabled = False
    TabOrder = 10
    OnClick = Button8Click
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
      TabOrder = 0
      Text = 'none'
      OnChange = ComboBox3Change
    end
    object Button3: TButton
      Left = 0
      Height = 30
      Top = 0
      Width = 80
      Caption = 'Edit'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object DrawGrid7: TDrawGrid
    Left = 10
    Height = 184
    Top = 528
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
    Left = 8
    Height = 184
    Top = 800
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
    Top = 433
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
    Left = 93
    Height = 26
    Top = 495
    Width = 48
    Caption = '#$00'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = StaticText3Click
  end
  object Button9: TButton
    Left = 140
    Height = 24
    Top = 495
    Width = 53
    Caption = 'Save'
    TabOrder = 16
    OnClick = Button9Click
  end
  object Label2: TLabel
    Left = 93
    Height = 25
    Top = 765
    Width = 41
    Caption = '#$00'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Label2Click
  end
  object Button10: TButton
    Left = 140
    Height = 28
    Top = 762
    Width = 56
    Caption = 'Save'
    TabOrder = 17
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 8
    Height = 28
    Top = 720
    Width = 56
    Caption = 'Delete'
    TabOrder = 18
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 8
    Height = 28
    Top = 992
    Width = 56
    Caption = 'Delete'
    TabOrder = 19
    OnClick = Button12Click
  end
  object Label3: TLabel
    Left = 424
    Height = 25
    Top = 765
    Width = 27
    Caption = 'BIG'
  end
  object Label4: TLabel
    Left = 472
    Height = 25
    Top = 765
    Width = 41
    Caption = '#$00'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Label4Click
  end
  object Button13: TButton
    Left = 538
    Height = 28
    Top = 765
    Width = 56
    Caption = 'Save'
    TabOrder = 20
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 264
    Height = 28
    Top = 808
    Width = 56
    Caption = 'Delete'
    TabOrder = 21
    OnClick = Button14Click
  end
  object RadioButton6: TRadioButton
    Left = 336
    Height = 29
    Top = 808
    Width = 59
    Caption = 'Tiles'
    Checked = True
    TabOrder = 23
    TabStop = True
    OnClick = RadioButton6Click
  end
  object RadioButton7: TRadioButton
    Left = 406
    Height = 29
    Top = 808
    Width = 91
    Caption = 'Medium'
    TabOrder = 22
    OnClick = RadioButton7Click
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
      TabOrder = 0
      OnClick = Button19Click
    end
    object ComboBox4: TComboBox
      Left = 16
      Height = 33
      Top = 13
      Width = 310
      ItemHeight = 25
      ReadOnly = True
      TabOrder = 1
      Text = 'ERASER'
      OnChange = ComboBox4Change
    end
    object Label24: TLabel
      Left = 24
      Height = 25
      Top = 87
      Width = 21
      Caption = '#0'
      Font.CharSet = EASTEUROPE_CHARSET
      Font.Name = 'Segoe UI Semibold'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DrawGrid10: TDrawGrid
    Left = 656
    Height = 1047
    Top = 72
    Width = 1024
    Anchors = [akTop, akLeft, akRight, akBottom]
    AutoAdvance = aaRightDown
    ColCount = 64
    DefaultColWidth = 60
    DefaultRowHeight = 60
    DoubleBuffered = True
    ExtendedSelect = False
    MouseWheelOption = mwGrid
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    RowCount = 64
    TabOrder = 25
    OnDrawCell = DrawGrid10DrawCell
    OnMouseDown = DrawGrid10MouseDown
    OnMouseLeave = DrawGrid10MouseLeave
    OnMouseMove = DrawGrid10MouseMove
    OnMouseUp = DrawGrid10MouseUp
    OnSelectCell = DrawGrid10SelectCell
  end
  object GroupBox4: TGroupBox
    Left = 736
    Height = 64
    Top = 8
    Width = 536
    Caption = 'Mode'
    ClientHeight = 34
    ClientWidth = 532
    TabOrder = 26
    object RadioButton10: TRadioButton
      Left = 16
      Height = 25
      Top = 0
      Width = 49
      Caption = 'Tile'
      Checked = True
      Font.Height = -16
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton10Click
    end
    object RadioButton11: TRadioButton
      Left = 72
      Height = 25
      Top = 0
      Width = 93
      Caption = 'MediumA'
      Font.Height = -16
      ParentFont = False
      TabOrder = 1
      OnClick = RadioButton11Click
    end
    object RadioButton12: TRadioButton
      Left = 176
      Height = 25
      Top = 0
      Width = 92
      Caption = 'MediumB'
      Font.Height = -16
      ParentFont = False
      TabOrder = 2
      OnClick = RadioButton12Click
    end
    object RadioButton13: TRadioButton
      Left = 288
      Height = 25
      Top = 0
      Width = 47
      Caption = 'Big'
      Font.Height = -16
      ParentFont = False
      TabOrder = 3
      OnChange = RadioButton13Change
      OnClick = RadioButton13Click
    end
    object RadioButton14: TRadioButton
      Left = 352
      Height = 25
      Top = 0
      Width = 77
      Caption = 'Objects'
      Font.Height = -16
      ParentFont = False
      TabOrder = 4
      OnChange = RadioButton14Change
      OnClick = RadioButton14Click
    end
    object RadioButton8: TRadioButton
      Left = 448
      Height = 29
      Top = -4
      Width = 64
      Caption = 'Level'
      TabOrder = 5
      OnClick = RadioButton8Click
    end
  end
  object CheckBox1: TCheckBox
    Left = 1288
    Height = 29
    Top = 30
    Width = 85
    Caption = 'Objects'
    TabOrder = 27
    OnChange = CheckBox1Change
  end
  object Label9: TLabel
    Left = 208
    Height = 25
    Top = 560
    Width = 10
    Caption = '0'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 208
    Height = 25
    Top = 648
    Width = 10
    Caption = '1'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 208
    Height = 25
    Top = 832
    Width = 10
    Caption = '2'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 208
    Height = 25
    Top = 912
    Width = 10
    Caption = '3'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 608
    Height = 25
    Top = 464
    Width = 10
    Caption = '0'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 606
    Height = 25
    Top = 544
    Width = 10
    Caption = '1'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 606
    Height = 25
    Top = 624
    Width = 10
    Caption = '2'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 606
    Height = 25
    Top = 704
    Width = 10
    Caption = '3'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CheckBox2: TCheckBox
    Left = 120
    Height = 29
    Top = 719
    Width = 58
    Caption = 'Grid'
    Checked = True
    State = cbChecked
    TabOrder = 28
    OnChange = CheckBox2Change
  end
  object CheckBox3: TCheckBox
    Left = 112
    Height = 29
    Top = 992
    Width = 58
    Caption = 'Grid'
    Checked = True
    State = cbChecked
    TabOrder = 29
    OnChange = CheckBox3Change
  end
  object CheckBox4: TCheckBox
    Left = 536
    Height = 29
    Top = 807
    Width = 58
    Caption = 'Grid'
    Checked = True
    State = cbChecked
    TabOrder = 30
    OnChange = CheckBox4Change
  end
  object CheckBox5: TCheckBox
    Left = 656
    Height = 29
    Top = 8
    Width = 58
    Caption = 'Grid'
    Checked = True
    State = cbChecked
    TabOrder = 31
    OnChange = CheckBox5Change
  end
  object Button16: TButton
    Left = 1568
    Height = 30
    Top = 29
    Width = 49
    Caption = '<--'
    Color = clSkyBlue
    Enabled = False
    TabOrder = 32
    OnClick = Button16Click
  end
  object Button17: TButton
    Left = 1623
    Height = 30
    Top = 28
    Width = 57
    Caption = '-->'
    Color = clBackground
    Enabled = False
    TabOrder = 33
    OnClick = Button17Click
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
    Top = 496
    Width = 78
    Caption = 'MediumA'
  end
  object Label19: TLabel
    Left = 9
    Height = 25
    Top = 765
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
    Left = 1392
    Height = 30
    Top = 29
    Width = 72
    Caption = 'Tiles'
    TabOrder = 34
    OnClick = Button15Click
  end
  object Button18: TButton
    Left = 143
    Height = 30
    Top = 392
    Width = 65
    Caption = 'Copy'
    TabOrder = 35
    OnClick = Button18Click
  end
  object Button20: TButton
    Left = 1472
    Height = 30
    Top = 29
    Width = 89
    Caption = 'Template'
    TabOrder = 36
    OnClick = Button20Click
  end
  object CheckBox6: TCheckBox
    Left = 656
    Height = 29
    Top = 40
    Width = 71
    Caption = 'Alpha'
    TabOrder = 37
    OnChange = CheckBox6Change
  end
  object DrawGrid11: TDrawGrid
    Left = 464
    Height = 50
    Top = 312
    Width = 50
    ColCount = 1
    DefaultColWidth = 44
    DefaultRowHeight = 44
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    RowCount = 1
    ScrollBars = ssNone
    TabOrder = 38
    OnClick = DrawGrid11Click
    OnDrawCell = DrawGrid11DrawCell
  end
  object DrawGrid12: TDrawGrid
    Left = 544
    Height = 50
    Top = 312
    Width = 50
    ColCount = 1
    DefaultColWidth = 44
    DefaultRowHeight = 44
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    RowCount = 1
    ScrollBars = ssNone
    TabOrder = 39
    OnClick = DrawGrid12Click
    OnDrawCell = DrawGrid12DrawCell
  end
  object Label22: TLabel
    Left = 464
    Height = 25
    Top = 280
    Width = 52
    Caption = 'Mask0'
  end
  object Label23: TLabel
    Left = 542
    Height = 25
    Top = 280
    Width = 52
    Caption = 'Mask1'
  end
  object CheckBox7: TCheckBox
    Left = 520
    Height = 29
    Top = 1048
    Width = 105
    Caption = 'Multicolor'
    TabOrder = 40
    OnChange = CheckBox7Change
  end
  object Button21: TButton
    Left = 10
    Height = 33
    Top = 387
    Width = 32
    Caption = '<-'
    TabOrder = 41
    OnClick = Button21Click
  end
  object Button22: TButton
    Left = 72
    Height = 30
    Top = 387
    Width = 33
    Caption = '->'
    TabOrder = 42
    OnClick = Button22Click
  end
  object Button23: TButton
    Left = 40
    Height = 30
    Top = 416
    Width = 35
    Caption = '\/'
    TabOrder = 43
    OnClick = Button23Click
  end
  object Button24: TButton
    Left = 40
    Height = 31
    Top = 359
    Width = 36
    Caption = '/\'
    TabOrder = 44
    OnClick = Button24Click
  end
  object Button25: TButton
    Left = 96
    Height = 27
    Top = 424
    Width = 74
    Caption = 'MirrorH'
    TabOrder = 45
    OnClick = Button25Click
  end
  object Button26: TButton
    Left = 176
    Height = 27
    Top = 424
    Width = 73
    Caption = 'MirrorV'
    TabOrder = 46
    OnClick = Button26Click
  end
  object MainMenu1: TMainMenu
    Left = 48
    Top = 1040
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
      object MenuItem17: TMenuItem
        Caption = 'Load Fonts...'
        OnClick = MenuItem17Click
      end
      object MenuItem18: TMenuItem
        Caption = 'Save Fonts...'
        OnClick = MenuItem18Click
      end
      object Separator3: TMenuItem
        Caption = '-'
      end
      object MenuItem19: TMenuItem
        Caption = 'Load Template...'
        OnClick = MenuItem19Click
      end
      object MenuItem20: TMenuItem
        Caption = 'Save Template...'
        OnClick = MenuItem20Click
      end
      object Separator6: TMenuItem
        Caption = '-'
      end
      object MenuItem26: TMenuItem
        Caption = 'Load Object...'
        OnClick = MenuItem26Click
      end
      object MenuItem27: TMenuItem
        Caption = 'Save Object...'
        OnClick = MenuItem27Click
      end
      object Separator4: TMenuItem
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
      object MenuItem15: TMenuItem
        Caption = 'Move Tiles'
        OnClick = MenuItem15Click
      end
      object MenuItem11: TMenuItem
        Caption = 'Tile Animation'
        OnClick = MenuItem11Click
      end
      object MenuItem25: TMenuItem
        Caption = 'Edit Masks'
        OnClick = MenuItem25Click
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
      object MenuItem13: TMenuItem
        Caption = 'Set Masks'
        OnClick = MenuItem13Click
      end
      object Separator5: TMenuItem
        Caption = '-'
      end
      object MenuItem21: TMenuItem
        Caption = 'Height'
        object MenuItem22: TMenuItem
          Caption = 'Set all to LOW'
          OnClick = MenuItem22Click
        end
        object MenuItem23: TMenuItem
          Caption = 'Set all to HIGH'
          OnClick = MenuItem23Click
        end
      end
    end
    object MenuItem24: TMenuItem
      Caption = 'Test'
      OnClick = MenuItem24Click
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
