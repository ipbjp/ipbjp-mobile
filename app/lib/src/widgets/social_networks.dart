import 'package:flutter/material.dart';

import '../controllers/controller_social_network.dart';
import '../widgets.dart';

class SocialNetworks extends StatefulWidget {
  final ControllerSocialNetwork controller;

  const SocialNetworks({super.key, required this.controller});

  @override
  State<SocialNetworks> createState() => _SocialNetworksState();
}

class _SocialNetworksState extends State<SocialNetworks> {
  @override
  void initState() {
    widget.controller.fetchSocialNetworks();
    print('initState');
    print(widget.controller.socialNetworks.value.length);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ValueListenableBuilder(
          valueListenable: widget.controller.socialNetworks,
          builder: (_, socialNetworks, __) {
            return ListView.builder(
              itemCount: socialNetworks.length,
              itemBuilder: (_, index) {
                return SocialNetworkTile(
                  icon: Icon(Icons.abc),
                  address: socialNetworks[index].address,
                  label: socialNetworks[index].label,
                );
              },
            );
          }),
    );
  }
}
