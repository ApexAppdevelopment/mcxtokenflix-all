import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBk32aLZFJqtTIPd1TynDqXUUs6hO4XUCQ",
            authDomain: "macximus-a8464.firebaseapp.com",
            projectId: "macximus-a8464",
            storageBucket: "macximus-a8464.appspot.com",
            messagingSenderId: "907083805319",
            appId: "1:907083805319:web:598d04545b8bd59ce17e22",
            measurementId: "G-LR1HH10D50"));
  } else {
    await Firebase.initializeApp();
  }
}
