import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ui/steps/StepDois.dart';
import 'package:toro_investimentos/src/ui/steps/StepQuatro.dart';
import 'package:toro_investimentos/src/ui/steps/StepTres.dart';
import 'package:toro_investimentos/src/ui/steps/StepUm.dart';

class StepPage extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    double deviceSize = MediaQuery.of(context).size.height;

    if (deviceSize > 580) {
      return Container(child: _buildPageView());
    } else {
      return SingleChildScrollView(child: Container(height: 580, child: _buildPageView()),);
    }
  }

  _buildPageView() {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[StepUm(), StepDois(), StepTres(), StepQuatro()],
    );
  }
}
