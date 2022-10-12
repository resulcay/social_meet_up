import 'package:flutter/material.dart';
import 'package:social_meet_up/constants.dart';
import 'package:social_meet_up/sign_in_button.dart';

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
                                return OnboardingCircleAvatar(
                                  isActive: index == _pageIndex,
                                );
                              }),
                            )),
                        Expanded(
                          child: PageView.builder(
                            controller: onboardingBodyController,
                            itemCount: onboardingBodyItems.length,
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
                    children: [
                      SignInButton(
                        text: "e-mail",
                        color: kDarkPink,
                        function: () {},
                      ),
                      SignInButton(
                        text: "facebook",
                        color: kNormalPink,
                        function: () {},
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

class OnboardingCircleAvatar extends StatelessWidget {
  final bool isActive;
  const OnboardingCircleAvatar({
    this.isActive = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 4,
        backgroundColor: isActive ? kNormalWhite : kGrey,
      ),
    );
  }
}

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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
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
