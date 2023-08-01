import 'package:delivery_app_talentql/core/constants/palette.dart';
import 'package:delivery_app_talentql/core/resources/font_manager.dart';
import 'package:delivery_app_talentql/core/resources/image_paths.dart';
import 'package:delivery_app_talentql/core/resources/string_manager.dart';
import 'package:delivery_app_talentql/core/resources/values_manager.dart';
import 'package:delivery_app_talentql/screens/components/custom_list_tile.dart';
import 'package:delivery_app_talentql/screens/components/history_list_tile.dart';
import 'package:delivery_app_talentql/screens/components/track_card.dart';
import 'package:delivery_app_talentql/theme/styles.dart';
import 'package:flutter/material.dart';

class TrackScreen extends StatefulWidget {
  const TrackScreen({Key? key}) : super(key: key);

  @override
  State<TrackScreen> createState() => _TrackScreenState();
}

class _TrackScreenState extends State<TrackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          StringManager.tracking_details,
          style: regulartextStyle.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: FontSize.s18,
              color: Palette.titleColor),
        ),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            ImagePaths.map,
            color: Palette.cardBg,
          ),
          Center(
              child: Container(
            padding: const EdgeInsets.only(bottom: AppPadding.p60),
            child: Image.asset(
              ImagePaths.mapLine,
              width: AppSize.s250,
              height: AppSize.s180,
            ),
          )),
          Container(
            height: AppMargin.m88,
            margin: const EdgeInsets.all(AppMargin.m40),
            decoration: const BoxDecoration(
              color: Palette.background,
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s46)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppMargin.m8),
              child: Container(
                margin: const EdgeInsets.all(AppMargin.m5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s28),
                  border: Border.all(width: 0.5, color: Palette.borderColor),
                ),
                child: Center(
                  child: Text(
                    'SCP6653728497',
                    style: regulartextStyle.copyWith(
                      fontSize: FontSize.s16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.2,
            minChildSize: 0.2,
            maxChildSize: 1.0,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Palette.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppMargin.m40),
                    topRight: Radius.circular(AppMargin.m40),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.p20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(ImagePaths.bar,
                            height: AppSize.s6, width: AppSize.s40),
                        const SizedBox(
                          height: AppMargin.m40,
                        ),
                        const Text(
                          StringManager.estimate_arrives_in,
                          style: TextStyle(
                              fontSize: FontSize.s14,
                              fontWeight: FontWeight.w400,
                              color: Palette.subtitleColor),
                        ),
                        const SizedBox(
                          height: AppMargin.m20,
                        ),
                        const Text(
                          '2h 40m',
                          style: TextStyle(
                              fontSize: FontSize.s20,
                              fontWeight: FontWeight.w600,
                              color: Palette.textColorBlue),
                        ),
                        const SizedBox(
                          height: AppMargin.m40,
                        ),
                        const TrackCard(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: AppPadding.p35),
                          child: const Text(
                            StringManager.history,
                            style: TextStyle(
                                fontSize: FontSize.s20,
                                fontWeight: FontWeight.w600,
                                color: Palette.textColorBlue),
                          ),
                        ),
                        const HistoryListTile(
                            leadingImageUrl: ImagePaths.car,
                            title: "In Delivery",
                            subtitle: "Sukabumi, Indonesia",
                            trailingText: "00:00 PM"),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.only(left: AppMargin.m30),
                            height: AppSize.s30,
                              width: 1.5,
                              color: Palette.lineBg,
                            ),
                          ),
                        const HistoryListTile(
                            leadingImageUrl: ImagePaths.transit,
                            title: "Transit - Sending City",
                            subtitle: "Jarkata, Indonesia",
                            trailingText: "21:00 PM"),
                             Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.only(left: AppMargin.m30),
                            height: AppSize.s30,
                              width: 1.5,
                              color: Palette.lineBg,
                            ),
                          ),
                        const HistoryListTile(
                            leadingImageUrl: ImagePaths.box,
                            title: "In Delivery",
                            subtitle: "Sukabumi, Indonesia",
                            trailingText: "19:00 PM"),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
