import 'package:flutter/material.dart';
import 'package:zervician_app/presentation/edit_profile/view/edit_profile.dart';
import '../../../core/constants/color/color_constants.dart';
import '../../../global_widget/global_appbar.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Scaffold(
          appBar: GLAppBar(
            title: "My Profile",
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.chevron_left_rounded)),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditProfile()));
                },
                icon: Icon(
                  Icons.edit,
                  color: ColorTheme.mainClr,
                  size: 30,
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
              child: Column(
                children: [
                  Container(
                    height: height * 0.35,
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
                                      height: 90,
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
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 15,
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
                        Row(
                          children: [
                            Image.asset("assets/image/Phone Rounded.png"),
                            SizedBox(width: 10),
                            Text(
                              "9854625457",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(height: 17),
                        Row(
                          children: [
                            Image.asset("assets/image/Letter.png"),
                            SizedBox(width: 10),
                            Text(
                              "johny@gmail.com",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(height: 17),
                        Row(
                          children: [
                            Image.asset("assets/image/Phone Rounded.png"),
                            SizedBox(width: 10),
                            Text(
                              "Major field",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(height: 17),
                        Row(
                          children: [
                            Image.asset("assets/image/Calendar.png"),
                            SizedBox(width: 10),
                            Text(
                              "26-06-1995",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(height: 17),
                        Row(
                          children: [
                            Image.asset("assets/image/Map Point.png"),
                            SizedBox(width: 10),
                            Text(
                              "Vytila,Ernakulam",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorTheme.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Working Time",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("Start Time"),
                                SizedBox(width: 120),
                                Text("End Time"),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        prefixIcon: Image.asset(
                                            "assets/image/Alarm Play.png"),
                                        hintText: "09:00 am",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        prefixIcon: Image.asset(
                                            "assets/image/Alarm Pause.png"),
                                        hintText: "05:00 pm",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
