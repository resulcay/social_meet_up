import 'package:flutter/material.dart';
import '../constants.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Function() function;
  final Color? buttonColor;
  const CustomFloatingActionButton({
    Key? key,
    required this.function,
    this.buttonColor = kNormalWhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: FloatingActionButton(
        backgroundColor: buttonColor,
        onPressed: () {},
        child: IconButton(
          onPressed: function,
          icon: const Icon(
            Icons.add,
            size: 25,
            color: kDarkestPurple,
          ),
        ),
      ),
    );
  }
}
