class SocialNetwork {
  final String label;
  final String address;
  final SocialNetworkIcon icon;

  SocialNetwork({
    required this.label,
    required this.address,
    required this.icon,
  });

  factory SocialNetwork.fromJson(Map<String, dynamic> json) {
    return SocialNetwork(
        label: json["label"],
        address: json["address"],
        icon: SocialNetworkIcon.fromValue(json["icon"] as int));
  }

  Map<String, dynamic> toJson() => {
        "label": label,
        "address": address,
        "icon": icon.value,
      };
}

enum SocialNetworkIcon {
  instagram(1),
  whatsapp(2),
  location(3),
  youtube(4);

  final int value;

  const SocialNetworkIcon(this.value);

  static SocialNetworkIcon fromValue(int value) {
    return SocialNetworkIcon.values
        .firstWhere((element) => element.value == value);
  }
}
