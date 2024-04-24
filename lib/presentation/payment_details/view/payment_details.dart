import 'package:flutter/material.dart';
import '../../../core/constants/color/color_constants.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({Key? key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Payment Details",
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
            icon: Image.asset("assets/image/Share.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "LOGO",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "LG Company",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "Address and  Details",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "852459659",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Other Details",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Place",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Bill To",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "AH Automobiles",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "Address and Details",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "852459659",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Place",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text(
                          "INVOICE",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "INV -0084",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Balance due",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: ColorTheme.mainClr),
                        ),
                        Text(
                          "₹2850.00",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(height: 130),
                        Row(
                          children: [
                            Text(
                              "Invoice date:",
                              style: TextStyle(color: ColorTheme.mainClr),
                            ),
                            Text(
                              " 12 Feb 2024",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Terms           :",
                              style: TextStyle(color: ColorTheme.mainClr),
                            ),
                            Text(
                              "Feb",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Due date      :",
                              style: TextStyle(color: ColorTheme.mainClr),
                            ),
                            Text(
                              " 14 Feb 2024",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[500],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "SL",
                        style: TextStyle(fontSize: 18, color: ColorTheme.white),
                      ),
                      Text(
                        "Name of item",
                        style: TextStyle(fontSize: 18, color: ColorTheme.white),
                      ),
                      Text(
                        "Qty",
                        style: TextStyle(fontSize: 18, color: ColorTheme.white),
                      ),
                      Text(
                        "Rate",
                        style: TextStyle(fontSize: 18, color: ColorTheme.white),
                      ),
                      Text(
                        "Amount",
                        style: TextStyle(fontSize: 18, color: ColorTheme.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "1",
                        style: TextStyle(fontSize: 15, color: ColorTheme.black),
                      ),
                      Text(
                        "Brush Compressor",
                        style: TextStyle(fontSize: 15, color: ColorTheme.black),
                      ),
                      Text(
                        "2",
                        style: TextStyle(fontSize: 15, color: ColorTheme.black),
                      ),
                      Text(
                        "1520.00",
                        style: TextStyle(fontSize: 15, color: ColorTheme.black),
                      ),
                      Text(
                        "2500.00",
                        style: TextStyle(fontSize: 15, color: ColorTheme.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "2",
                      style: TextStyle(fontSize: 15, color: ColorTheme.black),
                    ),
                    Text(
                      "L-Clamp",
                      style: TextStyle(fontSize: 15, color: ColorTheme.black),
                    ),
                    Text(
                      "1",
                      style: TextStyle(fontSize: 15, color: ColorTheme.black),
                    ),
                    Text(
                      "1520.00",
                      style: TextStyle(fontSize: 15, color: ColorTheme.black),
                    ),
                    Text(
                      "500.00",
                      style: TextStyle(fontSize: 15, color: ColorTheme.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Sub Total",
                          style: TextStyle(fontSize: 18,  color: ColorTheme.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "1520.00",
                          style: TextStyle(fontSize: 18,  color: ColorTheme.black),
                        ),
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          " Total",
                          style: TextStyle(fontSize: 18,  color: ColorTheme.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "1520.00",
                          style: TextStyle(fontSize: 18,  color: ColorTheme.black),
                        ),
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: ColorTheme.lightBlue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            " Balance Due",
                            style: TextStyle(fontSize: 18,  color: ColorTheme.black,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "2500.00",
                            style: TextStyle(fontSize: 18,  color: ColorTheme.black,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
