import 'package:json_annotation/json_annotation.dart';

part 'social_network.g.dart';

@JsonSerializable()
class SocialNetwork {
  final String label;
  final String address;
  final SocialNetworkIcon icon;

  SocialNetwork({
    required this.label,
    required this.address,
    required this.icon,
  });

  factory SocialNetwork.fromJson(Map<String, dynamic> json) =>
      _$SocialNetworkFromJson(json);

  Map<String, dynamic> toJson() => _$SocialNetworkToJson(this);
}

enum SocialNetworkIcon {
  @JsonValue(1)
  instagram,
  @JsonValue(2)
  whatsapp,
  @JsonValue(3)
  location,
  @JsonValue(4)
  youtube
}
