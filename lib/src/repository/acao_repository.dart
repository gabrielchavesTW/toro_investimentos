import 'dart:async';

import 'package:web_socket_channel/web_socket_channel.dart';

class AcaoRepository {
  final channel = WebSocketChannel.connect(
    Uri.parse('ws://192.168.0.6:8080/quotes'),
  );
  Stream<dynamic> fetchAcoes() {
    return channel.stream;
  }

  close() async {
    await channel.sink.close();
  }
}
