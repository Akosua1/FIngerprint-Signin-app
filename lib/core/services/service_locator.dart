import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';

import 'FirebaseService.dart';

GetIt locator = GetIt.instance;

setupServiceLocator() async {
  FirebaseApp app = await Firebase.initializeApp();

  locator.registerLazySingleton<FirebaseService>(
      () => new FirebaseService(app: app));

  print("Serevice Innit ");
}
