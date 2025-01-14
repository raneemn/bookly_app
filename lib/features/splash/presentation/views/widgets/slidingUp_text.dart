
import 'package:flutter/material.dart';

class SlidingUpText extends StatelessWidget {
  const SlidingUpText({
    super.key,
    required this.slidingUpAnimation,
  });

  final Animation<Offset> slidingUpAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingUpAnimation,
      builder: (context,_) {
        return SlideTransition(
          position: slidingUpAnimation,
          child: const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          ),
        );
      }, 
    );
  }
}
