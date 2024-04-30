import 'package:flutter/material.dart';
import 'package:zervician_app/core/constants/color/color_constants.dart';
import 'package:zervician_app/presentation/transactions/view/transaction_listview.dart';

import '../../../global_widget/global_appbar.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar: GLAppBar(
        title: "Transactions",
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left_rounded)),
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
      body: Column(
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
                        Text('Status'),
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
                        Text('Payment Type'),
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
                    'Rs.5520',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: TransactionList(),
          ),
        ],
      ),
    );
  }
}
