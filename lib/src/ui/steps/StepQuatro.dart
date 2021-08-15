import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toro_investimentos/src/ui/steps/StepButtons.dart';

class StepQuatro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 24),
            child: SvgPicture.asset(
              'assets/images/onboarding/step4.svg',
              key: ValueKey('StepQuatroImage'),
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 24),
            child: Text(
              "E tem muito mais!",
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 24),
            child: Column(
              children: [
                _textWithIcon(context, 'Recomendações de investimentos.'),
                _textWithIcon(context, 'Cursos do iniciante ao avançado.'),
                _textWithIcon(context, 'Invista sabendo quanto pode ganhar.'),
              ],
            ),
          ),
          StepButtons(
            currentPage: 3,
          )
        ],
      ),
    );
  }
}

Widget _textWithIcon(BuildContext context, String text) {
  return Container(
    padding: EdgeInsets.only(bottom: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.check, color: Theme.of(context).primaryColor, size: 14),
        SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    ),
  );
}
