import 'package:flutter/material.dart';
import '../constants.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Function() function;
  const CustomFloatingActionButton({
    Key? key,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kNormalWhite,
      onPressed: () {},
      child: IconButton(
        onPressed: function,
        icon: const Icon(
          Icons.add,
          size: 25,
          color: kDarkestPurple,
        ),
      ),
    );
  }
}
