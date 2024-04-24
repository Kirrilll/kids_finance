// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LessonAdapter extends TypeAdapter<HiveLessonDTO> {
  @override
  final int typeId = 4;

  @override
  HiveLessonDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveLessonDTO(
      (fields[1] as List).cast<ChapterDTO>(),
      fields[0] as String,
      fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveLessonDTO obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.header)
      ..writeByte(1)
      ..write(obj.chapters)
      ..writeByte(2)
      ..write(obj.logo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LessonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
