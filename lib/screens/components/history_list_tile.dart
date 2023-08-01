import 'package:delivery_app_talentql/core/constants/palette.dart';
import 'package:delivery_app_talentql/core/resources/font_manager.dart';
import 'package:delivery_app_talentql/core/resources/values_manager.dart';
import 'package:delivery_app_talentql/theme/styles.dart';
import 'package:flutter/material.dart';

class HistoryListTile extends StatelessWidget {
  final String leadingImageUrl;
  final String title;
  final String subtitle;
  final String trailingText;

  const HistoryListTile({
    Key? key,
    required this.leadingImageUrl,
    required this.title,
    required this.subtitle,
    required this.trailingText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(AppPadding.p12),
            width: AppSize.s60,
            height: AppSize.s60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Palette.cardBg,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppMargin.m25),
              child: Image.asset(
                leadingImageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: AppMargin.m16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: AppMargin.m10),
                child: Text(
                  title,
                  style: regulartextStyle.copyWith(
                      fontSize: FontSize.s15,
                      height: 0.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Text(subtitle,
                  style: regulartextStyle.copyWith(
                      fontSize: FontSize.s15,
                      height: 0.0,
                      fontWeight: FontWeight.w400)),
            ],
          ),
        ],
      ),
      trailing: Text(
        trailingText,
        style: regulartextStyle.copyWith(
            fontSize: FontSize.s14,
            fontWeight: FontWeight.w500,
            height: 0.0,
            color: Palette.subtitleColor),
      ),
    );
  }
}
