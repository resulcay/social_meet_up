import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../onboarding_screen/components/sign_in_button.dart';

class SuccessfulJoin extends StatelessWidget {
  const SuccessfulJoin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                  color: kNormalWhite,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "You +1 guest are going!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: kNormalWhite,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                          "assets/images/yoga-2.png",
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "TODAY 5:30 PM - 6:00 PM",
                          style: TextStyle(
                            color: kNormalWhite.withOpacity(.6),
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            maxLines: 3,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            "Yoga and Meditation for Beginners Yoga and Meditation for Beginners",
                            style: TextStyle(
                              color: kNormalWhite,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 52,
                  decoration: BoxDecoration(
                    color: kHighGrey,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Image.asset(
                            "assets/images/light-tell.png",
                          ),
                        ),
                        const Text(
                          "TELL FRIENDS",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: kNormalWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SignInButton(
              text: "done",
              color: kDarkPink,
              function: () {},
            ),
          ],
        ),
      ],
    );
  }
}
