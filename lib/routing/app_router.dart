import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/routing/tab_wrapper_screen.dart';
import 'package:auto_route_tutorial/screens/catalog_screen.dart';
import 'package:auto_route_tutorial/screens/details_screen.dart';
import 'package:auto_route_tutorial/screens/home_screen.dart';
import 'package:auto_route_tutorial/screens/profile_screen.dart';
import 'package:auto_route_tutorial/screens/root_screen.dart';

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
              path: '',
              page: TabWrapperRoute.page,
              children: [
                AutoRoute(page: HomeRoute.page, initial: true),
                AutoRoute(
                  page: DetailsRoute.page,
                ),
              ],
            ),
            AutoRoute(page: CatalogRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
      ];
}
