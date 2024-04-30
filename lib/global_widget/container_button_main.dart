import 'package:flutter/material.dart';
import 'package:zervician_app/core/constants/color/color_constants.dart';

class MainButton extends StatelessWidget {
  const MainButton(
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
        width: size.width*0.66,
        decoration: BoxDecoration(
          color: ColorTheme.mainClr,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Center(
            child: Text(text,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: textFontWeight,
                    color: textColor)),
          ),
        ),
      ),
    );
  }
}
