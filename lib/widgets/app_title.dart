import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: const Duration(
        milliseconds: 500,
      ),
      curve: Curves.easeIn,
      tween: Tween<double>(
        begin: 0,
        end: 1,
      ),
      builder: (context, double value, Widget? child) {
        return Opacity(
          opacity: value,
          child: Padding(
            padding: EdgeInsets.only(
              top: value * 150,
            ),
            child: child,
          ),
        );
      },
      child: const Padding(
        padding: EdgeInsets.only(
          top: 44.0,
          left: 12.0,
        ),
        child: Text(
          'Great Trips',
          style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
