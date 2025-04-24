import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAFhY1XFU3BFCV6TZRH7o89mQ5nqrbB92Q",
            authDomain: "posted-qcestf.firebaseapp.com",
            projectId: "posted-qcestf",
            storageBucket: "posted-qcestf.appspot.com",
            messagingSenderId: "817642148734",
            appId: "1:817642148734:web:43b28fb4538275c0eb992f"));
  } else {
    await Firebase.initializeApp();
  }
}
