object Form16: TForm16
  Left = 0
  Height = 1019
  Top = 0
  Width = 714
  BorderIcons = [biSystemMenu]
  Caption = 'Template'
  ClientHeight = 1019
  ClientWidth = 714
  DesignTimePPI = 144
  OnCreate = FormCreate
  LCLVersion = '7.8'
  object DrawGrid1: TDrawGrid
    Left = 8
    Height = 200
    Top = 40
    Width = 680
    ColCount = 16
    DefaultColWidth = 60
    DefaultRowHeight = 60
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 8
    ScrollBars = ssBoth
    TabOrder = 0
    OnDrawCell = DrawGrid1DrawCell
    OnMouseDown = DrawGrid1MouseDown
    OnMouseUp = DrawGrid1MouseUp
    OnSelectCell = DrawGrid1SelectCell
  end
  object DrawGrid2: TDrawGrid
    Left = 8
    Height = 200
    Top = 280
    Width = 680
    ColCount = 16
    DefaultColWidth = 60
    DefaultRowHeight = 60
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 8
    ScrollBars = ssBoth
    TabOrder = 1
    OnDrawCell = DrawGrid2DrawCell
    OnMouseDown = DrawGrid2MouseDown
    OnMouseUp = DrawGrid2MouseUp
    OnSelectCell = DrawGrid2SelectCell
  end
  object DrawGrid3: TDrawGrid
    Left = 8
    Height = 200
    Top = 520
    Width = 680
    ColCount = 16
    DefaultColWidth = 60
    DefaultRowHeight = 60
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 8
    ScrollBars = ssBoth
    TabOrder = 2
    OnDrawCell = DrawGrid3DrawCell
    OnMouseDown = DrawGrid3MouseDown
    OnMouseUp = DrawGrid3MouseUp
    OnSelectCell = DrawGrid3SelectCell
  end
  object DrawGrid4: TDrawGrid
    Left = 8
    Height = 200
    Top = 760
    Width = 680
    ColCount = 16
    DefaultColWidth = 60
    DefaultRowHeight = 60
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    RowCount = 8
    ScrollBars = ssBoth
    TabOrder = 3
    OnDrawCell = DrawGrid4DrawCell
    OnMouseDown = DrawGrid4MouseDown
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
    Top = 248
    Width = 46
    Caption = 'Font1'
  end
  object Label3: TLabel
    Left = 288
    Height = 25
    Top = 488
    Width = 46
    Caption = 'Font2'
  end
  object Label4: TLabel
    Left = 288
    Height = 25
    Top = 728
    Width = 46
    Caption = 'Font3'
  end
  object ComboBox1: TComboBox
    Left = 256
    Height = 33
    Top = 976
    Width = 118
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
    Left = 512
    Height = 29
    Top = 980
    Width = 142
    Caption = 'Always on Top'
    OnChange = CheckBox1Change
    TabOrder = 5
  end
end
