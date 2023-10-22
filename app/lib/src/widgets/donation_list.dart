import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:ipbjp_mobile/widgets.dart';
import 'package:ipbjp_mobile/provider.dart';
import 'package:ipbjp_mobile/controllers.dart';
import 'package:shared/shared.dart';

class DonationList extends StatefulWidget {

  const DonationList({super.key});

  @override
  State<DonationList> createState() => _DonationListState();
}

class _DonationListState extends State<DonationList> {
  final DonationController donationController = getIt<DonationController>();
  final Logger logger = Logger();
  late List<DonationCreationOrUpdateRequestDTO> donationList;

  @override
  void initState() {
    initDonationList();
    super.initState();
  }

  initDonationList() async {
    await donationController.fetchDonations().then((value) {
      setState(() {
        donationList = donationController.getDonations();
      });
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      /// Listview for the donation list
      child: ListView.builder(
        itemCount: donationController.getDonations().length,
        itemBuilder: (_, index) {
          return DonationTile(
            donation: donationController.getDonations()[index],
          );
        },
      ),
    );
  }
}