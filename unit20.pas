unit Unit20;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids, Types;

type

  { TForm20 }

  TForm20 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    DrawGrid1: TDrawGrid;
    DrawGrid2: TDrawGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure DrawGrid2DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid2SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure FormActivate(Sender: TObject);
  private

  public
    sel_mask:byte;
    button0,sel_col,sel_row:byte;
    grid0:array[0..7,0..7] of byte;
  end;

var
  Form20: TForm20;

implementation

{$R *.frm}

uses Unit1;

{ TForm20 }

procedure TForm20.FormActivate(Sender: TObject);
begin
  ComboBox1.Clear;
  ComboBox1.Items.Add(Form1.mask_name[0]);
  ComboBox1.Items.Add(Form1.mask_name[1]);
  ComboBox1.ItemIndex:=0;
  sel_col:=255;
  sel_row:=255;
  sel_mask:=255;
end;

procedure TForm20.DrawGrid2DrawCell(Sender: TObject; aCol, aRow: Integer;
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
     if (Form1.mask_table[ComboBox1.ItemIndex][aCol+aRow*8][y] and (128 shr x)) > 0 then
        bmp.Canvas.Pixels[x,y]:=clBlack else bmp.Canvas.Pixels[x,y]:=clNone;

  curRect.left:=aRect.left+4;
  curRect.right:=aRect.right-4;
  curRect.top:=aRect.top+4;
  curRect.bottom:=aRect.bottom-4;

  if (acol+aRow*8=sel_mask) then
  begin
       DrawGrid2.Canvas.Brush.Color:=clRed;
       DrawGrid2.canvas.Rectangle(aRect);
  end;
  DrawGrid2.Canvas.CopyRect(curRect,bmp.Canvas,bmp.Canvas.ClipRect);

  bmp.free;


end;

procedure TForm20.DrawGrid2SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
var
  x,y:byte;
begin
  sel_mask:=aCol+aRow*8;
  for y:=0 to 7 do
   for x:=0 to 7 do
    if (Form1.mask_table[ComboBox1.itemIndex][sel_mask][y] and (128 shr x))>0 then
       grid0[x][y]:=1 else grid0[x][y]:=0;

  DrawGrid1.invalidate;
end;

procedure TForm20.DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  if (sel_mask=255) then
  begin
    DrawGrid1.Canvas.Brush.Color:=clGray;
    DrawGrid1.Canvas.FillRect(aRect);
    exit;
  end;


  if (grid0[aCol][aRow]=1) then
     DrawGrid1.Canvas.Brush.Color:=clBlack else DrawGrid1.Canvas.Brush.Color:=clNone;

  DrawGrid1.Canvas.FillRect(aRect);
end;
//clear
procedure TForm20.Button2Click(Sender: TObject);
var
  x,y:byte;
begin
  for y:=0 to 7 do
   for x:=0 to 7 do
    grid0[x][y]:=0;

  DrawGrid1.invalidate;
end;

procedure TForm20.ComboBox1Change(Sender: TObject);
var
  x,y:byte;
begin
  for y:=0 to 7 do
   for x:=0 to 7 do
    if (Form1.mask_table[ComboBox1.itemIndex][sel_mask][y] and (128 shr x))>0 then
       grid0[x][y]:=1 else grid0[x][y]:=0;
  DrawGrid1.invalidate;
  DrawGrid2.invalidate;
end;

//store
procedure TForm20.Button1Click(Sender: TObject);
var
  a,x,y:byte;
begin
  for y:=0 to 7 do
  begin
   a:=0;
   for x:=0 to 7 do
     if (grid0[x][y]=1) then a:=a+(128 shr x);

   Form1.mask_table[ComboBox1.ItemIndex][sel_mask][y]:=a;
  end;

  drawGrid2.invalidate;
end;

procedure TForm20.DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=1;
end;

procedure TForm20.DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=0;
  sel_col:=255;
end;

procedure TForm20.DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin
  if (button0=1) and ((sel_col<>aCol) or (sel_row<>aRow)) then
  begin
    grid0[aCol][aRow]:=grid0[aCol][aRow] xor 1;
    sel_col:=aCol;
    sel_row:=aRow;
    DrawGrid1.invalidate;
  end;


end;

end.

