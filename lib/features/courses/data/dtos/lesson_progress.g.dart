// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_progress.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LessonProgressAdapter extends TypeAdapter<HiveLessonProgressDTO> {
  @override
  final int typeId = 1;

  @override
  HiveLessonProgressDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveLessonProgressDTO(
      fields[0] as int,
      fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, HiveLessonProgressDTO obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.lessonIndex)
      ..writeByte(1)
      ..write(obj.lastChapterIndex);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LessonProgressAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
