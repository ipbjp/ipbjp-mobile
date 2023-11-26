/// Donation form to create a donation.
///
/// This form is used to create a donation.

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logger/logger.dart';
import 'package:ipbjp_mobile/widgets.dart';
import 'package:ipbjp_mobile/provider.dart';
import 'package:ipbjp_mobile/controllers.dart';
import 'package:shared/shared.dart';
import 'package:shared/src/dtos/requests/donation.dart';

const smallSpacing = 10.0;

class DonationForm extends StatefulWidget {
  const DonationForm({super.key});

  @override
  State<DonationForm> createState() => _DonationFormState();
}

/// Donation form state.
class _DonationFormState extends State<DonationForm> {
  final _formKey = GlobalKey<FormState>();

  // Create an instance of the controller for each text field
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _pixController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();

  // funciton that handle the form submit
  void _handleSubmit() {
    if (_formKey.currentState!.validate()) {
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: [
          SimpleTextField(
              label: 'Nome', controller: _nameController, color: Colors.black),
          SimpleTextField(
              label: 'Pix', controller: _pixController, color: Colors.black),
          DonationDropdownMenu()
        ]));
  }
}

enum DonationIconEnum {
  localChurch(
      donationTypeLabel: 'Igreja Local',
      donationTypeIcon: FontAwesomeIcons.church,
      donationTypeIconCode: 1),
  missionary(
      donationTypeLabel: 'Missionário',
      donationTypeIcon: FontAwesomeIcons.handsPraying,
      donationTypeIconCode: 2),
  socialProject(
      donationTypeLabel: 'Projeto Social',
      donationTypeIcon: FontAwesomeIcons.handshakeAngle,
      donationTypeIconCode: 3),
  visitingPreacher(
      donationTypeLabel: 'Preletor Visitante',
      donationTypeIcon: FontAwesomeIcons.userTie,
      donationTypeIconCode: 4),
  other(
      donationTypeLabel: 'Outro',
      donationTypeIcon: FontAwesomeIcons.question,
      donationTypeIconCode: 5);

  const DonationIconEnum({
    required this.donationTypeLabel,
    required this.donationTypeIconCode,
    required this.donationTypeIcon,
  });
  final String donationTypeLabel;
  final IconData donationTypeIcon;
  final int donationTypeIconCode;
}

class DonationDropdownMenu extends StatefulWidget {
  const DonationDropdownMenu({super.key});

  @override
  State<DonationDropdownMenu> createState() => _DonationDropdownMenuState();
}

class _DonationDropdownMenuState extends State<DonationDropdownMenu> {
  DonationIconEnum? selectedDonationIcon = DonationIconEnum.localChurch;
  final TextEditingController donationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<DonationIconEnum>> donationIconEntries =
        <DropdownMenuEntry<DonationIconEnum>>[];
    for (final DonationIconEnum donationIcon in DonationIconEnum.values) {
      donationIconEntries.add(DropdownMenuEntry<DonationIconEnum>(
        value: donationIcon,
        label: donationIcon.donationTypeLabel,
      ));
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Row(
        children: [
          Expanded(
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return DropdownMenu<DonationIconEnum>(
                initialSelection: DonationIconEnum.localChurch,
                controller: donationController,
                leadingIcon: const Icon(Icons.search),
                label: const Text('Icon'),
                width: constraints.maxWidth - 10,
                dropdownMenuEntries: donationIconEntries,
                onSelected: (icon) {
                  setState(() {
                    selectedDonationIcon = icon;
                  });
                },
              );
            }),
          ),
          Icon(selectedDonationIcon!.donationTypeIcon)
        ],
      ),
    );
  }
}
