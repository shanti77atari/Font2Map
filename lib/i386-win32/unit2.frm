object Form2: TForm2
  Left = 0
  Height = 723
  Top = 0
  Width = 900
  BorderIcons = [biSystemMenu]
  Caption = 'Choose Color'
  ClientHeight = 723
  ClientWidth = 900
  DesignTimePPI = 144
  LCLVersion = '8.2'
  OnActivate = FormActivate
  OnDeactivate = FormDeactivate
  object DrawGrid1: TDrawGrid
    Left = 8
    Height = 696
    Top = 16
    Width = 880
    ColCount = 9
    DefaultRowHeight = 40
    ExtendedSelect = False
    FixedColor = clSkyBlue
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goSmoothScroll, goCellHints]
    ParentShowHint = False
    RowCount = 17
    ScrollBars = ssNone
    ShowHint = True
    TabOrder = 0
    OnDrawCell = DrawGrid1DrawCell
    OnMouseDown = DrawGrid1MouseDown
    OnMouseLeave = DrawGrid1MouseLeave
    OnMouseMove = DrawGrid1MouseMove
    OnMouseUp = DrawGrid1MouseUp
    OnSelectCell = DrawGrid1SelectCell
  end
end
