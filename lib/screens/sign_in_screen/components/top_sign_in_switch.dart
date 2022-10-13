import 'package:flutter/material.dart';

class TopSignInSwitch extends StatelessWidget {
  final String text;
  final Color containerColor;
  final Color textColor;
  final Function() function;
  const TopSignInSwitch({
    Key? key,
    required this.text,
    required this.containerColor,
    required this.textColor,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 32,
          width: 80,
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              text.toUpperCase(),
              style: TextStyle(
                color: textColor,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
