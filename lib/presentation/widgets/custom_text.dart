import 'package:flutter/material.dart';

import '../../helper/constants/colors_resource.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final TextStyle? textStyle;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextDecoration? decoration;

  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.letterSpacing,
    this.textStyle,
    this.overflow,
    this.maxLines,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle ??
          TextStyle(
            color: color ?? ColorsResource.WHITE_CLR,
            fontSize: fontSize,
            fontStyle: fontStyle,
            fontWeight: fontWeight,
            letterSpacing: letterSpacing,
            decoration: decoration,
          ),
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
