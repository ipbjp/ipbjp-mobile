import 'package:flutter/foundation.dart';
import 'package:ipbjp_mobile/src/repositories/social_network_repository.dart';
import 'package:logger/logger.dart';
import 'package:shared/shared.dart';

class ControllerSocialNetwork {
  ValueNotifier<List<SocialNetworkCreationOrUpdateRequestDTO>> socialNetworks =
      ValueNotifier([]);
  SocialNetworkRepository socialNetworkRepository = SocialNetworkRepository();
  Logger logger = Logger();

  // fetch data from the database
  Future<void> fetchSocialNetworks() async {
    logger.d('ControllerSocialNetwork');
    try {
      socialNetworks.value =
          await socialNetworkRepository.fetchLocalSocialNetworks();
    } catch (e) {
      logger.e("Error: ");
      logger.e(e.toString());
    }
  }
}
