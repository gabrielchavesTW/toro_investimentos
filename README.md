# toro_investimentos

## Architecture
.
├── blocs               # folder com os arquivos do nosso controle de estado, para este projeto escolhi o Cubit do pacote bloc
├── config              # folder com os arquivos de configuração do nosso projeto
├── models              # folder com os arquivos que representam o nosso modelo de dados
├── repository          # folder com os arquivos que fazem chamadas de API ou leitura de arquivos local    
├── ui                  # folder com os arquivos das nossas views
├── app.dart            # arquivo inicial do projeto
└── ioc.dart            # registro dos arquivos para a inversão de controle e injestão de dependência

Para a arquitetura do projeto, escolhi o MVVM. Para isso, utilizei um pacote de injestão de dependência
e inversão de controle (getIt). Com ele, podemos separar o nosso view-model (bloc) da nossa camada de visualização, 
além de podermos injetar os nossos repositorys no nosso view-model, mandando as responsabilidades bem
separadas.

## Como rodar o projeto?
1- Para rodar o projeto é necessário ter o flutter instalado na sua máquina, para isso, siga o tutorial
da documentação oficial: https://flutter.dev/docs/get-started/install

2- Com o flutter instalado, rode o comando "flutter doctor" e tenha certeza que está tudo ok.

3- Conecte um aparelho no seu computador e tenha certeza que ele está com a opção de Ancoragem USB habilitada.

4- Após resolver os warnings/issues do passo 2, e executar o passo 3 com sucesso, clone o projeto e abra um terminal no diretorio onde vc clonou-o.

5- Agora basta executar o comando "flutter run" e o aplicativo seraá instalado e executado.

## Como rodar os testes unitários
1- É necessário rodar o comando "flutter pub run build_runner build --delete-conflicting-outputs" para gerar os arquivos de mock.

2- Depois de gerados, os testes podem ser executados normalmente com o comando "flutter test"

### Observações
1- Durante o desenvolvimento do teste, você pode rodar o comando "flutter pub run build_runner watch" 
para que ele fique observando as mudanças nos testes e gere o arquivo novamente sem precisar rodar 
o comando denovo.

## Como setar o environment
O ambiente esta setado como default para DEV, porém, é possível alterar através do seguinte comando:
"flutter run --dart-define=ENVIRONMENT=STAGING"
