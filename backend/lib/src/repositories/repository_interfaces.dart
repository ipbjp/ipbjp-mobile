import 'package:ipbjp_backend/src/models/event.dart';

import '../exceptions.dart';

abstract class Repository<T> {
  Future<List<T>> findAll(RepositoryPage page);

  Future<T?> find(String id);

  Future<(T?, RepositoryException?)> createOrUpdate(T entity);

  Future<void> delete(T entity);
}

class RepositoryPage {
  final int page;
  final int size;

  RepositoryPage({
    required this.page,
    required this.size,
  });
}

abstract class EventRepository implements Repository<Event> {}
