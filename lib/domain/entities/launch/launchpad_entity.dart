import 'package:json_annotation/json_annotation.dart';

part 'launchpad_entity.g.dart';

@JsonSerializable()
class LaunchpadEntity {
  double latitude;
  double longitude;
  String locality;
  String region;
  String name;
  String fullName;

  LaunchpadEntity({
    required this.latitude,
    required this.longitude,
    required this.locality,
    required this.region,
    required this.name,
    required this.fullName,
  });

  factory LaunchpadEntity.fromJson(Map<String, dynamic> json) =>
      _$LaunchpadEntityFromJson(json);
  Map<String, dynamic> toJson() => _$LaunchpadEntityToJson(this);
}
