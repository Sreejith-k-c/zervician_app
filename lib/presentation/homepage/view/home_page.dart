import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zervician_app/presentation/all_customers/view/all_customers.dart';
import 'package:zervician_app/presentation/orders/view/orders.dart';
import 'package:zervician_app/presentation/payments/view/payments.dart';
import 'package:zervician_app/presentation/service_tickets/view/service_tickets.dart';
import 'package:zervician_app/presentation/your_visit/view/your_visit.dart';
import '../../../core/constants/color/color_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageIndex = [
    'assets/image/car1.png',
    'assets/image/car2.png',
    'assets/image/car3.png',
  ];

  final List<String> textIndex = [
    'Raptor Pag',
    'Abcd',
    'Abcd',
  ];
  final List<String> textIndexTwo = [
    'Oil Changing',
    'Oil Changing',
    'Oil Changing',
  ];
  final List<String> textIndexThree = [
    'Pending',
    'Yesterday',
    '14-02-24',
  ];

  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            Icon(
              Icons.location_on_sharp,
              color: ColorTheme.mainClr,
            ),
            Text(
              "Vytila,Ernakulam",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: ColorTheme.mainClr,
                size: 30,
              ),
            ),
            Text(
              "Online",
              style: TextStyle(fontSize: 15, color: ColorTheme.green),
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset("assets/image/Group 427319535.png"),
            ),
          ),
        ),
        actions: [
          Transform.scale(
            scale: 0.8,
            child: Switch(
              value: _isSwitched,
              onChanged: (value) {
                setState(() {
                  _isSwitched = value;
                });
              },
              activeTrackColor: ColorTheme.mainClr,
              activeColor: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/image/Rectangle 2475.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Column(
                        children: [
                          Image.asset(
                            'assets/image/button1.png',
                            width: 40,
                            height: 40,
                          ),
                          Text(
                            "Customers",
                            style: TextStyle(
                                color: ColorTheme.mainClr,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          )
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AllCustomers()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Column(
                        children: [
                          Image.asset(
                            'assets/image/button2.png',
                            width: 40,
                            height: 40,
                          ),
                          Text(
                            "Payments",
                            style: TextStyle(
                                color: ColorTheme.mainClr,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          )
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Payments()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Column(
                        children: [
                          Image.asset(
                            'assets/image/button3.png',
                            width: 40,
                            height: 40,
                          ),
                          Text(
                            "Orderes",
                            style: TextStyle(
                                color: ColorTheme.mainClr,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          )
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Orders()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Column(
                        children: [
                          Image.asset(
                            'assets/image/button4.png',
                            width: 40,
                            height: 40,
                          ),
                          Text(
                            "Incentives",
                            style: TextStyle(
                                color: ColorTheme.mainClr,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          )
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ServiceTickets()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
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
                    child: Column(
                      children: [
                        Text(
                          'Service Tickets',
                          style: TextStyle(
                              color: ColorTheme.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: LinearProgressIndicator(
                            borderRadius: BorderRadius.circular(10),
                            value: 0.5,
                            color: ColorTheme.mainClr,
                            backgroundColor: Colors.grey,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "85 ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorTheme.green),
                            ),
                            Text("15 ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorTheme.orange)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("completed ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorTheme.green)),
                            Text("completed ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorTheme.orange)),
                          ],
                        ),
                        SizedBox(height: 10)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>YourVisit()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
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
                    child: Column(
                      children: [
                        Text(
                          'Your Visits',
                          style: TextStyle(
                              color: ColorTheme.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                CircularProgressIndicator(
                                  value: 0.5,
                                  color: Colors.grey,
                                  backgroundColor: ColorTheme.green,
                                ),
                                Text(
                                  '25',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ColorTheme.green),
                                ),
                              ],
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                CircularProgressIndicator(
                                  value: 0.5,
                                  color: Colors.grey,
                                  backgroundColor: ColorTheme.mainClr,
                                ),
                                Text('25',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: ColorTheme.orange)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Today ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorTheme.black)),
                            Text("This week ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorTheme.black)),
                          ],
                        ),
                        SizedBox(height: 10)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Recent Services",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Today",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: ColorTheme.white,
                borderRadius: BorderRadius.circular(30),
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
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(imageIndex.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              imageIndex[index],
                              width: MediaQuery.of(context).size.height * 0.07,
                              height: MediaQuery.of(context).size.height * 0.07,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                textIndex[index],
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                textIndexTwo[index],
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                          SizedBox(width: 70),
                          Text(
                            textIndexThree[index],
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
