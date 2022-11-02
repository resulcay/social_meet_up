// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:social_meet_up/media_query_extension.dart';

import '../../../components/event_card.dart';
import '../../../constants.dart';
import '../../../models/event_card_model.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({
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
                // TODO : Navigate to Event Screen.
              },
              child: EventCard(
                backgroundColor: eventCardBackgroundColors[index],
                cardColor: eventCardColors[index],
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
