// import 'dart:nativewrappers/_internal/vm/lib/mirrors_patch.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseOption {
  static const String _apikey = "AIzaSyD8QY_53pmg8yoahzxUazLDQ-JFBB94Ux4";
  static const String _appId = "1:488289532756:android:2fc62f5dab685acf87a6c1";
  static const String _messagingSenderId = "488289532756";
  static const String _projectId = "nestflix-9b3ef";

  static FirebaseOptions android = const FirebaseOptions(
    apiKey: _apikey,
    appId: _appId,
    messagingSenderId: _messagingSenderId,
    projectId: _projectId,
    storageBucket: "nestflix-9b3ef.appspot.com",
  );

  static FirebaseOptions ios = const FirebaseOptions(
    apiKey: _apikey,
    appId: _appId,
    messagingSenderId: _messagingSenderId,
    projectId: _projectId,
    storageBucket: "nestflix-9b3ef.appspot.com",
  );

  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw Exception("Not applicable for this platform");
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.linux:
        throw Exception("Not applicable for linux");
      case TargetPlatform.macOS:
        throw Exception("Not applicable for macOs");

      default:
        throw Exception("Not applicable for this platform");
    }
  }
}
