import 'package:flutter/material.dart';

class SandBoxScreen extends StatefulWidget {
  static const String routeName = 'SandBoxScreen';
  const SandBoxScreen({Key? key}) : super(key: key);

  @override
  State<SandBoxScreen> createState() => _SandBoxScreenState();
}

class _SandBoxScreenState extends State<SandBoxScreen> {
  double opacity = 1.0;
  double margin = 0.0;
  double width = 200.0;
  Color color = Colors.greenAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(
          milliseconds: 900,
        ),
        margin: EdgeInsets.all(margin),
        width: width,
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  margin = 100;
                });
              },
              child: const Text(
                'Animate Margin',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  color = Colors.purple;
                });
              },
              child: const Text(
                'Animate Color',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  width = 400;
                });
              },
              child: const Text(
                'Animate Width',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(
                  milliseconds: 2000,
                ),
              child: const Text(
                'Hide Me!',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  opacity = 0;
                });
              },
              child: const Text(
                'Animate Opacity',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
