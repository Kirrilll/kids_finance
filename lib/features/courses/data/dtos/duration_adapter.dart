import 'package:hive/hive.dart';

class DurationAdapter extends TypeAdapter<Duration> {
  @override
  int typeId = 6;

  @override
  Duration read(BinaryReader reader) {
    return Duration(seconds: reader.read());
  }

  @override
  void write(BinaryWriter writer, Duration obj){
    writer.write(obj.inSeconds);
  }
}