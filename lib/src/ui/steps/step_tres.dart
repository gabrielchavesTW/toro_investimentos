import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toro_investimentos/src/ui/animations/toro_animations.dart';
import 'package:toro_investimentos/src/ui/steps/step_buttons.dart';
import 'package:toro_investimentos/src/ui/tema.dart';

class StepTres extends StatefulWidget {
  const StepTres({Key? key}) : super(key: key);

  @override
  State<StepTres> createState() => _StepTresState();
}

class _StepTresState extends State<StepTres>
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
                  top: (deviceHeight / 9.61),
                  right: 0,
                  bottom: (deviceHeight / 28.83)),
              child: SvgPicture.asset(
                'assets/images/onboarding/step3.svg',
                fit: BoxFit.fitHeight,
                key: ValueKey('StepTresImage'),
              ),
            )),
            Container(
              padding: EdgeInsets.only(bottom: (deviceHeight / 28.83)),
              child: Text(
                "Cashback em Fundos de Investimento",
                style: TemaToro.headline3(context),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: (deviceHeight / 28.83)),
              child: RichText(
                key: ValueKey('StepTresDescription'),
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TemaToro.bodyText1(context),
                  children: <TextSpan>[
                    TextSpan(text: 'Receba parte da taxa de\nadministração, '),
                    TextSpan(
                      text: 'em dinheiro, direto na\nsua conta Toro.',
                      style: TemaToro.bodyText2(context),
                    ),
                  ],
                ),
              ),
            ),
            StepButtons(
              currentPage: 2,
            )
          ],
        ),
      ),
    );
  }
}
