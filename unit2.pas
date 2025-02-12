unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, Types, Windows;

type

  { TForm2 }

  TForm2 = class(TForm)
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
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private

  public
    button0:byte;
  end;

var
  Form2: TForm2;

implementation

{$R *.frm}

uses Unit1;

{ TForm2 }

procedure TForm2.DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  x,y:integer;
begin
  if (ACol=0) and (ARow>0) then
  begin
    DrawGrid1.Canvas.TextRect(aRect, aRect.Left+22, aRect.Top+2, IntTohex(ARow-1,1));
  end;
  if (ARow=0) and (ACol>0) then
  begin
    DrawGrid1.Canvas.TextRect(aRect, aRect.Left+22, aRect.Top+2, IntTohex((ACol-1)*2,1));
  end;
  if (ARow>0) and (ACol>0) then
  begin
    y:=ARow-1;      //kolor
    x:=ACol-1;      //odcien
    DrawGrid1.Canvas.Brush.Color:=Form1.paleta[y*16+x*2];
    DrawGrid1.Canvas.FillRect(aRect);
  end;

end;

procedure TForm2.DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=1;
end;

procedure TForm2.DrawGrid1MouseLeave(Sender: TObject);
begin
  DrawGrid1.Hint:='';
end;

procedure TForm2.DrawGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  z:byte;
  col,row:integer;
begin
  DrawGrid1.MouseToCell(X, Y, col, row);
  if (col>0) and (row>0) and (col<9) and (row<17) then
  begin
    z:=(col-1)*2+(row-1)*16;
    DrawGrid1.Hint:='$'+inttohex(z);
  end
  else DrawGrid1.Hint:='';
  Application.ActivateHint(Mouse.CursorPos);
end;

procedure TForm2.DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=0;
end;

procedure TForm2.DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin
  if (button0=1) then
  begin
    Form1.wybor:=(ACol-1)*2+(ARow-1)*16;
    Form2.close;
  end;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin

end;

procedure TForm2.FormDeactivate(Sender: TObject);
begin
  button0:=0;
end;


end.

