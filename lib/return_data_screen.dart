import 'package:flutter/material.dart';

class ReturnDataScreen extends StatelessWidget {
  final _dataName = TextEditingController();
  final _dataUmur = TextEditingController();
  final _dataAlamat = TextEditingController();
  ReturnDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Return Data Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _dataName,
              decoration: InputDecoration(labelText: "Masukkan Nama Anda"),
            ),
            TextField(
              controller: _dataUmur,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Masukkan Umur Anda"),
            ),
            TextField(
              controller: _dataAlamat,
              decoration: InputDecoration(labelText: "Masukkan Alamat Anda"),
            ),
            Padding(padding: const EdgeInsets.only(top: 30)),
            ElevatedButton(
                onPressed: () {
                  String nama = _dataName.text;
                  String umur = _dataUmur.text;
                  String alamat = _dataAlamat.text;
                  if (nama.isEmpty && umur.isEmpty && alamat.isEmpty){
                    Navigator.pop(context, null);
                  } else {
                    Navigator.pop(context,
                    "Halo Nama saya $nama, umur saya $umur tahun, saya tinggal di $alamat");
                  }
                  
                },
                child: Text("Simpan"))
          ],
        ),
      ),
    );
  }
}
