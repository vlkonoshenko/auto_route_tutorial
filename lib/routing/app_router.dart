import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/ui/screens/home_navigation_screen.dart';
import 'package:auto_route_tutorial/ui/screens/profile_navigation_screen.dart';
import 'package:auto_route_tutorial/ui/screens/catalog_screen.dart';
import 'package:auto_route_tutorial/ui/screens/details_screen.dart';
import 'package:auto_route_tutorial/ui/screens/home_screen.dart';
import 'package:auto_route_tutorial/ui/screens/profile_screen.dart';
import 'package:auto_route_tutorial/ui/screens/root_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: RootRoute.page,
          children: [
            AutoRoute(
              page: HomeNavigationRoute.page,
              children: [
                AutoRoute(page: HomeRoute.page, initial: true),
                AutoRoute(page: DetailsRoute.page),
              ],
            ),
            AutoRoute(page: CatalogRoute.page),
            AutoRoute(
              page: ProfileNavigationRoute.page,
              children: [
                AutoRoute(page: ProfileRoute.page),
                AutoRoute(page: DetailsRoute.page),
              ],
            )
          ],
        ),
      ];
}
