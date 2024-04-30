import 'package:flutter/material.dart';
import 'package:zervician_app/presentation/query/view/query.dart';
import '../../../core/constants/color/color_constants.dart';
import '../../../global_widget/global_appbar.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar: GLAppBar(
        title: "Help Center",
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left_rounded)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QueryPage()));
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
                      Icon(
                        Icons.chevron_right_sharp,
                        color: ColorTheme.grey,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: ColorTheme.white,
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)
                            ),
                              child: Image.asset("assets/image/call 1.png",fit: BoxFit.cover,),
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("+91 9845522177",style: TextStyle(
                              fontSize: 25,fontWeight: FontWeight.bold,color: ColorTheme.mainClr
                            ),),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Are you sure to make a call?",style: TextStyle(
                              fontSize: 15,color: ColorTheme.black
                            ),),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: ColorTheme.white,
                                        border:
                                            Border.all(color: ColorTheme.mainClr)),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Cancel",
                                          style: TextStyle(color: ColorTheme.mainClr),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: (){},
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: ColorTheme.mainClr,
                                        border:
                                            Border.all(color: ColorTheme.mainClr)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          "Call",
                                          style: TextStyle(color: ColorTheme.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
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
                      Text("Call Assistance"),
                      Icon(
                        Icons.chevron_right_sharp,
                        color: ColorTheme.grey,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
