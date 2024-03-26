import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/display_size.dart';
import '../../../../core/gen/colors.gen.dart';
import '../../../../core/ui_component/text_component.dart';
import '../../../../core/util/build_context_util.dart';
import '../../../../core/util/widget_util.dart';
import '../controller/explore_cubit.dart';
import '../controller/top_headlines_cubit.dart';

part '../widget/breaking_news_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<TopHeadlinesCubit>().getTopHeadlines();
    context.read<ExploreCubit>().getExplore();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorName.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle('Top Headlines'),
              BreakingNewsSlider(),
              SectionTitle('Explore'),
            ],
          ),
        ),
      ),
    );
  }
}

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
