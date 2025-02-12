unit Unit15;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls, Types;

type

  { TForm15 }

  TForm15 = class(TForm)
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
    procedure DrawGrid1MouseLeave(Sender: TObject);
    procedure DrawGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure DrawGrid2DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid2MouseLeave(Sender: TObject);
    procedure DrawGrid2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DrawGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid2SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure DrawGrid3DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid3MouseLeave(Sender: TObject);
    procedure DrawGrid3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DrawGrid3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid3SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure DrawGrid4DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid4MouseLeave(Sender: TObject);
    procedure DrawGrid4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DrawGrid4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid4SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private

  public
    button1:byte;
    button2:byte;
    button3:byte;
    button4:byte;
  end;

var
  Form15: TForm15;

implementation

{$R *.frm}

uses Unit1;

{ TForm15 }

procedure TForm15.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Form1.Button15.enabled:=true;
end;

procedure TForm15.CheckBox1Change(Sender: TObject);
begin
  if CheckBox1.checked=true then Form15.FormStyle := fsStayOnTop
     else Form15.FormStyle := fsNormal;
end;

procedure TForm15.ComboBox1Change(Sender: TObject);
begin
  DrawGrid1.Invalidate;
  DrawGrid2.Invalidate;
  DrawGrid3.Invalidate;
  DrawGrid4.Invalidate;
end;

procedure TForm15.DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  a,b,c,i,ii,z0,z1,sektor0:byte;
  s:string;
  szer,wys:single;
  rect1:TRect;
begin
  szer:=(aRect.Right-aRect.Left+1-4)/8;
  wys:=(aRect.bottom-aRect.Top+1-4)/8;

  z0:=Form1.tab_tiles[0][aCol+aRow*16].znak0;
  z1:=Form1.tab_tiles[0][aCol+aRow*16].znak1;
  if (z0<128) then a:=3 else a:=4;
  if (z1<128) then b:=3 else b:=4;
   if (Form1.tab_tiles1[aCol+aRow*16]=0) then
   begin
     DrawGrid1.Canvas.TextRect(aRect, aRect.Left+12, aRect.Top+8, 'X');
     exit;
   end;
   if (z0<>255) then
   begin
    for i:=0 to 3 do
     for ii:=0 to 7 do
     begin
       if (Form1.znaki1[z0 and 127]=2) then sektor0:=ComboBox1.ItemIndex else sektor0:=0;
       c:=Form1.znaki[sektor0][0][z0 and 127][i][ii];
       if (c=3) then c:=a;
       DrawGrid1.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
       rect1.Left:=aRect.Left+1+round(szer*i);
       rect1.Top:=aRect.Top+1+round(wys*ii);
       rect1.Right:=aRect.Left+1+round(szer*(i+1));
       rect1.Bottom:=aRect.Top+1+round(wys*(ii+1));
       DrawGrid1.Canvas.FillRect(rect1);

       if (Form1.znaki1[z0 and 127]=2) then sektor0:=ComboBox1.ItemIndex else sektor0:=0;
       c:=Form1.znaki[sektor0][0][z1 and 127][i][ii];
       if (c=3) then c:=b;
       DrawGrid1.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
       rect1.Left:=aRect.Left+1+round(szer*(i+4));
       rect1.Top:=aRect.Top+1+round(wys*ii);
       rect1.Right:=aRect.Left+1+round(szer*(i+1+4));
       rect1.Bottom:=aRect.Top+1+round(wys*(ii+1));
       DrawGrid1.Canvas.FillRect(rect1);
     end;
   end
   else  DrawGrid1.Canvas.TextRect(aRect, aRect.Left+12, aRect.Top+6, 'E');

end;

procedure TForm15.DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button1:=1;
end;

procedure TForm15.DrawGrid1MouseLeave(Sender: TObject);
begin
  Form15.Hint:='';
end;

procedure TForm15.DrawGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  z,i,ii,licz:byte;
  col,row:integer;
