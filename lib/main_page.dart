import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Menu"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ind');
              },
              child: Text("Increment & Decrement"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sec');
              },
              child: Text("Button"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/trd', arguments: "tess");
              },
              child: Text("MoveWithData"),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/frt');
                final message = result != null ? result : "Data Kosong";

                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(message.toString())));
              },
              child: Text("ReturnDataScreen"),
            ),
          ],
        ),
      ),
    );
  }
}
