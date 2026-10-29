program NilaiMahasiswa;
uses crt;

var
  tugas, kuis, uts, uas, rata: array[1..5] of real;
  n, i: integer;

begin
  clrscr;
  write('Jumlah mahasiswa (1-5): ');
  readln(n);

  if (n < 1) or (n > 5) then
    writeln('Jumlah mahasiswa tidak valid.')
  else
  begin
    for i := 1 to n do
    begin
      writeln('Mahasiswa ke-', i);

      write('Nilai tugas: ');
      readln(tugas[i]);
      write('Nilai kuis: ');
      readln(kuis[i]);
      write('Nilai UTS: ');
      readln(uts[i]);
      write('Nilai UAS: ');
      readln(uas[i]);

      rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
    end;

    writeln;
    writeln('HASIL NILAI MAHASISWA');

    for i := 1 to n do
    begin
      writeln('Mahasiswa ke-', i);
      writeln('Rata-rata: ', rata[i]:0:2);

      if rata[i] >= 70 then
        writeln('Keterangan: Lulus')
      else
        writeln('Keterangan: Tidak Lulus');

      writeln;
    end;
  end;
  readln;
end.