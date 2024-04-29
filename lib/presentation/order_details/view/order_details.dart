import 'package:flutter/material.dart';
import '../../../core/constants/color/color_constants.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  List<Map<String, String>> itemList = [
    {"name": "Brush Comressor cylinder", "rate": "520.00", "amount": "2500.00"},
    {"name": "Brush Comressor cylinder", "rate": "520.00", "amount": "2500.00"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Order Details",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height * 0.035),
                      child: Image.asset(
                        "assets/image/order_details.png",
                        width: MediaQuery.of(context).size.height * 0.07,
                        height: MediaQuery.of(context).size.height * 0.07,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorTheme.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Delivery Location : ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Vytila, Kochi",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
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
                        style: TextStyle(fontSize: 15, color: ColorTheme.white),
                      ),
                      Container(
                        width: 1,
                        height: 20,
                        color: Colors.white,
                      ),
                      Text(
                        "Name of item",
                        style: TextStyle(fontSize: 15, color: ColorTheme.white),
                      ),
                      Container(
                        width: 1,
                        height: 20,
                        color: Colors.white,
                      ),
                      Text(
                        "Rate",
                        style: TextStyle(fontSize: 15, color: ColorTheme.white),
                      ),
                      Container(
                        width: 1,
                        height: 20,
                        color: Colors.white,
                      ),
                      Text(
                        "Amount",
                        style: TextStyle(fontSize: 15, color: ColorTheme.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return _buildListItem(
                  (index + 1).toString(),
                  itemList[index]["name"]!,
                  itemList[index]["rate"]!,
                  itemList[index]["amount"]!,
                );
              },
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
                          "Total Quantity",
                          style:
                              TextStyle(fontSize: 18, color: ColorTheme.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "1520.00",
                          style:
                              TextStyle(fontSize: 18, color: ColorTheme.black),
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
                          "Sub Total",
                          style:
                              TextStyle(fontSize: 18, color: ColorTheme.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "1520.00",
                          style:
                              TextStyle(fontSize: 18, color: ColorTheme.black),
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
                          " Tax",
                          style:
                              TextStyle(fontSize: 18, color: ColorTheme.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "2500.00",
                          style:
                              TextStyle(fontSize: 18, color: ColorTheme.black),
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
                    width: MediaQuery.of(context).size.width * 0.95,
                    decoration: BoxDecoration(
                      color: ColorTheme.lightBlue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            " Grand Total",
                            style: TextStyle(
                              fontSize: 18,
                              color: ColorTheme.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "2500.00",
                            style: TextStyle(
                              fontSize: 18,
                              color: ColorTheme.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: ColorTheme.mainClr),
                        color: ColorTheme.white),
                    height: 50,
                    child: Center(
                        child: Text(
                      'Cancel Order',
                      style: TextStyle(color: ColorTheme.black),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: ColorTheme.white),
                        color: ColorTheme.mainClr),
                    height: 50,
                    child: Center(
                        child: Text(
                      'Edit',
                      style: TextStyle(color: ColorTheme.black),
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String sl, String name, String rate, String amount) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: ColorTheme.lightBlue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(sl),
              Container(
                width: 1,
                height: 20,
                color: Colors.grey,
              ),
              Text(name),
              Container(
                width: 1,
                height: 20,
                color: Colors.grey,
              ),
              Text(rate),
              Container(
                width: 1,
                height: 20,
                color: Colors.grey,
              ),
              Text(amount),
            ],
          ),
        ),
      ),
    );
  }
}
