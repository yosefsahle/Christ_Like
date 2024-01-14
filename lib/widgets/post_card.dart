import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      child: Column(
        children: [
          Image.network(
              'https://images.unsplash.com/photo-1623172959921-630212f71058?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c3Bpcml0dWFsfGVufDB8fDB8fHww'),
          Padding(
            padding: EdgeInsets.only(top: 30, right: 12, left: 12),
            child: Column(
              children: [
                Text('Title'),
                Text('description if the pist that should be idented ')
              ],
            ),
          )
        ],
      ),
    );
  }
}
