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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCJRh_1Y6dWs8vBg8Bx68DUroiDbTTEpO4',
    appId: '1:1081592971525:web:8cdb7ac5dc40c0d5a6b76c',
    messagingSenderId: '1081592971525',
    projectId: 'aspar-mts',
    authDomain: 'aspar-mts.firebaseapp.com',
    storageBucket: 'aspar-mts.appspot.com',
    measurementId: 'G-CFY6P2W34Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHvKqSk62h1LQbA8lkxG00IkPILOT-0AM',
    appId: '1:1081592971525:android:2b1936fcef08f197a6b76c',
    messagingSenderId: '1081592971525',
    projectId: 'aspar-mts',
    storageBucket: 'aspar-mts.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyADCMbJq68KcE408QkX_z7x-tViqwc7aF8',
    appId: '1:1081592971525:ios:70ab9b8adeac0944a6b76c',
    messagingSenderId: '1081592971525',
    projectId: 'aspar-mts',
    storageBucket: 'aspar-mts.appspot.com',
    iosClientId: '1081592971525-i8ectq8414qvo8ski1h3ug4maq5uisg8.apps.googleusercontent.com',
    iosBundleId: 'com.example.aspar',
  );
}