import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _myNumber = 0;

  void tambah() {
    setState(() {
      _myNumber += 1;
    });
  }

  void kurang() {
    setState(() {
      if (_myNumber > 0) {
        _myNumber -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Kamu telah menekan tombol sebanyak"),
              Text(
                _myNumber.toString(),
                style: const TextStyle(fontSize: 100),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: tambah,
                      child: const Text("Tambah"),
                    ),
                    ElevatedButton(
                      onPressed: kurang,
                      child: const Text("Kurang"),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}