import 'package:flutter/material.dart';
import 'package:our_app_demo/widgets/category_card.dart';

class BookLibrary extends StatelessWidget {
  const BookLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 50,
      mainAxisSpacing: 20,
      crossAxisCount: 2,
      children: const <Widget>[
        CategoryCard(),
        CategoryCard(),
      ],
    );
  }
}
