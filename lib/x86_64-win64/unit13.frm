object Form13: TForm13
  Left = 0
  Height = 711
  Top = 0
  Width = 1148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Move Tiles'
  ClientHeight = 711
  ClientWidth = 1148
  DesignTimePPI = 144
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnMouseMove = FormMouseMove
  ShowHint = True
  LCLVersion = '7.8'
  object DrawGrid1: TDrawGrid
    Left = 8
    Height = 608
    Top = 8
    Width = 1112
    ColCount = 17
    DefaultColWidth = 64
    DefaultRowHeight = 64
    ExtendedSelect = False
    FixedColor = clMoneyGreen
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 9
    ScrollBars = ssNone
    TabOrder = 0
    OnDrawCell = DrawGrid1DrawCell
    OnMouseDown = DrawGrid1MouseDown
    OnMouseMove = DrawGrid1MouseMove
    OnMouseUp = DrawGrid1MouseUp
    OnSelectCell = DrawGrid1SelectCell
  end
  object ComboBox1: TComboBox
    Left = 280
    Height = 33
    Top = 648
    Width = 112
    ItemHeight = 25
    ItemIndex = 0
    Items.Strings = (
      'Font0'
      'Font1'
      'Font2'
      'Font3'
    )
    OnChange = ComboBox1Change
    OnMouseDown = ComboBox1MouseDown
    OnMouseUp = ComboBox1MouseUp
    TabOrder = 1
    Text = 'Font0'
  end
  object Button1: TButton
    Left = 648
    Height = 38
    Top = 648
    Width = 113
    Caption = 'Apply'
    OnClick = Button1Click
    TabOrder = 2
  end
end
