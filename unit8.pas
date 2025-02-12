unit Unit8;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm8 }

  TForm8 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SetHints(Sender: TObject);
  private

  public
    ile:byte;
    tab0: array[0..255] of byte;
    tab1: array[0..255] of byte;
  end;

var
  Form8: TForm8;

implementation

{$R *.frm}

uses Unit1;

{ TForm8 }
//ustaw hinta
procedure TForm8.SetHints(Sender: TObject);
var
  numer:byte;
  a:integer;
begin
  a:=ComboBox1.ItemIndex;
  if a=-1 then numer:=0
     else numer:=tab0[ComboBox1.ItemIndex];
  combobox1.Hint:=Form1.hinty[Form1.hint_table[numer][6][0]];

  CheckBox6.Hint:=Form1.hinty[Form1.hint_table[numer][0][0]];

  CheckBox1.Hint:=Form1.hinty[Form1.hint_table[numer][1][0]];
  Edit3.Hint:=Form1.hinty[Form1.hint_table[numer][1][1]];

  CheckBox2.Hint:=Form1.hinty[Form1.hint_table[numer][2][0]];
  Edit4.Hint:=Form1.hinty[Form1.hint_table[numer][2][1]];
  Edit5.Hint:=Form1.hinty[Form1.hint_table[numer][2][2]];
  combobox2.Hint:=Form1.hinty[Form1.hint_table[numer][2][3]];

  CheckBox3.Hint:=Form1.hinty[Form1.hint_table[numer][3][0]];
  Edit6.Hint:=Form1.hinty[Form1.hint_table[numer][3][1]];
  Edit7.Hint:=Form1.hinty[Form1.hint_table[numer][3][2]];
  combobox3.Hint:=Form1.hinty[Form1.hint_table[numer][3][3]];

  CheckBox4.Hint:=Form1.hinty[Form1.hint_table[numer][4][0]];
  Edit8.Hint:=Form1.hinty[Form1.hint_table[numer][4][1]];
  Edit9.Hint:=Form1.hinty[Form1.hint_table[numer][4][2]];
  Edit10.Hint:=Form1.hinty[Form1.hint_table[numer][4][3]];
  Edit11.Hint:=Form1.hinty[Form1.hint_table[numer][4][4]];
  Edit12.Hint:=Form1.hinty[Form1.hint_table[numer][4][5]];
  Edit13.Hint:=Form1.hinty[Form1.hint_table[numer][4][6]];
  Edit14.Hint:=Form1.hinty[Form1.hint_table[numer][4][7]];
  Edit15.Hint:=Form1.hinty[Form1.hint_table[numer][4][8]];
  Edit16.Hint:=Form1.hinty[Form1.hint_table[numer][4][9]];
end;

procedure TForm8.CheckBox1Change(Sender: TObject);
begin
  Edit3.Enabled:=CheckBox1.Checked;
end;

procedure TForm8.Button1Click(Sender: TObject);
var
  poz,poz1:byte;
  a:integer;
