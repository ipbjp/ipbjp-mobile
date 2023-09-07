abstract class IpbjpBaseException implements Exception {
  final String message;
  final DateTime time;

  const IpbjpBaseException({required this.message, required this.time});
}