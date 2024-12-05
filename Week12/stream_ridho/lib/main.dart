import 'package:flutter/material.dart';
import 'stream.dart'; // Mengimpor file stream.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream - Ridho',
      theme: ThemeData(
        primarySwatch: Colors.teal, // Ganti warna sesuai kesukaan Anda
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey; // Variabel untuk warna latar belakang
  late ColorStream colorStream;    // Variabel untuk instance ColorStream

  @override
  void initState() {
    super.initState();
    colorStream = ColorStream();  // Inisialisasi colorStream
    changeColor(); // Panggil method changeColor() untuk mulai mendengarkan stream warna
  }

  // Mengubah isi method changeColor() sesuai Langkah 13
  void changeColor() {
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor; // Mengubah bgColor dengan warna yang diterima dari stream
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream'),
      ),
      body: Container(
        decoration: BoxDecoration(color: bgColor), // Mengubah background dengan bgColor
      ),
    );
  }
}
