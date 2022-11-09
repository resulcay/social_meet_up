import 'package:flutter/material.dart';
import 'package:social_meet_up/media_query_extension.dart';

import '../../../constants.dart';

class UnSeenNotificationCard extends StatelessWidget {
  const UnSeenNotificationCard({
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
          color: kNormalPink,
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: 29,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/view.png"),
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
                    SizedBox(
                      width: context.width * .65,
                      child: const Text(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        "Everyday English-French-Spanish: Conversation and Fun - Joe!",
                        style: TextStyle(
                          color: kNormalWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "9 hrs",
                      style: TextStyle(
                        color: kNormalWhite.withOpacity(.7),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
