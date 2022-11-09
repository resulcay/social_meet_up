import 'package:flutter/material.dart';
import 'package:social_meet_up/media_query_extension.dart';
import '../../constants.dart';
import 'components/are_you_going_widget.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkestPurple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _titleContainer(context),
            _areYouGoingContainer(context),
            _detailsContainer(context)
          ],
        ),
      ),
    );
  }

  Container _titleContainer(BuildContext context) {
    return Container(
      color: kNormalWhite,
      child: Container(
        height: 214,
        width: context.width,
        decoration: const BoxDecoration(
          color: kNormalPink,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/back-arrow.png"),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/share.png"),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    top: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Yoga and Meditation for Beginners",
                        style: TextStyle(
                          color: kNormalWhite,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  left: 15,
                                  child: Image.asset(
                                      "assets/images/avatar-female.png"),
                                ),
                                Image.asset("assets/images/avatar-male.png"),
                                const SizedBox(
                                  width: 50,
                                )
                              ],
                            ),
                            Text(
                              "4 people are going 56 spots left",
                              style: TextStyle(
                                  color: kNormalWhite.withOpacity(.48),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _areYouGoingContainer(BuildContext context) {
    return Container(
      height: 214,
      decoration: const BoxDecoration(
        color: kNormalWhite,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/yoga.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Easy and Gentle Yoga",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Montreal, QC Private group",
                      style: TextStyle(
                        color: kLightPurple.withOpacity(.48),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: AreYouGoingWidget(),
          )
        ],
      ),
    );
  }

  Padding _detailsContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 30, top: 30),
      child: Column(
        children: [
          SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/icon.png"),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Today",
                        style: TextStyle(
                            color: kNormalWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          "5:30 PM - 8:00 PM",
                          style: TextStyle(
                              color: kDarkGrey,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                      ),
                      Text(
                        "Every week on Monday",
                        style: TextStyle(
                            color: kDarkGrey,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            width: context.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/dark-marker.png"),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 300,
                        height: 40,
                        child: Text(
                          maxLines: 2,
                          softWrap: true,
                          "The Bay Department Store  (7 th Floor restaurant/cafeteria dining hall)",
                          style: TextStyle(
                            color: kNormalWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      const Text(
                        "585 Saint Catherine Street West, Montreal, QC",
                        style: TextStyle(
                          color: kDarkGrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset("assets/images/map.png"),
                            Image.asset("assets/images/map-pin.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/dark-card.png"),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Text(
                    "\$ 21.00  ",
                    style: TextStyle(
                        color: kNormalWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/dark-user.png"),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Text(
                    "Hosted by Joe",
                    style: TextStyle(
                        color: kNormalWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '''
New to Yoga, or looking to take your mat to practice in new places?

Get to know your local community and neighbors better by joining our Yoga family.
''',
                style: TextStyle(
                    color: kDarkGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  "Read more",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: kNormalPink),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/dark-chat.png"),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Live Chat",
                        style: TextStyle(
                            color: kNormalWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 150,
                                child: Stack(
                                  children: List.generate(
                                    6,
                                    (index) {
                                      return Positioned(
                                        left: index * 20,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/images/Mask-$index.png"),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Text(
                                "& 12 others",
                                style: TextStyle(
                                    color: kNormalWhite.withOpacity(.7),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.italic),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
