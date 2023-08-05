import 'package:flutter/material.dart';

class SocialNetworkTile extends StatelessWidget {
  final Widget icon;
  final String address;
  final String label;
  final VoidCallback? onPressed;

  const SocialNetworkTile({
    super.key,
    required this.icon,
    required this.address,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: icon,
        title: Text(address),
        onTap: onPressed,
      ),
    );
  }
}
