program DeretFibonacciN;
uses crt;

procedure TampilkanFibonacci(n: integer);
var
  i: integer;
  f1, f2, nextF: longint;
begin
  f1 := 1;
  f2 := 1;
  write('Output -> Deret Fibonacci : ');
  for i := 1 to n do
  begin
    if i = 1 then
      write(f1, ' ')
    else if i = 2 then
      write(f2, ' ')
    else
    begin
      nextF := f1 + f2;
      f1 := f2;
      f2 := nextF;
      write(nextF, ' ');
    end;
  end;
  writeln;
end;

var
  nilai: integer;
begin
  clrscr;
  nilai := 7;
  writeln('Input -> Nilai : ', nilai);
  TampilkanFibonacci(nilai);
  readln;
end.