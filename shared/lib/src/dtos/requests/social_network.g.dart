// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_network.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SocialNetworkCreationOrUpdateRequestDTOCWProxy {
  SocialNetworkCreationOrUpdateRequestDTO label(String? label);

  SocialNetworkCreationOrUpdateRequestDTO address(String? address);

  SocialNetworkCreationOrUpdateRequestDTO icon(SocialNetworkIcon? icon);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SocialNetworkCreationOrUpdateRequestDTO(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SocialNetworkCreationOrUpdateRequestDTO(...).copyWith(id: 12, name: "My name")
  /// ````
  SocialNetworkCreationOrUpdateRequestDTO call({
    String? label,
    String? address,
    SocialNetworkIcon? icon,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSocialNetworkCreationOrUpdateRequestDTO.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSocialNetworkCreationOrUpdateRequestDTO.copyWith.fieldName(...)`
class _$SocialNetworkCreationOrUpdateRequestDTOCWProxyImpl
    implements _$SocialNetworkCreationOrUpdateRequestDTOCWProxy {
  const _$SocialNetworkCreationOrUpdateRequestDTOCWProxyImpl(this._value);

  final SocialNetworkCreationOrUpdateRequestDTO _value;

  @override
  SocialNetworkCreationOrUpdateRequestDTO label(String? label) =>
      this(label: label);

  @override
  SocialNetworkCreationOrUpdateRequestDTO address(String? address) =>
      this(address: address);

  @override
  SocialNetworkCreationOrUpdateRequestDTO icon(SocialNetworkIcon? icon) =>
      this(icon: icon);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SocialNetworkCreationOrUpdateRequestDTO(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SocialNetworkCreationOrUpdateRequestDTO(...).copyWith(id: 12, name: "My name")
  /// ````
  SocialNetworkCreationOrUpdateRequestDTO call({
    Object? label = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
    Object? icon = const $CopyWithPlaceholder(),
  }) {
    return SocialNetworkCreationOrUpdateRequestDTO(
      label: label == const $CopyWithPlaceholder()
          ? _value.label
          // ignore: cast_nullable_to_non_nullable
          : label as String?,
      address: address == const $CopyWithPlaceholder()
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String?,
      icon: icon == const $CopyWithPlaceholder()
          ? _value.icon
          // ignore: cast_nullable_to_non_nullable
          : icon as SocialNetworkIcon?,
    );
  }
}

extension $SocialNetworkCreationOrUpdateRequestDTOCopyWith
    on SocialNetworkCreationOrUpdateRequestDTO {
  /// Returns a callable class that can be used as follows: `instanceOfSocialNetworkCreationOrUpdateRequestDTO.copyWith(...)` or like so:`instanceOfSocialNetworkCreationOrUpdateRequestDTO.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SocialNetworkCreationOrUpdateRequestDTOCWProxy get copyWith =>
      _$SocialNetworkCreationOrUpdateRequestDTOCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialNetworkCreationOrUpdateRequestDTO
    _$SocialNetworkCreationOrUpdateRequestDTOFromJson(
            Map<String, dynamic> json) =>
        SocialNetworkCreationOrUpdateRequestDTO(
          label: json['label'] as String?,
          address: json['address'] as String?,
          icon: $enumDecodeNullable(_$SocialNetworkIconEnumMap, json['icon']),
        );

Map<String, dynamic> _$SocialNetworkCreationOrUpdateRequestDTOToJson(
        SocialNetworkCreationOrUpdateRequestDTO instance) =>
    <String, dynamic>{
      'label': instance.label,
      'address': instance.address,
      'icon': _$SocialNetworkIconEnumMap[instance.icon],
    };

const _$SocialNetworkIconEnumMap = {
  SocialNetworkIcon.instagram: 1,
  SocialNetworkIcon.whatsapp: 2,
  SocialNetworkIcon.location: 3,
  SocialNetworkIcon.youtube: 4,
};
