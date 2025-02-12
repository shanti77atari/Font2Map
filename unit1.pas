unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, Windows, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Grids, StrUtils, StdCtrls, Menus, Buttons, Types, Unit2, Unit3, Unit4, Unit5,
  Unit6, Unit7, Unit8, Unit9, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15,
  Unit16, Unit17, Unit18, Unit19, Unit20, Unit21, Unit22;

type

   tile = record
     attrib: byte;
     znak0: byte;
     znak1: byte;
   end;

   Trgb24 = packed record
     b : byte;
     g : byte;
     r : byte;
   end;

   {$MACRO ON}
   {$define MAX_SEKTOR:=7}
   {$define EMPTY:=255}  //nie używany =-1 czyli 255


  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    DrawGrid1: TDrawGrid;
    DrawGrid10: TDrawGrid;
    DrawGrid11: TDrawGrid;
    DrawGrid12: TDrawGrid;
    DrawGrid2: TDrawGrid;
    DrawGrid3: TDrawGrid;
    DrawGrid4: TDrawGrid;
    DrawGrid5: TDrawGrid;
    DrawGrid6: TDrawGrid;
    DrawGrid7: TDrawGrid;
    DrawGrid8: TDrawGrid;
    DrawGrid9: TDrawGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    RadioButton1: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioGroup1: TRadioGroup;
    Separator1: TMenuItem;
    Separator2: TMenuItem;
    Separator3: TMenuItem;
    Separator4: TMenuItem;
    Separator5: TMenuItem;
    Separator6: TMenuItem;
    StaticText3: TStaticText;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure CheckBox5Change(Sender: TObject);
    procedure CheckBox6Change(Sender: TObject);
    procedure CheckBox7Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure DrawGrid10DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid10MouseLeave(Sender: TObject);
    procedure DrawGrid10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DrawGrid10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid10SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure DrawGrid11Click(Sender: TObject);
    procedure DrawGrid11DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid12Click(Sender: TObject);
    procedure DrawGrid12DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure DrawGrid2Click(Sender: TObject);
    procedure DrawGrid2DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid3Click(Sender: TObject);
    procedure DrawGrid3DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid4Click(Sender: TObject);
    procedure DrawGrid4DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid5Click(Sender: TObject);
    procedure DrawGrid5DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid6Click(Sender: TObject);
    procedure DrawGrid6DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid7DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DrawGrid7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid7SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure DrawGrid8DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DrawGrid8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid8SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure DrawGrid9DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure DrawGrid9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawGrid9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DrawGrid9SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure Nowa(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure RadioButton12Click(Sender: TObject);
    procedure RadioButton13Change(Sender: TObject);
    procedure RadioButton13Click(Sender: TObject);
    procedure RadioButton14Change(Sender: TObject);
    procedure RadioButton14Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    function RGB(r,g,b:byte) : TColor;
    function text2nr(napis:string):byte;
    procedure Refresh_edit();
    procedure copy_znak0();
    procedure copy_znak1();
    procedure StaticText3Click(Sender: TObject);
    procedure undo0_clear();
    procedure undo0_add();
    procedure undo0_undo();
    procedure undo0_redo();

    procedure undo1_clear();
    procedure undo1_add();
    procedure undo1_undo();
    procedure undo1_redo();

    procedure check_znak01();
    procedure czarny_tekst();

    procedure Export1(filename1: string);
    function ustaw_sektor(x,y,znak:byte) : byte;
    function ustaw_kolor(x,y:byte) : byte;
    function Popraw_file_name(txt:string):string;
    function tcolor2trgb(kolorek:TColor) : trgb24;
    procedure multi_calc();
    procedure calc_object();
  private

  public
    ksztalt:array[0..7,0..7] of byte;            //okno edycji TILE
    ksztalt1:array[0..7,0..7] of byte;           //copy/paste
    Kolor: array[0..MAX_SEKTOR,0..5] of TColor;
    paleta:array[0..255] of TColor;
    sektor: byte;                  //w ktorym sektorze akurat rysujemy, bedą się  niektóre znaki
    kolorA: array[0..MAX_SEKTOR,0..5] of byte; //wartość koloru Atari   ,pierwsza wartosc to
    selectColor:byte;
    button0:byte;                   //okno edycji Tile
    button0a:byte;                  //okno mediumA
    button0b:byte;                  //okno mediumB
    button0c:byte;                  //okno BIG
    button0d:byte;                  //okno Mapy
    wybor:integer;
    znak0:byte;           //znak po lewo
    znak1:byte;           //znak po prawo
    template:array[0..MAX_SEKTOR,0..3,0..127,0..7,0..7] of byte;
    znaki:array[0..MAX_SEKTOR,0..3,0..127,0..3,0..7] of byte;   //tablica ze znakami dl 8 sektorów po 4 zestawy
    znaki0:array[0..MAX_SEKTOR,0..3,0..127] of byte;            //0=znak nieużywany,1=znak używany
    znaki1:array[0..127] of byte;                      //Okresla czy dane znaki moga byc uzywane,0=nie,1=tak
    font0:byte;                                         //uzywany font
    font1:byte;                                         //nr fontu dla Unit4(wybor tilesa z odpowiedniego fontu)
    tab_tiles:array[0..3,0..255] of tile;
    tab_tiles1:array[0..255] of byte;                   //0=tiles niedostepny, 1=dostepny
    tab_tilesx:array[0..3,0..255] of tile;     //uzywany w 11 formularzu
    tile0:byte;              //edytowany tile
    tile_tymcz:tile;
    acol0,arow0:integer;

    attrib0:byte;                                       //aktualnie wybrany atrybut
    attrib_names: array[0..127] of string[16];          //nazwy atrybutow maks 15 znaków+0
    attrib_values: array[0..127] of byte;               //wartosc atrybutu
    attrib_ile: byte;                                //ile jest stworzonych

    undo0_start:byte;                                // undo dla ksztaltu tilesa
    undo0_end:byte;
    undo0_licznik:byte;
    undo0_tab:array[0..31,0..7,0..7] of byte;

    undo1_start:byte;                                // undo dla mapy
    undo1_end:byte;
    undo1_licznik:byte;
    undo1_tab:array[0..15,0..255,0..255] of byte;

    mediumA: array[0..3] of byte;                    //wybrane klocki
    mediumB: array[0..3] of byte;
    mediumA0:byte;                                   //numer
    mediumB0:byte;
    medium_table: array[0..1,0..255,0..3] of byte;       //tablica MediumA

    big_mode:byte;                           //tryb okna BIG
    big:array[0..15] of byte;
    big0:byte;
    big_table: array[0..255,0..15] of byte;

    mapa_mode:byte;                          //tryb rysowania
    mapa:array[0..255,0..255] of byte;       //grafika
    mapa1:array[0..255,0..255] of byte;       //objekty
    mapa2:array[0..255,0..255] of byte;       //wysokosc terenu 0=low, 1=high

    mapa_szer:byte;                          //szerokosc mapy
    mapa_wys:byte;                           //wysokosc mapy

    object0:byte;                            //aktualnie wybrany objekt
    object_mnemonic:array[0..255] of string[5];           //mnemonic objektu
    object_value: array[0..255] of byte;
    object_description: array[0..255] of string[20];
    object_position0: array[0..255,0..2] of byte;
    object_position1: array[0..255,0..2] of byte;
    object_data: array[0..255,0..3] of byte;
    object_extra: array[0..255,0..4] of byte;
    object_flaga:array[0..255] of byte;                    //1=single,2=value,4=pos0,8=pos1,16=data,32=extra ,128=nie licz
    object_number: array[0..255] of byte;

    sektor_enabled:array[0..MAX_SEKTOR] of byte;
    sektor_startX:array[0..MAX_SEKTOR] of byte;
    sektor_startY:array[0..MAX_SEKTOR] of byte;
    sektor_endX:array[0..MAX_SEKTOR] of byte;
    sektor_endY:array[0..MAX_SEKTOR] of byte;

    easyMode:byte;
    ile_tilesow:byte;                //128 lub 255

    file_name:string;                //nazwa pliku
    program_name:string;             //nazwa programu
    version:string;                  //wersja edytora
    col1,row1:integer;               //pozycja myszki na mapie
    prawy:byte;                      //prawy przycisk myszki
    srodek:byte;                     //srodkowy przycisk myszki

    alpha:byte;

    multi:array[0..255,0..255,0..8] of byte;   //multi use, sekcja data osobno dla kazdej instancji objektu (w kazdej pozycji)

    ile_animacji:byte;

    anim_tab0:array[0..7,0..2] of byte;                    //nr_tile={0-63},font={0,1,2,3},negatyw=1
    anim_tab1:array[0..7,0..3,0..7,0..7] of byte;       //tablica do animacji

    maxFrames:byte;
    animSpeed:byte;

    mask_enabled:array[0..1] of boolean;             //on/off
    mask_name:array[0..1] of string[5];             //nazwa
    mask_table:array[0..1,0..31,0..7] of byte;      //tablice z ksztaltami
    mask_tile:array[0..3,0..63,0..1] of byte;            //tablica z przypisanymi ksztaltami do klockow
    mask0,mask1:byte;

    hinty:array[0..199] of string[200];
    ile_hint:byte;
    hint_table:array[0..255,0..6,0..9] of byte;          //nr przypisanego komunikatu,0=pusty

    multicolor_reg:array[0..255] of byte;                //rejestry
    multicolor_val:array[0..255] of byte;                //nowy kolor
    multicolor_tab:array[0..255,0..4] of byte;           //tablica kolorow dla kazdej linii
    multicolor_on:byte;                                  //1=wlaczony
    ile_object:byte;                                     //ile objectów trzeba bedzie zapamietac
  end;

var
  Form1: TForm1;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.calc_object();
var
  x,y:byte;
begin
  ile_object:=0;

  for y:=0 to mapa_wys-1 do
   for x:=0 to mapa_szer-1 do
     if (mapa1[x][y]>0) then
        if (object_flaga[mapa1[x][y]]<128) then ile_object:=ile_object+1;


  Label24.Caption:='#'+inttostr(ile_object);
end;

procedure TForm1.multi_calc();
var
  i,ii:byte;
  col_tab:array[0..4] of byte;
begin
  for i:=0 to 4 do
  begin
   col_tab[i]:=kolorA[0][i];
   multicolor_tab[0][i]:=kolorA[0][i];
  end;

  for i:=1 to mapa_wys do
  begin
   if (multicolor_reg[i]>0) then
    col_tab[multicolor_reg[i]-1]:=multicolor_val[i];

   for ii:=0 to 4 do
    multicolor_tab[i][ii]:=col_tab[ii];
  end;

end;

function TForm1.tcolor2trgb(kolorek:TColor) : trgb24;
var
  wynik:Trgb24;
begin
  Result.R := (kolorek and $0000FF);
  Result.G := (kolorek and $00FF00) shr 8;
  Result.B := (kolorek and $FF0000) shr 16;
end;

//wybiera skolory dla danego sektora
function TForm1.ustaw_kolor(x,y:byte) : byte;
var
  i:byte;
begin
  Result:=0;
  for i:=1 to MAX_SEKTOR do
   if (x>=sektor_startX[i]) and (x<=sektor_endX[i]) and (y>=sektor_startY[i]) and (y<=sektor_endY[i]) and (sektor_enabled[i]>0) then
   begin
     Result:=i;
     break;
   end;
end;

//ustawia sektor dla danego tilesa
function TForm1.ustaw_sektor(x,y,znak:byte) : byte;
var
  i:byte;
begin
  Result:=0;
  for i:=1 to MAX_SEKTOR do
   if (x>=sektor_startX[i]) and (x<=sektor_endX[i]) and (y>=sektor_startY[i]) and (y<=sektor_endY[i]) and (sektor_enabled[i]>0) and (znaki1[znak and 127]=2) then
   begin
     Result:=i;
     break;
   end;
end;

procedure TForm1.czarny_tekst();
begin
  label17.Font.Color:=TColor($000000);
  Label17.Font.Style:=[];
  label18.Font.Color:=TColor($000000);
  Label18.Font.Style:=[];
  label19.Font.Color:=TColor($000000);
  Label19.Font.Style:=[];
  label3.Font.Color:=TColor($000000);
  Label3.Font.Style:=[];
  GroupBox2.Font.Color:=TColor($000000);
  GroupBox2.Font.Style:=[];
end;

//undo przy edycji mapy
procedure TForm1.undo1_clear();
var
  i,ii:byte;
begin
  button16.enabled:=false;
  button17.enabled:=false;
  undo1_start:=0;
  undo1_licznik:=0;
  undo1_end:=0;

  for i:=0 to 255 do
   for ii:=0 to 255 do
    undo1_tab[0][i][ii]:=mapa[i][ii];
end;

//undo przy edycji tile
procedure TForm1.undo0_clear();
var
  i,ii:byte;
begin
  button7.enabled:=false;
  button8.enabled:=false;
  undo0_start:=0;
  undo0_licznik:=0;
  undo0_end:=0;

  for i:=0 to 7 do
   for ii:=0 to 7 do
    undo0_tab[0][i][ii]:=ksztalt[i][ii];
end;

//ADD dla mapy
procedure TForm1.undo1_add();
var
  i,ii,a:byte;
begin
  a:=0;
  for i:=0 to mapa_szer do
   for ii:=0 to mapa_wys do
    if mapa[i][ii]<>undo1_tab[undo1_end][i][ii] then a:=1;

  if a=0 then exit;              //nic sie nie zmienilo

  undo1_end:=(undo1_end+1) and 15;
  if (undo1_end=undo1_start) then undo1_start:=(undo1_start+1) and 15;

  for i:=0 to mapa_szer do
   for ii:=0 to mapa_wys do
     undo1_tab[undo1_end][i][ii]:=mapa[i][ii];

  button17.enabled:=false;  //po dodaniu nie mozna isc juz do przodu
  undo1_licznik:=undo1_end;        //zerujemy liczbe cofniec
  button16.enabled:=true;
end;


//ADD dla Tilesa
procedure TForm1.undo0_add();
var
  i,ii:byte;
begin
  undo0_end:=(undo0_end+1) and 31;
  if (undo0_end=undo0_start) then undo0_start:=(undo0_start+1) and 31;

  for i:=0 to 7 do
   for ii:=0 to 7 do
     undo0_tab[undo0_end][i][ii]:=ksztalt[i][ii];

  button8.enabled:=false;  //po dodaniu nie mozna isc juz do przodu
  undo0_licznik:=undo0_end;        //zerujemy liczbe cofniec
  button7.enabled:=true;
end;

//REDO dla mapy
procedure TForm1.undo1_redo();
var
  i,ii:byte;
begin
    undo1_end:=(undo1_end+1) and 15;
    if (undo1_licznik=undo1_end) then button17.enabled:=false;

    for i:=0 to mapa_szer do
      for ii:=0 to mapa_wys do
        mapa[i][ii]:=undo1_tab[undo1_end][i][ii];

    button16.enabled:=true;       //odblokowuje undo
    DrawGrid10.Invalidate;
end;

//REDO dla Tilesa
procedure TForm1.undo0_redo();
var
  i,ii:byte;
begin
    undo0_end:=(undo0_end+1) and 31;
    if (undo0_licznik=undo0_end) then button8.enabled:=false;

    for i:=0 to 7 do
      for ii:=0 to 7 do
        ksztalt[i][ii]:=undo0_tab[undo0_end][i][ii];

    button7.enabled:=true;       //odblokowuje undo
    check_znak01;

end;

//UNDO dla mapy
procedure TForm1.undo1_undo();
var
  i,ii:byte;
begin
    undo1_end:=(undo1_end-1) and 15;
    if (undo1_start=undo1_end) then button16.enabled:=false;

    for i:=0 to mapa_szer do
      for ii:=0 to mapa_wys do
        mapa[i][ii]:=undo1_tab[undo1_end][i][ii];

    DrawGrid10.Invalidate;
    button17.Enabled:=true;
end;

//UNDO dla Tilesa
procedure TForm1.undo0_undo();
var
  i,ii:byte;
begin
    undo0_end:=(undo0_end-1) and 31;
    if (undo0_start=undo0_end) then button7.enabled:=false;

    for i:=0 to 7 do
      for ii:=0 to 7 do
        ksztalt[i][ii]:=undo0_tab[undo0_end][i][ii];

    check_znak01;
    button8.Enabled:=true;
end;

//sprawdza czy po operacjach undo/redo nie zmienil sie negatyw znaku
procedure TForm1.check_znak01();
var
  i,ii,a,b:byte;
begin
  a:=0;
  b:=0;
  for i:=0 to 3 do
    for ii:=0 to 7 do
    begin
      if (ksztalt[i][ii]=4) then a:=128;
      if (ksztalt[i+4][ii]=4) then b:=128;
    end;
  znak0:=(znak0 and 127) or a;
  Button1.Caption:='#$'+inttohex(znak0);
  znak1:=(znak1 and 127) or b;
  Button2.Caption:='#$'+inttohex(znak1);
  DrawGrid1.invalidate;
end;

//kopiuje znak0 do ksztalt
procedure TForm1.copy_znak0();
var
  i,ii,a,sektor0:byte;
begin
  if (znaki1[znak0 and 127]=2) and (sektor_enabled[sektor]=1) then sektor0:=sektor else sektor0:=0;
  for i:=0 to 3 do
    for ii:=0 to 7 do
    begin
       a:=znaki[sektor0][font0][znak0 and 127][i][ii];
       if (znak0>127) and (a=3) then a:=4;
       ksztalt[i][ii]:=a;
    end;
end;

//kopiuje znak1 do ksztalt
procedure TForm1.copy_znak1();
var
  i,ii,a,sektor0:byte;
begin
  if (znaki1[znak1 and 127]=2) and (sektor_enabled[sektor]=1) then sektor0:=sektor else sektor0:=0;
  for i:=0 to 3 do
    for ii:=0 to 7 do
    begin
       a:=znaki[sektor0][font0][znak1 and 127][i][ii];
       if (znak0>127) and (a=3) then a:=4;
       ksztalt[i+4][ii]:=a;
    end;
end;

procedure TForm1.StaticText3Click(Sender: TObject);
var
  a,i:byte;
begin
  wybor:=-1;
  font1:=0;
  Form6.showmodal;
  if wybor>-1 then
  begin
   mediumA0:=wybor;
   for i:=0 to 3 do
     mediumA[i]:=medium_table[0][mediumA0][i];
   a:=wybor;
   staticText3.Caption:='#$'+inttohex(a);
   DrawGrid7.invalidate;
  end;
end;



//Funkcja RGB
function TForm1.RGB(r,g,b:byte):TColor;
begin
  Result := (B shl 16) or (G shl 8) or R;
end;

//Nowa mapa
procedure TForm1.Nowa(Sender: TObject);
var
  plik: TFileStream;
  i,ii:integer;
  r,g,b,s,f,z,x,y:byte;
begin

    ile_animacji:=255;

    for i:=0 to 7 do
    begin
      Kolor[i][0]:=paleta[0];kolorA[i][0]:=0;
      Kolor[i][1]:=paleta[4];kolorA[i][1]:=4;
      Kolor[i][2]:=paleta[8];kolorA[i][2]:=8;
      Kolor[i][3]:=paleta[10];kolorA[i][3]:=10;
      Kolor[i][4]:=paleta[14];kolorA[i][4]:=14;
    end;

    DrawGrid2.Invalidate;
    DrawGrid3.Invalidate;
    DrawGrid4.Invalidate;
    DrawGrid5.Invalidate;
    DrawGrid6.Invalidate;

    for i:=0 to 95 do
        znaki1[i]:=1;

    for i:=96 to 127 do
        znaki1[i]:=0;

    znak0:=EMPTY;
    znak1:=EMPTY;

    for i:=0 to 127 do
    begin
     tab_tiles1[i]:=1;
     for ii:=0 to 3 do
     begin
      tab_tiles[ii][i].znak0:=EMPTY;
      tab_tiles[ii][i].znak1:=EMPTY;
     end;
    end;

    //atrybuty
    attrib_names[0]:='none';
    attrib_values[0]:=0;
    attrib_ile:=0;
    attrib0:=0;

    tile0:=0;

    undo0_clear;

    mediumA0:=0;
    mediumB0:=0;

    for i:=0 to 255 do
     for ii:=0 to 3 do
     begin
      medium_table[0][i][ii]:=EMPTY;
      mediumA[ii]:=EMPTY;
      medium_table[1][i][ii]:=EMPTY;
      mediumB[ii]:=EMPTY;
     end;

    for i:=0 to 255 do
     for ii:=0 to 15 do
     begin
       big_table[i][ii]:=EMPTY;
       big[ii]:=EMPTY;
     end;

    big0:=0;

    for i:=0 to 255 do
     for ii:=0 to 255 do
     begin
         mapa1[i][ii]:=0;
         mapa[i][ii]:=EMPTY;
         mapa2[i][ii]:=0;                      //LOW
     end;

    mapa_szer:=64-1;                              //startowe wartosci jak w BP
    mapa_wys:=60-1;
    RadioButton10Click(Sender);

    undo1_clear;

    ComboBox2.Clear;
    for r:=0 to MAX_SEKTOR do
        ComboBox2.Items.Add('Sektor'+inttostr(r));
    ComboBox2.ItemIndex:=0;

    ComboBox1.Clear;
    for r:=0 to 3 do
        ComboBox1.Items.Add('Font'+inttostr(r));
    ComboBox1.ItemIndex:=0;

    sektor_enabled[0]:=1;
    for i:=1 to MAX_SEKTOR do
    begin
     sektor_enabled[i]:=0;
     sektor_startX[i]:=0;
     sektor_startY[i]:=0;
     sektor_endX[i]:=0;
     sektor_endY[i]:=0;
    end;


    ComboBox4.clear;
    ComboBox4.Items.Add('Eraser - delete object');
    ComboBox4.ItemIndex:=0;

    object0:=0;
    for i:=0 to 255 do
    begin
      multicolor_reg[i]:=0;
      multicolor_val[i]:=0;
      object_mnemonic[i]:='';
      object_description[i]:='';
      object_value[i]:=0;
      object_flaga[i]:=0;
      object_number[i]:=0;
    end;

    Application.HintColor := clYellow;
    Application.HintPause:=100;

    ile_tilesow:=128;
    easyMode:=0;

    version:='ver.1.2d ';
    program_name:='Map Editor '+version+' |    ';
    file_name:='noname';
    Form1.Caption:=program_name+file_name;

    prawy:=0;
    srodek:=0;


    Button1.enabled:=true;
    Button2.enabled:=true;

    for s:=0 to 7 do
     for f:=0 to 3 do
      for z:=0 to 127 do
       for i:=0 to 3 do
        for ii:=0 to 7 do
         znaki[s][f][z][i][ii]:=0;

    Refresh_edit;
    ComboBox3.Clear;
    ComboBox3.items.add('none');
    ComboBox3.ItemIndex:=0;

    DrawGrid7.invalidate;
    DrawGrid8.invalidate;
    DrawGrid9.invalidate;

    easyMode:=1;
      for i:=0 to 15 do
       for ii:=0 to 3 do
       begin
        tab_tiles[ii][i].attrib:=0;
        tab_tiles[ii][i].znak0:=i*2;
        tab_tiles[ii][i].znak1:=i*2+1;
        tab_tiles[ii][i+16].attrib:=0;
        tab_tiles[ii][i+16].znak0:=(i+16)*2;
        tab_tiles[ii][i+16].znak1:=(i+16)*2+1;
        tab_tiles[ii][i+32].attrib:=0;
        tab_tiles[ii][i+32].znak0:=(i+32)*2;
        tab_tiles[ii][i+32].znak1:=(i+32)*2+1;
        tab_tiles[ii][i+48].attrib:=0;
        tab_tiles[ii][i+48].znak0:=(i+48)*2;
        tab_tiles[ii][i+48].znak1:=(i+48)*2+1;


        tab_tiles[ii][i+64].attrib:=0;
        tab_tiles[ii][i+64].znak0:=i*2+128;
        tab_tiles[ii][i+64].znak1:=i*2+1+128;
        tab_tiles[ii][i+64+16].attrib:=0;
        tab_tiles[ii][i+64+16].znak0:=(i+16)*2+128;
        tab_tiles[ii][i+64+16].znak1:=(i+16)*2+1+128;
        tab_tiles[ii][i+64+32].attrib:=0;
        tab_tiles[ii][i+64+32].znak0:=(i+32)*2+128;
        tab_tiles[ii][i+64+32].znak1:=(i+32)*2+1+128;
        tab_tiles[ii][i+64+48].attrib:=0;
        tab_tiles[ii][i+64+48].znak0:=(i+48)*2+128;
        tab_tiles[ii][i+64+48].znak1:=(i+48)*2+1+128;

        tab_tiles1[i+48]:=0;
        tab_tiles1[i+48+64]:=0;

       end;

      for i:=0 to 31 do
      begin
        znaki1[i]:=1;
        znaki1[i+32]:=1;
        znaki1[i+64]:=1;
        znaki1[i+96]:=0;
      end;


      znak0:=tab_tiles[font0][tile0].znak0;
      znak1:=tab_tiles[font0][tile0].znak1;
      attrib0:=tab_tiles[font0][tile0].attrib;

      Refresh_edit();
      copy_znak0();
      copy_znak1();
      Button1.enabled:=false;
      Button2.enabled:=false;

    checkbox6.Checked:=false;
    alpha:=0;

    ile_animacji:=255;        //brak danych to wyczysc
    for i:=0 to 6 do
     for ii:=0 to 2 do
      anim_tab0[i][ii]:=0 ;

    for i:=0 to 6 do
     for ii:=0 to 3 do
      for x:=0 to 7 do
       for y:=0 to 7 do
           anim_tab1[i][ii][x][y]:=0;

     maxFrames:=4;
     animSpeed:=2;

     Mask_enabled[0]:=false;
     Mask_enabled[1]:=false;
     Mask_name[0]:='Mask1';
     Mask_name[1]:='Mask2';
     for i:=0 to 1 do
      for f:=0 to 31 do
       for y:=0 to 7 do
          if (f=00) then mask_table[i][f][y]:=255 else mask_table[i][f][y]:=0;

     for f:=0 to 3 do
      for z:=0 to 63 do
       for i:=0 to 1 do
          mask_tile[f][z][i]:=0;             //brak przypisania

     mask0:=0;
     mask1:=0;
     DrawGrid11.Visible:=false;
     DrawGrid12.Visible:=false;

     Multicolor_on:=0;
     checkbox7.checked:=false;
     calc_object();
end;

//Nazwa na numer
function TForm1.text2nr(napis:string):byte;
var
  r:byte;
begin
  if napis='multi' then r:=0;
  if napis='value' then r:=1;
  if napis='pos0' then r:=2;
  if napis='pos1' then r:=3;
  if napis='data' then r:=4;
  if napis='datam' then r:=5;
  if napis='typ' then r:=6;
  result:=r;
end;

//CREATE
procedure TForm1.FormCreate(Sender: TObject);
var
  plik: TFileStream;
  i,ii:integer;
  myFile : TextFile;
  tekst,nazwa,tekst1 : string;
  r,g,b,f,z,x,y:byte;
  sa: TStringArray;
  start,koniec,element:byte;
begin
  plik := TFileStream.Create('paleta.pal',fmOpenRead);
  for i:=0 to 255 do
    begin
      plik.Read(r,1);
      plik.Read(g,1);
      plik.read(b,1);
      paleta[i]:=RGB(r,g,b);
    end;

  for i:=0 to 255 do
   for ii:=0 to 6 do
    for r:=0 to 9 do
      hint_table[i][ii][r]:=0;

  plik.Destroy;

  ile_hint:=0;
  hinty[0]:='';

  if FileExists('object_description.txt') then        //sprawdz najpierw czy plik istnieje
  begin
   AssignFile(myFile,'object_description.txt');       //przypisz plik do zmiennej
   Reset(myFile);                                     //otworz plik

   while not Eof(myFile) do                           //czytaj dopoku nie koniec
   begin
    ReadLn(myFile,tekst);                             //odczytaj jedna linie tekstu

    if ile_hint>0 then                                //pomijamy pierwsza linie
    begin
     sa:=tekst.Split(';');
     tekst1:=sa[4];
     tekst1:=StringReplace(tekst1,'\n',#13#10,[rfReplaceAll]);

     hinty[ile_hint]:=tekst1;                      //nowy hint

     start:=strtoint(sa[0]);
     koniec:=strtoint(sa[1]);
     nazwa:=sa[2];
     element:=strtoint(sa[3]);

     for i:=start to koniec do
       hint_table[i][text2nr(nazwa)][element]:=ile_hint;

    end;

    ile_hint:=ile_hint+1;
   end;

   CloseFile(myFile);
  end;


  Nowa(Sender);

end;

//LOAD OBJECT
procedure TForm1.MenuItem26Click(Sender: TObject);
var
  plik:TfileStream;
  OpenDialog1: TOpenDialog;
  i,ii:byte;
begin
  OpenDialog1 := TOpenDialog.Create(self);
  OpenDialog1.Filter := 'Object file|*.ob5';
  OpenDialog1.Title:='Load object template';

  if OpenDialog1.Execute then
  begin

   plik.read(object_mnemonic,256*6);
   plik.read(object_value,256);
   plik.read(object_description,256*21);
   plik.read(object_flaga,256);

   for i:=0 to 255 do
   begin
    object_position0[i][0]:=0;
    object_position0[i][1]:=0;
    object_position0[i][2]:=0;
    object_position1[i][0]:=0;
    object_position1[i][1]:=0;
    object_position1[i][2]:=0;
    object_data[i][0]:=0;
    object_data[i][1]:=0;
    object_data[i][2]:=0;
    object_data[i][3]:=0;
    object_extra[i][0]:=0;
    object_extra[i][1]:=0;
    object_extra[i][2]:=0;
    object_extra[i][3]:=0;
    object_extra[i][4]:=0;
   end;

   ii:=1;
   ComboBox4.Clear;
   ComboBox4.Items.add('ERASER');
   object_number[0]:=0;
   for i:=1 to 255 do
   begin
      if (length(object_mnemonic[i])>0) then
      begin
        ComboBox4.Items.add(object_description[i]+'='+inttostr(i)+' , '+object_mnemonic[i]);
        object_number[ii]:=i;
        ii:=ii+1;
      end;
   end;

   object0:=0;
   ComboBox4.itemIndex:=object0;

   plik.free;
  end;

end;

//SAVE OBJECT
procedure TForm1.MenuItem27Click(Sender: TObject);
var
   plik:TfileStream;
   SaveDialog1: TSaveDialog;
begin
   saveDialog1 := TSaveDialog.Create(self);
   SaveDialog1.Filter := 'Object name|*.ob5';
   saveDialog1.Title := 'Save all object template';
   saveDialog1.FilterIndex := 1;

   saveDialog1.FileName:=file_name;

   if SaveDialog1.Execute then
   begin
     if not ContainsText(SaveDialog1.FileName,'.ob5') then  SaveDialog1.FileName:=SaveDialog1.FileName+'.ob5';
     plik := TFileStream.Create(SaveDialog1.FileName,fmCreate);

     file_name:=LeftStr(SaveDialog1.FileName,length(SaveDialog1.FileName)-4);
     file_name:=popraw_file_name(file_name);

     Form1.Caption:=program_name+file_name;

     plik.write(object_mnemonic,256*6);
     plik.write(object_value,256);
     plik.write(object_description,256*21);
     plik.write(object_flaga,256);

     plik.free;
   end;

end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Form1.Hint:='';
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
  wybor:=-1;
  font1:=font0;
  Form4.ShowModal;
  if (wybor>-1) then
  begin
    tile0:=wybor;
    znak0:=tab_tiles[font0][tile0].znak0;
    znak1:=tab_tiles[font0][tile0].znak1;
    attrib0:=tab_tiles[font0][tile0].attrib;
    mask0:=mask_tile[font0][tile0 and 63][0];
    DrawGrid11.invalidate;
    mask1:=mask_tile[font0][tile0 and 63][1];
    DrawGrid12.invalidate;
    ComboBox3.ItemIndex:=attrib0;
    copy_znak0;
    copy_znak1;
    undo0_clear;
    Refresh_edit;
  end;
end;

procedure TForm1.Label2Click(Sender: TObject);
var
  i,a:byte;
begin
  wybor:=-1;
  font1:=2;
  Form6.showmodal;
  if wybor>-1 then
  begin
   mediumB0:=wybor;
   for i:=0 to 3 do
     mediumB[i]:=medium_table[1][mediumB0][i];
   a:=wybor;
   Label2.Caption:='#$'+inttohex(a);
   DrawGrid8.invalidate;
  end;
end;

procedure TForm1.Label4Click(Sender: TObject);
var
  i:byte;
begin
  wybor:=-1;
  Form7.showmodal;
  if wybor>-1 then
  begin
     big0:=wybor;
     for i:=0 to 15 do
       big[i]:=big_table[big0][i];

     label4.Caption:='#$'+inttohex(big0);
     DrawGrid9.Invalidate;
  end;
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  Form14.showModal;
end;


//animacje tilesów
procedure TForm1.MenuItem11Click(Sender: TObject);
var
  i,ii:byte;
  x:integer;
begin
  Form18.showModal;
end;

//set masks
procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  Form19.showModal;
  DrawGrid11.Visible:=mask_enabled[0];
  DrawGrid12.Visible:=mask_enabled[1];
  Label22.Caption:=mask_name[0];
  Label23.caption:=mask_name[1];
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  Form12.showModal;
end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
  Form13.showModal;
  attrib0:=tab_tiles[font0][tile0].attrib;
  ComboBox3.ItemIndex:=attrib0;
  copy_znak0;
  copy_znak1;
  undo0_clear;
  Refresh_edit;
  mask0:=mask_tile[font0][tile0 and 63][0];
  mask1:=mask_tile[font0][tile0 and 63][1];
  DrawGrid11.invalidate;
  DrawGrid12.invalidate;
end;


procedure TForm1.Export1(filename1: string);
var
   plik:TfileStream;
   i,ii,x,y,a,z,s,f:byte;
   buf0:array[0..511] of byte;
begin

  //mapa
       plik := TFileStream.Create(filename1+'.map',fmCreate);
       for ii:=0 to mapa_wys do
        for i:=0 to mapa_szer do
        begin
         a:=mapa[i][ii];
         if (mapa2[i][ii]<>0) then a:=a+128;
         plik.write(a,1);
        end;

       plik.free;

       //atrybuty
       plik := TFileStream.Create(filename1+'.atr',fmCreate);
       for i:=0 to 63 do
       begin
        a:=attrib_values[tab_tiles[0][i].attrib];
        plik.write(a,1);
       end;

       for i:=0 to 63 do
       begin
        a:=attrib_values[tab_tiles[1][i].attrib];
        plik.write(a,1);
       end;

       for i:=0 to 63 do
       begin
        a:=attrib_values[tab_tiles[2][i].attrib];
        plik.write(a,1);
       end;

       for i:=0 to 63 do
       begin
        a:=attrib_values[tab_tiles[3][i].attrib];
        plik.write(a,1);
       end;

       plik.free;

       //fonty
       plik := TFileStream.Create(filename1+'.fnt',fmCreate);

       for i := 0 to 127 do
        for y := 0 to 7 do
        begin
          a:=0;
          for x := 0 to 3 do
          begin
            z:=znaki[0][0][i][x][y];        //zestaw=0 ,sektor=0
            if z=4 then z:=3;
            a:=a+(z shl (6-x*2));
          end;
          plik.write(a,1);
        end;

        for i := 0 to 127 do
        for y := 0 to 7 do
        begin
          a:=0;
          for x := 0 to 3 do
          begin
            z:=znaki[0][1][i][x][y];        //zestaw=1 ,sektor=0
            if z=4 then z:=3;
            a:=a+(z shl (6-x*2));
          end;
          plik.write(a,1);
        end;

        for i := 0 to 127 do
        for y := 0 to 7 do
        begin
          a:=0;
          for x := 0 to 3 do
          begin
            z:=znaki[0][2][i][x][y];        //zestaw=2 ,sektor=0
            if z=4 then z:=3;
            a:=a+(z shl (6-x*2));
          end;
          plik.write(a,1);
        end;

        for i := 0 to 127 do
        for y := 0 to 7 do
        begin
          a:=0;
          for x := 0 to 3 do
          begin
            z:=znaki[0][3][i][x][y];        //zestaw=3 ,sektor=0
            if z=4 then z:=3;
            a:=a+(z shl (6-x*2));
          end;
          plik.write(a,1);
        end;

        plik.free;

        //objects
        plik := TFileStream.Create(filename1+'.obj',fmCreate);

        for ii:=0 to mapa_wys do
         for i:=0 to mapa_szer do
         begin
           a:=mapa1[i][ii];
           if a>0 then
           begin
            plik.write(a,1);  //nr
            plik.write(i,1);  //pos x
            plik.write(ii,1); //pos y
            plik.write(object_value[a],1);
            plik.write(object_position0[a],3);
            plik.write(object_position1[a],3);
            if ((object_flaga[a] and 1)=1) then plik.write(multi[i][ii],9)
               else
               begin
                plik.write(object_data[a],4);
                plik.write(object_extra[a],5);
               end;
           end;
         end;
         a:=0;
         plik.write(a,1);                 //0=koniec tablicy
         plik.free;

         //kolory
         plik := TFileStream.Create(filename1+'.col',fmCreate);
         for ii:=0 to 4 do
          for i:=0 to 7 do
           plik.write(kolorA[i][ii],1);

         plik.free;


         //sektory
         DeleteFile(filename1+'.sek');
         a:=0;
         for i:=0 to 7 do
          if (sektor_enabled[i]>0) then a:=1;

         if (a>0) then
         begin
          plik := TFileStream.Create(filename1+'.sek',fmCreate);

          for i:=0 to 7 do
           plik.write(sektor_enabled[i],1);

          for i:=0 to 7 do
           plik.write(sektor_startX[i],1);

          for i:=0 to 7 do
           plik.write(sektor_startY[i],1);

          for i:=0 to 7 do
           plik.write(sektor_endX[i],1);

          for i:=0 to 7 do
           plik.write(sektor_endY[i],1);


          //ksztalty znakow       ,sektorami, dla 4 fontów
          for i:=0 to 7 do                //sektor
           if (sektor_enabled[i]>0) then
            for f:=0 to 3 do        //font
             for ii:=0 to 63 do      //znak:2
              if (znaki1[ii*2]=2) then
              begin
               for y := 0 to 7 do
               begin
                a:=0;
                for x := 0 to 3 do
                begin
                 z:=znaki[i][f][ii*2][x][y];        //lewy znak
                 if z=4 then z:=3;
                  a:=a+(z shl (6-x*2));
                end;
                plik.write(a,1);
               end;

               for y := 0 to 7 do
               begin
                a:=0;
                for x := 0 to 3 do
                begin
                 z:=znaki[i][f][ii*2+1][x][y];        //prawy znak
                 if z=4 then z:=3;
                  a:=a+(z shl (6-x*2));
                end;
                plik.write(a,1);
               end;

             end;



          plik.free;
         end;


         DeleteFile(filename1+'.anm');

         //animacje znaków


         if (ile_animacji<>255) then
         begin
              plik := TFileStream.Create(filename1+'.anm',fmCreate);
              a:=ile_animacji;
              if (maxFrames=4) then a:=a+8;       //4 klatki to +8
              a:=a+(animSpeed shl 4);
              plik.write(a,1);

              for i:=0 to 7 do
              begin
                   a:=anim_tab0[i][1]*64+anim_tab0[i][0];
                   plik.write(a,1);   //starszy bajt adresu tilesa
              end;

              for i:=0 to ile_animacji do
               for f:=0 to maxFrames-1 do
                for y:=0 to 7 do
                begin
                  a:=anim_tab1[i][f][0][y] shl 6;
                  a:=a+anim_tab1[i][f][1][y] shl 4;
                  a:=a+anim_tab1[i][f][2][y] shl 2;
                  a:=a+anim_tab1[i][f][3][y];
                  buf0[i*(maxFrames*16)+f*16+y]:=a;
                  a:=anim_tab1[i][f][4][y] shl 6;
                  a:=a+anim_tab1[i][f][5][y] shl 4;
                  a:=a+anim_tab1[i][f][6][y] shl 2;
                  a:=a+anim_tab1[i][f][7][y];
                  buf0[i*(maxFrames*16)+f*16+y+8]:=a;
                end;


              plik.write(buf0,(ile_animacji+1)*(maxFrames*16));
              plik.free;
         end;

         //maski
         DeleteFile(filename1+'.msk');
         if mask_enabled[0] or mask_enabled[1] then
         begin

          plik := TFileStream.Create(filename1+'.msk',fmCreate);

          if mask_enabled[0] then
          begin
            for i:=0 to 31 do
             for ii:=0 to 7 do
                 plik.write(mask_table[0][i][ii],1);

            for f:=0 to 3 do
             for i:=0 to 63 do
             begin
                 a:=mask_tile[f][i][0]*8;
                 plik.write(a,1);
             end;
          end;

          if mask_enabled[1] then
          begin
            for i:=0 to 31 do
             for ii:=0 to 7 do
                 plik.write(mask_table[1][i][ii],1);

            for f:=0 to 3 do
             for i:=0 to 63 do
             begin
                 a:=mask_tile[f][i][1]*8;
                 plik.write(a,1);
             end;
          end;

          plik.free;
         end;

         //multicolor
         DeleteFile(filename1+'.mlc');
         if (multicolor_on>0) then
         begin
           plik := TFileStream.Create(filename1+'.mlc',fmCreate);
           for i:=0 to mapa_wys do
           begin
             a:=30;
             if multicolor_reg[i]>0 then
             begin
                if multicolor_reg[i]=1 then a:=26;
                if multicolor_reg[i]>1 then a:=multicolor_reg[i]+20;
             end;
             plik.write(a,1);
           end;
           plik.write(multicolor_val,mapa_wys+1);

           plik.free;

         end;

end;

//Export
procedure TForm1.MenuItem16Click(Sender: TObject);
var
   plik:TfileStream;
   SaveDialog1: TSaveDialog;
   i,ii,x,y,a,z,s,f:byte;
begin
     saveDialog1 := TSaveDialog.Create(self);
     saveDialog1.Title := 'Export level data';

     saveDialog1.FileName:=file_name;


     if SaveDialog1.Execute then
     begin
      if (easyMode>0) then
      begin
        Export1(SaveDialog1.FileName);
      end;
     end;


end;

procedure TForm1.MenuItem17Click(Sender: TObject);
var
  plik:TfileStream;
  OpenDialog1: TOpenDialog;
  x:integer;
begin
  x:=MessageDlg('Are you sure , (you lost all fonts)?', mtConfirmation, mbYesNo, 0);
  if x<>mrYes then  exit;



  OpenDialog1 := TOpenDialog.Create(self);
  OpenDialog1.Filter := 'Fonts file|*.fn5';
  OpenDialog1.Title:='Load Fonts data';

  if OpenDialog1.Execute then
  begin
       text:=OpenDialog1.FileName;
       if not ContainsText(text,'.fn5') then  text:=text+'.fn5';

       plik := TFileStream.Create(OpenDialog1.FileName,fmOpenRead);

       plik.read(znaki,8*4*128*8*4);

       plik.free;

       copy_znak0;
       copy_znak1;
       Refresh_edit;

       DrawGrid10.Invalidate;
       DrawGrid7.Invalidate;
       DrawGrid8.Invalidate;
       DrawGrid9.Invalidate;

       Form1.Caption:=program_name+file_name;
  end;
end;


//ZAPIS fontów 4(zestawy)x8(sektorow)
procedure TForm1.MenuItem18Click(Sender: TObject);
var
   plik:TfileStream;
   SaveDialog1: TSaveDialog;
begin
   saveDialog1 := TSaveDialog.Create(self);
   SaveDialog1.Filter := 'Fonts name|*.fn5';
   saveDialog1.Title := 'Save Fonts';
   saveDialog1.FilterIndex := 1;

   saveDialog1.FileName:=file_name;

   if SaveDialog1.Execute then
   begin
     if not ContainsText(SaveDialog1.FileName,'.fn5') then  SaveDialog1.FileName:=SaveDialog1.FileName+'.fn5';
     plik := TFileStream.Create(SaveDialog1.FileName,fmCreate);

     plik.write(znaki,8*4*128*8*4);

     plik.free;
   end;

end;

procedure TForm1.MenuItem19Click(Sender: TObject);
var
  plik:TfileStream;
  OpenDialog1: TOpenDialog;
begin
  OpenDialog1 := TOpenDialog.Create(self);
  OpenDialog1.Filter := 'Template file|*.tm5';
  OpenDialog1.Title:='Load Template';

  if OpenDialog1.Execute then
  begin
        text:=OpenDialog1.FileName;
        if not ContainsText(text,'.tm5') then  text:=text+'.tm5';

        plik := TFileStream.Create(OpenDialog1.FileName,fmOpenRead);
        plik.read(template,8*4*128*8*8);

        plik.free;

        Form1.Caption:=program_name+file_name;
  end;

end;

procedure TForm1.MenuItem20Click(Sender: TObject);
var
   plik:TfileStream;
   SaveDialog1: TSaveDialog;
   s,z,t,y,x,z0,z1,b:byte;
begin
   saveDialog1 := TSaveDialog.Create(self);
   SaveDialog1.Filter := 'Template name|*.tm5';
   saveDialog1.Title := 'Save Template';
   saveDialog1.FilterIndex := 1;

   saveDialog1.FileName:=file_name;

   if SaveDialog1.Execute then
   begin
     if not ContainsText(SaveDialog1.FileName,'.tm5') then  SaveDialog1.FileName:=SaveDialog1.FileName+'.tm5';
     plik := TFileStream.Create(SaveDialog1.FileName,fmCreate);

     for s:=0 to 7 do
      for z:=0 to 3 do
       for t:=0 to 127 do
       begin
         z0:=tab_tiles[z][t].znak0;
         z1:=tab_tiles[z][t].znak1;

         for x:=0 to 3 do
          for y:=0 to 7 do
          begin
            b:=znaki[s][z][z0 and 127][x][y];
            if (b=3) and (z0>127) then b:=4;
            plik.write(b,1);
          end;

         for x:=0 to 3 do
          for y:=0 to 7 do
          begin
            b:=znaki[s][z][z1 and 127][x][y];
            if (b=3) and (z1>127) then b:=4;
            plik.write(b,1);
          end;

       end;

     plik.free;
   end;


end;
//ustaw caly teren jako niski(LOW)
procedure TForm1.MenuItem22Click(Sender: TObject);
var
   x,y:byte;
begin
  for x:=0 to 255 do
   for y:=0 to 255 do
       mapa2[x][y]:=0;

  DrawGrid10.invalidate;
end;
//ustaw caly teren jako wysoki (HIGH)
procedure TForm1.MenuItem23Click(Sender: TObject);
var
   x,y:byte;
begin
  for x:=0 to 255 do
   for y:=0 to 255 do
       mapa2[x][y]:=1;

  DrawGrid10.Invalidate;
end;

procedure TForm1.MenuItem24Click(Sender: TObject);
begin
  Export1('.\dysk\level0');
  ShellExecute(Application.Handle, nil, 'run.bat', nil, nil, SW_SHOW);
end;

//edycja masek
procedure TForm1.MenuItem25Click(Sender: TObject);
begin
  Form20.showModal;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  Form9.showmodal;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  Form10.showmodal;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
var
   x:integer;
begin
  x:=MessageDlg('Are you sure to clear all data?', mtConfirmation, mbYesNo, 0);
  if x=mrYes then FormCreate(Sender) else exit;
end;

//Load all
procedure TForm1.MenuItem7Click(Sender: TObject);
var
  plik:TfileStream;
  OpenDialog1: TOpenDialog;
  naglowek:string[3];
  i,ii,a,x,y:byte;
  data0:array[0..10] of byte;
begin
  OpenDialog1 := TOpenDialog.Create(self);
  OpenDialog1.Filter := 'Editor file|*.me5';
  OpenDialog1.Title:='Open all mapa data';

  if OpenDialog1.Execute then
  begin
  //zabezpieczenie , jesli stary plik bez opisu masek
        mask0:=0;
        mask1:=0;
        mask_enabled[0]:=false;
        mask_enabled[1]:=false;
        mask_name[0]:='Mask1';
        mask_name[1]:='Mask2';
        ile_animacji:=255;
        animSpeed:=2;
        maxFrames:=4;

        for a:=0 to 1 do              //ktora maska
         for i:=0 to 31 do            //tile
          for y:=0 to 7 do           //linia
               if i=0 then mask_table[a][i][y]:=255 else mask_table[a][i][y]:=0;

        for a:=0 to 3 do               //font
         for i:=0 to 63 do             //tile
          for ii:=0 to 1 do            //ktora maska
               mask_tile[a][i][ii]:=0;   //default



        text:=OpenDialog1.FileName;
        if not ContainsText(text,'.me5') then  text:=text+'.me5';

        plik := TFileStream.Create(OpenDialog1.FileName,fmOpenRead);
        file_name:=LeftStr(OpenDialog1.FileName,length(OpenDialog1.FileName)-4);
        file_name:=popraw_file_name(file_name);

        Form1.Caption:=program_name+file_name;

        //naglowek
        plik.read(naglowek,4);
        if (naglowek<>'ME5') then
        begin
          Application.MessageBox('This is not a valid file.','Error', 0);
          plik.free;
          exit;
        end;

        //easymode
        plik.read(easyMode,1);

        //kolory
        plik.read(kolorA,6*8);
        for i:=0 to 7 do
         for ii:=0 to 4 do
             Kolor[i][ii]:=paleta[KolorA[i][ii]];

        Label5.caption:='$'+inttohex(kolorA[sektor][0]);
        Label6.caption:='$'+inttohex(kolorA[sektor][1]);
        Label7.caption:='$'+inttohex(kolorA[sektor][2]);
        Label8.caption:='$'+inttohex(kolorA[sektor][3]);
        Label20.caption:='$'+inttohex(kolorA[sektor][4]);

        DrawGrid2.invalidate;
        DrawGrid3.invalidate;
        DrawGrid4.invalidate;
        DrawGrid5.invalidate;
        DrawGrid6.invalidate;

        RadioButton10.Checked:=true;


        //znaki
        plik.read(znaki,8*4*128*4*8);
        plik.read(znaki0,8*4*128);
        plik.read(znaki1,128);

        //tilesy
        plik.read(ile_tilesow,1);
        for i:=0 to 3 do
          for ii:=0 to 255 do
          begin
            plik.read(tab_tiles[i][ii].attrib,1);
            plik.read(a,1);
            plik.read(a,1);
            //plik.read(tab_tiles[i][ii].znak0,1);
            //plik.read(tab_tiles[i][ii].znak1,1);
          end;
        plik.read(tab_tiles1,256);

        //attrybuty
        plik.read(attrib_names,128*17);
        plik.read(attrib_values,128);
        plik.read(attrib_ile,1);

        ComboBox3.Clear;
        for i:=0 to attrib_ile do
            ComboBox3.Items.add(attrib_names[i]);

        //szablony
        plik.read(medium_table,2*256*4);
        plik.read(big_table,256*16);

        for i:=0 to 1 do
         for ii:=0 to 255 do
           for a:=0 to 3 do
             if (medium_table[i][ii][a]=127) and (tab_tiles1[63]=0) then medium_table[i][ii][a]:=255;    //empty

        for i:=0 to 255 do
         for ii:=0 to 15 do
          if (big_table[i][ii]=127) and (tab_tiles1[63]=0) then big_table[i][ii]:=255;                   //empty


        //mapa
        plik.read(mapa,256*256);
        plik.read(mapa1,256*256);
        plik.read(mapa_szer,1);
        plik.read(mapa_wys,1);

        //objects
        plik.read(object_mnemonic,256*6);
        plik.read(object_value,256);
        plik.read(object_description,256*21);
        plik.read(object_position0,3*256);
        plik.read(object_position1,3*256);
        plik.read(object_data,4*256);
        plik.read(object_extra,5*256);
        plik.read(object_flaga,256);

        ii:=1;
        ComboBox4.Clear;
        ComboBox4.Items.add('ERASER');
        object_number[0]:=0;
        for i:=1 to 255 do
        begin
           if (length(object_mnemonic[i])>0) then
           begin
             ComboBox4.Items.add(object_description[i]+'='+inttostr(i)+' , '+object_mnemonic[i]);
             object_number[ii]:=i;
             ii:=ii+1;
           end;
        end;

        ComboBox4.itemIndex:=0;

        //sektory
        plik.read(sektor_enabled,8);
        plik.read(sektor_startX,8);
        plik.read(sektor_startY,8);
        plik.read(sektor_endX,8);
        plik.read(sektor_endY,8);

        //wysokosc, wczytaj jesli nie koniec pliku inaczej ustaw LOW
        if (not plik.EOF) then  plik.read(mapa2,256*256)
           else
           begin
              for i:=0 to 255 do
               for ii:=0 to 255 do
                   mapa2[i][ii]:=0;
           end;

        for i:=0 to 255 do                      //wyczysc multi
         for ii:=0 to 255 do
         begin
           multi[i][ii][0]:=0;
           multi[i][ii][1]:=0;
           multi[i][ii][2]:=0;
           multi[i][ii][3]:=0;
           multi[i][ii][4]:=0;
           multi[i][ii][5]:=0;
           multi[i][ii][6]:=0;
           multi[i][ii][7]:=0;
           multi[i][ii][8]:=0;
         end;
//jesli jeszcze nie koniec pliku to sprubuj odczytac multi
        if (not plik.EOF) then
        begin
           plik.read(a,1);         //ile mamy zapisanych multi
           if (a>0) then           //jesli wiecej niz jeden
           begin
             for i:=1 to a do
             begin
               plik.read(data0,11);
               for ii:=0 to 8 do
                multi[data0[0]][data0[1]][ii]:=data0[2+ii];
             end;
           end;
        end;

        if (not plik.EOF) then
        begin
               //animacje znaków
               plik.read(ile_animacji,1);
               if (ile_animacji and 128)=0 then
               begin
                animSpeed:=ile_animacji shr 4;
                ile_animacji:=ile_animacji and 15;
                if (ile_animacji<8) then maxFrames:=2
                 else
                  begin
                   maxFrames:=4;
                   ile_animacji:=ile_animacji and 7;
                  end;
                end;

               //opis
               plik.read(anim_tab0,3*8);
               //dane
               plik.read(anim_tab1,8*4*8*8)
        end
        else
        begin
          ile_animacji:=255;        //brak danych to wyczysc
          for i:=0 to 6 do
           for ii:=0 to 2 do
             anim_tab0[i][ii]:=0 ;

          for i:=0 to 6 do
           for ii:=0 to 3 do
             for x:=0 to 7 do
              for y:=0 to 7 do
                anim_tab1[i][ii][x][y]:=0;
        end;

        if (not plik.EOF) then
        begin
         //maski
         plik.read(a,1);
         mask_enabled[0]:=(a and 1)>0;
         mask_enabled[1]:=(a and 2)>0;
         //nazwy masek
         plik.read(mask_name[0],6);
         plik.read(mask_name[1],6);
         //dane masek
         plik.read(mask_table,2*32*8);
         //przypisanie do klockow
         plik.read(mask_tile,4*64*2);
        end;

        DrawGrid11.Visible:=mask_enabled[0];
        DrawGrid12.Visible:=mask_enabled[1];
        label22.caption:=mask_name[0];
        label23.caption:=mask_name[1];

        //multicolor
        if (not plik.EOF) then
        begin
         plik.read(multicolor_on,1);
         for i:=0 to 255 do
         begin
           plik.read(multicolor_reg[i],1);
           plik.read(multicolor_val[i],1);
         end;
        end;

        if (multicolor_on>0) then checkbox7.checked:=true else checkbox7.checked:=false;

        multi_calc();

        plik.free;



        RadioButton10Click(Sender);

        font0:=0;
        sektor:=0;
        tile0:=0;
        mediumA0:=0;
        MediumB0:=0;
        Big0:=0;

        ComboBox1.ItemIndex:=font0;

        if (easyMode=0) then
        begin
            Button1.enabled:=true;
            Button2.enabled:=true;
        end
        else
        begin
             Button1.enabled:=false;
             Button2.enabled:=false;
        end;

        znak0:=tab_tiles[font0][tile0].znak0;
        znak1:=tab_tiles[font0][tile0].znak1;
        attrib0:=tab_tiles[font0][tile0].attrib;

        ComboBox3.ItemIndex:=attrib0;

        copy_znak0;
        copy_znak1;
        Refresh_edit;

        DrawGrid10.Invalidate;

        MediumA0:=0;
        staticText3.Caption:='#$'+inttohex(MediumA0);
        MediumB0:=0;
        label2.Caption:='#$'+inttohex(MediumB0);
        big0:=0;
        Label4.Caption:='#$'+inttohex(big0);
        for i:=0 to 3 do
        begin
         MediumA[i]:=medium_table[0][MediumA0][i];
         MediumB[i]:=medium_table[1][MediumB0][i];
        end;

        DrawGrid7.invalidate;
        DrawGrid8.Invalidate;

        for i:=0 to 15 do
          big[i]:=big_table[big0][i];

        DrawGrid9.Invalidate;

        undo0_clear;
        undo1_clear;

        mask0:=mask_tile[font0][tile0 and 63][0];
        DrawGrid11.invalidate;
        mask1:=mask_tile[font0][tile0 and 63][1];
        DrawGrid12.invalidate;

        object0:=0;
        ComboBox4.ItemIndex:=object0;

        comboBox2.itemIndex:=0;

        calc_object();
  end;
end;

//SAVE all
procedure TForm1.MenuItem8Click(Sender: TObject);
var
   plik:TfileStream;
   SaveDialog1: TSaveDialog;
   naglowek:string[3];
   i,ii,iii,a:byte;
   data0:array[0..10] of byte;
begin
   saveDialog1 := TSaveDialog.Create(self);
   SaveDialog1.Filter := 'Project name|*.me5';
   saveDialog1.Title := 'Save all mapa data';
   saveDialog1.FilterIndex := 1;

   saveDialog1.FileName:=file_name;

   if SaveDialog1.Execute then
   begin
     if not ContainsText(SaveDialog1.FileName,'.me5') then  SaveDialog1.FileName:=SaveDialog1.FileName+'.me5';
     plik := TFileStream.Create(SaveDialog1.FileName,fmCreate);

     file_name:=LeftStr(SaveDialog1.FileName,length(SaveDialog1.FileName)-4);
     file_name:=popraw_file_name(file_name);

     Form1.Caption:=program_name+file_name;

     //naglowek
     naglowek:='ME5';
     plik.write(naglowek,4);

     //easyMode
     plik.write(easyMode,1);

     //kolory
     plik.write(kolorA,6*8);

     //znaki
     plik.write(znaki,8*4*128*4*8);
     plik.write(znaki0,8*4*128);
     plik.write(znaki1,128);

     //tilesy
     plik.write(ile_tilesow,1);

     for i:=0 to 3 do
      for ii:=0 to 255 do
      begin
        plik.write(tab_tiles[i][ii].attrib,1);
        plik.write(tab_tiles[i][ii].znak0,1);
        plik.write(tab_tiles[i][ii].znak1,1);
      end;
     plik.write(tab_tiles1,256);

     //attrybuty
     plik.write(attrib_names,128*17);
     plik.write(attrib_values,128);
     plik.write(attrib_ile,1);

     //szablony
     plik.write(medium_table,2*256*4);
     plik.write(big_table,256*16);

     //mapa
     plik.write(mapa,256*256);
     plik.write(mapa1,256*256);
     plik.write(mapa_szer,1);
     plik.write(mapa_wys,1);

     //objects
     plik.write(object_mnemonic,256*6);
     plik.write(object_value,256);
     plik.write(object_description,256*21);
     plik.write(object_position0,3*256);
     plik.write(object_position1,3*256);
     plik.write(object_data,4*256);
     plik.write(object_extra,5*256);
     plik.write(object_flaga,256);

     //sektory
     plik.write(sektor_enabled,8);
     plik.write(sektor_startX,8);
     plik.write(sektor_startY,8);
     plik.write(sektor_endX,8);
     plik.write(sektor_endY,8);

     //wysokosc
     plik.write(mapa2,256*256);

     //multi
     a:=0;
     for i:=0 to mapa_szer-1 do
      for ii:=0 to mapa_wys-1 do
       if (mapa1[i][ii]>0) then
        if ((object_flaga[mapa1[i][ii]] and 1)=1) then a:=a+1;

     plik.write(a,1);

     if (a>0) then
      for i:=0 to mapa_szer-1 do
       for ii:=0 to mapa_wys-1 do
        if (mapa1[i][ii]>0) then
         if ((object_flaga[mapa1[i][ii]] and 1)=1) then
         begin
           data0[0]:=i;
           data0[1]:=ii;
           for iii:=0 to 8 do
            data0[2+iii]:=multi[i][ii][iii];
           plik.write(data0,11);
         end;

     //animacje znaków
     a:=ile_animacji or ((maxFrames and 4) shl 1) or (animSpeed shl 4);
     plik.write(a,1);                  //+0=2 klatki,+8=4 klatki
     //opis
     plik.write(anim_tab0,3*8);
     //dane
     plik.write(anim_tab1,8*4*8*8);


     //maski
     //naglowek
     a:=0;
     if mask_enabled[0] then a:=a+1;
     if mask_enabled[1] then a:=a+2;
     plik.write(a,1);
     //nazwy
     plik.write(mask_name[0],6);
     plik.write(mask_name[1],6);
     //dane
     plik.write(mask_table,2*32*8);
     //przypisanie do klockow
     plik.write(mask_tile,4*64*2);


     //zmiana kolorów
     plik.write(multicolor_on,1);
     for i:=0 to 255 do
     begin
       plik.write(multicolor_reg[i],1);
       plik.write(multicolor_val[i],1);
     end;

     plik.free;
   end;
end;

function TForm1.Popraw_file_name(txt:string):string;
var
   a,poz:byte;
begin
  a:=0;poz:=0;

  repeat
    a:=poz;
    poz:=pos('\',txt);
    if (poz>0) then txt[poz]:=' ';
  until (poz=0);

  if a>0 then Result:=RightStr(txt,length(txt)-a) else result:=txt;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
var
  i,ii,att,n,z0,z1,t,x,y,s:byte;
  plik: TFileStream;
  OpenDialog1: TOpenDialog;
begin
  OpenDialog1 := TOpenDialog.Create(self);
  OpenDialog1.Filter := 'Editor file|*.me5';

  if OpenDialog1.Execute then
  begin
    if not ContainsText(OpenDialog1.FileName,'.me5') then  OpenDialog1.FileName:=OpenDialog1.FileName+'.me5';

    plik := TFileStream.Create(OpenDialog1.FileName,fmOpenRead);
    file_name:=LeftStr(OpenDialog1.FileName,length(OpenDialog1.FileName)-4);
    file_name:=popraw_file_name(file_name);
    Form1.Caption:=program_name+file_name;

    for i:=0 to 255 do
    begin
      object_position0[i][0]:=0;
      object_position0[i][1]:=0;
      object_position0[i][2]:=0;
      object_position1[i][0]:=0;
      object_position1[i][1]:=0;
      object_position1[i][2]:=0;
      object_data[i][0]:=0;
      object_data[i][0]:=0;
      object_data[i][0]:=0;
      object_data[i][0]:=0;
      object_extra[i][0]:=0;
      object_extra[i][1]:=0;
      object_extra[i][2]:=0;
      object_extra[i][3]:=0;
      object_extra[i][4]:=0;
      object_flaga[i]:=0;
    end;

//kolory
    plik.read(KolorA,8*6);
    for i:=0 to 7 do
     for ii:=0 to 4 do
       Kolor[i][ii]:=paleta[KolorA[i][ii]];

    Label5.caption:='$'+inttohex(kolorA[sektor][0]);
    Label6.caption:='$'+inttohex(kolorA[sektor][1]);
    Label7.caption:='$'+inttohex(kolorA[sektor][2]);
    Label8.caption:='$'+inttohex(kolorA[sektor][3]);
    Label20.caption:='$'+inttohex(kolorA[sektor][4]);

    DrawGrid2.invalidate;
    DrawGrid3.invalidate;
    DrawGrid4.invalidate;
    DrawGrid5.invalidate;
    DrawGrid6.invalidate;

//tilesy
    for i:=0 to 3 do
     for ii:=0 to 255 do
     begin
       plik.read(att,1);
       plik.read(n,1);
       plik.read(z0,1);
       plik.read(z1,1);

       if (ii and 1)=1 then
       begin
         t:=(ii shr 1);
         tab_tiles[i][t].znak0:=z0;
         tab_tiles[i][t].znak1:=z1;
         tab_tiles[i][t].attrib:=att;
         tab_tiles1[t]:=1;
       end
     end;




     for i:=0 to 3 do
      for ii:=0 to 15 do
      begin
       tab_tiles[i][48+ii].znak0:=(48+ii)*2;
       tab_tiles[i][48+ii].znak1:=(48+ii)*2+1;
       tab_tiles[i][48+ii].attrib:=0;
       tab_tiles[i][48+64+ii].znak0:=(48+ii)*2+128;
       tab_tiles[i][48+64+ii].znak1:=(48+ii)*2+129;
       tab_tiles[i][48+64+ii].attrib:=0;
       tab_tiles1[48+ii]:=0;
       tab_tiles1[48+64+ii]:=0;
      end;



//znaki
    for s:=0 to 7 do
     for i:=0 to 3 do
      for ii:=0 to 127 do
       for x:=0 to 3 do
        for y:=0 to 7 do
         plik.read(znaki[s][i][ii][x][y],1);

    for i:=0 to 3 do
     for ii:=0 to 127 do
      znaki0[0][i][ii]:=1;

    for s:=1 to 7 do
     for i:=0 to 3 do
      for ii:=0 to 127 do
       znaki0[s][i][ii]:=0;

    for i:=0 to 31 do
    begin
      znaki1[i]:=1;
      znaki1[i+32]:=1;
      znaki1[i+64]:=1;
      znaki1[i+96]:=0;     //blokuj znaki przewidziane dla duszkow
    end;

    for s:=0 to 7 do
     for i:=0 to 3 do
      for ii:=0 to 127 do
        plik.read(t,1);        //zbedne dane,dla zgodnosci

//ileTile , zbedne
    for i:=0 to 3 do
      plik.read(t,1);

//attrib names,attrib_values,attrib_ile
    for i:=0 to 127 do
      plik.read(attrib_names[i],16);

    plik.read(attrib_values,128);

    plik.read(attrib_ile,1);

    ComboBox3.Clear;
    for i:=0 to attrib_ile-1 do
      ComboBox3.Items.add(attrib_names[i]);

//mapa
    for i:=0 to 255 do            //wyczysc na poczatku
     for ii:=0 to 255 do
       mapa[i][ii]:=EMPTY;

    for i :=0 to 127 do          //mapa
     for ii :=0 to 127 do
     begin
      plik.read(t,1);
      plik.read(n,1);
      if (n=0) then mapa[i][ii]:=EMPTY else mapa[i][ii]:=(t-1) shr 1;
     end;

//MediumA,MediumB
    for n := 0 to 255 do      //MediumA_table
     for x := 0 to 1 do
      for y := 0 to 1 do
      begin
       plik.read(t,1);
       t:=t shr 1;
       medium_table[0][n][x+y*2]:=t;
      end;

    for n := 0 to 255 do      //MediumB_table
     for x := 0 to 1 do
      for y := 0 to 1 do
      begin
       plik.read(t,1);
       t:=t shr 1;
       medium_table[1][n][x+y*2]:=t;
      end;

//Big table
    for n := 0 to 255 do    //big_table
     for x := 0 to 3 do
      for y := 0 to 3 do
      begin
        plik.read(t,1);
        t:=t shr 1;
        big_table[n][x+y*4]:=t;
      end;

//rozmiar mapy
     plik.read(mapa_szer,1);
     plik.read(mapa_wys,1);
     mapa_szer:=mapa_szer-1;
     mapa_wys:=mapa_wys-1;

     RadioButton10Click(Sender);

//objects
     for i:=0 to 255 do
      for ii:=0 to 255 do
        mapa1[i][ii]:=0;

     for ii := 0 to 127 do
      for i := 0 to 127 do
       plik.read(mapa1[i][ii],1);

      ii:=0;
      ComboBox4.Clear;
      for i:=0 to 255 do
      begin
        plik.read(object_mnemonic[i],5);
        plik.read(object_value[i],1);
        plik.read(object_description[i],16);

        if (i>0) and (object_mnemonic[i]='???') then
        begin
         object_description[i]:='';
         object_mnemonic[i]:='';
        end
        else
        begin
          ComboBox4.Items.add(object_description[i]+'='+inttostr(i)+' , '+object_mnemonic[i]);
          object_number[ii]:=i;
          ii:=ii+1;
        end;
      end;

      ComboBox4.Items[0]:='ERASER';


      object0:=0;
      ComboBox4.ItemIndex:=object0;
      RadioButton10Click(Sender);

      plik.free;

//inicjalizacja
     tile0:=0;
     font0:=0;
     ComboBox1.ItemIndex:=font0;

     Button1.enabled:=false;
     Button2.enabled:=false;

     znak0:=tab_tiles[font0][tile0].znak0;
     znak1:=tab_tiles[font0][tile0].znak1;
     attrib0:=tab_tiles[font0][tile0].attrib;

     ComboBox3.ItemIndex:=attrib0;

     copy_znak0;
     copy_znak1;
     Refresh_edit;

     DrawGrid10.Invalidate;

     MediumA0:=0;
     staticText3.Caption:='#$'+inttohex(MediumA0);
     MediumB0:=0;
     label2.Caption:='#$'+inttohex(MediumB0);
     big0:=0;
     Label4.Caption:='#$'+inttohex(big0);
     for i:=0 to 3 do
     begin
      MediumA[i]:=medium_table[0][MediumA0][i];
      MediumB[i]:=medium_table[1][MediumB0][i];
     end;

     DrawGrid7.invalidate;
     DrawGrid8.Invalidate;

     for i:=0 to 15 do
       big[i]:=big_table[big0][i];

     DrawGrid9.Invalidate;


     easyMode:=1;

     undo0_clear;
     undo1_clear;
  end;
end;




//tryb Tile
procedure TForm1.RadioButton10Click(Sender: TObject);
begin
  mapa_mode:=0;
  button0d:=0;
  czarny_tekst;
  Label17.Font.Color:=TColor($0000ff);
  Label17.Font.Style:=[fsBold];
  DrawGrid10.ColCount:=mapa_szer+1+1;
  DrawGrid10.RowCount:=mapa_wys+1+1;
  DrawGrid10.DefaultRowHeight:=60;
  DrawGrid10.DefaultColWidth:=60;
  checkbox1.Enabled:=true;
  checkbox1.checked:=false;
  DrawGrid10.Invalidate;
end;

//tryb MediumA
procedure TForm1.RadioButton11Click(Sender: TObject);
begin
  mapa_mode:=1;
  button0d:=0;
  czarny_tekst;
  Label18.Font.Color:=TColor($0000ff);
  Label18.Font.Style:=[fsBold];
  DrawGrid10.ColCount:=((mapa_szer+1) shr 1)+1;
  DrawGrid10.RowCount:=((mapa_wys+1) shr 1)+1;
  DrawGrid10.DefaultRowHeight:=100;
  DrawGrid10.DefaultColWidth:=100;
  checkbox1.Enabled:=false;
  DrawGrid10.Invalidate;
end;

//tryb MediumB
procedure TForm1.RadioButton12Click(Sender: TObject);
begin
  mapa_mode:=2;
  button0d:=0;
  czarny_tekst;
  Label19.Font.Color:=TColor($0000ff);
  Label19.Font.Style:=[fsBold];
  DrawGrid10.ColCount:=((mapa_szer+1) shr 1)+1;
  DrawGrid10.RowCount:=((mapa_wys+1) shr 1)+1;
  DrawGrid10.DefaultRowHeight:=100;
  DrawGrid10.DefaultColWidth:=100;
  checkbox1.Enabled:=false;
  DrawGrid10.Invalidate;
end;

procedure TForm1.RadioButton13Change(Sender: TObject);
begin

end;

//tryb Big
procedure TForm1.RadioButton13Click(Sender: TObject);
begin
  mapa_mode:=3;
  button0d:=0;
  czarny_tekst;
  Label3.Font.Color:=TColor($0000ff);
  Label3.Font.Style:=[fsBold];
  DrawGrid10.ColCount:=((mapa_szer+1) shr 2)+1;
  DrawGrid10.RowCount:=((mapa_wys+1) shr 2)+1;
  DrawGrid10.DefaultRowHeight:=120;
  DrawGrid10.DefaultColWidth:=120;
  checkbox1.Enabled:=false;
  DrawGrid10.Invalidate;
end;

procedure TForm1.RadioButton14Change(Sender: TObject);
begin

end;

//tryb objects
procedure TForm1.RadioButton14Click(Sender: TObject);
begin
  mapa_mode:=4;
  czarny_tekst;
  button0d:=0;
  GroupBox2.Font.Color:=TColor($0000ff);
  GroupBox2.Font.Style:=[fsBold];
  DrawGrid10.ColCount:=mapa_szer+1+1;
  DrawGrid10.RowCount:=mapa_wys+1+1;
  DrawGrid10.DefaultRowHeight:=60;
  DrawGrid10.DefaultColWidth:=60;
  checkbox1.Enabled:=false;
  checkbox1.Checked:=true;;
  DrawGrid10.Invalidate;
end;


//odswiezamy okno edycji nr znakow itd.
procedure TForm1.Refresh_edit();
begin
  Label1.Caption:='#$'+inttohex(tile0);
  if (znak0<>EMPTY) then Button1.Caption:='#$'+inttohex(znak0) else Button1.Caption:='#$??';
  if (znak1<>EMPTY) then Button2.Caption:='#$'+inttohex(znak1) else Button2.Caption:='#$??';

  if (znak0=EMPTY) or (znak1=EMPTY) then DrawGrid1.visible:=false else DrawGrid1.visible:=true;
  DrawGrid1.invalidate;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  selectColor:=0;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  selectColor:=1;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
  selectColor:=2;
end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
  selectColor:=3;
end;

procedure TForm1.RadioButton5Click(Sender: TObject);
begin
  selectColor:=4;
end;
//Big widok tile
procedure TForm1.RadioButton6Click(Sender: TObject);
begin
  big_mode:=0;
  DrawGrid9.ColCount:=4;
  DrawGrid9.Rowcount:=4;

  DrawGrid9.DefaultColWidth:=(DrawGrid9.Width-4) div 4;
  DrawGrid9.DefaultRowHeight:=(DrawGrid9.Height-4) div 4;
  DrawGrid9.invalidate;
end;
//BIG widok medium
procedure TForm1.RadioButton7Click(Sender: TObject);
begin
  big_mode:=1;
  DrawGrid9.ColCount:=2;
  DrawGrid9.Rowcount:=2;
  DrawGrid9.DefaultColWidth:=(DrawGrid9.Width-4) div 2;
  DrawGrid9.DefaultRowHeight:=(DrawGrid9.Height-4) div 2;
  DrawGrid9.invalidate;
end;

procedure TForm1.RadioButton8Click(Sender: TObject);
begin
  mapa_mode:=5;
  button0d:=0;
  czarny_tekst;
  Label17.Font.Color:=TColor($0000ff);
  Label17.Font.Style:=[fsBold];
  DrawGrid10.ColCount:=mapa_szer+1+1;
  DrawGrid10.RowCount:=mapa_wys+1+1;
  DrawGrid10.DefaultRowHeight:=60;
  DrawGrid10.DefaultColWidth:=60;
  checkbox1.Enabled:=true;
  checkbox1.checked:=false;
  DrawGrid10.Invalidate;
end;

//wcisnieto przycisk myszki
procedure TForm1.DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=1;
end;

//rysuj komórkę
procedure TForm1.DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  a:byte;
begin
     a:=ksztalt[aCol][aRow];
     if (aCol<4) and (znak0<128) and (a=4) then a:=3;
     if (aCol<4) and (znak0>127) and (a=3) then a:=4;
     if (aCol>3) and (znak1<128) and (a=4) then a:=3;
     if (aCol>3) and (znak1>127) and (a=3) then a:=4;
     ksztalt[aCol][aRow]:=a;

     DrawGrid1.Canvas.Brush.Color:=Kolor[sektor][a];
     DrawGrid1.Canvas.FillRect(aRect);
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
  sektor:=ComboBox2.ItemIndex;
  copy_znak0;
  copy_znak1;
  undo0_clear;
  Refresh_edit;
  DrawGrid2.invalidate;         //odswiezamy kolory
  DrawGrid3.invalidate;
  DrawGrid4.invalidate;
  DrawGrid5.invalidate;
  DrawGrid6.invalidate;
  DrawGrid7.invalidate;
  DrawGrid8.invalidate;
  DrawGrid9.invalidate;

  Label5.caption:='$'+inttohex(kolorA[sektor][0]);
  Label6.caption:='$'+inttohex(kolorA[sektor][1]);
  Label7.caption:='$'+inttohex(kolorA[sektor][2]);
  Label8.caption:='$'+inttohex(kolorA[sektor][3]);
  Label20.caption:='$'+inttohex(kolorA[sektor][4]);
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
  attrib0:=ComboBox3.itemindex;
end;

procedure TForm1.ComboBox4Change(Sender: TObject);
begin
  object0:=object_number[ComboBox4.ItemIndex];
end;

procedure TForm1.DrawGrid10DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
type
  TRGBTripleArray = ARRAY[0..31] of Trgb24;
  pRGBTripleArray = ^TRGBTripleArray; // Use a PByteArray for pf8bit color.
var
  a,b,c,i,ii,z0,z1,sektor0,sektor1,sektor1a,sektor1b,x,x2,y2:byte;
  szer,wys:single;
  rect1:TRect;
  bmp:TBitmap;
  kolor_pixela:TColor;
  kol1:TColor;
  r0,g0,b0:byte;
  tx:string;
  //line0: pRGBTripleArray;
begin
  if (aCol=0) and (aRow=0) then exit;

  if (mapa_mode=0)  or (mapa_mode=4) or (mapa_mode=5) then
  begin

    //else
    //begin                                      //rysuj tilesy
      if (aCol=0) then
      begin
        DrawGrid10.Canvas.font.Color:=RGB(200,200,200);
        if (((aRow-1) mod 4)=font0) and (mapa_mode<5) then
        begin
           DrawGrid10.Canvas.Brush.Color:=TColor($D2FAFA);
           DrawGrid10.Canvas.FillRect(aRect);
           DrawGrid10.Canvas.font.Color:=RGB(0,0,0);
        end;


        DrawGrid10.Canvas.TextRect(aRect, aRect.Left+12, aRect.Top+2, inttostr(aRow-1));
        DrawGrid10.Canvas.TextRect(aRect, aRect.Left+5, aRect.Top+30, 'font'+inttostr((aRow-1) mod 4));

        a:=multicolor_reg[aRow-1];
        if (multicolor_on>0) and (a>0) then
        begin

         DrawGrid10.Canvas.Brush.Color:=paleta[multicolor_val[aRow-1]];
         rect1.top:=aRect.Top+10;
         rect1.left:=aRect.right-20;
         rect1.Bottom:=aRect.Top;
         rect1.Right:=aRect.Right-2;
         DrawGrid10.Canvas.FillRect(rect1);
         DrawGrid10.Canvas.font.Color:=RGB(0,0,0);

         if (a=1) then tx:='BG' else tx:='C'+inttostr(a-2);

         DrawGrid10.Canvas.TextRect(aRect, aRect.Right-22, aRect.Top+5, tx);

        end;

        exit;
      end;

      if (aRow=0) then
      begin
        DrawGrid10.Canvas.TextRect(aRect, aRect.Left+15, aRect.Top+15, inttostr(aCol-1));
        exit;
      end;

      if mapa[aCol-1][aRow-1]=EMPTY then
      begin
        DrawGrid10.Canvas.TextRect(aRect, aRect.Left+5, aRect.Top+20, 'empty');
        exit;
      end;

      bmp:=TBitmap.Create;
      bmp.width:=8;
      bmp.height:=8;
      bmp.pixelformat:=pf24bit;

      szer:=(aRect.Right-aRect.Left+1)/8;
      wys:=(aRect.bottom-aRect.Top+1)/8;

      z0:=tab_tiles[(aRow-1) and 3][mapa[aCol-1][aRow-1]].znak0;
      z1:=tab_tiles[(aRow-1) and 3][mapa[aCol-1][aRow-1]].znak1;

      if (z0<128) then a:=3 else a:=4;
      if (z1<128) then b:=3 else b:=4;
      sektor0:=ustaw_kolor(aCol-1,aRow-1);
      sektor1a:=ustaw_sektor(aCol-1,aRow-1,z0);
      sektor1b:=ustaw_sektor(aCol-1,aRow-1,z1);


      for ii:=0 to 7 do
       for i:=0 to 3 do
       begin
            c:=znaki[sektor1a][(aRow-1) and 3][z0 and 127][i][ii];
            if (c=3) then c:=a;

            if multicolor_on>0 then kol1:=paleta[multicolor_tab[aRow-1][c]] else kol1:=kolor[sektor0][c];
            if (font0<>((aRow-1) mod 4)) and (alpha>0) then
            begin
              r0:=kol1 shr 16;
              g0:=(kol1 shr 8) and 255;
              b0:=kol1 and 255;
              r0:=trunc(alpha*r0/255)+(255-alpha);
              g0:=trunc(alpha*g0/255)+(255-alpha);
              b0:=trunc(alpha*b0/255)+(255-alpha);
              kol1:=r0 shl 16 + g0 shl 8 + b0;
            end;


            bmp.Canvas.Pixels[i,ii]:=kol1;

            c:=znaki[sektor1b][(aRow-1) and 3][z1 and 127][i][ii];
            if (c=3) then c:=b;

            if multicolor_on>0 then kol1:=paleta[multicolor_tab[aRow-1][c]] else kol1:=kolor[sektor0][c];

            if (font0<>((aRow-1) mod 4)) and (alpha>0) then
            begin
              r0:=kol1 shr 16;
              g0:=(kol1 shr 8) and 255;
              b0:=kol1 and 255;
              r0:=trunc(alpha*r0/255)+(255-alpha);
              g0:=trunc(alpha*g0/255)+(255-alpha);
              b0:=trunc(alpha*b0/255)+(255-alpha);
              kol1:=r0 shl 16 + g0 shl 8 + b0;
            end;


            bmp.Canvas.Pixels[i+4,ii]:=kol1;
       end;

 
      DrawGrid10.Canvas.CopyRect(aRect,bmp.Canvas,bmp.Canvas.ClipRect);


      if (aCol>0) and (aRow>0) and (mapa1[aCol-1][aRow-1]<>0) and (Checkbox1.Checked=true) then
          begin                                       //rysuj object'y
            DrawGrid10.Canvas.Brush.Color:=TColor($000000);
            DrawGrid10.Canvas.FillRect(aRect.Left,aRect.Top+22,aRect.Right,aRect.Bottom-15);
            DrawGrid10.Canvas.font.Color:=RGB(255,255,255);
            DrawGrid10.Canvas.TextRect(aRect, aRect.Left+1, aRect.Top+20, object_mnemonic[mapa1[aCol-1][aRow-1]]);
            exit;
          end;



         if (mapa_mode=5) and (mapa2[aCol-1][aRow-1]=1) then
         begin
           DrawGrid10.Canvas.Pen.Color:=clRed;
           DrawGrid10.Canvas.Pen.Width:=3;
           DrawGrid10.Canvas.Brush.Style:=bsBDiagonal;
           Drawgrid10.Canvas.Rectangle(aRect);
           DrawGrid10.Canvas.Brush.Style:=bsSolid;
         end;


      bmp.free;
    //end;
  end;

  if (mapa_mode=1) or (mapa_mode=2) then
  begin
    if (aCol=0) then
      begin
        DrawGrid10.Canvas.font.Color:=RGB(200,200,200);
        if ((aRow-1) mod 2)=(mapa_mode-1) then
        begin
          DrawGrid10.Canvas.Brush.Color:=TColor($D2FAFA);
          DrawGrid10.Canvas.FillRect(aRect);
          DrawGrid10.Canvas.font.Color:=RGB(0,0,0);
        end;
        DrawGrid10.Canvas.TextRect(aRect, aRect.Left+12, aRect.Top+2, inttostr(aRow-1));
        DrawGrid10.Canvas.TextRect(aRect, aRect.Left+10, aRect.Top+30, 'font'+inttostr(((aRow-1) and 1)*2));
        DrawGrid10.Canvas.TextRect(aRect, aRect.Left+10, aRect.Top+68, 'font'+inttostr(((aRow-1) and 1)*2+1));
        exit;
      end;

      if (aRow=0) then
      begin
        DrawGrid10.Canvas.TextRect(aRect, aRect.Left+22, aRect.Top+15, inttostr(aCol-1));
        exit;
      end;

      bmp:=TBitmap.Create;
      bmp.width:=16;
      bmp.height:=16;
      bmp.pixelformat:=pf24bit;

      for x:=0 to 3 do
      begin
       x2:=8*(x and 1);
       y2:=8*(x shr 1);
       szer:=(aRect.Right-aRect.Left+1)/16;
       wys:=(aRect.bottom-aRect.Top+1)/16;
       if (mapa[(aCol-1)*2+(x and 1)][(aRow-1)*2+(x shr 1)]<>EMPTY) then
       begin
        z0:=tab_tiles[((aRow-1)*2+(x shr 1)) and 3][mapa[(aCol-1)*2+(x and 1)][(aRow-1)*2+(x shr 1)]].znak0;
        z1:=tab_tiles[((aRow-1)*2+(x shr 1)) and 3][mapa[(aCol-1)*2+(x and 1)][(aRow-1)*2+(x shr 1)]].znak1;
        if (z0<128) then a:=3 else a:=4;
        if (z1<128) then b:=3 else b:=4;

        sektor0:=ustaw_kolor((aCol-1)*2+(x and 1),(aRow-1)*2+(x shr 1));
        sektor1a:=ustaw_sektor((aCol-1)*2+(x and 1),(aRow-1)*2+(x shr 1),z0);
        sektor1b:=ustaw_sektor((aCol-1)*2+(x and 1),(aRow-1)*2+(x shr 1),z1);

        for ii:=0 to 7 do
         for i:=0 to 3 do
         begin
          c:=znaki[sektor1a][((aRow-1)*2+(x shr 1)) and 3][z0 and 127][i][ii];
          if (c=3) then c:=a;

          if multicolor_on>0 then kol1:=paleta[multicolor_tab[(aRow-1)*2+(x shr 1)][c]] else kol1:=kolor[sektor0][c];
          if (mapa_mode-1<>((aRow-1) mod 2)) and (alpha>0) then
          begin
              r0:=kol1 shr 16;
              g0:=(kol1 shr 8) and 255;
              b0:=kol1 and 255;
              r0:=trunc(alpha*r0/255)+(255-alpha);
              g0:=trunc(alpha*g0/255)+(255-alpha);
              b0:=trunc(alpha*b0/255)+(255-alpha);
              kol1:=r0 shl 16 + g0 shl 8 + b0;
          end;


          bmp.Canvas.Pixels[i+x2,ii+y2]:=kol1;

          c:=znaki[sektor1b][((aRow-1)*2+(x shr 1)) and 3][z1 and 127][i][ii];
          if (c=3) then c:=b;

          if multicolor_on>0 then kol1:=paleta[multicolor_tab[(aRow-1)*2+(x shr 1)][c]] else kol1:=kolor[sektor0][c];
          if (mapa_mode-1<>((aRow-1) mod 2)) and (alpha>0) then
          begin
              r0:=kol1 shr 16;
              g0:=(kol1 shr 8) and 255;
              b0:=kol1 and 255;
              r0:=trunc(alpha*r0/255)+(255-alpha);
              g0:=trunc(alpha*g0/255)+(255-alpha);
              b0:=trunc(alpha*b0/255)+(255-alpha);
              kol1:=r0 shl 16 + g0 shl 8 + b0;
          end;

          bmp.Canvas.Pixels[i+4+x2,ii+y2]:=kol1;

         end;
        end;
       end;
       DrawGrid10.Canvas.CopyRect(aRect,bmp.Canvas,bmp.Canvas.ClipRect);
       bmp.free;
    end;

    if (mapa_mode=3) then
    begin
      if (aCol=0) then
      begin
        DrawGrid10.Canvas.Brush.Color:=TColor($D2FAFA);
        DrawGrid10.Canvas.FillRect(aRect);
        DrawGrid10.Canvas.TextRect(aRect, aRect.Left+12, aRect.Top+2, inttostr(aRow-1));
        DrawGrid10.Canvas.TextRect(aRect, aRect.Left+10, aRect.Top+30, 'font0');
        DrawGrid10.Canvas.TextRect(aRect, aRect.Left+10, aRect.Top+48, 'font1');
        DrawGrid10.Canvas.TextRect(aRect, aRect.Left+10, aRect.Top+68, 'font2');
        DrawGrid10.Canvas.TextRect(aRect, aRect.Left+10, aRect.Top+88, 'font3');
        exit;
      end;

      if (aRow=0) then
      begin
        DrawGrid10.Canvas.TextRect(aRect, aRect.Left+22, aRect.Top+20, inttostr(aCol-1));
        exit;
      end;

      bmp:=TBitmap.Create;
      bmp.width:=32;
      bmp.height:=32;
      bmp.pixelformat:=pf24bit;


      for x:=0 to 15 do
      begin
       x2:=8*(x and 3);
       y2:=8*(x shr 2);
       szer:=(aRect.Right-aRect.Left+1)/32;
       wys:=(aRect.bottom-aRect.Top+1)/32;
       if (mapa[(aCol-1)*4+(x and 3)][(aRow-1)*4+(x shr 2)]<>EMPTY) then
       begin

        z0:=tab_tiles[x shr 2][mapa[(aCol-1)*4+(x and 3)][(aRow-1)*4+(x shr 2)]].znak0;
        z1:=tab_tiles[x shr 2][mapa[(aCol-1)*4+(x and 3)][(aRow-1)*4+(x shr 2)]].znak1;
        if (z0<128) then a:=3 else a:=4;
        if (z1<128) then b:=3 else b:=4;

        sektor0:=ustaw_kolor((aCol-1)*4+(x and 3),(aRow-1)*4+(x shr 2));
        sektor1a:=ustaw_sektor((aCol-1)*4+(x and 3),(aRow-1)*4+(x shr 2),z0);
        sektor1b:=ustaw_sektor((aCol-1)*4+(x and 3),(aRow-1)*4+(x shr 2),z1);

        for ii:=0 to 7 do
         for i:=0 to 3 do
         begin

          //line0:=bmp.ScanLine[ii+y2];
          sektor1:=ustaw_sektor((aCol-1)*4+(x and 3),(aRow-1)*4+(x shr 2),z0);
          c:=znaki[sektor1a][x shr 2][z0 and 127][i][ii];
          if (c=3) then c:=a;


          if multicolor_on>0 then kol1:=paleta[multicolor_tab[(aRow-1)*4+(x shr 2)][c]] else kol1:=kolor[sektor0][c];
          bmp.Canvas.Pixels[i+x2,ii+y2]:=kol1;
          //line0^[i+x2]:=tcolor2trgb(kolor[sektor0][c]);

          sektor1:=ustaw_sektor((aCol-1)*4+(x and 3),(aRow-1)*4+(x shr 2),z1);
          c:=znaki[sektor1b][x shr 2][z1 and 127][i][ii];
          if (c=3) then c:=b;

          if multicolor_on>0 then kol1:=paleta[multicolor_tab[(aRow-1)*4+(x shr 2)][c]] else kol1:=kolor[sektor0][c];
          bmp.Canvas.Pixels[i+4+x2,ii+y2]:=kol1;
          //line0^[i+4+x2]:=tcolor2trgb(kolor[sektor0][c]);

         end;
        end;
       end;
       DrawGrid10.Canvas.CopyRect(aRect,bmp.Canvas,bmp.Canvas.ClipRect);
       //DrawGrid10.Canvas.StretchDraw(aRect,bmp);
       bmp.free;
    end;

end;

procedure TForm1.DrawGrid10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ((Button=mbRight) and (prawy=0)) then
  begin
   if ((mapa_mode=0) and (col1>0) and (row1>0)) then
   begin
    font0:=(row1-1) mod 4;
    ComboBox1.ItemIndex:=font0;
    tile0:=mapa[col1-1][row1-1];
    znak0:=tab_tiles[font0][tile0].znak0;
    znak1:=tab_tiles[font0][tile0].znak1;
    attrib0:=tab_tiles[font0][tile0].attrib;
    mask0:=mask_tile[font0][tile0 and 63][0];
    DrawGrid11.invalidate;
    mask1:=mask_tile[font0][tile0 and 63][1];
    DrawGrid12.invalidate;
    ComboBox3.ItemIndex:=attrib0;
    copy_znak0;
    copy_znak1;
    undo0_clear;
    Refresh_edit;
    DrawGrid10.Invalidate;
    prawy:=1;
   end;
//multi use
   if ((mapa_mode=4) and (mapa1[col1-1][row1-1]>0)) then        //tryb object i wstawiony w danym miejscu obiekt
    if ((object_flaga[mapa1[col1-1][row1-1]] and 1)=1) then     //ustawione multi use
    begin
      wybor:=-1;
      Form17.showmodal;
    end;
  end;

  if ((Button=mbMiddle) and (srodek=0) and ((mapa_mode=0) or (mapa_mode=4))) then
  begin
    mapa2[col1-1][row1-1]:=mapa2[col1-1][row1-1] xor 1;
    DrawGrid10.Invalidate;
    Application.ActivateHint(Mouse.CursorPos);

    srodek:=1;
  end;

  if (Button=mbLeft) then
  begin
       button0d:=1;
       if (col1=0) and (row1>1) and ((mapa_mode=0) or (mapa_mode=4)) then
       begin
         multi_calc();
         Form22.showModal;
         multi_calc();
         drawGrid10.invalidate;
       end;
  end;
end;

procedure TForm1.DrawGrid10MouseLeave(Sender: TObject);
begin
  button0d:=0;
end;

procedure TForm1.DrawGrid10MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  z,i,ii,licz:byte;
  col,row:integer;
  height0:string;
begin
  DrawGrid10.MouseToCell(X, Y, col, row);
  col1:=col;
  row1:=row;
  Form1.Hint:='';
  if ((mapa_mode=0) or (mapa_mode>3)) and (col>0) and (row>0) then
  begin
   z:=mapa[col-1][row-1];
   if (z<>EMPTY) then
   begin
    licz:=0;
    for i:=0 to mapa_szer do
     for ii:=0 to ((mapa_wys+1) shr 2)-1 do
       if mapa[i][((row-1) and 3)+ii*4]=z then licz:=licz+1;


    if (mapa2[col-1][row-1]=0) then height0:='LOW' else height0:='HIGH';
    Form1.Hint:='Tiles '+inttostr(z)+'($'+inttohex(z)+')';
    Form1.Hint:=Form1.Hint+AnsiString(#13#10)+'$'+inttohex(tab_tiles[(row-1) mod 4][z].znak0)+' + $'+inttohex(tab_tiles[(row-1) mod 4][z].znak1);
    Form1.Hint:=Form1.Hint+AnsiString(#13#10)+attrib_names[tab_tiles[(row-1) mod 4][z].attrib];
    Form1.Hint:=Form1.Hint+AnsiString(#13#10)+inttostr(licz)+' x';
    Form1.Hint:=Form1.Hint+AnsiString(#13#10)+height0;
    Form1.Hint:=Form1.Hint+AnsiString(#13#10)+'Obj='+object_mnemonic[mapa1[col-1][row-1]];
   end;
   Application.ActivateHint(Mouse.CursorPos);
  end;

  if (mapa_mode=0) and (row1>0) then
  begin
    if (font0=(row1-1) mod 4) then DrawGrid10.Cursor:=crDefault else DrawGrid10.Cursor:=CrNo;
  end;

  if ((mapa_mode=1) or (mapa_mode=2)) and (row1>0) then
  begin
    if (mapa_mode-1=(row1-1) mod 2) then DrawGrid10.Cursor:=crDefault else DrawGrid10.Cursor:=CrNo;
  end;

  if (row1=0) or (col1=0) then DrawGrid10.Cursor:=crDefault;

end;

procedure TForm1.DrawGrid10MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button=mbRight) then prawy:=0;

  if (button=mbLeft) then
  begin
    button0d:=0;
    acol0:=-1;
    arow0:=-1;
  end;

  if (Button=mbMiddle) then srodek:=0;
end;

procedure TForm1.DrawGrid10SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
var
  i:byte;
begin
  if (button0d=1) and (aCol>0) and (aRow>0) then
  begin
    if (mapa_mode=0) and (((aRow-1) and 3)=font0) then    //mode=tile
    begin
      if tab_tiles[(aRow-1) and 3][tile0].znak0=EMPTY then exit;   //pusty tiles
      mapa[aCol-1][aRow-1]:=tile0;
      undo1_add;
    end;

    if (mapa_mode=1) and (((aRow-1) and 1)=0) then       //mode=mediumA
    begin
      mapa[(aCol-1)*2][(aRow-1)*2]:=mediumA[0];
      mapa[(aCol-1)*2+1][(aRow-1)*2]:=mediumA[1];
      mapa[(aCol-1)*2][(aRow-1)*2+1]:=mediumA[2];
      mapa[(aCol-1)*2+1][(aRow-1)*2+1]:=mediumA[3];
      undo1_add;
    end;

    if (mapa_mode=2) and (((aRow-1) and 1)=1) then       //mode=mediumB
    begin
      mapa[(aCol-1)*2][(aRow-1)*2]:=mediumB[0];
      mapa[(aCol-1)*2+1][(aRow-1)*2]:=mediumB[1];
      mapa[(aCol-1)*2][(aRow-1)*2+1]:=mediumB[2];
      mapa[(aCol-1)*2+1][(aRow-1)*2+1]:=mediumB[3];
      undo1_add;
    end;

    if (mapa_mode=3)  then                            //mode=Big
    begin
      for i:=0 to 15 do
       mapa[(aCol-1)*4+(i and 3)][(aRow-1)*4+(i shr 2)]:=big[i];
      undo1_add;
    end;

    if (mapa_mode=4) then                              //mode=objects
    begin
      mapa1[aCol-1][aRow-1]:=object0;
      for i:=0 to 8 do
          multi[aCol-1][aRow-1][i]:=0;

      calc_object();
    end;

    if (mapa_mode=5) and ((aCol<>aCol0) or (aRow<>aRow0)) then
    begin
         mapa2[aCol-1][aRow-1]:=mapa2[aCol-1][aRow-1] xor 1;                 //zmien wysokosc klocka
         aCol0:=acol;
         aRow0:=aRow;
    end;

    DrawGrid10.InvalidateCell(aCol,aRow);
  end;

end;

procedure TForm1.DrawGrid11Click(Sender: TObject);
begin
  wybor:=0;
  Form21.showModal;
  mask0:=wybor;
  DrawGrid11.Invalidate;
end;

procedure TForm1.DrawGrid11DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  bmp:TBitmap;
  x,y:byte;
  curRect:Trect;
begin
  if (mask0=255) then
  begin
    DrawGrid11.Canvas.Brush.Color:=clBlack;
    DrawGrid11.Canvas.FillRect(aRect);
    exit;
  end;


  bmp:=TBitmap.Create;
  bmp.width:=8;
  bmp.height:=8;
  bmp.pixelformat:=pf24bit;

  for y:=0 to 7 do
   for x:=0 to 7 do
     if (mask_table[0][mask0][y] and (128 shr x)) > 0 then
        bmp.Canvas.Pixels[x,y]:=clBlack else bmp.Canvas.Pixels[x,y]:=clNone;

  curRect.left:=aRect.left+4;
  curRect.right:=aRect.right-4;
  curRect.top:=aRect.top+4;
  curRect.bottom:=aRect.bottom-4;

  DrawGrid11.Canvas.Brush.Color:=clAqua;
  DrawGrid11.canvas.Rectangle(aRect);

  DrawGrid11.Canvas.CopyRect(curRect,bmp.Canvas,bmp.Canvas.ClipRect);

  bmp.free;

end;

procedure TForm1.DrawGrid12Click(Sender: TObject);
begin
  wybor:=1;
  Form21.showModal;
  mask1:=wybor;
  DrawGrid12.Invalidate;
end;

procedure TForm1.DrawGrid12DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  bmp:TBitmap;
  x,y:byte;
  curRect:Trect;
begin
  if (mask1=255) then
  begin
    DrawGrid12.Canvas.Brush.Color:=clBlack;
    DrawGrid12.Canvas.FillRect(aRect);
    exit;
  end;


  bmp:=TBitmap.Create;
  bmp.width:=8;
  bmp.height:=8;
  bmp.pixelformat:=pf24bit;

  for y:=0 to 7 do
   for x:=0 to 7 do
     if (mask_table[1][mask1][y] and (128 shr x)) > 0 then
        bmp.Canvas.Pixels[x,y]:=clBlack else bmp.Canvas.Pixels[x,y]:=clNone;

  curRect.left:=aRect.left+4;
  curRect.right:=aRect.right-4;
  curRect.top:=aRect.top+4;
  curRect.bottom:=aRect.bottom-4;

  DrawGrid12.Canvas.Brush.Color:=clAqua;
  DrawGrid12.canvas.Rectangle(aRect);

  DrawGrid12.Canvas.CopyRect(curRect,bmp.Canvas,bmp.Canvas.ClipRect);

  bmp.free;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  font0:=ComboBox1.ItemIndex;
  znak0:=tab_tiles[font0][tile0].znak0;
  znak1:=tab_tiles[font0][tile0].znak1;
  attrib0:=tab_tiles[font0][tile0].attrib;
  mask0:=mask_tile[font0][tile0 and 63][0];
  DrawGrid11.invalidate;
  mask1:=mask_tile[font0][tile0 and 63][1];
  DrawGrid12.invalidate;
  ComboBox3.ItemIndex:=attrib0;
  copy_znak0;
  copy_znak1;
  undo0_clear;
  Refresh_edit;
  if (mapa_mode=0) or (mapa_mode=4) then                  //odswiezaj tylko w tile lub object mode
  begin
   if alpha=0 then
     DrawGrid10.InvalidateCol(0)
   else
      DrawGrid10.invalidate;
  end;
end;

//wybor znaku 0
procedure TForm1.Button1Click(Sender: TObject);
begin
  wybor:=-1;
  Form3.ShowModal;
  if (wybor>-1) then
  begin
    znak0:=wybor;
    copy_znak0;
    undo0_clear;
    Refresh_edit;
  end;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
  Form16.show;
end;

//shift left
procedure TForm1.Button21Click(Sender: TObject);
var
  x,y,a:byte;
begin
  for y:=0 to 7 do
  begin
   a:=ksztalt[0][y];
   for x:=0 to 6 do
      ksztalt[x][y]:=ksztalt[x+1][y];

   ksztalt[7][y]:=a;
  end;
  drawgrid1.invalidate;
  undo0_add;
end;

//shift right
procedure TForm1.Button22Click(Sender: TObject);
var
  x,y,a:byte;
begin
  for y:=0 to 7 do
  begin
    a:=ksztalt[7][y];
    for x:=6 downto 0 do
        ksztalt[x+1][y]:=ksztalt[x][y];

    ksztalt[0][y]:=a;
  end;
  drawgrid1.invalidate;
  undo0_add;
end;

//shift down
procedure TForm1.Button23Click(Sender: TObject);
var
  x,y,a:byte;
begin
  for x:=0 to 7 do
  begin
   a:=ksztalt[x][7];
   for y:=6 downto 0 do
    ksztalt[x][y+1]:=ksztalt[x][y];

   ksztalt[x][0]:=a;
  end;
  drawgrid1.invalidate;
  undo0_add;
end;

//shift up
procedure TForm1.Button24Click(Sender: TObject);
var
  x,y,a:byte;
begin
  for x:=0 to 7 do
  begin
    a:=ksztalt[x][0];
    for y:=1 to 7 do
     ksztalt[x][y-1]:=ksztalt[x][y];

    ksztalt[x][7]:=a;
  end;
  drawgrid1.invalidate;
  undo0_add;
end;

//mirrorH
procedure TForm1.Button25Click(Sender: TObject);
var
  x,y,a:byte;
begin
  for x:=0 to 7 do
    for y:=0 to 3 do
    begin
      a:=ksztalt[x][y];
      ksztalt[x][y]:=ksztalt[x][7-y];
      ksztalt[x][7-y]:=a;
    end;

  drawgrid1.invalidate;
  undo0_add;
end;

//mirrorV
procedure TForm1.Button26Click(Sender: TObject);
var
  x,y,a:byte;
begin
  for y:=0 to 7 do
    for x:=0 to 3 do
    begin
      a:=ksztalt[x][y];
      ksztalt[x][y]:=ksztalt[7-x][y];
      ksztalt[7-x][y]:=a;
    end;
  drawgrid1.invalidate;
  undo0_add;
end;

//mediumA DELETE
procedure TForm1.Button11Click(Sender: TObject);
var
  i:byte;
  x:integer;
begin
  if (medium_table[0][mediumA0][0]<>EMPTY) then
  begin
     x:=MessageDlg('Are you sure ?', mtConfirmation, mbYesNo, 0);
     if x=mrYes then
     begin
      for i:=0 to 3 do
      begin
           medium_table[0][mediumA0][i]:=EMPTY;
           mediumA[i]:=EMPTY;
      end;
      DrawGrid7.Invalidate;
     end;
  end;
end;

//mediumB DELETE
procedure TForm1.Button12Click(Sender: TObject);
var
  i:byte;
  x:integer;
begin
  if (medium_table[1][mediumB0][0]<>EMPTY) then
  begin

     x:=MessageDlg('Are you sure ?', mtConfirmation, mbYesNo, 0);
     if x=mrYes then
     begin
      for i:=0 to 3 do
      begin
           medium_table[1][mediumB0][i]:=EMPTY;
           mediumB[i]:=EMPTY;
      end;
      DrawGrid8.Invalidate;
     end;
  end;
end;

procedure TForm1.Button13Click(Sender: TObject);
var
  flaga,i:byte;
begin
  flaga:=0;
  for i:=0 to 15 do
    if big[i]<>EMPTY then flaga:=flaga+1;

  if flaga=16 then        //wszystkie tilesy sa wybrane
    for i:=0 to 15 do
        big_table[big0][i]:=big[i];

end;

procedure TForm1.Button14Click(Sender: TObject);
var
  i:byte;
  x:integer;
begin
  if (big_table[big0][0]<>EMPTY) then
  begin
     x:=MessageDlg('Are you sure ?', mtConfirmation, mbYesNo, 0);
     if x=mrYes then
     begin
      for i:=0 to 15 do
      begin
           big_table[big0][i]:=EMPTY;
           big[i]:=EMPTY;
      end;
      DrawGrid9.Invalidate;
     end;
  end;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
     Form15.show;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  undo1_undo;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  undo1_redo;
end;

procedure TForm1.Button18Click(Sender: TObject);
var
  i,ii:byte;
begin

  if (DrawGrid1.Visible) then
  begin
   for i:=0 to 7 do
    for ii:=0 to 7 do
       ksztalt1[i][ii]:=ksztalt[i][ii];

   button5.enabled:=true;
  end;
end;

procedure TForm1.Button19Click(Sender: TObject);
var
  i,ii:byte;
  napis:string;
begin
  wybor:=ComboBox4.ItemIndex;
  Form8.Showmodal;

  ComboBox4.Clear;
  ComboBox4.Items.Add('ERASER');
  ii:=1;
  for i:=1 to 255 do
      if (length(object_mnemonic[i])>0) then
      begin
         napis:=object_description[i]+'='+inttostr(i)+' , '+object_mnemonic[i];
         ComboBox4.Items.Add(napis);
         object_number[ii]:=i;
         ii:=ii+1;
      end;

  ComboBox4.ItemIndex:=wybor;
  object0:=object_number[wybor];
  calc_object();
end;

//MediumB SAVE
procedure TForm1.Button10Click(Sender: TObject);
var
  i:byte;
begin
  if (mediumB[0]<>EMPTY) and (mediumB[1]<>EMPTY) and (mediumB[2]<>EMPTY) and (mediumB[3]<>EMPTY) then
     for i:=0 to 3 do
         medium_table[1][mediumB0][i]:=mediumB[i];
end;

//wybor znaku 1
procedure TForm1.Button2Click(Sender: TObject);
begin
  wybor:=-1;
  Form3.ShowModal;
  if (wybor>-1) then
  begin
    znak1:=wybor;
    copy_znak1;
    undo0_clear;
    Refresh_edit;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form5.showmodal;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i,ii,a,sektor0:byte;
begin
  if (znak0<>EMPTY) and (znak1<>EMPTY) then
  begin
    tab_tiles[font0][tile0].znak0:=znak0;
    tab_tiles[font0][tile0].znak1:=znak1;

    if mask_enabled[0] then mask_tile[font0][tile0 and 63][0]:=mask0;
    if mask_enabled[1] then mask_tile[font0][tile0 and 63][1]:=mask1;

    if (easyMode>0) then
    begin
      tab_tiles[font0][tile0].attrib:=attrib0;
      tab_tiles[font0][tile0 xor 64].attrib:=attrib0;
    end
    else tab_tiles[font0][tile0].attrib:=attrib0;

    DrawGrid10.Invalidate;
    DrawGrid7.invalidate;
    DrawGrid8.Invalidate;
    DrawGrid9.Invalidate;
    for i:=0 to 3 do
     for ii:=0 to 7 do
     begin
          if (znaki1[znak0 and 127]=2) and (sektor_enabled[sektor]=1) then sektor0:=sektor else sektor0:=0;
          a:=ksztalt[i][ii];
          if (znak0>127) and (a=4) then a:=3;
          znaki[sektor0][font0][znak0 and 127][i][ii]:=a;
          znaki0[sektor0][font0][znak0 and 127]:=1;   //uzywany

          if (znaki1[znak1 and 127]=2) and (sektor_enabled[sektor]=1) then sektor0:=sektor else sektor0:=0;
          a:=ksztalt[i+4][ii];
          if (znak1>127) and (a=4) then a:=3;
          znaki[sektor0][font0][znak1 and 127][i][ii]:=a;
          znaki0[sektor0][font0][znak1 and 127]:=1;   //uzywany
     end;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  i,ii,a,b:byte;
begin
  a:=0;
  b:=0;
  if (DrawGrid1.Visible) then
  begin
   for i:=0 to 3 do
    for ii:=0 to 7 do
    if (easyMode=0) then
    begin
     if (ksztalt1[i][ii]=4) then a:=128;
     ksztalt[i][ii]:=ksztalt1[i][ii];
     if ((znak0 and 127) = (znak1 and 127)) then
     begin
       ksztalt[i+4][ii]:=ksztalt1[i][ii];
       b:=a;
     end
     else
     begin
      if (ksztalt1[i+4][ii]=4) then b:=128;
      ksztalt[i+4][ii]:=ksztalt1[i+4][ii];
     end;
     znak0:=(znak0 and 127) or a;
     znak1:=(znak1 and 127) or b;
     //Refresh_edit;
    end
    else
    begin
     a:=ksztalt1[i][ii];
     if ((a=4) and (tile0<64)) then a:=3;
     if ((a=3) and (tile0>63)) then a:=4;
     ksztalt[i][ii]:=a;
     a:=ksztalt1[i+4][ii];
     if ((a=4) and (tile0<64)) then a:=3;
     if ((a=3) and (tile0>63)) then a:=4;
     ksztalt[i+4][ii]:=a;
    end;
    Refresh_edit;
    undo0_add;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  i,ii,a:byte;
begin
  a:=SelectColor;
  if (EasyMode=1) and (SelectColor>2) then
    if (znak0<128) then a:=3 else a:=4;


    for i:=0 to 7 do
     for ii:=0 to 7 do
         ksztalt[i][ii]:=a;

  undo0_add;
  Refresh_edit;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  undo0_undo;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  undo0_redo;
end;

//MediumA SAVE
procedure TForm1.Button9Click(Sender: TObject);
var
  i:byte;
begin
  if (mediumA[0]<>EMPTY) and (mediumA[1]<>EMPTY) and (mediumA[2]<>EMPTY) and (mediumA[3]<>EMPTY) then
     for i:=0 to 3 do
         medium_table[0][mediumA0][i]:=mediumA[i];
end;

procedure TForm1.CheckBox1Change(Sender: TObject);
var
  i,ii:integer;
begin
  //DrawGrid10.Invalidate;

  for i:=0 to DrawGrid10.VisibleColCount-1 do
   for ii:=0 to DrawGrid10.VisibleRowCount-1 do
     if (mapa1[DrawGrid10.LeftCol+i-1][DrawGrid10.TopRow+ii-1]>0) then DrawGrid10.InvalidateCell(DrawGrid10.LeftCol+i,DrawGrid10.TopRow+ii);

end;

procedure TForm1.CheckBox2Change(Sender: TObject);
begin
  if CheckBox2.checked=false then  DrawGrid7.GridLineWidth:=0 else DrawGrid7.GridLineWidth:=1;
  //DrawGrid7.Invalidate;
end;

procedure TForm1.CheckBox3Change(Sender: TObject);
begin
  if CheckBox3.checked=false then  DrawGrid8.GridLineWidth:=0 else DrawGrid8.GridLineWidth:=1;
  //DrawGrid8.Invalidate;
end;

procedure TForm1.CheckBox4Change(Sender: TObject);
begin
  if CheckBox4.Checked then DrawGrid9.GridLineWidth:=1 else DrawGrid9.GridLineWidth:=0;
  //DrawGrid9.invalidate;
end;

procedure TForm1.CheckBox5Change(Sender: TObject);
begin
  if checkbox5.checked then DrawGrid10.GridLineWidth:=1 else DrawGrid10.GridLineWidth:=0;
  button0d:=0;
  //DrawGrid10.Invalidate;
end;

procedure TForm1.CheckBox6Change(Sender: TObject);
begin
  alpha:=alpha xor 200;
  drawgrid10.invalidate;
  button0d:=0;
end;

procedure TForm1.CheckBox7Change(Sender: TObject);
begin
  if CheckBox7.checked then multicolor_on:=1 else multicolor_on:=0;
  multi_calc();             //przelicz tablice kolorow
  drawgrid10.invalidate;
end;

//puszczono przycisk myszki
procedure TForm1.DrawGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0:=0;
end;

//narysuj wybrany kolor
procedure TForm1.DrawGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
var
  a:byte;
begin
  if (button0=1) then
  begin
    a:=ksztalt[aCol][aRow];
    if ((znak0 and 127)=(znak1 and 127)) then
    begin
       ksztalt[aCol][aRow]:=selectColor;
       if (selectColor<3) then ksztalt[aCol xor 4][aRow]:=selectColor;

       if(EasyMode=1) and (selectColor>2) then
       begin
        if(tile0<128) then ksztalt[aCol][aRow]:=3 else ksztalt[aCol][aRow]:=4;
        exit;
       end;

       if (selectColor=3) and (aCol<4) then
       begin
         znak0:=znak0 and 127;
         if ((znak1 and 128)=128) then ksztalt[aCol+4][aRow]:=4 else ksztalt[aCol+4][aRow]:=3;
       end;
       if (selectColor=4) and (aCol<4) then
       begin
         znak0:=znak0 or 128;
         if ((znak1 and 128)=128) then ksztalt[aCol+4][aRow]:=4 else ksztalt[aCol+4][aRow]:=3;
       end;
       if (selectColor=3) and (aCol>3) then
       begin
         znak1:=znak0 and 127;
         if ((znak0 and 128)=128) then ksztalt[aCol-4][aRow]:=4 else ksztalt[aCol-4][aRow]:=3;
       end;
       if (selectColor=4) and (aCol>3) then
       begin
         znak1:=znak0 or 128;
         if ((znak0 and 128)=128) then ksztalt[aCol-4][aRow]:=4 else ksztalt[aCol-4][aRow]:=3;
       end;
    end
    else
    begin
         if(EasyMode=1) and (selectColor>2) then
         begin
          if(tile0<128) then ksztalt[aCol][aRow]:=3 else ksztalt[aCol][aRow]:=4;
          exit;
         end
         else
         begin
          ksztalt[ACol][ARow]:=selectColor;
          if (selectColor=3) and (aCol<4) then znak0:=znak0 and 127;
          if (selectColor=4) and (ACol<4) then znak0:=znak0 or 128;
          if (selectColor=3) and (aCol>3) then znak1:=znak1 and 127;
          if (selectColor=4) and (ACol>3) then znak1:=znak1 or 128;
         end;
    end;
    if (a<>ksztalt[aCol][aRow]) then undo0_add;            //tylko jesli cos sie zmienilo
    Refresh_edit;
  end;
end;

procedure TForm1.DrawGrid2Click(Sender: TObject);
begin
  wybor:=-1;
  Form2.ShowModal;
  if (wybor>-1) then
  begin
    KolorA[sektor][0]:=wybor;
    Kolor[sektor][0]:=paleta[wybor];
    DrawGrid2.Invalidate;
    DrawGrid1.Invalidate;   //odswiez okno edycji
    RadioButton1.Checked:=true;
    SelectColor:=0;
    if (sektor=0) then multi_calc();
    DrawGrid7.Invalidate;
    DrawGrid8.Invalidate;
    DrawGrid9.Invalidate;
    DrawGrid10.Invalidate;
  end;
end;

//rysuje barwe Background
procedure TForm1.DrawGrid2DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  DrawGrid2.Canvas.Brush.Color:=Kolor[sektor][0];
  DrawGrid2.Canvas.FillRect(aRect);
  Label5.caption:='$'+inttohex(KolorA[sektor][0]);
end;

procedure TForm1.DrawGrid3Click(Sender: TObject);
begin
  wybor:=-1;
  Form2.ShowModal;
  if (wybor>-1) then
  begin
    KolorA[sektor][1]:=wybor;
    Kolor[sektor][1]:=paleta[wybor];
    if (sektor=0) then multi_calc();
    DrawGrid3.Invalidate;
    DrawGrid1.Invalidate;   //odswiez okno edycji
    RadioButton2.checked:=true;
    SelectColor:=1;
    DrawGrid10.Invalidate;
  end;
end;


//rysuje barwe Color0
procedure TForm1.DrawGrid3DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  DrawGrid3.Canvas.Brush.Color:=Kolor[sektor][1];
  DrawGrid3.Canvas.FillRect(aRect);
  Label6.caption:='$'+inttohex(kolorA[sektor][1]);
end;


procedure TForm1.DrawGrid4Click(Sender: TObject);
begin
  wybor:=-1;
  Form2.ShowModal;
  if (wybor>-1) then
  begin
    KolorA[sektor][2]:=wybor;
    Kolor[sektor][2]:=paleta[wybor];
    if (sektor=0) then multi_calc();
    DrawGrid2.Invalidate;
    DrawGrid1.Invalidate;   //odswiez okno edycji
    RadioButton3.checked:=true;
    SelectColor:=2;
    DrawGrid7.Invalidate;
    DrawGrid8.Invalidate;
    DrawGrid9.Invalidate;
    DrawGrid10.Invalidate;
  end;
end;

//rysuje barwe Color1
procedure TForm1.DrawGrid4DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  DrawGrid4.Canvas.Brush.Color:=Kolor[sektor][2];
  DrawGrid4.Canvas.FillRect(aRect);
  Label7.caption:='$'+inttohex(kolorA[sektor][2]);
end;

procedure TForm1.DrawGrid5Click(Sender: TObject);
begin
  wybor:=-1;
  Form2.ShowModal;
  if (wybor>-1) then
  begin
    KolorA[sektor][3]:=wybor;
    Kolor[sektor][3]:=paleta[wybor];
    if (sektor=0) then multi_calc();
    DrawGrid5.Invalidate;
    DrawGrid1.Invalidate;   //odswiez okno edycji
    RadioButton4.checked:=true;
    SelectColor:=3;
    DrawGrid10.Invalidate;
  end;
end;

//rysuje barwe Color2
procedure TForm1.DrawGrid5DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  DrawGrid5.Canvas.Brush.Color:=Kolor[sektor][3];
  DrawGrid5.Canvas.FillRect(aRect);
  Label8.caption:='$'+inttohex(kolorA[sektor][3]);
end;

procedure TForm1.DrawGrid6Click(Sender: TObject);
begin
  wybor:=-1;
  Form2.ShowModal;
  if (wybor>-1) then
  begin
    KolorA[sektor][4]:=wybor;
    Kolor[sektor][4]:=paleta[wybor];
    if (sektor=0) then multi_calc();
    DrawGrid5.Invalidate;
    DrawGrid1.Invalidate;   //odswiez okno edycji
    RadioButton5.checked:=true;
    SelectColor:=4;
    DrawGrid7.Invalidate;
    DrawGrid8.Invalidate;
    DrawGrid9.Invalidate;
    DrawGrid10.Invalidate;
  end;
end;

//rysuje barwe Color3
procedure TForm1.DrawGrid6DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  DrawGrid6.Canvas.Brush.Color:=Kolor[sektor][4];
  DrawGrid6.Canvas.FillRect(aRect);
  Label20.caption:='$'+inttohex(kolorA[sektor][4]);
end;

procedure TForm1.DrawGrid7DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  a,b,c,i,ii,z0,z1,sektor0:byte;
  szer,wys:single;
  rect1:TRect;
begin
  if (mediumA[aCol+aRow*2]=EMPTY) then DrawGrid7.Canvas.TextRect(aRect, aRect.Left+15, aRect.Top+25, 'empty')
  else
  begin
    szer:=(aRect.Right-aRect.Left+1)/8;
    wys:=(aRect.bottom-aRect.Top+1)/8;

    z0:=tab_tiles[aRow][mediumA[aRow*2+aCol]].znak0;
    z1:=tab_tiles[aRow][mediumA[aRow*2+aCol]].znak1;
    if (z0<128) then a:=3 else a:=4;
    if (z1<128) then b:=3 else b:=4;
    for i:=0 to 3 do
     for ii:=0 to 7 do
     begin
       if (znaki1[z0 and 127]=2) and (sektor_enabled[sektor]=1) then sektor0:=sektor else sektor0:=0;
       c:=znaki[sektor0][aRow][z0 and 127][i][ii];
       if (c=3) then c:=a;
       DrawGrid7.Canvas.Brush.Color:=kolor[sektor0][c];
       rect1.Left:=aRect.Left+round(szer*i);
       rect1.Top:=aRect.Top+round(wys*ii);
       rect1.Right:=aRect.Left+round(szer*(i+1));
       rect1.Bottom:=aRect.Top+round(wys*(ii+1));
       DrawGrid7.Canvas.FillRect(rect1);

       if (znaki1[z0 and 127]=2) and (sektor_enabled[sektor]=1) then sektor0:=sektor else sektor0:=0;
       c:=znaki[sektor0][aRow][z1 and 127][i][ii];
       if (c=3) then c:=b;
       DrawGrid7.Canvas.Brush.Color:=kolor[sektor0][c];
       rect1.Left:=aRect.Left+round(szer*(i+4));
       rect1.Top:=aRect.Top+round(wys*ii);
       rect1.Right:=aRect.Left+round(szer*(i+1+4));
       rect1.Bottom:=aRect.Top+round(wys*(ii+1));
       DrawGrid7.Canvas.FillRect(rect1);
     end;
  end;

end;

procedure TForm1.DrawGrid7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0a:=1;
end;

procedure TForm1.DrawGrid7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  z:byte;
  col,row:integer;
begin
  DrawGrid7.MouseToCell(X, Y, col, row);
  z:=col+row*2;
  Form1.Hint:='';
  if (mediumA[z]<>EMPTY) then
  begin
    Form1.Hint:='Tile $'+inttohex(mediumA[z]);
    Form1.Hint:=Form1.Hint+AnsiString(#13#10)+'$'+inttohex(tab_tiles[row][mediumA[z]].znak0)+' + $'+inttohex(tab_tiles[row][mediumA[z]].znak1);
    Form1.Hint:=Form1.Hint+AnsiString(#13#10)+attrib_names[tab_tiles[row][mediumA[z]].attrib];
  end;
  Application.ActivateHint(Mouse.CursorPos);
end;

procedure TForm1.DrawGrid7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0a:=0;
end;

procedure TForm1.DrawGrid7SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin
  if button0a=1 then
  begin
    button0a:=0;
    wybor:=-1;
    font1:=aRow;
    Form4.ShowModal;
    if (wybor>-1) and (tab_tiles[font1][wybor].znak0<>255) then
    begin
      mediumA[aCol+aRow*2]:=wybor;
      DrawGrid7.invalidate;
    end;
  end;
end;

procedure TForm1.DrawGrid8DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  a,b,c,i,ii,z0,z1,sektor0:byte;
  szer,wys:single;
  rect1:TRect;
begin
  if (mediumB[aCol+aRow*2]=EMPTY) then DrawGrid8.Canvas.TextRect(aRect, aRect.Left+15, aRect.Top+25, 'empty')
  else
  begin
    szer:=(aRect.Right-aRect.Left+1)/8;
    wys:=(aRect.bottom-aRect.Top+1)/8;

    z0:=tab_tiles[aRow+2][mediumB[aRow*2+aCol]].znak0;
    z1:=tab_tiles[aRow+2][mediumB[aRow*2+aCol]].znak1;
    if (z0<128) then a:=3 else a:=4;
    if (z1<128) then b:=3 else b:=4;
    for i:=0 to 3 do
     for ii:=0 to 7 do
     begin
       if (znaki1[z0 and 127]=2) and (sektor_enabled[sektor]=1) then sektor0:=sektor else sektor0:=0;
       c:=znaki[sektor0][aRow+2][z0 and 127][i][ii];
       if (c=3) then c:=a;
       DrawGrid8.Canvas.Brush.Color:=kolor[sektor0][c];
       rect1.Left:=aRect.Left+round(szer*i);
       rect1.Top:=aRect.Top+round(wys*ii);
       rect1.Right:=aRect.Left+round(szer*(i+1));
       rect1.Bottom:=aRect.Top+round(wys*(ii+1));
       DrawGrid8.Canvas.FillRect(rect1);

       if (znaki1[z0 and 127]=2) and (sektor_enabled[sektor]=1) then sektor0:=sektor else sektor0:=0;
       c:=znaki[sektor0][aRow+2][z1 and 127][i][ii];
       if (c=3) then c:=b;
       DrawGrid8.Canvas.Brush.Color:=kolor[sektor0][c];
       rect1.Left:=aRect.Left+round(szer*(i+4));
       rect1.Top:=aRect.Top+round(wys*ii);
       rect1.Right:=aRect.Left+round(szer*(i+1+4));
       rect1.Bottom:=aRect.Top+round(wys*(ii+1));
       DrawGrid8.Canvas.FillRect(rect1);
     end;
  end;

end;

procedure TForm1.DrawGrid8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0b:=1;
end;

procedure TForm1.DrawGrid8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  z:byte;
  col,row:integer;
begin
  DrawGrid8.MouseToCell(X, Y, col, row);
  z:=col+row*2;
  Form1.Hint:='';
  if (mediumB[z]<>EMPTY) then
  begin
    Form1.Hint:='Tile $'+inttohex(mediumB[z]);
    Form1.Hint:=Form1.Hint+AnsiString(#13#10)+'$'+inttohex(tab_tiles[row+2][mediumB[z]].znak0)+' + $'+inttohex(tab_tiles[row+2][mediumB[z]].znak1);
    Form1.Hint:=Form1.Hint+AnsiString(#13#10)+attrib_names[tab_tiles[row+2][mediumB[z]].attrib];
  end;
  Application.ActivateHint(Mouse.CursorPos);
end;

procedure TForm1.DrawGrid8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0b:=0;
end;

procedure TForm1.DrawGrid8SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin
  if button0b=1 then
  begin
    button0b:=0;
    wybor:=-1;
    font1:=aRow+2;
    Form4.ShowModal;
    if (wybor>-1) and (tab_tiles[font1][wybor].znak0<>255) then
    begin
      mediumB[aCol+aRow*2]:=wybor;
      DrawGrid8.invalidate;
    end;
  end;
end;

procedure TForm1.DrawGrid9DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  a,b,c,i,ii,x,x1,x2,y2,z0,z1,sektor0:byte;
  szer,wys:single;
  rect1:TRect;
begin
  if big_mode=0 then
  begin
    if (big[aCol+aRow*4]=EMPTY) then DrawGrid9.Canvas.TextRect(aRect, aRect.Left+15, aRect.Top+25, 'empty')
    else
    begin
      szer:=(aRect.Right-aRect.Left+1)/8;
      wys:=(aRect.bottom-aRect.Top+1)/8;

      z0:=tab_tiles[aRow][big[aRow*4+aCol]].znak0;
      z1:=tab_tiles[aRow][big[aRow*4+aCol]].znak1;
      if (z0<128) then a:=3 else a:=4;
      if (z1<128) then b:=3 else b:=4;
      for i:=0 to 3 do
       for ii:=0 to 7 do
       begin
         if (znaki1[z0 and 127]=2) and (sektor_enabled[sektor]=1) then sektor0:=sektor else sektor0:=0;
         c:=znaki[sektor0][aRow][z0 and 127][i][ii];
         if (c=3) then c:=a;
         DrawGrid9.Canvas.Brush.Color:=kolor[sektor0][c];
         rect1.Left:=aRect.Left+round(szer*i);
         rect1.Top:=aRect.Top+round(wys*ii);
         rect1.Right:=aRect.Left+round(szer*(i+1));
         rect1.Bottom:=aRect.Top+round(wys*(ii+1));
         DrawGrid9.Canvas.FillRect(rect1);

         if (znaki1[z0 and 127]=2) and (sektor_enabled[sektor]=1) then sektor0:=sektor else sektor0:=0;
         c:=znaki[sektor0][aRow][z1 and 127][i][ii];
         if (c=3) then c:=b;
         DrawGrid9.Canvas.Brush.Color:=kolor[sektor0][c];
         rect1.Left:=aRect.Left+round(szer*(i+4));
         rect1.Top:=aRect.Top+round(wys*ii);
         rect1.Right:=aRect.Left+round(szer*(i+1+4));
         rect1.Bottom:=aRect.Top+round(wys*(ii+1));
         DrawGrid9.Canvas.FillRect(rect1);
       end;
    end;
  end
  else
  begin
   for x:=0 to 3 do
   begin
    x1:=(x and 1)+ ((x and 2) shl 1);
    x2:=8*(x and 1);
    y2:=8*((x and 2) shr 1);
    szer:=(aRect.Right-aRect.Left+1)/16;
    wys:=(aRect.bottom-aRect.Top+1)/16;
    if (big[aCol*2+aRow*8+x1]=EMPTY) then DrawGrid9.Canvas.TextRect(aRect, aRect.Left+15+round(8*szer*(x and 1)), aRect.Top+25+round(8*wys*(x shr 1)), 'empty')
    else
    begin
      z0:=tab_tiles[aRow*2+(x shr 1)][big[aRow*8+aCol*2+x1]].znak0;
      z1:=tab_tiles[aRow*2+(x shr 1)][big[aRow*8+aCol*2+x1]].znak1;
      if (z0<128) then a:=3 else a:=4;
      if (z1<128) then b:=3 else b:=4;
      for i:=0 to 3 do
       for ii:=0 to 7 do
       begin
         if (znaki1[z0 and 127]=2) and (sektor_enabled[sektor]=1) then sektor0:=sektor else sektor0:=0;
         c:=znaki[sektor0][aRow*2+(x shr 1)][z0 and 127][i][ii];
         if (c=3) then c:=a;
         DrawGrid9.Canvas.Brush.Color:=kolor[sektor0][c];
         rect1.Left:=aRect.Left+round(szer*(i+x2));
         rect1.Top:=aRect.Top+round(wys*(ii+y2));
         rect1.Right:=aRect.Left+round(szer*(i+1+x2));
         rect1.Bottom:=aRect.Top+round(wys*(ii+1+y2));
         DrawGrid9.Canvas.FillRect(rect1);

         if (znaki1[z0 and 127]=2) and (sektor_enabled[sektor]=1) then sektor0:=sektor else sektor0:=0;
         c:=znaki[sektor0][aRow*2+(x shr 1)][z1 and 127][i][ii];
         if (c=3) then c:=b;
         DrawGrid9.Canvas.Brush.Color:=kolor[sektor0][c];
         rect1.Left:=aRect.Left+round(szer*(i+4+x2));
         rect1.Top:=aRect.Top+round(wys*(ii+y2));
         rect1.Right:=aRect.Left+round(szer*(i+1+4+x2));
         rect1.Bottom:=aRect.Top+round(wys*(ii+1+y2));
         DrawGrid9.Canvas.FillRect(rect1);
       end;
    end;
   end;
  end;

end;

procedure TForm1.DrawGrid9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button0c:=1;
end;

procedure TForm1.DrawGrid9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  z:byte;
  col,row:integer;
begin
  DrawGrid9.MouseToCell(X, Y, col, row);
  z:=col+row*4;
  Form1.Hint:='';
  if (big[z]<>EMPTY) and (big_mode=0) then
  begin
    Form1.Hint:='Tile $'+inttohex(big[z]);
    Form1.Hint:=Form1.Hint+AnsiString(#13#10)+'$'+inttohex(tab_tiles[row][big[z]].znak0)+' + $'+inttohex(tab_tiles[row][big[z]].znak1);
    Form1.Hint:=Form1.Hint+AnsiString(#13#10)+attrib_names[tab_tiles[row][big[z]].attrib];
  end;
  Application.ActivateHint(Mouse.CursorPos);
end;

procedure TForm1.DrawGrid9SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
var
  i:byte;
begin
  wybor:=-1;
  if button0c=1 then
   if big_mode=0 then
   begin
    font1:=aRow;
    Form4.showmodal;
    if (wybor>-1) and (tab_tiles[font1][wybor].znak0<>255) then
       big[aCol+aRow*4]:=wybor;
   end
   else
   begin
    font1:=aRow * 2;
    Form6.showmodal;
    if wybor>-1 then
       for i:=0 to 3 do
           big[aCol*2+(i and 1)+aRow*8+((i and 2) shl 1)]:=medium_table[aRow][wybor][i];
   end;
   button0c:=0;
   DrawGrid9.invalidate;
end;

end.

