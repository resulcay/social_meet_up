import 'package:flutter/material.dart';
import 'package:social_meet_up/media_query_extension.dart';
import 'package:social_meet_up/models/event_card_model.dart';

import '../../constants.dart';
import 'components/custom_sliver_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitePurple,
      body: CustomScrollView(
        slivers: _viewBuilder(context),
      ),
    );
  }
}

List<Widget> _viewBuilder(BuildContext context) {
  List<Widget> bodyWithAppBar = [
    const CustomSliverAppBar(
      badgeText: "12",
      badgeToAnimate: true,
      bottomText: "YOU",
      imagePath: "assets/images/pp.png",
    )
  ];
  List<Widget> body = List.generate(
    eventCards.length,
    (index) => SliverToBoxAdapter(
      child: Container(
        height: context.height * .41,
        width: double.infinity,
        decoration: BoxDecoration(
          color: eventCards[index].backgroundColor,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: eventCards[index].cardColor,
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
                                child: Image.asset(eventCards[index].imagePath),
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
      ),
    ),
  );

  SliverToBoxAdapter spaceAtEnd = const SliverToBoxAdapter(
    child: SizedBox(height: 100),
  );

  bodyWithAppBar.insertAll(1, body);
  bodyWithAppBar.add(spaceAtEnd);
  return bodyWithAppBar;
}
