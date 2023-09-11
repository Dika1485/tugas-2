import 'package:belajar_flutter/ui/tampil_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _nimController = TextEditingController();
  final _namaController = TextEditingController();
  final _tahunlahirController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Data"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            _textboxnama(),
            _textboxnim(),
            _textboxtahunlahir(),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }

  _textboxnama() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _namaController,
    );
  }

  _textboxnim() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIM"),
      controller: _nimController,
    );
  }

  _textboxtahunlahir() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tahun Lahir"),
      controller: _tahunlahirController,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          String nim = _nimController.text;
          String nama = _namaController.text;
          int tahunlahir = int.parse(_tahunlahirController.text);
          int umur = DateTime.now().year - tahunlahir;
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  TampilData(nim: nim, nama: nama, umur: umur)));
        },
        child: const Text('Simpan'));
  }
}
