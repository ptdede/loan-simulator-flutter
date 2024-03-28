import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UserData({
    int? id,
    String? email,
    String? firstName,
    String? lastName,
    String? avatar,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}
