import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:toro_investimentos/src/repository/acao_repository.dart';

class AcaoCubit extends Cubit<String> {
  final GetIt getIt = GetIt.instance;
  AcaoCubit() : super("");


  void fetchAcoes() {
    Stream<dynamic> stream = getIt<AcaoRepository>().fetchAcoes();
    stream.listen((event) {
      emit(event);
    });
  }

  void closeChannel() async{
    await getIt<AcaoRepository>().close();
    emit("");
  }
}