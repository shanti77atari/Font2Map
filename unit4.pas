unit Unit4;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, Types;

type

  { TForm4 }

  TForm4 = class(TForm)
    DrawGrid1: TDrawGrid;
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
    procedure FormDeactivate(Sender: TObject);
  private

  public
    button0:byte;

  end;

var
  Form4: TForm4;

implementation

{$R *.frm}

uses Unit1;

{ TForm4 }

procedure TForm4.DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  a,b,c,i,ii,z0,z1,sektor0:byte;
  s:string;
  szer,wys:single;
  rect1:TRect;
begin
  if (ARow=0) or (ACol=0) then
  begin
    if (Arow=0) and (ACol>0) then
    begin
      a:=Acol-1;
      s:='$'+inttohex(a);
      s[2]:='x';
      DrawGrid1.Canvas.TextRect(aRect, aRect.Left+15, aRect.Top+10, s);
      exit;
    end;
    if (ACol=0) and (ARow>0) then
    begin
      a:=ARow-1;
      s:=inttohex(a)+'x';
      s[1]:='$';
      DrawGrid1.Canvas.TextRect(aRect, aRect.Left+12, aRect.Top+10,s);
      exit;
    end;
  end;
  szer:=(aRect.Right-aRect.Left+1-4)/8;
  wys:=(aRect.bottom-aRect.Top+1-4)/8;

  z0:=Form1.tab_tiles[Form1.font1][aCol-1+(aRow-1)*16].znak0;
  z1:=Form1.tab_tiles[Form1.font1][aCol-1+(aRow-1)*16].znak1;
  if (z0<128) then a:=3 else a:=4;
  if (z1<128) then b:=3 else b:=4;
  if (aRow>0) and (aCol>0) then
  begin
   if (Form1.tab_tiles1[aCol-1+(aRow-1)*16]=0) then
   begin
     DrawGrid1.Canvas.TextRect(aRect, aRect.Left+25, aRect.Top+20, 'X');
     exit;
   end;
   if (z0<>255) then
   begin
    for i:=0 to 3 do
     for ii:=0 to 7 do
     begin
       if (Form1.znaki1[z0 and 127]=2) then sektor0:=Form1.sektor else sektor0:=0;
       c:=Form1.znaki[sektor0][Form1.font1][z0 and 127][i][ii];
       if (c=3) then c:=a;
       DrawGrid1.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
       rect1.Left:=aRect.Left+1+round(szer*i);
       rect1.Top:=aRect.Top+1+round(wys*ii);
       rect1.Right:=aRect.Left+1+round(szer*(i+1));
       rect1.Bottom:=aRect.Top+1+round(wys*(ii+1));
       DrawGrid1.Canvas.FillRect(rect1);

       if (Form1.znaki1[z0 and 127]=2) then sektor0:=Form1.sektor else sektor0:=0;
       c:=Form1.znaki[sektor0][Form1.font1][z1 and 127][i][ii];
       if (c=3) then c:=b;
       DrawGrid1.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
       rect1.Left:=aRect.Left+1+round(szer*(i+4));
       rect1.Top:=aRect.Top+1+round(wys*ii);
       rect1.Right:=aRect.Left+1+round(szer*(i+1+4));
       rect1.Bottom:=aRect.Top+1+round(wys*(ii+1));
       DrawGrid1.Canvas.FillRect(rect1);
     end;
   end
   else  DrawGrid1.Canvas.TextRect(aRect, aRect.Left+4, aRect.Top+20, 'empty');
  end;

end;

procedure TForm4.DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=1;
end;

procedure TForm4.DrawGrid1MouseLeave(Sender: TObject);
begin
  Form4.Hint:='';
end;

procedure TForm4.DrawGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  z,i,ii,licz:byte;
  col,row:integer;
begin
  DrawGrid1.MouseToCell(X, Y, col, row);
  if (col>0) and (row>0) then
  begin
   z:=col-1+(row-1)*16;

   Form4.Hint:='';
   if (Form1.tab_tiles[Form1.font1][z].znak0<>255) and (Form1.tab_tiles1[z]>0) then
   begin
    licz:=0;
    for i:=0 to Form1.mapa_szer do
     for ii:=0 to ((Form1.mapa_wys+1) shr 2)-1 do
       if Form1.mapa[i][Form1.font1+ii*4]=z then licz:=licz+1;
    Form4.Hint:='Tile '+inttostr(z)+'($'+inttohex(z)+')';
    Form4.Hint:=Form4.Hint+AnsiString(#13#10)+'$'+inttohex(Form1.tab_tiles[Form1.font1][z].znak0);
    Form4.Hint:=Form4.Hint+' + $'+inttohex(Form1.tab_tiles[Form1.font1][z].znak1);
    Form4.Hint:=Form4.Hint+AnsiString(#13#10)+Form1.attrib_names[Form1.tab_tiles[Form1.font1][z].attrib];
    Form4.Hint:=Form4.Hint+AnsiString(#13#10)+inttostr(licz)+' x';
   end;
  end
  else Form4.Hint:='';
  Application.ActivateHint(Mouse.CursorPos);
end;

procedure TForm4.DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=0;
end;

procedure TForm4.DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
var
  a:byte;
begin
  a:=aCol-1+(aRow-1)*16;
  if (button0=1) and (Form1.tab_tiles1[a]=1) then
  begin
    Form1.wybor:=a;
    Form4.close;
  end;

end;

procedure TForm4.FormDeactivate(Sender: TObject);
begin
  button0:=0;
end;

end.

