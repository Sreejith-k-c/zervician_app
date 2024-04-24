import 'package:flutter/material.dart';

class ServiceTicketList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Service ticket #562626",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "Equipment  : Hydraulic machine",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  "Issue             : Loud noise and not working.",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  "Accepted on : 15-02-24, 10:30 am",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
