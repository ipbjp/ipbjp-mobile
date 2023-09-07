// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventResponseDTOCWProxy {
  EventResponseDTO id(String id);

  EventResponseDTO name(String name);

  EventResponseDTO address(String address);

  EventResponseDTO startDate(DateTime startDate);

  EventResponseDTO endDate(DateTime? endDate);

  EventResponseDTO icon(EventIcon icon);

  EventResponseDTO description(String? description);

  EventResponseDTO imageUrl(String? imageUrl);

  EventResponseDTO link(String? link);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventResponseDTO(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventResponseDTO(...).copyWith(id: 12, name: "My name")
  /// ````
  EventResponseDTO call({
    String? id,
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

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEventResponseDTO.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEventResponseDTO.copyWith.fieldName(...)`
class _$EventResponseDTOCWProxyImpl implements _$EventResponseDTOCWProxy {
  const _$EventResponseDTOCWProxyImpl(this._value);

  final EventResponseDTO _value;

  @override
  EventResponseDTO id(String id) => this(id: id);

  @override
  EventResponseDTO name(String name) => this(name: name);

  @override
  EventResponseDTO address(String address) => this(address: address);

  @override
  EventResponseDTO startDate(DateTime startDate) => this(startDate: startDate);

  @override
  EventResponseDTO endDate(DateTime? endDate) => this(endDate: endDate);

  @override
  EventResponseDTO icon(EventIcon icon) => this(icon: icon);

  @override
  EventResponseDTO description(String? description) =>
      this(description: description);

  @override
  EventResponseDTO imageUrl(String? imageUrl) => this(imageUrl: imageUrl);

  @override
  EventResponseDTO link(String? link) => this(link: link);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventResponseDTO(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventResponseDTO(...).copyWith(id: 12, name: "My name")
  /// ````
  EventResponseDTO call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
    Object? startDate = const $CopyWithPlaceholder(),
    Object? endDate = const $CopyWithPlaceholder(),
    Object? icon = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? imageUrl = const $CopyWithPlaceholder(),
    Object? link = const $CopyWithPlaceholder(),
  }) {
    return EventResponseDTO(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      address: address == const $CopyWithPlaceholder() || address == null
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String,
      startDate: startDate == const $CopyWithPlaceholder() || startDate == null
          ? _value.startDate
          // ignore: cast_nullable_to_non_nullable
          : startDate as DateTime,
      endDate: endDate == const $CopyWithPlaceholder()
          ? _value.endDate
          // ignore: cast_nullable_to_non_nullable
          : endDate as DateTime?,
      icon: icon == const $CopyWithPlaceholder() || icon == null
          ? _value.icon
          // ignore: cast_nullable_to_non_nullable
          : icon as EventIcon,
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

extension $EventResponseDTOCopyWith on EventResponseDTO {
  /// Returns a callable class that can be used as follows: `instanceOfEventResponseDTO.copyWith(...)` or like so:`instanceOfEventResponseDTO.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventResponseDTOCWProxy get copyWith => _$EventResponseDTOCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventResponseDTO _$EventResponseDTOFromJson(Map<String, dynamic> json) =>
    EventResponseDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      icon: $enumDecodeNullable(_$EventIconEnumMap, json['icon']) ??
          EventIcon.defaultIcon,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$EventResponseDTOToJson(EventResponseDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'icon': _$EventIconEnumMap[instance.icon]!,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'link': instance.link,
    };

const _$EventIconEnumMap = {
  EventIcon.defaultIcon: 1,
};
