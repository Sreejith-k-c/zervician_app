import 'package:flutter/material.dart';
import 'package:zervician_app/presentation/add_short_cut/view/add_short_cut.dart';
import 'package:zervician_app/presentation/notifications/view/notifications.dart';
import 'package:zervician_app/presentation/settings/view/setting.dart';
import 'package:zervician_app/presentation/transactions/view/transactions.dart';
import '../../../core/constants/color/color_constants.dart';
import '../../homepage/view/home_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  List screens = [
    HomePage(),
    Notifications(),
    ShortCut(),
    Transactions(),
    Settings()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() => currentIndex = value);
          },
          selectedItemColor: ColorTheme.mainClr,
          unselectedItemColor: ColorTheme.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/image/notification.png',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/image/add_icon.png',
                width: 50,
                height: 50,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon:Image.asset(
                'assets/image/Square Transfer Horizontal.png',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/image/Group 427319535.png',
                width: 30,
                height: 30,
              ),
              label: '',
            )
          ]),
    );
  }
}
