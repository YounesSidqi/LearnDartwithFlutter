import 'package:flutter/material.dart';
import 'package:testt/first_page.dart';
import 'package:testt/main_page.dart';
import 'package:testt/move_with_data.dart';
import 'package:testt/return_data_screen.dart';
import 'package:testt/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.pink,
          appBarTheme: AppBarTheme(color: Colors.pink)),
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/ind':(context) => FirstPage(),
        '/sec':(context) => SecondPage(),
        '/trd':(context) => MoveWithData(ModalRoute.of(context)?.settings.arguments as String),
        '/frt':(context) => ReturnDataScreen(),
      },                       
    );
  }
}
