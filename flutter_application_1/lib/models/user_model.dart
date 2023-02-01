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
        this.fullname,
        this.email,
        this.phone,
        this.password,
    });

    String? userId;
    String? fcmToken;
    String? fullname;
    String? email;
    String? phone;
    String? password;


    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userId: json["user_id"],
        fcmToken: json["fcm_token"],
        fullname: json["name"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],

    );

  get username => null;

  // get password => null;

  String? get id => null;

  set fcm(String fcm) {}

    Map<String, dynamic> toJson() => {
        "user_id": userId,
        "fcm_token": fcmToken,
        "fullname": fullname,
        "email": email,
        "phone": phone,
        "password":password
    };
     factory UserModel.fromFirebaseSnapshot(Map<String, dynamic> json) => UserModel(
        userId: json["user_id"],
        fcmToken: json["fcm_token"],
        fullname: json["fullname"],
        email: json["email"],
        phone: json["phone"],
        password: json['password']
    );
}