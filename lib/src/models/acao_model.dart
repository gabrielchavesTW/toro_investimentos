class AcaoModel {
  String _nome = "";
  String _sigla = "";
  int _preco = 0;
  int _variacao = 0;

  AcaoModel.fromJson(Map<String, dynamic> parsedJson) {
    _nome = parsedJson['nome'];
    _sigla = parsedJson['sigla'];
    _preco = parsedJson['preco'];
    _variacao = parsedJson['variacao'];
  }

  String get nome => _nome;

  String get sigla => _sigla;

  int get preco => _preco;

  int get variacao => _variacao;
}
