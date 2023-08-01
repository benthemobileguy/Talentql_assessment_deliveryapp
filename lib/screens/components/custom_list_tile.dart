import 'package:delivery_app_talentql/core/constants/palette.dart';
import 'package:delivery_app_talentql/core/resources/font_manager.dart';
import 'package:delivery_app_talentql/core/resources/values_manager.dart';
import 'package:delivery_app_talentql/theme/styles.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String leadingImageUrl;
  final String title;
  final String subtitle;
  final String trailingImageUrl;

  const CustomListTile({
    super.key,
    required this.leadingImageUrl,
    required this.title,
    required this.subtitle,
    required this.trailingImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(AppPadding.p10),
        width: AppSize.s56,
        height: AppSize.s56,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Palette.cardBg,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
              24.0),
          child: Image.asset(
            leadingImageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        title,
        style: regulartextStyle.copyWith(
            fontSize: FontSize.s14, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(subtitle,
          style: regulartextStyle.copyWith(
              fontSize: FontSize.s14, fontWeight: FontWeight.w400)),
      trailing: Image.asset(
        trailingImageUrl,
        color: Palette.arrowColor,
        fit: BoxFit.contain,
        width: AppSize.s12,
        height: AppMargin.m12,
      ),
    );
  }
}
