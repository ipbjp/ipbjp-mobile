import 'package:flutter/material.dart';

class SocialNetworks extends StatelessWidget {
  const SocialNetworks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Placeholder();
        },
      ),
    );
  }
}
