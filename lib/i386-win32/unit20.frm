object Form20: TForm20
  Left = 0
  Height = 454
  Top = 0
  Width = 1059
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Edit Masks'
  ClientHeight = 454
  ClientWidth = 1059
  DesignTimePPI = 144
  LCLVersion = '8.2'
  OnActivate = FormActivate
  object ComboBox1: TComboBox
    Left = 24
    Height = 33
    Top = 24
    Width = 112
    ItemHeight = 25
    TabOrder = 0
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
  end
  object DrawGrid1: TDrawGrid
    Left = 24
    Height = 270
    Top = 80
    Width = 270
    ColCount = 8
    DefaultColWidth = 32
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    MouseWheelOption = mwGrid
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 8
    ScrollBars = ssNone
    TabOrder = 1
    OnDrawCell = DrawGrid1DrawCell
    OnMouseDown = DrawGrid1MouseDown
    OnMouseUp = DrawGrid1MouseUp
    OnSelectCell = DrawGrid1SelectCell
  end
  object DrawGrid2: TDrawGrid
    Left = 344
    Height = 336
    Top = 80
    Width = 658
    ColCount = 8
    DefaultColWidth = 80
    DefaultRowHeight = 80
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    MouseWheelOption = mwGrid
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 4
    ScrollBars = ssNone
    TabOrder = 2
    OnDrawCell = DrawGrid2DrawCell
    OnSelectCell = DrawGrid2SelectCell
  end
  object Button1: TButton
    Left = 24
    Height = 38
    Top = 376
    Width = 88
    Caption = 'Store'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 213
    Height = 30
    Top = 384
    Width = 81
    Caption = 'Clear'
    TabOrder = 4
    OnClick = Button2Click
  end
end