begin
  DrawGrid1.MouseToCell(X, Y, col, row);
  z:=col+row*16;

  Form15.Hint:='';
  if (Form1.tab_tiles[0][z].znak0<>255) and (Form1.tab_tiles1[z]>0) then
  begin
   licz:=0;
   for i:=0 to Form1.mapa_szer do
    for ii:=0 to ((Form1.mapa_wys+1) shr 2)-1 do
      if Form1.mapa[i][0+ii*4]=z then licz:=licz+1;
     Form15.Hint:='Tile '+inttostr(z)+'($'+inttohex(z)+')';
     Form15.Hint:=Form15.Hint+AnsiString(#13#10)+'$'+inttohex(Form1.tab_tiles[0][z].znak0);
     Form15.Hint:=Form15.Hint+' + $'+inttohex(Form1.tab_tiles[0][z].znak1);
     Form15.Hint:=Form15.Hint+AnsiString(#13#10)+Form1.attrib_names[Form1.tab_tiles[0][z].attrib];
     Form15.Hint:=Form15.Hint+AnsiString(#13#10)+inttostr(licz)+' x';
  end;
  Application.ActivateHint(Mouse.CursorPos);
end;

procedure TForm15.DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button1:=0;
end;

procedure TForm15.DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin
  if (button1>0) and (Form1.tab_tiles1[aCol+aRow*16]>0) then
  begin
    Form1.tile0:=aCol+aRow*16;
    Form1.font0:=0;
    Form1.ComboBox1.ItemIndex:=0;
    Form1.Sektor:=ComboBox1.ItemIndex;
    Form1.ComboBox2.ItemIndex:=Form1.Sektor;
    Form1.ComboBox1.ItemIndex:=0;
    Form1.znak0:=Form1.tab_tiles[Form1.font0][Form1.tile0].znak0;
    Form1.znak1:=Form1.tab_tiles[Form1.font0][Form1.tile0].znak1;
    Form1.attrib0:=Form1.tab_tiles[Form1.font0][Form1.tile0].attrib;
    Form1.ComboBox3.ItemIndex:=Form1.attrib0;
    Form1.copy_znak0;
    Form1.copy_znak1;
    Form1.undo0_clear;
    Form1.Refresh_edit;
    button1:=0;

    Form1.DrawGrid2.invalidate;         //odswiezamy kolory
    Form1.DrawGrid3.invalidate;
    Form1.DrawGrid4.invalidate;
    Form1.DrawGrid5.invalidate;
    Form1.DrawGrid6.invalidate;


    Form1.Label5.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][0]);
    Form1.Label6.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][1]);
    Form1.Label7.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][2]);
    Form1.Label8.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][3]);
    Form1.Label20.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][4]);

    if Form1.alpha=0 then
       Form1.DrawGrid10.InvalidateCol(0)
    else Form1.DrawGrid10.Invalidate;
  end;

end;

procedure TForm15.DrawGrid2DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  a,b,c,i,ii,z0,z1,sektor0:byte;
  s:string;
  szer,wys:single;
  rect1:TRect;
