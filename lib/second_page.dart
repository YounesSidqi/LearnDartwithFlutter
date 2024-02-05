import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ini Second Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: _number == 0
                ? _number == 1
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center
                : MainAxisAlignment.end,
            crossAxisAlignment: _number == 0
                ? _number == 1
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center
                : CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: _number == 0
                    ? _number == 1
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.center
                    : MainAxisAlignment.end,
                crossAxisAlignment: _number == 0
                    ? _number == 1
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center
                    : CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (_number > 2) {
                            _number = 0;
                          } else {
                            _number += 1;
                          }
                        });
                        print(_number);
                      },
                      child: const Text("Move Button"))
                ],
              )
            ]),
      ),
    );
  }
}