object Form6: TForm6
  Left = 0
  Height = 905
  Top = 0
  Width = 1231
  Anchors = [akTop, akLeft, akRight, akBottom]
  BorderIcons = [biSystemMenu]
  Caption = 'Choose Medium Block'
  ClientHeight = 905
  ClientWidth = 1231
  DesignTimePPI = 144
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  ParentFont = True
  LCLVersion = '7.8'
  object DrawGrid1: TDrawGrid
    Left = 8
    Height = 888
    Top = 8
    Width = 1216
    Anchors = [akTop, akLeft, akRight, akBottom]
    AutoAdvance = aaRightDown
    ColCount = 17
    ColRowDraggingCursor = crNo
    ColSizingCursor = crNo
    DefaultColWidth = 100
    DefaultRowHeight = 100
    DoubleBuffered = True
    ExtendedSelect = False
    FixedColor = clMoneyGreen
    GridLineColor = clBtnShadow
    HeaderHotZones = []
    MouseWheelOption = mwGrid
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    ParentDoubleBuffered = False
    ParentFont = False
    RowCount = 17
    RowSizingCursor = crNo
    TabOrder = 0
    OnDrawCell = DrawGrid1DrawCell
    OnMouseDown = DrawGrid1MouseDown
    OnMouseMove = DrawGrid1MouseMove
    OnMouseUp = DrawGrid1MouseUp
    OnSelectCell = DrawGrid1SelectCell
  end
  object Button1: TButton
    Left = 0
    Height = 6
    Top = 896
    Width = 113
    Caption = 'Button1'
    TabOrder = 1
  end
end
