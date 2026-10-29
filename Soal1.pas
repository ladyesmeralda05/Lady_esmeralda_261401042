program PenjumlahanMatriks;
uses crt;

var
  A, B, C: array[1..5, 1..5] of integer;
  m, n, i, j: integer;

begin
  clrscr;
  write('Masukkan jumlah baris: ');
  readln(m);
  write('Masukkan jumlah kolom: ');
  readln(n);

  if (m < 1) or (m > 5) or (n < 1) or (n > 5) then
    writeln('Ukuran matriks maksimal 5 x 5.')
  else
  begin
    writeln('Masukkan elemen matriks A:');
    for i := 1 to m do
      for j := 1 to n do
        readln(A[i,j]);

    writeln('Masukkan elemen matriks B:');
    for i := 1 to m do
      for j := 1 to n do
        readln(B[i,j]);

    writeln('Hasil penjumlahan matriks:');
    for i := 1 to m do
    begin
      for j := 1 to n do
      begin
        C[i,j] := A[i,j] + B[i,j];
        write(C[i,j]:5);
      end;
      writeln;
    end;
  end;
  readln;
end.