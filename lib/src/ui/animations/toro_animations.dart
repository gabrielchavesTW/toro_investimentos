import 'package:flutter/animation.dart';
import 'package:flutter/widgets.dart';

class ToroAnimations {
  static fadeAnimationController(TickerProvider vsync) {
    return AnimationController(
      duration: const Duration(seconds: 1),
      vsync: vsync,
    );
  }

  static fadeAnimation(AnimationController controller) {
    return CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    );
  }
}
