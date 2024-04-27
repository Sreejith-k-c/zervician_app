import 'package:flutter/material.dart';
import 'package:zervician_app/presentation/bottom_nav_bar/view/bottom_nav_bar.dart';
import 'package:zervician_app/presentation/login_with_otp/view/login_with_otp.dart';
import '../../../core/constants/color/color_constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              SizedBox(height: 40),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Enter mobile number",
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter mobile number",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Enter password",
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter password",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Row(
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
                            onPressed: () {}, child: Text("Forgot Password?")),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginOtp()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.07,
                    decoration: BoxDecoration(
                    color: ColorTheme.lightBlue,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(child: Text("Login with OTP",
                  style: TextStyle(
                    fontSize: 15
                  ),)),),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNav()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.6,
                    height: MediaQuery.of(context).size.height*0.07,
                    decoration: BoxDecoration(
                    color: ColorTheme.mainClr,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Login ",
                  style: TextStyle(
                    fontSize: 15
                  ),)),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}