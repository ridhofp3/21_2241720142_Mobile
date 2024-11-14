# 10 | Dasar State Management

### Ridho Fauzian Pratama
### 2241720142
### TI-3H

### Tugas Praktikum 1: Dasar State dengan Model-View
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.<br>
<span style="color: red;">Saya ada masalah pada soal ini karena debugging saya untuk yang menggunakan hp / emulator error pada bagian gradle, mungkin bapak bisa membantu saya untuk menyelesaikan masalah ini <br>
Error Message</span>
``` 
PS C:\Users\User\OneDrive\ドキュメント\Semester 5\Mobile\Week10\master_plan> flutter run                                                                                    
Launching lib\main.dart on sdk gphone64 x86 64 in debug mode...
Error: Could not find or load main class org.gradle.wrapper.GradleWrapperMain
Caused by: java.lang.ClassNotFoundException: org.gradle.wrapper.GradleWrapperMain
Running Gradle task 'assembleDebug'...                             202ms
Error: Gradle task assembleDebug failed with exit code 1
```
2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?<br>
```
Membuat data_layer.dart yang bertujuan untuk mengekspor kedua model plan.dart dan task.dart, agar memudahkan untuk mengelola import. Jadi, pada file lain yang membutuhkan Plan atau Task, cukup mengimport data_layer.dart tanpa harus mengimport kedua file secara terpisah.
```
3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?<br>
```
Variabel plan digunakan untuk menyimpan daftar tugas atau sebuah to-do list yang dapat dikelola oleh aplikasi. Sebagai sebuah instance dari class Plan, plan memungkinkan kita untuk mengakses dan mengubah daftar tugas yang sedang aktif. Variabel ini ditetapkan sebagai konstanta untuk menginisialisasi nilai default pada aplikasi sehingga aplikasi memiliki nilai awal dan lebih mudah untuk dirender ulang tanpa menimbulkan masalah perubahan state. Dengan menggunakan const, kita juga mencegah terjadinya perubahan data secara langsung, membuat data menjadi immutable, dan mendorong perubahan data melalui pembaruan state.
```
4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!<br>
<span style="color: red;">Sama seperti nomor 1 debugging saya masih error</span><br>
5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?<br>
```
- initState(): Menginisialisasi state saat widget pertama kali dibuat. initState digunakan untuk membuat ScrollController dan menambahkan listener yang akan menutup keyboard ketika pengguna melakukan scroll.
- dispose(): Membersihkan resource ketika widget tidak lagi digunakan. dispose akan membuang ScrollController saat widget PlanScreen dihancurkan, sehingga mencegah memory leak.
```
6. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !


### Tugas Praktikum 2: InheritedWidget
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.
2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?
``` dart
return context
        .dependOnInheritedWidgetOfExactType<PlanProvider>()!
        .notifier!;
```
```
Menggunakan InheritedNotifier karena dapat mendengarkan perubahan yang terjadi pada notifier, perubahan pada objek Plan akan diberitahukan secara otomatis ke seluruh widget yang bergantung padanya, sehingga memperbarui UI sesuai dengan state terbaru.
```
3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
```
- completedCount: Menghitung jumlah task yang statusnya complete yang bernilai true. Method ini diperlukan untuk mengetahui berapa banyak task yang telah selesai dari total task yang ada.
- completenessMessage: Menghasilkan string yang menunjukkan progres dalam format "X out of Y tasks," di mana X adalah jumlah task yang selesai, dan Y adalah total task. Method ini diperlukan untuk memberi tahu pengguna tentang status atau progres rencana mereka.
```
4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
<span style="color: red;">Sama seperti praktikum 1 diatas debugging saya masih error</span><br>
5. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !


### Tugas Praktikum 3: State di Multiple Screens
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.
2. Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!
```
Pada class PlanCreatorScreen menunjukkan struktur widget ketika pengguna berada di PlanCreatorScreen. Struktur ini dimulai dengan MaterialApp, diikuti dengan PlanProvider, dan kemudian PlanCreatorScreen. Di dalam PlanCreatorScreen, ada Column yang berisi TextField dan Expanded, yang memiliki ListView. Struktur ini berfungsi untuk membuat dan menampilkan daftar plan yang dibuat oleh pengguna. Lalu pada class PlanScreen ketika pengguna memilih plan, Navigator.push memindahkan pengguna ke halaman baru. Di dalam PlanScreen, struktur Scaffold digunakan untuk membangun UI screen dengan bagian utama ListView untuk menampilkan task di dalam plan dan SafeArea untuk teks. Transisi ini menunjukkan bagaimana state plan dapat dipindahkan di antara screen menggunakan Navigator.push dan bagaimana struktur widget disusun di screen yang berbeda.
```
3. Lakukan capture hasil dari Langkah 14 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
<span style="color: red;">Sama seperti praktikum 1 diatas debugging saya masih error</span><br>
4. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !