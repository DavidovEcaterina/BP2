Program lab2;
Type
  Puncte = Record
    x: integer;
    y: integer;
  end;
  Element = ^Nod;
  Nod = Record
    val: Puncte;
    link: Element;
  end;
Var
  stiva: Element;
  temp: Element;
  parc: Element;
  key, a, b: integer;
  check: boolean;
  r, s: real;
Begin
  stiva:= Nil;
  Repeat
    New(temp);
    writeln('x=');
    readln(temp^.val.x);
    writeln('y=');
    readln(temp^.val.y);
    temp^.link:= stiva;
    stiva:= temp;
    writeln('Нажмите 1 если хотите добавить еще один элемент или 0,чтобы закончить: ');
    readln(key);
  Until key = 0;
  writeln('Введите a:');
  readln(a);
  writeln('Введите b:');
  readln(b);
  writeln('Введите r:');
  readln(r);
  parc:= stiva;
  while(parc <> nil) do begin
    s:=sqrt(sqr(a-parc^.val.x) + sqr(b-parc^.val.y));
    if s < r then writeln('Точка лежит в окружности')
    else 
    writeln('Точка НЕ лежит в окружности');
    parc:= parc^.link;
  end;
End.