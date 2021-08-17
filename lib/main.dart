import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:toro_investimentos/src/config/env.dart';
import 'package:toro_investimentos/src/ioc.dart';
import 'src/app.dart';

void environmentSetup(){
  const String environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: Environment.DEV,
  );
  final getIt = GetIt.instance;
  getIt<Environment>().initConfig(environment);
}

void main() {
  iocSetup();
  environmentSetup();
  runApp(App());
}
