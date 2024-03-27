import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/display_size.dart';
import '../gen/colors.gen.dart';
import '../util/date_time_util.dart';
import '../util/widget_util.dart';
import 'text_component.dart';

class PublishedAtComponent extends StatelessWidget {
  final DateTime? time;
  const PublishedAtComponent(this.time, {super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.date_range,
          size: 12.sp,
          color: ColorName.darkGrey,
        ),
        Expanded(
          child: TextComponent(
            text: time.simpleFormat(),
            fontSize: DisplaySize.smallText,
            color: ColorName.darkGrey,
          ).paddingOnly(left: 4.w),
        ),
      ],
    );
    ;
  }
}
