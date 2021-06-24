import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:startup_namer/components/Narrow_layout.dart';
import 'package:startup_namer/components/wide_layout.dart';

class Signin extends StatefulWidget {
  final FirebaseApp  app;

  Signin({ required this.app});
  @override
  _Signinstate createState() => _Signinstate();
}

class _Signinstate extends State<Signin> {


  @override
  void initState() {
    super.initState();
    // Demonstrates config
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 100) {
            return WideLayout(app : widget.app);
          } else {
            return NarrowLayout(app : widget.app);
          }
        })
      // Column(
      //   children: [],
      // )
    );
  }
}



