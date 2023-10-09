import 'package:flutter/foundation.dart';
import 'package:ipbjp_mobile/repositories.dart';
import 'package:logger/logger.dart';
import 'package:shared/shared.dart';

class SocialNetworkController {
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
