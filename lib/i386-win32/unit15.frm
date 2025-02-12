object Form15: TForm15
  Left = 0
  Height = 1049
  Top = 0
  Width = 711
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tiles table'
  ClientHeight = 1049
  ClientWidth = 711
  DesignTimePPI = 144
  OnActivate = FormActivate
  OnClose = FormClose
  ShowHint = True
  LCLVersion = '7.8'
  object DrawGrid1: TDrawGrid
    Left = 8
    Height = 208
    Top = 40
    Width = 680
    ColCount = 16
    DefaultColWidth = 40
    DefaultRowHeight = 40
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 8
    ScrollBars = ssAutoVertical
    TabOrder = 0
    OnDrawCell = DrawGrid1DrawCell
    OnMouseDown = DrawGrid1MouseDown
    OnMouseLeave = DrawGrid1MouseLeave
    OnMouseMove = DrawGrid1MouseMove
    OnMouseUp = DrawGrid1MouseUp
    OnSelectCell = DrawGrid1SelectCell
  end
  object DrawGrid2: TDrawGrid
    Left = 8
    Height = 200
    Top = 288
    Width = 680
    ColCount = 16
    DefaultColWidth = 40
    DefaultRowHeight = 40
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 8
    ScrollBars = ssAutoVertical
    TabOrder = 1
    OnDrawCell = DrawGrid2DrawCell
    OnMouseDown = DrawGrid2MouseDown
    OnMouseLeave = DrawGrid2MouseLeave
    OnMouseMove = DrawGrid2MouseMove
    OnMouseUp = DrawGrid2MouseUp
    OnSelectCell = DrawGrid2SelectCell
  end
  object DrawGrid3: TDrawGrid
    Left = 8
    Height = 200
    Top = 528
    Width = 680
    ColCount = 16
    DefaultColWidth = 40
    DefaultRowHeight = 40
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 8
    ScrollBars = ssAutoVertical
    TabOrder = 2
    OnDrawCell = DrawGrid3DrawCell
    OnMouseDown = DrawGrid3MouseDown
    OnMouseLeave = DrawGrid3MouseLeave
    OnMouseMove = DrawGrid3MouseMove
    OnMouseUp = DrawGrid3MouseUp
    OnSelectCell = DrawGrid3SelectCell
  end
  object DrawGrid4: TDrawGrid
    Left = 8
    Height = 200
    Top = 768
    Width = 680
    ColCount = 16
    DefaultColWidth = 40
    DefaultRowHeight = 40
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 8
    ScrollBars = ssAutoVertical
    TabOrder = 3
    OnDrawCell = DrawGrid4DrawCell
    OnMouseDown = DrawGrid4MouseDown
    OnMouseLeave = DrawGrid4MouseLeave
    OnMouseMove = DrawGrid4MouseMove
    OnMouseUp = DrawGrid4MouseUp
    OnSelectCell = DrawGrid4SelectCell
  end
  object Label1: TLabel
    Left = 288
    Height = 25
    Top = 8
    Width = 46
    Caption = 'Font0'
  end
  object Label2: TLabel
    Left = 288
    Height = 25
    Top = 256
    Width = 46
    Caption = 'Font1'
  end
  object Label3: TLabel
    Left = 288
    Height = 25
    Top = 496
    Width = 46
    Caption = 'Font2'
  end
  object Label4: TLabel
    Left = 288
    Height = 25
    Top = 736
    Width = 46
    Caption = 'Font3'
  end
  object ComboBox1: TComboBox
    Left = 256
    Height = 33
    Top = 992
    Width = 110
    ItemHeight = 25
    ItemIndex = 0
    Items.Strings = (
      'Sektor0'
      'Sektor1'
      'Sektor2'
      'Sektor3'
      'Sektor4'
      'Sektor5'
      'Sektor6'
      'Sektor7'
    )
    OnChange = ComboBox1Change
    TabOrder = 4
    Text = 'Sektor0'
  end
  object CheckBox1: TCheckBox
    Left = 549
    Height = 29
    Top = 992
    Width = 139
    Caption = 'Always on top'
    OnChange = CheckBox1Change
    TabOrder = 5
  end
end
