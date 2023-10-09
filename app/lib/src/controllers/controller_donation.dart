import 'package:flutter/foundation.dart';
import 'package:ipbjp_mobile/repositories.dart';
import 'package:logger/logger.dart';
import 'package:shared/shared.dart';

class DonationController extends ChangeNotifier {
  late List<DonationCreationOrUpdateRequestDTO> donationsList;
  DonationRepository donationRepository = DonationRepository();
  Logger logger = Logger();

  // fetch data from the database
  Future<void> fetchDonations() async {
    logger.d('DonationController');
    try {
      donationsList = await donationRepository.fetchLocalDonations();
      notifyListeners();
    } catch (e) {
      logger.e("Error: ");
      logger.e(e.toString());
    }
  }

  List<DonationCreationOrUpdateRequestDTO> getDonations() {
    return donationsList;
  }
}