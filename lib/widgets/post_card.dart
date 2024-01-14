import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const PostCard(
      {super.key,
      required this.title,
      required this.description,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: Column(
        children: [
          const ListTile(
            title: Text('Christ Like'),
            subtitle: Text('12/02/2024'),
          ),
          Image.network(
            image,
            fit: BoxFit.cover,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 30, right: 12, left: 12, bottom: 15),
            child: Column(
              children: [Text(title), Text(description)],
            ),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.comment))
            ],
          ),
          const Divider(
            color: Colors.amber,
          ),
          const Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
