// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChapterAdapter extends TypeAdapter<HiveChapterDTO> {
  @override
  final int typeId = 5;

  @override
  HiveChapterDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveChapterDTO(
      fields[0] as String,
      fields[1] as Duration,
    );
  }

  @override
  void write(BinaryWriter writer, HiveChapterDTO obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.content)
      ..writeByte(1)
      ..write(obj.duration);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChapterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
