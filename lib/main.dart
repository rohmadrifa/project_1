import 'package:flutter/material.dart';
import 'package:project_1/kalkulator_screen.dart';
import 'package:project_1/list_screen.dart';
import 'screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: listscreen(),
    );
  }
}

class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('beranda rumah'),
        backgroundColor: Colors.purple,
      ),
      body: Text('hello world'),
    );
  }
}
