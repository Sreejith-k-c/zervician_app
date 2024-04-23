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
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_add,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.transform_outlined,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              label: '',
            ),
          ]),
    );
  }
}
