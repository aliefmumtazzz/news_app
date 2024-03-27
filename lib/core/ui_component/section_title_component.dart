import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/display_size.dart';
import '../util/widget_util.dart';
import 'text_component.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(this.title, {super.key});
  @override
  Widget build(BuildContext context) {
    return TextComponent(
      text: title,
      fontSize: DisplaySize.textH3,
      fontWeight: FontWeight.w600,
    ).paddingOnly(
      left: DisplaySize.symmetricPadding,
      top: 12.h,
      bottom: 6.h,
    );
  }
}
