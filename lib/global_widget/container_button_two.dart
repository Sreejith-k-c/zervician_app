import 'package:flutter/material.dart';
import 'package:zervician_app/core/constants/color/color_constants.dart';

class ButtonTwo extends StatelessWidget {
  const ButtonTwo(
      {super.key,
      required this.text,
      this.textSize,
      this.textFontWeight,
      this.textColor,
      this.keyboardType});

  final String text;
  final double? textSize;
  final FontWeight? textFontWeight;
  final Color? textColor;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      // height: size.height * 0.15,
      child: Container(
        width: size.width*0.7,
        decoration: BoxDecoration(
          color: ColorTheme.lightBlue,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.9),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Center(
            child: Text(text,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: textFontWeight,
                    color: textColor)),
          ),
        ),
      ),
    );
  }
}
