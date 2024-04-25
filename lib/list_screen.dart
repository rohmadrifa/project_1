import 'package:flutter/material.dart';
import 'package:project_1/kalkulator_screen.dart';
import 'package:project_1/gambar_screen.dart';
import 'package:project_1/nilaiakhir_screen.dart';

class listscreen extends StatelessWidget {
  const listscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("rifa"),
        backgroundColor: Color.fromARGB(252, 250, 250, 10),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => kalkulatorscreen(),
                  ),
                );
              },
              child: Text('kalkulator')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => gambar_screen(),
                  ),
                );
              },
              child: Text('gambar')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => nilaiakhir(),
                  ),
                );
              },
              child: Text('nilai')),
        ],
      ),
    );
  }
}