begin
  if length(Edit1.text)=0 then exit;  //mnemonic nie moze byc pusty

  poz:=tab0[ComboBox1.itemIndex];
  if (length(Form1.object_mnemonic[poz])=0) then poz1:=ile else poz1:=tab1[poz];

  Form1.Object_mnemonic[poz]:=Edit1.text;
  Form1.object_description[poz]:=Edit2.text;

  if (CheckBox6.checked) then Form1.object_flaga[poz]:=1 else Form1.object_flaga[poz]:=0;

  if (CheckBox1.checked) then
  begin
    if length(Edit3.text)>0 then a:=strtoint(Edit3.text) else a:=0;
    if a<256 then Form1.object_value[poz]:=a else Form1.object_value[poz]:=0;
    Form1.object_flaga[poz]:=Form1.object_flaga[poz] or 2;
  end;
  //position0
  if (CheckBox2.checked) then
  begin
    if (length(Edit4.text)=0) then a:=0 else a:=strtoint(Edit4.text);
    if a<256 then Form1.object_position0[poz][0]:=a else Form1.object_position0[poz][0]:=0;
    if (length(Edit5.text)=0) then a:=0 else a:=strtoint(Edit5.text);
    if a<256 then Form1.object_position0[poz][1]:=a else Form1.object_position0[poz][1]:=0;
    Form1.object_position0[poz][2]:=tab0[ComboBox2.itemindex];
    Form1.object_flaga[poz]:=Form1.object_flaga[poz] or 4;
  end;
  //position1
  if (CheckBox3.checked) then
  begin
    if (length(Edit6.text)=0) then a:=0 else a:=strtoint(Edit6.text);
    if a<256 then Form1.object_position1[poz][0]:=a else Form1.object_position1[poz][0]:=0;
    if (length(Edit7.text)=0) then a:=0 else a:=strtoint(Edit7.text);
    if a<256 then Form1.object_position1[poz][1]:=a else Form1.object_position1[poz][1]:=0;
    Form1.object_position1[poz][2]:=tab0[ComboBox3.itemindex];
    Form1.object_flaga[poz]:=Form1.object_flaga[poz] or 8;
  end;
  //data
  if (CheckBox4.checked) then
  begin
    if (length(Edit8.text)=0) then a:=0 else a:=strtoint(Edit8.text);
    if a<256 then Form1.object_data[poz][0]:=a else Form1.object_data[poz][0]:=0;
    if (length(Edit9.text)=0) then a:=0 else a:=strtoint(Edit9.text);
    if a<256 then Form1.object_data[poz][1]:=a else Form1.object_data[poz][1]:=0;
    if (length(Edit10.text)=0) then a:=0 else a:=strtoint(Edit10.text);
    if a<256 then Form1.object_data[poz][2]:=a else Form1.object_data[poz][2]:=0;
    if (length(Edit11.text)=0) then a:=0 else a:=strtoint(Edit11.text);
    if a<256 then Form1.object_data[poz][3]:=a else Form1.object_data[poz][3]:=0;
    if (length(Edit12.text)=0) then a:=0 else a:=strtoint(Edit12.text);
    if a<256 then Form1.object_extra[poz][0]:=a else Form1.object_extra[poz][0]:=0;
    if (length(Edit13.text)=0) then a:=0 else a:=strtoint(Edit13.text);
    if a<256 then Form1.object_extra[poz][1]:=a else Form1.object_extra[poz][1]:=0;
    if (length(Edit14.text)=0) then a:=0 else a:=strtoint(Edit14.text);
    if a<256 then Form1.object_extra[poz][2]:=a else Form1.object_extra[poz][2]:=0;
    if (length(Edit15.text)=0) then a:=0 else a:=strtoint(Edit15.text);
    if a<256 then Form1.object_extra[poz][3]:=a else Form1.object_extra[poz][3]:=0;
    if (length(Edit16.text)=0) then a:=0 else a:=strtoint(Edit16.text);
    if a<256 then Form1.object_extra[poz][4]:=a else Form1.object_extra[poz][4]:=0;
    Form1.object_flaga[poz]:=Form1.object_flaga[poz] or 16;
  end;
  if (checkbox5.Checked) then Form1.object_flaga[poz]:= Form1.object_flaga[poz] or 128
  else Form1.object_flaga[poz]:= Form1.object_flaga[poz] and 127;

  Form1.wybor:=ComboBox1.ItemIndex+1;
  close;
end;

procedure TForm8.Button2Click(Sender: TObject);
var
  x:integer;
  poz,i,ii:byte;
begin
  if (combobox1.Itemindex=-1) then exit;

  x:=MessageDlg('Are you sure to clear this object and remove him from map ?', mtConfirmation, mbYesNo, 0);
  if x<>mrYes then exit;

  poz:=tab0[ComboBox1.itemIndex];


  for i:=0 to Form1.mapa_szer do
   for ii:=0 to Form1.mapa_wys do
       if (Form1.mapa1[i][ii]=poz) then Form1.mapa1[i][ii]:=0;

  Form1.object_mnemonic[poz]:='';
  Form1.object_description[poz]:='';
  Form1.object_flaga[poz]:=0;

  combobox1.itemindex:=-1;

  Form1.DrawGrid10.Invalidate;

  Form8.close;
end;

procedure TForm8.CheckBox2Change(Sender: TObject);
begin
  Edit4.Enabled:=Checkbox2.Checked;
  Edit5.Enabled:=Checkbox2.Checked;
  ComboBox2.Enabled:=CheckBox2.Checked;
end;

procedure TForm8.CheckBox3Change(Sender: TObject);
begin
  Edit6.Enabled:=Checkbox3.Checked;
  Edit7.Enabled:=Checkbox3.Checked;
  ComboBox3.Enabled:=CheckBox3.Checked;
end;

procedure TForm8.CheckBox4Change(Sender: TObject);
begin
  Edit8.Enabled:=Checkbox4.Checked;
  Edit9.Enabled:=Checkbox4.Checked;
  Edit10.Enabled:=Checkbox4.Checked;
  Edit11.Enabled:=Checkbox4.Checked;
  Edit12.Enabled:=Checkbox4.Checked;
  Edit13.Enabled:=Checkbox4.Checked;
  Edit14.Enabled:=Checkbox4.Checked;
  Edit15.Enabled:=Checkbox4.Checked;
  Edit16.Enabled:=Checkbox4.Checked;
end;

procedure TForm8.ComboBox1Change(Sender: TObject);
var
  poz,i:byte;
