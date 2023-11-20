import 'package:flutter/material.dart';
import 'package:practice_samples/go_router_practice/configs/go_router_config.dart';

class GoRouterApp extends StatelessWidget {
  const GoRouterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: provideGoRouter(),
    );
  }
}
