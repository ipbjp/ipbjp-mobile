/// Repositório que gerencia as requisições da API de acesso a doações.

import 'dart:convert';
import 'package:logger/logger.dart';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared/shared.dart';

/// Repositório que gerencia as requisições da API de acesso a doações.
///
/// A classe [DonationsRepository] é responsável por gerenciar as requisições
/// da API de acesso a doações.
class DonationRepository {
  /// URL da API de acesso a doações.
  static const String donationsUrl = "assets/configurations/donations.json";
  final http.Client httpClient = http.Client();
  final Logger logger = Logger();

  /// Método de requisição a um json local
  Future<List<DonationCreationOrUpdateRequestDTO>> fetchLocalDonations() async {
    logger.d('DonationsRepository');
    try {
      // read local json file
      final reponse = await rootBundle.loadString(donationsUrl);

      // logger.d("raw body: ${reponse}");

      var data = jsonDecode(reponse);
      logger.d("raw body2: ${data}");
      // logger.d("runtimeType: ${data.runtimeType}");

      return data
          .map<DonationCreationOrUpdateRequestDTO>(
              (item) => DonationCreationOrUpdateRequestDTO.fromJson(item))
          .toList();
    } catch (e) {
      logger.e("Error: ");
      logger.e(e.toString());
      return [];
    }
  }
}