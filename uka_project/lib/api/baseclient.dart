import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:uka_project/screen/reserved.dart';

class BaseClient {
  var client = http.Client();

  Map<String, String> headers = {'Content-Type': 'application/json'};
  //login
  Future<dynamic> login(String api, dynamic object) async{
    const String authUrl = 'http://localhost:8080/api/auth';
    var url = Uri.parse(authUrl + api);
  var _payload = json.encode(object);

  try {
    final response = await http.post(url, body: _payload, headers: headers);

    if (response.statusCode == 200) {
      // Assuming the server returns a JSON response, you can decode it as follows:
      final responseData = json.decode(response.body);
      return responseData;
    } else {
      // Handle the case when the request did not return a 201 status code.
      // You can throw an exception or return an error message as needed.
      throw Exception('Failed to post data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions if the request fails.
    print('Error: $e');
    throw e; // Rethrow the exception if needed.
  }}
  //regiter
  Future<dynamic> regis(String api, dynamic object) async {
    const String baseUrl = 'http://localhost:8080/api';

    var url = Uri.parse(baseUrl + api);
    var _payload = json.encode(object);

    
    try {
      final response = await http.post(url, body: _payload, headers: headers);

      if (response.statusCode == 200) {
        // Assuming the server returns a JSON response, you can decode it as follows:
        final responseData = json.decode(utf8.decode(response.bodyBytes));
        return responseData;
      } else {
        // Handle the case when the request did not return a 201 status code.
        // You can throw an exception or return an error message as needed.
        throw Exception('Failed to post data: ${response.statusCode}');
      }
    } catch (e) {
      // Handle exceptions if the request fails.
      print('Error: $e');
      throw e; // Rethrow the exception if needed.
    }
  }

  //getProfile
  Future<dynamic> getProfile(String api , int userId) async{

    Map<String, String> headers = {'Content-Type': 'application/json'};
    String id = userId.toString();

    const String baseUrl = 'http://localhost:8080/api/v1';
    var url = Uri.parse(baseUrl+api+id);
      print(url);
      final response = await http.get(url, headers: headers);
      //print(response.body);
      //print('GET User ID: $userId');
      if(response.statusCode==200){
        final responseData = json.decode(utf8.decode(response.bodyBytes));
        return responseData;
      }
      else{
      }
  }

  //updateProfile 
  Future<dynamic> updateProfile(String api, dynamic object) async {
    const String baseUrl = 'http://localhost:8080/api';

    var url = Uri.parse(baseUrl + api);
    var _payload = json.encode(object);

    
    try {
      final response = await http.post(url, body: _payload, headers: headers);

      if (response.statusCode == 200) {
        // Assuming the server returns a JSON response, you can decode it as follows:
        final responseData = json.decode(utf8.decode(response.bodyBytes));
        return responseData;
      } else {
        // Handle the case when the request did not return a 201 status code.
        // You can throw an exception or return an error message as needed.
        throw Exception('Failed to post data: ${response.statusCode}');
      }
    } catch (e) {
      // Handle exceptions if the request fails.
      print('Error: $e');
      throw e; // Rethrow the exception if needed.
    }
  }

  //getmyStore
  Future<dynamic> getMyStore(String api , int userId) async{

    Map<String, String> headers = {'Content-Type': 'application/json'};
    String id = userId.toString();

    const String baseUrl = 'http://localhost:8080/api/v1';
    var url = Uri.parse(baseUrl+api+id);

      final response = await http.get(url, headers: headers);
      
      if(response.statusCode==200){
        final responseData = json.decode(utf8.decode(response.bodyBytes));
        print(responseData['body']);
        return responseData['body'];
      }
      else{
        throw Exception('Failed to load data. Status Code: ${response.statusCode}');
      }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class Store{
  final String name,phone,description,type,imgPath;
  final int storeId;

  Store( {required this.storeId, required this.name, required this.phone, required this.description, required this.type, required this.imgPath});

}

