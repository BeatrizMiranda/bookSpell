import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/shared/models/UserModel.dart';

class AuthController {
  UserModel? _user;

  UserModel get user => _user!;

  Future<Object> setUser(BuildContext ctx, UserModel? user) async {
    if (user == null) return Navigator.pushReplacementNamed(ctx, '/guest');

    _user = user;
    saveUser(user);
    return Navigator.pushReplacementNamed(ctx, '/home');
  }

  Future<void> saveUser(UserModel user) async {
    final instance = await SharedPreferences.getInstance();

    await instance.setString("user", user.toJson());
    return;
  }

  Future<Object> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 2));

    if (!instance.containsKey('user')) return setUser(context, null);

    final json = instance.get("user") as String;

    return setUser(context, UserModel.fromJson(json));
  }
}
