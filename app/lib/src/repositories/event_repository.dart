/// Repositório que gerencia as requisições da API de acesso a eventos.

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared/shared.dart';

/// Repositório que gerencia as requisições da API de acesso a eventos.
///
/// A classe [EventsRepository] é responsável por gerenciar as requisições
/// da API de acesso a eventos.
class EventRepository {
  /// URL da API de acesso a eventos.
  static const String localEventsUrl = "assets/configurations/events.json";
  static const String eventsUrl = "https://ipbjp-mobile.vercel.app/events";
  final http.Client httpClient = http.Client();

  /// Método de requisição a um json local
  Future<List<EventCreationOrUpdateRequestDTO>> fetchLocalEvents() async {
    print('EventsRepository');
    try {
      // read local json file
      final response = await rootBundle.loadString(localEventsUrl);

      var data = jsonDecode(response);

      return data
          .map<EventCreationOrUpdateRequestDTO>(
              (item) => EventCreationOrUpdateRequestDTO.fromJson(item))
          .toList();
    } catch (e) {
      print("Error: ");
      print(e.toString());
      return [];
    }
  }

  /// Método de requisição a API de acesso a eventos.
  Future<List<EventCreationOrUpdateRequestDTO>> fetchEvents() async {
    print('EventsRepository');
    try {
      final response = await httpClient.get(Uri.parse(eventsUrl));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print(data);
        final dataFixed = parseEvents(data);
        return dataFixed
            .map<EventCreationOrUpdateRequestDTO>(
                (item) => EventCreationOrUpdateRequestDTO.fromJson(item))
            .toList();
      } else {
        print("Error: ");
        print(response.statusCode);
        return [];
      }
    } catch (e) {
      print("Error: ");
      print(e.toString());
      return [];
    }
  }

  dynamic parseEvents(dynamic events) {
    return events.map((item) {
      item['startDate'] = item['date'];
      // item['endDate'] = DateTime.parse(item['endDate']);
      return item;
    }).toList();
  }
}
