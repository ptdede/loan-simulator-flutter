import 'package:freezed_annotation/freezed_annotation.dart';

part 'reqress_error.freezed.dart';
part 'reqress_error.g.dart';

@freezed
class ReqressError with _$ReqressError {
  const factory ReqressError({
    @JsonKey(name: 'error') String? error,
    @JsonKey(name: 'Message') String? message,
  }) = _ReqressError;

  factory ReqressError.fromJson(Map<String, Object?> json) =>
      _$ReqressErrorFromJson(json);
}
