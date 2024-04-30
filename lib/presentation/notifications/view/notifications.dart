import 'package:flutter/material.dart';
import 'package:zervician_app/core/constants/color/color_constants.dart';
import 'package:zervician_app/presentation/lead_details/view/lead_details.dart';

import '../../../global_widget/global_appbar.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GLAppBar(
        title: "Notifications",
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left_rounded)),
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
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LeadDetails()));
            },
            child: Container(
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
            ),
          );
        },
      ),
    );
  }
}
