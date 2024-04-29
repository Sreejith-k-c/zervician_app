import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../core/constants/color/color_constants.dart';

class AddDate extends StatefulWidget {
  const AddDate({Key? key}) : super(key: key);

  @override
  State<AddDate> createState() => _AddDateState();
}

class _AddDateState extends State<AddDate> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

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
      body: Column(
        children: [
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.access_time,
                    color: ColorTheme.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Time",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorTheme.grey,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _selectTime(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: 100,
                    padding: EdgeInsets.all(10),
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
                    child: Center(
                      child: Text(
                        _selectedTime.format(context),
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorTheme.lightBlue,
              ),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Schedule Another"),
              )),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: ColorTheme.mainClr,
                      width: 2,
                    ),
                    color: ColorTheme.white,
                  ),
                  child: Center(
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: ColorTheme.mainClr,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: ColorTheme.mainClr,
                      width: 2,
                    ),
                    color: ColorTheme.mainClr,
                  ),
                  child: Center(
                    child: Text(
                      "Save",
                      style: TextStyle(
                        color: ColorTheme.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is DateTime) {
        _selectedDate = args.value;
      }
    });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }
}
