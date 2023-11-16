import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:healtypet_application/features/di/dependenncy_injection.dart';
import 'package:healtypet_application/features/domain/usecase/auth_use_case.dart';
import 'package:healtypet_application/features/presentation/providers/auth_provider.dart';
import 'package:healtypet_application/features/presentation/routes/page_routes.dart';
import 'package:healtypet_application/firebase_options.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(locator<AuthUseCase>()),
        ),
      ],
      builder: (context, child) => Consumer<AuthProvider>(
        builder: (context, auth, child) => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          routes: AppPage.pages,
          initialRoute: '/',
          // home: auth.isAuth
          //     ? const BottomNavigationPages()
          //     : FutureBuilder(
          //         future: initialize,
          //         builder: (context, snapshoot) {
          //           if (snapshoot.hasError) {
          //             return const ErrorPages();
          //           } else if (snapshoot.connectionState ==
          //               ConnectionState.waiting) {
          //             return const LoadingPages();
          //           } else {
          //             return const IntroductionScreen();
          //           }
          //         },
          //       ),
        ),
      ),
    );
  }
}
