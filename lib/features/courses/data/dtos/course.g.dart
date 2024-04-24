// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CourseAdapter extends TypeAdapter<HiveCourseDTO> {
  @override
  final int typeId = 2;

  @override
  HiveCourseDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveCourseDTO(
      fields[0] as int,
      (fields[1] as List).cast<LessonDTO>(),
      fields[2] as String,
      fields[3] as String,
      fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveCourseDTO obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.lessons)
      ..writeByte(2)
      ..write(obj.header)
      ..writeByte(3)
      ..write(obj.logo)
      ..writeByte(4)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
