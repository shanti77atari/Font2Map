unit Unit7;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls, Types;

type

  { TForm7 }

  TForm7 = class(TForm)
    Button1: TButton;
    DrawGrid1: TDrawGrid;
    procedure DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
    button0:byte;
  end;

var
  Form7: TForm7;

implementation

{$R *.frm}

uses Unit1;

{ TForm7 }

procedure TForm7.DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=1;
end;

procedure TForm7.DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
   a,b,c,i,ii,z0,z1,sektor0,nr,til,px,py,x,x2,y2:byte;
   s:string;
   szer,wys:single;
   rect1:TRect;
begin
  nr:=aCol-1+(aRow-1)*16;
  if (ARow=0) or (ACol=0) then
  begin
    if (Arow=0) and (ACol>0) then
    begin
      a:=Acol-1;
      s:='$'+inttohex(a);
      s[2]:='x';
      DrawGrid1.Canvas.TextRect(aRect, aRect.Left+35, aRect.Top+30, s);
      exit;
    end;
    if (ACol=0) and (ARow>0) then
    begin
      a:=ARow-1;
      s:=inttohex(a)+'x';
      s[1]:='$';
      DrawGrid1.Canvas.TextRect(aRect, aRect.Left+32, aRect.Top+30,s);
      exit;
    end;
  end
  else
      if (aCol=16) and (aRow=16) then exit
      else
      begin
        if (Form1.big_table[aCol-1+(aRow-1)*16][0]=255) then DrawGrid1.Canvas.TextRect(aRect, aRect.Left+15+round(8*szer*(x and 1)), aRect.Top+25+round(8*wys*(x shr 1)), 'empty')
        else
           for x:=0 to 15 do
           begin
                x2:=8*(x and 3);
                y2:=8*((x and 12) shr 2);
                szer:=(aRect.Right-aRect.Left+1-4)/32;
                wys:=(aRect.bottom-aRect.Top+1-4)/32;
                z0:=Form1.tab_tiles[x shr 2][Form1.big_table[aCol-1+(aRow-1)*16][x]].znak0;
                z1:=Form1.tab_tiles[x shr 2][Form1.big_table[aCol-1+(aRow-1)*16][x]].znak1;
                if (z0<128) then a:=3 else a:=4;
                if (z1<128) then b:=3 else b:=4;
                for i:=0 to 3 do
                 for ii:=0 to 7 do
                 begin
                      if (Form1.znaki1[z0 and 127]=2) then sektor0:=Form1.sektor else sektor0:=0;
                      c:=Form1.znaki[sektor0][x shr 2][z0 and 127][i][ii];
                      if (c=3) then c:=a;
                      DrawGrid1.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
                      rect1.Left:=aRect.Left+round(szer*(i+x2));
                      rect1.Top:=aRect.Top+round(wys*(ii+y2));
                      rect1.Right:=aRect.Left+round(szer*(i+1+x2));
                      rect1.Bottom:=aRect.Top+round(wys*(ii+1+y2));
                      DrawGrid1.Canvas.FillRect(rect1);

                      if (Form1.znaki1[z0 and 127]=2) then sektor0:=Form1.sektor else sektor0:=0;
                      c:=Form1.znaki[sektor0][x shr 2][z1 and 127][i][ii];
                      if (c=3) then c:=b;
                      DrawGrid1.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
                      rect1.Left:=aRect.Left+round(szer*(i+4+x2));
                      rect1.Top:=aRect.Top+round(wys*(ii+y2));
                      rect1.Right:=aRect.Left+round(szer*(i+1+4+x2));
                      rect1.Bottom:=aRect.Top+round(wys*(ii+1+y2));
                      DrawGrid1.Canvas.FillRect(rect1);
                 end;
           end;
      end;
end;

procedure TForm7.DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=0;
end;

procedure TForm7.DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin
  if (aCol>0) and (aRow>0) and (button0=1) then
  begin
    if (aCol=16) and (aRow=16) then exit;
    Form1.wybor:=aCol-1+(aRow-1)*16;
    close;
  end;
end;

procedure TForm7.FormDeactivate(Sender: TObject);
begin
  button0:=0;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
  Form7.Button1.setFocus;
  Form7.DrawGrid1.setFocus;
end;

end.

