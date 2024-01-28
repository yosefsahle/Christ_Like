import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:our_app_demo/widgets/post_card.dart';
import 'package:http/http.dart' as http;

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  List _data = [];
  Future<void> _refresh() async {
    setState(() {
      _data.clear();
    });
    var response = await http.get(post);
    var jsonBody = response.body;
    var jsonData = json.decode(jsonBody);

    setState(() {
      _data = jsonData;
    });

    return Future.delayed(const Duration(seconds: 1));
  }

  Uri post = Uri.parse('https://spiritlife.gospelinacts.org/API/');
  Future getAllpost() async {
    var response = await http.get(post);
    var jsonBody = response.body;
    var jsonData = json.decode(jsonBody);

    setState(() {
      _data = jsonData;
    });
  }

  @override
  Widget build(BuildContext context) {
    getAllpost();
    return RefreshIndicator(
        onRefresh: _refresh,
        color: Colors.deepPurple,
        child: Column(
          children: [
            Visibility(
              visible: false,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    const Text('Create A Post'),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add_photo_alternate_rounded),
                        label: const Text('Make A post'))
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          PostCard(
                            comment: true,
                            date: _data[index]['date'],
                            title: _data[index]["title"],
                            description: _data[index]["description"],
                            image: _data[index]["image"],
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
