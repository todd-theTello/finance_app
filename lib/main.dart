import 'package:finance_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Finance App',
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF000000),
        scaffoldBackgroundColor: const Color(0xFF000000),
      ),
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
      },
      initialRoute: SplashScreen.id,
    );
  }
}
