import 'package:flutter/material.dart';
import 'package:movies_g1_mon/Ui/HomeScreen.dart';
import 'package:movies_g1_mon/Ui/splashScreen.dart';

import 'Ui/DetailsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App G1',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xff1D1E1D)),
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color(0xff1A1A1A)),
        primaryColor: Color(0xff121312),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        DetailsScreen.routeName: (_) => DetailsScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        SplashScreen.routeName: (_) => SplashScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
