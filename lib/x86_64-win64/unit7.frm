object Form7: TForm7
  Left = 0
  Height = 1003
  Top = 0
  Width = 1270
  BorderStyle = bsSingle
  Caption = 'Form7'
  ClientHeight = 1003
  ClientWidth = 1270
  DesignTimePPI = 144
  OnDeactivate = FormDeactivate
  LCLVersion = '7.8'
  object DrawGrid1: TDrawGrid
    Left = 0
    Height = 1003
    Top = 0
    Width = 1270
    Align = alClient
    ColCount = 17
    DefaultColWidth = 120
    DefaultRowHeight = 120
    ExtendedSelect = False
    FixedColor = clMoneyGreen
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 17
    TabOrder = 0
    OnDrawCell = DrawGrid1DrawCell
    OnMouseDown = DrawGrid1MouseDown
    OnMouseUp = DrawGrid1MouseUp
    OnSelectCell = DrawGrid1SelectCell
  end
end
