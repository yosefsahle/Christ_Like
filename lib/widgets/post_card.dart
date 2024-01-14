import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  PostCard(
      {required this.title, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Image.network(
            image,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, right: 12, left: 12, bottom: 15),
            child: Column(
              children: [Text(title), Text(description)],
            ),
          ),
        ],
      ),
    );
  }
}
