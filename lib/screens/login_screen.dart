import 'package:delivery_app_talentql/core/constants/palette.dart';
import 'package:delivery_app_talentql/core/resources/font_manager.dart';
import 'package:delivery_app_talentql/core/resources/image_paths.dart';
import 'package:delivery_app_talentql/core/resources/string_manager.dart';
import 'package:delivery_app_talentql/core/resources/values_manager.dart';
import 'package:delivery_app_talentql/screens/base.dart';
import 'package:delivery_app_talentql/screens/components/custom_button.dart';
import 'package:delivery_app_talentql/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      body: Stack(
        children: [
          Positioned(
            child: Image.asset(
              ImagePaths.circleBg,
              height: AppSize.s550,
            ),
          ),
           Positioned(
          top: -40.0,
          right: 0.0,
          child: Image.asset(
              ImagePaths.spiralLines,
              height: AppSize.s300,
              width: AppSize.s200,
            ),
        ),
        
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: AppMargin.m20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      ImagePaths.onboardingImg,
                      height: AppSize.s300,
                      width: AppSize.s300,
                    ),
                  ),
                  const SizedBox(
                    height: AppMargin.m50,
                  ),
                  Text(
                    StringManager.welcome_text,
                    style: regulartextStyle.copyWith(
                        color: Palette.textColor,
                        fontSize: FontSize.s25,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: AppMargin.m10,
                  ),
                  Text(
                    StringManager.onboarding_text,
                    textAlign: TextAlign.center,
                    style: regulartextStyle.copyWith(
                        fontSize: FontSize.s14,
                        height: 1.8,
                        color: Palette.textColorLight),
                  ),
                  const SizedBox(
                    height: AppMargin.m30,
                  ),
                  SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const WormEffect(
                          dotColor: Palette.indicatorColor,
                          dotHeight: AppSize.s6,
                          dotWidth: AppSize.s6,
                          spacing: AppPadding.p14,
                          activeDotColor: Colors.white),
                      onDotClicked: (index) {}),
                  const SizedBox(
                    height: AppMargin.m50,
                  ),
                  CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Base()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(AppMargin.m50),
                          ),
                          child: Image.asset(
                            ImagePaths.googleLogo,
                            height: AppSize.s26,
                            width: AppSize.s26,
                          ),
                        ),
                        const SizedBox(width: AppMargin.m20),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                StringManager.login_google,
                                style: regulartextStyle.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppMargin.m50,
                  ),
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                          text: StringManager.dont_have_account,
                          style: regulartextStyle.copyWith(
                            color: Palette.textColorLight,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        TextSpan(
                          text: StringManager.sign_up,
                          style: regulartextStyle.copyWith(
                            color: Palette.textColorDark,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
