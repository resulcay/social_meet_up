import 'dart:ui';

import 'package:flutter/material.dart';

import 'components/onboarding_question.dart';
import 'components/successful_join.dart';

PageController joinEventPageController = PageController();

class BringingGuestsScreen extends StatelessWidget {
  const BringingGuestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: PageView(
          controller: joinEventPageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            OnboardingQuestion(),
            SuccessfulJoin(),
          ],
        ),
      ),
    );
  }
}
