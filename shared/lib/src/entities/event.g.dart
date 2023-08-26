// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      name: json['name'] as String,
      address: json['address'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      icon: $enumDecodeNullable(_$EventIconEnumMap, json['icon']),
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'icon': _$EventIconEnumMap[instance.icon],
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'link': instance.link,
    };

const _$EventIconEnumMap = {
  EventIcon.defaultIcon: 1,
};
