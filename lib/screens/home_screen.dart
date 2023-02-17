import 'package:flutter/material.dart';
import 'package:trips/widgets/app_title.dart';

import '../widgets/trips_list_view.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              const AppTitle(),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          const TripsListView(),
        ],
      ),
    );
    ;
  }
}
