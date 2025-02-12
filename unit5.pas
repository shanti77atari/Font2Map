unit Unit5;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;

implementation

{$R *.frm}

uses Unit1;

{ TForm5 }

procedure TForm5.FormActivate(Sender: TObject);
var
  i:byte;
begin
  ComboBox1.clear;
  for i:=0 to Form1.attrib_ile do
    if (i=0) then ComboBox1.items.add('add new')
       else ComboBox1.Items.add(Form1.attrib_names[i]);

  Edit1.text:='';
  Edit2.text:='';
  Combobox1.itemindex:=0;
end;

procedure TForm5.Button1Click(Sender: TObject);
var
  a:integer;
begin
  if (Edit2.text='') then a:=256 else a:=strtoint(Edit2.text);
  if (a<256) then
  begin
   if (ComboBox1.itemindex=0) then
   begin
    if (Form1.attrib_ile<128) then
    begin
     Form1.attrib_ile:=Form1.attrib_ile+1;             //dodajemy nowy atrybut
     ComboBox1.items.add(Edit1.text);
     Form1.attrib_names[Form1.attrib_ile]:=Edit1.text;
     Form1.attrib_values[Form1.attrib_ile]:=a;
     Form1.Combobox3.items.add(Edit1.text);
    end;
    close;
   end
   else
   begin
     ComboBox1.Items[ComboBox1.itemindex]:=Edit1.text;         //edycja atrybutu
     Form1.attrib_names[ComboBox1.itemindex]:=Edit1.text;
     Form1.attrib_values[ComboBox1.itemindex]:=a;
     Form1.Combobox3.Items[Combobox1.itemindex]:=Edit1.text;
     close;
   end;
  end;
end;

procedure TForm5.ComboBox1Change(Sender: TObject);
begin
  if (ComboBox1.itemindex=0) then
  begin
    Edit1.text:='';
    Edit2.text:='';
  end
  else
  begin
    Edit1.text:=Form1.attrib_names[ComboBox1.itemindex];
    Edit2.text:=inttostr(Form1.attrib_values[ComboBox1.itemindex]);
  end;
end;

end.

