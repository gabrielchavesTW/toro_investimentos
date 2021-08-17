import 'package:toro_investimentos/src/config/config.dart';
import 'package:toro_investimentos/src/config/dev_config.dart';
import 'package:toro_investimentos/src/config/prod_config.dart';
import 'package:toro_investimentos/src/config/stage_config.dart';

class Environment {
  factory Environment() {
    return _singleton;
  }

  Environment._internal();

  static final Environment _singleton = Environment._internal();

  static const String DEV = 'DEV';
  static const String STAGING = 'STAGING';
  static const String PROD = 'PROD';

  late BaseConfig config;

  initConfig(String environment) {
    config = _getConfig(environment);
  }

  BaseConfig _getConfig(String environment) {
    switch (environment) {
      case Environment.PROD:
        return ProdConfig();
      case Environment.STAGING:
        return StageConfig();
      default:
        return DevConfig();
    }
  }
}
