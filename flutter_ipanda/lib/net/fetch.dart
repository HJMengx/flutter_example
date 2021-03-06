import 'dart:async';
import 'dart:convert';

import 'package:flutter_ipanda/entity/tab_entity.dart';
import 'package:flutter_ipanda/entity/tab_home_entity.dart';
import 'package:flutter_ipanda/net/api.dart';
import 'package:flutter_ipanda/value.dart';
import 'package:http/http.dart' as http;

Future<TabEntity> fetchTab() async {
  print('fetchTab:${baseUrl + type + tabUrl}');
  final response = await http.get(baseUrl + type + tabUrl);
  return TabEntity.fromJson(json.decode(response.body));
}

Future<TabHomeEntity> fetchHome() async {
  print('fetchHome:${tabUrlAction[0]}');
  final response = await http.get(tabUrlAction[0]);
  return TabHomeEntity.fromJson(json.decode(response.body));
}
