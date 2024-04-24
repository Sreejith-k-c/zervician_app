import 'package:flutter/material.dart';
import '../../../core/constants/color/color_constants.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF013F6E),
        centerTitle: true,
        title: Text(
          "My Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ColorTheme.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left_rounded,
              color: ColorTheme.white, size: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: ColorTheme.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xFF013F6E)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/image/Group 427319535.png',
                              width: MediaQuery.of(context).size.width * 0.35,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'John Danies',
                            style: TextStyle(
                                color: ColorTheme.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Contact Number",
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Image.asset("assets/image/Phone Rounded.png"),
                              hintText: "8564852265",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Email ID",
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Image.asset("assets/image/Letter.png"),
                              hintText: "johny@gmail.com",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Major Field",
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Image.asset("assets/image/Phone Rounded.png"),
                              hintText: "Major Field",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
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
                                    prefixIcon: Image.asset("assets/image/Calendar.png"),
                                    hintText: "State",
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
                                    prefixIcon: Image.asset("assets/image/Map Point.png"),
                                    hintText: "District",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Working Time",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                                    prefixIcon: Image.asset("assets/image/Alarm Play.png"),
                                    hintText: "State",
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
                                    prefixIcon: Image.asset("assets/image/Alarm Pause.png"),
                                    hintText: "District",
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
    );
  }
}