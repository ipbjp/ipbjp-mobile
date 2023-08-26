// crontroller class for the model SocialNetwork

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ipbjp_mobile/src/models/social_network.dart';
import 'package:http/http.dart' as http;

class ControllerSocialNetwork {
  static const String socialNetworkUrl =
      "https://api.github.com/repos/00kl/ipbjp-mobile/contents/assets/configurations/social_networks.json";
  List<SocialNetwork> socialNetworks = [];

  // fetch data from the database
  Future<void> fetchSocialNetworks() async {
    print("OIOIOI");

    try {
      var response = await http.Client().get(Uri.parse(socialNetworkUrl));

      var sha = jsonDecode(response.body)["sha"];

      print("sha: $sha");

      var response2 = await http.Client().get(Uri.parse(
          "https://api.github.com/repos/00kl/ipbjp-mobile/git/blobs/$sha"));
      print("response2");
      var bodyContent = (jsonDecode(response2.body)["content"] as String)
          .replaceAll("\n", "");
      print("bodyContent");
      print(utf8.decode(base64Decode(bodyContent)));
      var jsonList = jsonDecode(utf8.decode(base64Decode(bodyContent)));
      print(jsonList);

      for (var item in jsonList) {
        socialNetworks.add(SocialNetwork.fromJson(item));
      }
      print("SUCESSO");
      print(socialNetworks.length.toString());
    } catch (e) {
      print("ERRO");
      print(e.toString());
    }
  }
}
