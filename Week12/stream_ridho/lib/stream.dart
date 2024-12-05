import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.pink,          // Warna tambahan
    Colors.orange,        // Warna tambahan
    Colors.indigo,        // Warna tambahan
    Colors.cyan,          // Warna tambahan
    Colors.limeAccent,    // Warna tambahan
  ];

  Stream<Color> getColors() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1), (int t) {
        int index = t % colors.length;  // Menghitung index untuk sirkulasi warna
        return colors[index];  // Mengembalikan warna berdasarkan index
      },
    );
  }
}