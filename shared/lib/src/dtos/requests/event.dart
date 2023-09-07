import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums.dart';

part 'event.g.dart';

@CopyWith()
@JsonSerializable()
class EventCreationOrUpdateRequestDTO extends Equatable {
  final String? name;
  final String? address;
  final DateTime? startDate;
  final DateTime? endDate;
  final EventIcon? icon;
  final String? description;
  final String? imageUrl;
  final String? link;

  EventCreationOrUpdateRequestDTO({
    this.name,
    this.address,
    this.startDate,
    this.endDate,
    this.icon,
    this.description,
    this.imageUrl,
    this.link,
  });

  factory EventCreationOrUpdateRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$EventCreationOrUpdateRequestDTOFromJson(json);

  Map<String, dynamic> toJson() =>
      _$EventCreationOrUpdateRequestDTOToJson(this);

  @override
  List<Object?> get props => [
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
