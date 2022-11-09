import 'package:flutter/material.dart';

import '../../components/custom_floating_action_button.dart';
import '../../constants.dart';
import 'components/profile_state_component.dart';
import 'components/profile_text_component.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkestPurple,
      floatingActionButton: CustomFloatingActionButton(
        function: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                    ),
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // TODO : Change Profile Picture.
                        },
                        child: Image.asset(
                          "assets/images/ava.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: IconButton(
                                  onPressed: () {
                                    // TODO : Route to Home Screen.
                                  },
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    color: kNormalWhite.withOpacity(.4),
                                    size: 30,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 30,
                                  bottom: 10,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "145 meetups",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: kNormalWhite.withOpacity(.63),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Ava Rhodes",
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: kNormalWhite,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            // TODO : Route to Edit Profile Screen.
                                          },
                                          child: Container(
                                            height: 32,
                                            width: 32,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: kDarkPurple,
                                            ),
                                            child: Image.asset(
                                              "assets/images/pen.png",
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: kDarkestPurple,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: kNormalWhite.withOpacity(.1),
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ProfileStateComponent(
                          badgeColor: kDarkPink,
                          badgeText: "7",
                          iconPath: "assets/images/mailbox.png",
                          componentText: "Messages",
                          function: () {
                            // TODO : Route to Messages Screen.
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: VerticalDivider(
                            color: kNormalGrey.withOpacity(.5),
                          ),
                        ),
                        ProfileStateComponent(
                          badgeColor: kNormalPink,
                          badgeText: "5",
                          iconPath: "assets/images/bell.png",
                          componentText: "Notifications",
                          function: () {
                            // TODO : Route to  Notification Screen.
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 2),
            ProfileTextComponent(
              title: "About Me",
              description:
                  "When I was 5 years old, my mother always told me that happiness was the key to life. When I went to school, they asked me what I wanted to be when I grew up. ",
              iconPath: "assets/images/arrow-2.png",
              function: () {
                // TODO : Expand content.
              },
            ),
            const SizedBox(height: 2),
            ProfileTextComponent(
              title: "Timeline",
              description:
                  "You may need to create an account to use some of our Services. You are responsible for safeguarding your account, so use a strong password and limit its use to this account. We cannot and will not be liable for any loss or damage arising from your failure to comply with the above.",
              iconPath: "assets/images/arrow-2.png",
              function: () {
                // TODO : Expand content.
              },
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
