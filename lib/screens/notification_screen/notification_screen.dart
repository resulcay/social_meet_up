import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/seen_notification_card.dart';
import 'components/top_bar_container.dart';
import 'components/unseen_notification_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkPurple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBarContainer(
              title: "Notifications",
              backgroundColor: kNormalPink,
              trailingWidget: Container(),
            ),
            Container(
              decoration: const BoxDecoration(
                color: kNormalPink,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                ),
              ),
              child: Column(
                children: const [
                  UnSeenNotificationCard(),
                  UnSeenNotificationCard(),
                ],
              ),
            ),
            Column(
              children: const [
                SeenNotificationCard(),
                SeenNotificationCard(),
                SeenNotificationCard(),
                SeenNotificationCard(),
                SizedBox(height: 150)
              ],
            )
          ],
        ),
      ),
    );
  }
}
