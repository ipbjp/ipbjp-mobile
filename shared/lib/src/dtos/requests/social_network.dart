import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums.dart';

part 'social_network.g.dart';

@CopyWith()
@JsonSerializable()
class SocialNetworkCreationOrUpdateRequestDTO extends Equatable {
  final String? label;
  final String? address;
  final SocialNetworkIcon? icon;

  SocialNetworkCreationOrUpdateRequestDTO({
    this.label,
    this.address,
    this.icon,
  });

  factory SocialNetworkCreationOrUpdateRequestDTO.fromJson(
          Map<String, dynamic> json) =>
      _$SocialNetworkCreationOrUpdateRequestDTOFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SocialNetworkCreationOrUpdateRequestDTOToJson(this);

  @override
  List<Object?> get props => [
        this.label,
        this.address,
        this.icon,
      ];

  @override
  bool? get stringify => true;
}
