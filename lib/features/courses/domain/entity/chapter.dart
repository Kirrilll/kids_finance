import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'chapter.freezed.dart';

@freezed
class Chapter with _$Chapter{
  const factory Chapter(
    {
      required String text,
      required Duration duration,
  }) = _Chapter;
}