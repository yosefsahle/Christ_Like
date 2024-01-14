import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: const [
        UserAccountsDrawerHeader(
          accountName: Text(''),
          accountEmail: Text(''),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://diocesan.com/shop/wp-content/uploads/2019/01/iStock-897378376.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Profile'),
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('About Us'),
        ),
        ListTile(
          leading: Icon(Icons.feedback),
          title: Text('Feed Back'),
        ),
        ListTile(
          leading: Icon(Icons.share),
          title: Text('Share App'),
        ),
      ],
    ));
  }
}
