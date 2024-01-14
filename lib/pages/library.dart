import 'package:flutter/material.dart';
import 'package:our_app_demo/navigations/drawer.dart';
import 'package:our_app_demo/pages/screens/book_library.dart';
import 'package:our_app_demo/widgets/category_card.dart';

class LibraryPage extends StatelessWidget {
  List<Tab> library = [
    Tab(
        child: Text(
      'Books',
      style: TextStyle(fontSize: 20),
    )),
    Tab(
        child: Text(
      "Audio",
      style: TextStyle(fontSize: 20),
    )),
    Tab(
        child: Text(
      "Video",
      style: TextStyle(fontSize: 20),
    )),
  ];

  List<Widget> libraryContent = [
    Container(
      child: Book_library(),
    ),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: library.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[700],
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: TabBar(
              isScrollable: true,
              tabs: library,
            ),
          ),
        ),
        body: TabBarView(
          children: libraryContent,
        ),
      ),
    );
  }
}
