uses crt;

var
  text: text;
  s: real;
  i, n, max, d, z,x,j: integer;
  a: array [1..20] of integer;

procedure sv;
var
  i: integer;
  begin
n := 20;
  for i:=2 to n do
     begin
  x:=a[i];
  j:=i-1;
while (j>0) and (x<a[j]) do
   begin
  a[j+1]:=a[j];
  j:=j-1;
  end;
  a[j+1]:=x;
  end;
end;

procedure ps(n: integer);
var
  key, i, j, count: integer;
begin
  for i := 1 to n do
  begin
    count := A[i]; key := i;
    for j := i + 1 to n do
      if (A[key] > A[j]) then key := j;
    if (key <> i) then
    begin
      A[i] := A[key];
      A[key] := count;
    end;
  end;
end;

begin
  assign(text, '1234.txt');
  reset(text);
  i := 1;
  while not eoln(text) do 
  begin
    Read(text, a[i]);
    i += 1;
  end;
  close(text);
  rewrite(text);
  repeat
    ClrScr;
    writeln('Выберите метод сортировки');
    writeln('Сортировка вставками - 1');
    writeln('Поразрядная сортировка - 2');
    writeln('Выход - 0');
    Readln(z);
    case z of
      1: sv;
      2: ps(20);
    end;
  until z = 0;
  for i := 1 to 20 do
  begin
    write(text, a[i]);
    write(text, ' ');
  end;
  
  close(text);
end.
