import 'package:flutter/material.dart';

class MenuTwo extends StatelessWidget {
  const MenuTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Image.network(
          'https://picsum.photos/seed/$index/200/200',
          fit: BoxFit.cover,
        );
      },
    );
  }
}
