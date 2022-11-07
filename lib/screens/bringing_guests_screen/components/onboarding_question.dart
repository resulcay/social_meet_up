import 'package:flutter/material.dart';
import 'package:social_meet_up/screens/bringing_guests_screen/bringing_guests_screen.dart';

import '../../../constants.dart';
import '../../onboarding_screen/components/sign_in_button.dart';

class OnboardingQuestion extends StatelessWidget {
  const OnboardingQuestion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                  color: kNormalWhite,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Bringing Guests?",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: kNormalWhite,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Container(
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        color: kHighGrey,
                        shape: BoxShape.circle,
                        backgroundBlendMode: BlendMode.softLight,
                      ),
                      child: Image.asset(
                        "assets/images/minus.png",
                      ),
                    ),
                  ),
                ),
                const Text(
                  "1",
                  style: TextStyle(
                    color: kNormalWhite,
                    fontSize: 42,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Container(
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        color: kDarkPink,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "assets/images/plus.png",
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        SignInButton(
          text: "next",
          color: kDarkPink,
          function: () {
            joinEventPageController.animateToPage(
              1,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          },
        ),
      ],
    );
  }
}
