import 'package:flutter/material.dart';
import 'package:social_meet_up/constants.dart';
import 'package:social_meet_up/media_query_extension.dart';
import 'package:social_meet_up/screens/onboarding_screen/components/sign_in_button.dart';

import 'components/custom_new_group_text_field.dart';

TextEditingController groupName = TextEditingController();
TextEditingController description = TextEditingController();

class NewGroupScreen extends StatelessWidget {
  const NewGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkPurple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 183,
              width: context.width,
              decoration: const BoxDecoration(
                color: kNormalWhite,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              top: 15,
                            ),
                            child: Image.asset(
                              "assets/images/back-arrow.png",
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Image.asset(
                                "assets/images/starred-pp.png",
                                scale: .9,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Start a new",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    "Find your people and do your thing - together",
                                    style: TextStyle(
                                        color: kLightPurple,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.italic),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    "Give your group a name. Describe who should join and what you’ll do.",
                    style: TextStyle(
                      color: kDarkGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CustomNewGroupTextField(
                    labelText: "Group name",
                    textEditingController: groupName,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 10),
                  CustomNewGroupTextField(
                    labelText: "Description",
                    textEditingController: description,
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/dark-marker.png"),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 2,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Location",
                              style: TextStyle(
                                color: kNormalWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            const Text(
                              "Montreal, QC",
                              style: TextStyle(
                                color: kDarkGrey,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset("assets/images/map.png"),
                                  Image.asset("assets/images/map-pin.png"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        splashRadius: 30,
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset("assets/images/dark-marker.png"),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 2,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Interests",
                              style: TextStyle(
                                color: kNormalWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Select a few pics",
                              style: TextStyle(
                                color: kDarkGrey,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        splashRadius: 30,
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SignInButton(
                    text: "continue",
                    color: kNormalPurple,
                    function: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
