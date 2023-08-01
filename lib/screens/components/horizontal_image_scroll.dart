import 'package:delivery_app_talentql/core/resources/values_manager.dart';
import 'package:delivery_app_talentql/screens/components/image_card.dart';
import 'package:flutter/material.dart';

class HorizontalImageScroll extends StatelessWidget {
  final List<String> imageUrls;
  final PageController pageController;

  const HorizontalImageScroll({super.key, required this.imageUrls, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s300,
      child: PageView.builder(
        itemCount: imageUrls.length,
         padEnds: false,
        controller: pageController,
        itemBuilder: (context, index) {
          return ImageCard(imageUrl: imageUrls[index]);
        },
      ),
    );
  }
}
