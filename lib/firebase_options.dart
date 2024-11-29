// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCKc-RMtcJ3xBYqh_lN3UkD39pz6nC7o-E',
    appId: '1:217413866040:web:a6d89684e768ea3b8e8ccd',
    messagingSenderId: '217413866040',
    projectId: 'mini-project-e8e8a',
    authDomain: 'mini-project-e8e8a.firebaseapp.com',
    storageBucket: 'mini-project-e8e8a.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyACpMbrjfVerFlh8aj-paOkP4KkVetLVAk',
    appId: '1:217413866040:android:31238ee9f635e0fc8e8ccd',
    messagingSenderId: '217413866040',
    projectId: 'mini-project-e8e8a',
    storageBucket: 'mini-project-e8e8a.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC3XyYQolH-ReJt73onyrYpnBWO0RH7LyQ',
    appId: '1:217413866040:ios:972d668f712a3a3c8e8ccd',
    messagingSenderId: '217413866040',
    projectId: 'mini-project-e8e8a',
    storageBucket: 'mini-project-e8e8a.firebasestorage.app',
    iosBundleId: 'com.example.carApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC3XyYQolH-ReJt73onyrYpnBWO0RH7LyQ',
    appId: '1:217413866040:ios:972d668f712a3a3c8e8ccd',
    messagingSenderId: '217413866040',
    projectId: 'mini-project-e8e8a',
    storageBucket: 'mini-project-e8e8a.firebasestorage.app',
    iosBundleId: 'com.example.carApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCKc-RMtcJ3xBYqh_lN3UkD39pz6nC7o-E',
    appId: '1:217413866040:web:96b98e5087489dc08e8ccd',
    messagingSenderId: '217413866040',
    projectId: 'mini-project-e8e8a',
    authDomain: 'mini-project-e8e8a.firebaseapp.com',
    storageBucket: 'mini-project-e8e8a.firebasestorage.app',
  );
}
