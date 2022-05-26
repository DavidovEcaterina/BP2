Program P1;
var N,max:integer;
begin
write('Vvedite N=');
readln(N);
max:=0;
while N>0 do
 begin
  if N mod 10>max then max:=N mod 10;
  N:=N div 10;
 end;
write('Maksimalinaia tsifra ', max);
end.
