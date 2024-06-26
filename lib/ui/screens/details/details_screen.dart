import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/routing/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Детальна страница'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              context.router.root.push(const OtpRoute());
            },
            child: const Text('Экран ввода OTP')),
      ),
    );
  }
}
