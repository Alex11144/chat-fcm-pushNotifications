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
    apiKey: 'AIzaSyAaTzLWWcm4NYHMsgWxyzHqFv6pVSA41Lw',
    appId: '1:804606975599:web:7f1570935f8b3314d4f79a',
    messagingSenderId: '804606975599',
    projectId: 'chat-bb813',
    authDomain: 'chat-bb813.firebaseapp.com',
    storageBucket: 'chat-bb813.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC57rSZ60Haa9bQzHPiTGNajgfS_GLvBHU',
    appId: '1:804606975599:android:6c4ded10097f4deed4f79a',
    messagingSenderId: '804606975599',
    projectId: 'chat-bb813',
    storageBucket: 'chat-bb813.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDWBfajTS4If0UOUNx1aOzU4dRkO9OZNPM',
    appId: '1:804606975599:ios:2aec9f44be1f3f1bd4f79a',
    messagingSenderId: '804606975599',
    projectId: 'chat-bb813',
    storageBucket: 'chat-bb813.appspot.com',
    iosClientId: '804606975599-d01srhehs9srnhr5ursqk3m3r9e23iab.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDWBfajTS4If0UOUNx1aOzU4dRkO9OZNPM',
    appId: '1:804606975599:ios:2aec9f44be1f3f1bd4f79a',
    messagingSenderId: '804606975599',
    projectId: 'chat-bb813',
    storageBucket: 'chat-bb813.appspot.com',
    iosClientId: '804606975599-d01srhehs9srnhr5ursqk3m3r9e23iab.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}
