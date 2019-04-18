unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus, Math, lazUTF8, LCLProc;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
  var
      myDate: TDateTime;
      formattedDateTime, s,v:string;
begin
  s:=FormatDateTime('dd mmmm yyyy',Date);
  Edit1.Text:=s;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
float:single;
begin
  randomize;
  float:=0;
  float:=1+Random(1)+(random(1000)/(999));
  edit1.text:=formatfloat('0.000',float);

end;

procedure TForm1.Button3Click(Sender: TObject);
var
 a, t, stat:String;
 lengh:byte;
begin
  stat:=(' кожна людина має право на вільний розвиток своєї особистості , якщо при цьому не порушуються права і свободи інших людей , та має обов''язки перед суспільством , в якому забезпечується вільний і всебічний розвиток її особистості .');
     a:=(UTF8LowerCase(edit1.text));
  while pos(',',a)<>0 do
     a[pos(',',a)] := ' ';
  while pos('.',a)<>0 do
     a[pos('.',a)] := ' ';
  while pos(':',a)<>0 do
     a[pos(':',a)] := ' ';
  while pos('-',a)<>0 do
     a[pos('-',a)] := ' ';
  while pos('?',a)<>0 do
     a[pos('?',a)] := ' ';
  while pos('!',a)<>0 do
     a[pos('!',a)] := ' ';
  while pos('"',a)<>0 do
     a[pos('"',a)] := ' ';
   while pos(';',a)<>0 do
     a[pos(';',a)] := ' ';
   lengh:=length(a);
   if lengh<(1.5) then edit1.text:=(' Не введено слово ') else begin
    lengh:=length(a);
    t:=a;
    insert(' ',a,1);
    if (a[(pos(' ',a))]=stat[(pos(t,stat)-1)]) and  (a[(pos(' ',a))]=stat[(pos(t,stat)+lengh)]) then
  begin
    edit1.text:=(' Введене слово наявне у статті 23 Конституції України ');
    end else
    edit1.text:=(' Введеного слова немає у статті 23 Конституції України ');
    end;
   end;


procedure TForm1.Button4Click(Sender: TObject);

begin

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  ShowMessage('Розробник:Тарасенко Євген Олегович, ЦНТУ, 2019р.');
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  ShowMessage('За натисненням кнопки Дата виводится поточна дата.'+#10#13+'За натисненням кнопки Випадкове число виводится випадкове дійсне число від 1.000 до 1.999.'+#10#13+'За натисненняс кнопки Перевірити-повідомлення, чи є введене слово користувачем у наступній частині вірша Василя Симоненка"Матері"');
end;

end.