begin
  szer:=(aRect.Right-aRect.Left+1-4)/8;
  wys:=(aRect.bottom-aRect.Top+1-4)/8;

  z0:=Form1.tab_tiles[1][aCol+aRow*16].znak0;
  z1:=Form1.tab_tiles[1][aCol+aRow*16].znak1;
  if (z0<128) then a:=3 else a:=4;
  if (z1<128) then b:=3 else b:=4;
   if (Form1.tab_tiles1[aCol+aRow*16]=0) then
   begin
     DrawGrid2.Canvas.TextRect(aRect, aRect.Left+12, aRect.Top+8, 'X');
     exit;
   end;
   if (z0<>255) then
   begin
    for i:=0 to 3 do
     for ii:=0 to 7 do
     begin
       if (Form1.znaki1[z0 and 127]=2) then sektor0:=ComboBox1.ItemIndex else sektor0:=0;
       c:=Form1.znaki[sektor0][1][z0 and 127][i][ii];
       if (c=3) then c:=a;
       DrawGrid2.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
       rect1.Left:=aRect.Left+1+round(szer*i);
       rect1.Top:=aRect.Top+1+round(wys*ii);
       rect1.Right:=aRect.Left+1+round(szer*(i+1));
       rect1.Bottom:=aRect.Top+1+round(wys*(ii+1));
       DrawGrid2.Canvas.FillRect(rect1);

       if (Form1.znaki1[z0 and 127]=2) then sektor0:=ComboBox1.ItemIndex else sektor0:=0;
       c:=Form1.znaki[sektor0][1][z1 and 127][i][ii];
       if (c=3) then c:=b;
       DrawGrid2.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
       rect1.Left:=aRect.Left+1+round(szer*(i+4));
       rect1.Top:=aRect.Top+1+round(wys*ii);
       rect1.Right:=aRect.Left+1+round(szer*(i+1+4));
       rect1.Bottom:=aRect.Top+1+round(wys*(ii+1));
       DrawGrid2.Canvas.FillRect(rect1);
     end;
   end
   else  DrawGrid2.Canvas.TextRect(aRect, aRect.Left+12, aRect.Top+6, 'E');


end;

procedure TForm15.DrawGrid2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button2:=1;
end;

procedure TForm15.DrawGrid2MouseLeave(Sender: TObject);
begin
  Form15.Hint:='';
end;

procedure TForm15.DrawGrid2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  z,i,ii,licz:byte;
  col,row:integer;
begin
  DrawGrid1.MouseToCell(X, Y, col, row);
  z:=col+row*16;

  Form15.Hint:='';
  if (Form1.tab_tiles[1][z].znak0<>255) and (Form1.tab_tiles1[z]>0) then
  begin
   licz:=0;
   for i:=0 to Form1.mapa_szer do
    for ii:=0 to ((Form1.mapa_wys+1) shr 2)-1 do
      if Form1.mapa[i][1+ii*4]=z then licz:=licz+1;
     Form15.Hint:='Tile '+inttostr(z)+'($'+inttohex(z)+')';
     Form15.Hint:=Form15.Hint+AnsiString(#13#10)+'$'+inttohex(Form1.tab_tiles[1][z].znak0);
     Form15.Hint:=Form15.Hint+' + $'+inttohex(Form1.tab_tiles[1][z].znak1);
     Form15.Hint:=Form15.Hint+AnsiString(#13#10)+Form1.attrib_names[Form1.tab_tiles[1][z].attrib];
     Form15.Hint:=Form15.Hint+AnsiString(#13#10)+inttostr(licz)+' x';
  end;
  Application.ActivateHint(Mouse.CursorPos);
end;

procedure TForm15.DrawGrid2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button2:=0;
end;

procedure TForm15.DrawGrid2SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin
  if (button2>0) and (Form1.tab_tiles1[aCol+aRow*16]>0) then
  begin
    Form1.tile0:=aCol+aRow*16;
    Form1.font0:=1;
    Form1.Sektor:=ComboBox1.ItemIndex;
    Form1.ComboBox2.ItemIndex:=Form1.Sektor;
    Form1.ComboBox1.ItemIndex:=1;
    Form1.znak0:=Form1.tab_tiles[Form1.font0][Form1.tile0].znak0;
    Form1.znak1:=Form1.tab_tiles[Form1.font0][Form1.tile0].znak1;
    Form1.attrib0:=Form1.tab_tiles[Form1.font0][Form1.tile0].attrib;
    Form1.ComboBox3.ItemIndex:=Form1.attrib0;
    Form1.copy_znak0;
    Form1.copy_znak1;
    Form1.undo0_clear;
    Form1.Refresh_edit;
    button2:=0;

    Form1.DrawGrid2.invalidate;         //odswiezamy kolory
    Form1.DrawGrid3.invalidate;
    Form1.DrawGrid4.invalidate;
    Form1.DrawGrid5.invalidate;
    Form1.DrawGrid6.invalidate;


    Form1.Label5.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][0]);
    Form1.Label6.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][1]);
    Form1.Label7.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][2]);
    Form1.Label8.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][3]);
    Form1.Label20.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][4]);

    if Form1.alpha=0 then
       Form1.DrawGrid10.InvalidateCol(0)
    else Form1.DrawGrid10.Invalidate;
  end;

