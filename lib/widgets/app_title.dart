import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(
        left: 12.0,
        top: 44,
      ),
      child: Text(
        'Great Trips',
        style: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
