import 'package:flutter/material.dart';
import 'package:zervician_app/presentation/order_details/view/order_details.dart';
import 'package:zervician_app/presentation/oreders/view/order_list.dart';
import '../../../core/constants/color/color_constants.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Orders",
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
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/image/filter.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorTheme.lightBlue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: MediaQuery.of(context).size.width * 0.12,
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Date'),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorTheme.lightBlue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: MediaQuery.of(context).size.width * 0.12,
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Month'),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorTheme.lightBlue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: MediaQuery.of(context).size.width * 0.12,
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Year'),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorTheme.lightBlue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: MediaQuery.of(context).size.width * 0.12,
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Equipment Type'),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                color: ColorTheme.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Today',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        'Rs.25520',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderDetails()));
                  },
                  child: OrderList()),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 10,
            child: Center(
              child: InkWell(onTap: (){

              },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 50,
                  decoration: BoxDecoration(
                    color: ColorTheme.mainClr,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      '+ Add Order',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
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
