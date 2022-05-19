// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchEntity _$LaunchEntityFromJson(Map<String, dynamic> json) => LaunchEntity(
      name: json['name'] as String?,
      dateUtc: json['date_utc'] == null
          ? null
          : DateTime.parse(json['date_utc'] as String),
      dateLocal: json['date_local'] == null
          ? null
          : DateTime.parse(json['date_local'] as String),
      launchpad: json['launchpad'] as String?,
    );

Map<String, dynamic> _$LaunchEntityToJson(LaunchEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date_utc': instance.dateUtc?.toIso8601String(),
      'date_local': instance.dateLocal?.toIso8601String(),
      'launchpad': instance.launchpad,
    };
