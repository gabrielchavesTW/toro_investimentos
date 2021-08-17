import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ioc.dart';
import 'src/app.dart';

void main(){

  iocSetup();
  runApp(App());
}