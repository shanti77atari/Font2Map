unit Unit17;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm17 }

  TForm17 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit10: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SetHints(Sender: TObject);
  private

  public

  end;

var
  Form17: TForm17;

implementation

{$R *.frm}

uses Unit1;

{ TForm17 }

//ustaw hinta
procedure TForm17.SetHints(Sender: TObject);
var
  numer:byte;
begin
  numer:=Form1.mapa1[Form1.col1-1][Form1.row1-1];
  Edit2.Hint:=Form1.hinty[Form1.hint_table[numer][5][1]];
  Edit3.Hint:=Form1.hinty[Form1.hint_table[numer][5][2]];
  Edit4.Hint:=Form1.hinty[Form1.hint_table[numer][5][3]];
  Edit5.Hint:=Form1.hinty[Form1.hint_table[numer][5][4]];
  Edit6.Hint:=Form1.hinty[Form1.hint_table[numer][5][5]];
  Edit7.Hint:=Form1.hinty[Form1.hint_table[numer][5][6]];
  Edit8.Hint:=Form1.hinty[Form1.hint_table[numer][5][7]];
  Edit9.Hint:=Form1.hinty[Form1.hint_table[numer][5][8]];
  Edit10.Hint:=Form1.hinty[Form1.hint_table[numer][5][9]];
end;


procedure TForm17.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm17.Button1Click(Sender: TObject);
var
  x0,y0:byte;
  a:integer;
begin
  x0:=Form1.col1-1;
  y0:=Form1.row1-1;

  if (Edit2.Text='') then a:=0 else a:=strtoint(Edit2.Text);
  if (a>255) then a:=0;
  Form1.multi[x0][y0][0]:=a;
  if (Edit3.Text='') then a:=0 else a:=strtoint(Edit3.Text);
  if (a>255) then a:=0;
  Form1.multi[x0][y0][1]:=a;
  if (Edit4.Text='') then a:=0 else a:=strtoint(Edit4.Text);
  if (a>255) then a:=0;
  Form1.multi[x0][y0][2]:=a;
  if (Edit5.Text='') then a:=0 else a:=strtoint(Edit5.Text);
  if (a>255) then a:=0;
  Form1.multi[x0][y0][3]:=a;
  if (Edit6.Text='') then a:=0 else a:=strtoint(Edit6.Text);
  if (a>255) then a:=0;
  Form1.multi[x0][y0][4]:=a;
  if (Edit7.Text='') then a:=0 else a:=strtoint(Edit7.Text);
  if (a>255) then a:=0;
  Form1.multi[x0][y0][5]:=a;
  if (Edit8.Text='') then a:=0 else a:=strtoint(Edit8.Text);
  if (a>255) then a:=0;
  Form1.multi[x0][y0][6]:=a;
  if (Edit9.Text='') then a:=0 else a:=strtoint(Edit9.Text);
  if (a>255) then a:=0;
  Form1.multi[x0][y0][7]:=a;
  if (Edit10.Text='') then a:=0 else a:=strtoint(Edit10.Text);
  if (a>255) then a:=0;
  Form1.multi[x0][y0][8]:=a;

  close;
end;

procedure TForm17.FormShow(Sender: TObject);
var
  x0,y0:byte;
begin
  x0:=Form1.col1-1;
  y0:=Form1.row1-1;
  Form17.Caption:=Form1.object_mnemonic[Form1.mapa1[x0][y0]]+'   '+Form1.object_description[Form1.mapa1[x0][y0]];
  Label2.Caption:='X = '+inttostr(x0);
  Label3.Caption:='Y = '+inttostr(y0);

  Edit2.Text:=inttostr(Form1.multi[x0][y0][0]);
  Edit3.Text:=inttostr(Form1.multi[x0][y0][1]);
  Edit4.Text:=inttostr(Form1.multi[x0][y0][2]);
  Edit5.Text:=inttostr(Form1.multi[x0][y0][3]);
  Edit6.Text:=inttostr(Form1.multi[x0][y0][4]);
  Edit7.Text:=inttostr(Form1.multi[x0][y0][5]);
  Edit8.Text:=inttostr(Form1.multi[x0][y0][6]);
  Edit9.Text:=inttostr(Form1.multi[x0][y0][7]);
  Edit10.Text:=inttostr(Form1.multi[x0][y0][8]);

  SetHints(Sender);
end;

end.

