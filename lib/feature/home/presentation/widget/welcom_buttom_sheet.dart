part of '../page/home_page.dart';

class WelcomBottomSheet extends StatelessWidget {
  const WelcomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Assets.images.welcome.image(),
        TextComponent(
          text: 'Stay Informed, Anytime,\nAnywhere with Us',
          textAlign: TextAlign.center,
          fontSize: DisplaySize.textH1,
          fontWeight: FontWeight.w600,
        ),
        const TextComponent(
          text:
              'We bring you the latest news and breaking stories from around the world, in one easy-to-use interface.',
          textAlign: TextAlign.center,
          color: ColorName.darkGrey,
        ).paddingSymmetric(horizontal: 42.w),
        SizedBox(
          width: context.screenWidth,
          child: ElevatedButton(
            onPressed: () => context.pop(),
            child: const TextComponent(
              text: 'Continue',
              color: ColorName.pureWhite,
            ),
          ),
        ).paddingAll(DisplaySize.symmetricPadding),
      ],
    ).coloredBox(ColorName.white);
  }
}
