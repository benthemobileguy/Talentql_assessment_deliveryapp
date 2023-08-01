import 'package:delivery_app_talentql/core/constants/palette.dart';
import 'package:delivery_app_talentql/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imageUrl;

  const ImageCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      height: 65,
      child: Card(
        elevation: 0.0,
        color: Palette.cardBg,
        margin: const EdgeInsets.symmetric(horizontal: AppMargin.m8, vertical: AppMargin.m8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s32)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppSize.s12),
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p30),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
