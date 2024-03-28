import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loan_simulator/data/models/user_data.dart';

part 'user_list_response.freezed.dart';
part 'user_list_response.g.dart';

@freezed
class UserListResponse with _$UserListResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UserListResponse({
    int? page,
    int? perPage,
    int? total,
    int? totalPages,
    List<UserData>? data,
  }) = _UserListResponse;

  factory UserListResponse.fromJson(Map<String, Object?> json) =>
      _$UserListResponseFromJson(json);
}
