object Form3: TForm3
  Left = 0
  Height = 682
  Top = 0
  Width = 1164
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Choose char'
  ClientHeight = 682
  ClientWidth = 1164
  DesignTimePPI = 144
  OnDeactivate = FormDeactivate
  LCLVersion = '7.8'
  object DrawGrid1: TDrawGrid
    Left = 32
    Height = 592
    Top = 64
    Width = 1100
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
    OnMouseUp = DrawGrid1MouseUp
    OnSelectCell = DrawGrid1SelectCell
  end
  object CheckBox1: TCheckBox
    Left = 524
    Height = 29
    Top = 21
    Width = 95
    Caption = 'Negative'
    OnChange = CheckBox1Change
    TabOrder = 1
  end
end
