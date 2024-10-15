import 'package:flutter/material.dart';

class MYapp extends StatefulWidget {
  const MYapp({super.key});

  @override
  State<MYapp> createState() => _MYappState();
}

class _MYappState extends State<MYapp> {
  final TextEditingController namaControler = TextEditingController();
  final TextEditingController nimControler = TextEditingController();
  final TextEditingController alamatControler = TextEditingController();
  final TextEditingController ipkControler = TextEditingController();
  final TextEditingController umurControler = TextEditingController();

  String simpandata = '';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("form mahasiswa"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: namaControler,
              decoration: InputDecoration(
                labelText: "Nama",
                fillColor: Colors.yellow,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple,
                    width: 2.0
                  )
                )
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton.icon(onPressed: () {
                  setState(() {
                    simpandata = '''
                  Nama: ${namaControler} 
                  NIM:${nimControler}
                  alamat: ${alamatControler}
                  IPK: ${ipkControler}
                  umur: ${umurControler}
                  ''';
                  });
                }, icon: Icon(Icons.save), label: Text("simpan") ,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