end;

procedure TForm15.DrawGrid3DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  a,b,c,i,ii,z0,z1,sektor0:byte;
  s:string;
  szer,wys:single;
  rect1:TRect;
begin
  szer:=(aRect.Right-aRect.Left+1-4)/8;
  wys:=(aRect.bottom-aRect.Top+1-4)/8;

  z0:=Form1.tab_tiles[2][aCol+aRow*16].znak0;
  z1:=Form1.tab_tiles[2][aCol+aRow*16].znak1;
  if (z0<128) then a:=3 else a:=4;
  if (z1<128) then b:=3 else b:=4;

   if (Form1.tab_tiles1[aCol+aRow*16]=0) then
   begin
     DrawGrid3.Canvas.TextRect(aRect, aRect.Left+12, aRect.Top+8, 'X');
     exit;
   end;
   if (z0<>255) then
   begin
    for i:=0 to 3 do
     for ii:=0 to 7 do
     begin
       if (Form1.znaki1[z0 and 127]=2) then sektor0:=ComboBox1.ItemIndex else sektor0:=0;
       c:=Form1.znaki[sektor0][2][z0 and 127][i][ii];
       if (c=3) then c:=a;
       DrawGrid3.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
       rect1.Left:=aRect.Left+1+round(szer*i);
       rect1.Top:=aRect.Top+1+round(wys*ii);
       rect1.Right:=aRect.Left+1+round(szer*(i+1));
       rect1.Bottom:=aRect.Top+1+round(wys*(ii+1));
       DrawGrid3.Canvas.FillRect(rect1);

       if (Form1.znaki1[z0 and 127]=2) then sektor0:=ComboBox1.ItemIndex else sektor0:=0;
       c:=Form1.znaki[sektor0][2][z1 and 127][i][ii];
       if (c=3) then c:=b;
       DrawGrid3.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
       rect1.Left:=aRect.Left+1+round(szer*(i+4));
       rect1.Top:=aRect.Top+1+round(wys*ii);
       rect1.Right:=aRect.Left+1+round(szer*(i+1+4));
       rect1.Bottom:=aRect.Top+1+round(wys*(ii+1));
       DrawGrid3.Canvas.FillRect(rect1);
     end;
   end
   else  DrawGrid3.Canvas.TextRect(aRect, aRect.Left+12, aRect.Top+6, 'E');


end;

procedure TForm15.DrawGrid3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button3:=1;
end;

procedure TForm15.DrawGrid3MouseLeave(Sender: TObject);
begin
  Form15.Hint:='';
end;

procedure TForm15.DrawGrid3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  z,i,ii,licz:byte;
  col,row:integer;
