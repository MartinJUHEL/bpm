// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FilterAdapter extends TypeAdapter<_$FilterModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$FilterModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$FilterModelImpl(
      city: fields[0] as CityModel?,
      radius: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$FilterModelImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.city)
      ..writeByte(2)
      ..write(obj.radius);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FilterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
