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
  Animation? sizeAnimation;
  Animation<double>? curve;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      duration: const Duration(
        milliseconds: 400,
      ),
      vsync: this,
    );

    curve = CurvedAnimation(
      parent: animationController!,
      curve: Curves.slowMiddle,
    );

    colorAnimation = ColorTween(
      begin: Colors.grey[400],
      end: Colors.red,
    ).animate(
      curve!,
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

    sizeAnimation = TweenSequence([
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 30,
          end: 40,
        ),
        weight: 40,
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 40,
          end: 30,
        ),
        weight: 40,
      ),
    ]).animate(
      animationController!,
    );
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
            size: sizeAnimation!.value,
          ),
        );
      },
    );
  }
}
