import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppConstant {
  static List<int> numbers = <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  static List<String> pathFaces = <String>[
    'assets/images/redface.png',
    'assets/images/redface.png',
    'assets/images/redface.png',
    'assets/images/blueface.png',
    'assets/images/blueface.png',
    'assets/images/blueface.png',
    'assets/images/blueface.png',
    'assets/images/yellowface.png',
    'assets/images/yellowface.png',
    'assets/images/yellowface.png',
    'assets/images/yellowface.png',
  ];

  TextStyle appStyle({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight);
  }

  TextStyle h2Style({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
        fontSize: fontSize ?? 15.sp,
        color: color,
        fontWeight: fontWeight ?? FontWeight.w700);
  }

  BoxDecoration gradientBox() => BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const RadialGradient(
            colors: [Colors.white, Colors.grey],
            radius: 1.2,
            center: Alignment(-0.8, -0.7)),
      );

  BoxDecoration linearBox() => BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const RadialGradient(
            colors: [
            Colors.white, 
            Colors.grey
            ],
      ),);

  BoxDecoration pictureBox() => BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      image: const DecorationImage(
        image: AssetImage('assets/images/bg1.png'),
        opacity: 0.5,
        fit: BoxFit.cover,
      ));
}
