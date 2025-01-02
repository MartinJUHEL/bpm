import 'package:freezed_annotation/freezed_annotation.dart';

part 'lat_long_entity.freezed.dart';

@freezed
class LatLong with _$LatLong {
  const factory LatLong({required double lat, required double long}) = _LatLong;
}
