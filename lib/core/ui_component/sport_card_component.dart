import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/display_size.dart';
import '../util/build_context_util.dart';
import '../util/widget_util.dart';
import 'author_component.dart';
import 'published_at_component.dart';
import 'text_component.dart';

class SportCard extends StatelessWidget {
  final int index;
  final String? imgUrl;
  final String title;
  final String? author;
  final DateTime? publishedAt;

  const SportCard({
    super.key,
    required this.index,
    this.imgUrl,
    required this.title,
    this.author,
    this.publishedAt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.sp),
          child: CachedNetworkImage(
            imageUrl: imgUrl ?? '',
            height: context.screenWidth * .3,
            width: context.screenWidth * .3,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (author != '' && author != null)
                AuthorComponent(author ?? '-').paddingOnly(bottom: 6.h),
              TextComponent(
                text: title,
                fontSize: DisplaySize.textH4,
                maxLines: 3,
              ),
              if (publishedAt != null)
                PublishedAtComponent(publishedAt).paddingOnly(top: 6.h),
            ],
          ).paddingOnly(left: 12.w),
        ),
      ],
    ).paddingOnly(bottom: 12.h);
  }
}
