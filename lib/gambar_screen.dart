import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class gambar_screen extends StatefulWidget {
  const gambar_screen({super.key});

  @override
  State<gambar_screen> createState() => _gambar_screenState();
}

class _gambar_screenState extends State<gambar_screen> {
  String? namahewan;
  final player = AudioPlayer();
  gantinama(String inputnama) {
    setState(() {
      namahewan = inputnama;  
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namahewan ?? "gambarkosong"),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          GestureDetector(
            onTap: ()async {
              print("kucing");
              gantinama("anggit");
              await player.setAsset("aset_media/suara/audiokucing.mp3");
              await player.play();
            },
            child: Card(
              child: Image.asset("aset_media/gambar/kucing.jpg"),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("prtai");
              gantinama("rifa");
            },
            child: Card(
              child: Image.asset("aset_media/gambar/partai.jpg"),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("sapi");
              gantinama("ayam");
            },
            child: Card(
              child: Image.asset("aset_media/gambar/sapi.jpeg"),
            ),
          ),
          Card(),
          Card(),
          Card(),
          Card(),
        ],
      ),
    );
  }
}
