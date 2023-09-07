import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums.dart';

part 'donation.g.dart';

@CopyWith()
@JsonSerializable()
class DonationCreationOrUpdateRequestDTO extends Equatable {
  final String? name;
  final String? pix;
  final String? description;
  final String? imageUrl;
  final DonationIcon? icon;

  DonationCreationOrUpdateRequestDTO({
    this.name,
    this.pix,
    this.description,
    this.imageUrl,
    this.icon,
  });

  factory DonationCreationOrUpdateRequestDTO.fromJson(
          Map<String, dynamic> json) =>
      _$DonationCreationOrUpdateRequestDTOFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DonationCreationOrUpdateRequestDTOToJson(this);

  @override
  List<Object?> get props => [
        this.name,
        this.pix,
        this.description,
        this.imageUrl,
        this.icon,
      ];

  @override
  bool? get stringify => true;
}
