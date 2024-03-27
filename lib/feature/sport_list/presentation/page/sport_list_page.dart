import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/display_size.dart';
import '../../../../core/gen/colors.gen.dart';
import '../../../../core/ui_component/loading_component.dart';
import '../../../../core/ui_component/sport_card_component.dart';
import '../../../../core/ui_component/text_component.dart';
import '../../../../core/util/navigator_util.dart';
import '../../../../core/util/widget_util.dart';
import '../../../detail_news/presentation/page/detail_news_page.dart';
import '../controller/sport_list_cubit.dart';

class SportListPage extends StatefulWidget {
  const SportListPage({super.key});

  @override
  State<SportListPage> createState() => _SportListPageState();
}

class _SportListPageState extends State<SportListPage> {
  @override
  void initState() {
    super.initState();
    context.read<SportListCubit>().getSports();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextComponent(
          text: 'All Sport News',
          color: ColorName.black,
        ),
        backgroundColor: ColorName.pureWhite,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorName.black),
          onPressed: () => context.pop(),
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<SportListCubit, SportListState>(
          builder: (_, state) => state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            loading: () => const LoadingComponent(
              direction: LoadingDirection.vertical,
            ),
            success: (data) => SingleChildScrollView(
              child: Column(
                children: List.generate(
                  data.length,
                  (index) {
                    final item = data[index];
                    return SportCard(
                      index: index,
                      title: item.title,
                      author: item.author,
                      imgUrl: item.urlToImage,
                      publishedAt: item.publishedAt,
                    )
                        .paddingSymmetric(
                          horizontal: DisplaySize.symmetricPadding,
                        )
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
              ).paddingOnly(top: 24.h),
            ),
          ),
        ),
      ),
    );
  }
}
