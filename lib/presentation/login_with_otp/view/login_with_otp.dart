import 'package:flutter/material.dart';
import 'package:zervician_app/presentation/verification_otp/view/verification_otp.dart.dart';

import '../../../core/constants/color/color_constants.dart';

class LoginOtp extends StatefulWidget {
  const LoginOtp({super.key});

  @override
  State<LoginOtp> createState() => _LoginOtpState();
}

class _LoginOtpState extends State<LoginOtp> {
  String selectedCountryCode = '+91';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              "Login With OTP",
              style: TextStyle(
                color: ColorTheme.mainClr,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Enter Mobile Number"),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  DropdownButton<String>(
                    value: selectedCountryCode,
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          selectedCountryCode = newValue;
                        });
                      }
                    },
                    items: <String>[
                      '+91',
                      '+1',
                      '+44',
                      '+86',
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  SizedBox(width: 1),
                  VerticalDivider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Enter your phone number',
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerifyOtp()),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 40,
                decoration: BoxDecoration(
                  color: ColorTheme.mainClr,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Get OTP",
                    style: TextStyle(
                      color: ColorTheme.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              child: Text("-OR-",style: TextStyle(color: Colors.grey,fontSize: 18),),
            )),
            TextButton(onPressed: (){

            }, child: Text("Loin with Email & Password",style: TextStyle(color: ColorTheme.mainClr),))
        ],
      ),
    );
  }
}
