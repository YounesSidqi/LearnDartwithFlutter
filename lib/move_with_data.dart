import 'package:flutter/material.dart';

class MoveWithData extends StatelessWidget {
  final String data;
  const MoveWithData(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Move w/ Data"),
      ),
      body: Center(
          child: Column(
        children: [
          Text(data),
          ElevatedButton(onPressed: () {}, child: Text("back"))
        ],
      )),
    );
  }
}
