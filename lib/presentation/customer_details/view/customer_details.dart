import 'package:flutter/material.dart';
import 'package:zervician_app/presentation/customer_info/view/customer_info.dart';
import '../../../core/constants/color/color_constants.dart';

class CustomerDetails extends StatefulWidget {
  const CustomerDetails({Key? key});

  @override
  State<CustomerDetails> createState() => _CustomerDetailsState();
}

class _CustomerDetailsState extends State<CustomerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Customer",
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: ColorTheme.lightBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'assets/image/customer.png',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Raptor Pag',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                'Location',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(width: 8),
                              Image.asset(
                                'assets/image/location.png',
                                width: 25,
                                height: 25,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                'Contact Name',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(width: 8),
                              Image.asset(
                                'assets/image/phone.png',
                                width: 25,
                                height: 25,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerInfo()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorTheme.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ColorTheme.mainClr,
                          width: 1,
                        ),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Center(
                        child: Text(
                          'More Info',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: ColorTheme.mainClr,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Services",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: ColorTheme.mainClr
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
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
                        color: Colors.grey.withOpacity(0.2),
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
                            "Service ticket no : #30181",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Completed",
                            style: TextStyle(
                              color: ColorTheme.green,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Equipment              : Hydraulic machine",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Issue                       : Not working",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Accepted on                          : 15-02-24, 10:30 am",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
