import 'package:flutter/material.dart';
import '../../../core/constants/color/color_constants.dart';

class YourVisitList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ColorTheme.grey,
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.height * 0.035),
                            child: Image.asset(
                              "assets/image/Ellipse 2350.png",
                              width: MediaQuery.of(context).size.height * 0.07,
                              height: MediaQuery.of(context).size.height * 0.07,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Raptor Pag",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Location",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Contact Name",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
      },
    );
  }
}
