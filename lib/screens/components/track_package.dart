import 'package:delivery_app_talentql/core/constants/palette.dart';
import 'package:delivery_app_talentql/core/resources/font_manager.dart';
import 'package:delivery_app_talentql/core/resources/image_paths.dart';
import 'package:delivery_app_talentql/core/resources/string_manager.dart';
import 'package:delivery_app_talentql/core/resources/values_manager.dart';
import 'package:delivery_app_talentql/screens/components/custom_button.dart';
import 'package:delivery_app_talentql/screens/components/rounded_text_field.dart';
import 'package:delivery_app_talentql/screens/track_screen.dart';
import 'package:delivery_app_talentql/theme/styles.dart';
import 'package:flutter/material.dart';

class TrackPackage extends StatelessWidget {
  const TrackPackage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: AppMargin.m16),
          padding: const EdgeInsets.only(
              top: AppPadding.p50,
              bottom: AppPadding.p40,
              left: AppPadding.p30,
              right: AppPadding.p30),
          decoration: const BoxDecoration(
            color: Palette.background,
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s32)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringManager.track_package,
                style: regulartextStyle.copyWith(
                    fontSize: FontSize.s18,
                    fontWeight: FontWeight.w600,
                    color: Palette.textColor2),
              ),
              const SizedBox(
                height: AppMargin.m10,
              ),
              Text(
                StringManager.enter_receipt,
                style: regulartextStyle.copyWith(
                    fontSize: FontSize.s14,
                    fontWeight: FontWeight.w400,
                    color: Palette.textColorYellow),
              ),
              const SizedBox(
                height: AppMargin.m30,
              ),
              const RoundedTextField(),
              const SizedBox(
                height: AppMargin.m12,
              ),
              CustomButton(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppMargin.m10),
                    child: Row(
                      children: [
                        Text(
                          StringManager.track_now,
                          style: regulartextStyle.copyWith(
                              fontSize: FontSize.s14,
                              fontWeight: FontWeight.w600,
                              color: Palette.white),
                        ),
                        const Spacer(),
                        Image.asset(
                          ImagePaths.arrow,
                          height: AppMargin.m16,
                          width: AppSize.s16,
                        )
                      ],
                    ),
                  ),
                  onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TrackScreen()),
                    );
                  }),
            ],
          ),
        ),
        Positioned(
          top: -50.0,
          right: 0.0,
          child: Image.asset(
            ImagePaths.spiralLines,
            height: AppSize.s300,
            width: AppSize.s200,
          ),
        ),
      ],
    );
  }
}
