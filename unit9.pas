unit Unit9;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm9 }

  TForm9 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit2: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure CheckBox5Change(Sender: TObject);
    procedure CheckBox6Change(Sender: TObject);
    procedure CheckBox7Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    function liczba(liczba0: string):byte;
  private

  public

  end;

var
  Form9: TForm9;

implementation

{$R *.frm}

uses Unit1;

{ TForm9 }

function TForm9.liczba(liczba0: string):byte;
begin
  Result:=0;
  if length(liczba0)>0 then
     if (strtoint(liczba0)<256) then Result:=strtoint(liczba0)
end;

procedure TForm9.CheckBox1Change(Sender: TObject);
begin
  if (CheckBox1.checked) then
  begin
    Edit1.enabled:=true;
    Edit2.enabled:=true;
    Edit3.enabled:=true;
    Edit4.enabled:=true;
  end
  else
  begin
    Edit1.enabled:=false;
    Edit2.enabled:=false;
    Edit3.enabled:=false;
    Edit4.enabled:=false;
  end;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
  if (CheckBox1.checked) then
  begin
    Form1.sektor_enabled[1]:=1;
    Form1.sektor_startX[1]:=liczba(Edit1.text);
    Form1.sektor_startY[1]:=liczba(Edit2.text);
    Form1.sektor_endX[1]:=liczba(Edit3.text);
    Form1.sektor_endY[1]:=liczba(Edit4.text);
  end
  else Form1.sektor_enabled[1]:=0;

  if (CheckBox2.checked) then
  begin
    Form1.sektor_enabled[2]:=1;
    Form1.sektor_startX[2]:=liczba(Edit5.text);
    Form1.sektor_startY[2]:=liczba(Edit6.text);
    Form1.sektor_endX[2]:=liczba(Edit7.text);
    Form1.sektor_endY[2]:=liczba(Edit8.text);
  end
  else Form1.sektor_enabled[2]:=0;

  if (CheckBox3.checked) then
  begin
    Form1.sektor_enabled[3]:=1;
    Form1.sektor_startX[3]:=liczba(Edit9.text);
    Form1.sektor_startY[3]:=liczba(Edit10.text);
    Form1.sektor_endX[3]:=liczba(Edit11.text);
    Form1.sektor_endY[3]:=liczba(Edit12.text);
  end
  else Form1.sektor_enabled[3]:=0;

  if (CheckBox4.checked) then
  begin
    Form1.sektor_enabled[4]:=1;
    Form1.sektor_startX[4]:=liczba(Edit13.text);
    Form1.sektor_startY[4]:=liczba(Edit14.text);
    Form1.sektor_endX[4]:=liczba(Edit15.text);
    Form1.sektor_endY[4]:=liczba(Edit16.text);
  end
  else Form1.sektor_enabled[4]:=0;

  if (CheckBox5.checked) then
  begin
    Form1.sektor_enabled[5]:=1;
    Form1.sektor_startX[5]:=liczba(Edit17.text);
    Form1.sektor_startY[5]:=liczba(Edit18.text);
    Form1.sektor_endX[5]:=liczba(Edit19.text);
    Form1.sektor_endY[5]:=liczba(Edit20.text);
  end
  else Form1.sektor_enabled[5]:=0;

  if (CheckBox6.checked) then
  begin
    Form1.sektor_enabled[6]:=1;
    Form1.sektor_startX[6]:=liczba(Edit21.text);
    Form1.sektor_startY[6]:=liczba(Edit22.text);
    Form1.sektor_endX[6]:=liczba(Edit23.text);
    Form1.sektor_endY[6]:=liczba(Edit24.text);
  end
  else Form1.sektor_enabled[6]:=0;

  if (CheckBox7.checked) then
  begin
    Form1.sektor_enabled[7]:=1;
    Form1.sektor_startX[7]:=liczba(Edit25.text);
    Form1.sektor_startY[7]:=liczba(Edit26.text);
    Form1.sektor_endX[7]:=liczba(Edit27.text);
    Form1.sektor_endY[7]:=liczba(Edit28.text);
  end
  else Form1.sektor_enabled[7]:=0;

  Form1.DrawGrid10.Invalidate;
  close;
end;

procedure TForm9.CheckBox2Change(Sender: TObject);
begin
  if (CheckBox2.checked) then
  begin
    Edit5.enabled:=true;
    Edit6.enabled:=true;
    Edit7.enabled:=true;
    Edit8.enabled:=true;
  end
  else
  begin
    Edit5.enabled:=false;
    Edit6.enabled:=false;
    Edit7.enabled:=false;
    Edit8.enabled:=false;
  end;
end;

procedure TForm9.CheckBox3Change(Sender: TObject);
begin
  if (CheckBox3.checked) then
  begin
    Edit9.enabled:=true;
    Edit10.enabled:=true;
    Edit11.enabled:=true;
    Edit12.enabled:=true;
  end
  else
  begin
    Edit9.enabled:=false;
    Edit10.enabled:=false;
    Edit11.enabled:=false;
    Edit12.enabled:=false;
  end;
end;

