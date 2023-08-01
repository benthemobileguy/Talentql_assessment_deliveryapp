// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:delivery_app_talentql/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Widget child;
  Function()? onPressed;
  CustomButton({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppMargin.m65,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(52),
          ),
        ),
        onPressed: onPressed,
        child: child
      ),
    );
  }
}
