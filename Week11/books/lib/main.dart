import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ridho Fauzian',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = ''; // Variabel untuk menyimpan hasil fungsi `count`.
  String asyncResult = ''; // Variabel untuk menyimpan hasil fungsi asinkron lainnya.

  // Fungsi untuk mengambil data dari API.
  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/junbDwAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

  // Fungsi asinkron untuk mengembalikan nilai 1 setelah 3 detik.
  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  // Fungsi asinkron untuk mengembalikan nilai 2 setelah 3 detik.
  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  // Fungsi asinkron untuk mengembalikan nilai 3 setelah 3 detik.
  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  // Fungsi untuk menjalankan ketiga fungsi asinkron secara berurutan dan menampilkan hasilnya.
  Future<void> runAsyncFunctions() async {
    int one = await returnOneAsync();
    int two = await returnTwoAsync();
    int three = await returnThreeAsync();
    asyncResult = 'Results: $one, $two, $three';
    setState(() {});
  }

  // Fungsi untuk menghitung total dari ketiga fungsi asinkron.
  Future<void> count() async {
    int total = 0;
    total += await returnOneAsync(); // Menambahkan hasil fungsi `returnOneAsync`.
    total += await returnTwoAsync(); // Menambahkan hasil fungsi `returnTwoAsync`.
    total += await returnThreeAsync(); // Menambahkan hasil fungsi `returnThreeAsync`.
    setState(() {
      result = 'Total: $total'; // Memperbarui UI dengan hasil total.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future'), // Judul aplikasi di AppBar.
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            // Tombol untuk menjalankan fungsi `count`.
            ElevatedButton(
              child: const Text('GO!'),
              onPressed: () {
                count(); // Memanggil fungsi `count` saat tombol ditekan.
              },
            ),
            const Spacer(),
            Text(result), // Menampilkan hasil dari fungsi `count`.
            const Spacer(),
            Text(asyncResult), // Menampilkan hasil dari fungsi asinkron lainnya.
            const Spacer(),
            const CircularProgressIndicator(), // Indikator pemrosesan (tidak dihubungkan dengan fungsi asinkron).
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
