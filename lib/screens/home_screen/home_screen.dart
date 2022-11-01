// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:social_meet_up/media_query_extension.dart';

import '../../components/custom_floating_action_button.dart';
import '../../constants.dart';
import '../../providers/index_provider.dart';
import 'components/custom_sliver_app_bar.dart';
import 'components/health_page.dart';
import 'components/music_page.dart';
import 'components/reading_page.dart';
import 'components/trending_page.dart';

PageController pageController = PageController();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  _changePageViewOnSlide(BuildContext context, int index) {
    Provider.of<IndexProvider>(context, listen: false).changeIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitePurple,
      floatingActionButton: CustomFloatingActionButton(
        function: () {},
      ),
      body: NestedScrollView(
        physics: const NeverScrollableScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CustomSliverAppBar(
            badgeText: "12",
            badgeToAnimate: true,
            bottomText: "YOU",
            imagePath: "assets/images/pp.png",
            screenHeight: context.height,
          )
        ],
        body: PageView(
          controller: pageController,
          children: const [
            TrendingPage(),
            HealthPage(),
            MusicPage(),
            ReadingPage(),
          ],
          onPageChanged: (index) {
            _changePageViewOnSlide(context, index);
          },
        ),
      ),
    );
  }
}
