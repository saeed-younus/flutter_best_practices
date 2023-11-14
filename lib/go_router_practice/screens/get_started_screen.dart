import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_samples/go_router_practice/configs/routes_constant.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text('Get Started'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 8,
            ),
            child: FilledButton(
              child: const Text(
                'Home',
              ),
              onPressed: () {
                context.goNamed(AppRoutes.rootHome.name);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 8,
            ),
            child: FilledButton(
              child: const Text(
                'User Listing',
              ),
              onPressed: () {
                context.goNamed(AppRoutes.users.name);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 8,
            ),
            child: FilledButton(
              child: const Text(
                'Sign In',
              ),
              onPressed: () {
                context.goNamed(AppRoutes.getStartedSignIn.name);
              },
            ),
          ),
        ],
      ),
    );
  }
}
