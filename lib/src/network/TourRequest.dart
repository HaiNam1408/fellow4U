import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../models/Tour.dart';

class TourRequest {
  static const String url = "https://fellow4u-api.vercel.app/tours";

  static Future<List<Tour>> fetchTours() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final JsonDecoder _decoder = new JsonDecoder();
      final tourListContainer = _decoder.convert(response.body);
      final List tourList = tourListContainer['tours'];
      print('xxxxxxxxxxxxxxxxxxxxxxxxxx');
      print(tourList);
      print('xxxxxxxxxxxxxxxxxxxxxxxxxx');
      return tourList.map((tourRaw) => new Tour.fromJson(tourRaw)).toList();
    } else if (response.statusCode == 404) {
      throw Exception('Not found!');
    } else
      throw Exception("Can't get tours!");
  }
}
