import 'package:flutter/material.dart';

import '../../../core/constants/color/color_constants.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Payments",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
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
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: ColorTheme.grey,
                width: 1.0,
              ),
            ),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Raptor Pag",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("Rs.1750",style: TextStyle(color: ColorTheme.mainClr,fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Contact name : Ali",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Bill generated on : 15-02-24, 10:30 am",
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "Status : Paid",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}