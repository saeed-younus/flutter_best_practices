import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_samples/go_router_practice/configs/routes_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      context.goNamed(AppRoutes.rootGetStartedRoute.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      body: Center(
        child: Text(
          'Splash',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
