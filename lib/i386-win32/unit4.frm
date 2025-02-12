object Form4: TForm4
  Left = 0
  Height = 593
  Top = 0
  Width = 1109
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Choose Tile'
  ClientHeight = 593
  ClientWidth = 1109
  DesignTimePPI = 144
  OnDeactivate = FormDeactivate
  ShowHint = True
  LCLVersion = '7.8'
  object DrawGrid1: TDrawGrid
    Left = 0
    Height = 593
    Top = 0
    Width = 1109
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
    OnMouseLeave = DrawGrid1MouseLeave
    OnMouseMove = DrawGrid1MouseMove
    OnMouseUp = DrawGrid1MouseUp
    OnSelectCell = DrawGrid1SelectCell
  end
end
