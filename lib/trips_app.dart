import 'package:flutter/material.dart';
import 'package:trips/screens/details_screen.dart';
import 'package:trips/screens/home_screen.dart';
import 'package:trips/screens/sandbox_screen.dart';

class TripsApp extends StatelessWidget {
  const TripsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Poppins',
      ),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        DetailsScreen.routeName: (context) => const DetailsScreen(),
        SandBoxScreen.routeName: (context) => const SandBoxScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
