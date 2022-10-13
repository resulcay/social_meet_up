import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../onboarding_screen/components/sign_in_button.dart';
import 'components/decorated_text_field.dart';
import 'components/top_sign_in_switch.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kNormalWhite,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TopSignInSwitch(
                        containerColor: kDarkPink,
                        text: "sign in",
                        textColor: kNormalWhite,
                        function: () {
                          if (kDebugMode) {
                            print("Gestures work!");
                          }
                        },
                      ),
                      TopSignInSwitch(
                        containerColor: kNormalWhite,
                        text: "sign up",
                        textColor: kGrey,
                        function: () {
                          if (kDebugMode) {
                            print("Gestures work!");
                          }
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: DecoratedTextField(
                          hintText: "Email",
                          inputAction: TextInputAction.next,
                          isObscureText: false,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: DecoratedTextField(
                          hintText: "Password",
                          inputAction: TextInputAction.done,
                          isObscureText: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: SignInButton(
                          text: "continue",
                          color: kDarkPink,
                          function: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "FORGOT PASSWORD",
                            style: TextStyle(
                                color: kDarkPink,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
