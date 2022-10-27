import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProfileTextComponent extends StatelessWidget {
  final String title;
  final String description;
  final String iconPath;
  final Function() function;
  const ProfileTextComponent({
    Key? key,
    required this.title,
    required this.description,
    required this.function,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: kDarkestPurple,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(80),
        ),
        boxShadow: [
          BoxShadow(
            color: kNormalWhite.withOpacity(.1),
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kNormalWhite,
                    ),
                  ),
                  GestureDetector(
                    onTap: function,
                    child: Image.asset(iconPath),
                  )
                ],
              ),
            ),
            Text(
              description,
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    fontSize: 12,
                    color: kDarkGrey,
                    fontWeight: FontWeight.w500,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
