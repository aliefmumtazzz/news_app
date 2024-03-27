import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/display_size.dart';
import '../../../../core/gen/colors.gen.dart';
import '../../../../core/ui_component/author_component.dart';
import '../../../../core/ui_component/published_at_component.dart';
import '../../../../core/ui_component/text_component.dart';
import '../../../../core/util/build_context_util.dart';
import '../../../../core/util/widget_util.dart';

class DetailNewsPage extends StatelessWidget {
  final String? imgUrl;
  final String title;
  final String? author;
  final DateTime? publishedAt;
  final String? description;
  final String? url;
  final String? content;

  const DetailNewsPage({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.author,
    required this.publishedAt,
    required this.description,
    required this.url,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: context.screenHeight * .32,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                imageUrl: imgUrl ?? '',
                fit: BoxFit.cover,
                height: context.screenHeight * .34,
                width: context.screenWidth,
              ),
            ),
          ),
        ],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextComponent(
                  text: title,
                  fontWeight: FontWeight.w600,
                  fontSize: DisplaySize.textH2,
                ),
                if (publishedAt != null)
                  SectionBox(
                    title: 'Published At',
                    valueWidget: PublishedAtComponent(publishedAt).paddingOnly(
                      top: 6.h,
                    ),
                  ),
                if (author != null && author != '')
                  SectionBox(
                    title: 'Author',
                    valueWidget: AuthorComponent(author ?? '').paddingOnly(
                      top: 6.h,
                    ),
                  ),
                if (url != '' && url != null)
                  SectionBox(title: 'Source', value: url ?? ''),
                SectionBox(title: 'Description', value: description ?? ''),
                if (content != '' && content != null)
                  SectionBox(title: 'Content', value: content ?? ''),
              ],
            ).paddingSymmetric(horizontal: DisplaySize.symmetricPadding),
          ),
        ),
      ),
    );
  }
}

class SectionBox extends StatelessWidget {
  final String? title;
  final String? value;
  final Widget? valueWidget;
  const SectionBox({
    super.key,
    this.title,
    this.value,
    this.valueWidget,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: ColorName.pureWhite,
          borderRadius: BorderRadius.circular(12.sp),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title != null
                ? TextComponent(
                    text: title ?? '',
                    color: ColorName.grey,
                    fontSize: DisplaySize.textH4,
                  )
                : const SizedBox.shrink(),
            valueWidget ??
                TextComponent(
                  text: value ?? '',
                  fontSize: DisplaySize.textH3,
                ),
          ],
        ).paddingSymmetric(horizontal: 12.sp, vertical: 8.sp),
      ).paddingOnly(top: 12.h),
    );
  }
}
