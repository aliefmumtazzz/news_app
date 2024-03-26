import 'package:flutter/material.dart';

import '../constant/display_size.dart';
import '../gen/colors.gen.dart';
import '../util/widget_util.dart';

class TextComponent extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? height;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final Function()? onTap;
  final FontStyle? fontStyle;

  const TextComponent({
    super.key,
    required this.text,
    this.color,
    this.overflow,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.height,
    this.textAlign,
    this.onTap,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? ColorName.black,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontSize: fontSize ?? DisplaySize.textH3,
        height: height ?? 1.5,
        fontStyle: fontStyle,
      ),
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.ellipsis,
      textAlign: textAlign,
    ).onTap(onTap);
  }
}
