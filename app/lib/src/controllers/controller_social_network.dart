import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:ipbjp_mobile/src/models/social_network.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class ControllerSocialNetwork {
  static const String socialNetworkUrl =
      "https://api.github.com/repos/00kl/ipbjp-mobile/contents/assets/configurations/social_networks.json";
  ValueNotifier<List<SocialNetwork>> socialNetworks = ValueNotifier([]);

  // fetch data from the database
  Future<void> fetchSocialNetworks() async {
    print('ControllerSocialNetwork');
    try {
      var response = await http.Client().get(Uri.parse(socialNetworkUrl));

      print("raw body: ${response.body}");

      var sha = jsonDecode(response.body)["sha"];

      print("Sha: ${sha}");

      var response2 = await http.Client().get(Uri.parse(
          "https://api.github.com/repos/00kl/ipbjp-mobile/git/blobs/$sha"));

      print("raw body2: ${response2.body}");

      var bodyContent = (jsonDecode(response2.body)["content"] as String)
          .replaceAll("\n", "");

      print("bodyContent: ${bodyContent}");

      socialNetworks.value = (jsonDecode(utf8.decode(base64Decode(bodyContent)))
              as List<Map<String, dynamic>>)
          .map((item) => SocialNetwork.fromJson(item))
          .toList();
    } catch (e) {
      print("Error: ");
      print(e.toString());
    }
  }

  // fetch data from ./assets/configurations/social_networks.json
  Future<void> fetchSocialNetworks2() async {
    print('ControllerSocialNetwork');
    try {
      // read local json file
      final reponse = await rootBundle
          .loadString('assets/configurations/social_networks.json');

      print("raw body: ${reponse}");

      var data = await jsonDecode(reponse);

      print("raw body: ${data}");

      socialNetworks.value =
          (jsonDecode(response.body) as List<Map<String, dynamic>>)
              .map((item) => SocialNetwork.fromJson(item))
              .toList();
    } catch (e) {
      print("Error: ");
      print(e.toString());
    }
  }
}
