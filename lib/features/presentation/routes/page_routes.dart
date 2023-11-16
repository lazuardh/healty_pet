import 'package:healtypet_application/features/presentation/pages/authentication/login_screen.dart';
import 'package:healtypet_application/features/presentation/pages/bottom_navigation.dart';
import 'package:healtypet_application/features/presentation/pages/detail_chat.dart';
import 'package:healtypet_application/features/presentation/pages/introduction_screen.dart';
import 'package:healtypet_application/features/presentation/pages/splash_screen.dart';
import 'package:healtypet_application/features/presentation/routes/routes_name.dart';

class AppPage {
  static final pages = {
    RouteName.splashScreen: (context) => const SplashScreen(),
    RouteName.introductionScreen: (context) => const IntroductionScreenPages(),
    RouteName.loginScreen: (context) => const LoginScreen(),
    RouteName.bottomNavigation: (context) => const BottomNavigationPages(),
    RouteName.detailChat: (context) => const DetailChatScreen(),
  };
}
