import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:our_app_demo/widgets/post_card.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  List _items = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = await json.decode(response);

    setState(() {
      _items = data["items"];
    });
  }

  @override
  Widget build(BuildContext context) {
    readJson();
    return ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Container(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  PostCard(
                    title: _items[index]["title"],
                    description: _items[index]["description"],
                    image: _items[index]["image"],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
