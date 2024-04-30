import 'package:flutter/material.dart';
import 'package:zervician_app/presentation/customer_details/view/customer_details.dart';
import '../../../core/constants/color/color_constants.dart';
import '../../../global_widget/global_appbar.dart';

class AllCustomers extends StatefulWidget {
  const AllCustomers({Key? key}) : super(key: key);

  @override
  State<AllCustomers> createState() => _AllCustomersState();
}

class _AllCustomersState extends State<AllCustomers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GLAppBar(
        title: "All Customers",
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left_rounded)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/image/filter_blue.png',
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                color: ColorTheme.grey,
              ),
            ),
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Anything',
                border: InputBorder.none,
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CustomerDetails()));
                  },
                  child: Container(
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
