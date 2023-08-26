// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_network.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialNetwork _$SocialNetworkFromJson(Map<String, dynamic> json) =>
    SocialNetwork(
      label: json['label'] as String,
      address: json['address'] as String,
      icon: $enumDecode(_$SocialNetworkIconEnumMap, json['icon']),
    );

Map<String, dynamic> _$SocialNetworkToJson(SocialNetwork instance) =>
    <String, dynamic>{
      'label': instance.label,
      'address': instance.address,
      'icon': _$SocialNetworkIconEnumMap[instance.icon]!,
    };

const _$SocialNetworkIconEnumMap = {
  SocialNetworkIcon.instagram: 1,
  SocialNetworkIcon.whatsapp: 2,
  SocialNetworkIcon.location: 3,
  SocialNetworkIcon.youtube: 4,
};
