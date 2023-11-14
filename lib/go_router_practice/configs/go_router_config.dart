import 'package:go_router/go_router.dart';
import 'package:practice_samples/go_router_practice/configs/routes_constant.dart';
import 'package:practice_samples/go_router_practice/screens/get_started_screen.dart';
import 'package:practice_samples/go_router_practice/screens/home_screen.dart';
import 'package:practice_samples/go_router_practice/screens/sign_in_screen.dart';
import 'package:practice_samples/go_router_practice/screens/splash_screen.dart';
import 'package:practice_samples/go_router_practice/screens/user_detail_screen.dart';
import 'package:practice_samples/go_router_practice/screens/users_screen.dart';

GoRouter provideGoRouter() {
  return GoRouter(
    initialLocation: AppRoutes.rootSplash.path,
    routes: [
      GoRoute(
        name: AppRoutes.rootSplash.name,
        path: AppRoutes.rootSplash.path,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: AppRoutes.rootGetStartedRoute.name,
        path: AppRoutes.rootGetStartedRoute.path,
        builder: (context, state) => const GetStartedScreen(),
        routes: [
          GoRoute(
            name: AppRoutes.getStartedSignIn.name,
            path: AppRoutes.getStartedSignIn.path,
            builder: (context, state) => const SignInScreen(),
          ),
        ],
      ),
      GoRoute(
        name: AppRoutes.rootHome.name,
        path: AppRoutes.rootHome.path,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            name: AppRoutes.homeSignIn.name,
            path: AppRoutes.homeSignIn.path,
            builder: (context, state) => const SignInScreen(),
          ),
          GoRoute(
            name: AppRoutes.users.name,
            path: AppRoutes.users.path,
            builder: (context, state) => const UsersScreen(),
            routes: [
              GoRoute(
                name: AppRoutes.userDetail.name,
                path: AppRoutes.userDetail.path,
                builder: (context, state) => const UserDetailScreen(),
                routes: [
                  GoRoute(
                    name: AppRoutes.userDetailSignIn.name,
                    path: AppRoutes.userDetailSignIn.path,
                    builder: (context, state) => const SignInScreen(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
