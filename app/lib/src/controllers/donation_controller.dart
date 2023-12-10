import 'package:flutter/foundation.dart';
import 'package:ipbjp_mobile/repositories.dart';

import 'package:shared/shared.dart';

class DonationController extends ChangeNotifier {
  late List<DonationCreationOrUpdateRequestDTO> donationsList = [];
  DonationRepository donationRepository = DonationRepository();

  // fetch data from the database
  Future<void> fetchDonations() async {
    print('DonationController');
    try {
      donationsList = await donationRepository.fetchLocalDonations();
      notifyListeners();
    } catch (e) {
      print("Error: ");
      print(e.toString());
    }
  }

  List<DonationCreationOrUpdateRequestDTO> getDonations() {
    return donationsList;
  }
}
