import 'package:delivery_app_talentql/core/constants/palette.dart';
import 'package:delivery_app_talentql/core/resources/font_manager.dart';
import 'package:delivery_app_talentql/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class TrackCard extends StatelessWidget {
  const TrackCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p25),
      decoration: const BoxDecoration(
          color: Palette.background,
          borderRadius: BorderRadius.all(
              Radius.circular(AppMargin.m14))),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sukabumi, Indonesia',
            style: TextStyle(
                fontSize: FontSize.s16,
                fontWeight: FontWeight.w600,
                color: Palette.textColorBlue),
          ),
          SizedBox(
            height: AppMargin.m10,
          ),
          Text(
            'No receipt : SCP6653728497',
            style: TextStyle(
                fontSize: FontSize.s13,
                fontWeight: FontWeight.w400,
                color: Palette.textColorYellow),
          ),
            SizedBox(
            height: AppMargin.m10,
          ),
          Divider(
            height:
                20,
            thickness:
                1,
            color: Palette.dividerColor,
          
          ),
            SizedBox(
            height: AppMargin.m10,
          ),
          Text(
            '2,50 USD',
            style: TextStyle(
                fontSize: FontSize.s16,
                fontWeight: FontWeight.w600,
                color: Palette.textColorBlue),
          ),
          SizedBox(
            height: AppMargin.m10,
          ),
          Text(
            'Postal fee',
            style: TextStyle(
                fontSize: FontSize.s13,
                fontWeight: FontWeight.w400,
                color: Palette.textColorYellow),
          ),
            SizedBox(
            height: AppMargin.m10,
          ),
          Divider(
            thickness: 1,
            color: Palette.dividerColor,
          ),
            SizedBox(
            height: AppMargin.m10,
          ),
          Text(
            'Bali, Indonesia',
            style: TextStyle(
                fontSize: FontSize.s16,
                fontWeight: FontWeight.w600,
                color: Palette.textColorBlue),
          ),
          
          SizedBox(
            height: AppMargin.m10,
          ),
          Text(
            'Parcel, 24kg',
            style: TextStyle(
                fontSize: FontSize.s13,
                fontWeight: FontWeight.w400,
                color: Palette.textColorYellow),
          ),
        ],
      ),
    );
  }
}
