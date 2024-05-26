import 'package:flutter/material.dart';

TextStyle titleLabel = const TextStyle(
    fontSize: 18, fontFamily: 'Montserrat', fontWeight: FontWeight.bold);

TextStyle subTitleLabel = imperioLabelStyle(12, FontWeight.w500);

TextStyle subTitleBoldLabel = imperioLabelStyle(14, FontWeight.bold);

enum LabelType {
  title,
  subtitle,
  subtitleBold,
}

TextStyle imperioLabelStyle(double size, FontWeight weight, {Color? color}) {
  return TextStyle(
      fontWeight: weight,
      fontSize: size,
      fontFamily: 'Montserrat',
      color: color ?? Colors.black);
}
