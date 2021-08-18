import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ui/components/toro_button.dart';

class StepButtons extends StatelessWidget {
  const StepButtons({
    Key? key,
    required this.currentPage,
  }) : super(key: key);

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[];
    children.add(_buildPageIndicator(currentPage));
    children.add(ToroButton(
        padding: EdgeInsets.only(bottom: 14),
        buttonText: 'Abra sua conta grátis',
        onPressed: () {}));
    children.add(ToroButton(
        padding: EdgeInsets.only(bottom: 14),
        buttonText: 'Entrar',
        buttonStyle: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        buttonTextStyle: TextStyle(color: Theme.of(context).primaryColor),
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        }));
    return Column(
      children: children,
    );
  }

  Widget _buildPageIndicator(int currentPage) {
    List<Widget> list = [];
    for (int i = 0; i < 4; i++) {
      list.add(i == currentPage ? _indicator(true) : _indicator(false));
    }
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: list,
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return Container(
      height: 10,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        height: isActive ? 10 : 8.0,
        width: isActive ? 12 : 8.0,
        decoration: BoxDecoration(
          boxShadow: [
            isActive
                ? BoxShadow(
                    color: Color(0XFF2FB7B2).withOpacity(0.72),
                    blurRadius: 4.0,
                    spreadRadius: 1.0,
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                  )
                : BoxShadow(
                    color: Colors.transparent,
                  )
          ],
          shape: BoxShape.circle,
          color: isActive ? Color(0XFF6BC4C9) : Color(0XFFEAEAEA),
        ),
      ),
    );
  }
}
