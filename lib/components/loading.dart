import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:startup_namer/core/models/staff.dart';
import 'package:uuid/uuid.dart';

class SavingScreen extends StatefulWidget {
  const SavingScreen({Key? key, required this.app, required this.staff})
      : super(key: key);

  final Staff staff;
  final FirebaseApp app;

  @override
  _MySavingScreenState createState() =>
      _MySavingScreenState(app: app, staff: staff);
}

class _MySavingScreenState extends State<SavingScreen> {
  late DatabaseReference _messagesRef;
  late StreamSubscription<Event> _messagesSubscription;
  var uuid = Uuid();
  bool saved = false;
  final Staff staff;
  final FirebaseApp app;

  _MySavingScreenState({required this.app, required this.staff});

  @override
  void initState() {
    super.initState();

    // Demonstrates configuring the database directly
    final FirebaseDatabase database = FirebaseDatabase(app: widget.app);

    //Set Reference to the child users
    _messagesRef = database.reference().child('users');

    //Configure settings
    database.setPersistenceEnabled(true);
    database.setPersistenceCacheSizeBytes(10000000);

    //  Save user now

    this.saveUser(this.staff);
  }

  @override
  void dispose() {
    super.dispose();
    _messagesSubscription.cancel();
  }

  Future<void> saveUser(Staff staff) async {

    var id  = uuid.v4().toString();

    print("Gen id "+ id);
    _messagesRef.set(<String, Staff>{
      id: staff
    }).then((value) {
      setState(() {
        this.saved = true;
      });
    }).catchError((error) {
      this.saved = false;
      log(error);
    });

    // await _messagesRef.push().set(<String, String>{
    //   _kTestKey: 'Message to be ssaved'
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Database Example'),
      ),
      body: Center(
        child: this.saved ? Text("Saved") : CircularProgressIndicator(),
      ),
    );
  }
}
