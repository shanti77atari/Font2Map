object Form21: TForm21
  Left = 0
  Height = 457
  Top = 0
  Width = 683
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Choose mask'
  ClientHeight = 457
  ClientWidth = 683
  DesignTimePPI = 144
  LCLVersion = '8.2'
  OnActivate = FormActivate
  OnDeactivate = FormDeactivate
  object DrawGrid2: TDrawGrid
    Left = 16
    Height = 343
    Top = 16
    Width = 653
    ColCount = 8
    DefaultColWidth = 80
    DefaultRowHeight = 80
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 4
    ScrollBars = ssNone
    TabOrder = 0
    OnDrawCell = DrawGrid2DrawCell
    OnMouseDown = DrawGrid2MouseDown
    OnMouseUp = DrawGrid2MouseUp
    OnSelectCell = DrawGrid2SelectCell
  end
  object Label2: TLabel
    Left = 88
    Height = 38
    Top = 384
    Width = 78
    Caption = 'NAME'
    Font.CharSet = EASTEUROPE_CHARSET
    Font.Height = -28
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentFont = False
  end
end
