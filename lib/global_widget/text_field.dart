import 'package:flutter/material.dart';
import 'package:zervician_app/core/constants/color/color_constants.dart';

class TextFields extends StatelessWidget {
  const TextFields(
      {super.key,
      required this.text,
      this.textSize,
      this.textFontWeight,
      this.textColor,
      this.textEditingController,
      this.hintText,
      this.keyboardType});

  final String text;
  final double? textSize;
  final FontWeight? textFontWeight;
  final Color? textColor;
  final TextEditingController? textEditingController;
  final String? hintText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30,0,0,10),
            child: Text(text,
                style: TextStyle(
                    fontSize: textSize,
                    fontWeight: textFontWeight,
                    color: textColor)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 10, 5),
                child: TextFormField(
                  controller: textEditingController,
                  keyboardType: keyboardType,
                  decoration: InputDecoration(
                    hintText:hintText,hintStyle: TextStyle(fontWeight: FontWeight.normal,
                    color: ColorTheme.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
