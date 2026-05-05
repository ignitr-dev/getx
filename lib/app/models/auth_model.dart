part of "models.dart";

class AuthModel extends Model {
  AuthModel({
    this.token,
    this.user,
  });

  String? token;
  UserModel? user;

  @override
  AuthModel copyWith({
    String? token,
    UserModel? user,
  }) =>
      AuthModel(
        token: token ?? this.token,
        user: user ?? this.user,
      );

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        token: json["token"],
        user: json["user"] == null ? null : UserModel.fromJson(json["user"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "token": token,
        "user": user?.toJson(),
      };

  @override
  Map<String, dynamic> toRequestBody({Map<String, dynamic>? attributes}) {
    throw UnimplementedError();
  }
}
