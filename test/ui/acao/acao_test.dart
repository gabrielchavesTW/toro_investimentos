import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:toro_investimentos/src/repository/acao_repository.dart';
import 'package:toro_investimentos/src/ui/acoes/acoes.dart';

import 'acao_test.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<AcaoRepository>(as:#MockAcaoRepository, returnNullOnMissingStub: true)])
void main() {
  final getIt = GetIt.instance;
  getIt.registerSingleton<AcaoRepository>(MockAcaoRepository());


  void setupStubs(){
    AcaoRepository mockAcaoRepository = getIt<AcaoRepository>();
    when(mockAcaoRepository.fetchAcoes()).thenAnswer((_) => Stream<dynamic>.empty());
  }

  Future<void> setup(WidgetTester tester) async {
    setupStubs();

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: AcoesPage(),
        ),
      ),
    ));
  }

  testWidgets(
    'Should call acaoRepository.fetchAcoes',
        (WidgetTester tester) async {
          await setup(tester);
          AcaoRepository mockAcaoRepository = getIt<AcaoRepository>();
          verify(mockAcaoRepository.fetchAcoes());
    },
  );
}
