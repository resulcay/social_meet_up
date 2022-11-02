import 'package:flutter/material.dart';
import 'package:social_meet_up/media_query_extension.dart';

import 'package:social_meet_up/models/event_card_model.dart';

import '../../../components/event_card.dart';
import '../../../constants.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          children: List.generate(
            eventCards.length,
            (index) => GestureDetector(
              onTap: () {
                // TODO : Navigate to EventScreen.
              },
              child: EventCard(
                backgroundColor: eventCardBackgroundColors3[index],
                cardColor: eventCardColors3[index],
                width: double.infinity,
                day: eventCards[index].day,
                timeOfDay: eventCards[index].timeOfDay,
                completerTimeText: eventCards[index].completerTimeText,
                descriptionText: eventCards[index].descriptionText,
                iconPath: eventCards[index].iconPath,
                imagePath: eventCards[index].imagePath,
                userName: eventCards[index].userName,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
