import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:social_meet_up/media_query_extension.dart';
import 'package:social_meet_up/models/app_bar_category_model.dart';
import 'package:social_meet_up/models/event_card_model.dart';

import '../../../constants.dart';

class CustomSliverAppBar extends StatefulWidget {
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
  State<CustomSliverAppBar> createState() => _CustomSliverAppBarState();
}

class _CustomSliverAppBarState extends State<CustomSliverAppBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: context.height * .2,
      backgroundColor: eventCardColors[0],
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            color: kNormalWhite,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15, top: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Badge(
                              alignment: Alignment.topRight,
                              toAnimate: widget.badgeToAnimate,
                              shape: BadgeShape.square,
                              padding: const EdgeInsets.all(5),
                              badgeColor: kWhitePurple,
                              borderRadius: BorderRadius.circular(12),
                              badgeContent: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: Text(
                                  widget.badgeText,
                                  style: const TextStyle(
                                    color: kNormalWhite,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 27,
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                  widget.imagePath,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: Text(
                                widget.bottomText,
                                style: TextStyle(
                                  color: kDeepBlue.withOpacity(.56),
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: List.generate(
                          categories.length,
                          (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  AnimatedContainer(
                                    duration: const Duration(milliseconds: 200),
                                    height: selectedIndex == index ? 62 : 54,
                                    width: selectedIndex == index ? 62 : 54,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: selectedIndex == index
                                            ? appBarBorderColors[index]
                                            : kGrey,
                                        width: selectedIndex == index ? 2 : 1,
                                      ),
                                    ),
                                    child:
                                        Image.asset(categories[index].iconPath),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      categories[index].categoryName,
                                      style: TextStyle(
                                        color: selectedIndex == index
                                            ? kDeepBlue
                                            : kDeepBlue.withOpacity(.56),
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset("assets/images/arrow.png"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
