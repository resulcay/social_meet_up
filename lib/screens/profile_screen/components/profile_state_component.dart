import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProfileStateComponent extends StatelessWidget {
  final Color badgeColor;
  final String badgeText;
  final String iconPath;
  final String componentText;
  final Function() function;
  const ProfileStateComponent(
      {Key? key,
      required this.badgeText,
      required this.iconPath,
      required this.componentText,
      required this.badgeColor,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Badge(
            badgeColor: badgeColor,
            shape: BadgeShape.circle,
            badgeContent: Text(
              badgeText,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: kNormalWhite,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Image.asset(iconPath),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Text(
              componentText,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: kDarkGrey,
                    fontSize: 14,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
