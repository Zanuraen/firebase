import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  final _data = FirebaseFirestore.instance;
  create () {
    try{
      _data.collection("mahasiswa").add({});
    }catch (e) {}
  }
}
