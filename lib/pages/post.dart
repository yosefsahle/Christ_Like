import 'dart:convert';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
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

  Future<void> _refresh() async {
    setState(() {
      _items.clear();
    });
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = await json.decode(response);

    setState(() {
      _items = data["items"];
    });

    return Future.delayed(Duration(seconds: 3));
  }

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = await json.decode(response);

    setState(() {
      _items = data["items"];
    });

    return Future.delayed(Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    readJson();
    return RefreshIndicator(
      onRefresh: _refresh,
      color: Colors.deepPurple,
      child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  PostCard(
                    title: _items[index]["title"],
                    description: _items[index]["description"],
                    image: _items[index]["image"],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
