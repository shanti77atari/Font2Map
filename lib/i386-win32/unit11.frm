object Form11: TForm11
  Left = 0
  Height = 715
  Hint = 'test'
  Top = 0
  Width = 1156
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Move Chars'
  ClientHeight = 715
  ClientWidth = 1156
  DesignTimePPI = 144
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnMouseMove = FormMouseMove
  ShowHint = True
  LCLVersion = '7.8'
  object DrawGrid1: TDrawGrid
    Left = 16
    Height = 600
    Top = 16
    Width = 1129
    ColCount = 17
    DefaultColWidth = 64
    DefaultRowHeight = 64
    ExtendedSelect = False
    FixedColor = clGradientActiveCaption
    GridLineColor = clDefault
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    ParentShowHint = False
    RowCount = 9
    ScrollBars = ssNone
    TabOrder = 0
    OnDrawCell = DrawGrid1DrawCell
    OnMouseDown = DrawGrid1MouseDown
    OnMouseMove = DrawGrid1MouseMove
    OnMouseUp = DrawGrid1MouseUp
    OnSelectCell = DrawGrid1SelectCell
  end
  object Button1: TButton
    Left = 768
    Height = 38
    Top = 643
    Width = 113
    Caption = 'Apply'
    OnClick = Button1Click
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 392
    Height = 33
    Top = 643
    Width = 110
    ItemHeight = 25
    ItemIndex = 0
    Items.Strings = (
      'Font0'
      'Font1'
      'Font2'
      'Font3'
    )
    OnChange = ComboBox1Change
    TabOrder = 2
    Text = 'Font0'
  end
  object CheckBox1: TCheckBox
    Left = 114
    Height = 29
    Top = 646
    Width = 95
    Caption = 'Negative'
    OnChange = CheckBox1Change
    TabOrder = 3
  end
end