begin
  DrawGrid1.MouseToCell(X, Y, col, row);
  z:=col+row*16;

  Form15.Hint:='';
  if (Form1.tab_tiles[2][z].znak0<>255) and (Form1.tab_tiles1[z]>0) then
  begin
   licz:=0;
   for i:=0 to Form1.mapa_szer do
    for ii:=0 to ((Form1.mapa_wys+1) shr 2)-1 do
      if Form1.mapa[i][2+ii*4]=z then licz:=licz+1;
     Form15.Hint:='Tile '+inttostr(z)+'($'+inttohex(z)+')';
     Form15.Hint:=Form15.Hint+AnsiString(#13#10)+'$'+inttohex(Form1.tab_tiles[2][z].znak0);
     Form15.Hint:=Form15.Hint+' + $'+inttohex(Form1.tab_tiles[2][z].znak1);
     Form15.Hint:=Form15.Hint+AnsiString(#13#10)+Form1.attrib_names[Form1.tab_tiles[2][z].attrib];
     Form15.Hint:=Form15.Hint+AnsiString(#13#10)+inttostr(licz)+' x';
  end;
  Application.ActivateHint(Mouse.CursorPos);
end;

procedure TForm15.DrawGrid3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button3:=0;
end;

procedure TForm15.DrawGrid3SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin
  if (button3>0) and (Form1.tab_tiles1[aCol+aRow*16]>0) then
  begin
    Form1.tile0:=aCol+aRow*16;
    Form1.font0:=2;
    Form1.Sektor:=ComboBox1.ItemIndex;
    Form1.ComboBox2.ItemIndex:=Form1.Sektor;
    Form1.ComboBox1.ItemIndex:=2;
    Form1.znak0:=Form1.tab_tiles[Form1.font0][Form1.tile0].znak0;
    Form1.znak1:=Form1.tab_tiles[Form1.font0][Form1.tile0].znak1;
    Form1.attrib0:=Form1.tab_tiles[Form1.font0][Form1.tile0].attrib;
    Form1.ComboBox3.ItemIndex:=Form1.attrib0;
    Form1.copy_znak0;
    Form1.copy_znak1;
    Form1.undo0_clear;
    Form1.Refresh_edit;
    button3:=0;

    Form1.DrawGrid2.invalidate;         //odswiezamy kolory
    Form1.DrawGrid3.invalidate;
    Form1.DrawGrid4.invalidate;
    Form1.DrawGrid5.invalidate;
    Form1.DrawGrid6.invalidate;


    Form1.Label5.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][0]);
    Form1.Label6.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][1]);
    Form1.Label7.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][2]);
    Form1.Label8.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][3]);
    Form1.Label20.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][4]);

    if Form1.alpha=0 then
       Form1.DrawGrid10.InvalidateCol(0)
    else Form1.DrawGrid10.Invalidate;

  end;
end;

procedure TForm15.DrawGrid4DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  a,b,c,i,ii,z0,z1,sektor0:byte;
  s:string;
  szer,wys:single;
  rect1:TRect;
begin
  szer:=(aRect.Right-aRect.Left+1-4)/8;
  wys:=(aRect.bottom-aRect.Top+1-4)/8;

  z0:=Form1.tab_tiles[3][aCol+aRow*16].znak0;
  z1:=Form1.tab_tiles[3][aCol+aRow*16].znak1;
  if (z0<128) then a:=3 else a:=4;
  if (z1<128) then b:=3 else b:=4;

   if (Form1.tab_tiles1[aCol+aRow*16]=0) then
   begin
     DrawGrid4.Canvas.TextRect(aRect, aRect.Left+12, aRect.Top+8, 'X');
     exit;
   end;
   if (z0<>255) then
   begin
    for i:=0 to 3 do
     for ii:=0 to 7 do
     begin
       if (Form1.znaki1[z0 and 127]=2) then sektor0:=ComboBox1.ItemIndex else sektor0:=0;
       c:=Form1.znaki[sektor0][3][z0 and 127][i][ii];
       if (c=3) then c:=a;
       DrawGrid4.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
       rect1.Left:=aRect.Left+1+round(szer*i);
       rect1.Top:=aRect.Top+1+round(wys*ii);
       rect1.Right:=aRect.Left+1+round(szer*(i+1));
       rect1.Bottom:=aRect.Top+1+round(wys*(ii+1));
       DrawGrid4.Canvas.FillRect(rect1);

       if (Form1.znaki1[z0 and 127]=2) then sektor0:=ComboBox1.ItemIndex else sektor0:=0;
       c:=Form1.znaki[sektor0][3][z1 and 127][i][ii];
       if (c=3) then c:=b;
       DrawGrid4.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
       rect1.Left:=aRect.Left+1+round(szer*(i+4));
       rect1.Top:=aRect.Top+1+round(wys*ii);
       rect1.Right:=aRect.Left+1+round(szer*(i+1+4));
       rect1.Bottom:=aRect.Top+1+round(wys*(ii+1));
       DrawGrid4.Canvas.FillRect(rect1);
     end;
   end
   else  DrawGrid4.Canvas.TextRect(aRect, aRect.Left+12, aRect.Top+6, 'E');

