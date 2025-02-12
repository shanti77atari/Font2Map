unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls, Types;

type

  { TForm3 }

  TForm3 = class(TForm)
    CheckBox1: TCheckBox;
    DrawGrid1: TDrawGrid;
    procedure CheckBox1Change(Sender: TObject);
    procedure DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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
  Form3: TForm3;

implementation

{$R *.frm}

uses Unit1;

{ TForm3 }

procedure TForm3.DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
rect1: TRect;
i,ii:byte;
a,b: byte;
szer,wys:single;
sektor0:byte;
s: string;
begin
  szer:=(aRect.Right-aRect.Left+1-4)/8;
  wys:=(aRect.Bottom-aRect.Top+1-4)/8;
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
     if Form1.znaki0[Form1.sektor][Form1.font0][a]=0 then
     begin
       DrawGrid1.Canvas.TextRect(aRect, aRect.Left+4, aRect.Top+20, 'empty');
     end
     else
     begin
      if (Form1.znaki1[a]=2) then sektor0:=Form1.sektor else sektor0:=0;     //=2 znak dostepny w sektorach
      for i := 0 to 7 do
       for ii := 0 to 3 do
       begin
        b:=Form1.znaki[sektor0][Form1.font0][a][ii][i];
        if ((b=3) and checkbox1.checked) then b:=4;
        DrawGrid1.Canvas.Brush.Color:=Form1.Kolor[sektor0][b];
        rect1.Left:=aRect.Left+1+round(szer*(ii+2));
        rect1.Top:=aRect.Top+1+round(wys*i);
        rect1.Right:=aRect.Left+1+round(szer*(ii+1+2));
        rect1.Bottom:=aRect.Top+1+round(wys*(i+1));
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

procedure TForm3.CheckBox1Change(Sender: TObject);
begin
  DrawGrid1.invalidate;                  //odswiez znaki
end;

procedure TForm3.DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=1;
end;

procedure TForm3.DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=0;
end;

procedure TForm3.DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
var
   a:byte;
begin
  a:=aCol-1+(aRow-1)*16;
  if (button0=1) and (Form1.znaki1[a]>0) then
  begin
    if CheckBox1.Checked then a:=a+1;
    Form1.wybor:=a;
    Form3.close;
  end;
end;

procedure TForm3.FormDeactivate(Sender: TObject);
begin
  button0:=0;
end;

end.

