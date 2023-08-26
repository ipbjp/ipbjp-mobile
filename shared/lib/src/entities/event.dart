import 'package:json_annotation/json_annotation.dart';

part 'event.g.dart';

@JsonSerializable()
class Event {
  final String name;
  final String address;
  final DateTime startDate;
  final DateTime? endDate;
  final EventIcon? icon;
  final String? description;
  final String? imageUrl;
  final String? link;

  Event({
    required this.name,
    required this.address,
    required this.startDate,
    this.endDate,
    this.icon,
    this.description,
    this.imageUrl,
    this.link,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);
}

// TODO: Add more icons
enum EventIcon {
  @JsonValue(1)
  defaultIcon,
}