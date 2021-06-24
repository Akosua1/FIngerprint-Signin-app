import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:startup_namer/views/signin/Signin.dart';
import 'core/services/service_locator.dart';
import 'package:firebase_auth/firebase_auth.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FirebaseApp app = await Firebase.initializeApp();

  await setupServiceLocator();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_){
        runApp(MyApp(app : app));
  });


}

class MyApp extends StatelessWidget {
  final FirebaseApp app;

  MyApp({ required this.app});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          body: Signin(app : app),
        ));
  }
}
