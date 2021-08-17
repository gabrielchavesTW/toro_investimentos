import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:toro_investimentos/src/config/env.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class AcaoRepository {
  final GetIt getIt = GetIt.instance;
  late final channel;
  Stream<dynamic> fetchAcoes() {
    String url = getIt<Environment>().config.acaoHost;
    channel = WebSocketChannel.connect(
      Uri.parse('$url:8080/quotes'),
    );

    return channel.stream;
  }

  close() async {
    await channel.sink.close();
  }
}
