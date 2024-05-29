import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/routing/guards/auth_guard.dart';
import 'package:auto_route_tutorial/ui/screens/catalog/catalog_navigation_screen.dart';
import 'package:auto_route_tutorial/ui/screens/catalog/catalog_screen.dart';
import 'package:auto_route_tutorial/ui/screens/details/details_screen.dart';
import 'package:auto_route_tutorial/ui/screens/home/home_navigation_screen.dart';
import 'package:auto_route_tutorial/ui/screens/home/home_screen.dart';
import 'package:auto_route_tutorial/ui/screens/login/auth_navigation_screen.dart';
import 'package:auto_route_tutorial/ui/screens/login/login_screen.dart';
import 'package:auto_route_tutorial/ui/screens/login/otp_screen.dart';
import 'package:auto_route_tutorial/ui/screens/profile/profile_navigation_screen.dart';
import 'package:auto_route_tutorial/ui/screens/profile/profile_screen.dart';
import 'package:auto_route_tutorial/ui/screens/root_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: '/',
          page: RootRoute.page,
          children: [
            AutoRoute(
              path: 'home',
              page: HomeNavigationRoute.page,
              children: [
                AutoRoute(page: HomeRoute.page, initial: true),
                AutoRoute(
                  page: DetailsRoute.page,
                  guards: [AuthGuard(authenticated: true)],
                ),
              ],
            ),
            AutoRoute(
                path: 'catalog',
                page: CatalogNavigationRoute.page,
                children: [
                  AutoRoute(page: CatalogRoute.page, initial: true),
                  AutoRoute(
                    page: DetailsRoute.page,
                    guards: [AuthGuard(authenticated: false)],
                  ),
                ]),
            AutoRoute(
              path: 'profile',
              page: ProfileNavigationRoute.page,
              children: [
                AutoRoute(page: ProfileRoute.page, initial: true),
                AutoRoute(
                  page: DetailsRoute.page,
                  guards: [AuthGuard(authenticated: false)],
                ),
              ],
            ),
          ],
        ),
        AutoRoute(page: AuthNavigationRoute.page, children: [
          AutoRoute(page: LoginRoute.page, initial: true),
          AutoRoute(page: OtpRoute.page),
        ]),
      ];
}
