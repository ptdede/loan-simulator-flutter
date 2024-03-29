import 'package:freezed_annotation/freezed_annotation.dart';

part 'reqress_error.freezed.dart';
part 'reqress_error.g.dart';

@freezed
class ReqressError with _$ReqressError {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ReqressError({
    String? error,
  }) = _ReqressError;

  factory ReqressError.fromJson(Map<String, Object?> json) =>
      _$ReqressErrorFromJson(json);
}
