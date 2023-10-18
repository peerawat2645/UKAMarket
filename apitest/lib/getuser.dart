import 'dart:convert';

import 'package:apitest/base_client.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetUser extends StatefulWidget {
  const GetUser({super.key});

  @override
  State<GetUser> createState() => _GetUserState();
}

class _GetUserState extends State<GetUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(children: [
          ElevatedButton(
            onPressed: () async {
              Future<dynamic> userFuture = BaseClient().get('/user/2');
              // Convert the result of the future to an int
              userFuture.then((dynamic userData) {
                Map<String, dynamic> jsonMap = json.decode(userData);
                int userId = jsonMap['body']['userId'];
                print('User ID: $userId');
              });
            },
            child: Text('GetUser'), // Text displayed on the button
          ),
          ElevatedButton(
            onPressed: () async {
              Map<String, dynamic> jsonData = {
                "description": "aaaa",
                "imgPath": "",
                "name": "ไก่ทอดเฉลิมชัย",
                "phone": "035885855",
                "type": "food"
              };
              BaseClient().post('/stores/create/2', jsonData).then((result) {
                if (result != null) {
                  print(result['body']['name']);
                  print('POST Successful: $result');
                }
              }).catchError((error) {
                print('POST Failed: $error');
              });
            },
            child: Text('POST'), // Text displayed on the button
          ),
          ElevatedButton(
            onPressed: () async {
              BaseClient().delete('/stores/delete/31').then((result) {
                print('Delete Successful: $result');
              }).catchError((error) {
                print('Delete Failed: $error');
              });
            },
            child: Text('DELETEไก่ทอด'), // Text displayed on the button
          )
        ]),
      )),
    );
  }
}
