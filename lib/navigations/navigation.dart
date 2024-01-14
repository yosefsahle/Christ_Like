import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:our_app_demo/navigations/drawer.dart';
import 'package:our_app_demo/pages/feed_back.dart';
import 'package:our_app_demo/pages/home.dart';
import 'package:our_app_demo/pages/library.dart';
import 'package:our_app_demo/pages/post.dart';
import 'package:our_app_demo/pages/profile.dart';
import 'package:our_app_demo/pages/schedule.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

bool _iconBool = false;

IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

ThemeData _lightTheme = ThemeData(
  primarySwatch: Colors.yellow,
  brightness: Brightness.light,
  iconTheme: IconThemeData(
    color: Colors.grey.shade800,
  ),
);

ThemeData _darkTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
);

Color _dark = Colors.grey.shade800;
Color _light = Colors.white;

class _NavBarState extends State<NavBar> {
  List Screens = [
    HomePage(),
    PostPage(),
    SchedulePage(),
    LibraryPage(),
  ];
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _iconBool ? _darkTheme : _lightTheme,
        home: Scaffold(
          drawer: MyDrawer(),
          appBar: AppBar(
            title: Text('Welcome'),
            backgroundColor: _iconBool ? _dark : _light,
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _iconBool = !_iconBool;
                  });
                },
                icon: Icon(_iconBool ? _iconDark : _iconLight),
              )
            ],
          ),
          // backgroundColor: Colors.orange,
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: _iconBool ? _light : _dark,
            color: _iconBool ? _dark : _light,
            index: _selectedIndex,
            animationDuration: Duration(milliseconds: 300),
            items: [
              Icon(
                Icons.home,
              ),
              Icon(
                Icons.view_comfy_alt,
              ),
              Icon(
                Icons.date_range,
              ),
              Icon(
                Icons.my_library_books,
              ),
            ],
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          body: Screens[_selectedIndex],
        ));
  }
}
