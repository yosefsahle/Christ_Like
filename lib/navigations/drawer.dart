import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        const UserAccountsDrawerHeader(
          accountName: Text(''),
          accountEmail: Text(''),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://diocesan.com/shop/wp-content/uploads/2019/01/iStock-897378376.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        const Divider(),
        SizedBox(
          height: 50,
          child: TextButton.icon(
              style: const ButtonStyle(
                  alignment: AlignmentDirectional.centerStart),
              onPressed: () {},
              icon: const Icon(Icons.person),
              label: const Text('Profile')),
        ),
        Visibility(
          child: SizedBox(
            height: 50,
            child: TextButton.icon(
                style: const ButtonStyle(
                    alignment: AlignmentDirectional.centerStart),
                onPressed: () {},
                icon: const Icon(Icons.lock_person_rounded),
                label: const Text('permission Center')),
          ),
        ),
        Visibility(
          child: SizedBox(
            height: 50,
            child: TextButton.icon(
                style: const ButtonStyle(
                    alignment: AlignmentDirectional.centerStart),
                onPressed: () {},
                icon: const Icon(Icons.connect_without_contact_rounded),
                label: const Text('My Schedule Contacts')),
          ),
        ),
        SizedBox(
          height: 50,
          child: TextButton.icon(
              style: const ButtonStyle(
                  alignment: AlignmentDirectional.centerStart),
              onPressed: () {},
              icon: const Icon(Icons.info),
              label: const Text('About Us')),
        ),
        Visibility(
          visible: true,
          child: SizedBox(
            height: 50,
            child: TextButton.icon(
                style: const ButtonStyle(
                    alignment: AlignmentDirectional.centerStart),
                onPressed: () {},
                icon: const Icon(Icons.feedback),
                label: const Text('Feed Back')),
          ),
        ),
        SizedBox(
          height: 50,
          child: TextButton.icon(
              style: const ButtonStyle(
                  alignment: AlignmentDirectional.centerStart),
              onPressed: () {},
              icon: const Icon(Icons.share),
              label: const Text('Share App')),
        ),
        SizedBox(
          height: 50,
          child: TextButton.icon(
              style: const ButtonStyle(
                alignment: AlignmentDirectional.centerStart,
              ),
              onPressed: () {},
              icon: const Icon(Icons.logout),
              label: const Text('Log Out')),
        ),
      ],
    ));
  }
}