end;

procedure TForm15.DrawGrid4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button4:=1;
end;

procedure TForm15.DrawGrid4MouseLeave(Sender: TObject);
begin
  Form15.Hint:='';
end;

procedure TForm15.DrawGrid4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  z,i,ii,licz:byte;
  col,row:integer;
begin
  DrawGrid1.MouseToCell(X, Y, col, row);
  z:=col+row*16;

  Form15.Hint:='';
  if (Form1.tab_tiles[3][z].znak0<>255) and (Form1.tab_tiles1[z]>0) then
  begin
   licz:=0;
   for i:=0 to Form1.mapa_szer do
    for ii:=0 to ((Form1.mapa_wys+1) shr 2)-1 do
      if Form1.mapa[i][3+ii*4]=z then licz:=licz+1;
   Form15.Hint:='Tile '+inttostr(z)+'($'+inttohex(z)+')';
   Form15.Hint:=Form15.Hint+AnsiString(#13#10)+'$'+inttohex(Form1.tab_tiles[3][z].znak0);
   Form15.Hint:=Form15.Hint+' + $'+inttohex(Form1.tab_tiles[3][z].znak1);
   Form15.Hint:=Form15.Hint+AnsiString(#13#10)+Form1.attrib_names[Form1.tab_tiles[3][z].attrib];
   Form15.Hint:=Form15.Hint+AnsiString(#13#10)+inttostr(licz)+' x';
  end;
  Application.ActivateHint(Mouse.CursorPos);
end;

procedure TForm15.DrawGrid4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button4:=0;
end;

procedure TForm15.DrawGrid4SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin
  if (button4>0) and (Form1.tab_tiles1[aCol+aRow*16]>0) then
  begin
    Form1.tile0:=aCol+aRow*16;
    Form1.font0:=3;
    Form1.Sektor:=ComboBox1.ItemIndex;
    Form1.ComboBox2.ItemIndex:=Form1.Sektor;
    Form1.ComboBox1.ItemIndex:=3;
    Form1.znak0:=Form1.tab_tiles[Form1.font0][Form1.tile0].znak0;
    Form1.znak1:=Form1.tab_tiles[Form1.font0][Form1.tile0].znak1;
    Form1.attrib0:=Form1.tab_tiles[Form1.font0][Form1.tile0].attrib;
    Form1.ComboBox3.ItemIndex:=Form1.attrib0;
    Form1.copy_znak0;
    Form1.copy_znak1;
    Form1.undo0_clear;
    Form1.Refresh_edit;
    button4:=0;

    Form1.DrawGrid2.invalidate;         //odswiezamy kolory
    Form1.DrawGrid3.invalidate;
    Form1.DrawGrid4.invalidate;
    Form1.DrawGrid5.invalidate;
    Form1.DrawGrid6.invalidate;


    Form1.Label5.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][0]);
    Form1.Label6.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][1]);
    Form1.Label7.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][2]);
    Form1.Label8.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][3]);
    Form1.Label20.caption:='$'+inttohex(Form1.kolorA[Form1.sektor][4]);

    if Form1.alpha=0 then
       Form1.DrawGrid10.InvalidateCol(0)
    else Form1.DrawGrid10.Invalidate;
  end;
end;

procedure TForm15.FormActivate(Sender: TObject);
begin
  button1:=0;
  button2:=0;
  button3:=0;
  button4:=0;
  CheckBox1Change(Sender);
end;

end.

