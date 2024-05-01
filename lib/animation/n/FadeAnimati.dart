import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final int sec;
  final Widget child;

  FadeAnimation( this.child , this.sec);

  @override
  Widget build(BuildContext context) {
    return PlayAnimationBuilder<double>(
      tween: Tween(begin: 0 , end: 1.0 ),
        delay: Duration(milliseconds: (500 * sec).round()),
      duration:  Duration(seconds:sec),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: child,
        );
      },
      child: child
    );
  }
}

