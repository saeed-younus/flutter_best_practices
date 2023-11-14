abstract class AppRoutes {
  // Splash screen
  static const _splashScopeName = 'splash';
  static const rootSplash = AppRouteData('splash', _splashScopeName, true);

  // Get Started
  static const _getStartedScopeName = 'getStarted';
  static const rootGetStartedRoute =
      AppRouteData('getStarted', _getStartedScopeName, true);

  // Sign in
  static const _signInScopeName = 'signIn';
  static const getStartedSignIn =
      AppRouteData('getStartedSignIn', _signInScopeName);
  static const homeSignIn = AppRouteData('homeSignIn', _signInScopeName);
  static const userDetailSignIn =
      AppRouteData('userDetailSignIn', _signInScopeName);

  // Home
  static const _homeScopeName = 'home';
  static const rootHome = AppRouteData('home', _homeScopeName, true);

  // Users
  static const _usersScopeName = 'users';
  static const users = AppRouteData('users', _usersScopeName);

  // User Detail
  static const _userDetailScopeName = 'userDetail';
  static const userDetail = AppRouteData('userDetail', _userDetailScopeName);
}

class AppRouteData {
  final String name;
  final bool isRoot;
  final String scopeName;

  String get path => isRoot ? '/$name' : name;

  const AppRouteData(this.name, this.scopeName, [this.isRoot = false]);
}
