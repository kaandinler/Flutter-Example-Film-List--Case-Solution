import 'package:flutter/material.dart';

enum Flavor { dev, stage }

class FlavorValues {
  final String appTitle;
  final String bundleId;
  final String appId;
  final String baseUrl;

  FlavorValues({
    required this.appTitle,
    required this.bundleId,
    required this.appId,
    required this.baseUrl,
  });
}

class FlavorConfig {
  final Flavor flavor;
  final String env;
  final String name;
  final FlavorValues values;

  static FlavorConfig? _instance;

  factory FlavorConfig({
    required Flavor flavor,
    required String env,
    required String name,
    required FlavorValues values,
  }) {
    _instance ??= FlavorConfig._internal(
      flavor,
      env,
      name,
      values,
    );
    return _instance!;
  }

  FlavorConfig._internal(
    this.flavor,
    this.env,
    this.name,
    this.values,
  );

  static FlavorConfig get instance {
    return _instance!;
  }

  static bool get isDev => _instance!.flavor == Flavor.dev;
  static bool get isStage => _instance!.flavor == Flavor.stage;
}
