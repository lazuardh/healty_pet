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
    apiKey: 'AIzaSyBpY3W7kYfSZthZjAaQJ9NtZFtwtg8MbL0',
    appId: '1:916386980506:web:ddb0f017c3f86bd967f523',
    messagingSenderId: '916386980506',
    projectId: 'healtypet-1cf33',
    authDomain: 'healtypet-1cf33.firebaseapp.com',
    storageBucket: 'healtypet-1cf33.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyADNOBdZLduauHI2EN5-H51gt6ffVlSnnE',
    appId: '1:916386980506:android:7b28d8eb8dc886c867f523',
    messagingSenderId: '916386980506',
    projectId: 'healtypet-1cf33',
    storageBucket: 'healtypet-1cf33.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCQjHVW9VeQCUvZkQHIMwm6vQrSCWMHGrQ',
    appId: '1:916386980506:ios:59f01077b3681c2867f523',
    messagingSenderId: '916386980506',
    projectId: 'healtypet-1cf33',
    storageBucket: 'healtypet-1cf33.appspot.com',
    iosBundleId: 'com.example.healtypetApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCQjHVW9VeQCUvZkQHIMwm6vQrSCWMHGrQ',
    appId: '1:916386980506:ios:3f4ab3215cf5c1fb67f523',
    messagingSenderId: '916386980506',
    projectId: 'healtypet-1cf33',
    storageBucket: 'healtypet-1cf33.appspot.com',
    iosBundleId: 'com.example.healtypetApplication.RunnerTests',
  );
}
