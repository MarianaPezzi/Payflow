import 'dart:convert';

class UserModel {
  final String name;
  final String? photoURL;

  UserModel({required this.name, required this.photoURL});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map['name'], photoURL: map['photoURL']);
  }

  factory UserModel.fromJson(String jason) =>
      UserModel.fromMap(jsonDecode(jason));

  Map<String, dynamic> toMap() => {
        "name": name,
        "photoURl": photoURL,
      };

  String toJson() => jsonEncode(toMap());
}
