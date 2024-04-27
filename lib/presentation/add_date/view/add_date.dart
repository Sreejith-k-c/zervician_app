import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../core/constants/color/color_constants.dart';

class AddDate extends StatefulWidget {
  const AddDate({super.key});

  @override
  State<AddDate> createState() => _AddDateState();
}

class _AddDateState extends State<AddDate> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add Date",
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
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        blurRadius: 15,
                        offset: const Offset(4.0, 4.0),
                        spreadRadius: 1.0,
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        blurRadius: 15,
                        offset: Offset(-4.0, -4.0),
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SfDateRangePicker(
                      minDate: DateTime.now(),
                      onSelectionChanged: _onSelectionChanged,
                      selectionTextStyle: const TextStyle(
                        fontSize: 18,
                      ),
                      monthCellStyle: const DateRangePickerMonthCellStyle(
                        todayTextStyle: TextStyle(
                          fontSize: 18,
                        ),
                        textStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      showNavigationArrow: true,
                      headerStyle: const DateRangePickerHeaderStyle(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      showTodayButton: true,
                      allowViewNavigation: true,
                      cancelText: 'back',
                      selectionMode: DateRangePickerSelectionMode.single,
                    ),
                  ),
                ),
        ),
      ],),
    );
  }
    void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is DateTime) {
        _selectedDate = args.value;
      }
    });
  }
}