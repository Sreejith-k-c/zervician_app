import 'package:flutter/material.dart';
import 'package:zervician_app/presentation/your_visit/view/your_visit_list.dart';
import '../../../core/constants/color/color_constants.dart';

class YourVisit extends StatefulWidget {
  const YourVisit({Key? key});

  @override
  State<YourVisit> createState() => _YourVisitState();
}

class _YourVisitState extends State<YourVisit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Your Visit",
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
                            Text('All'),
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
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                color: ColorTheme.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Today',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: YourVisitList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
