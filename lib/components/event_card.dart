import 'package:flutter/material.dart';

import '../constants.dart';

class EventCard extends StatelessWidget {
  final Color backgroundColor;
  final Color cardColor;
  final double width;
  final String iconPath;
  final String day;
  final String timeOfDay;
  final String completerTimeText;
  final String descriptionText;
  final String imagePath;
  final String userName;

  const EventCard({
    Key? key,
    required this.backgroundColor,
    required this.cardColor,
    required this.width,
    required this.iconPath,
    required this.day,
    required this.timeOfDay,
    required this.completerTimeText,
    required this.descriptionText,
    required this.imagePath,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: cardColor,
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
                child: Image.asset(iconPath),
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
                        day,
                        style: kTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          timeOfDay,
                          style: kTextStyle,
                        ),
                      ),
                      Text(
                        completerTimeText,
                        style: kTextStyle,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      descriptionText,
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
                              child: Image.asset(imagePath),
                            ),
                            Image.asset(imagePath),
                            const SizedBox(width: 50)
                          ],
                        ),
                        Text(
                          userName,
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
  }
}
