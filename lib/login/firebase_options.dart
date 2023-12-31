// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBPdsJmgzHO7aY6qjQoe5Ffb91PimQ3cnE',
    appId: '1:864805042477:web:0b8c97cb68873ff1563ba4',
    messagingSenderId: '864805042477',
    projectId: 'mobileapp-565e5',
    authDomain: 'mobileapp-565e5.firebaseapp.com',
    storageBucket: 'mobileapp-565e5.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDIm_T79GObKTO-8ns9zCR_K_7Xno6VQic',
    appId: '1:864805042477:android:5c59f91630271101563ba4',
    messagingSenderId: '864805042477',
    projectId: 'mobileapp-565e5',
    storageBucket: 'mobileapp-565e5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBX0tRfeYN3j0DV16EHXXUTaO05pKHtO28',
    appId: '1:864805042477:ios:4a56af5c4157d0df563ba4',
    messagingSenderId: '864805042477',
    projectId: 'mobileapp-565e5',
    storageBucket: 'mobileapp-565e5.appspot.com',
    iosBundleId: 'com.example.mobileApplication',
  );
}
