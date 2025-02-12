object Form7: TForm7
  Left = 0
  Height = 876
  Top = 0
  Width = 1270
  BorderIcons = [biSystemMenu]
  Caption = 'Choose Big'
  ClientHeight = 876
  ClientWidth = 1270
  DesignTimePPI = 144
  LCLVersion = '8.2'
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  object DrawGrid1: TDrawGrid
    Left = 0
    Height = 872
    Top = 0
    Width = 1270
    Align = alCustom
    Anchors = [akTop, akLeft, akRight, akBottom]
    ColCount = 17
    DefaultColWidth = 120
    DefaultRowHeight = 120
    ExtendedSelect = False
    FixedColor = clMoneyGreen
    MouseWheelOption = mwGrid
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 17
    TabOrder = 0
    OnDrawCell = DrawGrid1DrawCell
    OnMouseDown = DrawGrid1MouseDown
    OnMouseUp = DrawGrid1MouseUp
    OnSelectCell = DrawGrid1SelectCell
  end
  object Button1: TButton
    Left = 32
    Height = 6
    Top = 872
    Width = 113
    Caption = 'Button1'
    TabOrder = 1
  end
end
