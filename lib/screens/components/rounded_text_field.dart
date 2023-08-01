import 'package:delivery_app_talentql/core/constants/palette.dart';
import 'package:delivery_app_talentql/core/resources/font_manager.dart';
import 'package:delivery_app_talentql/core/resources/string_manager.dart';
import 'package:delivery_app_talentql/core/resources/values_manager.dart';
import 'package:delivery_app_talentql/theme/styles.dart';
import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28.0),
        border: Border.all(color: Palette.activeColorIcon, width: 0.5),
      ),
      child: TextField(
        cursorColor: Palette.activeColorIcon,
        decoration: InputDecoration(
          hintText: StringManager.enter_receipt_number,
          hintStyle: regulartextStyle.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: FontSize.s14,
              color: Palette.activeColorIcon),
          labelStyle: regulartextStyle.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: FontSize.s14,
              color: Palette.activeColorIcon),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: AppPadding.p20, vertical: AppPadding.p18),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
