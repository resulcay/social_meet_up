import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/dot_indicator.dart';
import 'components/onboarding_screen_body_item.dart';
import 'components/sign_in_button.dart';

PageController onboardingBodyController = PageController();
List<Widget> onboardingBodyItems = const [
  OnboardingScreenBodyItem(
    title: "Welcome to Meet Up",
    description:
        "The best way to meet people and try new activities. Let's get started!",
  ),
  OnboardingScreenBodyItem(
    title: "Hello There",
    description: "Kinda diff desc here",
  ),
  OnboardingScreenBodyItem(
    title: "At last",
    description: "very very diff content here",
  ),
  OnboardingScreenBodyItem(
    title: "End last",
    description: "very very very diff content here",
  ),
];

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kDarkestPurple,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: List.generate(
                                  onboardingBodyItems.length, (index) {
                                return DotIndicator(
                                  isActive: index == _pageIndex,
                                );
                              }),
                            )),
                        Expanded(
                          child: PageView.builder(
                            physics: const BouncingScrollPhysics(),
                            controller: onboardingBodyController,
                            itemCount: onboardingBodyItems.length,
                            // Dot indicator get triggered when PageView index changed.

                            onPageChanged: (value) {
                              setState(() {
                                _pageIndex = value;
                              });
                            },
                            itemBuilder: (context, index) =>
                                onboardingBodyItems[index],
                          ),
                        ),
                        Text(
                          "CONTINUE WITH:",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: kNormalWhite.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SignInButton(
                        text: "e-mail",
                        color: kDarkPink,
                        function: () {
                          // TODO : Route to SignIn or SignUp via Mail.
                        },
                      ),
                      SignInButton(
                        text: "google",
                        color: kNormalPink,
                        function: () {
                          // TODO : Route to SignIn via Google.
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
