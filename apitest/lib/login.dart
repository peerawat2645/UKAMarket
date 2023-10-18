import 'dart:convert';

import 'package:apitest/mainpage.dart';
import 'package:flutter/material.dart';

import 'base_client.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _handleLogin() {
    final String username = usernameController.text;
    final String password = passwordController.text;

    Map<String, dynamic> jsonData = {
      "password": password,
      "username": username,
    };
    BaseClient().login('/login', jsonData).then((result) {
      if (result != null) {
        print('login Successful: $result');
        int userId = result['body']['userId'];
        print(userId);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MainPage(userId: userId),
          ),
        );
      }
    }).catchError((error) {
      print('POST Failed: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: _handleLogin,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
