unit Unit6;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls, Types;

type

  {$MACRO ON}
  {$define EMPTY:=255}  //nie używany =-1 czyli 255

  { TForm6 }

  TForm6 = class(TForm)
    Button1: TButton;
    DrawGrid1: TDrawGrid;
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
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    button0:byte;
  public

  end;

var
  Form6: TForm6;

implementation

{$R *.frm}

{ TForm6 }

uses Unit1;

procedure TForm6.DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
   a,b,c,i,ii,z0,z1,sektor0,nr,til,px,py:byte;
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
  begin
    if (aCol=16) and (aRow=16) then exit;
    if Form1.medium_table[Form1.font1 shr 1][nr][0]=EMPTY then DrawGrid1.Canvas.TextRect(aRect, aRect.Left+15, aRect.Top+25, 'empty')
    else
      for til:=0 to 3 do
       begin
        szer:=(aRect.Right-aRect.Left+1-4)/16;
        wys:=(aRect.bottom-aRect.Top+1-4)/16;
        px:=(til and 1)*8;
        py:=(til shr 1)*8;

        z0:=Form1.tab_tiles[Form1.font1+(til shr 1)][Form1.medium_table[Form1.font1 shr 1][nr][til]].znak0;
        z1:=Form1.tab_tiles[Form1.font1+(til shr 1)][Form1.medium_table[Form1.font1 shr 1][nr][til]].znak1;
        if (z0<128) then a:=3 else a:=4;
        if (z1<128) then b:=3 else b:=4;
        for i:=0 to 3 do
         for ii:=0 to 7 do
          begin
           if (Form1.znaki1[z0 and 127]=2) then sektor0:=Form1.sektor else sektor0:=0;
           c:=Form1.znaki[sektor0][Form1.font1+(til shr 1)][z0 and 127][i][ii];
           if (c=3) then c:=a;
           DrawGrid1.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
           rect1.Left:=aRect.Left+round(szer*(i+px));
           rect1.Top:=aRect.Top+round(wys*(ii+py));
           rect1.Right:=aRect.Left+round(szer*(i+1+px));
           rect1.Bottom:=aRect.Top+round(wys*(ii+1+py));
           DrawGrid1.Canvas.FillRect(rect1);

           if (Form1.znaki1[z0 and 127]=2) then sektor0:=Form1.sektor else sektor0:=0;
           c:=Form1.znaki[sektor0][Form1.font1+(til shr 1)][z1 and 127][i][ii];
           if (c=3) then c:=b;
           DrawGrid1.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
           rect1.Left:=aRect.Left+round(szer*(i+4+px));
           rect1.Top:=aRect.Top+round(wys*(ii+py));
           rect1.Right:=aRect.Left+round(szer*(i+1+4+px));
           rect1.Bottom:=aRect.Top+round(wys*(ii+1+py));
           DrawGrid1.Canvas.FillRect(rect1);
          end;
       end;
  end;
end;

procedure TForm6.DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=1;
end;

procedure TForm6.DrawGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

end;

procedure TForm6.DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=0;
end;

procedure TForm6.DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin
  if button0=1 then
  begin
    if (aCol=16) and (aRow=16) then exit;
    Form1.wybor:=aCol-1+(aRow-1)*16;
    DrawGrid1.ClearSelections;
    Form6.close;
  end;
end;

procedure TForm6.FormDeactivate(Sender: TObject);
begin
  button0:=0;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  Form6.button1.setfocus;
  Form6.drawgrid1.setfocus;
end;




end.

