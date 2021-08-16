import 'dart:async';
import 'package:http/http.dart' show Client;
import 'package:ioc/ioc.dart';
import 'package:toro_investimentos/src/blocs/acao.dart';
import 'package:toro_investimentos/src/models/acao_model.dart';

import 'package:web_socket_channel/web_socket_channel.dart';

class AcaoRepository {
  Client client = Client();

  Future<void> fetchAcoes() async {
    final channel = WebSocketChannel.connect(
      Uri.parse('wss://echo.websocket.org'),
    );
    AcaoCubit acaoCubit = Ioc().use(AcaoCubit);
    List<AcaoModel> lista = [AcaoModel.fromJson({
      "nome": "teste",
      "sigla":"te",
      "preco": 10,
      "variacao": 1
    })];
    acaoCubit.update(lista);
    // channel.stream.listen((event) {
    //   AcaoCubit acaoCubit = Ioc().use(AcaoCubit);
    //   List<AcaoModel> lista = [AcaoModel.fromJson({
    //     "nome": "teste",
    //     "sigla":"te",
    //     "preco": 10,
    //     "variacao": 1
    //   })];
    //   acaoCubit.update(lista);
    // });
  }
}