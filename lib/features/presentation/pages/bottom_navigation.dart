import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:healtypet_application/features/presentation/pages/chat_screen.dart';
import 'package:healtypet_application/features/presentation/pages/favorite_screen.dart';
import 'package:healtypet_application/features/presentation/pages/home_screen.dart';
import 'package:healtypet_application/features/presentation/pages/profile_screen.dart';

class BottomNavigationPages extends StatefulWidget {
  const BottomNavigationPages({super.key});

  @override
  State<BottomNavigationPages> createState() => _BottomNavigationPagesState();
}

class _BottomNavigationPagesState extends State<BottomNavigationPages> {
  int activeIndexPages = 0;
  final Color activeColor = const Color(0xFF818AF9);
  var menus = [
    FeatherIcons.home,
    FeatherIcons.heart,
    FeatherIcons.messageCircle,
    FeatherIcons.user
  ];

  final pages = const [
    HomeScreen(),
    FavoriteScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: activeIndexPages,
        children: List.generate(
          pages.length,
          (index) => pages[activeIndexPages],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            activeIndexPages = index;
          });
        },
        selectedItemColor: activeColor,
        type: BottomNavigationBarType.fixed,
        items: menus
            .map(
              (icon) => BottomNavigationBarItem(
                icon: Icon(icon),
                label: icon.toString(),
              ),
            )
            .toList(),
        showSelectedLabels: false,
        currentIndex: activeIndexPages,
        showUnselectedLabels: false,
        unselectedItemColor: const Color(0xFFBFBFBF),
      ),
    );
  }
}
