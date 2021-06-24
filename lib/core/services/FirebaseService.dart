import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseService {
  final FirebaseApp app;
  late DatabaseReference db;

  FirebaseService({required this.app}) {
    print("Firebase app initialized");

    db = FirebaseDatabase(app: app).reference();
    db.child('admin').once().then((result) => print('result = $result'));
    pushData();
  }

  pushData() {
    db.child('admin').push().set(<String, String>{"hello": "hello"});
  }

  createStaff(){}
}
