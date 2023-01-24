import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/core/components/flavor_config.dart';

import 'main_common.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.dev,
    env: 'stage',
    name: 'Stage MovieListCase',
    color: Colors.purple,
    values: FlavorValues(
        appTitle: "Stage MovieListCase",
        bundleId: "com.example.flutter_case_deneme_2.stage",
        appId: "com.example.flutter_case_deneme_2.stage",
        theme: ThemeData(
          primarySwatch: Colors.purple,
          brightness: Brightness.light,
        )),
  );

  mainCommon();
}
