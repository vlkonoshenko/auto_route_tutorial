import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class PathInfoWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const PathInfoWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(context.router.currentPath),
          TextButton(
              onPressed: onPressed, child: const Text('Следующая страница'))
        ],
      ),
    );
  }
}
