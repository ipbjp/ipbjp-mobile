import 'package:json_annotation/json_annotation.dart';

part 'donation.g.dart';

@JsonSerializable()
class Donation {
  final String name;
  final String pix;
  final String? description;
  final String? imageUrl;
  final DonationIcon? icon;

  Donation({
    required this.name,
    required this.pix,
    this.description,
    this.imageUrl,
    this.icon,
  });

  factory Donation.fromJson(Map<String, dynamic> json) =>
      _$DonationFromJson(json);

  Map<String, dynamic> toJson() => _$DonationToJson(this);
}

enum DonationIcon {
  @JsonValue(1)
  defaultIcon,
}
