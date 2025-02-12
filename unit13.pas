unit Unit13;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls, Types;

type

  { TForm13 }

  TForm13 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    DrawGrid1: TDrawGrid;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ComboBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  private

  public
    button0:byte;
    stan:byte;
    selected:byte;
    tab_zamiana: array[0..3,0..255] of byte;
  end;

var
  Form13: TForm13;

implementation

{$R *.frm}

Uses Unit1;

{ TForm13 }

procedure TForm13.ComboBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=1;
end;

procedure TForm13.ComboBox1Change(Sender: TObject);
begin
  selected:=255;
  stan:=0;
  DrawGrid1.Invalidate;
end;

procedure TForm13.Button1Click(Sender: TObject);
var
  i,ii,x,y,a,b,z0,z1:byte;
  znakix:array[0..3,0..127,0..3,0..7] of byte;
  tilesx:array[0..3,0..255] of byte;
  tab_zamiana1:array[0..3,0..255] of byte;
  mask_tilex:array[0..3,0..63,0..1] of byte;
begin


  //zamiana masek
  for i:=0 to 3 do
  begin

  end;

  for i:=0 to 3 do
  begin
    if (tab_zamiana[i shr 1][Form1.mediumA[i] and 63]<>(Form1.mediumA[i] and 63)) then
       Form1.mediumA[i]:=tab_zamiana[i shr 1][Form1.mediumA[i] and 63]+(Form1.mediumA[i] and 64);                       //MediumA pole edycji

    if (tab_zamiana[(i shr 1)+2][Form1.mediumB[i] and 63]<>(Form1.mediumB[i] and 63)) then
       Form1.mediumB[i]:=tab_zamiana[(i shr 1)+2][Form1.mediumB[i] and 63]+(Form1.mediumB[i] and 64);               //MediumB
  end;

  for i:=0 to 15 do
    if (tab_zamiana[i shr 2][Form1.big[i] and 63]<>(Form1.big[i] and 63)) then
       Form1.big[i]:=tab_zamiana[i shr 2][Form1.big[i] and 63]+(Form1.big[i] and 64);        //pole edycji BIG


  for i:=0 to 254 do         //tablice MediumA i MediumB
   for ii:=0 to 3 do
   begin
    if (tab_zamiana[ii shr 1][Form1.medium_table[0][i][ii] and 63]<>(Form1.medium_table[0][i][ii] and 63)) then
       Form1.medium_table[0][i][ii]:=tab_zamiana[ii shr 1][Form1.medium_table[0][i][ii] and 63]+(Form1.medium_table[0][i][ii] and 64);
    if (tab_zamiana[(ii shr 1)+2][Form1.medium_table[1][i][ii] and 63]<>(Form1.medium_table[1][i][ii] and 63)) then
       Form1.medium_table[0][i][ii]:=tab_zamiana[(ii shr 1)+2][Form1.medium_table[1][i][ii] and 63]+(Form1.medium_table[1][i][ii] and 64);
   end;

  for i:=0 to 254 do          //tablica BIG
   for ii:=0 to 15 do
     if (tab_zamiana[(ii shr 2) and 3][Form1.big_table[i][ii] and 63]<>(Form1.big_table[i][ii] and 63)) then
        Form1.big_table[i][ii]:=tab_zamiana[(ii shr 2) and 3][Form1.big_table[i][ii] and 63]+(Form1.big_table[i][ii] and 64);


  for i:=0 to 3 do
   for ii:=0 to 63 do
     tab_zamiana1[i][tab_zamiana[i][ii]]:=ii;

  if (Form1.easymode>0) then
  begin
   for x:=0 to Form1.mapa_szer do
    for y:=0 to Form1.mapa_wys do
        if ((tab_zamiana1[y and 3][Form1.mapa[x][y] and 63])<>(Form1.mapa[x][y] and 63)) then
        begin
          a:=Form1.mapa[x][y];               //znak
          b:=tab_zamiana1[y and 3][a and 63];       //nr znaku
          Form1.mapa[x][y]:=(a and 64) + b;       //poprawiamy znaki na mapie
        end;

   //kopiujemy ksztalty w znakach
   for i:=0 to 3 do
    for ii:=0 to 127 do
     for x:=0 to 3 do
      for y:=0 to 7 do
       znakix[i][ii][x][y]:=Form1.znaki[0][i][ii][x][y];             //skopiuj do tablicy tymczasowej

   for i:=0 to 3 do
    for ii:=0 to 63 do
    begin
     tilesx[i][ii]:=Form1.tab_tiles[i][ii].attrib;                   //kopiuj atrybuty do tablicy tymczasowej
     mask_tilex[i][ii][0]:=Form1.mask_tile[i][ii][0];
     mask_tilex[i][ii][1]:=Form1.mask_tile[i][ii][1];
    end;


   for i:=0 to 3 do
    for ii:=0 to 63 do
      if (tab_zamiana[i][ii]<>ii) then
      begin
       z0:=ii*2;                                                //docelowy
       z1:=tab_zamiana[i][ii]*2;                                //zrodlowy
       for x:=0 to 3 do
        for y:=0 to 7 do
        begin
          Form1.znaki[0][i][z0][x][y]:=znakix[i][z1][x][y];               //kopiuj ksztalty dwóch kolejnych znaków
          Form1.znaki[0][i][z0+1][x][y]:=znakix[i][z1+1][x][y];
        end;
       Form1.tab_tiles[i][ii].attrib:=tilesx[i][tab_zamiana[i][ii]];                      //wpisz nowe atrybuty
       Form1.tab_tiles[i][ii+64].attrib:=tilesx[i][tab_zamiana[i][ii]];                   //takze w negatywie

       Form1.mask_tile[i][ii][0]:=mask_tilex[i][tab_zamiana[i][ii]][0];
       Form1.mask_tile[i][ii][1]:=mask_tilex[i][tab_zamiana[i][ii]][1];

      end;

  end;

   Form1.DrawGrid1.invalidate;
   Form1.DrawGrid7.invalidate;
   Form1.DrawGrid8.invalidate;
   Form1.DrawGrid9.invalidate;
   Form1.DrawGrid10.invalidate;

   Form1.undo0_clear;
   Form1.undo1_clear;


  close;
