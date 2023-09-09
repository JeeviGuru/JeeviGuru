import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model_class/model_data.dart';

class PostApi {
  Future<List<Posts>> getPosts() async {
    try {
      final response = await http.get(
        Uri.parse(
          "http://jsonplaceholder.typicode.com/posts",
        ),
      );

      if (response.statusCode == 200) {
        final List<dynamic> parsedData = jsonDecode(response.body);
        final List<Posts> postsList =
            parsedData.map((data) => Posts.fromJson(data)).toList();
        return postsList;
      } else {
        throw Exception('Failed to load posts');
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
