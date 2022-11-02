import 'package:flutter/material.dart';
import 'package:social_meet_up/media_query_extension.dart';

import '../../constants.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkestPurple,
      body: Column(
        children: [
          Container(
            color: kNormalWhite,
            child: Container(
              height: 214,
              width: context.width,
              decoration: const BoxDecoration(
                color: kNormalPink,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Image.asset("assets/images/back-arrow.png"),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/share.png"),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                          top: 10,
                          right: 10,
                          bottom: 10,
                        ),
                        child: Column(
                          children: [
                            const Text(
                              "Yoga and Meditation for Beginners",
                              style: TextStyle(
                                color: kNormalWhite,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                      Positioned(
                                        left: 15,
                                        child: Image.asset(
                                            "assets/images/avatar-female.png"),
                                      ),
                                      Image.asset(
                                          "assets/images/avatar-male.png"),
                                      const SizedBox(
                                        width: 50,
                                      )
                                    ],
                                  ),
                                  Text(
                                    "4 people are going 56 spots left",
                                    style: TextStyle(
                                        color: kNormalWhite.withOpacity(.48),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.italic),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 214,
            decoration: const BoxDecoration(
              color: kNormalWhite,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/yoga.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Easy and Gentle Yoga",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Montreal, QC Private group",
                            style: TextStyle(
                              color: kLightPurple.withOpacity(.48),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    height: 68,
                    width: context.width,
                    decoration: const BoxDecoration(
                      color: kDarkPurple,
                      borderRadius: BorderRadius.all(
                        Radius.circular(70),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/edit.png"),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Are you going?",
                              style: TextStyle(
                                color: kNormalWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "56 spots left",
                              style: TextStyle(
                                color: kDarkGrey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                color: kLightGrey,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/images/x.png"),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                color: kLightGrey,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/images/check.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
