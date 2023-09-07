import '../exceptions.dart';

abstract class ServiceException extends IpbjpBaseException {
  ServiceException({required super.message, required super.time});
}

class DataValidationException extends ServiceException {
  DataValidationException({required super.message, required super.time});
}

class GenericServiceException extends ServiceException {
  GenericServiceException({required super.message, required super.time});
}
