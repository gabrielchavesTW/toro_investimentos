import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toro_investimentos/src/ui/animations/toro_animations.dart';
import 'package:toro_investimentos/src/ui/tema.dart';

import 'step_buttons.dart';

class StepUm extends StatefulWidget {
  const StepUm({Key? key}) : super(key: key);

  @override
  State<StepUm> createState() => _StepUmState();
}

class _StepUmState extends State<StepUm> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    _controller = ToroAnimations.fadeAnimationController(this);
    _animation = ToroAnimations.fadeAnimation(_controller);
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return FadeTransition(
      opacity: _animation,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(
                  bottom: (deviceHeight / 28.83), top: (deviceHeight / 9.61)),
              child: Text(
                "Olá!\nAgora você tem o jeito\nmais fácil de investir na\nBolsa.",
                style: TemaToro.headline3(context),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                    left: 0, top: 0, right: 0, bottom: (deviceHeight / 28.83)),
                child: SvgPicture.asset(
                  'assets/images/onboarding/step1.svg',
                  key: ValueKey('StepUmImage'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            StepButtons(
              currentPage: 0,
            )
          ],
        ),
      ),
    );
  }
}
