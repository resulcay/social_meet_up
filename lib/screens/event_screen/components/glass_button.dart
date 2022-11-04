// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GlassButton extends StatelessWidget {
  final VoidCallback function;
  final String iconPath;
  final Color buttonColor;
  const GlassButton({
    Key? key,
    required this.function,
    required this.iconPath,
    required this.buttonColor,
  }) : super(key: key);

  get kLightGrey => null;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: buttonColor,
            shape: BoxShape.circle,
          ),
          child: Image.asset(iconPath),
        ),
      ),
    );
  }
}
