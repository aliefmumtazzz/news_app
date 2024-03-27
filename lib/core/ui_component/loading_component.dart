import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/display_size.dart';
import '../gen/colors.gen.dart';
import '../util/build_context_util.dart';
import '../util/widget_util.dart';

enum LoadingDirection { vertical, horizontal }

class LoadingComponent extends StatelessWidget {
  final LoadingDirection direction;

  const LoadingComponent({super.key, required this.direction});

  @override
  Widget build(BuildContext context) {
    if (direction == LoadingDirection.vertical) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: ColorName.grey.withOpacity(.4),
              borderRadius: BorderRadius.circular(12.sp),
            ),
            child: SizedBox(
              height: context.screenHeight * .05,
              width: context.screenWidth * .4,
            ),
          ).paddingOnly(bottom: 12.sp),
          ...List.generate(
            4,
            (index) => DecoratedBox(
              decoration: BoxDecoration(
                color: ColorName.grey.withOpacity(.4),
                borderRadius: BorderRadius.circular(12.sp),
              ),
              child: SizedBox(
                height: context.screenHeight * .1,
                width: context.screenWidth,
              ),
            ).paddingOnly(bottom: 12.sp),
          ),
        ],
      ).paddingSymmetric(
        horizontal: DisplaySize.symmetricPadding,
        vertical: DisplaySize.symmetricPadding,
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: ColorName.grey.withOpacity(.4),
            borderRadius: BorderRadius.circular(12.sp),
          ),
          child: SizedBox(
            height: context.screenHeight * .05,
            width: context.screenWidth * .4,
          ),
        ).paddingOnly(bottom: 12.sp),
        SizedBox(
          height: context.screenHeight * .15,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (_, __) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: ColorName.grey.withOpacity(.4),
                  borderRadius: BorderRadius.circular(12.sp),
                ),
                child: SizedBox(
                  height: context.screenHeight * .05,
                  width: context.screenWidth * .4,
                ),
              ).paddingOnly(right: 12.sp);
            },
          ),
        ),
      ],
    ).paddingSymmetric(
      horizontal: DisplaySize.symmetricPadding,
      vertical: DisplaySize.symmetricPadding,
    );
  }
}
