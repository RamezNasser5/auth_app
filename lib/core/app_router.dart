import 'package:auth_app/features/auth_feature/ui/views/signup_page.dart';
import 'package:auth_app/features/auth_feature/ui/widgets/login_page_body.dart';
import 'package:auth_app/features/home_feature/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String initialRoute = '/';
  static const String registerRoute = '/registerRoute';
  static const String homeRoute = '/homeRoute';

  static final GoRouter routers = GoRouter(
    routes: [
      GoRoute(
        path: initialRoute,
        builder: (context, state) => LoginPageBody(),
      ),
      GoRoute(
        path: registerRoute,
        builder: (context, state) => SignUpPage(),
      ),
      GoRoute(
        path: homeRoute,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
