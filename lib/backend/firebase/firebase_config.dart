import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB3lFCiar0TQ_SvrcDDjAMkLZuHxdK4tzk",
            authDomain: "xtrinsic-8ae74.firebaseapp.com",
            projectId: "xtrinsic-8ae74",
            storageBucket: "xtrinsic-8ae74.appspot.com",
            messagingSenderId: "450383490437",
            appId: "1:450383490437:web:255735f0db409d36b968ec",
            measurementId: "G-4CFN215P4R"));
  } else {
    await Firebase.initializeApp();
  }
}