end;

procedure TForm13.ComboBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=0;
end;

procedure TForm13.DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  a,b,c,i,ii,z0,z1,sektor0:byte;
  s:string;
  szer,wys:single;
  rect1:TRect;
begin
  if (aRow>4) and (Form1.easymode=1) then exit;

  if (ARow=0) or (ACol=0) then
  begin
    if (Arow=0) and (ACol>0) then
    begin
      a:=Acol-1;
      s:='$'+inttohex(a);
      s[2]:='x';
      DrawGrid1.Canvas.TextRect(aRect, aRect.Left+15, aRect.Top+10, s);
      exit;
    end;
    if (ACol=0) and (ARow>0) then
    begin
      a:=ARow-1;
      s:=inttohex(a)+'x';
      s[1]:='$';
      DrawGrid1.Canvas.TextRect(aRect, aRect.Left+12, aRect.Top+10,s);
      exit;
    end;
  end;
  szer:=(aRect.Right-aRect.Left+1-8)/8;
  wys:=(aRect.bottom-aRect.Top+1-8)/8;

  z0:=Form1.tab_tilesx[ComboBox1.ItemIndex][aCol-1+(aRow-1)*16].znak0;
  z1:=Form1.tab_tilesx[ComboBox1.ItemIndex][aCol-1+(aRow-1)*16].znak1;
  if (z0<128) then a:=3 else a:=4;
  if (z1<128) then b:=3 else b:=4;
  if (aRow>0) and (aCol>0) then
  begin
   if (aCol-1+(aRow-1)*16=selected) then
   begin
        DrawGrid1.Canvas.Brush.Color:=clWhite;
        DrawGrid1.Canvas.Pen.Color:=clRed;
        DrawGrid1.Canvas.Rectangle(aRect.Left,aRect.Top,aRect.Right,aRect.Bottom);
        DrawGrid1.Canvas.Rectangle(aRect.Left+1,aRect.Top+1,aRect.Right-1,aRect.Bottom-1);
        DrawGrid1.Canvas.Rectangle(aRect.Left+2,aRect.Top+2,aRect.Right-2,aRect.Bottom-2);
   end;


   if (z0<>255) and (Form1.tab_tiles1[(aCol-1)+(aRow-1)*16]>0) then
   begin
    for i:=0 to 3 do
     for ii:=0 to 7 do
     begin
       if (Form1.znaki1[z0 and 127]=2) then sektor0:=Form1.sektor else sektor0:=0;
       c:=Form1.znaki[sektor0][ComboBox1.ItemIndex][z0 and 127][i][ii];
       if (c=3) then c:=a;
       DrawGrid1.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
       rect1.Left:=aRect.Left+4+round(szer*i);
       rect1.Top:=aRect.Top+4+round(wys*ii);
       rect1.Right:=aRect.Left+4+round(szer*(i+1));
       rect1.Bottom:=aRect.Top+4+round(wys*(ii+1));
       DrawGrid1.Canvas.FillRect(rect1);

       if (Form1.znaki1[z0 and 127]=2) then sektor0:=Form1.sektor else sektor0:=0;
       c:=Form1.znaki[sektor0][ComboBox1.ItemIndex][z1 and 127][i][ii];
       if (c=3) then c:=b;
       DrawGrid1.Canvas.Brush.Color:=Form1.kolor[sektor0][c];
       rect1.Left:=aRect.Left+4+round(szer*(i+4));
       rect1.Top:=aRect.Top+4+round(wys*ii);
       rect1.Right:=aRect.Left+4+round(szer*(i+1+4));
       rect1.Bottom:=aRect.Top+4+round(wys*(ii+1));
       DrawGrid1.Canvas.FillRect(rect1);
     end;
   end
   else  DrawGrid1.Canvas.TextRect(aRect, aRect.Left+14, aRect.Top+20, 'X');
  end;

