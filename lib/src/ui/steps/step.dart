import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ui/steps/step_dois.dart';
import 'package:toro_investimentos/src/ui/steps/step_quatro.dart';
import 'package:toro_investimentos/src/ui/steps/step_tres.dart';
import 'package:toro_investimentos/src/ui/steps/step_um.dart';

class StepPage extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    print(MediaQuery.of(context).size.aspectRatio);
    print(deviceHeight);
    print(deviceWidth);
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.maxHeight);
          print(constraints.maxWidth);
          if (constraints.maxHeight > 580) {
            return Container(child: _buildPageView());
          } else {
            return SingleChildScrollView(
              child: Container(height: 580, child: _buildPageView()),
            );
          }
        },
      ),
    );
  }

  _buildPageView() {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[StepUm(), StepDois(), StepTres(), StepQuatro()],
    );
  }
}
