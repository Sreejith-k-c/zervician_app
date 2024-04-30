import 'package:flutter/material.dart';
import '../../../core/constants/color/color_constants.dart';
import '../../../global_widget/global_appbar.dart';

class AddOrder extends StatefulWidget {
  const AddOrder({super.key});

  @override
  State<AddOrder> createState() => _AddOrderState();
}

class _AddOrderState extends State<AddOrder> {
  List<Map<String, String>> itemList = [
    {"name": "Brush Comressor cylinder", "rate": "520.00", "amount": "2500.00"},
    {"name": "Brush Comressor cylinder", "rate": "520.00", "amount": "2500.00"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: GLAppBar(
        title: "Add Order",
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left_rounded)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorTheme.mainClr,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Workshop Name*",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter workshop name",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Contact Person*",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter contact person name",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Address*",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter workshop Address",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "State*",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 120),
                                Text("District*",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "State",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "District",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Location*",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Location",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Delivery Address*",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Location",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Delivery Location*",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Image.asset(
                                      "assets/image/Map Point_grey.png"),
                                  hintText: "Enter workshop Address",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "PIN Code*",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Location",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
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
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ColorTheme.mainClr,
                    width: 1.0,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Add Location',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorTheme.mainClr,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on, color: ColorTheme.white),
                            Text(
                              "Fetch Location",
                              style: TextStyle(color: ColorTheme.white),
                            ),
                          ],
                        ),
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
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ColorTheme.mainClr,
                    width: 1.0,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorTheme.mainClr,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        height: 50,
                        child: Center(
                          child: Icon(Icons.search, color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        height: 50,
                        color: Colors.white,
                        child: Center(
                          child: TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Equipment name / Part name",
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorTheme.mainClr,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        height: 50,
                        child: Center(
                          child: Icon(Icons.add, color: Colors.white),
                        ),
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
                      color: ColorTheme.white
                    ),
                    height: 50,
                    child: Center(child: Text('Cancel',style: TextStyle(color: ColorTheme.black),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: ColorTheme.white),
                      color: ColorTheme.mainClr
                    ),
                    height: 50,
                    child: Center(child: Text('Save',style: TextStyle(color: ColorTheme.black),)),
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
