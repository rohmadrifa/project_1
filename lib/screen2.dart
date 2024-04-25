import 'package:flutter/material.dart';

class Halaman2 extends StatelessWidget {
  const Halaman2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('halaman 2'),
        backgroundColor: Color.fromARGB(255, 232, 244, 2),
      ),
      body: Column(
        children: [
          Text('budi'),
          Text('rifa'),
          Text('plenggeh'),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Text('anggit'),
          )
        ],
      ),
    );
  }
}
