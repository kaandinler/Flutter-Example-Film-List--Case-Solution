import 'package:flutter/material.dart';

enum Flavor { dev, stage }

class FlavorValues {
  final String appTitle;
  final String bundleId;
  final String appId;
  final String baseUrl;
  final String apiKey;
  final ThemeData theme;

  FlavorValues(
      {required this.appTitle,
      required this.theme,
      required this.bundleId,
      required this.appId,
      required this.baseUrl,
      required this.apiKey});
}

class FlavorConfig {
  final Flavor flavor;
  final String env;
  final String name;
  final Color color;
  final FlavorValues values;

  static FlavorConfig? _instance;

  factory FlavorConfig({
    required Flavor flavor,
    required String env,
    required String name,
    required Color color,
    required FlavorValues values,
  }) {
    _instance ??= FlavorConfig._internal(
      flavor,
      env,
      name,
      color,
      values,
    );
    return _instance!;
  }

  FlavorConfig._internal(
    this.flavor,
    this.env,
    this.name,
    this.color,
    this.values,
  );

  static FlavorConfig get instance {
    return _instance!;
  }

  static bool get isDev => _instance!.flavor == Flavor.dev;
  static bool get isStage => _instance!.flavor == Flavor.stage;
}
