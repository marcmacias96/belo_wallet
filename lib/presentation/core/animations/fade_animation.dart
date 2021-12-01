import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;
  const FadeAnimation({Key? key, required this.delay, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // create tween
    var tween = createTween(delay);

    return PlayAnimation<TimelineValue<AniProps>>(
      tween: tween, // provide tween
      duration: tween.duration,
      child: child, // total duration obtained from TimelineTween
      builder: (context, child, value) {
        return Opacity(
          opacity: value.get(AniProps.opacity),
          child: Transform.translate(
              offset: Offset(0, value.get(AniProps.tralateY)), child: child),
        );
      },
    );
  }
}

enum AniProps { opacity, tralateY }

TimelineTween<AniProps> createTween(double delay) => TimelineTween<AniProps>()
  ..addScene(
          begin: Duration.zero,
          end: Duration(milliseconds: (900 * delay).round()))
      .animate(AniProps.tralateY, tween: Tween<double>(begin: 50.0, end: 0.0))
      .animate(
        AniProps.opacity,
        tween: Tween<double>(begin: 0.0, end: 1.0),
        curve: Curves.easeOut,
      );
