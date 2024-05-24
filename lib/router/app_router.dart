import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/screens/first_screen.dart';
import 'package:auto_route_tutorial/screens/second_screen.dart';
import 'package:auto_route_tutorial/screens/third_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: FirstRoute.page),
        AutoRoute(page: SecondRoute.page),
        AutoRoute(page: ThirdRoute.page),
      ];
}
