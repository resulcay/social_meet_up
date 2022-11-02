import 'package:flutter/material.dart';
import 'package:social_meet_up/media_query_extension.dart';

import '../../../components/event_card.dart';
import '../../../constants.dart';
import '../../../models/event_card_model.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: List.generate(
              eventCards.length,
              (index) {
                if (index == 1) {
                  return Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            // TODO : Navigate to EventScreen.
                          },
                          child: EventCard(
                            backgroundColor: kDarkBlueVariant,
                            cardColor: kMiddleGreen,
                            width: context.width / 2,
                            day: eventCards[index].day,
                            timeOfDay: eventCards[index].timeOfDay,
                            completerTimeText:
                                eventCards[index].completerTimeText,
                            descriptionText: eventCards[index].descriptionText,
                            iconPath: eventCards[index].iconPath,
                            imagePath: eventCards[index].imagePath,
                            userName: eventCards[index].userName,
                          )),
                      GestureDetector(
                        onTap: () {
                          // TODO : Navigate to EventScreen.
                        },
                        child: EventCard(
                          backgroundColor: kMiddleGreen,
                          cardColor: kDarkGreen,
                          width: context.width / 2,
                          day: eventCards[index].day,
                          timeOfDay: eventCards[index].timeOfDay,
                          completerTimeText:
                              eventCards[index].completerTimeText,
                          descriptionText: eventCards[index].descriptionText,
                          iconPath: eventCards[index].iconPath,
                          imagePath: eventCards[index].imagePath,
                          userName: eventCards[index].userName,
                        ),
                      ),
                    ],
                  );
                }
                return GestureDetector(
                  onTap: () {
                    // TODO : Navigate to EventScreen.
                  },
                  child: EventCard(
                    backgroundColor: eventCardBackgroundColors2[index],
                    cardColor: eventCardColors2[index],
                    width: context.width,
                    day: eventCards[index].day,
                    timeOfDay: eventCards[index].timeOfDay,
                    completerTimeText: eventCards[index].completerTimeText,
                    descriptionText: eventCards[index].descriptionText,
                    iconPath: eventCards[index].iconPath,
                    imagePath: eventCards[index].imagePath,
                    userName: eventCards[index].userName,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 100)
        ],
      ),
    );
  }
}
