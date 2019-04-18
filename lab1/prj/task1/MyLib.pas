Unit MyLib;
interface
uses Dialogs, Classes, SysUtils;
function AntiVilet(var str:string):boolean; //Перевірка на валідність рядка
procedure AntiDot( var str:string ); // Заміна точки на кому
function AntiChar( var str: string):boolean;   //Перевірка на коректні символи
function AntiVoid( var str: string):boolean;  //Перевірка чи не пусте поле
function Anti2dot( var Text:string):boolean;  //Перевірка 2 ком
function Anti1stdot( var Text:string):boolean; //Перевірка чи не перша кома
function Afterdot( var Text:string):boolean;    //Перевірка чи стоїть після коми cимвол
function Anti2Minus (var Text:string):boolean; //Перевірка чи не 2 мінуси
function AntiMin (var Text:string):boolean; //Перевірка чи стоїть мінус першим в рядку
function Afterminus( var Text:string):boolean;     //Перевірка чи стоїть після мінуса символ
function ComaAfterMin (var Text:string):boolean;  //Перевірка чи не стоїть кома після мінуса

implementation

function AntiVilet(var str:string):boolean;
begin
   AntiVilet:=false;
   if length(str)>255 then
    AntiVilet:=true;
end;

procedure AntiDot(var str:string);
var
  i:integer;
begin
 for i:=1 to length(str) do
  if (str[i]='.')or(str[i]=',') then
   begin
    str[i]:=',';
   end;
end;

function AntiChar (var str:string):boolean;
var
  i,a:integer;
begin
 a:=0;
 AntiChar:=true;
  for i:=1 to length(str) do
   if (str[i]<>#48)and(str[i]<>#49)and(str[i]<>#50)and(str[i]<>#51)and(str[i]<>#52)and(str[i]<>#53)and(str[i]<>#54)and(str[i]<>#55)and(str[i]<>#56)and(str[i]<>#57)and(str[i]<>#44)and(str[i]<>#45)and(str[i]<>#46) then
    a:=a+1;
      if a>0 then
     AntiChar:=false;
end;

function AntiVoid( var str: string):boolean;
begin
  AntiVoid:=false;
   if str = '' then
    AntiVoid:= true;
end;

function Anti2dot( var Text:string):boolean;
var
  i:integer;
  a:byte;
begin
  Anti2dot:=false;
  a:=0;
  for i:=1 to length(Text) do
  if (Text[i]='.')or(Text[i]=',') then
   a:=a+1;
  if a>1 then
  Anti2dot:=true
  else
   Anti2dot:=false;
end;

function Anti1stdot( var Text:string):boolean;
begin
 Anti1stdot:=false;
 if pos(',',Text)=1 then
 Anti1stdot:=true;
end;

function Afterdot( var Text:string):boolean;
begin
 Afterdot:=false;
 if (pos(',',Text)=(length(Text))) then
 Afterdot:=true;
end;

function Anti2Minus (var Text:string):boolean;
var
  i:integer;
  a:byte;
begin
  Anti2Minus:=false;
  a:=0;
  for i:=1 to length(Text) do
  if (Text[i]='-') then
   a:=a+1;
  if a>1 then
  Anti2Minus:=true
  else
   Anti2Minus:=false;
end;

function AntiMin (var Text:string):boolean;
begin
  AntiMin:=false;
  if pos('-',Text)>1 then
   AntiMin:=true;
end;

function ComaAfterMin (var Text:string):boolean;
begin
  ComaAfterMin:=false;
 if pos(',',Text)=(pos('-',Text)+1) then
  ComaAfterMin:=true;
end;

function Afterminus( var Text:string):boolean;
begin
 Afterminus:=false;
 if pos('-',Text)=(length(Text)) then
 Afterminus:=true;
end;

end.
