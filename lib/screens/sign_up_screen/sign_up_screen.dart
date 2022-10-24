import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../media_query_extension.dart';

import '../onboarding_screen/components/sign_in_button.dart';
import '../sign_in_screen/components/decorated_text_field.dart';
import '../sign_in_screen/components/top_sign_in_switch.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const TopBackgroundContainer(containerColor: kDarkPink),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TopSignInSwitch(
                          containerColor: kDarkPink,
                          text: "sign in",
                          textColor: kNormalWhite.withOpacity(.6),
                          function: () {
                            // TODO : Route to SignIn Screen.
                          },
                        ),
                        TopSignInSwitch(
                          containerColor: kDarkPink,
                          text: "sign up",
                          textColor: kNormalWhite,
                          function: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 271,
                          decoration: BoxDecoration(
                            color: kNormalWhite,
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 20),
                                blurRadius: 50,
                                color: kGrey.withOpacity(0.4),
                              ),
                            ],
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                DecoratedTextField(
                                    isObscureText: false,
                                    inputAction: TextInputAction.next,
                                    hintText: "Name"),
                                DecoratedTextField(
                                    isObscureText: false,
                                    inputAction: TextInputAction.next,
                                    hintText: "Email"),
                                DecoratedTextField(
                                    isObscureText: true,
                                    inputAction: TextInputAction.done,
                                    hintText: "Password"),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, bottom: 10),
                          child: SignInButton(
                            text: "continue",
                            color: kDarkPink,
                            function: () {
                              // TODO : Check Validation then Route to HomePage.
                            },
                          ),
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
    );
  }
}

class TopBackgroundContainer extends StatelessWidget {
  final Color containerColor;
  const TopBackgroundContainer({
    Key? key,
    required this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.height * 0.33,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(80),
        ),
      ),
    );
  }
}
