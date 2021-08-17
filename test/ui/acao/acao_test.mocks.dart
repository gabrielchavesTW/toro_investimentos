// Mocks generated by Mockito 5.0.14 from annotations
// in toro_investimentos/test/ui/acao/acao_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:toro_investimentos/src/repository/acao_repository.dart' as _i3;
import 'package:web_socket_channel/web_socket_channel.dart' as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeWebSocketChannel_0 extends _i1.Fake implements _i2.WebSocketChannel {
}

/// A class which mocks [AcaoRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAcaoRepository extends _i1.Mock implements _i3.AcaoRepository {
  @override
  _i2.WebSocketChannel get channel =>
      (super.noSuchMethod(Invocation.getter(#channel),
          returnValue: _FakeWebSocketChannel_0()) as _i2.WebSocketChannel);
  @override
  _i4.Stream<dynamic> fetchAcoes() =>
      (super.noSuchMethod(Invocation.method(#fetchAcoes, []),
          returnValue: Stream<dynamic>.empty()) as _i4.Stream<dynamic>);
  @override
  String toString() => super.toString();
}