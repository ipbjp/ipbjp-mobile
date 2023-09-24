import 'package:flutter/material.dart';

import '../controllers/controller_social_network.dart';
import '../widgets.dart';

class SocialNetworkList extends StatefulWidget {
  final ControllerSocialNetwork controller;

  SocialNetworkList({super.key, required this.controller});

  @override
  State<SocialNetworkList> createState() => _SocialNetworkListState();
}

class _SocialNetworkListState extends State<SocialNetworkList> {
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
                  icon: socialNetworks[index].icon,
                  address: socialNetworks[index].address,
                  label: socialNetworks[index].label,
                );
              },
            );
          }),
    );
  }
}
