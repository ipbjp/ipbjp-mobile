import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared/shared.dart';
import 'package:url_launcher/url_launcher.dart';

/// material icon instagram
///

class SocialNetworkTile extends StatelessWidget {
  final SocialNetworkIcon? icon;
  final String? address;
  final String? label;
  final VoidCallback? onPressed;

  const SocialNetworkTile({
    super.key,
    required this.icon,
    required this.address,
    required this.label,
    this.onPressed,
  });

  /// function that recive this.icon and return a icon based on icon enum value
  FaIcon _getIcon(SocialNetworkIcon? icon) {
    if (icon == null) {
      return const FaIcon(FontAwesomeIcons.a);
    }
    switch (icon) {
      case SocialNetworkIcon.instagram:
        return const FaIcon(FontAwesomeIcons.instagram);
      case SocialNetworkIcon.whatsapp:
        return const FaIcon(FontAwesomeIcons.whatsapp);
      case SocialNetworkIcon.location:
        return const FaIcon(FontAwesomeIcons.mapLocation);
      case SocialNetworkIcon.youtube:
        return const FaIcon(FontAwesomeIcons.youtube);
      default:
        return const FaIcon(FontAwesomeIcons.a);
    }
  }

  _launchURL(String? address) async {
    if (address == null) {
      throw Exception('Empty address');
    }
    final Uri url = Uri.parse(address);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $address');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        /// switch case that returns a icon based on icon enum value
        leading: _getIcon(icon!),
        title: label != null
            ? InkWell(
                child: Text(label!),
                onTap: () => _launchURL(address),
              )
            : const Text(""),
        onTap: onPressed,
      ),
    );
  }
}
