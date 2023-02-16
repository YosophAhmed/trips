import 'package:flutter/material.dart';

import '../widgets/trips_list_view.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 250,
                  child: Image.asset(
                    'assets/images/cover.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 12.0,
                  ),
                  child: Text(
                    'Great Trips',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const TripsListView(),
          ],
        ),
      ),
    );
  }
}
