unit Unit19;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm19 }

  TForm19 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  Form19: TForm19;

implementation

{$R *.frm}

uses Unit1;

{ TForm19 }

procedure TForm19.CheckBox1Change(Sender: TObject);
begin
  Edit1.Enabled:=checkbox1.checked;
end;

procedure TForm19.Button1Click(Sender: TObject);
begin
  Form1.mask_enabled[0]:=CheckBox1.checked;
  Form1.mask_enabled[1]:=CheckBox2.checked;
  Form1.mask_name[0]:=Edit1.caption;
  Form1.mask_name[1]:=Edit2.caption;
  close;
end;

procedure TForm19.CheckBox2Change(Sender: TObject);
begin
  Edit2.Enabled:=checkbox2.checked;
end;

procedure TForm19.FormActivate(Sender: TObject);
begin
  checkbox1.checked:=Form1.Mask_enabled[0];
  checkbox2.checked:=Form1.Mask_enabled[1];
  CheckBox1Change(Sender);
  CheckBox2Change(Sender);
  Edit1.Caption:=Form1.mask_name[0];
  Edit2.Caption:=Form1.mask_name[1];
end;

end.

