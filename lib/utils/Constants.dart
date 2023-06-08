import 'package:flutter/material.dart';

Color yellow = Color(0xFFFFC100);
Color darkGray = Color(0xFF8391A1);
Color gray = Color(0xFF8391A1);
Color normalGray = Color(0xFFE8ECF4);
Color utbColor = Color(0xFFD9D9D9);

Color black = Color(0xFF000000);

Color white = Color(0xFFFFFFFF);
Color tfColor = Color(0xFFF7F8F9);
Color green = Color(0xFF28B446);
Color red = Color(0xFFEB002B);
Color transparent = Colors.transparent;
double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

TextStyle bodyText24w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.w600);
}

TextStyle bodyText24w400({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.w400);
}

TextStyle bodyText16w500({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w500);
}

TextStyle bodyText16normal({
  required Color color,
  double? height,
}) {
  return TextStyle(color: color, fontSize: 16, height: height);
}

TextStyle bodyText20w500({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w500);
}

TextStyle bodyText30Bold({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 30, fontWeight: FontWeight.bold);
}

TextStyle bodyText20Bold({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.bold);
}

TextStyle bodyText26w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 26, fontWeight: FontWeight.w600);
}

TextStyle bodyText28Bold({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 28, fontWeight: FontWeight.bold);
}

TextStyle bodyText18w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w600);
}

TextStyle bodyText18w500({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w500);
}

TextStyle bodyText20w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w600);
}

TextStyle bodyText22w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 22, fontWeight: FontWeight.w600);
}

TextStyle bodyText12w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.w600);
}

TextStyle bodyText12w500({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.w500);
}

TextStyle bodyText10normal({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 10);
}

TextStyle bodyText10w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.w600);
}

TextStyle bodyText16w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w600);
}

TextStyle bodyText12w600underlined({
  required Color color,
}) {
  return TextStyle(
      color: color,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
      decorationThickness: 2.0);
}

TextStyle bodyText14w500({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 15, fontWeight: FontWeight.w500);
}

TextStyle bodyText14w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.w600);
}

TextStyle bodyText18w400({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w400);
}

TextStyle bodyText16Bold({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.bold);
}

TextStyle bodyText17w500({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 17, fontWeight: FontWeight.w500);
}

TextStyle bodyText14Bold({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.bold);
}

TextStyle bodyText12normal({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 12);
}

TextStyle bodyText11w400({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 11, fontWeight: FontWeight.w400);
}

TextStyle bodyText15normal({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 15);
}

TextStyle bodyText15w500({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 15, fontWeight: FontWeight.w500);
}

TextStyle bodyText14normal({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 14);
}

TextStyle bodyText13normal({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 13);
}

TextStyle bodyText14underlined({
  required Color color,
}) {
  return TextStyle(
      color: color,
      fontSize: 14,
      decoration: TextDecoration.underline,
      decorationThickness: 1.5);
}

Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalySpace(double width) {
  return SizedBox(width: width);
}

Widget verticalDivider(double width, double height) {
  return Container(
    height: height,
    width: width,
    color: gray,
  );
}

BoxDecoration shadowDecoration(double radius, double blur, Color color,
    {Color? bcolor, double? width, Offset? offset}) {
  return BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      color: color,
      border: Border.fromBorderSide(
          BorderSide(color: bcolor ?? transparent, width: width ?? 1)),
      boxShadow: [
        BoxShadow(
          color: gray,
          offset: offset ?? Offset(0, 0),
          blurRadius: blur,
        ),
      ]);
}