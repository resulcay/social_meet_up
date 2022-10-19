import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:social_meet_up/media_query_extension.dart';
import 'package:social_meet_up/models/event_card_model.dart';

import '../../../constants.dart';

List<Widget> appBarRemainingWidgets = List.generate(
    5,
    (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: kGrey),
            ),
            child: Image.asset("assets/images/heart.png"),
          ),
        ));

class CustomSliverAppBar extends StatelessWidget {
  final bool badgeToAnimate;
  final String badgeText;
  final String imagePath;
  final String bottomText;
  const CustomSliverAppBar({
    Key? key,
    required this.badgeToAnimate,
    required this.badgeText,
    required this.imagePath,
    required this.bottomText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: context.height * .2,
      backgroundColor: eventCards[0].cardColor,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            color: kNormalWhite,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80),
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 20,
                left: 40,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Badge(
                            alignment: Alignment.topRight,
                            toAnimate: badgeToAnimate,
                            shape: BadgeShape.square,
                            padding: const EdgeInsets.all(5),
                            badgeColor: kWhitePurple,
                            borderRadius: BorderRadius.circular(12),
                            badgeContent: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 3),
                              child: Text(
                                badgeText,
                                style: const TextStyle(
                                  color: kNormalWhite,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                imagePath,
                              ),
                            ),
                          ),
                          Row(
                            children: appBarRemainingWidgets,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          bottomText,
                          style: TextStyle(
                            color: kDeepBlue.withOpacity(.56),
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
