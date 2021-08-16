import 'package:bloc/bloc.dart';
import 'package:toro_investimentos/src/models/acao_model.dart';

class AcaoCubit extends Cubit<List<AcaoModel>> {
  AcaoCubit() : super(<AcaoModel>[]);

  void update(List<AcaoModel> novasCotacoes) => emit(novasCotacoes);
}