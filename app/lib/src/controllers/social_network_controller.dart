import 'package:flutter/foundation.dart';
import 'package:ipbjp_mobile/repositories.dart';

import 'package:shared/shared.dart';

class SocialNetworkController {
  ValueNotifier<List<SocialNetworkCreationOrUpdateRequestDTO>> socialNetworks =
      ValueNotifier([]);
  SocialNetworkRepository socialNetworkRepository = SocialNetworkRepository();

  // fetch data from the database
  Future<void> fetchSocialNetworks() async {
    print('ControllerSocialNetwork');
    try {
      socialNetworks.value =
          await socialNetworkRepository.fetchLocalSocialNetworks();
    } catch (e) {
      print("Error: ");
      print(e.toString());
    }
  }
}
