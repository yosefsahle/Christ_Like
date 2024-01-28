import 'package:flutter/material.dart';
import 'package:our_app_demo/pages/Feeds_post.dart';
import 'package:our_app_demo/pages/screens/News_post.dart';

// ignore: must_be_immutable
class PostTabs extends StatelessWidget {
  List<Tab> library = [
    const Tab(
        child: Column(
      children: [Icon(Icons.view_comfortable_rounded), Text('Feeds')],
    )),
    const Tab(
        child: Column(
      children: [Icon(Icons.newspaper), Text('News')],
    )),
    const Tab(
        child: Column(
      children: [Icon(Icons.shopping_bag), Text('Market')],
    )),
  ];

  List<Widget> postcontents = [
    const PostPage(),
    const NewsPage(),
    Container(),
  ];

  PostTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: library.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[700],
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(2),
            child: TabBar(
              isScrollable: true,
              tabs: library,
            ),
          ),
        ),
        body: TabBarView(
          children: postcontents,
        ),
      ),
    );
  }
}
