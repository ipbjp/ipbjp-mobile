import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:ipbjp_backend/src/models.dart';
import 'package:ipbjp_backend/src/repositories.dart';
import 'package:ipbjp_backend/src/services.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';

late Isar _database;
late Logger _logger;

Future<void> init(InternetAddress ip, int port) async {
  // TODO: Analisar isso aqui depois...
  _logger = Logger(filter: ProductionFilter());

  _logger.w('Inicializando componentes...');

  await Isar.initializeIsarCore(download: true);

  final dir = Directory(".database");

  if (!dir.existsSync()) {
    _logger.i("Criando diretorio da base de dados...");

    dir.createSync();
  }

  _database = await Isar.open(
    [EventSchema],
    directory: dir.path,
  );
}

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  _logger.i('Iniciando servidor e injetando dependências...');

  final updatedHandler = _injectDependencies(handler);

  return serve(updatedHandler, ip, port);
}

Handler _injectDependencies(Handler handler) {
  // As dependencias devem ser encadeadas de maneira que a classe dependente esteja no topo
  // e as dependencias no final da cadeia...

  return handler
      .use(
        provider<EventService>(
          (context) => EventServiceImpl(
            eventRepository: context.read(),
            logger: context.read(),
          ),
        ),
      )
      .use(
        provider<EventRepository>(
          (context) => EventRepositoryImpl(
            databaseConnection: _database,
            logger: context.read(),
          ),
        ),
      )
      .use(provider<Logger>((context) => _logger));
}
