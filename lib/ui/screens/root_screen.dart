import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/routing/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        CatalogRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Главная',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Каталог',
              icon: Icon(Icons.collections),
            ),
            BottomNavigationBarItem(
              label: 'Профиль',
              icon: Icon(Icons.supervised_user_circle_outlined),
            ),
          ],
        );
      },
    );
  }
}
