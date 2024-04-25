import 'package:flutter/material.dart';

class nilaiakhir extends StatefulWidget {
  const nilaiakhir({super.key});

  @override
  State<nilaiakhir> createState() => _nilaiakhirState();
}

class _nilaiakhirState extends State<nilaiakhir> {
  String? nilaiakhirhuruf;
  double? nilairatarata;

  TextEditingController? inputNilaiTugas = TextEditingController();
  TextEditingController? inputnilaiuts = TextEditingController();
  TextEditingController? inputnilaiuas = TextEditingController();

  hitungnilai() {
    setState(() {
      int nilai1 = int.parse(inputNilaiTugas?.text ?? "0");
      int nilai2 = int.parse(inputnilaiuts?.text ?? "0");
      int nilai3 = int.parse(inputnilaiuas?.text ?? "0");
      nilairatarata = (nilai1 + nilai2 + nilai3) / 3;

      KonversiHuruf(nilairatarata ?? 0);
    });
  }

  KonversiHuruf(double nilai) {
    if (nilai >= 90 && nilai <= 100) {
      nilaiakhirhuruf = "nilai A";
    } else if (nilai >= 70 && nilai <= 89) {
      nilaiakhirhuruf = "nilai B";
    } else if (nilai >= 50 && nilai <= 69) {
      nilaiakhirhuruf = "nilai C";
    } else {
      nilaiakhirhuruf = "belum lulus";
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("nilaiakhir"),
        backgroundColor: Color.fromARGB(255, 223, 248, 2),
      ),
      body: Column(
        children: [
          Text(
            nilaiakhirhuruf ?? "nilai akhir",
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "masukkan nilai tugas",
                hintText: "nilai antara 0-100",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
            controller: inputNilaiTugas,
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "masukkan nilai uts",
                hintText: "nilai antara 0-100",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
            controller: inputnilaiuts,
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "masukkan nilai uas",
                hintText: "nilai antara 0-100",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
            controller: inputnilaiuas,
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              hitungnilai();
            },
            child: Text("hitung nilsi"),
          ),
          Text("nilai rata-rata"),
          Text(nilairatarata?.toString() ?? "0"),
        ],
      ),
    );
  }
}
