import 'package:finance_app/constants/colors.dart';
import 'package:finance_app/screens/cards_screen.dart';
import 'package:finance_app/screens/home_screen.dart';
import 'package:finance_app/screens/splash_screen.dart';
import 'package:finance_app/screens/user_profile_screen.dart';
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
          primaryColor: primaryColor,
          scaffoldBackgroundColor: primaryColor,
          appBarTheme: AppBarTheme(backgroundColor: primaryColor)),
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        CardsScreen.id: (context) => const CardsScreen(),
        UserProfileScreen.id: (context) => const UserProfileScreen(),
      },
      initialRoute: SplashScreen.id,
    );
  }
}
