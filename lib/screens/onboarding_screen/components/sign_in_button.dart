import 'package:flutter/material.dart';
import 'package:social_meet_up/constants.dart';

class SignInButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function() function;
  const SignInButton(
      {super.key,
      required this.text,
      required this.color,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(40),
        child: InkWell(
          onTap: function,
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Container(
            width: double.infinity,
            height: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: Text(
                text.toUpperCase(),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: kNormalWhite,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
