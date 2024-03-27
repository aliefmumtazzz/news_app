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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SectionTitle('Sport'),
                TextComponent(
                  text: 'See all',
                  color: ColorName.blue,
                  onTap: () => context.goTo(const SportListPage()),
                ).paddingOnly(
                  right: DisplaySize.symmetricPadding,
                  top: 12.h,
                  bottom: 6.h,
                ),
              ],
            ),
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
