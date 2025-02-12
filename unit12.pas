unit Unit12;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm12 }

  TForm12 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  Form12: TForm12;

implementation

{$R *.frm}

Uses Unit1;

{ TForm12 }

procedure TForm12.FormActivate(Sender: TObject);
begin
  Edit1.text:=inttostr(Form1.mapa_szer+1);
  Edit2.text:=inttostr(Form1.mapa_wys+1);
end;

procedure TForm12.Button1Click(Sender: TObject);
var
  i,ii:integer;
begin
  if (length(Edit1.text)>0) and (length(Edit2.text)>0) then
  begin
    i:=strtoint(Edit1.text);
    ii:=strtoint(Edit2.text);
    if (i>3) and (i<257) and (ii>3) and (ii<257) and ((i mod 4)=0) and ((ii mod 4)=0) then
    begin
      Form1.mapa_szer:=i-1;
      Form1.mapa_wys:=ii-1;
      if (Form1.mapa_mode=0) or (Form1.mapa_mode=4) then
      begin
        Form1.DrawGrid10.ColCount:=i+1;
        Form1.DrawGrid10.RowCount:=ii+1;
      end;
      if (Form1.mapa_mode=1) or (Form1.mapa_mode=2) then
      begin
        Form1.DrawGrid10.ColCount:=((Form1.mapa_szer+1) shr 1)+1;
        Form1.DrawGrid10.RowCount:=((Form1.mapa_wys+1) shr 1)+1;
      end;
      if (Form1.mapa_mode=3) then
      begin
        Form1.DrawGrid10.ColCount:=((Form1.mapa_szer+1) shr 2)+1;
        Form1.DrawGrid10.RowCount:=((Form1.mapa_wys+1) shr 2)+1;
      end;

      Form1.DrawGrid10.Invalidate;
      close;
    end;
    Edit1.text:=inttostr(Form1.mapa_szer+1);
    Edit2.text:=inttostr(Form1.mapa_wys+1);
  end
  else
  begin
    Edit1.text:=inttostr(Form1.mapa_szer+1);
    Edit2.text:=inttostr(Form1.mapa_wys+1);
  end;
end;

end.

