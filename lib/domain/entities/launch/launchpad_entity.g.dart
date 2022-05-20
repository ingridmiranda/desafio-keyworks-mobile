// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launchpad_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchpadEntity _$LaunchpadEntityFromJson(Map<String, dynamic> json) =>
    LaunchpadEntity(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      locality: json['locality'] as String?,
      region: json['region'] as String?,
      name: json['name'] as String?,
      fullName: json['full_name'] as String?,
    );

Map<String, dynamic> _$LaunchpadEntityToJson(LaunchpadEntity instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'locality': instance.locality,
      'region': instance.region,
      'name': instance.name,
      'full_name': instance.fullName,
    };
