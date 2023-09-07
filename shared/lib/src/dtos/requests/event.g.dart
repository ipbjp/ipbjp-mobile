// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventCreationOrUpdateRequestDTOCWProxy {
  EventCreationOrUpdateRequestDTO name(String? name);

  EventCreationOrUpdateRequestDTO address(String? address);

  EventCreationOrUpdateRequestDTO startDate(DateTime? startDate);

  EventCreationOrUpdateRequestDTO endDate(DateTime? endDate);

  EventCreationOrUpdateRequestDTO icon(EventIcon? icon);

  EventCreationOrUpdateRequestDTO description(String? description);

  EventCreationOrUpdateRequestDTO imageUrl(String? imageUrl);

  EventCreationOrUpdateRequestDTO link(String? link);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventCreationOrUpdateRequestDTO(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventCreationOrUpdateRequestDTO(...).copyWith(id: 12, name: "My name")
  /// ````
  EventCreationOrUpdateRequestDTO call({
    String? name,
    String? address,
    DateTime? startDate,
    DateTime? endDate,
    EventIcon? icon,
    String? description,
    String? imageUrl,
    String? link,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEventCreationOrUpdateRequestDTO.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEventCreationOrUpdateRequestDTO.copyWith.fieldName(...)`
class _$EventCreationOrUpdateRequestDTOCWProxyImpl
    implements _$EventCreationOrUpdateRequestDTOCWProxy {
  const _$EventCreationOrUpdateRequestDTOCWProxyImpl(this._value);

  final EventCreationOrUpdateRequestDTO _value;

  @override
  EventCreationOrUpdateRequestDTO name(String? name) => this(name: name);

  @override
  EventCreationOrUpdateRequestDTO address(String? address) =>
      this(address: address);

  @override
  EventCreationOrUpdateRequestDTO startDate(DateTime? startDate) =>
      this(startDate: startDate);

  @override
  EventCreationOrUpdateRequestDTO endDate(DateTime? endDate) =>
      this(endDate: endDate);

  @override
  EventCreationOrUpdateRequestDTO icon(EventIcon? icon) => this(icon: icon);

  @override
  EventCreationOrUpdateRequestDTO description(String? description) =>
      this(description: description);

  @override
  EventCreationOrUpdateRequestDTO imageUrl(String? imageUrl) =>
      this(imageUrl: imageUrl);

  @override
  EventCreationOrUpdateRequestDTO link(String? link) => this(link: link);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventCreationOrUpdateRequestDTO(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventCreationOrUpdateRequestDTO(...).copyWith(id: 12, name: "My name")
  /// ````
  EventCreationOrUpdateRequestDTO call({
    Object? name = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
    Object? startDate = const $CopyWithPlaceholder(),
    Object? endDate = const $CopyWithPlaceholder(),
    Object? icon = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? imageUrl = const $CopyWithPlaceholder(),
    Object? link = const $CopyWithPlaceholder(),
  }) {
    return EventCreationOrUpdateRequestDTO(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      address: address == const $CopyWithPlaceholder()
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String?,
      startDate: startDate == const $CopyWithPlaceholder()
          ? _value.startDate
          // ignore: cast_nullable_to_non_nullable
          : startDate as DateTime?,
      endDate: endDate == const $CopyWithPlaceholder()
          ? _value.endDate
          // ignore: cast_nullable_to_non_nullable
          : endDate as DateTime?,
      icon: icon == const $CopyWithPlaceholder()
          ? _value.icon
          // ignore: cast_nullable_to_non_nullable
          : icon as EventIcon?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      imageUrl: imageUrl == const $CopyWithPlaceholder()
          ? _value.imageUrl
          // ignore: cast_nullable_to_non_nullable
          : imageUrl as String?,
      link: link == const $CopyWithPlaceholder()
          ? _value.link
          // ignore: cast_nullable_to_non_nullable
          : link as String?,
    );
  }
}

extension $EventCreationOrUpdateRequestDTOCopyWith
    on EventCreationOrUpdateRequestDTO {
  /// Returns a callable class that can be used as follows: `instanceOfEventCreationOrUpdateRequestDTO.copyWith(...)` or like so:`instanceOfEventCreationOrUpdateRequestDTO.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventCreationOrUpdateRequestDTOCWProxy get copyWith =>
      _$EventCreationOrUpdateRequestDTOCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventCreationOrUpdateRequestDTO _$EventCreationOrUpdateRequestDTOFromJson(
        Map<String, dynamic> json) =>
    EventCreationOrUpdateRequestDTO(
      name: json['name'] as String?,
      address: json['address'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      icon: $enumDecodeNullable(_$EventIconEnumMap, json['icon']),
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$EventCreationOrUpdateRequestDTOToJson(
        EventCreationOrUpdateRequestDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'icon': _$EventIconEnumMap[instance.icon],
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'link': instance.link,
    };

const _$EventIconEnumMap = {
  EventIcon.defaultIcon: 1,
};
