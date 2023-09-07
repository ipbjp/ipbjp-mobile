// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DonationCreationOrUpdateRequestDTOCWProxy {
  DonationCreationOrUpdateRequestDTO name(String? name);

  DonationCreationOrUpdateRequestDTO pix(String? pix);

  DonationCreationOrUpdateRequestDTO description(String? description);

  DonationCreationOrUpdateRequestDTO imageUrl(String? imageUrl);

  DonationCreationOrUpdateRequestDTO icon(DonationIcon? icon);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DonationCreationOrUpdateRequestDTO(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DonationCreationOrUpdateRequestDTO(...).copyWith(id: 12, name: "My name")
  /// ````
  DonationCreationOrUpdateRequestDTO call({
    String? name,
    String? pix,
    String? description,
    String? imageUrl,
    DonationIcon? icon,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDonationCreationOrUpdateRequestDTO.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDonationCreationOrUpdateRequestDTO.copyWith.fieldName(...)`
class _$DonationCreationOrUpdateRequestDTOCWProxyImpl
    implements _$DonationCreationOrUpdateRequestDTOCWProxy {
  const _$DonationCreationOrUpdateRequestDTOCWProxyImpl(this._value);

  final DonationCreationOrUpdateRequestDTO _value;

  @override
  DonationCreationOrUpdateRequestDTO name(String? name) => this(name: name);

  @override
  DonationCreationOrUpdateRequestDTO pix(String? pix) => this(pix: pix);

  @override
  DonationCreationOrUpdateRequestDTO description(String? description) =>
      this(description: description);

  @override
  DonationCreationOrUpdateRequestDTO imageUrl(String? imageUrl) =>
      this(imageUrl: imageUrl);

  @override
  DonationCreationOrUpdateRequestDTO icon(DonationIcon? icon) =>
      this(icon: icon);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DonationCreationOrUpdateRequestDTO(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DonationCreationOrUpdateRequestDTO(...).copyWith(id: 12, name: "My name")
  /// ````
  DonationCreationOrUpdateRequestDTO call({
    Object? name = const $CopyWithPlaceholder(),
    Object? pix = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? imageUrl = const $CopyWithPlaceholder(),
    Object? icon = const $CopyWithPlaceholder(),
  }) {
    return DonationCreationOrUpdateRequestDTO(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      pix: pix == const $CopyWithPlaceholder()
          ? _value.pix
          // ignore: cast_nullable_to_non_nullable
          : pix as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      imageUrl: imageUrl == const $CopyWithPlaceholder()
          ? _value.imageUrl
          // ignore: cast_nullable_to_non_nullable
          : imageUrl as String?,
      icon: icon == const $CopyWithPlaceholder()
          ? _value.icon
          // ignore: cast_nullable_to_non_nullable
          : icon as DonationIcon?,
    );
  }
}

extension $DonationCreationOrUpdateRequestDTOCopyWith
    on DonationCreationOrUpdateRequestDTO {
  /// Returns a callable class that can be used as follows: `instanceOfDonationCreationOrUpdateRequestDTO.copyWith(...)` or like so:`instanceOfDonationCreationOrUpdateRequestDTO.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DonationCreationOrUpdateRequestDTOCWProxy get copyWith =>
      _$DonationCreationOrUpdateRequestDTOCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DonationCreationOrUpdateRequestDTO _$DonationCreationOrUpdateRequestDTOFromJson(
        Map<String, dynamic> json) =>
    DonationCreationOrUpdateRequestDTO(
      name: json['name'] as String?,
      pix: json['pix'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      icon: $enumDecodeNullable(_$DonationIconEnumMap, json['icon']),
    );

Map<String, dynamic> _$DonationCreationOrUpdateRequestDTOToJson(
        DonationCreationOrUpdateRequestDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'pix': instance.pix,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'icon': _$DonationIconEnumMap[instance.icon],
    };

const _$DonationIconEnumMap = {
  DonationIcon.defaultIcon: 1,
};
