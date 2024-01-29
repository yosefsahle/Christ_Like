import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  final String userProfile;
  final String userName;
  final String commentDate;
  final String commentBody;

  const CommentCard(
      {super.key,
      required this.userProfile,
      required this.userName,
      required this.commentDate,
      required this.commentBody});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        children: [
          Image.network(
            userProfile,
          ),
          Column(
            children: [Text(userName), Text(commentDate), Text(commentBody)],
          )
        ],
      ),
    );
  }
}
