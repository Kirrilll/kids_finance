// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_progress.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProgressAdapter extends TypeAdapter<HiveCourseProgressDTO> {
  @override
  final int typeId = 0;

  @override
  HiveCourseProgressDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveCourseProgressDTO(
      fields[0] as int,
      fields[1] as LessonProgressDTO,
    );
  }

  @override
  void write(BinaryWriter writer, HiveCourseProgressDTO obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.courseId)
      ..writeByte(1)
      ..write(obj.lastLesson);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProgressAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
