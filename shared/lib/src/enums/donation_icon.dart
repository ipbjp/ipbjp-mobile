// TODO: Add more icons
import 'package:json_annotation/json_annotation.dart';

enum DonationIcon {
  @JsonValue(1)
  localChurch,
  @JsonValue(2)
  missionary,
  @JsonValue(3)
  socialProject,
  @JsonValue(4)
  visitingPreacher,
  @JsonValue(5)
  other,
}
