import 'package:flutter/material.dart';

import '../utils/Constants.dart';



class CustomButtonGradient extends StatelessWidget {
  final VoidCallback onClick;
  final String text;
  final double? height;
  final double? width;
  final TextStyle? textStyle;
  final Color? buttonColor;
  final double? radius;
  final Color? bcolor;
  const CustomButtonGradient(
      {super.key,
        required this.text,
        this.bcolor,
        this.radius,
        required this.onClick,
        this.width,
        this.height,
        this.buttonColor,
        this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xffcfd4dc), width: 1, ),
          gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [Color(0xff5435ff), Color(0xff36c8f6), Color(0xffa0fbcd)], ),
        ),
        child: ElevatedButton(
          onPressed: onClick,
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: bcolor ?? transparent),
                  borderRadius: BorderRadius.circular(radius ?? 8)),
              minimumSize:
              Size(width ?? MediaQuery.of(context).size.width, height ?? 55),
              backgroundColor: buttonColor ?? transparent,
          ),

          child: Text(
            textAlign: TextAlign.center,
            text,
            style: textStyle ?? bodyText20Bold(color: white),
          ),
        ),
      ),
    );
  }
}