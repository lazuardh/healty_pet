import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:healtypet_application/features/presentation/pages/introduction_screen.dart';
import 'package:healtypet_application/firebase_options.dart';

import 'features/presentation/utils/error_pages.dart';
import 'features/presentation/utils/loading.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> initialize = Firebase.initializeApp();
    return FutureBuilder(
      future: initialize,
      builder: (context, snapshoot) {
        if (snapshoot.hasError) {
          return ErrorPages();
        } else if (snapshoot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
            home: const IntroductionScreen(),
          );
        } else {
          return LoadingPages();
        }
      },
    );
  }
}
