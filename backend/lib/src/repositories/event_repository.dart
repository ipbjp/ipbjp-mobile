import 'package:ipbjp_backend/src/exceptions.dart';
import 'package:ipbjp_backend/src/models/event.dart';
import 'package:ipbjp_backend/src/repositories.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:uuid/uuid.dart';

class EventRepositoryImpl implements EventRepository {
  final Isar _databaseConnection;
  final IsarCollection<Event> _collection;
  final Uuid _generator;
  final Logger _logger;

  EventRepositoryImpl(
      {required Isar databaseConnection, required Logger logger})
      : _databaseConnection = databaseConnection,
        _collection = databaseConnection.events,
        _logger = logger,
        _generator = const Uuid();

  @override
  Future<(Event?, RepositoryException?)> createOrUpdate(Event entity) async {
    if (entity.id == null) {
      entity.id = _generator.v4();
    } else {
      final oldEvent =
          await _collection.filter().idEqualTo(entity.id).findFirst();

      if (oldEvent != null) {
        entity.dbId = oldEvent.dbId;
      } else {
        return (
          null,
          ResourceNotFoundException(
            message: "Evento ${entity.id} não foi encontrado",
            time: DateTime.now(),
          ),
        );
      }
    }

    await _databaseConnection.writeTxn(() async {
      await _collection.put(entity);
    });

    _logger.i("Evento ${entity.name} registrado com sucesso");

    return (entity, null);
  }

  @override
  Future<void> delete(Event entity) async {
    final result = await _databaseConnection.writeTxn(() {
      return _collection.delete(entity.dbId);
    });

    if (result) {
      _logger.i('Evento deletado com sucesso');
    } else {
      _logger.e('Não foi possivel deletar o evento');
    }
  }

  @override
  Future<Event?> find(String id) {
    _logger.i("Buscando evento $id...");

    return _collection.filter().idEqualTo(id).findFirst();
  }

  @override
  Future<List<Event>> findAll(RepositoryPage page) async {
    return _collection
        .where()
        .offset((page.page - 1) * page.size)
        .limit(page.size)
        .findAll();
  }
}
