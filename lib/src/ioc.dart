import 'package:get_it/get_it.dart';
import 'package:toro_investimentos/src/config/env.dart';
import 'package:toro_investimentos/src/repository/acao_repository.dart';
import 'package:toro_investimentos/src/ui/tema.dart';

import 'blocs/acao.dart';

iocSetup() {
  final getIt = GetIt.instance;
  getIt.registerSingleton<AcaoRepository>(AcaoRepository());
  getIt.registerSingleton<AcaoCubit>(AcaoCubit());
  getIt.registerSingleton<Environment>(Environment());
  getIt.registerSingleton<TemaToro>(TemaToro());
}
