# toro_investimentos

Teste Toro Investimentos

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.




## Architecure
1- blocs package terá as nossas implementações do BLOC e arquivos relacionados.
2- models package terá as classes do nosso modelo de dados. 
3- repository package terá as classes de repositório e chamadas para internet. 
4- ui package terá as telas que são exibidas para o usuário.


## Como rodar os testes unitários
1- É necessário rodar o comando "flutter pub run build_runner build --delete-conflicting-outputs" para gerar os arquivos de mock.
2- Depois de gerados, os testes podem ser executados normalmente

### Observações
1- Durante o desenvolvimento do teste, você pode rodar o comando "flutter pub run build_runner watch" 
para que ele fique observando as mudanças nos testes e gere o arquivo novamente sem precisar rodar 
o comando denovo.

## Como setar o environment
O ambiente esta setado como default para DEV, porém, é possível alterar através do seguinte comando:
"flutter run --dart-define=ENVIRONMENT=STAGING"