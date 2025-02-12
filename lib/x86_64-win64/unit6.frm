object Form6: TForm6
  Left = 0
  Height = 859
  Top = 0
  Width = 1265
  Anchors = [akTop, akLeft, akRight, akBottom]
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Choose Medium Block'
  ClientHeight = 859
  ClientWidth = 1265
  DesignTimePPI = 144
  OnDeactivate = FormDeactivate
  LCLVersion = '7.8'
  object DrawGrid1: TDrawGrid
    Left = 0
    Height = 859
    Top = 0
    Width = 1265
    Align = alClient
    Anchors = [akLeft, akBottom]
    ColCount = 17
    DefaultColWidth = 100
    DefaultRowHeight = 100
    ExtendedSelect = False
    FixedColor = clMoneyGreen
    GridLineColor = clBtnShadow
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 17
    TabOrder = 0
    OnDrawCell = DrawGrid1DrawCell
    OnMouseDown = DrawGrid1MouseDown
    OnMouseUp = DrawGrid1MouseUp
    OnSelectCell = DrawGrid1SelectCell
  end
end
