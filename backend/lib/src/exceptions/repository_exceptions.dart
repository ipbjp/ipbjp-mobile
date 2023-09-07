import 'package:ipbjp_backend/src/exceptions.dart';

abstract class RepositoryException extends IpbjpBaseException {
  RepositoryException({required super.message, required super.time});
}

class StorageException extends RepositoryException {
  StorageException({required super.message, required super.time});
}

class ResourceNotFoundException extends RepositoryException {
  ResourceNotFoundException({required super.message, required super.time});
}
