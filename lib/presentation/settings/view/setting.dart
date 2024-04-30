import 'package:flutter/material.dart';
import '../../../core/constants/color/color_constants.dart';
import '../../../global_widget/global_appbar.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: GLAppBar(
        title: "Settings",
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            
          },
          child: Container(
            height: 40,
            width: double.infinity,
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Manage Settings"),
                  Icon(Icons.chevron_right_sharp,color: ColorTheme.grey,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
