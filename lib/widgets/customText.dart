// text – (String) The actual text to display. (Required)
// fontSize – (double?) The size of the text. (Optional)
// fontWeight – (FontWeight?) The weight/thickness of the font. Defaults to FontWeight.normal if not provided. (Optional)
// color – (Color?) The color of the text. Defaults to Colors.black if not provided. (Optional)
// textAlign – (TextAlign?) Controls the alignment of the text (e.g., left, center, right). (Optional)


import 'package:flutter/material.dart';

class MyTextLabel extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  const MyTextLabel({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.black,
      ),
    );
  }
}
