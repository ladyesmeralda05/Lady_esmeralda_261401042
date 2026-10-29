program arraylady;
uses crt;

var
kursi: array[1..1000] of integer;
i, n : integer;

begin 
clrscr;

write('masukkan batar index = ');
readln(n);

// ini untuk input data tidak scr manual
for i := 1 to n do 
begin 
write(kursi[i], ' ');
end;
writeln;

// akses data
for i := n downto 1 do 
begin 
write(kursi[i], '');
end;

end.