end;

procedure TForm13.DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=1;
end;

procedure TForm13.DrawGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  z:byte;
  col,row:integer;
begin


  DrawGrid1.MouseToCell(X, Y, col, row);

  if (Form1.easymode=1) and (row>4) then exit;


  Form13.Hint:='Chars:';
  if (col>0) and (row>0) then
  begin
   z:=col-1+(row-1)*16;
   if (Form1.tab_tilesx[ComboBox1.ItemIndex][z].znak0<>255) then
   begin
     Form13.Hint:=Form13.Hint+AnsiString(#13#10)+'$'+inttohex(Form1.tab_tilesx[ComboBox1.ItemIndex][z].znak0);
     Form13.Hint:=Form13.Hint+AnsiString(#13#10)+'$'+inttohex(Form1.tab_tilesx[ComboBox1.ItemIndex][z].znak1);
   end;
  end;
  if (length(Form13.Hint)=6) then Form13.Hint:='';
  Application.ActivateHint(Mouse.CursorPos);
end;

procedure TForm13.DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=0;
end;

procedure TForm13.DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
var
  a,b:byte;
begin
  if (Form1.easymode=1) and (aRow>4) then exit;
  if Form1.tab_tiles1[(acol-1)+(aRow-1)*16]=0 then exit;    //nie zaznaczaj nie używanych tilesów

  if (button0>0) and (aCol>0) and (aRow>0)  then
  begin
   if (stan=0) then
   begin
       selected:=aCol-1+(aRow-1)*16;
       stan:=1;
       button0:=0;
       ComboBox1.Enabled:=false;
       DrawGrid1.invalidate;
   end
   else
   begin
     b:=aCol-1+(aRow-1)*16;
     if (b<>selected) then
     begin
       Form1.tile_tymcz:=Form1.tab_tilesx[ComboBox1.ItemIndex][selected];
       Form1.tab_tilesx[ComboBox1.ItemIndex][selected]:=Form1.tab_tilesx[ComboBox1.ItemIndex][b];
       Form1.tab_tilesx[ComboBox1.ItemIndex][b]:=Form1.tile_tymcz;
       a:=tab_zamiana[ComboBox1.ItemIndex][selected];
       tab_zamiana[ComboBox1.ItemIndex][selected]:=tab_zamiana[ComboBox1.ItemIndex][b];
       tab_zamiana[ComboBox1.ItemIndex][b]:=a;
     end;
     stan:=0;
     selected:=255;
     button0:=0;
     ComboBox1.Enabled:=true;
     DrawGrid1.invalidate;
   end;
  end;

end;

procedure TForm13.FormActivate(Sender: TObject);
var
  i,ii:byte;
begin
  button0:=0;
  stan:=0;
  selected:=255;
  ComboBox1.Enabled:=true;

  for i:=0 to 3 do
   for ii:=0 to 255 do
   begin
     tab_zamiana[i][ii]:=ii;
     Form1.tab_tilesx[i][ii]:=Form1.tab_tiles[i][ii];
   end;

end;

procedure TForm13.FormCreate(Sender: TObject);
begin
  Application.HintColor := clYellow;
end;

procedure TForm13.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Form13.Hint:='';
end;

end.

