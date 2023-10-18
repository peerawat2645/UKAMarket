import 'dart:convert';

import 'package:http/http.dart' as http;

const String baseUrl = 'http://localhost:8080/api/v1';
const String authUrl = 'http://localhost:8080/api/auth';

class BaseClient{
  var client = http.Client();

  Map<String, String> headers = {'Content-Type': 'application/json'};
  
  //login
  Future<dynamic> login(String api, dynamic object) async{
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
  }
      
  }

  //GET USER
  Future<dynamic> get(String api) async{
    var url = Uri.parse(baseUrl+api);
      final response = await http.get(url, headers: headers);
      //print(response.body);
      //print('GET User ID: $userId');
      if(response.statusCode==200){
        return utf8.decode(response.bodyBytes);
      }
      else{
      }
  }


  Future<dynamic> post(String api, dynamic object) async{
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

  Future<dynamic> delete(String api) async{
    var url = Uri.parse(baseUrl + api);

  try {
    final response = await http.post(url, headers: headers);

    if (response.statusCode == 200) {
      // The DELETE request was successful.
      return 'Success'; // You can return a relevant success message or data.
    } else {
      // Handle other status codes as needed.
      throw Exception('Failed to delete: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions if the request fails.
    print('Error: $e');
    throw e; // Rethrow the exception if needed.
  }
  }

  
  void updateCookie(String cookieValue) {
      headers['Cookie'] = cookieValue;

  }
}