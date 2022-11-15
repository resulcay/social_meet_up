import 'package:flutter/material.dart';
import 'package:social_meet_up/components/custom_floating_action_button.dart';

import 'package:social_meet_up/screens/notification_screen/components/top_bar_container.dart';

import '../../constants.dart';
import 'components/post_component.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkWhite,
      floatingActionButton: CustomFloatingActionButton(
        function: () {},
        buttonColor: kNormalPink,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBarContainer(
              trailingWidget: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                ),
              ),
              backgroundColor: kDarkWhite,
              title: "Posts",
            ),
            const PostComponent(
              avatarPath: "assets/images/post-pp.png",
              userName: "Jerome Gaveau",
              date: "8 Nov",
              content: Text(
                "Believe in yourself, take on your challenges, dig deep within yourself to conquer fears. Never let anyone bring you down. You got to keep going.",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: kNormalGrey,
                  height: 1.8,
                ),
              ),
              commentCount: 150,
              likeCount: 500,
            ),
            PostComponent(
              avatarPath: "assets/images/avatar.png",
              userName: "Jonathan Lecluze",
              date: "12 Mar",
              content: Image.asset("assets/images/post-image.png"),
              commentCount: 40,
              likeCount: 110,
            ),
            const PostComponent(
              avatarPath: "assets/images/post-pp.png",
              userName: "Maxime Barbosa",
              date: "2 Sep",
              content: Text(
                "Believe in yourself, take on your challenges, dig deep within yourself to conquer fears. Never let anyone bring you down. You got to keep going.",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: kNormalGrey,
                  height: 1.8,
                ),
              ),
              commentCount: 5,
              likeCount: 20,
            ),
          ],
        ),
      ),
    );
  }
}
