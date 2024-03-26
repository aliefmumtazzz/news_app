part of '../page/home_page.dart';

class BreakingNewsSlider extends StatelessWidget {
  const BreakingNewsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopHeadlinesCubit, TopHeadlinesState>(
      builder: (_, state) => state.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        success: (data) => SizedBox(
          height: context.screenHeight * .25,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => TopHeadlinesCard(
              index: index,
              imgUrl: data[index].urlToImage ?? '',
              title: data[index].title,
            ),
          ),
        ),
      ),
    );
  }
}

class TopHeadlinesCard extends StatelessWidget {
  final int index;
  final String imgUrl;
  final String title;
  const TopHeadlinesCard({
    super.key,
    required this.index,
    required this.imgUrl,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.sp),
        color: ColorName.pureWhite,
      ),
      child: SizedBox(
        width: context.screenWidth * .6,
        height: context.screenHeight * .25,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: CachedNetworkImage(
                imageUrl: imgUrl,
                height: context.screenHeight * .15,
                width: context.screenWidth * .6,
                fit: BoxFit.cover,
              ),
            ),
            TextComponent(
              text: title,
              maxLines: 2,
              height: 1.2,
              fontSize: DisplaySize.textH4,
            ).paddingOnly(top: 6.h),
          ],
        ).paddingAll(12.0),
      ),
    ).paddingOnly(left: index == 0 ? DisplaySize.symmetricPadding : 12.w);
  }
}
