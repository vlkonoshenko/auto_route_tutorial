import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

// Мы используем AutoRouter для создания маршрутизации внутри вкладки.
@RoutePage()
class ProfileNavigationScreen extends StatelessWidget {
  const ProfileNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
