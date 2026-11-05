program HitungFaktorialRekursif;
uses crt;

function Faktorial(n: integer): longint;
begin
  if (n = 0) or (n = 1) then
    Faktorial := 1
  else
    Faktorial := n * Faktorial(n - 1);
end;

var
  nilai: integer;
begin
  clrscr;
  nilai := 7; 
  writeln('Input -> Nilai : ', nilai);
  writeln('Output -> Hasil : ', Faktorial(nilai));
  readln;
end.