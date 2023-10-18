import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BaseClient {

  Future<dynamic> post(String api, dynamic object) async {
    const String baseUrl = 'http://localhost:8080/api';

    var url = Uri.parse(baseUrl + api);
    var _payload = json.encode(object);

    Map<String, String> headers = {'Content-Type': 'application/json'};

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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
