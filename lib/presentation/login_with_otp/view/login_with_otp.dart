import 'package:flutter/material.dart';
import 'package:zervician_app/presentation/verification_otp/view/verification_otp.dart.dart';
import '../../../core/constants/color/color_constants.dart';
import '../../../global_widget/container_button_main.dart';
import '../../../global_widget/text_field.dart';

class LoginOtp extends StatefulWidget {
  const LoginOtp({super.key});

  @override
  State<LoginOtp> createState() => _LoginOtpState();
}

class _LoginOtpState extends State<LoginOtp> {
   TextEditingController phoneController=TextEditingController();

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
            height: 60,
          ),
          TextFields(
                    text: "Enter mobile Number",
                    textSize: 16,
                    hintText: "Enter your phone number",
                    textEditingController: phoneController,
                  ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyOtp()));
            },
            child: MainButton(
                  text: "Get OTP",
                  textColor: ColorTheme.white,
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
