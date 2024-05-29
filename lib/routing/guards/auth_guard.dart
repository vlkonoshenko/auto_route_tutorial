import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/routing/app_router.dart';

class AuthGuard extends AutoRouteGuard {
  final bool authenticated;

  AuthGuard({required this.authenticated});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    if (authenticated) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      // tip: use resolver.redirect to have the redirected route
      // automatically removed from the stack when the resolver is completed

      resolver.redirect(const AuthNavigationRoute()).then((value) {
        resolver.next(true);
      });
    }
  }
}
