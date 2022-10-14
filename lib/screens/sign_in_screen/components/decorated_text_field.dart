import 'package:flutter/material.dart';

import '../../../constants.dart';

class DecoratedTextField extends StatelessWidget {
  final bool isObscureText;
  final TextInputAction inputAction;
  final String hintText;
  const DecoratedTextField({
    Key? key,
    required this.isObscureText,
    required this.inputAction,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kNormalPink,
      cursorHeight: 20,
      obscureText: isObscureText,
      textInputAction: inputAction,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: kDarkestPurple.withOpacity(0.32),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: kGrey,
            width: 1,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: kDarkPurple,
            width: 2,
          ),
        ),
      ),
    );
  }
}
