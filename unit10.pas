unit Unit10;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls, Types;

type

  { TForm10 }

  TForm10 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
  private

  public
    button0:byte;
  end;

var
  Form10: TForm10;

implementation

{$R *.frm}

uses Unit1;

{ TForm10 }

procedure TForm10.StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=1;
end;

procedure TForm10.Button2Click(Sender: TObject);
var
  i:byte;
begin
  for i:=1 to 16 do
  begin
    StringGrid1.Cells[i,1]:='';
    StringGrid1.Cells[i,2]:='';
    StringGrid1.Cells[i,3]:='';
    StringGrid1.Cells[i,4]:='';
    StringGrid1.Cells[i,5]:='';
    StringGrid1.Cells[i,6]:='';
    StringGrid1.Cells[i,7]:='  X';
    StringGrid1.Cells[i,8]:='  X';
  end;
end;

procedure TForm10.Button1Click(Sender: TObject);
var
  i:byte;
begin
  for i:=0 to 127 do
  begin
    if (StringGrid1.Cells[(i and 15)+1,(i shr 4)+1]='') then Form1.znaki1[i]:=1;
    if (StringGrid1.Cells[(i and 15)+1,(i shr 4)+1]='  X') then Form1.znaki1[i]:=0;
    if (StringGrid1.Cells[(i and 15)+1,(i shr 4)+1]='  S') then Form1.znaki1[i]:=2;
  end;

  if (Form1.easyMode>0) then
    for i:=0 to 63 do
    begin
      if (Form1.znaki1[i*2]>0) and (Form1.znaki1[i*2+1]>0) then
      begin
        Form1.tab_tiles1[i]:=1;
        Form1.tab_tiles1[i+64]:=1;
      end
      else
      begin
        Form1.tab_tiles1[i]:=0;
        Form1.tab_tiles1[i+64]:=0;
      end;
    end;

  Form1.DrawGrid10.Invalidate;
  close;
end;

procedure TForm10.FormActivate(Sender: TObject);
var
  i,a:byte;
begin
  for i:=1 to 16 do
  begin
    a:=i-1;
    StringGrid1.Cells[i,0]:='$'+inttohex(a);
  end;

  for i:=0 to 7 do
  begin
    a:=i*16;
    StringGrid1.Cells[0,i+1]:='$'+inttohex(a);
  end;

  for i:=0 to 127 do
  begin
    if (Form1.znaki1[i]=0) then StringGrid1.Cells[(i and 15)+1,(i shr 4)+1]:='  X';
    if (Form1.znaki1[i]=1) then StringGrid1.Cells[(i and 15)+1,(i shr 4)+1]:='';
    if (Form1.znaki1[i]=2) then StringGrid1.Cells[(i and 15)+1,(i shr 4)+1]:='  S';
  end;

end;


procedure TForm10.StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=0;
end;

procedure TForm10.StringGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin
  if (button0=1) then
  begin
    if (StringGrid1.Cells[aCol,aRow]='') then  StringGrid1.Cells[aCol,aRow]:='  S'
     else if (StringGrid1.Cells[aCol,aRow]='  S') then StringGrid1.Cells[aCol,aRow]:='  X'
             else StringGrid1.Cells[aCol,aRow]:='';
  end;
  button0:=0;
end;

{ TForm10 }


end.

