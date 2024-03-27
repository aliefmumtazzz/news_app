part of '../page/home_page.dart';

class SportList extends StatelessWidget {
  const SportList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SportCubit, SportState>(
      builder: (_, state) => state.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        loading: () => const LoadingComponent(
          direction: LoadingDirection.vertical,
        ),
        success: (data) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle('Sport'),
            ...data.asMap().entries.map(
              (e) {
                final item = e.value;
                return SportCard(
                  index: e.key,
                  title: item.title,
                  author: item.author,
                  imgUrl: item.urlToImage,
                  publishedAt: item.publishedAt,
                )
                    .paddingSymmetric(horizontal: DisplaySize.symmetricPadding)
                    .onTap(
                      () => context.goTo(DetailNewsPage(
                        title: item.title,
                        author: item.author,
                        imgUrl: item.urlToImage ?? '',
                        publishedAt: item.publishedAt,
                        description: item.description,
                        url: item.url,
                        content: item.content,
                      )),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}

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
    debugPrint('exec -$author-');
    return SizedBox(
      child: Row(
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
      ).paddingOnly(bottom: 12.h),
    );
  }
}
