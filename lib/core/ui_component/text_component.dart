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
  final Function()? onTap;

  const TextComponent({
    super.key,
    required this.text,
    this.color,
    this.overflow,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.height,
    this.onTap,
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
      ),
      maxLines: maxLines,
      overflow: overflow ?? (maxLines != null ? TextOverflow.ellipsis : null),
    ).onTap(onTap);
  }
}
