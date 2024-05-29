import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OTP')),
      body: Center(
        child: TextButton(
            onPressed: () {
              context.router.root.popForced(true);
            },
            child: const Text('Login')),
      ),
    );
  }
}
