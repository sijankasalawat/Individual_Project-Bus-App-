// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel? userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel? data) => json.encode(data!.toJson());

class UserModel {
    UserModel({
        this.userId,
        this.fcmToken,
        this.name,
        this.username,
        this.phone,
    });

    String? userId;
    String? fcmToken;
    String? name;
    String? username;
    String? phone;

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userId: json["user_id"],
        fcmToken: json["fcm_token"],
        name: json["name"],
        username: json["username"],
        phone: json["phone"],
    );

    Map<String, dynamic> toJson() => {
        "user_id": userId,
        "fcm_token": fcmToken,
        "name": name,
        "username": username,
        "phone": phone,
    };
     factory UserModel.fromFirebaseSnapshot(Map<String, dynamic> json) => UserModel(
        userId: json["user_id"],
        fcmToken: json["fcm_token"],
        name: json["name"],
        username: json["username"],
        phone: json["phone"],
    );
}