import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:our_app_demo/pages/home.dart';

class PostCard extends StatelessWidget {
  var _overlaycontroller = OverlayPortalController();
  final String title;
  final String description;
  final String image;
  final String date;
  final bool comment;

  PostCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.date,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: Column(
        children: [
          ListTile(
            title: const Text('Christ Like'),
            subtitle: Text(date),
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
            ],
          ),
          Visibility(
            visible: comment,
            child: TextFormField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                iconColor: Colors.black,
                labelText: 'Write Your Comment',
                suffixIcon:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
              ),
            ),
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
