unit Unit16;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls, Types;

type

  { TForm16 }

  TForm16 = class(TForm)
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    DrawGrid1: TDrawGrid;
    DrawGrid2: TDrawGrid;
    DrawGrid3: TDrawGrid;
    DrawGrid4: TDrawGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure CheckBox1Change(Sender: TObject);
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
    procedure DrawGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid2SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure DrawGrid3DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid3SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure DrawGrid4DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid4SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure FormCreate(Sender: TObject);
  private

  public
     button1,button2,button3,button4:byte;
  end;

var
  Form16: TForm16;

implementation

{$R *.frm}

uses Unit1;

{ TForm16 }

procedure TForm16.FormCreate(Sender: TObject);
begin

end;

procedure TForm16.DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button1:=1;
end;

procedure TForm16.DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  c,i,ii:byte;
  bmp:TBitmap;
begin
  bmp:=TBitmap.Create;
  bmp.width:=8;
  bmp.height:=8;
  bmp.pixelformat:=pf24bit;

    for i:=0 to 7 do
     for ii:=0 to 7 do
     begin
       c:=Form1.template[ComboBox1.ItemIndex][0][aCol+aRow*16][i][ii];
       bmp.Canvas.Pixels[i,ii]:=Form1.kolor[ComboBox1.ItemIndex][c];
     end;
    DrawGrid1.Canvas.CopyRect(aRect,bmp.Canvas,bmp.Canvas.ClipRect);
    bmp.free;
end;

procedure TForm16.ComboBox1Change(Sender: TObject);
begin
  DrawGrid1.Invalidate;
  DrawGrid2.Invalidate;
  DrawGrid3.Invalidate;
  DrawGrid4.Invalidate;
end;

procedure TForm16.CheckBox1Change(Sender: TObject);
begin
  if CheckBox1.checked=true then Form16.FormStyle := fsStayOnTop
     else Form16.FormStyle := fsNormal;
end;

procedure TForm16.DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button1:=0;
end;

procedure TForm16.DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
var
  x,y:byte;
begin
  if (button1>0) then
  begin
    for x:=0 to 7 do
     for y:=0 to 7 do
       Form1.ksztalt1[x][y]:=Form1.template[combobox1.itemindex][0][aCol+aRow*16][x][y];

    Form1.button5.enabled:=true;
  end;
end;

procedure TForm16.DrawGrid2DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  c,i,ii:byte;
  bmp:TBitmap;
begin
  bmp:=TBitmap.Create;
  bmp.width:=8;
  bmp.height:=8;
  bmp.pixelformat:=pf24bit;

    for i:=0 to 7 do
     for ii:=0 to 7 do
     begin
       c:=Form1.template[ComboBox1.ItemIndex][1][aCol+aRow*16][i][ii];
       bmp.Canvas.Pixels[i,ii]:=Form1.kolor[ComboBox1.ItemIndex][c];
     end;
    DrawGrid2.Canvas.CopyRect(aRect,bmp.Canvas,bmp.Canvas.ClipRect);
    bmp.free;
end;

procedure TForm16.DrawGrid2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button2:=1;
end;

procedure TForm16.DrawGrid2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button2:=0;
end;

procedure TForm16.DrawGrid2SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
var
  x,y:byte;
begin
  if (button2>0) then
  begin
    for x:=0 to 7 do
     for y:=0 to 7 do
       Form1.ksztalt1[x][y]:=Form1.template[combobox1.itemindex][1][aCol+aRow*16][x][y];

    Form1.button5.enabled:=true;
  end;
end;

procedure TForm16.DrawGrid3DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  c,i,ii:byte;
  bmp:TBitmap;
begin
  bmp:=TBitmap.Create;
  bmp.width:=8;
  bmp.height:=8;
  bmp.pixelformat:=pf24bit;

    for i:=0 to 7 do
     for ii:=0 to 7 do
     begin
       c:=Form1.template[ComboBox1.ItemIndex][2][aCol+aRow*16][i][ii];
       bmp.Canvas.Pixels[i,ii]:=Form1.kolor[ComboBox1.ItemIndex][c];
     end;
    DrawGrid3.Canvas.CopyRect(aRect,bmp.Canvas,bmp.Canvas.ClipRect);
    bmp.free;
end;

procedure TForm16.DrawGrid3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button3:=1;
end;

procedure TForm16.DrawGrid3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button3:=0;
end;

procedure TForm16.DrawGrid3SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
var
  x,y:byte;
begin
  if (button3>0) then
  begin
    for x:=0 to 7 do
     for y:=0 to 7 do
       Form1.ksztalt1[x][y]:=Form1.template[combobox1.itemindex][2][aCol+aRow*16][x][y];

    Form1.button5.enabled:=true;
  end;
end;

procedure TForm16.DrawGrid4DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  c,i,ii:byte;
  bmp:TBitmap;
begin
  bmp:=TBitmap.Create;
  bmp.width:=8;
  bmp.height:=8;
  bmp.pixelformat:=pf24bit;

    for i:=0 to 7 do
     for ii:=0 to 7 do
     begin
       c:=Form1.template[ComboBox1.ItemIndex][3][aCol+aRow*16][i][ii];
       bmp.Canvas.Pixels[i,ii]:=Form1.kolor[ComboBox1.ItemIndex][c];
     end;
    DrawGrid4.Canvas.CopyRect(aRect,bmp.Canvas,bmp.Canvas.ClipRect);
    bmp.free;
end;

procedure TForm16.DrawGrid4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button4:=1;
end;

procedure TForm16.DrawGrid4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button4:=0;
end;

procedure TForm16.DrawGrid4SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
var
  x,y:byte;
begin
  if (button4>0) then
  begin
    for x:=0 to 7 do
     for y:=0 to 7 do
       Form1.ksztalt1[x][y]:=Form1.template[combobox1.itemindex][3][aCol+aRow*16][x][y];

    Form1.button5.enabled:=true;
  end;
end;


end.

