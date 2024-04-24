import 'package:flutter/material.dart';
import '../../../core/constants/color/color_constants.dart';

class LeadDetails extends StatefulWidget {
  const LeadDetails({Key? key});

  @override
  State<LeadDetails> createState() => _LeadDetailsState();
}

class _LeadDetailsState extends State<LeadDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Lead Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left_rounded,
              color: ColorTheme.mainClr, size: 30),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Service ticket no : #9644",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "Equipment              : Hydraulic machine",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  "Issue                       : Loud noise and not working.",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  "Description             : If any",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Estimate Amount - Rs.1750",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: ColorTheme.white),
                ),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Add a comment",
                      style: TextStyle(fontSize: 15, color: ColorTheme.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/image/Gallery Add.png"),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/image/settin.png"),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/image/Union.png"),
                )
              ],
            ),
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ColorTheme.mainClr,
                    width: 2,
                  ),
                  color: ColorTheme.white,
                ),
                child: Center(
                  child: Text(
                    "Reject",
                    style: TextStyle(
                      color: ColorTheme.mainClr,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ColorTheme.mainClr,
                    width: 2,
                  ),
                  color: ColorTheme.mainClr,
                ),
                child: Center(
                  child: Text(
                    "Accept",
                    style: TextStyle(
                      color: ColorTheme.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}