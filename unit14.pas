unit Unit14;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm14 }

  TForm14 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private

  public

  end;

var
  Form14: TForm14;

implementation

{$R *.frm}

uses Unit1;

{ TForm14 }

procedure TForm14.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TForm14.FormCreate(Sender: TObject);
begin
  Label2.Caption:=Form1.version;
end;

procedure TForm14.Label2Click(Sender: TObject);
begin

end;

procedure TForm14.Label4Click(Sender: TObject);
begin

end;

end.

