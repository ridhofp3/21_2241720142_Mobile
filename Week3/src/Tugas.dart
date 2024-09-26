void main() {
  // Nama lengkap dan NIM
  String nama = 'Nama Lengkap Anda';
  String nim = 'NIM Anda';

  // Tampilkan nama lengkap dan NIM
  print('Nama: $nama');
  print('NIM: $nim\n');

  // Fungsi untuk memeriksa apakah sebuah bilangan adalah prima
  bool isPrime(int number) {
    if (number < 2) {
      return false;
    }
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

  // Menyimpan bilangan prima dalam daftar
  List<int> primeNumbers = [];

  // Mencari bilangan prima dari 0 sampai 201
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      primeNumbers.add(i);
    }
  }

  // Menampilkan bilangan prima dalam bentuk list
  for (int prime in primeNumbers) {
    print(prime);
  }
}
