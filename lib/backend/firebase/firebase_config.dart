import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBsVBtZ4UdGE5VwhkpHesckq_8tPuR5Lso",
            authDomain: "technibat-582d7.firebaseapp.com",
            projectId: "technibat-582d7",
            storageBucket: "technibat-582d7.appspot.com",
            messagingSenderId: "594355707328",
            appId: "1:594355707328:web:b1e9ad83ab7ca3ec897c25",
            measurementId: "G-6EH4W5M4VJ"));
  } else {
    await Firebase.initializeApp();
  }
}
