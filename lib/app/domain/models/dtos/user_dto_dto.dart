class UserDto {
  String? name;
  String? email;
  String? updatedAt;
  String? createdAt;
  int? id;
  String? accessToken;
  int? expiresIn;
  String? refreshToken;

  UserDto({this.name, this.email, this.updatedAt, this.createdAt, this.id});

  UserDto.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'updated_at': updatedAt,
      'created_at': createdAt,
    };
  }
}
