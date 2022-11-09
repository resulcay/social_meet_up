import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:social_meet_up/media_query_extension.dart';

import '../../../constants.dart';

class UnReadMessageCard extends StatelessWidget {
  const UnReadMessageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        height: 100,
        width: context.width,
        decoration: BoxDecoration(
          color: kNormalPurple,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(80),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.2),
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 29,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/message-pp.png"),
                      foregroundColor: Colors.black,
                      maxRadius: 27,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dina Meyer",
                          style: TextStyle(
                            color: kNormalWhite.withOpacity(.7),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 2),
                        SizedBox(
                          width: context.width * .50,
                          child: const Text(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            "Welcome to Yoga Meetup",
                            style: TextStyle(
                              color: kNormalWhite,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "9 hrs",
                      style: TextStyle(
                        color: kNormalWhite.withOpacity(.7),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: const BoxDecoration(
                        color: kNormalWhite,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          "7",
                          style: TextStyle(
                            color: kNormalPurple,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
