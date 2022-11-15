import 'package:flutter/material.dart';
import 'package:social_meet_up/media_query_extension.dart';

import '../../../constants.dart';

class PostComponent extends StatelessWidget {
  final String avatarPath;
  final String userName;
  final String date;
  final Widget content;
  final int commentCount;
  final int likeCount;

  const PostComponent({
    Key? key,
    required this.avatarPath,
    required this.userName,
    required this.date,
    required this.content,
    required this.commentCount,
    required this.likeCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 234,
        width: context.width,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: kNormalWhite,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Image.asset(avatarPath),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                          color: kDarkestPurple,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        date,
                        style: TextStyle(
                          color: kDarkPurple.withOpacity(.56),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                DropdownButton(
                  icon: Image.asset("assets/images/dropdown.png"),
                  items: const [],
                  onChanged: (value) {},
                )
              ],
            ),
            content,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/share-2.png"),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          commentCount.toString(),
                        ),
                        const SizedBox(width: 5),
                        Image.asset("assets/images/comment.png"),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Row(
                      children: [
                        Text(
                          likeCount.toString(),
                        ),
                        const SizedBox(width: 5),
                        Image.asset("assets/images/heart-3.png"),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
