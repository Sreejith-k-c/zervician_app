import 'package:flutter/material.dart';
import 'package:zervician_app/core/constants/color/color_constants.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.chevron_left_rounded,
              color: ColorTheme.mainClr, size: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: ColorTheme.mainClr,
              size: 30,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Service ticket #562626",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text("Rs.1750",style: TextStyle(color: ColorTheme.mainClr,fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Equipment : Hydraulic machine",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  "Issue : Loud noise and not working.",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  "Generated on : 15-02-2024, 10:30 am",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
