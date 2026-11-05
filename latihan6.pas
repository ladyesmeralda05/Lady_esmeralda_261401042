program penjualam;
uses crt;

function tambah (a,b : integer): integer;
begin
tambah := a + b;
end;

var 
c, d, hasil : integer;

begin
 clrscr;

 write ('masukkan nilai pertama : ');
 readln(c);

 write ('masukkan nilai kedua : ');
 readln(d);

 hasil := tambah(c,d);
 writeln;
 writeln ('Hasilnya adalah: ', hasil);

 end.