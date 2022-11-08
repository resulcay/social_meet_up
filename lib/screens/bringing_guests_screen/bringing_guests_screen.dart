import 'dart:ui';

import 'package:flutter/material.dart';

import 'components/onboarding_question.dart';
import 'components/successful_join.dart';

PageController joinEventPageController = PageController();

class BringingGuestsScreen extends StatelessWidget {
  const BringingGuestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: PageView(
              controller: joinEventPageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                OnboardingQuestion(),
                SuccessfulJoin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
