import 'package:flutter/material.dart';
import 'package:social_meet_up/media_query_extension.dart';

import '../../../constants.dart';

class ReadMessageCard extends StatelessWidget {
  const ReadMessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        height: 100,
        width: context.width,
        decoration: BoxDecoration(
          color: kDarkPurple,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(80),
          ),
          boxShadow: [
            BoxShadow(
              color: kDarkPink.withOpacity(.2),
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/message-pp.png"),
                    foregroundColor: Colors.black,
                    maxRadius: 27,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Stephane Moreau",
                          style: TextStyle(
                            color: kDarkGrey.withOpacity(.7),
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
                            "Check out this Meetup with Montreal",
                            style: TextStyle(
                              color: kNormalWhite,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  right: 25,
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Aug 19",
                    style: TextStyle(
                      color: kDarkGrey.withOpacity(.7),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
