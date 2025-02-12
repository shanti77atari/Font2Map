unit Unit11;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls, Types;

type


  { TForm11 }

  TForm11 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    DrawGrid1: TDrawGrid;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  private

  public
    button0:byte;
    selected:byte;
    stan:byte;
    znaki:array[0..3,0..127,0..3,0..7] of byte;
    znaki0:array[0..3,0..127] of byte;
  end;

var
  Form11: TForm11;

implementation

{$R *.frm}

uses Unit1;

{ TForm11 }

procedure TForm11.DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=1;
end;

procedure TForm11.DrawGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  z,i:byte;
  col,row:integer;
begin
  DrawGrid1.MouseToCell(X, Y, col, row);
  Form11.Hint:='Tiles:';
  if (col>0) and (row>0) and (Form1.znaki1[col-1+(row-1)*16]>0) then
  begin
   z:=col-1+(row-1)*16;
   for i:=0 to 127 do
   begin
    if ((Form1.tab_tilesx[ComboBox1.Itemindex][i].znak0 and 127)=z) then
      Form11.Hint:=Form11.Hint+AnsiString(#13#10)+'Tile $'+inttohex(i);
    if ((Form1.tab_tilesx[ComboBox1.Itemindex][i].znak1 and 127)=z) then
      Form11.Hint:=Form11.Hint+AnsiString(#13#10)+'Tile $'+inttohex(i);
   end;
  end;
  if (length(Form11.Hint)=6) then Form11.Hint:='';
  Application.ActivateHint(Mouse.CursorPos);
end;

procedure TForm11.DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
  var
rect1: TRect;
i,ii:byte;
a,b: byte;
szer,wys:single;
s: string;
begin
  szer:=(aRect.Right-aRect.Left+1-8)/8;
  wys:=(aRect.Bottom-aRect.Top+1-8)/8;
  if (ACol>0) and (ARow>0) then
  begin
    a:=((ACol-1)+(ARow-1)*16) and 127;



    if Form1.znaki1[a]=0 then
    begin
      DrawGrid1.Canvas.Brush.Color:=Form1.RGB(00,120,120);
      DrawGrid1.Canvas.FillRect(aRect);
      DrawGrid1.Canvas.TextRect(aRect, aRect.Left+22, aRect.Top+20, 'X');
    end
    else
    begin



     if znaki0[ComboBox1.ItemIndex][a]=0 then
     begin
       DrawGrid1.Canvas.TextRect(aRect, aRect.Left+4, aRect.Top+20, 'empty');
     end
     else
     begin
      if (a=selected) then
      begin
        DrawGrid1.Canvas.Brush.Color:=clWhite;
        DrawGrid1.Canvas.Pen.Color:=clRed;
        DrawGrid1.Canvas.Rectangle(aRect.Left,aRect.Top,aRect.Right,aRect.Bottom);
        DrawGrid1.Canvas.Rectangle(aRect.Left+1,aRect.Top+1,aRect.Right-1,aRect.Bottom-1);
        DrawGrid1.Canvas.Rectangle(aRect.Left+2,aRect.Top+2,aRect.Right-2,aRect.Bottom-2);
      end;

      for i := 0 to 7 do
       for ii := 0 to 3 do
       begin
        b:=znaki[Combobox1.itemindex][a][ii][i];
        if ((b=3) and checkbox1.checked) then b:=4;
        DrawGrid1.Canvas.Brush.Color:=Form1.Kolor[0][b];
        rect1.Left:=aRect.Left+4+round(szer*(ii+2));
        rect1.Top:=aRect.Top+4+round(wys*i);
        rect1.Right:=aRect.Left+4+round(szer*(ii+1+2));
        rect1.Bottom:=aRect.Top+4+round(wys*(i+1));
        DrawGrid1.Canvas.FillRect(rect1);
       end;
     end;
    end;

  end;

  if (ARow=0) or (ACol=0) then
  begin
    if (Arow=0) and (ACol>0) then
    begin
      a:=Acol-1;
      s:='$'+inttohex(a);
      s[2]:='x';
      DrawGrid1.Canvas.TextRect(aRect, aRect.Left+15, aRect.Top+2, s);
    end;
    if (ACol=0) and (ARow>0) then
    begin
      a:=ARow-1;
      s:=inttohex(a)+'x';
      s[1]:='$';
      DrawGrid1.Canvas.TextRect(aRect, aRect.Left+12, aRect.Top+2,s);
    end;
  end;
end;

procedure TForm11.ComboBox1Change(Sender: TObject);
begin
  DrawGrid1.Invalidate;
end;

procedure TForm11.CheckBox1Change(Sender: TObject);
begin
  DrawGrid1.Invalidate;
end;

procedure TForm11.Button1Click(Sender: TObject);
var
  f,z,x,y,t:byte;
begin
  for f:=0 to 3 do
   for z:=0 to 127 do
    for x:=0 to 3 do
     for y:=0 to 7 do
      Form1.znaki[0][f][z][x][y]:=znaki[f][z][x][y];

  for f:=0 to 3 do
   for t:=0 to 255 do
    Form1.tab_tiles[f][t]:=Form1.tab_tilesx[f][t];

  for f:=0 to 3 do
   for z:=0 to 127 do
    Form1.znaki0[0][f][z]:=znaki0[f][z];



  close;
end;

procedure TForm11.DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=0;
end;

procedure TForm11.DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
var
  b,i,ii,a:byte;
begin
  if (button0>0) and (aCol>0) and (aRow>0) and (Form1.znaki1[aCol-1+(aRow-1)*16]>0) then
  begin
   if (stan=0) then
   begin
       selected:=aCol-1+(aRow-1)*16;
       stan:=1;
       button0:=0;
       ComboBox1.Enabled:=false;
       DrawGrid1.invalidate;
   end
   else
   begin
     b:=aCol-1+(aRow-1)*16;
     if (b<>selected) then
     begin

       i:=znaki0[ComboBox1.ItemIndex][selected];
       znaki0[ComboBox1.ItemIndex][selected]:=znaki0[ComboBox1.ItemIndex][b];
       znaki0[ComboBox1.ItemIndex][b]:=i;

       for i:=0 to 3 do
        for ii:=0 to 7 do
        begin
          a:=znaki[ComboBox1.ItemIndex][selected][i][ii];
          znaki[ComboBox1.ItemIndex][selected][i][ii]:=znaki[ComboBox1.ItemIndex][b][i][ii];
          znaki[ComboBox1.ItemIndex][b][i][ii]:=a;
        end;

       for i:=0 to 255 do
       begin
         if ((Form1.tab_tilesx[ComboBox1.ItemIndex][i].znak0 and 127)=selected) then
               Form1.tab_tilesx[ComboBox1.ItemIndex][i].znak0:=b or (Form1.tab_tilesx[ComboBox1.ItemIndex][i].znak0 and 128)
         else if ((Form1.tab_tilesx[ComboBox1.ItemIndex][i].znak0 and 127)=b) then
               Form1.tab_tilesx[ComboBox1.ItemIndex][i].znak0:=selected or (Form1.tab_tilesx[ComboBox1.ItemIndex][i].znak0 and 128);

         if ((Form1.tab_tilesx[ComboBox1.ItemIndex][i].znak1 and 127)=selected) then
               Form1.tab_tilesx[ComboBox1.ItemIndex][i].znak1:=b or (Form1.tab_tilesx[ComboBox1.ItemIndex][i].znak1 and 128)
         else if ((Form1.tab_tilesx[ComboBox1.ItemIndex][i].znak1 and 127)=b) then
               Form1.tab_tilesx[ComboBox1.ItemIndex][i].znak1:=selected or (Form1.tab_tilesx[ComboBox1.ItemIndex][i].znak1 and 128);
       end;
     end;
     stan:=0;
     selected:=255;
     button0:=0;
     ComboBox1.Enabled:=true;
     DrawGrid1.invalidate;
   end;
  end;
end;

procedure TForm11.FormActivate(Sender: TObject);
var
  f,z,x,y,t:byte;
begin
  button0:=0;
  selected:=255;
  stan:=0;
  ComboBox1.Enabled:=true;

  for f:=0 to 3 do
   for z:=0 to 127 do
    for x:=0 to 3 do
     for y:=0 to 7 do
      znaki[f][z][x][y]:=Form1.znaki[0][f][z][x][y];

  for f:=0 to 3 do
   for t:=0 to 255 do
    Form1.tab_tilesx[f][t]:=Form1.tab_tiles[f][t];

  for f:=0 to 3 do
   for z:=0 to 127 do
    znaki0[f][z]:=Form1.znaki0[0][f][z];

end;

procedure TForm11.FormCreate(Sender: TObject);
begin
  Application.HintColor := clYellow;
end;

procedure TForm11.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Form11.Hint:='';
end;

end.

