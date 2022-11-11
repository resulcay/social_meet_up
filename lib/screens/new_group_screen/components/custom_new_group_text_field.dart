import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomNewGroupTextField extends StatelessWidget {
  final String labelText;
  final TextInputAction textInputAction;
  final TextEditingController textEditingController;
  const CustomNewGroupTextField({
    Key? key,
    required this.labelText,
    required this.textInputAction,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      cursorColor: kNormalPink,
      cursorHeight: 20,
      obscureText: false,
      textInputAction: textInputAction,
      style: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: kNormalWhite),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: kNormalWhite.withOpacity(.6),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: kGrey,
            width: .5,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: kDarkPink,
            width: 2,
          ),
        ),
      ),
    );
  }
}
