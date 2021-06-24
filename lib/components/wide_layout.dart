import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Narrow_layout.dart';



class WideLayout extends StatelessWidget {
  final FirebaseApp app;

  WideLayout({required this.app});
  @override
  Widget build(BuildContext context) {
    return Container(child: NarrowLayout(app : app), color: Colors.black);
  }
}