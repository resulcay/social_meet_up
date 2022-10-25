import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_meet_up/media_query_extension.dart';
import 'package:social_meet_up/models/app_bar_category_model.dart';
import 'package:social_meet_up/models/event_card_model.dart';
import 'package:social_meet_up/providers/app_bar_provider.dart';
import 'package:social_meet_up/providers/index_provider.dart';
import 'package:social_meet_up/screens/home_screen/home_screen.dart';

import '../../../constants.dart';

ScrollController controller = ScrollController();

class CustomSliverAppBar extends StatefulWidget {
  final bool badgeToAnimate;
  final String badgeText;
  final String imagePath;
  final String bottomText;
  final double screenHeight;
  const CustomSliverAppBar({
    Key? key,
    required this.badgeToAnimate,
    required this.badgeText,
    required this.imagePath,
    required this.bottomText,
    required this.screenHeight,
  }) : super(key: key);

  @override
  State<CustomSliverAppBar> createState() => _CustomSliverAppBarState();
}

class _CustomSliverAppBarState extends State<CustomSliverAppBar>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animController;

  @override
  void initState() {
    super.initState();

    animController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = Tween<double>(
      begin: 0,
      end: widget.screenHeight,
    ).animate(animController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animController.stop();
        } else if (status == AnimationStatus.dismissed) {
          animController.forward();
        }
      });

    animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    bool isExpanded =
        Provider.of<AppBarProvider>(context, listen: true).isExpanded;
    return SliverAppBar(
      expandedHeight: isExpanded ? context.height * .2 : animation.value,
      backgroundColor:
          tree[Provider.of<IndexProvider>(context, listen: true).selectedIndex],
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          if (isExpanded) {
            return FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  color: kNormalWhite,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SingleChildScrollView(
                        controller: controller,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15, top: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Badge(
                                    alignment: Alignment.topRight,
                                    toAnimate: widget.badgeToAnimate,
                                    shape: BadgeShape.square,
                                    padding: const EdgeInsets.all(5),
                                    badgeColor: kWhitePurple,
                                    borderRadius: BorderRadius.circular(12),
                                    badgeContent: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      child: Text(
                                        widget.badgeText,
                                        style: const TextStyle(
                                          color: kNormalWhite,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    child: CircleAvatar(
                                      radius: 27,
                                      backgroundColor: Colors.white,
                                      child: Image.asset(
                                        widget.imagePath,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0),
                                    child: Text(
                                      widget.bottomText,
                                      style: TextStyle(
                                        color: kDeepBlue.withOpacity(.56),
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: List.generate(
                                categories.length,
                                (index) => GestureDetector(
                                  onTap: () {
                                    Provider.of<IndexProvider>(context,
                                            listen: false)
                                        .changeIndex(index);
                                    pageController.animateToPage(
                                      Provider.of<IndexProvider>(context,
                                              listen: false)
                                          .selectedIndex,
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.easeIn,
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Column(
                                      children: [
                                        AnimatedContainer(
                                          duration:
                                              const Duration(milliseconds: 200),
                                          height: Provider.of<IndexProvider>(
                                                          context,
                                                          listen: true)
                                                      .selectedIndex ==
                                                  index
                                              ? 62
                                              : 54,
                                          width: Provider.of<IndexProvider>(
                                                          context,
                                                          listen: true)
                                                      .selectedIndex ==
                                                  index
                                              ? 62
                                              : 54,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Provider.of<IndexProvider>(
                                                              context,
                                                              listen: true)
                                                          .selectedIndex ==
                                                      index
                                                  ? appBarBorderColors[index]
                                                  : kGrey,
                                              width: Provider.of<IndexProvider>(
                                                              context,
                                                              listen: true)
                                                          .selectedIndex ==
                                                      index
                                                  ? 2
                                                  : 1,
                                            ),
                                          ),
                                          child: Image.asset(
                                              categories[index].iconPath),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                            categories[index].categoryName,
                                            style: TextStyle(
                                              color: Provider.of<IndexProvider>(
                                                              context,
                                                              listen: true)
                                                          .selectedIndex ==
                                                      index
                                                  ? kDeepBlue
                                                  : kDeepBlue.withOpacity(.56),
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: GestureDetector(
                          onTap: () {
                            Provider.of<AppBarProvider>(context, listen: false)
                                .expandAppBar();
                          },
                          child: Image.asset("assets/images/arrow.png"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
          return FlexibleSpaceBar(
            background: Container(
              decoration: const BoxDecoration(
                color: kNormalWhite,
              ),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Badge(
                                  alignment: Alignment.topRight,
                                  toAnimate: widget.badgeToAnimate,
                                  shape: BadgeShape.square,
                                  padding: const EdgeInsets.all(5),
                                  badgeColor: kWhitePurple,
                                  borderRadius: BorderRadius.circular(12),
                                  badgeContent: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3),
                                    child: Text(
                                      widget.badgeText,
                                      style: const TextStyle(
                                        color: kNormalWhite,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 27,
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                      widget.imagePath,
                                    ),
                                  ),
                                ),
                                Text(
                                  widget.bottomText,
                                  style: TextStyle(
                                    color: kDeepBlue.withOpacity(.56),
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: List.generate(
                              categories.length,
                              (index) => GestureDetector(
                                onTap: () {
                                  Provider.of<IndexProvider>(context,
                                          listen: false)
                                      .changeIndex(index);
                                  pageController.animateToPage(
                                    Provider.of<IndexProvider>(context,
                                            listen: false)
                                        .selectedIndex,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeIn,
                                  );
                                  Provider.of<AppBarProvider>(context,
                                          listen: false)
                                      .expandAppBar();
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    children: [
                                      AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 200),
                                        height: Provider.of<IndexProvider>(
                                                        context,
                                                        listen: true)
                                                    .selectedIndex ==
                                                index
                                            ? 62
                                            : 54,
                                        width: Provider.of<IndexProvider>(
                                                        context,
                                                        listen: true)
                                                    .selectedIndex ==
                                                index
                                            ? 62
                                            : 54,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Provider.of<IndexProvider>(
                                                            context,
                                                            listen: true)
                                                        .selectedIndex ==
                                                    index
                                                ? appBarBorderColors[index]
                                                : kGrey,
                                            width: Provider.of<IndexProvider>(
                                                            context,
                                                            listen: true)
                                                        .selectedIndex ==
                                                    index
                                                ? 2
                                                : 1,
                                          ),
                                        ),
                                        child: Image.asset(
                                            categories[index].iconPath),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Text(
                                          categories[index].categoryName,
                                          style: TextStyle(
                                            color: Provider.of<IndexProvider>(
                                                            context,
                                                            listen: true)
                                                        .selectedIndex ==
                                                    index
                                                ? kDeepBlue
                                                : kDeepBlue.withOpacity(.56),
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}
