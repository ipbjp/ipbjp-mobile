/// Sreen with a form to create a donation.
///
/// This screen is used to create a donation.

import 'package:flutter/material.dart';

import 'package:ipbjp_mobile/widgets.dart';
import 'package:ipbjp_mobile/provider.dart';
import 'package:ipbjp_mobile/controllers.dart';
import 'package:shared/shared.dart';

class DonationCreateScreen extends StatefulWidget {
  const DonationCreateScreen({super.key});

  @override
  State<DonationCreateScreen> createState() => _DonationCreateScreenState();
}

class _DonationCreateScreenState extends State<DonationCreateScreen> {
  final DonationController donationController = getIt<DonationController>();

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: const Text('Criar Doação',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: DonationForm(),
        ),
      ),
    );
  }
}
