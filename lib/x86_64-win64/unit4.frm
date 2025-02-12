object Form4: TForm4
  Left = 0
  Height = 604
  Top = 0
  Width = 1121
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Choose Tile'
  ClientHeight = 604
  ClientWidth = 1121
  DesignTimePPI = 144
  OnDeactivate = FormDeactivate
  LCLVersion = '7.8'
  object DrawGrid1: TDrawGrid
    Left = 0
    Height = 604
    Top = 0
    Width = 1121
    Align = alClient
    AutoAdvance = aaLeft
    ColCount = 17
    DefaultColWidth = 64
    DefaultRowHeight = 64
    ExtendedSelect = False
    FixedColor = clMoneyGreen
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 9
    TabOrder = 0
    OnDrawCell = DrawGrid1DrawCell
    OnMouseDown = DrawGrid1MouseDown
    OnMouseUp = DrawGrid1MouseUp
    OnSelectCell = DrawGrid1SelectCell
  end
end
