import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({Key? key}) : super(key: key);

  @override
  State<Heart> createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  bool isFav = false;

  AnimationController? animationController;
  Animation? colorAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      duration: const Duration(
        milliseconds: 500,
      ),
      vsync: this,
    );

    colorAnimation = ColorTween(
      begin: Colors.grey[400],
      end: Colors.red,
    ).animate(
      animationController!,
    );

    animationController!.addListener(() {});

    animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isFav = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        isFav = false;
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    animationController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (context, _) {
        return IconButton(
          onPressed: () {
            isFav
                ? animationController!.reverse()
                : animationController!.forward();
          },
          icon: Icon(
            Icons.favorite,
            color: colorAnimation!.value,
            size: 30,
          ),
        );
      },
    );
  }
}
