import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loan_simulator/data/models/user_data.dart';

part 'user_single_response.freezed.dart';
part 'user_single_response.g.dart';

@freezed
class UserSingleResponse with _$UserSingleResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UserSingleResponse({
    UserData? data,
  }) = _UserSingleResponse;

  factory UserSingleResponse.fromJson(Map<String, Object?> json) =>
      _$UserSingleResponseFromJson(json);
}
