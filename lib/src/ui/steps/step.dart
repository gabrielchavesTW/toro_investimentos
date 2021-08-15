import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ui/steps/StepDois.dart';
import 'package:toro_investimentos/src/ui/steps/StepQuatro.dart';
import 'package:toro_investimentos/src/ui/steps/StepTres.dart';
import 'package:toro_investimentos/src/ui/steps/StepUm.dart';

class StepPage extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[StepUm(), StepDois(), StepTres(), StepQuatro()],
    );
  }
}