procedure TForm9.CheckBox4Change(Sender: TObject);
begin
  if (CheckBox4.checked) then
  begin
    Edit13.enabled:=true;
    Edit14.enabled:=true;
    Edit15.enabled:=true;
    Edit16.enabled:=true;
  end
  else
  begin
    Edit13.enabled:=false;
    Edit14.enabled:=false;
    Edit15.enabled:=false;
    Edit16.enabled:=false;
  end;
end;

procedure TForm9.CheckBox5Change(Sender: TObject);
begin
  if (CheckBox5.checked) then
  begin
    Edit17.enabled:=true;
    Edit18.enabled:=true;
    Edit19.enabled:=true;
    Edit20.enabled:=true;
  end
  else
  begin
    Edit17.enabled:=false;
    Edit18.enabled:=false;
    Edit19.enabled:=false;
    Edit20.enabled:=false;
  end;
end;

procedure TForm9.CheckBox6Change(Sender: TObject);
begin
  if (CheckBox6.checked) then
  begin
    Edit21.enabled:=true;
    Edit22.enabled:=true;
    Edit23.enabled:=true;
    Edit24.enabled:=true;
  end
  else
  begin
    Edit21.enabled:=false;
    Edit22.enabled:=false;
    Edit23.enabled:=false;
    Edit24.enabled:=false;
  end;
end;

procedure TForm9.CheckBox7Change(Sender: TObject);
begin
  if (CheckBox7.checked) then
  begin
    Edit25.enabled:=true;
    Edit26.enabled:=true;
    Edit27.enabled:=true;
    Edit28.enabled:=true;
  end
  else
  begin
    Edit25.enabled:=false;
    Edit26.enabled:=false;
    Edit27.enabled:=false;
    Edit28.enabled:=false;
  end;
end;

procedure TForm9.FormActivate(Sender: TObject);
begin
  if (Form1.sektor_enabled[1]=1) then
  begin
    CheckBox1.checked:=true;
    Edit1.Text:=inttostr(Form1.sektor_startX[1]);
    Edit2.Text:=inttostr(Form1.sektor_startY[1]);
    Edit3.Text:=inttostr(Form1.sektor_endX[1]);
    Edit4.Text:=inttostr(Form1.sektor_endY[1]);
  end
  else CheckBox1.checked:=false;

  if (Form1.sektor_enabled[2]=1) then
  begin
    CheckBox2.checked:=true;
    Edit5.Text:=inttostr(Form1.sektor_startX[2]);
    Edit6.Text:=inttostr(Form1.sektor_startY[2]);
    Edit7.Text:=inttostr(Form1.sektor_endX[2]);
    Edit8.Text:=inttostr(Form1.sektor_endY[2]);
  end
  else CheckBox2.checked:=false;

  if (Form1.sektor_enabled[3]=1) then
  begin
    CheckBox3.checked:=true;
    Edit9.Text:=inttostr(Form1.sektor_startX[3]);
    Edit10.Text:=inttostr(Form1.sektor_startY[3]);
    Edit11.Text:=inttostr(Form1.sektor_endX[3]);
    Edit12.Text:=inttostr(Form1.sektor_endY[3]);
  end
  else CheckBox3.checked:=false;

  if (Form1.sektor_enabled[4]=1) then
  begin
    CheckBox4.checked:=true;
    Edit13.Text:=inttostr(Form1.sektor_startX[4]);
    Edit14.Text:=inttostr(Form1.sektor_startY[4]);
    Edit15.Text:=inttostr(Form1.sektor_endX[4]);
    Edit16.Text:=inttostr(Form1.sektor_endY[4]);
  end
  else CheckBox4.checked:=false;

  if (Form1.sektor_enabled[5]=1) then
  begin
    CheckBox5.checked:=true;
    Edit17.Text:=inttostr(Form1.sektor_startX[5]);
    Edit18.Text:=inttostr(Form1.sektor_startY[5]);
    Edit19.Text:=inttostr(Form1.sektor_endX[5]);
    Edit20.Text:=inttostr(Form1.sektor_endY[5]);
  end
  else CheckBox5.checked:=false;

  if (Form1.sektor_enabled[6]=1) then
  begin
    CheckBox6.checked:=true;
    Edit21.Text:=inttostr(Form1.sektor_startX[6]);
    Edit22.Text:=inttostr(Form1.sektor_startY[6]);
    Edit23.Text:=inttostr(Form1.sektor_endX[6]);
    Edit24.Text:=inttostr(Form1.sektor_endY[6]);
  end
  else CheckBox6.checked:=false;

  if (Form1.sektor_enabled[7]=1) then
  begin
    CheckBox7.checked:=true;
    Edit25.Text:=inttostr(Form1.sektor_startX[7]);
    Edit26.Text:=inttostr(Form1.sektor_startY[7]);
    Edit27.Text:=inttostr(Form1.sektor_endX[7]);
    Edit28.Text:=inttostr(Form1.sektor_endY[7]);
  end
  else CheckBox7.checked:=false;

  CheckBox1Change(Sender);
  CheckBox2Change(Sender);
  CheckBox3Change(Sender);
  CheckBox4Change(Sender);
  CheckBox5Change(Sender);
  CheckBox6Change(Sender);
  CheckBox7Change(Sender);
end;

end.

