// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) =>
    json.encode(data.toJson(data.docId.toString()));

class UserModel {
  final String? docId;
  final String? name;
  final String? email;
  final String? password;
  final int? createAt;

  UserModel({this.docId, this.name, this.email, this.password, this.createAt});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    docId: json["docId"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    createAt: json["createAt"],
  );

  Map<String, dynamic> toJson(String userId) => {
    "docId": userId,
    "name": name,
    "email": email,
    "password": password,
    "createAt": createAt,
  };
}
