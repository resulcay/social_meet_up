import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_meet_up/media_query_extension.dart';

import '../../../constants.dart';
import '../../../providers/joining_event_provider.dart';
import '../../bringing_guests_screen/bringing_guests_screen.dart';
import 'glass_button.dart';

class AreYouGoingWidget extends StatelessWidget {
  const AreYouGoingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool choiceValue =
        Provider.of<JoiningEventProvider>(context, listen: true).isJoining;
    return LayoutBuilder(
      builder: (_, __) {
        if (choiceValue) {
          return Container(
            height: 68,
            width: context.width,
            decoration: BoxDecoration(
              color: kNormalWhite,
              borderRadius: const BorderRadius.all(
                Radius.circular(70),
              ),
              border: Border.all(
                color: kHighPurple,
                width: 1.0,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/edit.png"),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Are you going?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "56 spots left",
                      style: TextStyle(
                        color: kDarkGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: GlassButton(
                    function: () {},
                    buttonColor: kOceanBlue,
                    iconPath: "assets/images/check.png",
                  ),
                ),
              ],
            ),
          );
        }

        return Container(
          height: 68,
          width: context.width,
          decoration: const BoxDecoration(
            color: kDarkPurple,
            borderRadius: BorderRadius.all(
              Radius.circular(70),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/edit.png"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Are you going?",
                    style: TextStyle(
                      color: kNormalWhite,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "56 spots left",
                    style: TextStyle(
                      color: kDarkGrey,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              GlassButton(
                function: () {},
                buttonColor: kLightGrey,
                iconPath: "assets/images/x.png",
              ),
              GlassButton(
                function: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        const BringingGuestsScreen(),
                  );
                },
                buttonColor: kLightGrey,
                iconPath: "assets/images/check.png",
              ),
            ],
          ),
        );
      },
    );
  }
}
