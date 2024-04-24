import 'package:flutter/material.dart';
import 'package:zervician_app/presentation/query/view/query.dart';
import '../../../core/constants/color/color_constants.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Help Center",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ColorTheme.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left_rounded,
              color: ColorTheme.mainClr, size: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>QueryPage()));
          },
          child: Container(
            height: 40,
            width: double.infinity,
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Drop a Query"),
                  Icon(Icons.chevron_right_sharp,color: ColorTheme.grey,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
