/// Repositório que gerencia as requisições da API de acesso a eventos.

import 'dart:convert';
import 'package:logger/logger.dart';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared/shared.dart';

/// Repositório que gerencia as requisições da API de acesso a eventos.
///
/// A classe [EventsRepository] é responsável por gerenciar as requisições
/// da API de acesso a eventos.
class EventRepository {
  /// URL da API de acesso a eventos.
  static const String eventsUrl = "assets/configurations/events.json";
  final http.Client httpClient = http.Client();
  final Logger logger = Logger();

  /// Método de requisição a um json local
  Future<List<EventCreationOrUpdateRequestDTO>> fetchLocalEvents() async {
    logger.d('EventsRepository');
    try {
      // read local json file
      final response = await rootBundle.loadString(eventsUrl);

      var data = jsonDecode(response);

      return data
          .map<EventCreationOrUpdateRequestDTO>(
              (item) => EventCreationOrUpdateRequestDTO.fromJson(item))
          .toList();
    } catch (e) {
      logger.e("Error: ");
      logger.e(e.toString());
      return [];
    }
  }
}