/// Repositório que gerencia as requisições da API de acesso a rede social.
///

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared/shared.dart';

/// Repositório que gerencia as requisições da API de acesso a rede social.
///
/// A classe [SocialNetworkRepository] é responsável por gerenciar as requisições
/// da API de acesso a rede social.
class SocialNetworkRepository {
  /// URL da API de acesso a rede social.
  // static const String socialNetworkUrl = "";
  static const String socialNetworkLocalAssetUrl =
      "assets/configurations/social_networks.json";

  final http.Client httpClient = http.Client();

  /// Método que realiza a requisição da API de acesso a rede social.
  ///
  /// O método [fetchSocialNetworks] é responsável por realizar a requisição da
  /// API de acesso a rede social.
  // Future<List<SocialNetwork>> fetchSocialNetworks() async {
  //   print('SocialNetworkRepository');
  //   try {
  //     var response =
  //         await httpClient.get(Uri.parse(socialNetworkLocalAssetUrl));

  //     print("raw body: ${response.body}");

  //     return response;
  //   } catch (e) {
  //     print("Error: ");
  //     print(e.toString());
  //     return null;
  //   }
  // }

  /// Método de acesso a json local
  Future<List<SocialNetworkCreationOrUpdateRequestDTO>>
      fetchLocalSocialNetworks() async {
    print('SocialNetworkRepository');
    try {
      // read local json file
      final response = await rootBundle
          .loadString('assets/configurations/social_networks.json');

      var data = jsonDecode(response);

      return data
          .map<SocialNetworkCreationOrUpdateRequestDTO>(
              (item) => SocialNetworkCreationOrUpdateRequestDTO.fromJson(item))
          .toList();
    } catch (e) {
      print("Error SocialNetworkRepository: ");
      print(e.toString());
      throw Exception(e);
    }
  }
}
