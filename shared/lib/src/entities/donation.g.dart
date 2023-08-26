// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Donation _$DonationFromJson(Map<String, dynamic> json) => Donation(
      name: json['name'] as String,
      pix: json['pix'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      icon: $enumDecodeNullable(_$DonationIconEnumMap, json['icon']),
    );

Map<String, dynamic> _$DonationToJson(Donation instance) => <String, dynamic>{
      'name': instance.name,
      'pix': instance.pix,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'icon': _$DonationIconEnumMap[instance.icon],
    };

const _$DonationIconEnumMap = {
  DonationIcon.defaultIcon: 1,
};
