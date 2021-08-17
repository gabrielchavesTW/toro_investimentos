
import 'package:get_it/get_it.dart';
import 'package:toro_investimentos/src/repository/acao_repository.dart';

import 'blocs/acao.dart';

iocSetup(){
  final getIt = GetIt.instance;
  getIt.registerSingleton<AcaoRepository>(AcaoRepository());
  getIt.registerSingleton<AcaoCubit>(AcaoCubit());
}