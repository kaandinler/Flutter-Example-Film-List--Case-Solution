import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/core/components/flavor_config.dart';

import 'main_common.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.dev,
    env: 'dev',
    name: 'Development MovieListCase',
    color: Colors.red,
    values: FlavorValues(
        appTitle: "Development MovieListCase",
        theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: Brightness.light,
        ),
        appId: "com.example.flutter_case_deneme_2.dev",
        bundleId: "com.example.flutter_case_deneme_2.dev",
        baseUrl: 'http://www.omdbapi.com/',
        apiKey: '5b5927c3'),
  );

  mainCommon();
}
