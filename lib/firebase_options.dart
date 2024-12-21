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
    apiKey: 'AIzaSyAzG687DF8Aw6p6IERgopFCuRWlIPUIutQ',
    appId: '1:1028660736780:web:447b3d35cd02c3859c8f29',
    messagingSenderId: '1028660736780',
    projectId: 'lectro-459c7',
    authDomain: 'lectro-459c7.firebaseapp.com',
    storageBucket: 'lectro-459c7.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDZBoQu3TR1SolZvg5w3vfuVDonXCxUEdc',
    appId: '1:1028660736780:android:2fa53628f3fc053f9c8f29',
    messagingSenderId: '1028660736780',
    projectId: 'lectro-459c7',
    storageBucket: 'lectro-459c7.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDizEII299dIKST5W2T72ts4Ql9a8ReBa4',
    appId: '1:1028660736780:ios:99c3cb0ecabb98d69c8f29',
    messagingSenderId: '1028660736780',
    projectId: 'lectro-459c7',
    storageBucket: 'lectro-459c7.firebasestorage.app',
    iosBundleId: 'com.example.lectro',
  );
}
