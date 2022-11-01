import 'package:flutter/material.dart';
import 'package:social_meet_up/media_query_extension.dart';

import '../../../constants.dart';
import '../../../models/event_card_model.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 0),
      itemCount: eventCards.length,
      itemBuilder: (context, index) {
        if (index == 1) {
          return Row(
            children: [
              Container(
                height: context.height * .41,
                width: context.width / 2,
                decoration: BoxDecoration(
                  color: eventCardBackgroundColors[index],
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: kMiddleGreen,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 80, right: 35),
                          child: Image.asset(eventCards[index].iconPath),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  eventCards[index].day,
                                  style: kTextStyle,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    eventCards[index].timeOfDay,
                                    style: kTextStyle,
                                  ),
                                ),
                                Text(
                                  eventCards[index].completerTimeText,
                                  style: kTextStyle,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                eventCards[index].descriptionText,
                                style: const TextStyle(
                                    color: kNormalWhite,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                      Positioned(
                                        left: 12,
                                        child: Image.asset(
                                            eventCards[index].imagePath),
                                      ),
                                      Image.asset(eventCards[index].imagePath),
                                      const SizedBox(width: 50)
                                    ],
                                  ),
                                  Text(
                                    "Example",
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
              Container(
                height: context.height * .41,
                width: context.width / 2,
                decoration: const BoxDecoration(
                  color: kMiddleGreen,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: kDarkGreen,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 80, right: 35),
                          child: Image.asset(eventCards[index].iconPath),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  eventCards[index].day,
                                  style: kTextStyle,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    eventCards[index].timeOfDay,
                                    style: kTextStyle,
                                  ),
                                ),
                                Text(
                                  eventCards[index].completerTimeText,
                                  style: kTextStyle,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                eventCards[index].descriptionText,
                                style: const TextStyle(
                                    color: kNormalWhite,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                      Positioned(
                                        left: 12,
                                        child: Image.asset(
                                            eventCards[index].imagePath),
                                      ),
                                      Image.asset(eventCards[index].imagePath),
                                      const SizedBox(width: 50)
                                    ],
                                  ),
                                  Text(
                                    "Example 2",
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
            ],
          );
        }
        return Container(
          height: context.height * .41,
          width: double.infinity,
          decoration: BoxDecoration(
            color: eventCardBackgroundColors2[index],
          ),
          child: Container(
            decoration: BoxDecoration(
              color: eventCardColors[index],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(80),
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 80, right: 35),
                    child: Image.asset(eventCards[index].iconPath),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            eventCards[index].day,
                            style: kTextStyle,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              eventCards[index].timeOfDay,
                              style: kTextStyle,
                            ),
                          ),
                          Text(
                            eventCards[index].completerTimeText,
                            style: kTextStyle,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          eventCards[index].descriptionText,
                          style: const TextStyle(
                              color: kNormalWhite,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  left: 12,
                                  child:
                                      Image.asset(eventCards[index].imagePath),
                                ),
                                Image.asset(eventCards[index].imagePath),
                                const SizedBox(width: 50)
                              ],
                            ),
                            Text(
                              "${eventCards[index].userName}, Example Name & others",
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
        );
      },
    );
  }
}
