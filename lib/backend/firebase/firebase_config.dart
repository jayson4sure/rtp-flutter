import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDGIVkdTnrQ3ZzBIylTUB4RGEqCWB0lbzQ",
            authDomain: "rtp-hr-automation.firebaseapp.com",
            projectId: "rtp-hr-automation",
            storageBucket: "rtp-hr-automation.appspot.com",
            messagingSenderId: "12728452231",
            appId: "1:12728452231:web:125750330c37f1f6142422",
            measurementId: "G-64R2PBF96V"));
  } else {
    await Firebase.initializeApp();
  }
}
