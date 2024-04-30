import 'package:flutter/material.dart';
import 'package:zervician_app/core/constants/color/color_constants.dart';

import '../../../global_widget/container_button_main.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({super.key});

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  List<TextEditingController> controllers =
      List.generate(4, (index) => TextEditingController());

  @override
  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left_rounded,
              color: ColorTheme.mainClr, size: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Verification Code',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: ColorTheme.mainClr),
            ),
            SizedBox(height: 10),
            Text(
              'We have sent a verification code to your mobile number',
              style: TextStyle(fontSize: 16,color: ColorTheme.grey),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                (index) => SizedBox(
                  width: MediaQuery.of(context).size.width * 0.18,
                  height: MediaQuery.of(context).size.width * 0.2,
                  child: TextField(
                    controller: controllers[index],
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "*",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: ColorTheme.mainClr),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: ColorTheme.mainClr),
                      ),
                      counter: Offstage(),
                    ),
                    onChanged: (value) {
                      if (value.length == 1 && index < 3) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: MainButton(
                  text: "Confirm",
                  textColor: ColorTheme.white,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
