// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CityAdapter extends TypeAdapter<_$CityModelImpl> {
  @override
  final int typeId = 1;

  @override
  _$CityModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CityModelImpl(
      postcode: fields[0] as String,
      city: fields[1] as String,
      lat: fields[2] as double,
      long: fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, _$CityModelImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.postcode)
      ..writeByte(1)
      ..write(obj.city)
      ..writeByte(2)
      ..write(obj.lat)
      ..writeByte(3)
      ..write(obj.long);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityModelImpl _$$CityModelImplFromJson(Map<String, dynamic> json) =>
    _$CityModelImpl(
      postcode: json['postcode'] as String,
      city: json['city'] as String,
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$$CityModelImplToJson(_$CityModelImpl instance) =>
    <String, dynamic>{
      'postcode': instance.postcode,
      'city': instance.city,
      'lat': instance.lat,
      'long': instance.long,
    };
