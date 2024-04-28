import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'chapter.freezed.dart';

@freezed
class Chapter with _$Chapter{
  const factory Chapter(
    {
      required int id,
      required String content,
      required Duration duration,
  }) = _Chapter;
}