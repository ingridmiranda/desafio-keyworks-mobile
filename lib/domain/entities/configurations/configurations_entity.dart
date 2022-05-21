import 'package:hive/hive.dart';

part 'configurations_entity.g.dart';

@HiveType(typeId: 0)
class ConfigurationsEntity extends HiveObject {
  @HiveField(0)
  String username;

  @HiveField(1)
  bool? isDarkMode;

  @HiveField(2)
  String? language;

  ConfigurationsEntity({
    required this.username,
    this.isDarkMode,
    this.language,
  });
}
