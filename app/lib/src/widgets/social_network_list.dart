import 'package:flutter/material.dart';

import 'package:ipbjp_mobile/controllers.dart';
import 'package:ipbjp_mobile/widgets.dart';

import 'package:ipbjp_mobile/provider.dart';

class SocialNetworkList extends StatefulWidget {

  const SocialNetworkList({super.key});

  @override
  State<SocialNetworkList> createState() => _SocialNetworkListState();
}

class _SocialNetworkListState extends State<SocialNetworkList> {
  final SocialNetworkController socialNetworkController = getIt<SocialNetworkController>();
  @override
  void initState() {
    socialNetworkController.fetchSocialNetworks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ValueListenableBuilder(
          valueListenable: socialNetworkController.socialNetworks,
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
