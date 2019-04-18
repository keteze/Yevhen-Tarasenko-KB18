unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Math, MyLib, LResources, ExtCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
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
  q,x,y,z:extended;
  a,b,c:boolean;
  str,str1,str2:string;
begin
  a:=false;
  b:=false;
  c:=false;
  str:=Edit1.Text;
  AntiDot(str);
  Edit1.Text:=str;
  if AntiVoid(str)=false then
  begin
  if AntiChar(str)=true then
  begin
  if Afterminus(str)=false then
  begin
  if Anti2dot(str)=false then
  begin
  if Anti1stdot(str)=false then
  begin
  if Afterdot(str)=false then
  begin
  if Anti2Minus(str)=false then
  begin
  if AntiMin(str)=false then
  begin
  if ComaAfterMin(str)=false then
  begin
   a:=true;
  end
   else
   Label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'заповніть усі поля вводу...';
  str1:=Edit2.Text;
  AntiDot(str1);
  Edit2.Text:=str1;
  if AntiVoid(str1)=false then
  begin
  if AntiChar(str1)=true then
  begin
  if Afterminus(str1)=false then
  begin
  if Anti2dot(str1)=false then
  begin
  if Anti1stdot(str1)=false then
  begin
  if Afterdot(str1)=false then
  begin
  if Anti2Minus(str1)=false then
  begin
  if AntiMin(str1)=false then
  begin
  if ComaAfterMin(str1)=false then
  begin
   b:=true;
  end
   else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'заповніть усі поля вводу...';
  str2:=Edit3.Text;
  AntiDot(str2);
  Edit3.Text:=str2;
  if AntiVoid(str2)=false then
  begin
  if AntiChar(str2)=true then
  begin
  if Afterminus(str2)=false then
  begin
  if Anti2dot(str2)=false then
  begin
  if Anti1stdot(str2)=false then
  begin
  if Afterdot(str2)=false then
  begin
  if Anti2Minus(str2)=false then
  begin
  if AntiMin(str2)=false then
  begin
  if ComaAfterMin(str2)=false then
  begin
   c:=true;
  end
   else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
  end
  else
   label1.Caption:='ПОМИЛКА:'#13+'заповніть усі поля вводу...';
  if (a=true)and(b=true)and(c=true) then
  begin
    x:=StrToFloat(Edit1.Text);
    y:=StrToFloat(Edit2.Text);
    z:=StrToFloat(Edit3.Text);
   if power(x,y+z)=0 then
   label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
   else
     if (y=0) and (x<0) then
    label1.Caption:='ПОМИЛКА:'#13+'введено некоректне значення...'
    else
     begin
  q:=abs(z+Pi*((sqrt(abs(y+((1/2)*z))))/((power(x,y+z))))-cos(z+(power(y,x))));


  label1.caption:='Q = '+floattostr(q);
           end;
       end;
  end;


procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit2Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Picture.LoadFromResourceName(HINSTANCE,'FORMULA');
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  ShowMessage('Розробник:Тарасенко Євген Олегович, ЦНТУ, 2019р.');
end;

end.

