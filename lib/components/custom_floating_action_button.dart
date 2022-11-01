import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/index_provider.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Function() function;
  const CustomFloatingActionButton({
    Key? key,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedIndex =
        Provider.of<IndexProvider>(context, listen: true).selectedIndex;
    //
    return selectedIndex != 0
        ? FloatingActionButton(
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
          )
        : Container();
  }
}
