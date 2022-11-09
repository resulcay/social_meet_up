import 'package:flutter/material.dart';
import 'package:social_meet_up/components/custom_floating_action_button.dart';
import 'package:social_meet_up/screens/messaging_screen/components/unread_messages_card.dart';

import '../../constants.dart';
import '../notification_screen/components/top_bar_container.dart';
import 'components/read_message_card.dart';

class MessagingScreen extends StatelessWidget {
  const MessagingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkPurple,
      floatingActionButton: CustomFloatingActionButton(
        function: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBarContainer(
              title: "Messages",
              backgroundColor: kNormalPurple,
              trailingWidget: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/search.png",
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: kNormalPurple,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                ),
              ),
              child: Column(
                children: const [
                  UnReadMessageCard(),
                  UnReadMessageCard(),
                ],
              ),
            ),
            Column(
              children: const [
                ReadMessageCard(),
                ReadMessageCard(),
                ReadMessageCard(),
                ReadMessageCard(),
                SizedBox(height: 150)
              ],
            )
          ],
        ),
      ),
    );
  }
}
