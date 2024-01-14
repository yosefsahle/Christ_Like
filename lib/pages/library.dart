import 'package:flutter/material.dart';
import 'package:our_app_demo/pages/screens/book_library.dart';

// ignore: must_be_immutable
class LibraryPage extends StatelessWidget {
  List<Tab> library = [
    const Tab(
        child: Text(
      'Books',
      style: TextStyle(fontSize: 20),
    )),
    const Tab(
        child: Text(
      "Audio",
      style: TextStyle(fontSize: 20),
    )),
    const Tab(
        child: Text(
      "Video",
      style: TextStyle(fontSize: 20),
    )),
    const Tab(
        child: Text(
      "Bibles",
      style: TextStyle(fontSize: 20),
    )),
    const Tab(
        child: Text(
      "Favorites",
      style: TextStyle(fontSize: 20),
    )),
  ];

  List<Widget> libraryContent = [
    const BookLibrary(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: library.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[700],
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(10),
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
