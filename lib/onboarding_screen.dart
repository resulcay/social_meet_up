import 'package:flutter/material.dart';
import 'package:social_meet_up/constants.dart';
import 'package:social_meet_up/sign_in_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkestPurple,
      body: Stack(
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Image.asset("assets/images/bg.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      SignInButton(
                        text: "email",
                        color: kDarkPink,
                        function: () {},
                      ),
                      SignInButton(
                        text: "facebook",
                        color: kDarkPink,
                        function: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
