unit Unit22;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids, Types, Unit2;

type

  { TForm22 }

  TForm22 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    DrawGrid1: TDrawGrid;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DrawGrid1Click(Sender: TObject);
    procedure DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure FormActivate(Sender: TObject);
  private
    kolorL:byte;
  public

  end;

var
  Form22: TForm22;

implementation

{$R *.frm}

uses Unit1;

{ TForm22 }

procedure TForm22.ComboBox1Change(Sender: TObject);
begin
  //kolorL:=Form1.multicolor_val[Form1.row1];

  if (ComboBox1.ItemIndex=0) then
  begin
    label2.Visible:=false;
    DrawGrid1.visible:=false;
  end
  else
  begin
    label2.Visible:=true;
    DrawGrid1.visible:=true;
    kolorL:=Form1.multicolor_tab[Form1.row1-1][ComboBox1.ItemIndex-1];
    DrawGrid1.Invalidate;
  end;
end;

procedure TForm22.Button1Click(Sender: TObject);
begin
  Form1.multicolor_reg[Form1.row1-1]:=ComboBox1.ItemIndex;
  Form1.multicolor_val[Form1.row1-1]:=kolorL;
  close;
end;

procedure TForm22.DrawGrid1Click(Sender: TObject);
begin
  Form1.wybor:=-1;
  Form2.ShowModal;
  if (Form1.wybor>-1) then
  begin
    kolorL:=Form1.wybor;
    DrawGrid1.invalidate;
  end;
end;

procedure TForm22.DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  DrawGrid1.Canvas.Brush.Color:=Form1.paleta[kolorL];
  DrawGrid1.Canvas.FillRect(aRect);
  Label2.caption:='Color: $'+inttohex(kolorL);
end;

procedure TForm22.FormActivate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=Form1.multicolor_reg[Form1.row1-1];
  ComboBox1Change(Sender);
  kolorL:=Form1.multicolor_val[Form1.row1-1];
  //DrawGrid1.Invalidate;
end;

end.

