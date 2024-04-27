import 'package:flutter/material.dart';
import 'package:zervician_app/presentation/change_password/view/change_password.dart';
import 'package:zervician_app/presentation/faq/view/faq.dart';
import 'package:zervician_app/presentation/my_profile/view/my_profile.dart';
import 'package:zervician_app/presentation/settings/view/setting.dart';
import '../../../core/constants/color/color_constants.dart';
import '../../help_center/view/help_center.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Profile",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.chevron_left_rounded,
                  color: ColorTheme.mainClr, size: 30),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
              child: Column(
                children: [
                  Container(
                    height: height * 0.43,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double innerHeight = constraints.maxHeight;
                        double innerWidth = constraints.maxWidth;
                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: innerHeight * 0.72,
                                width: innerWidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF013F6E),
                                      ColorTheme.mainClr,
                                    ],
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 70,
                                    ),
                                    Text(
                                      'John Danies',
                                      style: TextStyle(
                                          color: ColorTheme.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '#ID4585',
                                      style: TextStyle(
                                          color: ColorTheme.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Online',
                                      style: TextStyle(
                                        color: ColorTheme.green,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  'Total',
                                                  style: TextStyle(
                                                    color: ColorTheme.white,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Text(
                                                  '52',
                                                  style: TextStyle(
                                                    color: ColorTheme.white,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 25,
                                                vertical: 8,
                                              ),
                                              child: Container(
                                                height: 50,
                                                width: 3,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: ColorTheme.white,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  'Completed',
                                                  style: TextStyle(
                                                    color: ColorTheme.white,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Text(
                                                  '42',
                                                  style: TextStyle(
                                                    color: ColorTheme.white,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 25,
                                                vertical: 8,
                                              ),
                                              child: Container(
                                                height: 50,
                                                width: 3,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: ColorTheme.white,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  'Pending',
                                                  style: TextStyle(
                                                    color: ColorTheme.white,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Text(
                                                  '10',
                                                  style: TextStyle(
                                                    color: ColorTheme.white,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 25,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Container(
                                  child: Image.asset(
                                    'assets/image/Group 427319535.png',
                                    width: innerWidth * 0.35,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfile()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "My Profile",
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(Icons.chevron_right_sharp,color: ColorTheme.grey,)
                            ],
                          ),
                        ),
                        Divider(),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Change Password",
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(Icons.chevron_right_sharp,color: ColorTheme.grey)
                            ],
                          ),
                        ),
                        Divider(),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Settings",
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(Icons.chevron_right_sharp,color: ColorTheme.grey)
                            ],
                          ),
                        ),
                        Divider(),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpCenter()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Help Center",
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(Icons.chevron_right_sharp,color: ColorTheme.grey)
                            ],
                          ),
                        ),
                        Divider(),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>FaqPage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "FAQ",
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(Icons.chevron_right_sharp,color: ColorTheme.grey)
                            ],
                          ),
                        ),
                        Divider(),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                content: Text(
                                  'Are you sure you want to logout?',
                                  style: TextStyle(color: ColorTheme.black),
                                ),
                                actions: [
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('No'),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: ColorTheme.mainClr,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Logout",
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(Icons.chevron_right_sharp,color: ColorTheme.grey)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
