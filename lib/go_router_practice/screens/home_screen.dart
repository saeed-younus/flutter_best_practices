import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_samples/go_router_practice/configs/routes_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: const Text('Home'),
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
                'User Detail',
              ),
              onPressed: () {
                context.goNamed(AppRoutes.userDetail.name);
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
                context.goNamed(AppRoutes.homeSignIn.name);
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
                'Log out',
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
