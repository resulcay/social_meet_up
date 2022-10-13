import 'package:flutter/material.dart';

import '../../../constants.dart';

class OnboardingScreenBodyItem extends StatelessWidget {
  final String title;
  final String description;
  const OnboardingScreenBodyItem({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          margin: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: kNormalWhite,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: kNormalWhite,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
