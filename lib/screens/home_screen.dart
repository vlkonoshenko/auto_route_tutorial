import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/routing/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(routePage.name ?? ''),
      ),
      backgroundColor: Colors.red.shade100,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(context.router.currentPath),
          TextButton(
              onPressed: () {
                context.router.push(const DetailsRoute());
              },
              child: const Text('Go to Details Screen'))
        ],
      ),
    );
  }
}