begin
  Button1.Enabled:=true;

  if (ComboBox1.ItemIndex<0) or (ComboBox1.ItemIndex>=ile) then
  begin
    Edit1.text:='';
    Edit2.text:='';
    Edit3.text:='';
    Edit4.text:='';
    Edit5.text:='';
    Edit6.text:='';
    Edit7.text:='';
    Edit8.text:='';
    Edit9.text:='';
    Edit10.text:='';
    Edit11.text:='';
    Edit12.text:='';
    Edit13.text:='';
    Edit14.text:='';
    Edit15.text:='';
    Edit16.text:='';
    CheckBox6.checked:=false;
    CheckBox1.checked:=false;
    CheckBox2.checked:=false;
    CheckBox3.checked:=false;
    CheckBox4.checked:=false;
    checkBox5.checked:=false;
    ComboBox2.ItemIndex:=-1;
    ComboBox3.ItemIndex:=-1;
  end
  else
  begin
    poz:=tab0[ComboBox1.ItemIndex];
    Edit1.text:=Form1.object_mnemonic[poz];
    Edit2.text:=Form1.object_description[poz];

    CheckBox6.checked:=(Form1.object_flaga[poz] and 1)=1;
    CheckBox1.checked:=(Form1.object_flaga[poz] and 2)=2;
    CheckBox2.checked:=(Form1.object_flaga[poz] and 4)=4;
    CheckBox3.checked:=(Form1.object_flaga[poz] and 8)=8;
    CheckBox4.checked:=(Form1.object_flaga[poz] and 16)=16;
    CheckBox5.checked:=(Form1.object_flaga[poz] and 128)=128;

    if (Form1.object_flaga[poz] and 2=2) then Edit3.text:=inttostr(Form1.object_value[poz])
       else Edit3.text:='';

    if (Form1.object_flaga[poz] and 4=4) then
    begin
     for i:=0 to ile-1 do
        if (tab0[i]=Form1.object_position0[poz][2]) then break;

     ComboBox2.ItemIndex:=i;
     Edit4.text:=inttostr(Form1.object_position0[poz][0]);
     Edit5.text:=inttostr(Form1.object_position0[poz][1]);
    end
    else
    begin
      ComboBox2.ItemIndex:=-1;
      Edit4.text:='';
      Edit5.text:='';
    end;

    if (Form1.object_flaga[poz] and 8=8) then
    begin
     for i:=0 to ile-1 do
        if (tab0[i]=Form1.object_position1[poz][2]) then break;

     ComboBox3.ItemIndex:=i;
     Edit6.text:=inttostr(Form1.object_position1[poz][0]);
     Edit7.text:=inttostr(Form1.object_position1[poz][1]);
    end
    else
    begin
      ComboBox3.ItemIndex:=-1;
      Edit6.text:='';
      Edit7.text:='';
    end;

    if (Form1.object_flaga[poz] and 16=16) then
    begin
         Edit8.text:=inttostr(Form1.object_data[poz][0]);
         Edit9.text:=inttostr(Form1.object_data[poz][1]);
         Edit10.text:=inttostr(Form1.object_data[poz][2]);
         Edit11.text:=inttostr(Form1.object_data[poz][3]);
         Edit12.text:=inttostr(Form1.object_extra[poz][0]);
         Edit13.text:=inttostr(Form1.object_extra[poz][1]);
         Edit14.text:=inttostr(Form1.object_extra[poz][2]);
         Edit15.text:=inttostr(Form1.object_extra[poz][3]);
         Edit16.text:=inttostr(Form1.object_extra[poz][4]);
    end
    else
    begin
         Edit8.text:='';
         Edit9.text:='';
         Edit10.text:='';
         Edit11.text:='';
         Edit12.text:='';
         Edit13.text:='';
         Edit14.text:='';
         Edit15.text:='';
         Edit16.text:='';
    end;
  end;
  SetHints(Sender);
end;

procedure TForm8.FormActivate(Sender: TObject);
var
  i,ii:byte;

begin
  ComboBox1.Clear;
  ComboBox2.Clear;
  ComboBox3.Clear;

  ii:=0;

   for i:=1 to 255 do
    if (length(Form1.object_mnemonic[i])>0) then
    begin
      ComboBox1.Items.Add('* '+inttostr(i)+'='+Form1.object_mnemonic[i]+','+Form1.object_description[i]);
      ComboBox2.Items.Add(Form1.object_description[i]+'='+inttostr(i)+' ,'+Form1.object_mnemonic[i]);
      ComboBox3.Items.Add(Form1.object_description[i]+'='+inttostr(i)+' ,'+Form1.object_mnemonic[i]);
      tab0[ii]:=i;
      ii:=ii+1;
    end;

   ile:=ii;

   for i:=1 to 255 do
    if (length(Form1.object_mnemonic[i])=0) then
    begin
      ComboBox1.Items.Add(inttostr(i)+' = *empty*');
      tab0[ii]:=i;
      ii:=ii+1;
    end;

  ComboBox2.itemindex:=-1;
  ComboBox3.itemindex:=-1;

  if (Form1.ComboBox4.ItemIndex=0) then
  begin
    ComboBox1.ItemIndex:=-1;
    Button1.Enabled:=false;
  end
  else ComboBox1.ItemIndex:=Form1.ComboBox4.ItemIndex-1;

  ComboBox1Change(Sender);
  SetHints(Sender);
end;

end.

