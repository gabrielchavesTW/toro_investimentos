import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toro_investimentos/src/ui/animations/toro_animations.dart';
import 'package:toro_investimentos/src/ui/steps/step_buttons.dart';
import 'package:toro_investimentos/src/ui/tema.dart';

class StepQuatro extends StatefulWidget {
  const StepQuatro({Key? key}) : super(key: key);

  @override
  State<StepQuatro> createState() => _StepQuatroState();
}

class _StepQuatroState extends State<StepQuatro>
    with SingleTickerProviderStateMixin {
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
    double deviceWidth = MediaQuery.of(context).size.width;
    return FadeTransition(
      opacity: _animation,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                    left: 0,
                    top: (deviceHeight / 6),
                    right: 0,
                    bottom: (deviceHeight / 28.83)),
                child: SvgPicture.asset(
                  'assets/images/onboarding/step4.svg',
                  key: ValueKey('StepQuatroImage'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: (deviceHeight / 28.83)),
              child: Text(
                "E tem muito mais!",
                style: TemaToro.headline3(context),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: (deviceHeight / 28.83)),
              child: Column(
                children: [
                  _textWithIcon(
                      context, deviceWidth, 'Recomendações de investimentos.'),
                  _textWithIcon(
                      context, deviceWidth, 'Cursos do iniciante ao avançado.'),
                  _textWithIcon(context, deviceWidth,
                      'Invista sabendo quanto pode ganhar.'),
                ],
              ),
            ),
            StepButtons(
              currentPage: 3,
            )
          ],
        ),
      ),
    );
  }
}

Widget _textWithIcon(BuildContext context, double deviceWidth, String text) {
  return Container(
    padding: EdgeInsets.only(bottom: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.check, color: Theme.of(context).primaryColor, size: 14),
        SizedBox(
          width: 4,
        ),
        Expanded(
          child: Text(
            text,
            style: TemaToro.bodyText1(context),
          ),
        ),
      ],
    ),
  );
}
