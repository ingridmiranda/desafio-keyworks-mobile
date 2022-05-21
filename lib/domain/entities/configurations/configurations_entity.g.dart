// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configurations_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConfigurationsEntityAdapter extends TypeAdapter<ConfigurationsEntity> {
  @override
  final int typeId = 0;

  @override
  ConfigurationsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ConfigurationsEntity(
      username: fields[0] as String,
      isDarkMode: fields[1] as bool?,
      language: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ConfigurationsEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.username)
      ..writeByte(1)
      ..write(obj.isDarkMode)
      ..writeByte(2)
      ..write(obj.language);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConfigurationsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
