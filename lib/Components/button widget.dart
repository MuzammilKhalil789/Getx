import 'package:flutter/material.dart';

class Buttonwidget extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final double height;
  final double width;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final Color buttonColor;

  const Buttonwidget({
    super.key,
    required this.text,
    required this.ontap,
    required this.height,
    required this.width,
    required this.color,
    required this.fontWeight,
    required this.fontSize,
    this.buttonColor = Colors.orange,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: ontap,
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}