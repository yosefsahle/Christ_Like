import 'package:flutter/material.dart';
import 'package:our_app_demo/widgets/post_card.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 50,
      mainAxisSpacing: 20,
      crossAxisCount: 1,
      children: <Widget>[
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
        PostCard(),
      ],
    );
    ;
  }
}
