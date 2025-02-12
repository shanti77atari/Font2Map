unit Unit21;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls, Types;

type

  { TForm21 }

  TForm21 = class(TForm)
    DrawGrid2: TDrawGrid;
    Label2: TLabel;
    procedure DrawGrid2DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid2SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    nr_maski:byte;
  public
    button1:byte;
  end;

var
  Form21: TForm21;

implementation

{$R *.frm}

uses Unit1;

{ TForm21 }

procedure TForm21.FormActivate(Sender: TObject);
begin
  nr_maski:=Form1.wybor;
  label2.caption:=Form1.mask_name[nr_maski];
end;

procedure TForm21.FormDeactivate(Sender: TObject);
begin
  button1:=0;
end;

procedure TForm21.DrawGrid2DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  bmp:TBitmap;
  x,y:byte;
  curRect:Trect;
begin
  bmp:=TBitmap.Create;
  bmp.width:=8;
  bmp.height:=8;
  bmp.pixelformat:=pf24bit;

  for y:=0 to 7 do
   for x:=0 to 7 do
     if (Form1.mask_table[nr_maski][aCol+aRow*8][y] and (128 shr x)) > 0 then
        bmp.Canvas.Pixels[x,y]:=clBlack else bmp.Canvas.Pixels[x,y]:=clNone;

  curRect.left:=aRect.left+4;
  curRect.right:=aRect.right-4;
  curRect.top:=aRect.top+4;
  curRect.bottom:=aRect.bottom-4;

  DrawGrid2.Canvas.CopyRect(curRect,bmp.Canvas,bmp.Canvas.ClipRect);

  bmp.free;

end;

procedure TForm21.DrawGrid2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button1:=1;
end;

procedure TForm21.DrawGrid2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button1:=0;
end;

procedure TForm21.DrawGrid2SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
var
  a:byte;
begin
  if (button1=1) then
  begin
   a:=aCol+aRow*8;
   Form1.wybor:=a;
   close;
  end;
end;

end.

