// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'launch_entity.g.dart';

@JsonSerializable()
class LaunchEntity {
  String? name;

  @JsonKey(name: 'date_utc')
  DateTime? dateUtc;

  @JsonKey(name: 'date_local')
  DateTime? dateLocal;

  String? launchpad;

  LaunchEntity({
    required this.name,
    required this.dateUtc,
    required this.dateLocal,
    required this.launchpad,
  });

  factory LaunchEntity.fromJson(Map<String, dynamic> json) =>
      _$LaunchEntityFromJson(json);
  Map<String, dynamic> toJson() => _$LaunchEntityToJson(this);
}
