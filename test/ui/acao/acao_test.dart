import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:toro_investimentos/src/blocs/acao.dart';
import 'package:toro_investimentos/src/repository/acao_repository.dart';
import 'package:toro_investimentos/src/ui/acoes/acoes.dart';

import 'acao_test.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<AcaoCubit>(as: #MockAcaoCubit, returnNullOnMissingStub: true)
])
void main() {
  final getIt = GetIt.instance;
  getIt.registerSingleton<AcaoCubit>(MockAcaoCubit());

  void setupStubs() {
    AcaoCubit mockAcaoCubit = getIt<AcaoCubit>();
    when(mockAcaoCubit.fetchAcoes()).thenAnswer((_) => Stream<dynamic>.empty());
    when(mockAcaoCubit.stream).thenAnswer((_) => Stream<String>.empty());
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
      AcaoCubit mockAcaoCubit = getIt<AcaoCubit>();
      verify(mockAcaoCubit.fetchAcoes());
    },
  );
}
