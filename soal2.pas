program CekBilanganPrima;
uses crt;

function CekPrima(angka: integer): string;
var
  i: integer;
  isPrima: boolean;
begin
  if angka <= 1 then
    CekPrima := 'Non-Prima'
  else
  begin
    isPrima := true;
    for i := 2 to trunc(sqrt(angka)) do
    begin
      if angka mod i = 0 then
      begin
        isPrima := false;
        break;
      end;
    end;
    
    if isPrima then
      CekPrima := 'Prima'
    else
      CekPrima := 'Non-Prima';
  end;
end;

var
  angka: integer;
begin
  clrscr;
  angka := 6; { Sesuai input soal }
  writeln('Input -> Angka : ', angka);
  writeln('Output -> ', CekPrima(angka));
  readln;
end.