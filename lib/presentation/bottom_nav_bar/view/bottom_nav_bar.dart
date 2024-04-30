import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:zervician_app/presentation/add_customer/view/add_customer.dart';
import 'package:zervician_app/presentation/add_order/view/add_order.dart';
import 'package:zervician_app/presentation/notifications/view/notifications.dart';
import 'package:zervician_app/presentation/profile/view/profile.dart';
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
    Transactions(),
    ProfilePage()
  ];

  bool isCenterButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          screens[currentIndex],
          if (isCenterButtonPressed) _buildPopUp(),
        ],
      ),
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
            icon: Icon(
              Icons.notifications_active_rounded,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                setState(() {
                  isCenterButtonPressed = !isCenterButtonPressed;
                });
              },
              child: Image.asset(
                'assets/image/add_icon.png',
                width: 50,
                height: 50,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.transform_rounded,
            size: 30,
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
          ),
        ],
      ),
    );
  }

  Widget _buildPopUp() {
    return Stack(
      children: [
        screens[currentIndex],
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),


        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddOrder()));
                },
                child: Container(
                  width: 180,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image(image: AssetImage("assets/image/addorder.png")),
                          Text(
                            'Add Order',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCustomer()));
                },
                child: Container(
                  width: 180,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image(image: AssetImage("assets/image/Group 427319759.png")),
                          Text(
                            'Add Customer',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
