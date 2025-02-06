import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestion_model.freezed.dart';
part 'suggestion_model.g.dart';

@freezed
class SuggestionModel with _$SuggestionModel {
  const factory SuggestionModel({required final String title}) = _SuggestionModel;

  factory SuggestionModel.fromJson(Map<String, Object?> json) => _$SuggestionModelFromJson(json);
}
