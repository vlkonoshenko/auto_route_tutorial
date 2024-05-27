import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/routing/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(context.router.currentPath),
          TextButton(
              onPressed: () {
                context.pushRoute(const ProfileRoute());
              },
              child: const Text('Go to Third Screen'))
        ],
      ),
    );
  }
}
