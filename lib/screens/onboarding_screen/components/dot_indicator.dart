import 'package:flutter/material.dart';

import '../../../constants.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;
  const DotIndicator({
    this.isActive = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 4,
        backgroundColor: isActive ? kNormalWhite : kGrey,
      ),
    );
  }
}
