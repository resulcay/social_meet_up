import 'package:flutter/material.dart';
import 'package:social_meet_up/media_query_extension.dart';

class ReadingPage extends StatelessWidget {
  const ReadingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height,
      width: context.width,
      color: Colors.orangeAccent,
    );
  }
}
