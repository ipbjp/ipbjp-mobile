import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums.dart';

part 'event.g.dart';

@CopyWith()
@JsonSerializable()
class EventResponseDTO extends Equatable {
  final String id;
  final String name;
  final String address;
  final DateTime startDate;
  final DateTime? endDate;
  final EventIcon icon;
  final String? description;
  final String? imageUrl;
  final String? link;

  EventResponseDTO({
    required this.id,
    required this.name,
    required this.address,
    required this.startDate,
    this.endDate,
    this.icon = EventIcon.defaultIcon,
    this.description,
    this.imageUrl,
    this.link,
  });

  factory EventResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$EventResponseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$EventResponseDTOToJson(this);

  @override
  List<Object?> get props => [
        this.id,
        this.name,
        this.address,
        this.startDate,
        this.endDate,
        this.icon,
        this.description,
        this.imageUrl,
        this.link,
      ];

  @override
  bool? get stringify => true;
}
