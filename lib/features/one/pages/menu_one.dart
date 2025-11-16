import 'package:demo_genui/common/padding_xy.dart';
import 'package:flutter/material.dart';

class MenuOne extends StatelessWidget {
  const MenuOne({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingXY(
      paddingY: 16,
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
              'https://picsum.photos/seed/$index/100/100',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text('Item $index'),
            subtitle: Text('Subtitle $index'),
          );
        },
      ),
    );
  }
}
