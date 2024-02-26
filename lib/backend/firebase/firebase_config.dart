import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCOgkmAM-h1cl5RqWEMM7QYX6s05tuyv0g",
            authDomain: "music-app-qhbwxg.firebaseapp.com",
            projectId: "music-app-qhbwxg",
            storageBucket: "music-app-qhbwxg.appspot.com",
            messagingSenderId: "244931750915",
            appId: "1:244931750915:web:791fb6b543800c63913236",
            measurementId: "G-L5GQ5K7472"));
  } else {
    await Firebase.initializeApp();
  }
}
