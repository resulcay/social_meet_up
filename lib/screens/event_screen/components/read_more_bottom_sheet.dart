import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:social_meet_up/constants.dart';
import 'package:social_meet_up/media_query_extension.dart';

class ReadMoreBottomSheet extends StatelessWidget {
  const ReadMoreBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          '''
New to Yoga, or looking to take your mat to practice in new places?

Get to know your local community and neighbors better by joining our Yoga family.

Practice a variety of Yoga styles taught by experienced Yoga instructors in Vancouver.

Join our circle of friends for Yoga today!

Attention Yogis: Please request to join to find out more details. We only approve members with a real name as this is a social yoga event. Please bring a mat but we will try and provide mats for those who do not have one.
''',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: kNormalGrey,
          ),
        ),
      ),
    );
  }
}
