/// Tile for displaying a donation.

import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DonationTile extends StatelessWidget {
  final DonationCreationOrUpdateRequestDTO donation;
  const DonationTile({
    super.key,
    @required required this.donation,
  });

  FaIcon _getIcon(DonationIcon? icon) {
    if (icon == null) {
      return const FaIcon(FontAwesomeIcons.a);
    }
    switch (icon) {
      case DonationIcon.localChurch:
        return const FaIcon(FontAwesomeIcons.church);
      case DonationIcon.missionary:
        return const FaIcon(FontAwesomeIcons.handsPraying);
      case DonationIcon.socialProject:
        return const FaIcon(FontAwesomeIcons.hireAHelper);
      case DonationIcon.visitingPreacher:
        return const FaIcon(FontAwesomeIcons.userTie);
      case DonationIcon.other:
        return const FaIcon(FontAwesomeIcons.a);
    }
  }

  @override
  Widget build(BuildContext context) {
    /// ListTile for the donation list
    return Card(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
              title: Text(donation.name!),
              subtitle: Text(
                  "${donation.description!} \nDoe pelo pix: ${donation.pix!}"),
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _getIcon(donation.icon),
                ],
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/qr_code.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
