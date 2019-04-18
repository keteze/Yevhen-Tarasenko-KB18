program TARASENKO_example;
var
c,i:byte;
Ft,t,st:real;
b:char;
begin
  repeat
    c:=0;
    for i:=1 to 6 do
    begin
      writeln('Введiть температуту о ',c,':00. ');
      readln(t);
      st:=st+t;
      c:=c+4;
      end;
    st:=st/6;
    Ft:=32+9/5*st;
    writeln('Середня температура у Фарингейтах' , ft:1:2);
    writeln('Середня температура у Цельсiях' ,st:1:2);
    writeln('Натиснiть q для виходу з програми');
    readln(b);
    until (b='q');
    end.
end.

