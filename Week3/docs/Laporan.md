# Pertemuan 3

### 2241720142
### Ridho Fauzian Pratama
### TI-3H / 21

### Praktikum 1
#### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().
``` dart
void main() {
  String test = "test2";

  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") {
    print("Test2 again");
  }
}

```

#### Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!<br>
<span style="color: red;">Eksekusi Berhasil dengan hasil
```
Test2
Test2 again
```

#### Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
``` dart
String test = "true";
if (test) {
   print("Kebenaran");
}
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.<br>
<span style="color: red;">Akan terjadi error karena tidak bisa menggunakan sebuah String secara langsung di dalam pernyataan kondisional karena pernyataan tersebut mengharapkan nilai boolean.<br> Perbaikan :
``` dart
void main() {
  String test = "test2";

  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") {
    print("Test2 again");
  }

  String test2 = "true";

  if (test2 == "true") {
    print("Kebenaran");
  } else {
    print("Bukan Kebenaran");
  }
}

```

### Praktikum 2
#### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().
``` dart
while (counter < 33) {
  print(counter);
  counter++;
}
```

#### Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.<br>
<span style="color: red;"> Error karena counter perlu dideklarasikan dan diinisialisasi sebelum digunakan dalam loop.<br>
Berikut Perbaikannya :
``` dart
void main() {
  int counter = 0;
  while (counter < 33) {
    print(counter);
    counter++;
  }
}
```

#### Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
``` dart
do {
  print(counter);
  counter++;
} while (counter < 77);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan do-while.<br>
<span style="color: red;"> Saat dirun mendapatkan hasil mencetak angka 0 - 76


### Praktikum 3
#### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().
``` dart
for (Index = 10; index < 27; index) {
  print(Index);
}
```

#### Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.<br>
<span style="color: red;"> Error karena Variabel Index tidak dideklarasikan, Penamaan variabel yang tidak konsisten, Increment tidak ditulis dengan benar.<br>
Berikut Kode yang sudah diperbaiki :
``` dart
void main() {
  for (int index = 10; index < 27; index++) {
    print(index);
  }
}
```

#### Langkah 3
Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.
``` dart
If (Index == 21) break;
Else If (index > 1 || index < 7) continue;
print(index);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan for dan break-continue.<br>
<span style="color: red;"> Akan terjadi error karena Penggunaan huruf besar pada If dan Else If,<br>
Berikut perbaikannya :
``` dart
void main() {
  for (int index = 10; index < 27; index++) {
    print(index);
    if (index == 21)
      break;
    else if (index > 1 || index < 7) continue;
    print(index);
  }
}
```

### Tugas Praktikum
1. Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya!
2. Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.<br>
<span style="color: red;"> berikut source codenya :
```
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

```
3. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!