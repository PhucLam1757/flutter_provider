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
        return macos;
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
    apiKey: 'AIzaSyBxxBBGWtAGP0T513NbR1ns6ulsxkNb6xU',
    appId: '1:721320631862:web:f87fdd52e8a707591f8297',
    messagingSenderId: '721320631862',
    projectId: 'szclamnp',
    authDomain: 'szclamnp.firebaseapp.com',
    storageBucket: 'szclamnp.appspot.com',
    measurementId: 'G-G2PE83FMK8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAEKKXjCjP00wJdrKVGtOYArHW9yE2Jh-E',
    appId: '1:721320631862:android:a3cbbdeae20cb58e1f8297',
    messagingSenderId: '721320631862',
    projectId: 'szclamnp',
    storageBucket: 'szclamnp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5e2bOjpbbQ0pLl2P8T7vjsnM0P3DIDQ8',
    appId: '1:721320631862:ios:e318b8baaa3026b11f8297',
    messagingSenderId: '721320631862',
    projectId: 'szclamnp',
    storageBucket: 'szclamnp.appspot.com',
    iosClientId: '721320631862-f59cpsf59fgkt3jd33k0ckclb2mi023s.apps.googleusercontent.com',
    iosBundleId: 'com.example.appFoodDx',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB5e2bOjpbbQ0pLl2P8T7vjsnM0P3DIDQ8',
    appId: '1:721320631862:ios:e318b8baaa3026b11f8297',
    messagingSenderId: '721320631862',
    projectId: 'szclamnp',
    storageBucket: 'szclamnp.appspot.com',
    iosClientId: '721320631862-f59cpsf59fgkt3jd33k0ckclb2mi023s.apps.googleusercontent.com',
    iosBundleId: 'com.example.appFoodDx',
  );
}
