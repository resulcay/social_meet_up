import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_meet_up/media_query_extension.dart';
import 'package:social_meet_up/models/event_card_model.dart';

import '../../constants.dart';
import '../../providers/index_provider.dart';
import 'components/custom_sliver_app_bar.dart';

PageController pageController = PageController();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitePurple,
      body: NestedScrollView(
        physics: kNeverScroll,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CustomSliverAppBar(
            badgeText: "12",
            badgeToAnimate: true,
            bottomText: "YOU",
            imagePath: "assets/images/pp.png",
            screenHeight: context.height,
          )
        ],
        body: PageView(
          controller: pageController,
          onPageChanged: (index) {
            Provider.of<IndexProvider>(context, listen: false)
                .changeIndex(index);
          },
          children: [
            SingleChildScrollView(
              physics: kNeverScroll,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Column(
                  children: List.generate(
                    eventCards.length,
                    (index) => Container(
                      height: context.height * .41,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: eventCardBackgroundColors[index],
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
                                padding: const EdgeInsets.only(
                                    bottom: 80, right: 35),
                                child: Image.asset(eventCards[index].iconPath),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, bottom: 10),
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
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
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
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
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
                                            Image.asset(
                                                eventCards[index].imagePath),
                                            const SizedBox(width: 50)
                                          ],
                                        ),
                                        Text(
                                          "${eventCards[index].userName}, Example Name & others",
                                          style: TextStyle(
                                              color:
                                                  kNormalWhite.withOpacity(.48),
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
              ),
            ),
            Container(
              height: context.height,
              width: context.width,
              color: Colors.tealAccent,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: context.height,
                    width: context.width,
                    color: Colors.greenAccent,
                  ),
                  Container(
                    height: context.height,
                    width: context.width,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: context.height,
                    width: context.width,
                    color: Colors.yellowAccent,
                  ),
                ],
              ),
            ),
            Container(
              height: context.height,
              width: context.width,
              color: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
