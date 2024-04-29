import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB8_-eGcWD6qJx6zhLIom5yB9pRFmwQUgE",
            authDomain: "uwabooking-f681c.firebaseapp.com",
            projectId: "uwabooking-f681c",
            storageBucket: "uwabooking-f681c.appspot.com",
            messagingSenderId: "217471639675",
            appId: "1:217471639675:web:ad0ef12bc0b23783ea42de"));
  } else {
    await Firebase.initializeApp();
  }
}
