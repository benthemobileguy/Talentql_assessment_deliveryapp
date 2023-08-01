import 'package:delivery_app_talentql/core/constants/palette.dart';
import 'package:delivery_app_talentql/core/resources/font_manager.dart';
import 'package:delivery_app_talentql/core/resources/image_paths.dart';
import 'package:delivery_app_talentql/core/resources/string_manager.dart';
import 'package:delivery_app_talentql/core/resources/values_manager.dart';
import 'package:delivery_app_talentql/screens/components/custom_button.dart';
import 'package:delivery_app_talentql/screens/components/custom_list_tile.dart';
import 'package:delivery_app_talentql/screens/components/horizontal_image_scroll.dart';
import 'package:delivery_app_talentql/screens/components/track_package.dart';
import 'package:delivery_app_talentql/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.8,
  );
  bool isOrders = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 16.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppMargin.m16, vertical: AppMargin.m16),
          child: AppBar(
            elevation: AppSize.s0,
            backgroundColor: Colors.white,
            leading: Image.asset(ImagePaths.avatar),
            actions: [
              Image.asset(ImagePaths.notification),
            ],
          ),
        ),
      ),
      body: !isOrders
          ? SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppMargin.m16),
                    child: Text(
                      StringManager.good_morning,
                      style: regulartextStyle.copyWith(
                          fontSize: FontSize.s18,
                          fontWeight: FontWeight.w700,
                          color: Palette.titleColor),
                    ),
                  ),
                  const SizedBox(
                    height: AppMargin.m25,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: AppMargin.m16),
                    child: HorizontalImageScroll(
                      imageUrls: const [
                        ImagePaths.bike,
                        ImagePaths.bike,
                        ImagePaths.bike,
                        ImagePaths.bike,
                        ImagePaths.bike,
                        ImagePaths.bike,
                      ],
                      pageController: pageController,
                    ),
                  ),
                  const SizedBox(
                    height: AppMargin.m25,
                  ),
                  Center(
                    child: SmoothPageIndicator(
                        controller: pageController,
                        count: 6,
                        effect: const WormEffect(
                            dotColor: Palette.inactiveColorIcon,
                            dotHeight: AppSize.s6,
                            dotWidth: AppSize.s6,
                            spacing: AppPadding.p8,
                            activeDotColor: Palette.indicatorColor),
                        onDotClicked: (index) {}),
                  ),
                  const SizedBox(
                    height: AppMargin.m25,
                  ),
                  Container(
                    width: double.infinity,
                    height: AppSize.s120,
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppMargin.m40),
                    decoration: const BoxDecoration(
                      color: Palette.background,
                    ),
                    child: Row(
                      children: [
                        Text(
                          StringManager.gotten_e_bike,
                          style: regulartextStyle.copyWith(
                              fontSize: FontSize.s14,
                              fontWeight: FontWeight.w400,
                              color: Palette.textColorLight),
                        ),
                        const Spacer(),
                        CustomButton(
                            child: Row(
                              children: [
                                Text(
                                  StringManager.your_orders,
                                  style: regulartextStyle.copyWith(
                                      fontSize: FontSize.s14,
                                      fontWeight: FontWeight.w600,
                                      color: Palette.white),
                                ),
                                const SizedBox(
                                  width: AppMargin.m30,
                                ),
                                Image.asset(
                                  ImagePaths.arrow,
                                  height: AppMargin.m16,
                                  width: AppSize.s16,
                                )
                              ],
                            ),
                            onPressed: () {
                              setState(() {
                                isOrders = !isOrders;
                              });
                            }),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        ImagePaths.rider,
                        height: AppSize.s161,
                        width: AppSize.s161,
                      ),
                      Text(
                        StringManager.rider_text,
                        style: regulartextStyle.copyWith(
                            fontSize: FontSize.s14,
                            fontWeight: FontWeight.w400,
                            color: Palette.textColorLight),
                      ),
                    ],
                  ),
                ],
              ),
            )
          : SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppMargin.m16),
                    child: Text(
                      StringManager.good_morning,
                      style: regulartextStyle.copyWith(
                          fontSize: FontSize.s18,
                          fontWeight: FontWeight.w700,
                          color: Palette.titleColor),
                    ),
                  ),
                  const SizedBox(
                    height: AppMargin.m40,
                  ),
                  const TrackPackage(),
                  const SizedBox(
                    height: AppMargin.m40,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                    child: Text(
                      StringManager.tracking_history,
                      style: regulartextStyle.copyWith(
                          fontSize: FontSize.s16,
                          fontWeight: FontWeight.w600,
                          color: Palette.textColorBlue),
                    ),
                  ),
                  const SizedBox(
                    height: AppMargin.m12,
                  ),
                  const CustomListTile(
                      leadingImageUrl: ImagePaths.box,
                      title: "SCP9374826473",
                      subtitle: "In the process",
                      trailingImageUrl: ImagePaths.rightArrow),
                  const CustomListTile(
                      leadingImageUrl: ImagePaths.car,
                      title: "SCP9374826473",
                      subtitle: "In the process",
                      trailingImageUrl: ImagePaths.rightArrow)
                ],
              ),
          ),
    );
  }
}
