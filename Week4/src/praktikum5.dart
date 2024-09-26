void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var tukarAngka = tukar((1, 2));
  print(tukarAngka);

  (String, int) mahasiswa = ('Ridho Fauzian Pratama', 2241720142);
  print(mahasiswa);

  var mahasiswa2 = ('Ridho Fauzian Pratama', a: 2241720142, b: true, 'last');
  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
