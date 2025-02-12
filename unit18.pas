unit Unit18;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids,
  ExtCtrls, Types;

type

  { TForm18 }

  TForm18 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    DrawGrid1: TDrawGrid;
    DrawGrid2: TDrawGrid;
    DrawGrid3: TDrawGrid;
    DrawGrid4: TDrawGrid;
    DrawGrid5: TDrawGrid;
    DrawGrid6: TDrawGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
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
    procedure DrawGrid3DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid4DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid5DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid6DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure changeAnimation(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
     nr_anim:byte;
     paste1:boolean;
     color3:boolean;
     scolor:byte;
     button0:boolean;
     tab_copy:array[0..7,0..7] of byte;
     aframe:byte;       //klatka animacji podgladu
     frame0:byte;       //klatka edycji

  public

  end;

var
  Form18: TForm18;

implementation

{$R *.frm}

uses Unit1;

{ TForm18 }
//wyswietl aktualny numer animacji i pozmieniaj odpowiednie zmienne
procedure TForm18.changeAnimation(Sender: TObject);
begin
     if (nr_anim=255) then nr_anim:=Form1.ile_animacji
     else if (nr_anim>Form1.ile_animacji) then nr_anim:=0;

     Edit1.text:=inttostr(nr_anim);
     combobox2.ItemIndex:=Form1.anim_tab0[nr_anim][0];  //nr_tile
     combobox3.itemindex:=Form1.anim_tab0[nr_anim][1];  //font
     if (Form1.anim_tab0[nr_anim][2]=0) then
     begin
       CheckBox1.Checked:=false;
       color3:=false;
       RadioButton4.caption:='Color 2';
     end
     else
     begin
       CheckBox1.checked:=true;
       color3:=true;
       RadioButton4.caption:='Color 3';
     end;

     drawgrid5.invalidate;
     drawgrid1.invalidate;
end;

procedure TForm18.RadioButton1Change(Sender: TObject);
begin
  scolor:=0;
end;

procedure TForm18.RadioButton2Change(Sender: TObject);
begin
  scolor:=1;
end;

procedure TForm18.RadioButton3Change(Sender: TObject);
begin
  scolor:=2;
end;

procedure TForm18.RadioButton4Change(Sender: TObject);
begin
  scolor:=3;
end;

procedure TForm18.Timer1Timer(Sender: TObject);
begin
  aframe:=(aframe+1) and (Form1.maxFrames-1);
  drawGrid6.invalidate;
end;


procedure TForm18.Button2Click(Sender: TObject);
begin
  nr_anim:=nr_anim+1;
  changeAnimation(Sender);
end;

procedure TForm18.Button3Click(Sender: TObject);
var
  x,y:byte;
begin
  for x:=0 to 7 do
    for y:=0 to 7 do
      tab_copy[x][y]:=Form1.anim_tab1[nr_anim][frame0][x][y];

  Paste1:=true;
  Button4.enabled:=true;

end;

procedure TForm18.Button4Click(Sender: TObject);
var
  x,y:byte;
begin
  for x:=0 to 7 do
    for y:=0 to 7 do
      Form1.anim_tab1[nr_anim][frame0][x][y]:=tab_copy[x][y];

  DrawGrid1.invalidate;

end;

procedure TForm18.Button5Click(Sender: TObject);
var
  x,y:byte;
begin
  for x:=0 to 7 do
    for y:=0 to 7 do
      Form1.anim_tab1[nr_anim][frame0][x][y]:=scolor;

  DrawGrid1.invalidate;
end;

procedure TForm18.Button6Click(Sender: TObject);
begin
  frame0:=(frame0-1) and (Form1.maxFrames-1);
  edit2.text:=inttostr(frame0);
  DrawGrid1.invalidate;
end;

procedure TForm18.Button7Click(Sender: TObject);
begin
  frame0:=(frame0+1) and (Form1.maxFrames-1);
  edit2.text:=inttostr(frame0);
  drawgrid1.invalidate;
end;

procedure TForm18.CheckBox1Change(Sender: TObject);
begin
  if (CheckBox1.Checked) then
     Form1.anim_tab0[nr_anim][2]:=1
  else
      Form1.anim_tab0[nr_anim][2]:=0;

  changeAnimation(Sender);
end;

procedure TForm18.Button1Click(Sender: TObject);
begin
  nr_anim:=nr_anim-1;
  changeAnimation(Sender);
end;

procedure TForm18.ComboBox1Change(Sender: TObject);
begin
     Form1.ile_animacji:=ComboBox1.itemIndex-1;
     FormActivate(Sender);
end;

procedure TForm18.ComboBox2Change(Sender: TObject);
begin
  Form1.anim_tab0[nr_anim][0]:=ComboBox2.itemindex;
end;

procedure TForm18.ComboBox3Change(Sender: TObject);
begin
  Form1.anim_tab0[nr_anim][1]:=ComboBox3.itemindex;
end;

procedure TForm18.ComboBox4Change(Sender: TObject);
begin
  Form1.maxFrames:=ComboBox4.itemIndex*2+2;
  frame0:=frame0 and (Form1.maxFrames-1);
  edit2.text:=inttostr(frame0);
  drawgrid1.invalidate;
end;

procedure TForm18.ComboBox5Change(Sender: TObject);
begin
  Form1.animSpeed:=combobox5.itemindex;
  if (Form1.animSpeed=0) then Timer1.Interval:=40;
  if (Form1.animSpeed=1) then Timer1.Interval:=80;
  if (Form1.animSpeed=2) then Timer1.Interval:=160;
  if (Form1.animSpeed=3) then Timer1.Interval:=320;
end;

procedure TForm18.DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  a:byte;
begin
     a:=Form1.anim_tab1[nr_anim][frame0][aCol][aRow];
     if ((a=3) and (checkBox1.checked)) then a:=4;

     DrawGrid1.Canvas.Brush.Color:=Form1.Kolor[0][a];
     DrawGrid1.Canvas.FillRect(aRect);

end;

procedure TForm18.DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=true;
end;

procedure TForm18.DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=false;
end;

procedure TForm18.DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin
  if (button0) then
    Form1.anim_tab1[nr_anim][frame0][aCol][aRow]:=scolor;

end;

procedure TForm18.DrawGrid2DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  DrawGrid2.Canvas.Brush.Color:=Form1.Kolor[0][0];
  DrawGrid2.Canvas.FillRect(aRect);
end;

procedure TForm18.DrawGrid3DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  DrawGrid3.Canvas.Brush.Color:=Form1.Kolor[0][1];
  DrawGrid3.Canvas.FillRect(aRect);
end;

procedure TForm18.DrawGrid4DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  DrawGrid4.Canvas.Brush.Color:=Form1.Kolor[0][2];
  DrawGrid4.Canvas.FillRect(aRect);
end;

procedure TForm18.DrawGrid5DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  if (color3) then
     DrawGrid5.Canvas.Brush.Color:=Form1.Kolor[0][4]
  else
     DrawGrid5.Canvas.Brush.Color:=Form1.Kolor[0][3];

  DrawGrid5.Canvas.FillRect(aRect);
end;

procedure TForm18.DrawGrid6DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  a:byte;
begin
     a:=Form1.anim_tab1[nr_anim][aframe][aCol][aRow];

     if ((a=3) and (checkBox1.checked)) then a:=4;

     DrawGrid6.Canvas.Brush.Color:=Form1.Kolor[0][a];
     DrawGrid6.Canvas.FillRect(aRect);

end;

procedure TForm18.FormActivate(Sender: TObject);
begin
  if (Form1.ile_animacji=255) then
  begin
    ComboBox1.itemindex:=0;
    combobox4.enabled:=false;
    DrawGrid1.visible:=false;
    DrawGrid6.visible:=false;
    Edit1.Enabled:=false;
    ComboBox2.enabled:=false;
    ComboBox3.enabled:=false;
    CheckBox1.enabled:=false;
    Button3.enabled:=false;
    Button4.enabled:=false;
    button5.enabled:=false;
    button1.enabled:=false;
    button2.enabled:=false;
    Timer1.enabled:=false;
    Button6.enabled:=false;
    button7.enabled:=false;
    Edit2.Enabled:=false;
    combobox5.enabled:=false;
    groupbox1.enabled:=false;
  end
  else
  begin
    combobox4.itemindex:=Form1.maxFrames shr 2;
    combobox1.itemindex:=Form1.ile_animacji+1;

    DrawGrid1.visible:=true;
    DrawGrid6.visible:=true;
    Edit1.Enabled:=true;
    ComboBox2.enabled:=true;
    ComboBox3.enabled:=true;
    CheckBox1.enabled:=true;
    combobox5.enabled:=true;
    combobox4.enabled:=true;
    Button3.enabled:=true;
    button5.enabled:=true;
    button1.enabled:=true;
    button2.enabled:=true;
    groupbox1.enabled:=true;

    combobox5.ItemIndex:=Form1.animSpeed;
    combobox5change(Sender);

    Timer1.enabled:=true;
    button0:=false;
    Button6.enabled:=true;
    button7.enabled:=true;
    Edit2.Enabled:=true;

    if (paste1) then Button4.Enabled:=true else Button4.enabled:=false;

    DrawGrid2.invalidate;
    Drawgrid3.invalidate;
    Drawgrid4.invalidate;
    drawgrid5.invalidate;


    changeAnimation(Sender);

  end;

end;

procedure TForm18.FormCreate(Sender: TObject);
var
  i:byte;
begin
  color3:=false;
  paste1:=false;
  Timer1.enabled:=false;

  RadioButton1.checked:=true;
  scolor:=0;
  aframe:=0;
  frame0:=0;
  edit2.text:='0';

  ComboBox2.Clear;
  for i:=0 to 63 do
      ComboBox2.items.add('$'+inttohex(i));

end;

end.

