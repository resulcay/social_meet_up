import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:social_meet_up/constants.dart';
import 'package:social_meet_up/media_query_extension.dart';
import 'package:social_meet_up/screens/event_screen/components/glass_button.dart';
import 'package:social_meet_up/screens/onboarding_screen/components/sign_in_button.dart';

class BringingGuestsScreen extends StatelessWidget {
  const BringingGuestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: PageView(
          children: [
            Column(
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
                  function: () {},
                ),
              ],
            ),
            Column(
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
                  function: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
