import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/display_size.dart';
import '../gen/colors.gen.dart';
import '../util/widget_util.dart';
import 'text_component.dart';

class AuthorComponent extends StatelessWidget {
  final String author;

  const AuthorComponent(this.author, {super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.account_circle_outlined,
          size: 12.sp,
          color: ColorName.darkGrey,
        ),
        Expanded(
          child: TextComponent(
            text: author,
            fontSize: DisplaySize.smallText,
            color: ColorName.darkGrey,
            maxLines: 1,
          ).paddingOnly(left: 4.w),
        ),
      ],
    );
  }
}
