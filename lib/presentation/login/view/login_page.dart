import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zervician_app/global_widget/container_button_main.dart';
import 'package:zervician_app/global_widget/container_button_two.dart';
import 'package:zervician_app/presentation/bottom_nav_bar/view/bottom_nav_bar.dart';
import 'package:zervician_app/presentation/login_with_otp/view/login_with_otp.dart';
import '../../../core/constants/color/color_constants.dart';
import '../../../global_widget/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var emailTextEditingController = TextEditingController();

    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 25),
              Container(
                height: 80,
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      color: ColorTheme.mainClr,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFields(
                    text: "Email ID",
                    textSize: 16,
                    hintText: "Enter email id or mobile number",
                    textEditingController: emailTextEditingController,
                  ),
                  TextFields(
                    text: "Enter Password",
                    textSize: 16,
                    hintText: "Enter Password",
                    textEditingController: emailTextEditingController,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (bool? value) {},
                        ),
                        Text("Remember me"),
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: ColorTheme.mainClr),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNav()));
                },
                child: MainButton(
                  text: "Login",
                  textColor: ColorTheme.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Container(
                child: Text(
                  "-OR-",
                  style: TextStyle(color: ColorTheme.grey, fontSize: 18),
                ),
              )),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginOtp()));
                },
                child: ButtonTwo(
                  text: "Login with OTP",
                  textColor: ColorTheme.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
