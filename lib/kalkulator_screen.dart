import 'package:flutter/material.dart';

class kalkulatorscreen extends StatefulWidget {
  const kalkulatorscreen({super.key});

  @override
  State<kalkulatorscreen> createState() => _kalkulatorscreenState();
}

class _kalkulatorscreenState extends State<kalkulatorscreen> {
  TextEditingController angkalcontroller = TextEditingController();
  String tampilhasil = "hasilkosong";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("kalkulator"),
        backgroundColor: const Color.fromARGB(255, 132, 73, 232),
      ),
      body: Column(
        children: [
          TextField(controller: angkalcontroller),
          ElevatedButton(
              onPressed: () {
                print(angkalcontroller.text);
                setState(() {
                  tampilhasil = angkalcontroller.text;
                });
              },
              child: Text('tampil')),
          Text(tampilhasil),
        ],
      ),
    );
  }
}
