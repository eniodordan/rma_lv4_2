import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:rma_lv4_2/models/user.dart';

Future<List<User>> fetchUsers(http.Client client) async {
  final response = await client
      .get(Uri.parse('https://5e510330f2c0d300147c034c.mockapi.io/users'));

  return compute(parseUsers, response.body);
}

List<User> parseUsers(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<User>((json) => User.fromJson(json)).toList();
}
