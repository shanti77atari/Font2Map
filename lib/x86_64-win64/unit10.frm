object Form10: TForm10
  Left = 0
  Height = 695
  Top = 0
  Width = 983
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Set Chars'
  ClientHeight = 695
  ClientWidth = 983
  DesignTimePPI = 144
  OnActivate = FormActivate
  LCLVersion = '7.8'
  object StringGrid1: TStringGrid
    Left = 48
    Height = 464
    Top = 80
    Width = 872
    ColCount = 17
    DefaultColWidth = 50
    DefaultRowHeight = 50
    FixedColor = clMoneyGreen
    Font.Style = [fsBold]
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goSmoothScroll]
    ParentFont = False
    RowCount = 9
    ScrollBars = ssNone
    TabOrder = 0
    OnMouseDown = StringGrid1MouseDown
    OnMouseUp = StringGrid1MouseUp
    OnSelectCell = StringGrid1SelectCell
  end
  object Button1: TButton
    Left = 168
    Height = 38
    Top = 608
    Width = 113
    Caption = 'Apply'
    OnClick = Button1Click
    TabOrder = 1
  end
  object Button2: TButton
    Left = 656
    Height = 38
    Top = 608
    Width = 113
    Caption = 'Default'
    OnClick = Button2Click
    TabOrder = 2
  end
  object Label1: TLabel
    Left = 110
    Height = 25
    Top = 33
    Width = 193
    Caption = 'S = Sektor,  X = blocked'
  end
end
