import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:toro_investimentos/src/blocs/acao.dart';
import 'package:flutter/material.dart';

class AcoesPage extends StatefulWidget {
  const AcoesPage({
    Key? key,
  }) : super(key: key);

  @override
  _AcoesPageState createState() => _AcoesPageState();
}

class _AcoesPageState extends State<AcoesPage> {
  GetIt getIt = GetIt.instance;
  late AcaoCubit acaoCubit;

  @override void initState() {
    acaoCubit = getIt<AcaoCubit>();
    acaoCubit.fetchAcoes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StreamBuilder(
            stream: acaoCubit.stream,
            builder: (context, snapshot) {
              return Text(snapshot.hasData ? '${snapshot.data}' : '');
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    acaoCubit.closeChannel();
    acaoCubit.close();
    super.dispose();
  }
}