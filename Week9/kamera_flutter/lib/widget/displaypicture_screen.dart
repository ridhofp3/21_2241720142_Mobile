import 'package:flutter/material.dart';
import 'dart:io'; 

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture - 2241720142')),
      body: Image.file(File(imagePath)),
    );
  }
}
