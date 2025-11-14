import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InkButton extends StatelessWidget {
  final String currentUrl;
  final String path;

  const InkButton({super.key, required this.currentUrl, required this.path});

  @override
  Widget build(BuildContext context) {
    final isActive = currentUrl == path;

    return Ink(
      decoration: BoxDecoration(
        color: isActive ? Colors.amber : Colors.white,
        borderRadius: BorderRadius.circular(28),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(28),
        onTap: () => context.go(path),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home, color: isActive ? Colors.white : Colors.black),
            if (isActive)
              Text(
                path.replaceFirst('/', ''),
                style: const TextStyle(color: Colors.white),
              ),
          ],
        ),
      ),
    );
  }
}
