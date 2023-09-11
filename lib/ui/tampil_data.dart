import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nim;
  final String nama;
  final int umur;

  const TampilData(
      {Key? key, required this.nim, required this.nama, required this.umur})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body:
          Text("Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun."),
    );
  }
}
