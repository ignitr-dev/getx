part of "models.dart";

class UserModel extends Model {
  UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.password,
    this.phone,
    this.avatar,
    this.gender,
  });

  int? id;
  String? name;
  String? username;
  String? email;
  String? password;
  String? phone;
  String? avatar;
  String? gender;

  @override
  UserModel copyWith({
    int? id,
    String? name,
    String? username,
    String? email,
    String? password,
    String? phone,
    String? avatar,
    String? gender,
  }) =>
      UserModel(
        id: id ?? this.id,
        name: name ?? this.name,
        username: username ?? this.username,
        email: email ?? this.email,
        password: password ?? this.password,
        phone: phone ?? this.phone,
        avatar: avatar ?? this.avatar,
        gender: gender ?? this.gender,
      );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        phone: json["phone"],
        avatar: json["avatar"],
        gender: json["gender"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "password": password,
        "phone": phone,
        "avatar": avatar,
        "gender": gender,
      };

  @override
  Map<String, dynamic> toRequestBody({Map<String, dynamic>? attributes}) {
    final body = toJson();

    if (attributes != null && attributes.isNotEmpty) body.addAll(attributes);

    return body;
  }
}
